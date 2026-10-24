Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_basicadj?download=true
inline.NumInlined: 82
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@dt_ioppr_get_rgb_matrix_luminance:bb.a
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !12
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bm, %i.bk
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bh
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bk
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.bq = phi reassoc nsz arcp contract afn float [ %i.ay, %bb.h ], [ %i.bp, %bb.i ], [ %i.ao, %bb.f ]
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !151 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !12
  %i.bu = fcmp reassoc nsz arcp contract afn ult float %i.bt, 0.000000e+00
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !12 ; 4 uses
  br i1 %i.bu, label %dt_ioppr_apply_trc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %i.bw, 1.000000e+00
  br i1 %i.bx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !12
  %i.cb = load float, ptr %i.by, align 4, !tbaa !12
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.bw
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !12
  %i.cf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cc, float %i.ce)
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.ca
  br label %dt_ioppr_apply_trc.exit

bb.m:                                             ; preds = %bb.k
  %i.ch = fmul reassoc nsz arcp contract afn float %i.bw, %i.b ; 3 uses
  %i.ci = fcmp reassoc nsz arcp contract afn ogt float %i.ch, 0.000000e+00
  %i.cj = fcmp reassoc nsz arcp contract afn olt float %i.ch, %i.b
  %..i.2.i = select reassoc nsz arcp contract afn i1 %i.cj, float %i.ch, float %i.b
  %i.ck = select reassoc nsz arcp contract afn i1 %i.ci, float %..i.2.i, float 0.000000e+00 ; 3 uses
  %i.cl = fcmp reassoc nsz arcp contract afn olt float %i.ck, %i.d
  %i.cm = select reassoc nsz arcp contract afn i1 %i.cl, float %i.ck, float %i.d
  %i.cn = fptosi float %i.cm to i32               ; 2 uses
  %i.co = sitofp reassoc nsz arcp contract afn i32 %i.cn to float
  %i.cp = fsub reassoc nnan nsz arcp contract afn float %i.ck, %i.co
  %i.cq = sext i32 %i.cn to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cq ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !12 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cr, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !12
  %i.cv = fsub reassoc nsz arcp contract afn float %i.cu, %i.cs
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.cp
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cw, %i.cs
  br label %dt_ioppr_apply_trc.exit

dt_ioppr_apply_trc.exit:                          ; preds = %bb.j, %bb.l, %bb.m
  %i.cy = phi reassoc nsz arcp contract afn float [ %i.cg, %bb.l ], [ %i.cx, %bb.m ], [ %i.bw, %bb.j ]
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.da = load float, ptr %i.cz, align 4, !tbaa !12
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, %i.ai
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !12
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, %i.bq
  %i.df = fadd reassoc nsz arcp contract afn float %i.de, %i.db
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !12
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.cy
  %i.dj = fadd reassoc nsz arcp contract afn float %i.df, %i.di
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !12
  %i.dm = load float, ptr %0, align 4, !tbaa !12
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, %i.dl
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dp = load float, ptr %i.do, align 4, !tbaa !12
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !12
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dr, %i.dp
  %i.dt = fadd reassoc nsz arcp contract afn float %i.ds, %i.dn
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dv = load float, ptr %i.du, align 4, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !12
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, %i.dv
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dt, %i.dy
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %dt_ioppr_apply_trc.exit
  %.0 = phi nsz float [ %i.dj, %dt_ioppr_apply_trc.exit ], [ %i.dz, %bb.n ]
  ret float %.0
}

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #6

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @tiling_callback(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 28)) %4) local_unnamed_addr #12 {
bb.a:
  store <4 x float> <float 2.000000e+00, float 3.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %4, align 4, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.a, align 4, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.c, align 4, !tbaa !155
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !128 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.b, ptr noundef nonnull align 1 dereferenceable(44) %1, i64 44, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load float, ptr %i.c, align 4, !tbaa !129 ; 2 uses
  %i.e = fmul reassoc nsz arcp contract afn float %i.d, 2.000000e+00 ; 3 uses
  %i.f = fcmp reassoc nsz arcp contract afn ult float %i.e, 0.000000e+00
  %i.g = fadd reassoc nsz arcp contract afn float %i.e, 1.000000e+00
  %i.h = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.g
  %i.i = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.e
  %i.j = select reassoc nsz arcp contract afn i1 %i.f, float %i.i, float %i.h ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load float, ptr %i.k, align 4, !tbaa !130 ; 2 uses
  %i.m = fadd reassoc nsz arcp contract afn float %i.l, 1.000000e+00 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load float, ptr %i.n, align 4, !tbaa !120 ; 2 uses
  %i.p = fcmp reassoc nsz arcp contract afn ogt float %i.o, 0.000000e+00
  %i.q = fmul reassoc nnan nsz arcp contract afn float %i.o, f0x3C23D70A
  %i.r = select reassoc nsz arcp contract afn i1 %i.p, float %i.q, float 1.842000e-01 ; 2 uses
  %i.s = fcmp reassoc nsz arcp contract afn une float %i.d, 0.000000e+00 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !131
  %.not = icmp eq i32 %i.u, 0
  %i.v = fcmp reassoc nsz arcp contract afn une float %i.l, 0.000000e+00
  %spec.select = select i1 %.not, i1 %i.v, i1 false ; 2 uses
  %or.cond = select i1 %i.s, i1 true, i1 %spec.select
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 262188 ; 2 uses
  br i1 %spec.select, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %invariant.op = fdiv reassoc nsz arcp contract afn float f0x37800000, %i.r
  %broadcast.splatinsert60 = insertelement <8 x float> poison, float %invariant.op, i64 0
  %broadcast.splat61 = shufflevector <8 x float> %broadcast.splatinsert60, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert62 = insertelement <8 x float> poison, float %i.r, i64 0
  %broadcast.splat63 = shufflevector <8 x float> %broadcast.splatinsert62, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br i1 %i.s, label %vector.body64.preheader, label %vector.body53.preheader

vector.body53.preheader:                          ; preds = %.preheader.split.us
  %i.y = insertelement <4 x float> poison, float %i.m, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body53

vector.body64.preheader:                          ; preds = %.preheader.split.us
  %i.aa = insertelement <4 x float> poison, float %i.j, i64 0
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = insertelement <4 x float> poison, float %i.m, i64 0
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body64

vector.body53:                                    ; preds = %vector.body53.preheader, %vector.body53
  %index54 = phi i64 [ %index.next56, %vector.body53 ], [ 0, %vector.body53.preheader ] ; 2 uses
  %vec.ind55 = phi <8 x i32> [ %vec.ind.next57, %vector.body53 ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.body53.preheader ] ; 2 uses
  %i.ae = uitofp nneg <8 x i32> %vec.ind55 to <8 x float>
  %i.af = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat61, %i.ae ; 5 uses
  %i.ag = extractelement <8 x float> %i.af, i64 0
  %i.ah = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ag, float %i.m)
  %i.ai = extractelement <8 x float> %i.af, i64 1
  %i.aj = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ai, float %i.m)
  %i.ak = extractelement <8 x float> %i.af, i64 2
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ak, float %i.m)
  %i.am = shufflevector <8 x float> %i.af, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.an = tail call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.am, <4 x float> %i.z)
  %i.ao = extractelement <8 x float> %i.af, i64 7
  %i.ap = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ao, float %i.m)
  %i.aq = insertelement <8 x float> poison, float %i.ah, i64 0
  %i.ar = insertelement <8 x float> %i.aq, float %i.aj, i64 1
  %i.as = insertelement <8 x float> %i.ar, float %i.al, i64 2
  %i.at = shufflevector <4 x float> %i.an, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.au = shufflevector <8 x float> %i.as, <8 x float> %i.at, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.av = insertelement <8 x float> %i.au, float %i.ap, i64 7
  %i.aw = fmul reassoc nsz arcp contract afn <8 x float> %i.av, %broadcast.splat63
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index54
  store <8 x float> %i.aw, ptr %i.ax, align 4, !tbaa !12
  %index.next56 = add nuw i64 %index54, 8         ; 2 uses
  %vec.ind.next57 = add <8 x i32> %vec.ind55, splat (i32 8)
  %i.ay = icmp eq i64 %index.next56, 65536
  br i1 %i.ay, label %.loopexit, label %vector.body53, !llvm.loop !156

vector.body64:                                    ; preds = %vector.body64.preheader, %vector.body64
  %index65 = phi i64 [ %index.next67, %vector.body64 ], [ 0, %vector.body64.preheader ] ; 3 uses
  %vec.ind66 = phi <8 x i32> [ %vec.ind.next68, %vector.body64 ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.body64.preheader ] ; 2 uses
  %i.az = uitofp nneg <8 x i32> %vec.ind66 to <8 x float> ; 2 uses
  %i.ba = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.az, splat (float f0x37800000) ; 5 uses
  %i.bb = extractelement <8 x float> %i.ba, i64 0
  %i.bc = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.bb, float %i.j)
  %i.bd = extractelement <8 x float> %i.ba, i64 1
  %i.be = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.bd, float %i.j)
  %i.bf = extractelement <8 x float> %i.ba, i64 2
  %i.bg = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.bf, float %i.j)
  %i.bh = shufflevector <8 x float> %i.ba, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bi = tail call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.bh, <4 x float> %i.ab)
  %i.bj = extractelement <8 x float> %i.ba, i64 7
  %i.bk = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.bj, float %i.j)
  %i.bl = insertelement <8 x float> poison, float %i.bc, i64 0
  %i.bm = insertelement <8 x float> %i.bl, float %i.be, i64 1
  %i.bn = insertelement <8 x float> %i.bm, float %i.bg, i64 2
  %i.bo = shufflevector <4 x float> %i.bi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bp = shufflevector <8 x float> %i.bn, <8 x float> %i.bo, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.bq = insertelement <8 x float> %i.bp, float %i.bk, i64 7
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index65
  store <8 x float> %i.bq, ptr %i.br, align 4, !tbaa !12
  %i.bs = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat61, %i.az ; 5 uses
  %i.bt = extractelement <8 x float> %i.bs, i64 0
  %i.bu = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bt, float %i.m)
  %i.bv = extractelement <8 x float> %i.bs, i64 1
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bv, float %i.m)
  %i.bx = extractelement <8 x float> %i.bs, i64 2
  %i.by = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bx, float %i.m)
  %i.bz = shufflevector <8 x float> %i.bs, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ca = tail call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.bz, <4 x float> %i.ad)
  %i.cb = extractelement <8 x float> %i.bs, i64 7
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cb, float %i.m)
  %i.cd = insertelement <8 x float> poison, float %i.bu, i64 0
  %i.ce = insertelement <8 x float> %i.cd, float %i.bw, i64 1
  %i.cf = insertelement <8 x float> %i.ce, float %i.by, i64 2
  %i.cg = shufflevector <4 x float> %i.ca, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ch = shufflevector <8 x float> %i.cf, <8 x float> %i.cg, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.ci = insertelement <8 x float> %i.ch, float %i.cc, i64 7
  %i.cj = fmul reassoc nsz arcp contract afn <8 x float> %i.ci, %broadcast.splat63
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index65
  store <8 x float> %i.cj, ptr %i.ck, align 4, !tbaa !12
  %index.next67 = add nuw i64 %index65, 8         ; 2 uses
  %vec.ind.next68 = add <8 x i32> %vec.ind66, splat (i32 8)
  %i.cl = icmp eq i64 %index.next67, 65536
  br i1 %i.cl, label %.loopexit, label %vector.body64, !llvm.loop !157

.preheader.split:                                 ; preds = %.preheader
  br i1 %i.s, label %vector.body.preheader, label %.loopexit

vector.body.preheader:                            ; preds = %.preheader.split
  %i.cm = insertelement <4 x float> poison, float %i.j, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.body.preheader ] ; 2 uses
  %i.co = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.cp = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.co, splat (float f0x37800000) ; 5 uses
  %i.cq = extractelement <8 x float> %i.cp, i64 0
  %i.cr = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.cq, float %i.j)
  %i.cs = extractelement <8 x float> %i.cp, i64 1
  %i.ct = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.cs, float %i.j)
  %i.cu = extractelement <8 x float> %i.cp, i64 2
  %i.cv = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.cu, float %i.j)
  %i.cw = shufflevector <8 x float> %i.cp, <8 x float> poison, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cx = tail call reassoc nsz arcp contract afn <4 x float> @llvm.pow.v4f32(<4 x float> %i.cw, <4 x float> %i.cn)
  %i.cy = extractelement <8 x float> %i.cp, i64 7
  %i.cz = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.cy, float %i.j)
  %i.da = insertelement <8 x float> poison, float %i.cr, i64 0
  %i.db = insertelement <8 x float> %i.da, float %i.ct, i64 1
  %i.dc = insertelement <8 x float> %i.db, float %i.cv, i64 2
  %i.dd = shufflevector <4 x float> %i.cx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.de = shufflevector <8 x float> %i.dc, <8 x float> %i.dd, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.df = insertelement <8 x float> %i.de, float %i.cz, i64 7
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index
  store <8 x float> %i.df, ptr %i.dg, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.dh = icmp eq i64 %index.next, 65536
  br i1 %i.dh, label %.loopexit, label %vector.body, !llvm.loop !158

.loopexit:                                        ; preds = %vector.body, %vector.body53, %vector.body64, %.preheader.split, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #14 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(524332) ptr @malloc(i64 noundef 524332) #22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !128
  tail call void @free(ptr noundef %i.b) #23
  store ptr null, ptr %i.a, align 16, !tbaa !128
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !32  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !35
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.d, i32 noundef %i.f) #23
  ret void
}

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @gui_focus(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %_turn_select_region_off.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 704
  %.val = load ptr, ptr %i.a, align 16, !tbaa !32 ; 4 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_turn_select_region_off.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 84
  store i32 0, ptr %i.c, align 4, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  tail call void @gtk_toggle_button_set_active(ptr noundef %i.e, i32 noundef 0) #23
  br label %_turn_select_region_off.exit

_turn_select_region_off.exit:                     ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @change_image(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.c, i8 0, i64 44, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gui_init(ptr noundef initializes((704, 712)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x ptr], align 8                ; 4 uses
  %i.b = tail call ptr @dt_alloc_aligned(i64 noundef 184) #23 ; 16 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_iop_gui_alloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(184) %i.b, i8 0, i64 184, i1 false)
  br label %_iop_gui_alloc.exit

_iop_gui_alloc.exit:                              ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  store ptr %i.b, ptr %i.c, align 16, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.d, i8 0, i64 44, i1 false)
  %i.e = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.8) #23 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !159
  tail call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.e, float noundef -1.000000e-01, float noundef 1.000000e-01) #23
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !159
  tail call void @dt_bauhaus_slider_set_digits(ptr noundef %i.g, i32 noundef 4) #23
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !159
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.h, ptr noundef %i.i) #23
  %i.j = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.10) #23 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !160
  tail call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.j, float noundef -4.000000e+00, float noundef 4.000000e+00) #23
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !160
  %i.m = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #23
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.l, ptr noundef %i.m) #23
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !160
  %i.o = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.n, ptr noundef %i.o) #23
  %i.p = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.13) #23 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !161
  tail call void @dt_bauhaus_slider_set_soft_max(ptr noundef %i.p, float noundef 1.000000e+02) #23
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.s = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.r, ptr noundef %i.s) #23
  %i.t = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.15) #23 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !162
  tail call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.t, float noundef -1.000000e+00, float noundef 1.000000e+00) #23
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !162
  %i.w = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.v, ptr noundef %i.w) #23
  %i.x = tail call ptr @dt_bauhaus_combobox_from_params(ptr noundef %0, ptr noundef nonnull @.str.17) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr %i.x, ptr %i.y, align 8, !tbaa !163
  %i.z = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.x, ptr noundef %i.z) #23
  %i.aa = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.19) #23
  %i.ab = tail call ptr @dt_color_picker_new(ptr noundef %0, i32 noundef 2, ptr noundef %i.aa) #23 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 3 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !121
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.ab, ptr noundef nonnull @.str.20) #23
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !121
  %i.ae = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.ad, ptr noundef %i.ae) #23
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !121
  %i.ag = tail call i64 @g_signal_connect_data(ptr noundef %i.af, ptr noundef nonnull @.str.22, ptr noundef nonnull @_color_picker_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.ah = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.23) #23 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !164
  tail call void @dt_bauhaus_slider_set_soft_range(ptr noundef %i.ah, float noundef -1.000000e+00, float noundef 1.000000e+00) #23
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !164
  %i.ak = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.aj, ptr noundef %i.ak) #23
  %i.al = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.25) #23 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.al, ptr %i.am, align 8, !tbaa !165
  %i.an = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.al, ptr noundef %i.an) #23
  %i.ao = tail call ptr @dt_bauhaus_slider_from_params(ptr noundef %0, ptr noundef nonnull @.str.27) #23 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !166
  %i.aq = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.ao, ptr noundef %i.aq) #23
  %i.ar = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #23
  %i.as = tail call ptr @dt_action_button_new(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @_auto_levels_callback, ptr noundef %0, ptr noundef %i.ar, i32 noundef 0, i32 noundef 0) #23 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !167
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !115
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1432
  %i.aw = load double, ptr %i.av, align 8, !tbaa !173
  %i.ax = fmul reassoc nsz arcp contract afn double %i.aw, 2.400000e+01
  %i.ay = fptosi double %i.ax to i32
  tail call void @gtk_widget_set_size_request(ptr noundef %i.as, i32 noundef -1, i32 noundef %i.ay) #23
  %i.az = tail call ptr @dtgtk_togglebutton_new(ptr noundef nonnull @dtgtk_cairo_paint_colorpicker, i32 noundef 0, ptr noundef null) #23 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 4 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !37
  tail call void @dt_gui_add_class(ptr noundef %i.az, ptr noundef nonnull @.str.31) #23
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.bc = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #23
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %i.bb, ptr noundef %i.bc) #23
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.be = tail call i64 @g_signal_connect_data(ptr noundef %i.bd, ptr noundef nonnull @.str.33, ptr noundef nonnull @_select_region_toggled_callback, ptr noundef %0, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !174
  %i.bh = load ptr, ptr %i.at, align 8, !tbaa !167 ; 2 uses
  tail call void @gtk_widget_set_hexpand(ptr noundef %i.bh, i32 noundef 1) #23
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !37 ; 2 uses
  tail call void @gtk_widget_set_hexpand(ptr noundef %i.bj, i32 noundef 1) #23
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !14
end_hunk_0
