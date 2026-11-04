Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rawoverexposed?download=true
inline.NumInlined: 16
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@process:bb.a
  %i.bg = call ptr @dt_alloc_aligned(i64 noundef %i.bf) #15 ; 16 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bg, i64 64) ]
  %i.bh = load i32, ptr %i.al, align 4, !tbaa !108
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.preheader.lr.ph, label %._crit_edge110

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.bj = getelementptr i8, ptr %4, i64 16        ; 13 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bm = icmp eq i32 %i.ay, 9
  %.pre = load i32, ptr %i.ai, align 4, !tbaa !107
  %scevgep = getelementptr i8, ptr %4, i64 20
  %bound0 = icmp ult ptr %i.bg, %scevgep
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge108
  %i.bn = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.fq, %._crit_edge108 ] ; 5 uses
  %.090109 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.fr, %._crit_edge108 ] ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.bp = load i32, ptr %5, align 4, !tbaa !109   ; 7 uses
  %i.bq = load i32, ptr %i.bk, align 4, !tbaa !110
  %i.br = add nsw i32 %i.bq, %.090109
  %i.bs = sitofp reassoc nsz arcp contract afn i32 %i.br to float ; 7 uses
  %wide.trip.count = zext nneg i32 %i.bn to i64   ; 9 uses
  %min.iters.check = icmp ult i32 %i.bn, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bt = shl nuw nsw i64 %wide.trip.count, 3
  %i.bu = getelementptr i8, ptr %i.bg, i64 %i.bt
  %bound1 = icmp ult ptr %i.bj, %i.bu
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check126 = icmp ult i32 %i.bn, 32
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.ph127

vector.ph127:                                     ; preds = %vector.main.loop.iter.check
  %i.bv = and i64 %wide.trip.count, 28
  %n.vec128 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  %i.bw = load float, ptr %i.bj, align 4, !tbaa !111, !alias.scope !112 ; 2 uses
  %broadcast.splatinsert133 = insertelement <8 x float> poison, float %i.bw, i64 0
  %broadcast.splat134 = shufflevector <8 x float> %broadcast.splatinsert133, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bx = fdiv reassoc nsz arcp contract afn float %i.bs, %i.bw
  %broadcast.splatinsert135 = insertelement <8 x float> poison, float %i.bx, i64 0 ; 4 uses
  %broadcast.splatinsert129 = insertelement <8 x i32> poison, i32 %i.bp, i64 0
  %broadcast.splat130 = shufflevector <8 x i32> %broadcast.splatinsert129, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i32> splat (i32 8), %broadcast.splat130
  %invariant.op184 = add <8 x i32> splat (i32 16), %broadcast.splat130
  %invariant.op186 = add <8 x i32> splat (i32 24), %broadcast.splat130
  %i.by = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat134
  %i.bz = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat134
  %i.ca = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat134
  %i.cb = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat134
  br label %vector.body131

vector.body131:                                   ; preds = %vector.ph127, %vector.body131
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next140, %vector.body131 ] ; 5 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph127 ], [ %vec.ind.next, %vector.body131 ] ; 5 uses
  %i.cc = add <8 x i32> %broadcast.splat130, %vec.ind
  %.reass = add <8 x i32> %vec.ind, %invariant.op
  %.reass185 = add <8 x i32> %vec.ind, %invariant.op184
  %.reass187 = add <8 x i32> %vec.ind, %invariant.op186
  %i.cd = sitofp reassoc nsz arcp contract afn <8 x i32> %i.cc to <8 x float>
  %i.ce = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass to <8 x float>
  %i.cf = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass185 to <8 x float>
  %i.cg = sitofp reassoc nsz arcp contract afn <8 x i32> %.reass187 to <8 x float>
  %i.ch = fmul reassoc nsz arcp contract afn <8 x float> %i.cd, %i.by
  %i.ci = fmul reassoc nsz arcp contract afn <8 x float> %i.ce, %i.bz
  %i.cj = fmul reassoc nsz arcp contract afn <8 x float> %i.cf, %i.ca
  %i.ck = fmul reassoc nsz arcp contract afn <8 x float> %i.cg, %i.cb
  %i.cl = shl nuw nsw i64 %index132, 3
  %i.cm = shl i64 %index132, 3
  %i.cn = shl i64 %index132, 3
  %i.co = shl i64 %index132, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cl
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cm
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 128
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.co
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 192
  %interleaved.vec = shufflevector <8 x float> %i.ch, <8 x float> %broadcast.splatinsert135, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec, ptr %i.cp, align 64, !tbaa !113, !alias.scope !114, !noalias !112
  %interleaved.vec137 = shufflevector <8 x float> %i.ci, <8 x float> %broadcast.splatinsert135, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec137, ptr %i.cr, align 64, !tbaa !113, !alias.scope !114, !noalias !112
  %interleaved.vec138 = shufflevector <8 x float> %i.cj, <8 x float> %broadcast.splatinsert135, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec138, ptr %i.ct, align 64, !tbaa !113, !alias.scope !114, !noalias !112
  %interleaved.vec139 = shufflevector <8 x float> %i.ck, <8 x float> %broadcast.splatinsert135, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec139, ptr %i.cv, align 64, !tbaa !113, !alias.scope !114, !noalias !112
  %index.next140 = add nuw i64 %index132, 32      ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.cw = icmp eq i64 %index.next140, %n.vec128
  br i1 %i.cw, label %middle.block141, label %vector.body131, !llvm.loop !87

middle.block141:                                  ; preds = %vector.body131
  %cmp.n142 = icmp eq i64 %n.vec128, %wide.trip.count
  br i1 %cmp.n142, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block141
  %min.epilog.iters.check = icmp eq i64 %i.bv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec128, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec143 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %i.cx = load float, ptr %i.bj, align 4, !tbaa !111, !alias.scope !112 ; 2 uses
  %broadcast.splatinsert150 = insertelement <4 x float> poison, float %i.cx, i64 0
  %broadcast.splat151 = shufflevector <4 x float> %broadcast.splatinsert150, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cy = fdiv reassoc nsz arcp contract afn float %i.bs, %i.cx
  %broadcast.splatinsert152 = insertelement <4 x float> poison, float %i.cy, i64 0
  %broadcast.splatinsert144 = insertelement <4 x i32> poison, i32 %i.bp, i64 0
  %broadcast.splat145 = shufflevector <4 x i32> %broadcast.splatinsert144, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cz = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert146 = insertelement <4 x i32> poison, i32 %i.cz, i64 0
  %broadcast.splat147 = shufflevector <4 x i32> %broadcast.splatinsert146, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat147, <i32 0, i32 1, i32 2, i32 3>
  %i.da = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %broadcast.splat151
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index148 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next155, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind149 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next156, %vec.epilog.vector.body ] ; 2 uses
  %i.db = add <4 x i32> %broadcast.splat145, %vec.ind149
  %i.dc = sitofp reassoc nsz arcp contract afn <4 x i32> %i.db to <4 x float>
  %i.dd = fmul reassoc nsz arcp contract afn <4 x float> %i.dc, %i.da
  %i.de = shl nuw nsw i64 %index148, 3
  %i.df = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.de
  %interleaved.vec154 = shufflevector <4 x float> %i.dd, <4 x float> %broadcast.splatinsert152, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x float> %interleaved.vec154, ptr %i.df, align 32, !tbaa !113, !alias.scope !114, !noalias !112
  %index.next155 = add nuw i64 %index148, 4       ; 2 uses
  %vec.ind.next156 = add <4 x i32> %vec.ind149, splat (i32 4)
  %i.dg = icmp eq i64 %index.next155, %n.vec143
  br i1 %i.dg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n157 = icmp eq i64 %n.vec143, %wide.trip.count
  br i1 %cmp.n157, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec128, %vec.epilog.iter.check ], [ %n.vec143, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dh = trunc i64 %indvars.iv.prol to i32
  %i.di = add i32 %i.bp, %i.dh
  %i.dj = sitofp reassoc nsz arcp contract afn i32 %i.di to float
  %i.dk = load float, ptr %i.bj, align 4, !tbaa !111
  %i.dl = fdiv reassoc nsz arcp contract afn float %i.dj, %i.dk
  %.idx.prol = shl nuw nsw i64 %indvars.iv.prol, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.prol ; 2 uses
  store float %i.dl, ptr %i.dm, align 8, !tbaa !113
  %i.dn = load float, ptr %i.bj, align 4, !tbaa !111
  %i.do = fdiv reassoc nsz arcp contract afn float %i.bs, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store float %i.do, ptr %i.dp, align 4, !tbaa !113
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !89

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.dq = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge110:                                   ; preds = %._crit_edge108, %bb.c
  call void @free(ptr noundef %i.bg) #15
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %6, ptr noundef nonnull @.str.1, i32 noundef 216) #15
  %i.ds = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 628
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !117
  %i.dv = and i32 %i.du, 1
  %.not97 = icmp eq i32 %i.dv, 0
  br i1 %.not97, label %dt_iop_alpha_copy.exit, label %bb.n

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block141, %vec.epilog.middle.block, %.preheader
  %i.dw = load ptr, ptr %i.c, align 8, !tbaa !41  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 2760
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !118
  %i.dz = sext i32 %i.bn to i64
  %i.ea = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.dw, ptr noundef %i.dy, double noundef %i.ab, i32 noundef 3, ptr noundef %i.bg, i64 noundef %i.dz) #15 ; 0 uses
  %i.eb = load i32, ptr %i.ai, align 4, !tbaa !107 ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %._crit_edge
  %i.ed = load i32, ptr %i.bl, align 8
  %i.ee = load <2 x i32>, ptr %i.bl, align 8
  %i.ef = zext nneg i32 %i.ed to i64
  %.fr183 = freeze <2 x i32> %i.ee
  br label %bb.d

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.eg = trunc i64 %indvars.iv to i32
  %i.eh = add i32 %i.bp, %i.eg
  %i.ei = sitofp reassoc nsz arcp contract afn i32 %i.eh to float
  %i.ej = load float, ptr %i.bj, align 4, !tbaa !111
  %i.ek = fdiv reassoc nsz arcp contract afn float %i.ei, %i.ej
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.el = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx ; 2 uses
  store float %i.ek, ptr %i.el, align 8, !tbaa !113
  %i.em = load float, ptr %i.bj, align 4, !tbaa !111
  %i.en = fdiv reassoc nsz arcp contract afn float %i.bs, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store float %i.en, ptr %i.eo, align 4, !tbaa !113
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ep = trunc i64 %indvars.iv.next to i32
  %i.eq = add i32 %i.bp, %i.ep
  %i.er = sitofp reassoc nsz arcp contract afn i32 %i.eq to float
  %i.es = load float, ptr %i.bj, align 4, !tbaa !111
  %i.et = fdiv reassoc nsz arcp contract afn float %i.er, %i.es
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.1 ; 2 uses
  store float %i.et, ptr %i.eu, align 8, !tbaa !113
  %i.ev = load float, ptr %i.bj, align 4, !tbaa !111
  %i.ew = fdiv reassoc nsz arcp contract afn float %i.bs, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store float %i.ew, ptr %i.ex, align 4, !tbaa !113
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ey = trunc i64 %indvars.iv.next.1 to i32
  %i.ez = add i32 %i.bp, %i.ey
  %i.fa = sitofp reassoc nsz arcp contract afn i32 %i.ez to float
  %i.fb = load float, ptr %i.bj, align 4, !tbaa !111
  %i.fc = fdiv reassoc nsz arcp contract afn float %i.fa, %i.fb
  %.idx.2 = shl nuw nsw i64 %indvars.iv.next.1, 3
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.2 ; 2 uses
  store float %i.fc, ptr %i.fd, align 8, !tbaa !113
  %i.fe = load float, ptr %i.bj, align 4, !tbaa !111
  %i.ff = fdiv reassoc nsz arcp contract afn float %i.bs, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store float %i.ff, ptr %i.fg, align 4, !tbaa !113
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.fh = trunc i64 %indvars.iv.next.2 to i32
  %i.fi = add i32 %i.bp, %i.fh
  %i.fj = sitofp reassoc nsz arcp contract afn i32 %i.fi to float
  %i.fk = load float, ptr %i.bj, align 4, !tbaa !111
  %i.fl = fdiv reassoc nsz arcp contract afn float %i.fj, %i.fk
  %.idx.3 = shl nuw nsw i64 %indvars.iv.next.2, 3
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.3 ; 2 uses
  store float %i.fl, ptr %i.fm, align 8, !tbaa !113
  %i.fn = load float, ptr %i.bj, align 4, !tbaa !111
  %i.fo = fdiv reassoc nsz arcp contract afn float %i.bs, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  store float %i.fo, ptr %i.fp, align 4, !tbaa !113
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !90

._crit_edge108:                                   ; preds = %bb.m, %._crit_edge
  %i.fq = phi i32 [ %i.eb, %._crit_edge ], [ %i.hq, %bb.m ]
  %i.fr = add nuw nsw i32 %.090109, 1             ; 2 uses
  %i.fs = load i32, ptr %i.al, align 4, !tbaa !108
  %i.ft = icmp slt i32 %i.fr, %i.fs
  br i1 %i.ft, label %.preheader, label %._crit_edge110

bb.d:                                             ; preds = %.lr.ph107, %bb.m
  %indvars.iv112 = phi i64 [ 0, %.lr.ph107 ], [ %indvars.iv.next113, %bb.m ] ; 3 uses
  %i.fu = phi i32 [ %i.eb, %.lr.ph107 ], [ %i.hq, %bb.m ]
  %i.fv = mul nuw nsw i32 %i.fu, %.090109
  %i.fw = trunc nuw nsw i64 %indvars.iv112 to i32
  %i.fx = add nsw i32 %i.fv, %i.fw
  %i.fy = sext i32 %i.fx to i64
  %i.fz = mul nsw i64 %i.fy, %i.ao                ; 3 uses
  %.idx123 = shl nuw nsw i64 %indvars.iv112, 3
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx123
  %i.gb = load <2 x float>, ptr %i.ga, align 8, !tbaa !113
  %i.gc = fptosi <2 x float> %i.gb to <2 x i32>
  %.fr = freeze <2 x i32> %i.gc                   ; 7 uses
  %i.gd = icmp slt <2 x i32> %.fr, zeroinitializer
  %7 = bitcast <2 x i1> %i.gd to i2
  %or.cond.not = icmp eq i2 %7, 0
  %8 = icmp sle <2 x i32> %.fr183, %.fr
  %9 = bitcast <2 x i1> %8 to i2
  %or.cond101 = icmp eq i2 %9, 0
  %or.cond = and i1 %or.cond.not, %or.cond101
  br i1 %or.cond, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ge = add nuw nsw <2 x i32> %.fr, splat (i32 600)
  %i.gf = urem <2 x i32> %i.ge, splat (i32 6)     ; 2 uses
  %i.gg = extractelement <2 x i32> %i.gf, i64 1
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [6 x i8], ptr %i.az, i64 %i.gh
  %i.gj = extractelement <2 x i32> %i.gf, i64 0
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !119
  %i.gn = zext i8 %i.gm to i32
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.go = extractelement <2 x i32> %.fr, i64 1
  %i.gp = shl nuw i32 %i.go, 1
  %i.gq = and i32 %i.gp, 14
  %i.gr = extractelement <2 x i32> %.fr, i64 0
  %i.gs = and i32 %i.gr, 1
  %i.gt = or disjoint i32 %i.gq, %i.gs
  %i.gu = shl nuw nsw i32 %i.gt, 1
  %i.gv = lshr i32 %i.ay, %i.gu
  %i.gw = and i32 %i.gv, 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i32 [ %i.gn, %bb.f ], [ %i.gw, %bb.g ]
  %i.gx = extractelement <2 x i32> %.fr, i64 1
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = mul nuw nsw i64 %i.ef, %i.gy
  %i.ha = extractelement <2 x i32> %.fr, i64 0
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr [2 x i8], ptr %i.au, i64 %i.gz
  %i.hd = getelementptr [2 x i8], ptr %i.hc, i64 %i.hb
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !120
  %i.hf = uitofp reassoc nsz arcp contract afn i16 %i.he to float
  %i.hg = zext nneg i32 %.0 to i64                ; 3 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !100
  %i.hj = uitofp reassoc nsz arcp contract afn i32 %i.hi to float
  %i.hk = fcmp reassoc nsz arcp contract afn olt float %i.hf, %i.hj
  br i1 %i.hk, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i32 %i.ad, label %bb.m [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fz
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr @dt_iop_rawoverexposed_colors, i64 %i.hg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hl, ptr noundef nonnull align 16 dereferenceable(16) %i.hm, i64 16, i1 false)
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hn, ptr noundef nonnull align 16 dereferenceable(16) %i.ah, i64 16, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ho = getelementptr [4 x i8], ptr %3, i64 %i.fz
  %i.hp = getelementptr [4 x i8], ptr %i.ho, i64 %i.hg
  store float 0.000000e+00, ptr %i.hp, align 4, !tbaa !113
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.l, %bb.k, %bb.j, %bb.i, %bb.d
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.hq = load i32, ptr %i.ai, align 4, !tbaa !107 ; 3 uses
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp slt i64 %indvars.iv.next113, %i.hr
  br i1 %i.hs, label %bb.d, label %._crit_edge108

bb.n:                                             ; preds = %._crit_edge110
  %i.ht = load i32, ptr %i.ai, align 4, !tbaa !107
  %i.hu = sext i32 %i.ht to i64
  %i.hv = load i32, ptr %i.al, align 4, !tbaa !108
  %i.hw = sext i32 %i.hv to i64
  %i.hx = shl nsw i64 %i.hu, 2
  %i.hy = mul i64 %i.hx, %i.hw                    ; 3 uses
  %.not.i103 = icmp eq i64 %i.hy, 0
  br i1 %.not.i103, label %dt_iop_alpha_copy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.hz = call i64 @llvm.umax.i64(i64 %i.hy, i64 7)
  %i.ia = add i64 %i.hz, -4                       ; 3 uses
  %i.ib = lshr i64 %i.ia, 2
  %i.ic = add nuw nsw i64 %i.ib, 1                ; 2 uses
  %min.iters.check168 = icmp ult i64 %i.ia, 96
  br i1 %min.iters.check168, label %.lr.ph.i.preheader183, label %vector.memcheck169

vector.memcheck169:                               ; preds = %.lr.ph.i.preheader
  %i.id = getelementptr i8, ptr %3, i64 12
  %i.ie = shl i64 %i.ia, 2
  %i.if = and i64 %i.ie, -16
  %i.ig = add i64 %i.if, 16                       ; 2 uses
  %i.ih = getelementptr i8, ptr %3, i64 %i.ig
  %i.ii = getelementptr i8, ptr %2, i64 12
  %i.ij = getelementptr i8, ptr %2, i64 %i.ig
  %bound0170 = icmp ult ptr %i.id, %i.ij
  %bound1171 = icmp ult ptr %i.ii, %i.ih
  %found.conflict172 = and i1 %bound0170, %bound1171
  br i1 %found.conflict172, label %.lr.ph.i.preheader183, label %vector.ph173

vector.ph173:                                     ; preds = %vector.memcheck169
  %i.ik = and i64 %i.ic, 7                        ; 2 uses
  %i.il = icmp eq i64 %i.ik, 0
  %i.im = select i1 %i.il, i64 8, i64 %i.ik
  %n.vec174 = sub nsw i64 %i.ic, %i.im            ; 2 uses
  %i.in = shl i64 %n.vec174, 2
  %i.io = or disjoint i64 %i.in, 3
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph173
  %index176 = phi i64 [ 0, %vector.ph173 ], [ %index.next178, %vector.body175 ] ; 2 uses
  %vec.ind177 = phi <8 x i64> [ <i64 3, i64 7, i64 11, i64 15, i64 19, i64 23, i64 27, i64 31>, %vector.ph173 ], [ %vec.ind.next179, %vector.body175 ] ; 2 uses
  %.idx182 = shl nuw i64 %index176, 4
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 %.idx182
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 12
  %wide.vec = load <32 x float>, ptr %i.iq, align 4, !tbaa !113, !alias.scope !121
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %3, <8 x i64> %vec.ind177
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !113, !alias.scope !122, !noalias !121
  %index.next178 = add nuw i64 %index176, 8       ; 2 uses
  %vec.ind.next179 = add nuw <8 x i64> %vec.ind177, splat (i64 32)
  %i.ir = icmp eq i64 %index.next178, %n.vec174
  br i1 %i.ir, label %.lr.ph.i.preheader183, label %vector.body175, !llvm.loop !94

.lr.ph.i.preheader183:                            ; preds = %vector.body175, %vector.memcheck169, %.lr.ph.i.preheader
  %.09.i.ph = phi i64 [ 3, %vector.memcheck169 ], [ 3, %.lr.ph.i.preheader ], [ %i.io, %vector.body175 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader183, %.lr.ph.i
  %.09.i = phi i64 [ %i.iv, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader183 ] ; 3 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.09.i
  %i.it = load float, ptr %i.is, align 4, !tbaa !113
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.09.i
  store float %i.it, ptr %i.iu, align 4, !tbaa !113
  %i.iv = add nuw i64 %.09.i, 4                   ; 2 uses
  %i.iw = icmp ult i64 %i.iv, %i.hy
  br i1 %i.iw, label %.lr.ph.i, label %dt_iop_alpha_copy.exit, !llvm.loop !95

dt_iop_alpha_copy.exit:                           ; preds = %.lr.ph.i, %._crit_edge110, %bb.n, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @dt_mipmap_cache_get_with_caller(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef signext, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #4

declare void @dt_mipmap_cache_release_with_caller(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @dt_dev_distort_backtransform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @tiling_callback(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 12), (16, 28)) %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.dt_mipmap_buffer_t, align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1552
  %i.d = load i32, ptr %i.c, align 16, !tbaa !74
  call void @dt_mipmap_cache_get_with_caller(ptr noundef nonnull %5, i32 noundef %i.d, i32 noundef 12, i32 noundef 3, i8 noundef signext 114, ptr noundef nonnull @.str.1, i32 noundef 369) #15
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  %.not = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = shl i32 %i.h, 1
  %i.l = mul i32 %i.k, %i.j
  %.09 = select i1 %.not, i32 0, i32 %i.l
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, i32 noundef 377) #15
  store float 2.500000e+00, ptr %4, align 4, !tbaa !124
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 1.000000e+00, ptr %i.m, align 4, !tbaa !125
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.09, ptr %i.n, align 4, !tbaa !126
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.o, align 4, !tbaa !127
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.p, align 4, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef captures(none) initializes((32, 36)) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.e = getelementptr i8, ptr %i.d, i64 644
  %.val = load i32, ptr %i.e, align 4, !tbaa !129
  %i.f = and i32 %.val, 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1540
  %i.h = load i32, ptr %i.g, align 4, !tbaa !130
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2576
  %i.j = load i32, ptr %i.i, align 16, !tbaa !131
  %i.k = icmp ne i32 %i.j, 0
  %i.l = icmp ne i32 %i.f, 0
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.b, align 16, !tbaa !132
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = lshr i32 %i.h, 14
  %.lobit = and i32 %i.n, 1
  %i.o = xor i32 %.lobit, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = phi i32 [ 0, %bb.b ], [ %i.o, %bb.c ], [ 0, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i32 %i.p, ptr %i.q, align 16, !tbaa !133
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1604
  %i.s = load i32, ptr %i.r, align 4, !tbaa !134
  %.not12 = icmp eq i32 %i.s, 2
  br i1 %.not12, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1608
  %i.u = load i32, ptr %i.t, align 8, !tbaa !77
  %.not13 = icmp eq i32 %i.u, 0
  br i1 %.not13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 0, ptr %i.q, align 16, !tbaa !133
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(12) ptr @malloc(i64 noundef 12) #16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !81
  store i32 -999, ptr %i.a, align 4, !tbaa !136
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 -999, ptr %i.c, align 4, !tbaa !137
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
