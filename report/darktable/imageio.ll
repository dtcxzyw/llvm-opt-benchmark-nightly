Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio?download=true
inline.NumInlined: 27
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@dt_imageio_flip_buffers_ui8_to_float:bb.a
  %cmp.n181 = icmp eq i64 %n.vec168, %wide.trip.count120
  %min.epilog.iters.check186 = icmp eq i64 %i.s, 0
  %n.vec188 = and i64 %wide.trip.count120, 2147483644 ; 3 uses
  %broadcast.splatinsert189 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat190 = shufflevector <4 x float> %broadcast.splatinsert189, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert191 = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat192 = shufflevector <4 x float> %broadcast.splatinsert191, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n198 = icmp eq i64 %n.vec188, %wide.trip.count120
  %xtraiter201 = and i64 %wide.trip.count120, 3   ; 2 uses
  %lcmp.mod202.not = icmp eq i64 %xtraiter201, 0
  br label %.preheader85

.preheader85:                                     ; preds = %.preheader85.preheader, %._crit_edge101
  %indvars.iv127 = phi i64 [ 0, %.preheader85.preheader ], [ %indvars.iv.next128, %._crit_edge101 ] ; 5 uses
  %i.t = mul i64 %i.i, %indvars.iv127             ; 2 uses
  %scevgep158.a = getelementptr i8, ptr %0, i64 %i.t
  %scevgep159.a = getelementptr i8, ptr %i.p, i64 %i.t
  %i.u = mul i64 %indvars.iv127, %i.f
  %scevgep160 = getelementptr i8, ptr %i.r, i64 %i.u
  %i.v = mul nsw i64 %indvars.iv127, %i.f
  %i.w = getelementptr i8, ptr %1, i64 %i.v       ; 2 uses
  %i.x = mul nuw nsw i64 %indvars.iv127, %i.h
  %bound0161 = icmp ult ptr %scevgep158.a, %scevgep160
  %bound1162 = icmp ult ptr %i.w, %scevgep159.a
  %found.conflict163 = and i1 %bound0161, %bound1162
  br label %iter.check183

iter.check183:                                    ; preds = %.preheader85, %._crit_edge99
  %indvars.iv122 = phi i64 [ 0, %.preheader85 ], [ %indvars.iv.next123, %._crit_edge99 ] ; 3 uses
  %i.y = mul nuw nsw i64 %indvars.iv122, %i.g
  %i.z = getelementptr i8, ptr %i.w, i64 %i.y     ; 7 uses
  %i.aa = add nuw nsw i64 %i.x, %indvars.iv122
  %.idx = shl i64 %i.aa, 4
  %i.ab = getelementptr i8, ptr %0, i64 %.idx     ; 7 uses
  %brmerge204.a = select i1 %min.iters.check164, i1 true, i1 %found.conflict163
  br i1 %brmerge204.a, label %vec.epilog.scalar.ph184.preheader, label %vector.main.loop.iter.check165

vector.main.loop.iter.check165:                   ; preds = %iter.check183
  br i1 %min.iters.check166, label %vec.epilog.ph187, label %vector.body173

vector.body173:                                   ; preds = %vector.main.loop.iter.check165, %vector.body173
  %index174 = phi i64 [ %index.next179, %vector.body173 ], [ 0, %vector.main.loop.iter.check165 ] ; 3 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 %index174 ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = getelementptr i8, ptr %i.ac, i64 16
  %i.af = getelementptr i8, ptr %i.ac, i64 24
  %wide.load175.a = load <8 x i8>, ptr %i.ac, align 1, !tbaa !21, !alias.scope !171
  %wide.load176.a = load <8 x i8>, ptr %i.ad, align 1, !tbaa !21, !alias.scope !171
  %wide.load177.a = load <8 x i8>, ptr %i.ae, align 1, !tbaa !21, !alias.scope !171
  %wide.load178 = load <8 x i8>, ptr %i.af, align 1, !tbaa !21, !alias.scope !171
  %i.ag = uitofp <8 x i8> %wide.load175.a to <8 x float>
  %i.ah = uitofp <8 x i8> %wide.load176.a to <8 x float>
  %i.ai = uitofp <8 x i8> %wide.load177.a to <8 x float>
  %i.aj = uitofp <8 x i8> %wide.load178 to <8 x float>
  %i.ak = fsub reassoc nsz arcp contract afn <8 x float> %i.ag, %broadcast.splat170
  %i.al = fsub reassoc nsz arcp contract afn <8 x float> %i.ah, %broadcast.splat170
  %i.am = fsub reassoc nsz arcp contract afn <8 x float> %i.ai, %broadcast.splat170
  %i.an = fsub reassoc nsz arcp contract afn <8 x float> %i.aj, %broadcast.splat170
  %i.ao = fmul reassoc nsz arcp contract afn <8 x float> %i.ak, %broadcast.splat172
  %i.ap = fmul reassoc nsz arcp contract afn <8 x float> %i.al, %broadcast.splat172
  %i.aq = fmul reassoc nsz arcp contract afn <8 x float> %i.am, %broadcast.splat172
  %i.ar = fmul reassoc nsz arcp contract afn <8 x float> %i.an, %broadcast.splat172
  %i.as = getelementptr [4 x i8], ptr %i.ab, i64 %index174 ; 4 uses
  %i.at = getelementptr i8, ptr %i.as, i64 32
  %i.au = getelementptr i8, ptr %i.as, i64 64
  %i.av = getelementptr i8, ptr %i.as, i64 96
  store <8 x float> %i.ao, ptr %i.as, align 4, !tbaa !66, !alias.scope !172, !noalias !171
  store <8 x float> %i.ap, ptr %i.at, align 4, !tbaa !66, !alias.scope !172, !noalias !171
  store <8 x float> %i.aq, ptr %i.au, align 4, !tbaa !66, !alias.scope !172, !noalias !171
  store <8 x float> %i.ar, ptr %i.av, align 4, !tbaa !66, !alias.scope !172, !noalias !171
  %index.next179 = add nuw i64 %index174, 32      ; 2 uses
  %i.aw = icmp eq i64 %index.next179, %n.vec168
  br i1 %i.aw, label %middle.block180, label %vector.body173, !llvm.loop !160

middle.block180:                                  ; preds = %vector.body173
  br i1 %cmp.n181, label %._crit_edge99, label %vec.epilog.iter.check185

vec.epilog.iter.check185:                         ; preds = %middle.block180
  br i1 %min.epilog.iters.check186, label %vec.epilog.scalar.ph184.preheader, label %vec.epilog.ph187, !prof !173

vec.epilog.ph187:                                 ; preds = %vector.main.loop.iter.check165, %vec.epilog.iter.check185
  %vec.epilog.resume.val182 = phi i64 [ %n.vec168, %vec.epilog.iter.check185 ], [ 0, %vector.main.loop.iter.check165 ]
  br label %vec.epilog.vector.body193

vec.epilog.vector.body193:                        ; preds = %vec.epilog.vector.body193, %vec.epilog.ph187
  %index194 = phi i64 [ %vec.epilog.resume.val182, %vec.epilog.ph187 ], [ %index.next196, %vec.epilog.vector.body193 ] ; 3 uses
  %i.ax = getelementptr i8, ptr %i.z, i64 %index194
  %wide.load195 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !21, !alias.scope !171
  %i.ay = uitofp <4 x i8> %wide.load195 to <4 x float>
  %i.az = fsub reassoc nsz arcp contract afn <4 x float> %i.ay, %broadcast.splat190
  %i.ba = fmul reassoc nsz arcp contract afn <4 x float> %i.az, %broadcast.splat192
  %i.bb = getelementptr [4 x i8], ptr %i.ab, i64 %index194
  store <4 x float> %i.ba, ptr %i.bb, align 4, !tbaa !66, !alias.scope !172, !noalias !171
  %index.next196 = add nuw i64 %index194, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next196, %n.vec188
  br i1 %i.bc, label %vec.epilog.middle.block197, label %vec.epilog.vector.body193, !llvm.loop !161

vec.epilog.middle.block197:                       ; preds = %vec.epilog.vector.body193
  br i1 %cmp.n198, label %._crit_edge99, label %vec.epilog.scalar.ph184.preheader

vec.epilog.scalar.ph184.preheader:                ; preds = %iter.check183, %vec.epilog.iter.check185, %vec.epilog.middle.block197
  %indvars.iv117.ph = phi i64 [ 0, %iter.check183 ], [ %n.vec188, %vec.epilog.middle.block197 ], [ %n.vec168, %vec.epilog.iter.check185 ] ; 3 uses
  br i1 %lcmp.mod202.not, label %vec.epilog.scalar.ph184.prol.loopexit, label %vec.epilog.scalar.ph184.prol

vec.epilog.scalar.ph184.prol:                     ; preds = %vec.epilog.scalar.ph184.preheader, %vec.epilog.scalar.ph184.prol
  %indvars.iv117.prol = phi i64 [ %indvars.iv.next118.prol, %vec.epilog.scalar.ph184.prol ], [ %indvars.iv117.ph, %vec.epilog.scalar.ph184.preheader ] ; 3 uses
  %prol.iter203 = phi i64 [ %prol.iter203.next, %vec.epilog.scalar.ph184.prol ], [ 0, %vec.epilog.scalar.ph184.preheader ]
  %i.bd = getelementptr i8, ptr %i.z, i64 %indvars.iv117.prol
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !21
  %i.bf = uitofp i8 %i.be to float
  %i.bg = fsub reassoc nsz arcp contract afn float %i.bf, %2
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bg, %i.b
  %i.bi = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv117.prol
  store float %i.bh, ptr %i.bi, align 4, !tbaa !66
  %indvars.iv.next118.prol = add nuw nsw i64 %indvars.iv117.prol, 1 ; 2 uses
  %prol.iter203.next = add i64 %prol.iter203, 1   ; 2 uses
  %prol.iter203.cmp.not = icmp eq i64 %prol.iter203.next, %xtraiter201
  br i1 %prol.iter203.cmp.not, label %vec.epilog.scalar.ph184.prol.loopexit, label %vec.epilog.scalar.ph184.prol, !llvm.loop !162

vec.epilog.scalar.ph184.prol.loopexit:            ; preds = %vec.epilog.scalar.ph184.prol, %vec.epilog.scalar.ph184.preheader
  %indvars.iv117.unr = phi i64 [ %indvars.iv117.ph, %vec.epilog.scalar.ph184.preheader ], [ %indvars.iv.next118.prol, %vec.epilog.scalar.ph184.prol ]
  %i.bj = sub nsw i64 %indvars.iv117.ph, %wide.trip.count120
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %._crit_edge99, label %vec.epilog.scalar.ph184

._crit_edge101:                                   ; preds = %._crit_edge99
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %.loopexit, label %.preheader85

._crit_edge99:                                    ; preds = %vec.epilog.scalar.ph184.prol.loopexit, %vec.epilog.scalar.ph184, %vec.epilog.middle.block197, %middle.block180
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %i.h
  br i1 %exitcond126.not, label %._crit_edge101, label %iter.check183

vec.epilog.scalar.ph184:                          ; preds = %vec.epilog.scalar.ph184.prol.loopexit, %vec.epilog.scalar.ph184
  %indvars.iv117 = phi i64 [ %indvars.iv.next118.3, %vec.epilog.scalar.ph184 ], [ %indvars.iv117.unr, %vec.epilog.scalar.ph184.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr i8, ptr %i.z, i64 %indvars.iv117
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !21
  %i.bn = uitofp i8 %i.bm to float
  %i.bo = fsub reassoc nsz arcp contract afn float %i.bn, %2
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bo, %i.b
  %i.bq = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv117
  store float %i.bp, ptr %i.bq, align 4, !tbaa !66
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.br = getelementptr i8, ptr %i.z, i64 %indvars.iv.next118
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !21
  %i.bt = uitofp i8 %i.bs to float
  %i.bu = fsub reassoc nsz arcp contract afn float %i.bt, %2
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %i.b
  %i.bw = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv.next118
  store float %i.bv, ptr %i.bw, align 4, !tbaa !66
  %indvars.iv.next118.1 = add nuw nsw i64 %indvars.iv117, 2 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.z, i64 %indvars.iv.next118.1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !21
  %i.bz = uitofp i8 %i.by to float
  %i.ca = fsub reassoc nsz arcp contract afn float %i.bz, %2
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, %i.b
  %i.cc = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv.next118.1
  store float %i.cb, ptr %i.cc, align 4, !tbaa !66
  %indvars.iv.next118.2 = add nuw nsw i64 %indvars.iv117, 3 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.z, i64 %indvars.iv.next118.2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !21
  %i.cf = uitofp i8 %i.ce to float
  %i.cg = fsub reassoc nsz arcp contract afn float %i.cf, %2
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.b
  %i.ci = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv.next118.2
  store float %i.ch, ptr %i.ci, align 4, !tbaa !66
  %indvars.iv.next118.3 = add nuw nsw i64 %indvars.iv117, 4 ; 2 uses
  %exitcond121.not.3 = icmp eq i64 %indvars.iv.next118.3, %wide.trip.count120
  br i1 %exitcond121.not.3, label %._crit_edge99, label %vec.epilog.scalar.ph184, !llvm.loop !163

bb.b:                                             ; preds = %bb.a
  %i.cj = shl nsw i32 %5, 2
  %i.ck = and i32 %10, 4
  %.not80 = icmp eq i32 %i.ck, 0                  ; 2 uses
  %spec.select83 = select i1 %.not80, i32 %i.cj, i32 4 ; 3 uses
  %i.cl = and i32 %10, 1
  %.not81 = icmp eq i32 %i.cl, 0                  ; 2 uses
  %i.cm = sub nsw i32 0, %spec.select83
  %.1 = select i1 %.not81, i32 %spec.select83, i32 %i.cm
  %i.cn = icmp sgt i32 %6, 0
  br i1 %i.cn, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.co = and i32 %10, 2
  %.not82 = icmp eq i32 %i.co, 0                  ; 2 uses
  %i.cp = shl nsw i32 %6, 2
  %spec.select = select i1 %.not80, i32 4, i32 %i.cp ; 2 uses
  %i.cq = sub nsw i32 0, %spec.select
  %.170 = select i1 %.not82, i32 %spec.select, i32 %i.cq ; 2 uses
  %i.cr = add nsw i32 %7, -1
  %narrow84 = select i1 %.not82, i32 0, i32 %i.cr
  %.072 = sext i32 %narrow84 to i64               ; 2 uses
  %i.cs = add nsw i32 %8, -1
  %narrow = select i1 %.not81, i32 0, i32 %i.cs
  %.071 = sext i32 %narrow to i64                 ; 2 uses
  %i.ct = tail call i32 @llvm.abs.i32(i32 %spec.select83, i1 false)
  %i.cu = zext i32 %i.ct to i64                   ; 2 uses
  %i.cv = mul nsw i64 %i.cu, %.071
  %i.cw = getelementptr [4 x i8], ptr %0, i64 %i.cv
  %i.cx = sext i32 %.170 to i64                   ; 3 uses
  %i.cy = tail call i64 @llvm.abs.i64(i64 %i.cx, i1 false) ; 2 uses
  %i.cz = mul i64 %i.cy, %.072
  %i.da = getelementptr [4 x i8], ptr %i.cw, i64 %i.cz
  %i.db = sext i32 %9 to i64                      ; 2 uses
  %i.dc = icmp slt i32 %5, 1
  %i.dd = icmp slt i32 %4, 1
  %i.de = sext i32 %4 to i64                      ; 2 uses
  %brmerge108 = or i1 %i.dc, %i.dd
  br i1 %brmerge108, label %.loopexit, label %.preheader87.lr.ph.preheader

.preheader87.lr.ph.preheader:                     ; preds = %.lr.ph
  %i.df = sext i32 %.1 to i64                     ; 2 uses
  %wide.trip.count115 = zext nneg i32 %6 to i64
  %wide.trip.count = zext nneg i32 %4 to i64      ; 10 uses
  %i.dg = mul i64 %i.cy, %.072
  %i.dh = mul nsw i64 %.071, %i.cu
  %i.di = add i64 %i.dg, %i.dh
  %i.dj = add nsw i32 %5, -1
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = mul nsw i64 %i.cx, %i.dk
  %i.dm = add i64 %i.di, %i.dl
  %i.dn = add i64 %i.dm, %wide.trip.count
  %i.do = shl i64 %i.dn, 2
  %11 = shl nsw i64 %i.df, 2
  %12 = mul nuw nsw i64 %i.de, %i.dk
  %i.dp = getelementptr i8, ptr %0, i64 %i.do
  %i.dq = getelementptr i8, ptr %1, i64 %12
  %i.dr = getelementptr i8, ptr %i.dq, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %4, 4
  %stride.check = icmp slt i32 %.170, 0
  %min.iters.check142 = icmp ult i32 %4, 32
  %i.ds = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %2, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert143 = insertelement <8 x float> poison, float %i.b, i64 0
  %broadcast.splat144 = shufflevector <8 x float> %broadcast.splatinsert143, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ds, 0
  %n.vec148 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert149 = insertelement <4 x float> poison, float %2, i64 0
  %broadcast.splat150 = shufflevector <4 x float> %broadcast.splatinsert149, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert151 = insertelement <4 x float> poison, float %i.b, i64 0
  %broadcast.splat152 = shufflevector <4 x float> %broadcast.splatinsert151, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n156 = icmp eq i64 %n.vec148, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader87.lr.ph

.preheader87.lr.ph:                               ; preds = %.preheader87.lr.ph.preheader, %._crit_edge93
  %indvars.iv112 = phi i64 [ 0, %.preheader87.lr.ph.preheader ], [ %indvars.iv.next113, %._crit_edge93 ] ; 5 uses
  %i.dt = mul i64 %11, %indvars.iv112
  %scevgep140.a = getelementptr i8, ptr %i.dp, i64 %i.dt
  %i.du = mul i64 %indvars.iv112, %i.db
  %scevgep141 = getelementptr i8, ptr %i.dr, i64 %i.du
  %i.dv = mul nsw i64 %indvars.iv112, %i.df
  %i.dw = getelementptr [4 x i8], ptr %i.da, i64 %i.dv ; 2 uses
  %i.dx = mul i64 %indvars.iv112, %i.db
  %i.dy = getelementptr i8, ptr %1, i64 %i.dx     ; 2 uses
  %bound0 = icmp ult ptr %i.dw, %scevgep141
  %bound1 = icmp ult ptr %i.dy, %scevgep140.a
  %found.conflict = and i1 %bound0, %bound1
  %i.dz = or i1 %found.conflict, %stride.check
  br label %iter.check

iter.check:                                       ; preds = %.preheader87.lr.ph, %._crit_edge
  %.06492 = phi i32 [ 0, %.preheader87.lr.ph ], [ %i.fl, %._crit_edge ]
  %.06591 = phi ptr [ %i.dy, %.preheader87.lr.ph ], [ %i.fj, %._crit_edge ] ; 8 uses
  %.06690 = phi ptr [ %i.dw, %.preheader87.lr.ph ], [ %i.fk, %._crit_edge ] ; 8 uses
  %brmerge205 = select i1 %min.iters.check, i1 true, i1 %i.dz
  br i1 %brmerge205, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check142, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.06591, i64 %index ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %wide.load = load <8 x i8>, ptr %i.ea, align 1, !tbaa !21, !alias.scope !174
  %wide.load145.a = load <8 x i8>, ptr %i.eb, align 1, !tbaa !21, !alias.scope !174
  %wide.load146.a = load <8 x i8>, ptr %i.ec, align 1, !tbaa !21, !alias.scope !174
  %wide.load147 = load <8 x i8>, ptr %i.ed, align 1, !tbaa !21, !alias.scope !174
  %i.ee = uitofp <8 x i8> %wide.load to <8 x float>
  %i.ef = uitofp <8 x i8> %wide.load145.a to <8 x float>
  %i.eg = uitofp <8 x i8> %wide.load146.a to <8 x float>
  %i.eh = uitofp <8 x i8> %wide.load147 to <8 x float>
  %i.ei = fsub reassoc nsz arcp contract afn <8 x float> %i.ee, %broadcast.splat
  %i.ej = fsub reassoc nsz arcp contract afn <8 x float> %i.ef, %broadcast.splat
  %i.ek = fsub reassoc nsz arcp contract afn <8 x float> %i.eg, %broadcast.splat
  %i.el = fsub reassoc nsz arcp contract afn <8 x float> %i.eh, %broadcast.splat
  %i.em = fmul reassoc nsz arcp contract afn <8 x float> %i.ei, %broadcast.splat144
  %i.en = fmul reassoc nsz arcp contract afn <8 x float> %i.ej, %broadcast.splat144
  %i.eo = fmul reassoc nsz arcp contract afn <8 x float> %i.ek, %broadcast.splat144
  %i.ep = fmul reassoc nsz arcp contract afn <8 x float> %i.el, %broadcast.splat144
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.06690, i64 %index ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 96
  store <8 x float> %i.em, ptr %i.eq, align 4, !tbaa !66, !alias.scope !175, !noalias !174
  store <8 x float> %i.en, ptr %i.er, align 4, !tbaa !66, !alias.scope !175, !noalias !174
  store <8 x float> %i.eo, ptr %i.es, align 4, !tbaa !66, !alias.scope !175, !noalias !174
  store <8 x float> %i.ep, ptr %i.et, align 4, !tbaa !66, !alias.scope !175, !noalias !174
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !173

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index153 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next155, %vec.epilog.vector.body ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.06591, i64 %index153
  %wide.load154 = load <4 x i8>, ptr %i.ev, align 1, !tbaa !21, !alias.scope !174
  %i.ew = uitofp <4 x i8> %wide.load154 to <4 x float>
  %i.ex = fsub reassoc nsz arcp contract afn <4 x float> %i.ew, %broadcast.splat150
  %i.ey = fmul reassoc nsz arcp contract afn <4 x float> %i.ex, %broadcast.splat152
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.06690, i64 %index153
  store <4 x float> %i.ey, ptr %i.ez, align 4, !tbaa !66, !alias.scope !175, !noalias !174
  %index.next155 = add nuw i64 %index153, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next155, %n.vec148
  br i1 %i.fa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !168

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n156, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec148, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.06591, i64 %indvars.iv.prol
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !21
  %i.fd = uitofp i8 %i.fc to float
  %i.fe = fsub reassoc nsz arcp contract afn float %i.fd, %2
  %i.ff = fmul reassoc nsz arcp contract afn float %i.fe, %i.b
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.06690, i64 %indvars.iv.prol
  store float %i.ff, ptr %i.fg, align 4, !tbaa !66
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !169

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.fh = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.fi = icmp ugt i64 %i.fh, -4
  br i1 %i.fi, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge93:                                    ; preds = %._crit_edge
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count115
  br i1 %exitcond116.not, label %.loopexit, label %.preheader87.lr.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.fj = getelementptr inbounds nuw i8, ptr %.06591, i64 %i.de
  %i.fk = getelementptr inbounds [4 x i8], ptr %.06690, i64 %i.cx
  %i.fl = add nuw nsw i32 %.06492, 1              ; 2 uses
  %exitcond111.not = icmp eq i32 %i.fl, %5
  br i1 %exitcond111.not, label %._crit_edge93, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.06591, i64 %indvars.iv
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !21
  %i.fo = uitofp i8 %i.fn to float
  %i.fp = fsub reassoc nsz arcp contract afn float %i.fo, %2
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fp, %i.b
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.06690, i64 %indvars.iv
  store float %i.fq, ptr %i.fr, align 4, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.06591, i64 %indvars.iv.next
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !21
  %i.fu = uitofp i8 %i.ft to float
  %i.fv = fsub reassoc nsz arcp contract afn float %i.fu, %2
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fv, %i.b
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.06690, i64 %indvars.iv.next
  store float %i.fw, ptr %i.fx, align 4, !tbaa !66
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.06591, i64 %indvars.iv.next.1
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !21
  %i.ga = uitofp i8 %i.fz to float
  %i.gb = fsub reassoc nsz arcp contract afn float %i.ga, %2
  %i.gc = fmul reassoc nsz arcp contract afn float %i.gb, %i.b
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.06690, i64 %indvars.iv.next.1
  store float %i.gc, ptr %i.gd, align 4, !tbaa !66
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.06591, i64 %indvars.iv.next.2
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !21
  %i.gg = uitofp i8 %i.gf to float
  %i.gh = fsub reassoc nsz arcp contract afn float %i.gg, %2
  %i.gi = fmul reassoc nsz arcp contract afn float %i.gh, %i.b
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.06690, i64 %indvars.iv.next.2
  store float %i.gi, ptr %i.gj, align 4, !tbaa !66
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !170

.loopexit:                                        ; preds = %._crit_edge93, %._crit_edge101, %.lr.ph, %.preheader85.lr.ph, %bb.b, %.preheader86
  ret void
}

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 2) i32 @dt_imageio_is_ldr(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call fastcc ptr @_find_signature(ptr noundef %0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !70
  %.not3 = icmp eq i32 %i.c, 0
  %i.d = zext i1 %.not3 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ 0, %bb.a ], [ %i.d, %bb.b ]
  ret i32 %i.e
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc ptr @_find_signature(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #7 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 11 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !21
  %.not36 = icmp eq i8 %i.b, 0
  br i1 %.not36, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.130) ; 3 uses
  %.not37 = icmp eq ptr %i.c, null
  br i1 %.not37, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.d = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 512, ptr noundef nonnull %i.c)
  %i.e = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  %i.f = icmp ult i64 %i.d, 32
  br i1 %i.f, label %.thread57, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %lhsv = load i32, ptr %i.g, align 4
end_hunk_0
