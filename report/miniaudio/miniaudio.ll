Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_panner_process_pcm_frames:bb.a
bb.i:                                             ; preds = %bb.h
  %i.y = fsub float 1.000000e+00, %i.k            ; 10 uses
  br i1 %i.x, label %.preheader.i.i, label %.preheader56.i.i

.preheader56.i.i:                                 ; preds = %bb.i
  br i1 %.not71.i.i, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph66.i.i.preheader

.lr.ph66.i.i.preheader:                           ; preds = %.preheader56.i.i
  %min.iters.check203 = icmp ult i64 %3, 4
  br i1 %min.iters.check203, label %.lr.ph66.i.i.preheader252, label %vector.memcheck204

vector.memcheck204:                               ; preds = %.lr.ph66.i.i.preheader
  %i.z = shl i64 %3, 3                            ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %i.ab = getelementptr i8, ptr %2, i64 %i.z
  %bound0205 = icmp ult ptr %1, %i.ab
  %bound1206 = icmp ult ptr %2, %i.aa
  %found.conflict207 = and i1 %bound0205, %bound1206
  br i1 %found.conflict207, label %.lr.ph66.i.i.preheader252, label %vector.ph208

vector.ph208:                                     ; preds = %vector.memcheck204
  %n.vec209 = and i64 %3, -2                      ; 3 uses
  %broadcast.splatinsert210 = insertelement <2 x float> poison, float %i.y, i64 0
  %broadcast.splat211 = shufflevector <2 x float> %broadcast.splatinsert210, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph208
  %index213 = phi i64 [ 0, %vector.ph208 ], [ %index.next218, %vector.body212 ] ; 2 uses
  %i.ac = shl i64 %index213, 1                    ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ac
  %wide.vec214 = load <4 x float>, ptr %i.ad, align 4, !tbaa !349, !alias.scope !1900 ; 2 uses
  %strided.vec215 = shufflevector <4 x float> %wide.vec214, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec216 = shufflevector <4 x float> %wide.vec214, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ae = fmul <2 x float> %broadcast.splat211, %strided.vec215
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac
  %interleaved.vec217 = shufflevector <2 x float> %i.ae, <2 x float> %strided.vec216, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec217, ptr %i.af, align 4, !tbaa !349, !alias.scope !1901, !noalias !1900
  %index.next218 = add nuw i64 %index213, 2       ; 2 uses
  %i.ag = icmp eq i64 %index.next218, %n.vec209
  br i1 %i.ag, label %middle.block219, label %vector.body212, !llvm.loop !1872

middle.block219:                                  ; preds = %vector.body212
  %cmp.n220 = icmp eq i64 %3, %n.vec209
  br i1 %cmp.n220, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph66.i.i.preheader252

.lr.ph66.i.i.preheader252:                        ; preds = %vector.memcheck204, %.lr.ph66.i.i.preheader, %middle.block219
  %.165.i.i.ph = phi i64 [ 0, %vector.memcheck204 ], [ 0, %.lr.ph66.i.i.preheader ], [ %n.vec209, %middle.block219 ] ; 4 uses
  %.neg279 = or disjoint i64 %.165.i.i.ph, 1
  %xtraiter272 = and i64 %3, 1
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br i1 %lcmp.mod273.not, label %.lr.ph66.i.i.prol.loopexit, label %.lr.ph66.i.i.prol

.lr.ph66.i.i.prol:                                ; preds = %.lr.ph66.i.i.preheader252
  %i.ah = shl i64 %.165.i.i.ph, 1                 ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !349
  %i.ak = fmul float %i.y, %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ah
  store float %i.ak, ptr %i.al, align 4, !tbaa !349
  %i.am = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !349
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.am
  store float %i.ao, ptr %i.ap, align 4, !tbaa !349
  %i.aq = or disjoint i64 %.165.i.i.ph, 1
  br label %.lr.ph66.i.i.prol.loopexit

.lr.ph66.i.i.prol.loopexit:                       ; preds = %.lr.ph66.i.i.prol, %.lr.ph66.i.i.preheader252
  %.165.i.i.unr = phi i64 [ %.165.i.i.ph, %.lr.ph66.i.i.preheader252 ], [ %i.aq, %.lr.ph66.i.i.prol ]
  %i.ar = icmp eq i64 %3, %.neg279
  br i1 %i.ar, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph66.i.i

.preheader.i.i:                                   ; preds = %bb.i
  br i1 %.not71.i.i, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph68.i.i.preheader

.lr.ph68.i.i.preheader:                           ; preds = %.preheader.i.i
  %min.iters.check228 = icmp ult i64 %3, 21
  br i1 %min.iters.check228, label %.lr.ph68.i.i.preheader250, label %vector.memcheck229

vector.memcheck229:                               ; preds = %.lr.ph68.i.i.preheader
  %i.as = shl i64 %3, 3
  %i.at = add i64 %i.as, -4                       ; 2 uses
  %i.au = getelementptr i8, ptr %1, i64 %i.at
  %i.av = getelementptr i8, ptr %2, i64 %i.at
  %bound0230 = icmp ult ptr %1, %i.av
  %bound1231 = icmp ult ptr %2, %i.au
  %found.conflict232 = and i1 %bound0230, %bound1231
  br i1 %found.conflict232, label %.lr.ph68.i.i.preheader250, label %vector.ph233

vector.ph233:                                     ; preds = %vector.memcheck229
  %i.aw = and i64 %3, 3                           ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 4, i64 %i.aw
  %n.vec234 = sub i64 %3, %i.ay                   ; 2 uses
  %broadcast.splatinsert235 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat236 = shufflevector <4 x float> %broadcast.splatinsert235, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body237

vector.body237:                                   ; preds = %vector.body237, %vector.ph233
  %index238 = phi i64 [ 0, %vector.ph233 ], [ %index.next241, %vector.body237 ] ; 5 uses
  %i.az = shl i64 %index238, 1                    ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.az
  %wide.vec239 = load <8 x float>, ptr %i.ba, align 4, !tbaa !349, !alias.scope !1902
  %strided.vec240 = shufflevector <8 x float> %wide.vec239, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bb = fmul <4 x float> %broadcast.splat236, %strided.vec240 ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.az
  %.idx246 = shl i64 %index238, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %.idx246
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.idx247 = shl i64 %index238, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %.idx247
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.idx248 = shl i64 %index238, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %.idx248
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = extractelement <4 x float> %i.bb, i64 0
  store float %i.bj, ptr %i.bc, align 4, !tbaa !349, !alias.scope !1903, !noalias !1902
  %i.bk = extractelement <4 x float> %i.bb, i64 1
  store float %i.bk, ptr %i.be, align 4, !tbaa !349, !alias.scope !1903, !noalias !1902
  %i.bl = extractelement <4 x float> %i.bb, i64 2
  store float %i.bl, ptr %i.bg, align 4, !tbaa !349, !alias.scope !1903, !noalias !1902
  %i.bm = extractelement <4 x float> %i.bb, i64 3
  store float %i.bm, ptr %i.bi, align 4, !tbaa !349, !alias.scope !1903, !noalias !1902
  %index.next241 = add nuw i64 %index238, 4       ; 2 uses
  %i.bn = icmp eq i64 %index.next241, %n.vec234
  br i1 %i.bn, label %.lr.ph68.i.i.preheader250, label %vector.body237, !llvm.loop !1876

.lr.ph68.i.i.preheader250:                        ; preds = %vector.body237, %vector.memcheck229, %.lr.ph68.i.i.preheader
  %.067.i.i.ph = phi i64 [ 0, %vector.memcheck229 ], [ 0, %.lr.ph68.i.i.preheader ], [ %n.vec234, %vector.body237 ] ; 4 uses
  %i.bo = sub i64 %3, %.067.i.i.ph
  %xtraiter274 = and i64 %i.bo, 3                 ; 2 uses
  %lcmp.mod275.not = icmp eq i64 %xtraiter274, 0
  br i1 %lcmp.mod275.not, label %.lr.ph68.i.i.prol.loopexit, label %.lr.ph68.i.i.prol

.lr.ph68.i.i.prol:                                ; preds = %.lr.ph68.i.i.preheader250, %.lr.ph68.i.i.prol
  %.067.i.i.prol = phi i64 [ %i.bu, %.lr.ph68.i.i.prol ], [ %.067.i.i.ph, %.lr.ph68.i.i.preheader250 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph68.i.i.prol ], [ 0, %.lr.ph68.i.i.preheader250 ]
  %i.bp = shl i64 %.067.i.i.prol, 1               ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !349
  %i.bs = fmul float %i.y, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bp
  store float %i.bs, ptr %i.bt, align 4, !tbaa !349
  %i.bu = add nuw i64 %.067.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter274
  br i1 %prol.iter.cmp.not, label %.lr.ph68.i.i.prol.loopexit, label %.lr.ph68.i.i.prol, !llvm.loop !1877

.lr.ph68.i.i.prol.loopexit:                       ; preds = %.lr.ph68.i.i.prol, %.lr.ph68.i.i.preheader250
  %.067.i.i.unr = phi i64 [ %.067.i.i.ph, %.lr.ph68.i.i.preheader250 ], [ %i.bu, %.lr.ph68.i.i.prol ]
  %i.bv = sub i64 %.067.i.i.ph, %3
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph68.i.i

.lr.ph68.i.i:                                     ; preds = %.lr.ph68.i.i.prol.loopexit, %.lr.ph68.i.i
  %.067.i.i = phi i64 [ %i.cu, %.lr.ph68.i.i ], [ %.067.i.i.unr, %.lr.ph68.i.i.prol.loopexit ] ; 5 uses
  %i.bx = shl i64 %.067.i.i, 1                    ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bx
  %i.bz = load float, ptr %i.by, align 4, !tbaa !349
  %i.ca = fmul float %i.y, %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bx
  store float %i.ca, ptr %i.cb, align 4, !tbaa !349
  %i.cc = shl i64 %.067.i.i, 1
  %i.cd = add i64 %i.cc, 2                        ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !349
  %i.cg = fmul float %i.y, %i.cf
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cd
  store float %i.cg, ptr %i.ch, align 4, !tbaa !349
  %i.ci = shl i64 %.067.i.i, 1
  %i.cj = add i64 %i.ci, 4                        ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !349
  %i.cm = fmul float %i.y, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cj
  store float %i.cm, ptr %i.cn, align 4, !tbaa !349
  %i.co = shl i64 %.067.i.i, 1
  %i.cp = add i64 %i.co, 6                        ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !349
  %i.cs = fmul float %i.y, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cp
  store float %i.cs, ptr %i.ct, align 4, !tbaa !349
  %i.cu = add nuw i64 %.067.i.i, 4                ; 2 uses
  %exitcond77.not.i.i.3 = icmp eq i64 %i.cu, %3
  br i1 %exitcond77.not.i.i.3, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph68.i.i, !llvm.loop !1878

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i.prol.loopexit, %.lr.ph66.i.i
  %.165.i.i = phi i64 [ %i.dn, %.lr.ph66.i.i ], [ %.165.i.i.unr, %.lr.ph66.i.i.prol.loopexit ] ; 3 uses
  %i.cv = shl i64 %.165.i.i, 1                    ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !349
  %i.cy = fmul float %i.y, %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cv
  store float %i.cy, ptr %i.cz, align 4, !tbaa !349
  %i.da = or disjoint i64 %i.cv, 1                ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !349
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.da
  store float %i.dc, ptr %i.dd, align 4, !tbaa !349
  %i.de = shl i64 %.165.i.i, 1                    ; 2 uses
  %i.df = add i64 %i.de, 2                        ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !349
  %i.di = fmul float %i.y, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.df
  store float %i.di, ptr %i.dj, align 4, !tbaa !349
  %4 = add i64 %i.de, 3                           ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !349
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %4
  store float %i.dl, ptr %i.dm, align 4, !tbaa !349
  %i.dn = add nuw i64 %.165.i.i, 2                ; 2 uses
  %exitcond76.not.i.i.1 = icmp eq i64 %i.dn, %3
  br i1 %exitcond76.not.i.i.1, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph66.i.i, !llvm.loop !1879

bb.j:                                             ; preds = %bb.h
  %i.do = fadd float %i.k, 1.000000e+00           ; 8 uses
  br i1 %i.x, label %.preheader58.i.i, label %.preheader60.i.i

.preheader60.i.i:                                 ; preds = %bb.j
  br i1 %.not71.i.i, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %.preheader60.i.i
  %min.iters.check154 = icmp ult i64 %3, 4
  br i1 %min.iters.check154, label %.lr.ph.i18.i.preheader256, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph.i18.i.preheader
  %i.dp = shl i64 %3, 3                           ; 2 uses
  %i.dq = getelementptr i8, ptr %1, i64 %i.dp
  %i.dr = getelementptr i8, ptr %2, i64 %i.dp
  %bound0156 = icmp ult ptr %1, %i.dr
  %bound1157 = icmp ult ptr %2, %i.dq
  %found.conflict158 = and i1 %bound0156, %bound1157
  br i1 %found.conflict158, label %.lr.ph.i18.i.preheader256, label %vector.ph159

vector.ph159:                                     ; preds = %vector.memcheck155
  %n.vec160 = and i64 %3, -2                      ; 3 uses
  %broadcast.splatinsert161 = insertelement <2 x float> poison, float %i.do, i64 0
  %broadcast.splat162 = shufflevector <2 x float> %broadcast.splatinsert161, <2 x float> poison, <2 x i32> zeroinitializer
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph159
  %index164 = phi i64 [ 0, %vector.ph159 ], [ %index.next169, %vector.body163 ] ; 2 uses
  %i.ds = shl i64 %index164, 1                    ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ds
  %wide.vec165 = load <4 x float>, ptr %i.dt, align 4, !tbaa !349, !alias.scope !1904 ; 2 uses
  %strided.vec166 = shufflevector <4 x float> %wide.vec165, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec167 = shufflevector <4 x float> %wide.vec165, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ds
  %i.dv = fmul <2 x float> %broadcast.splat162, %strided.vec167
  %interleaved.vec168 = shufflevector <2 x float> %strided.vec166, <2 x float> %i.dv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec168, ptr %i.du, align 4, !tbaa !349, !alias.scope !1905, !noalias !1904
  %index.next169 = add nuw i64 %index164, 2       ; 2 uses
  %i.dw = icmp eq i64 %index.next169, %n.vec160
  br i1 %i.dw, label %middle.block170, label %vector.body163, !llvm.loop !1883

middle.block170:                                  ; preds = %vector.body163
  %cmp.n171 = icmp eq i64 %3, %n.vec160
  br i1 %cmp.n171, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i18.i.preheader256

.lr.ph.i18.i.preheader256:                        ; preds = %vector.memcheck155, %.lr.ph.i18.i.preheader, %middle.block170
  %.362.i.i.ph = phi i64 [ 0, %vector.memcheck155 ], [ 0, %.lr.ph.i18.i.preheader ], [ %n.vec160, %middle.block170 ] ; 4 uses
  %.neg277 = or disjoint i64 %.362.i.i.ph, 1
  %xtraiter268 = and i64 %3, 1
  %lcmp.mod269.not = icmp eq i64 %xtraiter268, 0
  br i1 %lcmp.mod269.not, label %.lr.ph.i18.i.prol.loopexit, label %.lr.ph.i18.i.prol

.lr.ph.i18.i.prol:                                ; preds = %.lr.ph.i18.i.preheader256
  %i.dx = shl i64 %.362.i.i.ph, 1                 ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dx
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !349
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dx
  store float %i.dz, ptr %i.ea, align 4, !tbaa !349
  %i.eb = or disjoint i64 %i.dx, 1                ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !349
  %i.ee = fmul float %i.do, %i.ed
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eb
  store float %i.ee, ptr %i.ef, align 4, !tbaa !349
  %i.eg = or disjoint i64 %.362.i.i.ph, 1
  br label %.lr.ph.i18.i.prol.loopexit

.lr.ph.i18.i.prol.loopexit:                       ; preds = %.lr.ph.i18.i.prol, %.lr.ph.i18.i.preheader256
  %.362.i.i.unr = phi i64 [ %.362.i.i.ph, %.lr.ph.i18.i.preheader256 ], [ %i.eg, %.lr.ph.i18.i.prol ]
  %i.eh = icmp eq i64 %3, %.neg277
  br i1 %i.eh, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i18.i

.preheader58.i.i:                                 ; preds = %bb.j
  br i1 %.not71.i.i, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph64.i.i.preheader

.lr.ph64.i.i.preheader:                           ; preds = %.preheader58.i.i
  %min.iters.check181 = icmp ult i64 %3, 17
  br i1 %min.iters.check181, label %.lr.ph64.i.i.preheader254, label %vector.memcheck182

vector.memcheck182:                               ; preds = %.lr.ph64.i.i.preheader
  %i.ei = getelementptr i8, ptr %1, i64 4
  %i.ej = shl i64 %3, 3                           ; 2 uses
  %i.ek = getelementptr i8, ptr %1, i64 %i.ej
  %i.el = getelementptr i8, ptr %2, i64 4
  %i.em = getelementptr i8, ptr %2, i64 %i.ej
  %bound0183 = icmp ult ptr %i.ei, %i.em
  %bound1184 = icmp ult ptr %i.el, %i.ek
  %found.conflict185 = and i1 %bound0183, %bound1184
  br i1 %found.conflict185, label %.lr.ph64.i.i.preheader254, label %vector.ph186

vector.ph186:                                     ; preds = %vector.memcheck182
  %i.en = and i64 %3, 3                           ; 2 uses
  %i.eo = icmp eq i64 %i.en, 0
  %i.ep = select i1 %i.eo, i64 4, i64 %i.en
  %n.vec187 = sub i64 %3, %i.ep                   ; 2 uses
  %broadcast.splatinsert188 = insertelement <4 x float> poison, float %i.do, i64 0
  %broadcast.splat189 = shufflevector <4 x float> %broadcast.splatinsert188, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph186
  %index191 = phi i64 [ 0, %vector.ph186 ], [ %index.next194, %vector.body190 ] ; 5 uses
  %i.eq = shl i64 %index191, 1
  %i.er = or disjoint i64 %i.eq, 1                ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.er
  %wide.vec192 = load <8 x float>, ptr %i.es, align 4, !tbaa !349, !alias.scope !1906
  %strided.vec193 = shufflevector <8 x float> %wide.vec192, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.et = fmul <4 x float> %broadcast.splat189, %strided.vec193 ; 4 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.er
  %.idx = shl i64 %index191, 3
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %.idx244 = shl i64 %index191, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 %.idx244
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %.idx245 = shl i64 %index191, 3
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 %.idx245
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 28
  %i.fb = extractelement <4 x float> %i.et, i64 0
  store float %i.fb, ptr %i.eu, align 4, !tbaa !349, !alias.scope !1907, !noalias !1906
  %i.fc = extractelement <4 x float> %i.et, i64 1
  store float %i.fc, ptr %i.ew, align 4, !tbaa !349, !alias.scope !1907, !noalias !1906
  %i.fd = extractelement <4 x float> %i.et, i64 2
  store float %i.fd, ptr %i.ey, align 4, !tbaa !349, !alias.scope !1907, !noalias !1906
  %i.fe = extractelement <4 x float> %i.et, i64 3
  store float %i.fe, ptr %i.fa, align 4, !tbaa !349, !alias.scope !1907, !noalias !1906
  %index.next194 = add nuw i64 %index191, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next194, %n.vec187
  br i1 %i.ff, label %.lr.ph64.i.i.preheader254, label %vector.body190, !llvm.loop !1887

.lr.ph64.i.i.preheader254:                        ; preds = %vector.body190, %vector.memcheck182, %.lr.ph64.i.i.preheader
  %.263.i.i.ph = phi i64 [ 0, %vector.memcheck182 ], [ 0, %.lr.ph64.i.i.preheader ], [ %n.vec187, %vector.body190 ] ; 5 uses
  %i.fg = sub i64 %3, %.263.i.i.ph
  %.neg278 = add i64 %.263.i.i.ph, 1
  %xtraiter270 = and i64 %i.fg, 1
  %lcmp.mod271.not = icmp eq i64 %xtraiter270, 0
  br i1 %lcmp.mod271.not, label %.lr.ph64.i.i.prol.loopexit, label %.lr.ph64.i.i.prol

.lr.ph64.i.i.prol:                                ; preds = %.lr.ph64.i.i.preheader254
  %i.fh = shl i64 %.263.i.i.ph, 1
  %i.fi = or disjoint i64 %i.fh, 1                ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !349
  %i.fl = fmul float %i.do, %i.fk
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fi
  store float %i.fl, ptr %i.fm, align 4, !tbaa !349
  %i.fn = add nuw i64 %.263.i.i.ph, 1
  br label %.lr.ph64.i.i.prol.loopexit

.lr.ph64.i.i.prol.loopexit:                       ; preds = %.lr.ph64.i.i.prol, %.lr.ph64.i.i.preheader254
  %.263.i.i.unr = phi i64 [ %.263.i.i.ph, %.lr.ph64.i.i.preheader254 ], [ %i.fn, %.lr.ph64.i.i.prol ]
  %i.fo = icmp eq i64 %3, %.neg278
  br i1 %i.fo, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph64.i.i

.lr.ph64.i.i:                                     ; preds = %.lr.ph64.i.i.prol.loopexit, %.lr.ph64.i.i
  %.263.i.i = phi i64 [ %i.gb, %.lr.ph64.i.i ], [ %.263.i.i.unr, %.lr.ph64.i.i.prol.loopexit ] ; 3 uses
  %i.fp = shl i64 %.263.i.i, 1
  %i.fq = or disjoint i64 %i.fp, 1                ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !349
  %i.ft = fmul float %i.do, %i.fs
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fq
  store float %i.ft, ptr %i.fu, align 4, !tbaa !349
  %i.fv = shl i64 %.263.i.i, 1
  %i.fw = add i64 %i.fv, 3                        ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fw
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !349
  %i.fz = fmul float %i.do, %i.fy
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fw
  store float %i.fz, ptr %i.ga, align 4, !tbaa !349
  %i.gb = add nuw i64 %.263.i.i, 2                ; 2 uses
  %exitcond75.not.i.i.1 = icmp eq i64 %i.gb, %3
  br i1 %exitcond75.not.i.i.1, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph64.i.i, !llvm.loop !1888

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.prol.loopexit, %.lr.ph.i18.i
  %.362.i.i = phi i64 [ %i.gu, %.lr.ph.i18.i ], [ %.362.i.i.unr, %.lr.ph.i18.i.prol.loopexit ] ; 3 uses
  %i.gc = shl i64 %.362.i.i, 1                    ; 3 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gc
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !349
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gc
  store float %i.ge, ptr %i.gf, align 4, !tbaa !349
  %i.gg = or disjoint i64 %i.gc, 1                ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gg
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !349
  %i.gj = fmul float %i.do, %i.gi
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gg
  store float %i.gj, ptr %i.gk, align 4, !tbaa !349
  %i.gl = shl i64 %.362.i.i, 1                    ; 2 uses
  %i.gm = add i64 %i.gl, 2                        ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gm
  %i.go = load float, ptr %i.gn, align 4, !tbaa !349
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gm
  store float %i.go, ptr %i.gp, align 4, !tbaa !349
  %5 = add i64 %i.gl, 3                           ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %5
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !349
  %i.gs = fmul float %i.do, %i.gr
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %5
  store float %i.gs, ptr %i.gt, align 4, !tbaa !349
  %i.gu = add nuw i64 %.362.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.gu, %3
  br i1 %exitcond.not.i.i.1, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i18.i, !llvm.loop !1889

bb.k:                                             ; preds = %bb.g
  %i.gv = icmp eq ptr %1, %2
  br i1 %i.gv, label %ma_stereo_balance_pcm_frames.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gw = zext i32 %i.i to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !118
  %i.gz = shl i32 %i.gy, 1
  %i.ha = zext i32 %i.gz to i64
  %i.hb = mul i64 %3, %i.ha                       ; 2 uses
  %.not.i7.i19.i = icmp eq i64 %i.hb, 0
  br i1 %.not.i7.i19.i, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %bb.l, %.lr.ph.i20.i
  %.0.i10.i21.i = phi ptr [ %i.hd, %.lr.ph.i20.i ], [ %1, %bb.l ] ; 2 uses
  %.011.i9.i22.i = phi i64 [ %i.hc, %.lr.ph.i20.i ], [ %i.hb, %bb.l ] ; 2 uses
  %.012.i8.i23.i = phi ptr [ %i.he, %.lr.ph.i20.i ], [ %2, %bb.l ] ; 2 uses
  %spec.store.select.i.i24.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i22.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i21.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i23.i, i64 %spec.store.select.i.i24.i, i1 false)
  %i.hc = sub nuw i64 %.011.i9.i22.i, %spec.store.select.i.i24.i ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.i10.i21.i, i64 %spec.store.select.i.i24.i
  %i.he = getelementptr inbounds nuw i8, ptr %.012.i8.i23.i, i64 %spec.store.select.i.i24.i
  %.not.i.i25.i = icmp eq i64 %i.hc, 0
  br i1 %.not.i.i25.i, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i20.i, !llvm.loop !12

bb.m:                                             ; preds = %bb.c
  br i1 %i.l, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.hf = icmp eq ptr %1, %2
  br i1 %i.hf, label %ma_stereo_balance_pcm_frames.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hg = zext i32 %i.i to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !118
  %i.hj = shl i32 %i.hi, 1
  %i.hk = zext i32 %i.hj to i64
  %i.hl = mul i64 %3, %i.hk                       ; 2 uses
  %.not.i7.i.i43 = icmp eq i64 %i.hl, 0
  br i1 %.not.i7.i.i43, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i.i44

.lr.ph.i.i44:                                     ; preds = %bb.o, %.lr.ph.i.i44
  %.0.i10.i.i45 = phi ptr [ %i.hn, %.lr.ph.i.i44 ], [ %1, %bb.o ] ; 2 uses
  %.011.i9.i.i46 = phi i64 [ %i.hm, %.lr.ph.i.i44 ], [ %i.hl, %bb.o ] ; 2 uses
  %.012.i8.i.i47 = phi ptr [ %i.ho, %.lr.ph.i.i44 ], [ %2, %bb.o ] ; 2 uses
  %spec.store.select.i.i.i48 = tail call i64 @llvm.umin.i64(i64 %.011.i9.i.i46, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i.i45, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i.i47, i64 %spec.store.select.i.i.i48, i1 false)
  %i.hm = sub nuw i64 %.011.i9.i.i46, %spec.store.select.i.i.i48 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i10.i.i45, i64 %spec.store.select.i.i.i48
  %i.ho = getelementptr inbounds nuw i8, ptr %.012.i8.i.i47, i64 %spec.store.select.i.i.i48
  %.not.i.i.i49 = icmp eq i64 %i.hm, 0
  br i1 %.not.i.i.i49, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i.i44, !llvm.loop !12

bb.p:                                             ; preds = %bb.m
  %cond.i33 = icmp eq i32 %i.i, 5
  br i1 %cond.i33, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.hp = fcmp ogt float %i.k, 0.000000e+00
  br i1 %i.hp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hq = fsub nnan float 1.000000e+00, %i.k      ; 4 uses
  %.not44.i.i = icmp eq i64 %3, 0
  br i1 %.not44.i.i, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph43.i.i.preheader

.lr.ph43.i.i.preheader:                           ; preds = %bb.r
  %min.iters.check127 = icmp ult i64 %3, 4
  br i1 %min.iters.check127, label %.lr.ph43.i.i.preheader260, label %vector.memcheck128

vector.memcheck128:                               ; preds = %.lr.ph43.i.i.preheader
  %i.hr = shl i64 %3, 3                           ; 2 uses
  %i.hs = getelementptr i8, ptr %1, i64 %i.hr
  %i.ht = getelementptr i8, ptr %2, i64 %i.hr
  %bound0129 = icmp ult ptr %1, %i.ht
  %bound1130 = icmp ult ptr %2, %i.hs
  %found.conflict131 = and i1 %bound0129, %bound1130
  br i1 %found.conflict131, label %.lr.ph43.i.i.preheader260, label %vector.ph132

vector.ph132:                                     ; preds = %vector.memcheck128
  %n.vec133 = and i64 %3, -4                      ; 3 uses
  %broadcast.splatinsert134 = insertelement <4 x float> poison, float %i.hq, i64 0
  %broadcast.splat135 = shufflevector <4 x float> %broadcast.splatinsert134, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert136 = insertelement <4 x float> poison, float %i.k, i64 0
  %broadcast.splat137 = shufflevector <4 x float> %broadcast.splatinsert136, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph132
  %index139 = phi i64 [ 0, %vector.ph132 ], [ %index.next144, %vector.body138 ] ; 2 uses
  %i.hu = shl i64 %index139, 1                    ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hu
  %wide.vec140 = load <8 x float>, ptr %i.hv, align 4, !tbaa !349, !alias.scope !1908 ; 2 uses
  %strided.vec141 = shufflevector <8 x float> %wide.vec140, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec142 = shufflevector <8 x float> %wide.vec140, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hw = fmul <4 x float> %broadcast.splat135, %strided.vec141
  %i.hx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec141, <4 x float> %broadcast.splat137, <4 x float> %strided.vec142)
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hu
  %interleaved.vec143 = shufflevector <4 x float> %i.hw, <4 x float> %i.hx, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec143, ptr %i.hy, align 4, !tbaa !349, !alias.scope !1909, !noalias !1908
  %index.next144 = add nuw i64 %index139, 4       ; 2 uses
  %i.hz = icmp eq i64 %index.next144, %n.vec133
  br i1 %i.hz, label %middle.block145, label %vector.body138, !llvm.loop !1893

middle.block145:                                  ; preds = %vector.body138
  %cmp.n146 = icmp eq i64 %3, %n.vec133
  br i1 %cmp.n146, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph43.i.i.preheader260

.lr.ph43.i.i.preheader260:                        ; preds = %vector.memcheck128, %.lr.ph43.i.i.preheader, %middle.block145
  %.042.i.i.ph = phi i64 [ 0, %vector.memcheck128 ], [ 0, %.lr.ph43.i.i.preheader ], [ %n.vec133, %middle.block145 ] ; 4 uses
  %.neg276 = or disjoint i64 %.042.i.i.ph, 1
  %xtraiter266 = and i64 %3, 1
  %lcmp.mod267.not = icmp eq i64 %xtraiter266, 0
  br i1 %lcmp.mod267.not, label %.lr.ph43.i.i.prol.loopexit, label %.lr.ph43.i.i.prol

.lr.ph43.i.i.prol:                                ; preds = %.lr.ph43.i.i.preheader260
  %i.ia = shl i64 %.042.i.i.ph, 1                 ; 3 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ia
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !349 ; 2 uses
  %i.id = fmul float %i.hq, %i.ic
  %i.ie = or disjoint i64 %i.ia, 1                ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ie
  %i.ig = load float, ptr %i.if, align 4, !tbaa !349
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.k, float %i.ig)
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ia
  store float %i.id, ptr %i.ii, align 4, !tbaa !349
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ie
  store float %i.ih, ptr %i.ij, align 4, !tbaa !349
  %i.ik = or disjoint i64 %.042.i.i.ph, 1
  br label %.lr.ph43.i.i.prol.loopexit

.lr.ph43.i.i.prol.loopexit:                       ; preds = %.lr.ph43.i.i.prol, %.lr.ph43.i.i.preheader260
  %.042.i.i.unr = phi i64 [ %.042.i.i.ph, %.lr.ph43.i.i.preheader260 ], [ %i.ik, %.lr.ph43.i.i.prol ]
  %i.il = icmp eq i64 %3, %.neg276
  br i1 %i.il, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph43.i.i

.lr.ph43.i.i:                                     ; preds = %.lr.ph43.i.i.prol.loopexit, %.lr.ph43.i.i
  %.042.i.i = phi i64 [ %i.jg, %.lr.ph43.i.i ], [ %.042.i.i.unr, %.lr.ph43.i.i.prol.loopexit ] ; 3 uses
  %i.im = shl i64 %.042.i.i, 1                    ; 3 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.im
  %i.io = load float, ptr %i.in, align 4, !tbaa !349 ; 2 uses
  %i.ip = fmul float %i.hq, %i.io
  %i.iq = or disjoint i64 %i.im, 1                ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.iq
  %i.is = load float, ptr %i.ir, align 4, !tbaa !349
  %i.it = tail call float @llvm.fmuladd.f32(float %i.io, float %i.k, float %i.is)
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.im
  store float %i.ip, ptr %i.iu, align 4, !tbaa !349
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.iq
  store float %i.it, ptr %i.iv, align 4, !tbaa !349
  %i.iw = shl i64 %.042.i.i, 1                    ; 2 uses
  %i.ix = add i64 %i.iw, 2                        ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ix
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !349 ; 2 uses
  %i.ja = fmul float %i.hq, %i.iz
  %6 = add i64 %i.iw, 3                           ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %6
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !349
  %i.jd = tail call float @llvm.fmuladd.f32(float %i.iz, float %i.k, float %i.jc)
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ix
  store float %i.ja, ptr %i.je, align 4, !tbaa !349
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %6
  store float %i.jd, ptr %i.jf, align 4, !tbaa !349
  %i.jg = add nuw i64 %.042.i.i, 2                ; 2 uses
  %exitcond46.not.i.i.1 = icmp eq i64 %i.jg, %3
  br i1 %exitcond46.not.i.i.1, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph43.i.i, !llvm.loop !1894

bb.s:                                             ; preds = %bb.q
  %i.jh = fsub float 0.000000e+00, %i.k           ; 4 uses
  %i.ji = fadd float %i.k, 1.000000e+00           ; 4 uses
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i18.i41.preheader

.lr.ph.i18.i41.preheader:                         ; preds = %bb.s
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.i18.i41.preheader262, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i18.i41.preheader
  %i.jj = shl i64 %3, 3                           ; 2 uses
  %i.jk = getelementptr i8, ptr %1, i64 %i.jj
  %i.jl = getelementptr i8, ptr %2, i64 %i.jj
  %bound0 = icmp ult ptr %1, %i.jl
  %bound1 = icmp ult ptr %2, %i.jk
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i18.i41.preheader262, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.jh, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert118 = insertelement <4 x float> poison, float %i.ji, i64 0
  %broadcast.splat119 = shufflevector <4 x float> %broadcast.splatinsert118, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jm = shl i64 %index, 1                       ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jm
  %wide.vec = load <8 x float>, ptr %i.jn, align 4, !tbaa !349, !alias.scope !1910 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec120 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.jo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec120, <4 x float> %broadcast.splat, <4 x float> %strided.vec)
  %i.jp = fmul <4 x float> %broadcast.splat119, %strided.vec120
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jm
  %interleaved.vec = shufflevector <4 x float> %i.jo, <4 x float> %i.jp, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.jq, align 4, !tbaa !349, !alias.scope !1911, !noalias !1910
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jr = icmp eq i64 %index.next, %n.vec
  br i1 %i.jr, label %middle.block, label %vector.body, !llvm.loop !1898

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i18.i41.preheader262

.lr.ph.i18.i41.preheader262:                      ; preds = %vector.memcheck, %.lr.ph.i18.i41.preheader, %middle.block
  %.141.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i18.i41.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.141.i.i.ph, 1
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i18.i41.prol.loopexit, label %.lr.ph.i18.i41.prol

.lr.ph.i18.i41.prol:                              ; preds = %.lr.ph.i18.i41.preheader262
  %i.js = shl i64 %.141.i.i.ph, 1                 ; 3 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.js
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !349
  %i.jv = or disjoint i64 %i.js, 1                ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jv
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !349 ; 2 uses
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.jx, float %i.jh, float %i.ju)
  %i.jz = fmul float %i.ji, %i.jx
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.js
  store float %i.jy, ptr %i.ka, align 4, !tbaa !349
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jv
  store float %i.jz, ptr %i.kb, align 4, !tbaa !349
  %i.kc = or disjoint i64 %.141.i.i.ph, 1
  br label %.lr.ph.i18.i41.prol.loopexit

.lr.ph.i18.i41.prol.loopexit:                     ; preds = %.lr.ph.i18.i41.prol, %.lr.ph.i18.i41.preheader262
  %.141.i.i.unr = phi i64 [ %.141.i.i.ph, %.lr.ph.i18.i41.preheader262 ], [ %i.kc, %.lr.ph.i18.i41.prol ]
  %i.kd = icmp eq i64 %3, %.neg
  br i1 %i.kd, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i18.i41

.lr.ph.i18.i41:                                   ; preds = %.lr.ph.i18.i41.prol.loopexit, %.lr.ph.i18.i41
  %.141.i.i = phi i64 [ %i.ky, %.lr.ph.i18.i41 ], [ %.141.i.i.unr, %.lr.ph.i18.i41.prol.loopexit ] ; 3 uses
  %i.ke = shl i64 %.141.i.i, 1                    ; 3 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ke
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !349
  %i.kh = or disjoint i64 %i.ke, 1                ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kh
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !349 ; 2 uses
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.kj, float %i.jh, float %i.kg)
  %i.kl = fmul float %i.ji, %i.kj
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ke
  store float %i.kk, ptr %i.km, align 4, !tbaa !349
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kh
  store float %i.kl, ptr %i.kn, align 4, !tbaa !349
  %i.ko = shl i64 %.141.i.i, 1                    ; 2 uses
  %i.kp = add i64 %i.ko, 2                        ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kp
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !349
  %7 = add i64 %i.ko, 3                           ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %7
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !349 ; 2 uses
  %i.ku = tail call float @llvm.fmuladd.f32(float %i.kt, float %i.jh, float %i.kr)
  %i.kv = fmul float %i.ji, %i.kt
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.kp
  store float %i.ku, ptr %i.kw, align 4, !tbaa !349
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %7
  store float %i.kv, ptr %i.kx, align 4, !tbaa !349
  %i.ky = add nuw i64 %.141.i.i, 2                ; 2 uses
  %exitcond.not.i.i42.1 = icmp eq i64 %i.ky, %3
  br i1 %exitcond.not.i.i42.1, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i18.i41, !llvm.loop !1899

bb.t:                                             ; preds = %bb.p
  %i.kz = icmp eq ptr %1, %2
  br i1 %i.kz, label %ma_stereo_balance_pcm_frames.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.la = zext i32 %i.i to i64
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !118
  %i.ld = shl i32 %i.lc, 1
  %i.le = zext i32 %i.ld to i64
  %i.lf = mul i64 %3, %i.le                       ; 2 uses
  %.not.i7.i19.i34 = icmp eq i64 %i.lf, 0
  br i1 %.not.i7.i19.i34, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i20.i35

.lr.ph.i20.i35:                                   ; preds = %bb.u, %.lr.ph.i20.i35
  %.0.i10.i21.i36 = phi ptr [ %i.lh, %.lr.ph.i20.i35 ], [ %1, %bb.u ] ; 2 uses
  %.011.i9.i22.i37 = phi i64 [ %i.lg, %.lr.ph.i20.i35 ], [ %i.lf, %bb.u ] ; 2 uses
  %.012.i8.i23.i38 = phi ptr [ %i.li, %.lr.ph.i20.i35 ], [ %2, %bb.u ] ; 2 uses
  %spec.store.select.i.i24.i39 = tail call i64 @llvm.umin.i64(i64 %.011.i9.i22.i37, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i21.i36, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i23.i38, i64 %spec.store.select.i.i24.i39, i1 false)
  %i.lg = sub nuw i64 %.011.i9.i22.i37, %spec.store.select.i.i24.i39 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.0.i10.i21.i36, i64 %spec.store.select.i.i24.i39
  %i.li = getelementptr inbounds nuw i8, ptr %.012.i8.i23.i38, i64 %spec.store.select.i.i24.i39
  %.not.i.i25.i40 = icmp eq i64 %i.lg, 0
  br i1 %.not.i.i25.i40, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i20.i35, !llvm.loop !12

bb.v:                                             ; preds = %bb.b
  %i.lj = icmp eq ptr %1, %2
  br i1 %i.lj, label %ma_stereo_balance_pcm_frames.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.lk = load i32, ptr %0, align 4, !tbaa !466
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !118
  %i.lo = zext i32 %i.ln to i64
  %i.lp = mul i64 %3, %i.lo                       ; 2 uses
  %.not.i7.i = icmp eq i64 %i.lp, 0
  br i1 %.not.i7.i, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.i
  %.0.i10.i = phi ptr [ %i.lr, %.lr.ph.i ], [ %1, %bb.w ] ; 2 uses
  %.011.i9.i = phi i64 [ %i.lq, %.lr.ph.i ], [ %i.lp, %bb.w ] ; 2 uses
  %.012.i8.i = phi ptr [ %i.ls, %.lr.ph.i ], [ %2, %bb.w ] ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.011.i9.i, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i, i64 %spec.store.select.i.i, i1 false)
  %i.lq = sub nuw i64 %.011.i9.i, %spec.store.select.i.i ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 %spec.store.select.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %.012.i8.i, i64 %spec.store.select.i.i
  %.not.i.i50 = icmp eq i64 %i.lq, 0
  br i1 %.not.i.i50, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i, !llvm.loop !12

bb.x:                                             ; preds = %bb.b
  %i.lt = icmp eq ptr %1, %2
  br i1 %i.lt, label %ma_stereo_balance_pcm_frames.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.lu = load i32, ptr %0, align 4, !tbaa !466
  %i.lv = zext i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr @__const.ma_get_bytes_per_sample.sizes, i64 %i.lv
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !118
  %i.ly = mul i32 %i.lx, %i.e
  %i.lz = zext i32 %i.ly to i64
  %i.ma = mul i64 %3, %i.lz                       ; 2 uses
  %.not.i7.i51 = icmp eq i64 %i.ma, 0
  br i1 %.not.i7.i51, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %bb.y, %.lr.ph.i52
  %.0.i10.i53 = phi ptr [ %i.mc, %.lr.ph.i52 ], [ %1, %bb.y ] ; 2 uses
  %.011.i9.i54 = phi i64 [ %i.mb, %.lr.ph.i52 ], [ %i.ma, %bb.y ] ; 2 uses
  %.012.i8.i55 = phi ptr [ %i.md, %.lr.ph.i52 ], [ %2, %bb.y ] ; 2 uses
  %spec.store.select.i.i56 = tail call i64 @llvm.umin.i64(i64 %.011.i9.i54, i64 4294967295) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i10.i53, ptr noundef nonnull align 1 dereferenceable(1) %.012.i8.i55, i64 %spec.store.select.i.i56, i1 false)
  %i.mb = sub nuw i64 %.011.i9.i54, %spec.store.select.i.i56 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.0.i10.i53, i64 %spec.store.select.i.i56
  %i.md = getelementptr inbounds nuw i8, ptr %.012.i8.i55, i64 %spec.store.select.i.i56
  %.not.i.i57 = icmp eq i64 %i.mb, 0
  br i1 %.not.i.i57, label %ma_stereo_balance_pcm_frames.exit, label %.lr.ph.i52, !llvm.loop !12

ma_stereo_balance_pcm_frames.exit:                ; preds = %.lr.ph.i, %.lr.ph.i20.i35, %.lr.ph.i18.i41.prol.loopexit, %.lr.ph.i18.i41, %.lr.ph43.i.i.prol.loopexit, %.lr.ph43.i.i, %.lr.ph.i.i44, %.lr.ph.i20.i, %.lr.ph.i18.i.prol.loopexit, %.lr.ph.i18.i, %.lr.ph64.i.i.prol.loopexit, %.lr.ph64.i.i, %.lr.ph66.i.i.prol.loopexit, %.lr.ph66.i.i, %.lr.ph68.i.i.prol.loopexit, %.lr.ph68.i.i, %.lr.ph.i.i, %.lr.ph.i52, %middle.block, %middle.block145, %middle.block170, %middle.block219, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.o, %bb.n, %bb.l, %bb.k, %.preheader58.i.i, %.preheader60.i.i, %.preheader.i.i, %.preheader56.i.i, %bb.f, %bb.e, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %.lr.ph.i52 ], [ 0, %middle.block219 ], [ 0, %middle.block ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %.lr.ph68.i.i.prol.loopexit ], [ 0, %.preheader56.i.i ], [ 0, %.preheader.i.i ], [ 0, %middle.block170 ], [ 0, %.lr.ph64.i.i.prol.loopexit ], [ 0, %.preheader60.i.i ], [ 0, %.preheader58.i.i ], [ 0, %.lr.ph.i18.i.prol.loopexit ], [ 0, %middle.block145 ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %.lr.ph43.i.i.prol.loopexit ], [ 0, %bb.r ], [ 0, %.lr.ph.i18.i41.prol.loopexit ], [ 0, %bb.s ], [ 0, %.lr.ph.i20.i35 ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.v ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph66.i.i.prol.loopexit ], [ 0, %.lr.ph.i20.i ], [ 0, %.lr.ph.i.i44 ], [ 0, %.lr.ph68.i.i ], [ 0, %.lr.ph66.i.i ], [ 0, %.lr.ph64.i.i ], [ 0, %.lr.ph.i18.i ], [ 0, %.lr.ph43.i.i ], [ 0, %.lr.ph.i18.i41 ], [ 0, %.lr.ph.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_panner_set_mode(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.b, align 4, !tbaa !463
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ma_panner_get_mode(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !463
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ma_panner_set_pan(ptr nofree noundef writeonly captures(address_is_null) %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt float %1, 1.000000e+00
  %i.c = select i1 %i.b, float %1, float 1.000000e+00 ; 2 uses
  %i.d = fcmp olt float %i.c, -1.000000e+00
  %i.e = select i1 %i.d, float -1.000000e+00, float %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.e, ptr %i.f, align 4, !tbaa !464
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define float @ma_panner_get_pan(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load float, ptr %i.b, align 4, !tbaa !464
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi float [ %i.c, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { i64, i32 } @ma_fader_config_init(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %.sroa.0.sroa.3.0.insert.ext = zext i32 %1 to i64
  %.sroa.0.sroa.3.0.insert.shift = shl nuw i64 %.sroa.0.sroa.3.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = zext i32 %0 to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %2, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -2, 1) i32 @ma_fader_init(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.d, label %ma_zero_memory_default.exit

ma_zero_memory_default.exit:                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %ma_zero_memory_default.exit
  %i.c = load i32, ptr %0, align 4, !tbaa !264
  %.not = icmp eq i32 %i.c, 5
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !1912
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  store <2 x float> splat (float 1.000000e+00), ptr %i.d, align 4, !tbaa !349
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %ma_zero_memory_default.exit, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -2, %ma_zero_memory_default.exit ], [ -2, %bb.b ]
end_hunk_0
