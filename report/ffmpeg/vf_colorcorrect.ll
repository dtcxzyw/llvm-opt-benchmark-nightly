Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colorcorrect?download=true
inline.NumInlined: 12
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@config_input:bb.a
  store i32 %i.bp, ptr %i.bs, align 8, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !68 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !35
  store i32 %i.bu, ptr %i.bq, align 4, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.h
  %.0 = phi i32 [ -12, %bb.c ], [ 0, %bb.h ], [ -12, %bb.b ], [ -12, %bb.a ], [ -558323010, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorcorrect_slice8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = load float, ptr %i.c, align 4, !tbaa !41 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load float, ptr %i.e, align 8, !tbaa !42 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !45   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !35   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !35
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = sext i32 %2 to i64
  %i.o = mul nsw i64 %i.m, %i.n
  %i.p = sext i32 %3 to i64                       ; 2 uses
  %i.q = sdiv i64 %i.o, %i.p                      ; 3 uses
  %i.r = trunc i64 %i.q to i32                    ; 3 uses
  %i.s = add nsw i32 %2, 1
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.m, %i.t
  %i.v = sdiv i64 %i.u, %i.p                      ; 2 uses
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !35   ; 3 uses
  %i.z = sext i32 %i.y to i64                     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !35 ; 3 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !47 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ah = load <2 x float>, ptr %i.af, align 8, !tbaa !37 ; 6 uses
  %i.ai = load <2 x float>, ptr %i.ag, align 8, !tbaa !37
  %i.aj = fsub nsz <2 x float> %i.ai, %i.ah       ; 5 uses
  %i.ak = icmp slt i32 %i.r, %i.w
  br i1 %i.ak, label %.preheader.lr.ph, label %._crit_edge87.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !35
  %i.ap = sext i32 %i.ao to i64                   ; 3 uses
  %i.aq = icmp sgt i32 %i.j, 0
  %i.ar = sext i32 %i.am to i64                   ; 2 uses
  %i.as = mul nsw i64 %i.ap, %i.ar                ; 2 uses
  br i1 %i.aq, label %.preheader.preheader, label %._crit_edge87.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.at = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.au = mul i32 %i.am, %i.r
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = mul nsw i64 %i.av, %i.ap
  %i.ax = getelementptr i8, ptr %i.at, i64 %i.aw  ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !48 ; 2 uses
  %sext = shl i64 %i.q, 32
  %i.ba = ashr exact i64 %sext, 32                ; 3 uses
  %i.bb = mul nsw i64 %i.ba, %i.z
  %i.bc = getelementptr i8, ptr %i.az, i64 %i.bb  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !48 ; 2 uses
  %i.bf = mul nsw i64 %i.ba, %i.ac
  %i.bg = getelementptr i8, ptr %i.be, i64 %i.bf  ; 3 uses
  %i.bh = sext i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 9 uses
  %i.bi = xor i64 %i.q, -1
  %i.bj = add i64 %i.v, %i.bi
  %i.bk = and i64 %i.bj, 4294967295               ; 2 uses
  %i.bl = add nsw i64 %i.ba, %i.bk                ; 2 uses
  %i.bm = mul i64 %i.bl, %i.z
  %i.bn = getelementptr i8, ptr %i.az, i64 %i.bm
  %scevgep = getelementptr i8, ptr %i.bn, i64 %wide.trip.count ; 2 uses
  %i.bo = mul i64 %i.bl, %i.ac
  %i.bp = getelementptr i8, ptr %i.be, i64 %i.bo
  %scevgep93 = getelementptr i8, ptr %i.bp, i64 %wide.trip.count ; 2 uses
  %i.bq = mul nsw i64 %i.bk, %i.ar
  %i.br = add i64 %i.bq, %i.av
  %i.bs = mul i64 %i.br, %i.ap
  %i.bt = getelementptr i8, ptr %i.at, i64 %i.bs
  %scevgep94 = getelementptr i8, ptr %i.bt, i64 %wide.trip.count ; 2 uses
  %min.iters.check = icmp ugt i32 %i.j, 3
  %ident.check.not = icmp eq i32 %i.h, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.bc, %scevgep93
  %bound1 = icmp ult ptr %i.bg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bu = or i32 %i.ab, %i.y
  %i.bv = icmp slt i32 %i.bu, 0
  %i.bw = or i1 %found.conflict, %i.bv
  %bound096 = icmp ult ptr %i.bc, %scevgep94
  %bound197 = icmp ult ptr %i.ax, %scevgep
  %found.conflict98 = and i1 %bound096, %bound197
  %stride.check99 = icmp slt i32 %i.y, 0
  %i.bx = or i1 %found.conflict98, %stride.check99
  %stride.check100 = icmp slt i64 %i.as, 0
  %i.by = or i1 %i.bx, %stride.check100
  %conflict.rdx = or i1 %i.bw, %i.by
  %bound0101 = icmp ult ptr %i.bg, %scevgep94
  %bound1102 = icmp ult ptr %i.ax, %scevgep93
  %found.conflict103 = and i1 %bound0101, %bound1102
  %stride.check104 = icmp slt i32 %i.ab, 0
  %i.bz = or i1 %found.conflict103, %stride.check104
  %conflict.rdx106 = or i1 %i.bz, %conflict.rdx
  %min.iters.check107 = icmp ult i32 %i.j, 16
  %i.ca = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.f, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %broadcast.splat109 = shufflevector <2 x float> %i.aj, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat111 = shufflevector <2 x float> %i.ah, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert112 = insertelement <16 x float> poison, float %i.ae, i64 0
  %broadcast.splat113 = shufflevector <16 x float> %broadcast.splatinsert112, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splat115 = shufflevector <2 x float> %i.aj, <2 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat117 = shufflevector <2 x float> %i.ah, <2 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert118 = insertelement <16 x float> poison, float %i.d, i64 0
  %broadcast.splat119 = shufflevector <16 x float> %broadcast.splatinsert118, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ca, 0
  %n.vec122 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert123 = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat124 = shufflevector <4 x float> %broadcast.splatinsert123, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splat126 = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat128 = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert129 = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat130 = shufflevector <4 x float> %broadcast.splatinsert129, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat132 = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat134 = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert135 = insertelement <4 x float> poison, float %i.d, i64 0
  %broadcast.splat136 = shufflevector <4 x float> %broadcast.splatinsert135, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n142 = icmp eq i64 %n.vec122, %wide.trip.count
  %i.cb = insertelement <2 x float> poison, float %i.f, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = insertelement <2 x float> poison, float %i.d, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.07586 = phi i32 [ %i.eg, %._crit_edge ], [ %i.r, %.preheader.preheader ]
  %.07685 = phi ptr [ %i.ef, %._crit_edge ], [ %i.bg, %.preheader.preheader ] ; 4 uses
  %.07784 = phi ptr [ %i.ee, %._crit_edge ], [ %i.bc, %.preheader.preheader ] ; 4 uses
  %.07883 = phi ptr [ %i.ed, %._crit_edge ], [ %i.ax, %.preheader.preheader ] ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx106
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %.07883, i64 %index
  %wide.load = load <16 x i8>, ptr %i.ch, align 1, !tbaa !49, !alias.scope !77
  %i.ci = uitofp <16 x i8> %wide.load to <16 x float>
  %i.cj = fmul nsz <16 x float> %broadcast.splat, %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.07784, i64 %index ; 2 uses
  %wide.load120 = load <16 x i8>, ptr %i.ck, align 1, !tbaa !49, !alias.scope !78, !noalias !79
  %i.cl = uitofp <16 x i8> %wide.load120 to <16 x float>
  %i.cm = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.cl, <16 x float> %broadcast.splat, <16 x float> splat (float -5.000000e-01))
  %i.cn = getelementptr inbounds nuw i8, ptr %.07685, i64 %index ; 2 uses
  %wide.load121 = load <16 x i8>, ptr %i.cn, align 1, !tbaa !49, !alias.scope !80, !noalias !77
  %i.co = uitofp <16 x i8> %wide.load121 to <16 x float>
  %i.cp = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.co, <16 x float> %broadcast.splat, <16 x float> splat (float -5.000000e-01))
  %i.cq = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.cj, <16 x float> %broadcast.splat109, <16 x float> %i.cm)
  %i.cr = fadd nsz <16 x float> %broadcast.splat111, %i.cq
  %i.cs = fmul nsz <16 x float> %broadcast.splat113, %i.cr
  %i.ct = tail call nsz <16 x float> @llvm.fmuladd.v16f32(<16 x float> %i.cj, <16 x float> %broadcast.splat115, <16 x float> %i.cp)
  %i.cu = fadd nsz <16 x float> %broadcast.splat117, %i.ct
  %i.cv = fmul nsz <16 x float> %broadcast.splat113, %i.cu
  %i.cw = fadd nsz <16 x float> %i.cs, splat (float 5.000000e-01)
  %i.cx = fmul nsz <16 x float> %broadcast.splat119, %i.cw
  %i.cy = fptosi <16 x float> %i.cx to <16 x i32> ; 3 uses
  %4 = icmp ult <16 x i32> %i.cy, splat (i32 256)
  %5 = icmp sgt <16 x i32> %i.cy, splat (i32 -1)
  %6 = sext <16 x i1> %5 to <16 x i8>
  %i.cz = trunc nuw <16 x i32> %i.cy to <16 x i8>
  %7 = select <16 x i1> %4, <16 x i8> %i.cz, <16 x i8> %6
  store <16 x i8> %7, ptr %i.ck, align 1, !tbaa !49, !alias.scope !78, !noalias !79
  %i.da = fadd nsz <16 x float> %i.cv, splat (float 5.000000e-01)
  %i.db = fmul nsz <16 x float> %broadcast.splat119, %i.da
  %i.dc = fptosi <16 x float> %i.db to <16 x i32> ; 3 uses
  %8 = icmp ult <16 x i32> %i.dc, splat (i32 256)
  %9 = icmp sgt <16 x i32> %i.dc, splat (i32 -1)
  %10 = sext <16 x i1> %9 to <16 x i8>
  %i.dd = trunc nuw <16 x i32> %i.dc to <16 x i8>
  %11 = select <16 x i1> %8, <16 x i8> %i.dd, <16 x i8> %10
  store <16 x i8> %11, ptr %i.cn, align 1, !tbaa !49, !alias.scope !80, !noalias !77
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index137 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %.07883, i64 %index137
  %wide.load138 = load <4 x i8>, ptr %i.df, align 1, !tbaa !49, !alias.scope !77
  %i.dg = uitofp <4 x i8> %wide.load138 to <4 x float>
  %i.dh = fmul nsz <4 x float> %broadcast.splat124, %i.dg ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.07784, i64 %index137 ; 2 uses
  %wide.load139 = load <4 x i8>, ptr %i.di, align 1, !tbaa !49, !alias.scope !78, !noalias !79
  %i.dj = uitofp <4 x i8> %wide.load139 to <4 x float>
  %i.dk = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %broadcast.splat124, <4 x float> splat (float -5.000000e-01))
  %i.dl = getelementptr inbounds nuw i8, ptr %.07685, i64 %index137 ; 2 uses
  %wide.load140 = load <4 x i8>, ptr %i.dl, align 1, !tbaa !49, !alias.scope !80, !noalias !77
  %i.dm = uitofp <4 x i8> %wide.load140 to <4 x float>
  %i.dn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> %broadcast.splat124, <4 x float> splat (float -5.000000e-01))
  %i.do = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %broadcast.splat126, <4 x float> %i.dk)
  %i.dp = fadd nsz <4 x float> %broadcast.splat128, %i.do
  %i.dq = fmul nsz <4 x float> %broadcast.splat130, %i.dp
  %i.dr = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %broadcast.splat132, <4 x float> %i.dn)
  %i.ds = fadd nsz <4 x float> %broadcast.splat134, %i.dr
  %i.dt = fmul nsz <4 x float> %broadcast.splat130, %i.ds
  %i.du = fadd nsz <4 x float> %i.dq, splat (float 5.000000e-01)
  %i.dv = fmul nsz <4 x float> %broadcast.splat136, %i.du
  %i.dw = fptosi <4 x float> %i.dv to <4 x i32>   ; 3 uses
  %12 = icmp ult <4 x i32> %i.dw, splat (i32 256)
  %13 = icmp sgt <4 x i32> %i.dw, splat (i32 -1)
  %14 = sext <4 x i1> %13 to <4 x i8>
  %i.dx = trunc nuw <4 x i32> %i.dw to <4 x i8>
  %15 = select <4 x i1> %12, <4 x i8> %i.dx, <4 x i8> %14
  store <4 x i8> %15, ptr %i.di, align 1, !tbaa !49, !alias.scope !78, !noalias !79
  %i.dy = fadd nsz <4 x float> %i.dt, splat (float 5.000000e-01)
  %i.dz = fmul nsz <4 x float> %broadcast.splat136, %i.dy
  %i.ea = fptosi <4 x float> %i.dz to <4 x i32>   ; 3 uses
  %16 = icmp ult <4 x i32> %i.ea, splat (i32 256)
  %17 = icmp sgt <4 x i32> %i.ea, splat (i32 -1)
  %18 = sext <4 x i1> %17 to <4 x i8>
  %i.eb = trunc nuw <4 x i32> %i.ea to <4 x i8>
  %19 = select <4 x i1> %16, <4 x i8> %i.eb, <4 x i8> %18
  store <4 x i8> %19, ptr %i.dl, align 1, !tbaa !49, !alias.scope !80, !noalias !77
  %index.next141 = add nuw i64 %index137, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next141, %n.vec122
  br i1 %i.ec, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !74

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n142, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec122, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.scalar.ph

._crit_edge87.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ed = getelementptr inbounds i8, ptr %.07883, i64 %i.as
  %i.ee = getelementptr inbounds i8, ptr %.07784, i64 %i.z
  %i.ef = getelementptr inbounds i8, ptr %.07685, i64 %i.ac
  %i.eg = add nsw i32 %.07586, 1                  ; 2 uses
  %exitcond89.not = icmp eq i32 %i.eg, %i.w
  br i1 %exitcond89.not, label %._crit_edge87.split, label %iter.check, !llvm.loop !75

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.eh = mul nsw i64 %indvars.iv, %i.bh
  %i.ei = getelementptr inbounds i8, ptr %.07883, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !49
  %i.ek = uitofp i8 %i.ej to float
  %i.el = fmul nsz float %i.f, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %.07784, i64 %indvars.iv ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !49
  %i.eo = getelementptr inbounds nuw i8, ptr %.07685, i64 %indvars.iv ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !49
  %i.eq = insertelement <2 x i8> poison, i8 %i.ep, i64 0
  %i.er = insertelement <2 x i8> %i.eq, i8 %i.en, i64 1
  %i.es = uitofp <2 x i8> %i.er to <2 x float>
  %i.et = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.cc, <2 x float> splat (float -5.000000e-01))
  %i.eu = insertelement <2 x float> poison, float %i.el, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.aj, <2 x float> %i.et)
  %i.ex = fadd nsz <2 x float> %i.ah, %i.ew
  %i.ey = fmul nsz <2 x float> %i.ce, %i.ex
  %i.ez = fadd nsz <2 x float> %i.ey, splat (float 5.000000e-01)
  %i.fa = fmul nsz <2 x float> %i.cg, %i.ez
  %i.fb = fptosi <2 x float> %i.fa to <2 x i32>   ; 3 uses
  %20 = extractelement <2 x i32> %i.fb, i64 1     ; 2 uses
  %isnotneg.i80 = icmp sgt i32 %20, -1
  %21 = sext i1 %isnotneg.i80 to i8
  %22 = trunc nuw i32 %20 to i8
  %23 = icmp ult <2 x i32> %i.fb, splat (i32 256) ; 2 uses
  %24 = extractelement <2 x i1> %23, i64 1
  %.0.i81 = select i1 %24, i8 %22, i8 %21
  store i8 %.0.i81, ptr %i.em, align 1, !tbaa !49
  %25 = extractelement <2 x i32> %i.fb, i64 0     ; 2 uses
  %isnotneg.i = icmp sgt i32 %25, -1
  %26 = sext i1 %isnotneg.i to i8
  %27 = trunc nuw i32 %25 to i8
  %28 = extractelement <2 x i1> %23, i64 0
  %.0.i = select i1 %28, i8 %27, i8 %26
  store i8 %.0.i, ptr %i.eo, align 1, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !76
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorcorrect_slice16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = load float, ptr %i.c, align 4, !tbaa !41 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load float, ptr %i.e, align 8, !tbaa !42 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !45   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !35   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !35
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = sext i32 %2 to i64
  %i.o = mul nsw i64 %i.m, %i.n
  %i.p = sext i32 %3 to i64                       ; 2 uses
  %i.q = sdiv i64 %i.o, %i.p                      ; 3 uses
  %i.r = trunc i64 %i.q to i32                    ; 3 uses
  %i.s = add nsw i32 %2, 1
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.m, %i.t
  %i.v = sdiv i64 %i.u, %i.p                      ; 2 uses
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !35   ; 3 uses
  %i.z = sdiv i32 %i.y, 2
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  %i.ad = sdiv i32 %i.ac, 2
  %i.ae = sext i32 %i.ad to i64                   ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ag = load float, ptr %i.af, align 8, !tbaa !47 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aj = load <2 x float>, ptr %i.ah, align 8, !tbaa !37 ; 4 uses
  %i.ak = load <2 x float>, ptr %i.ai, align 8, !tbaa !37
  %i.al = fsub nsz <2 x float> %i.ak, %i.aj       ; 3 uses
  %i.am = icmp slt i32 %i.r, %i.w
  br i1 %i.am, label %.preheader.lr.ph, label %._crit_edge91.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !35
  %i.ap = sdiv i32 %i.ao, 2
  %i.aq = sext i32 %i.ap to i64                   ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !46 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !40
  %i.av = icmp sgt i32 %i.j, 0
  %notmask.i82 = shl nsw i32 -1, %i.au            ; 3 uses
  %i.aw = xor i32 %notmask.i82, -1                ; 2 uses
  %i.ax = sext i32 %i.as to i64                   ; 3 uses
  %i.ay = mul nsw i64 %i.aq, %i.ax
  br i1 %i.av, label %.preheader.preheader, label %._crit_edge91.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.az = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.ba = mul i32 %i.as, %i.r
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = mul nsw i64 %i.aq, %i.bb
  %i.bd = getelementptr [2 x i8], ptr %i.az, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !48 ; 2 uses
  %sext = shl i64 %i.q, 32                        ; 2 uses
  %i.bg = ashr exact i64 %sext, 32                ; 2 uses
  %i.bh = mul nsw i64 %i.bg, %i.aa
  %i.bi = getelementptr [2 x i8], ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !48 ; 2 uses
  %i.bl = mul nsw i64 %i.bg, %i.ae
  %i.bm = getelementptr [2 x i8], ptr %i.bk, i64 %i.bl ; 3 uses
  %i.bn = sext i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 4 uses
  %i.bo = ashr exact i64 %sext, 31
  %i.bp = xor i64 %i.q, -1
  %i.bq = add i64 %i.v, %i.bp
  %i.br = and i64 %i.bq, 4294967295               ; 2 uses
  %i.bs = shl nuw nsw i64 %i.br, 1
  %i.bt = add nsw i64 %i.bo, %i.bs                ; 2 uses
  %i.bu = mul i64 %i.bt, %i.aa
  %i.bv = shl nuw nsw i64 %wide.trip.count, 1     ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bf, i64 %i.bu
  %scevgep = getelementptr i8, ptr %i.bw, i64 %i.bv ; 2 uses
  %i.bx = mul i64 %i.bt, %i.ae
  %i.by = getelementptr i8, ptr %i.bk, i64 %i.bx
  %scevgep97 = getelementptr i8, ptr %i.by, i64 %i.bv ; 2 uses
  %i.bz = mul nsw i64 %i.br, %i.ax
  %i.ca = add i64 %i.bz, %i.bb
  %i.cb = shl i64 %i.ca, 1
  %i.cc = mul i64 %i.cb, %i.aq
  %i.cd = getelementptr i8, ptr %i.az, i64 %i.cc
  %scevgep98 = getelementptr i8, ptr %i.cd, i64 %i.bv ; 2 uses
  %i.ce = mul nsw i64 %i.ax, %i.aq
  %min.iters.check = icmp ugt i32 %i.j, 7
  %ident.check.not = icmp eq i32 %i.h, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.bi, %scevgep97
  %bound1 = icmp ult ptr %i.bm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.y, -1
  %i.cf = or i1 %found.conflict, %stride.check
  %stride.check99 = icmp slt i32 %i.ac, -1
  %i.cg = or i1 %i.cf, %stride.check99
  %bound0100 = icmp ult ptr %i.bi, %scevgep98
  %bound1101 = icmp ult ptr %i.bd, %scevgep
  %found.conflict102 = and i1 %bound0100, %bound1101
  %stride.check103 = icmp slt i32 %i.y, -1
  %i.ch = or i1 %found.conflict102, %stride.check103
  %stride.check104 = icmp slt i64 %i.ce, 0
  %i.ci = or i1 %i.ch, %stride.check104
  %conflict.rdx = or i1 %i.cg, %i.ci
  %bound0105 = icmp ult ptr %i.bm, %scevgep98
  %bound1106 = icmp ult ptr %i.bd, %scevgep97
  %found.conflict107 = and i1 %bound0105, %bound1106
  %conflict.rdx110 = or i1 %found.conflict107, %conflict.rdx
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.f, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splat112 = shufflevector <2 x float> %i.al, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat114 = shufflevector <2 x float> %i.aj, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert115 = insertelement <8 x float> poison, float %i.ag, i64 0
  %broadcast.splat116 = shufflevector <8 x float> %broadcast.splatinsert115, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat118 = shufflevector <2 x float> %i.al, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat120 = shufflevector <2 x float> %i.aj, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert121 = insertelement <8 x float> poison, float %i.d, i64 0
  %broadcast.splat122 = shufflevector <8 x float> %broadcast.splatinsert121, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert123 = insertelement <8 x i32> poison, i32 %notmask.i82, i64 0
  %broadcast.splat124 = shufflevector <8 x i32> %broadcast.splatinsert123, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert125 = insertelement <8 x i32> poison, i32 %i.aw, i64 0
  %broadcast.splat126 = shufflevector <8 x i32> %broadcast.splatinsert125, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.cj = insertelement <2 x float> poison, float %i.f, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = insertelement <2 x float> poison, float %i.d, i64 0
  %i.co = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = insertelement <2 x i32> poison, i32 %notmask.i82, i64 0
  %i.cq = shufflevector <2 x i32> %i.cp, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cr = insertelement <2 x i32> poison, i32 %i.aw, i64 0
  %i.cs = shufflevector <2 x i32> %i.cr, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.07890 = phi i32 [ %i.ee, %._crit_edge ], [ %i.r, %.preheader.preheader ]
  %.07989 = phi ptr [ %i.ed, %._crit_edge ], [ %i.bm, %.preheader.preheader ] ; 3 uses
  %.08088 = phi ptr [ %i.ec, %._crit_edge ], [ %i.bi, %.preheader.preheader ] ; 3 uses
  %.08187 = phi ptr [ %i.eb, %._crit_edge ], [ %i.bd, %.preheader.preheader ] ; 3 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx110
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.ct = getelementptr inbounds [2 x i8], ptr %.08187, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ct, align 2, !tbaa !53, !alias.scope !89
  %i.cu = uitofp <8 x i16> %wide.load to <8 x float>
  %i.cv = fmul nsz <8 x float> %broadcast.splat, %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.08088, i64 %index ; 2 uses
  %wide.load127 = load <8 x i16>, ptr %i.cw, align 2, !tbaa !53, !alias.scope !90, !noalias !91
  %i.cx = uitofp <8 x i16> %wide.load127 to <8 x float>
  %i.cy = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cx, <8 x float> %broadcast.splat, <8 x float> splat (float -5.000000e-01))
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.07989, i64 %index ; 2 uses
  %wide.load128 = load <8 x i16>, ptr %i.cz, align 2, !tbaa !53, !alias.scope !92, !noalias !89
  %i.da = uitofp <8 x i16> %wide.load128 to <8 x float>
  %i.db = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.da, <8 x float> %broadcast.splat, <8 x float> splat (float -5.000000e-01))
  %i.dc = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cv, <8 x float> %broadcast.splat112, <8 x float> %i.cy)
  %i.dd = fadd nsz <8 x float> %broadcast.splat114, %i.dc
  %i.de = fmul nsz <8 x float> %broadcast.splat116, %i.dd
  %i.df = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cv, <8 x float> %broadcast.splat118, <8 x float> %i.db)
  %i.dg = fadd nsz <8 x float> %broadcast.splat120, %i.df
  %i.dh = fmul nsz <8 x float> %broadcast.splat116, %i.dg
  %i.di = fadd nsz <8 x float> %i.de, splat (float 5.000000e-01)
  %i.dj = fmul nsz <8 x float> %broadcast.splat122, %i.di
  %i.dk = fptosi <8 x float> %i.dj to <8 x i32>   ; 3 uses
  %i.dl = and <8 x i32> %broadcast.splat124, %i.dk
  %i.dm = icmp eq <8 x i32> %i.dl, zeroinitializer
  %i.dn = icmp slt <8 x i32> %i.dk, zeroinitializer
  %i.do = select <8 x i1> %i.dn, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat126
  %i.dp = select <8 x i1> %i.dm, <8 x i32> %i.dk, <8 x i32> %i.do
  %i.dq = trunc <8 x i32> %i.dp to <8 x i16>
  store <8 x i16> %i.dq, ptr %i.cw, align 2, !tbaa !53, !alias.scope !90, !noalias !91
  %i.dr = fadd nsz <8 x float> %i.dh, splat (float 5.000000e-01)
  %i.ds = fmul nsz <8 x float> %broadcast.splat122, %i.dr
  %i.dt = fptosi <8 x float> %i.ds to <8 x i32>   ; 3 uses
  %i.du = and <8 x i32> %broadcast.splat124, %i.dt
  %i.dv = icmp eq <8 x i32> %i.du, zeroinitializer
  %i.dw = icmp slt <8 x i32> %i.dt, zeroinitializer
  %i.dx = select <8 x i1> %i.dw, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat126
  %i.dy = select <8 x i1> %i.dv, <8 x i32> %i.dt, <8 x i32> %i.dx
end_hunk_0
begin_hunk_1_@median_16:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43   ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !44   ; 5 uses
  %i.y = mul nsw i32 %i.h, %i.f
  %i.z = sdiv i32 %i.y, 2                         ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 3 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !41 ; 2 uses
  %i.ac = fptosi float %i.ab to i32               ; 4 uses
  %i.ad = fadd nsz float %i.ab, 1.000000e+00
  %i.ae = fmul nsz float %i.ad, 4.000000e+00
  %i.af = fptoui float %i.ae to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.v, i8 0, i64 %i.af, i1 false)
  %i.ag = load float, ptr %i.aa, align 4, !tbaa !41
  %i.ah = fadd nsz float %i.ag, 1.000000e+00
  %i.ai = fmul nsz float %i.ah, 4.000000e+00
  %i.aj = fptoui float %i.ai to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %i.aj, i1 false)
  %i.ak = icmp sgt i32 %i.h, 0
  %i.al = icmp sgt i32 %i.f, 0
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %.preheader76.preheader, label %.preheader

.preheader76.preheader:                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.am = icmp eq i32 %i.f, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod119 = trunc i32 %i.f to i1
  br label %.preheader76

.preheader76:                                     ; preds = %.preheader76.preheader, %._crit_edge
  %.06680 = phi i32 [ %i.be, %._crit_edge ], [ 0, %.preheader76.preheader ]
  %.07179 = phi ptr [ %i.bd, %._crit_edge ], [ %i.t, %.preheader76.preheader ] ; 4 uses
  %.07278 = phi ptr [ %i.bc, %._crit_edge ], [ %i.r, %.preheader76.preheader ] ; 4 uses
  br i1 %i.am, label %.epil.preheader, label %.preheader76.new

.preheader:                                       ; preds = %._crit_edge, %bb.a
  %i.an = load float, ptr %i.aa, align 4, !tbaa !41
  %i.ao = fadd nsz float %i.an, 1.000000e+00      ; 3 uses
  %i.ap = fcmp nsz ogt float %i.ao, 0.000000e+00
  br i1 %i.ap, label %.lr.ph, label %._crit_edge92

._crit_edge.unr-lcssa:                            ; preds = %.preheader76.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader76
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader76 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod119)
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.07278, i64 %indvars.iv.epil.init
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !53
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !35
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !35
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.07179, i64 %indvars.iv.epil.init
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !53
  %i.ay = zext i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !35
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.bc = getelementptr inbounds [2 x i8], ptr %.07278, i64 %i.l
  %i.bd = getelementptr inbounds [2 x i8], ptr %.07179, i64 %i.p
  %i.be = add nuw nsw i32 %.06680, 1              ; 2 uses
  %exitcond97.not = icmp eq i32 %i.be, %i.h
  br i1 %exitcond97.not, label %.preheader, label %.preheader76, !llvm.loop !109

.preheader76.new:                                 ; preds = %.preheader76, %.preheader76.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader76.new ], [ 0, %.preheader76 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader76.new ], [ 0, %.preheader76 ]
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.07278, i64 %indvars.iv
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !53
  %i.bh = zext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !35
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !35
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.07179, i64 %indvars.iv
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !53
  %i.bn = zext i16 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !35
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !35
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.07278, i64 %indvars.iv.next
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !53
  %i.bt = zext i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !35
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !35
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.07179, i64 %indvars.iv.next
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !53
  %i.bz = zext i16 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !35
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !35
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader76.new, !llvm.loop !110

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %bb.b ], [ 0, %.preheader ] ; 3 uses
  %.06881 = phi i32 [ %i.cf, %bb.b ], [ 0, %.preheader ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv98
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !35
  %i.cf = add i32 %i.ce, %.06881                  ; 2 uses
  %.not = icmp ult i32 %i.cf, %i.z
  br i1 %.not, label %bb.b, label %._crit_edge83.split.loop.exit111

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next99 to i32
  %i.ch = uitofp nsz nneg i32 %i.cg to float
  %i.ci = fcmp nsz ogt float %i.ao, %i.ch
  br i1 %i.ci, label %.lr.ph, label %._crit_edge83, !llvm.loop !111

._crit_edge83.split.loop.exit111:                 ; preds = %.lr.ph
  %i.cj = trunc nuw nsw i64 %indvars.iv98 to i32
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %bb.b, %._crit_edge83.split.loop.exit111
  %.070 = phi i32 [ %i.cj, %._crit_edge83.split.loop.exit111 ], [ %i.ac, %bb.b ] ; 2 uses
  br label %.lr.ph91

.lr.ph91:                                         ; preds = %._crit_edge83, %bb.c
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %bb.c ], [ 0, %._crit_edge83 ] ; 3 uses
  %.06788 = phi i32 [ %i.cm, %bb.c ], [ 0, %._crit_edge83 ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv101
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !35
  %i.cm = add i32 %i.cl, %.06788                  ; 2 uses
  %.not75 = icmp ult i32 %i.cm, %i.z
  br i1 %.not75, label %bb.c, label %._crit_edge92.loopexit.split.loop.exit

bb.c:                                             ; preds = %.lr.ph91
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.cn = trunc nuw i64 %indvars.iv.next102 to i32
  %i.co = uitofp nsz nneg i32 %i.cn to float
  %i.cp = fcmp nsz ogt float %i.ao, %i.co
  br i1 %i.cp, label %.lr.ph91, label %._crit_edge92, !llvm.loop !112

._crit_edge92.loopexit.split.loop.exit:           ; preds = %.lr.ph91
  %i.cq = trunc nuw nsw i64 %indvars.iv101 to i32
  br label %._crit_edge92

._crit_edge92:                                    ; preds = %bb.c, %._crit_edge92.loopexit.split.loop.exit, %.preheader
  %.070110 = phi i32 [ %.070, %._crit_edge92.loopexit.split.loop.exit ], [ %i.ac, %.preheader ], [ %.070, %bb.c ]
  %.069 = phi i32 [ %i.cq, %._crit_edge92.loopexit.split.loop.exit ], [ %i.ac, %.preheader ], [ %i.ac, %bb.c ]
  %i.cr = insertelement <2 x i32> poison, i32 %.070110, i64 0
  %i.cs = insertelement <2 x i32> %i.cr, i32 %.069, i64 1
  %i.ct = sitofp <2 x i32> %i.cs to <2 x float>
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !36
  %i.cw = insertelement <2 x float> poison, float %i.d, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.ct, <2 x float> splat (float -5.000000e-01))
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %i.cz, ptr %i.cv, align 4, !tbaa !37
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @av_default_item_name(ptr noundef) #1

declare void @av_freep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!21 = !{!"AVRational", !6, i64 0, !6, i64 4}
!22 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!23 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!24 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!25 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!26 = !{!"AVFilterFormatsConfig", !24, i64 0, !24, i64 8, !25, i64 16, !24, i64 24, !24, i64 32, !24, i64 40}
!27 = !{!"AVFilterLink", !20, i64 0, !13, i64 8, !20, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !21, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !22, i64 72, !21, i64 96, !23, i64 104, !6, i64 112, !6, i64 116, !26, i64 120, !26, i64 168}
!28 = !{!27, !20, i64 16}
!29 = !{!"float", !5, i64 0}
!30 = !{!"p1 int", !9, i64 0}
!31 = !{!"p1 float", !9, i64 0}
!32 = !{!"ColorCorrectContext", !10, i64 0, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !29, i64 24, !6, i64 28, !6, i64 32, !29, i64 36, !29, i64 40, !6, i64 44, !6, i64 48, !5, i64 52, !5, i64 68, !30, i64 88, !30, i64 96, !31, i64 104, !9, i64 112, !9, i64 120}
!33 = !{!32, !6, i64 28}
!34 = !{!32, !9, i64 112}
!35 = !{!6, !6, i64 0}
!36 = !{!32, !31, i64 104}
!37 = !{!29, !29, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!32, !9, i64 120}
!40 = !{!32, !6, i64 32}
!41 = !{!32, !29, i64 36}
!42 = !{!32, !29, i64 40}
!43 = !{!32, !30, i64 88}
!44 = !{!32, !30, i64 96}
!45 = !{!32, !6, i64 44}
!46 = !{!32, !6, i64 48}
!47 = !{!32, !29, i64 24}
!48 = !{!12, !12, i64 0}
!49 = !{!5, !5, i64 0}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = !{!"short", !5, i64 0}
!53 = !{!52, !52, i64 0}
!54 = distinct !{!54, !56}
!55 = distinct !{!55, !38}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!18, !15, i64 56}
!58 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!27, !6, i64 36}
!61 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!62 = !{!61, !6, i64 16}
!63 = !{!27, !6, i64 44}
!64 = !{!"long", !5, i64 0}
!65 = !{!"AVPixFmtDescriptor", !12, i64 0, !5, i64 8, !5, i64 9, !5, i64 10, !64, i64 16, !5, i64 24, !12, i64 104}
!66 = !{!65, !5, i64 9}
!67 = !{!65, !5, i64 10}
!68 = !{!27, !6, i64 40}
!69 = distinct !{!69, !"LVerDomain"}
!70 = distinct !{!70, !69}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !69}
!73 = distinct !{!73, !38, !50, !51}
!74 = distinct !{!74, !38, !50, !51}
!75 = distinct !{!75, !38}
!76 = distinct !{!76, !38, !50}
!77 = !{!70}
!78 = !{!71}
!79 = !{!72, !70}
!80 = !{!72}
!81 = !{!"branch_weights", i32 4, i32 12}
!82 = distinct !{!82, !"LVerDomain"}
!83 = distinct !{!83, !82}
!84 = distinct !{!84, !82}
!85 = distinct !{!85, !82}
!86 = distinct !{!86, !38, !50, !51}
!87 = distinct !{!87, !38}
!88 = distinct !{!88, !38, !50}
!89 = !{!83}
!90 = !{!84}
!91 = !{!85, !83}
!92 = !{!85}
!93 = distinct !{!93, !38, !50, !51}
!94 = distinct !{!94, !38, !51, !50}
!95 = distinct !{!95, !38}
!96 = distinct !{!96, !38, !50, !51}
!97 = distinct !{!97, !38, !51, !50}
!98 = distinct !{!98, !38}
!99 = distinct !{!99, !38, !50, !51}
!100 = distinct !{!100, !38, !51, !50}
!101 = distinct !{!101, !38}
!102 = distinct !{!102, !38, !50, !51}
!103 = distinct !{!103, !38, !51, !50}
!104 = distinct !{!104, !38}
!105 = distinct !{!105, !38}
!106 = distinct !{!106, !38}
!107 = distinct !{!107, !38}
!108 = distinct !{!108, !38}
!109 = distinct !{!109, !38}
!110 = distinct !{!110, !38}
!111 = distinct !{!111, !38}
!112 = distinct !{!112, !38}
end_hunk_1
