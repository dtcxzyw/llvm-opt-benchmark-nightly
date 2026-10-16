Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rawdenoise?download=true
inline.NumInlined: 72
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 30
begin_hunk_0_@process:bb.a
  %i.dm = lshr i32 %i.dk, 1
  %i.dn = zext nneg i32 %i.df to i64
  %wide.trip.count97.i = zext nneg i32 %i.dm to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.dk, 16
  %n.vec = and i64 %wide.trip.count97.i, 1073741816 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count97.i
  br label %.lr.ph78.i

iter.check:                                       ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv91.i = phi i64 [ %i.ap, %.lr.ph.preheader.i ], [ %indvars.iv.next92.i, %._crit_edge.i ] ; 3 uses
  %i.do = lshr i64 %indvars.iv91.i, 1
  %i.dp = mul nsw i64 %i.do, %i.ct
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.dp ; 3 uses
  %i.dr = mul nsw i64 %indvars.iv91.i, %i.cu
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.dr ; 6 uses
  br i1 %min.iters.check64, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check65, label %vec.epilog.ph, label %vector.body68

vector.body68:                                    ; preds = %vector.main.loop.iter.check, %vector.body68
  %index69 = phi i64 [ %index.next76, %vector.body68 ], [ 0, %vector.main.loop.iter.check ] ; 6 uses
  %i.ds = shl nuw nsw i64 %index69, 3
  %i.dt = shl i64 %index69, 3
  %i.du = shl i64 %index69, 3
  %i.dv = shl i64 %index69, 3
  %i.dw = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.ds
  %i.dx = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.dt
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.du
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 128
  %i.eb = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.dv
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 192
  %wide.vec = load <16 x float>, ptr %i.dw, align 4, !tbaa !12, !alias.scope !164
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %wide.vec70 = load <16 x float>, ptr %i.dy, align 4, !tbaa !12, !alias.scope !164
  %strided.vec71 = shufflevector <16 x float> %wide.vec70, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %wide.vec72 = load <16 x float>, ptr %i.ea, align 4, !tbaa !12, !alias.scope !164
  %strided.vec73 = shufflevector <16 x float> %wide.vec72, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %wide.vec74 = load <16 x float>, ptr %i.ec, align 4, !tbaa !12, !alias.scope !164
  %strided.vec75 = shufflevector <16 x float> %wide.vec74, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %i.ed = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec, zeroinitializer
  %i.ee = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec71, zeroinitializer
  %i.ef = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec73, zeroinitializer
  %i.eg = fcmp reassoc nsz arcp contract afn olt <8 x float> %strided.vec75, zeroinitializer
  %i.eh = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %strided.vec)
  %i.ei = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %strided.vec71)
  %i.ej = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %strided.vec73)
  %i.ek = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %strided.vec75)
  %i.el = select <8 x i1> %i.ed, <8 x float> zeroinitializer, <8 x float> %i.eh
  %i.em = select <8 x i1> %i.ee, <8 x float> zeroinitializer, <8 x float> %i.ei
  %i.en = select <8 x i1> %i.ef, <8 x float> zeroinitializer, <8 x float> %i.ej
  %i.eo = select <8 x i1> %i.eg, <8 x float> zeroinitializer, <8 x float> %i.ek
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %index69 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 96
  store <8 x float> %i.el, ptr %i.ep, align 4, !tbaa !12, !noalias !166
  store <8 x float> %i.em, ptr %i.eq, align 4, !tbaa !12, !noalias !166
  store <8 x float> %i.en, ptr %i.er, align 4, !tbaa !12, !noalias !166
  store <8 x float> %i.eo, ptr %i.es, align 4, !tbaa !12, !noalias !166
  %index.next76 = add nuw i64 %index69, 32        ; 2 uses
  %i.et = icmp eq i64 %index.next76, %n.vec67
  br i1 %i.et, label %vec.epilog.iter.check, label %vector.body68, !llvm.loop !146

vec.epilog.iter.check:                            ; preds = %vector.body68
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !167

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.vector.body, %iter.check, %vec.epilog.iter.check
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec67, %vec.epilog.iter.check ], [ %n.vec78, %vec.epilog.vector.body ]
  br label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec67, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index79 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next82, %vec.epilog.vector.body ] ; 3 uses
  %i.eu = shl nuw nsw i64 %index79, 3
  %i.ev = getelementptr inbounds nuw i8, ptr %gep.i, i64 %i.eu
  %wide.vec80 = load <8 x float>, ptr %i.ev, align 4, !tbaa !12, !alias.scope !164
  %strided.vec81 = shufflevector <8 x float> %wide.vec80, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.ew = fcmp reassoc nsz arcp contract afn olt <4 x float> %strided.vec81, zeroinitializer
  %i.ex = call reassoc nsz arcp contract afn <4 x float> @llvm.sqrt.v4f32(<4 x float> %strided.vec81)
  %i.ey = select <4 x i1> %i.ew, <4 x float> zeroinitializer, <4 x float> %i.ex
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %index79
  store <4 x float> %i.ey, ptr %i.ez, align 4, !tbaa !12, !noalias !166
  %index.next82 = add nuw i64 %index79, 4         ; 2 uses
  %i.fa = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.fa, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.vector.body, !llvm.loop !147

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph
  %indvars.iv.next92.i = add nuw nsw i64 %indvars.iv91.i, 2 ; 2 uses
  %i.fb = icmp samesign ult i64 %indvars.iv.next92.i, %i.cy
  br i1 %i.fb, label %iter.check, label %._crit_edge75.split.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.fc = getelementptr inbounds nuw i8, ptr %gep.i, i64 %.idx.i
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !12, !alias.scope !164 ; 2 uses
  %i.fe = fcmp reassoc nsz arcp contract afn olt float %i.fd, 0.000000e+00
  %i.ff = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.fd)
  %spec.select.i = select i1 %i.fe, float 0.000000e+00, float %i.ff
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i
  store float %spec.select.i, ptr %i.fg, align 4, !tbaa !12, !noalias !166
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !148

._crit_edge85.split.i:                            ; preds = %._crit_edge79.i, %.lr.ph84.i, %._crit_edge75.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !166
  %i.fh = add nuw nsw i32 %.06986.i, 1            ; 2 uses
  %exitcond103.not.i = icmp eq i32 %i.fh, 4
  br i1 %exitcond103.not.i, label %bb.e, label %bb.f

.lr.ph78.i:                                       ; preds = %._crit_edge79.i, %.lr.ph78.preheader.i
  %indvars.iv99.i = phi i64 [ %i.ap, %.lr.ph78.preheader.i ], [ %indvars.iv.next100.i, %._crit_edge79.i ] ; 3 uses
  %i.fi = lshr i64 %indvars.iv99.i, 1
  %i.fj = mul nsw i64 %i.fi, %i.dh
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.fj ; 2 uses
  %i.fl = mul nsw i64 %indvars.iv99.i, %i.dj
  %gep81.i = getelementptr [4 x i8], ptr %invariant.gep80.i, i64 %i.fl ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph78.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph78.i ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.lr.ph78.i ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %index
  %wide.load = load <8 x float>, ptr %i.fm, align 4, !tbaa !12, !noalias !166 ; 2 uses
  %i.fn = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load
  %i.fo = shl nuw nsw <8 x i64> %vec.ind, splat (i64 3)
  %wide.gep = getelementptr inbounds nuw i8, ptr %gep81.i, <8 x i64> %i.fo
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fn, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !165
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.fp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fp, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge79.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph78.i, %middle.block
  %indvars.iv94.i.ph = phi i64 [ 0, %.lr.ph78.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge79.i:                                  ; preds = %scalar.ph, %middle.block
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 2 ; 2 uses
  %i.fq = icmp samesign ult i64 %indvars.iv.next100.i, %i.dn
  br i1 %i.fq, label %.lr.ph78.i, label %._crit_edge85.split.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %scalar.ph ], [ %indvars.iv94.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv94.i
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !12, !noalias !166 ; 2 uses
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fs, %i.fs
  %.idx107.i = shl nuw nsw i64 %indvars.iv94.i, 3
  %i.fu = getelementptr inbounds nuw i8, ptr %gep81.i, i64 %.idx107.i
  store float %i.ft, ptr %i.fu, align 4, !tbaa !12, !alias.scope !165
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next95.i, %wide.trip.count97.i
  br i1 %exitcond98.not.i, label %._crit_edge79.i, label %scalar.ph, !llvm.loop !150

bb.g:                                             ; preds = %bb.c
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 6 uses
  %i.fw = getelementptr i8, ptr %4, i64 8
  %.val = load i32, ptr %i.fw, align 4, !tbaa !160 ; 15 uses
  %i.fx = getelementptr i8, ptr %4, i64 12
  %.val19 = load i32, ptr %i.fx, align 4, !tbaa !161 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.fy = sext i32 %.val to i64                   ; 17 uses
  %i.fz = sext i32 %.val19 to i64                 ; 3 uses
  %i.ga = add nsw i32 %.val19, 2
  %i.gb = sext i32 %i.ga to i64
  %i.gc = shl nsw i64 %i.fy, 2                    ; 2 uses
  %i.gd = mul i64 %i.gc, %i.gb
  %i.ge = tail call ptr @dt_alloc_aligned(i64 noundef %i.gd) #22, !noalias !170 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ge, i64 64) ]
  %.not.i20 = icmp eq ptr %i.ge, null
  br i1 %.not.i20, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gf = mul i64 %i.gc, %i.fz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr readonly align 4 %2, i64 %i.gf, i1 false), !alias.scope !170
  br label %wavelet_denoise.exit

bb.i:                                             ; preds = %bb.g
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.fy ; 16 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.gl = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.not24.i.a = icmp eq i32 %.val, 0
  %.not25.i = icmp eq i32 %.val19, 0
  %i.gq = sub nsw i32 0, %.val                    ; 2 uses
  %i.gr = sub i32 1, %.val                        ; 2 uses
  %i.gs = sext i32 %i.gr to i64
  %i.gt = sext i32 %i.gq to i64
  %i.gu = add i32 %.val, -1                       ; 3 uses
  %i.gv = sext i32 %i.gu to i64                   ; 6 uses
  %i.gw = add nsw i64 %i.fz, -1
  %i.gx = insertelement <2 x i32> poison, i32 %.val, i64 0
  %i.gy = shufflevector <2 x i32> %i.gx, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.gz = add nsw <2 x i32> %i.gy, <i32 599, i32 598>
  %i.ha = add nsw i32 %.val, -2
  %i.hb = srem <2 x i32> %i.gz, splat (i32 6)     ; 2 uses
  %i.hc = extractelement <2 x i32> %i.hb, i64 0
  %i.hd = sext i32 %i.hc to i64                   ; 2 uses
  %i.he = extractelement <2 x i32> %i.hb, i64 1
  %6 = sext i32 %i.he to i64                      ; 2 uses
  %7 = add i32 %.val19, -1
  %i.hf = sext i32 %7 to i64                      ; 2 uses
  %8 = mul nsw i64 %i.hf, %i.fy
  %9 = getelementptr [4 x i8], ptr %i.gg, i64 %8  ; 11 uses
  %i.hg = icmp slt i32 %.val19, 1
  %i.hh = icmp slt i32 %.val, 1
  %brmerge.i = or i1 %i.hh, %i.hg
  %wide.trip.count35.i = zext nneg i32 %.val19 to i64
  %wide.trip.count.i21 = zext i32 %.val to i64    ; 3 uses
  %i.hi = mul nsw i64 %i.fy, %i.hf
  %i.hj = shl i64 %i.hi, 2
  %min.iters.check97 = icmp ult i32 %.val, 4
  %i.hk = add i64 %i.hj, -1
  %diff.check = icmp ult i64 %i.hk, 127
  %or.cond = select i1 %min.iters.check97, i1 true, i1 %diff.check
  %min.iters.check99 = icmp ult i32 %.val, 32
  %n.vec101 = and i64 %i.fy, -32                  ; 4 uses
  %cmp.n106 = icmp eq i64 %n.vec101, %i.fy
  %i.hl = and i32 %.val, 28
  %min.epilog.iters.check111 = icmp eq i32 %i.hl, 0
  %n.vec113 = and i64 %i.fy, -4                   ; 3 uses
  %cmp.n118 = icmp eq i64 %n.vec113, %i.fy
  %min.iters.check85 = icmp ult i32 %.val, 8
  %n.vec87 = and i64 %wide.trip.count.i21, 2147483640 ; 3 uses
  %cmp.n94 = icmp eq i64 %n.vec87, %wide.trip.count.i21
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge19.split.i
  call void @free(ptr noundef %i.ge) #22, !noalias !170
  br label %wavelet_denoise.exit

bb.k:                                             ; preds = %._crit_edge19.split.i, %bb.i
  %.025420.i = phi i32 [ 0, %bb.i ], [ %i.pe, %._crit_edge19.split.i ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !170
  %i.hm = load float, ptr %i.gh, align 4, !tbaa !12, !noalias !170
  switch i32 %.025420.i, label %.split.preheader.i.i43 [
    i32 0, label %.split.us.preheader.i.i42
    i32 2, label %compute_channel_noise.exit.i22
  ]

.split.us.preheader.i.i42:                        ; preds = %bb.k
  br label %compute_channel_noise.exit.i22

.split.preheader.i.i43:                           ; preds = %bb.k
  br label %compute_channel_noise.exit.i22

compute_channel_noise.exit.i22:                   ; preds = %.split.preheader.i.i43, %.split.us.preheader.i.i42, %bb.k
  %.sink100.i.i23 = phi i64 [ 84, %.split.preheader.i.i43 ], [ 64, %.split.us.preheader.i.i42 ], [ 104, %bb.k ]
  %.sink99.i.i24 = phi i64 [ 100, %.split.preheader.i.i43 ], [ 80, %.split.us.preheader.i.i42 ], [ 120, %bb.k ]
  %.sink88.i.i25 = phi i64 [ 96, %.split.preheader.i.i43 ], [ 76, %.split.us.preheader.i.i42 ], [ 116, %bb.k ]
  %.sink76.i.i26 = phi i64 [ 92, %.split.preheader.i.i43 ], [ 72, %.split.us.preheader.i.i42 ], [ 112, %bb.k ]
  %.sink61.i.i27 = phi i64 [ 88, %.split.preheader.i.i43 ], [ 68, %.split.us.preheader.i.i42 ], [ 108, %bb.k ]
  %i.hn = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink100.i.i23
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink99.i.i24
  %.026.us33.i.i28 = load float, ptr %i.ho, align 4, !tbaa !12, !noalias !170
  %i.hp = fmul reassoc nsz arcp contract afn float %.026.us33.i.i28, %i.hm ; 2 uses
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hp, %i.hp ; 2 uses
  %i.hr = load float, ptr %i.d, align 8, !tbaa !34, !noalias !170 ; 5 uses
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hr, f0x434CD9E8
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hq, %i.hq
  %i.hu = fmul reassoc nsz arcp contract afn float %i.ht, %i.hs
  store float %i.hu, ptr %i.a, align 16, !tbaa !12, !noalias !170
  %i.hv = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink88.i.i25
  %.026.us33.1.i.i29 = load float, ptr %i.hv, align 4, !tbaa !12, !noalias !170
  %i.hw = load float, ptr %i.gj, align 8, !tbaa !12, !noalias !170
  %i.hx = fmul reassoc nsz arcp contract afn float %i.hw, %.026.us33.1.i.i29 ; 2 uses
  %i.hy = fmul reassoc nsz arcp contract afn float %i.hx, %i.hx ; 2 uses
  %i.hz = fmul reassoc nsz arcp contract afn float %i.hr, 7.001600e+01
  %i.ia = fmul reassoc nsz arcp contract afn float %i.hy, %i.hy
  %i.ib = fmul reassoc nsz arcp contract afn float %i.ia, %i.hz
  store float %i.ib, ptr %i.gi, align 4, !tbaa !12, !noalias !170
  %i.ic = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink76.i.i26
  %.026.us33.2.i.i30 = load float, ptr %i.ic, align 4, !tbaa !12, !noalias !170
  %i.id = load float, ptr %i.gl, align 4, !tbaa !12, !noalias !170
  %i.ie = fmul reassoc nsz arcp contract afn float %i.id, %.026.us33.2.i.i30 ; 2 uses
  %i.if = fmul reassoc nsz arcp contract afn float %i.ie, %i.ie ; 2 uses
  %i.ig = fmul reassoc nsz arcp contract afn float %i.hr, 3.077120e+01
  %i.ih = fmul reassoc nsz arcp contract afn float %i.if, %i.if
  %i.ii = fmul reassoc nsz arcp contract afn float %i.ih, %i.ig
  store float %i.ii, ptr %i.gm, align 8, !tbaa !12, !noalias !170
  %i.ij = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink61.i.i27
  %.026.us33.3.i.i31 = load float, ptr %i.ij, align 4, !tbaa !12, !noalias !170
  %i.ik = load float, ptr %i.gn, align 8, !tbaa !12, !noalias !170
  %i.il = fmul reassoc nsz arcp contract afn float %i.ik, %.026.us33.3.i.i31 ; 2 uses
  %i.im = fmul reassoc nsz arcp contract afn float %i.il, %i.il ; 2 uses
  %i.in = fmul reassoc nsz arcp contract afn float %i.hr, 1.497600e+01
  %i.io = fmul reassoc nsz arcp contract afn float %i.im, %i.im
  %i.ip = fmul reassoc nsz arcp contract afn float %i.io, %i.in
  store float %i.ip, ptr %i.go, align 4, !tbaa !12, !noalias !170
  %.026.us33.4.i.i32 = load float, ptr %i.hn, align 4, !tbaa !12, !noalias !170
  %i.iq = load float, ptr %i.gk, align 4, !tbaa !12, !noalias !170
  %i.ir = fmul reassoc nsz arcp contract afn float %i.iq, %.026.us33.4.i.i32 ; 2 uses
  %i.is = fmul reassoc nsz arcp contract afn float %i.ir, %i.ir ; 2 uses
  %i.it = fmul reassoc nsz arcp contract afn float %i.hr, 7.449600e+00
  %i.iu = fmul reassoc nsz arcp contract afn float %i.is, %i.is
  %i.iv = fmul reassoc nsz arcp contract afn float %i.iu, %i.it
  store float %i.iv, ptr %i.gp, align 16, !tbaa !12, !noalias !170
  br i1 %.not24.i.a, label %.preheader4.i, label %iter.check108

iter.check108:                                    ; preds = %compute_channel_noise.exit.i22
  br i1 %or.cond, label %.lr.ph.i33.preheader, label %vector.main.loop.iter.check98

vector.main.loop.iter.check98:                    ; preds = %iter.check108
  br i1 %min.iters.check99, label %vec.epilog.ph112, label %vector.body102

vector.body102:                                   ; preds = %vector.main.loop.iter.check98, %vector.body102
  %index103 = phi i64 [ %index.next104, %vector.body102 ], [ 0, %vector.main.loop.iter.check98 ] ; 3 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %index103 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 96
  store <8 x float> splat (float 5.000000e-01), ptr %i.iw, align 4, !tbaa !12, !noalias !170
  store <8 x float> splat (float 5.000000e-01), ptr %i.ix, align 4, !tbaa !12, !noalias !170
  store <8 x float> splat (float 5.000000e-01), ptr %i.iy, align 4, !tbaa !12, !noalias !170
  store <8 x float> splat (float 5.000000e-01), ptr %i.iz, align 4, !tbaa !12, !noalias !170
  %i.ja = getelementptr [4 x i8], ptr %9, i64 %index103 ; 4 uses
  %i.jb = getelementptr i8, ptr %i.ja, i64 32
  %i.jc = getelementptr i8, ptr %i.ja, i64 64
  %i.jd = getelementptr i8, ptr %i.ja, i64 96
  store <8 x float> splat (float 5.000000e-01), ptr %i.ja, align 4, !tbaa !12, !noalias !170
  store <8 x float> splat (float 5.000000e-01), ptr %i.jb, align 4, !tbaa !12, !noalias !170
  store <8 x float> splat (float 5.000000e-01), ptr %i.jc, align 4, !tbaa !12, !noalias !170
  store <8 x float> splat (float 5.000000e-01), ptr %i.jd, align 4, !tbaa !12, !noalias !170
  %index.next104 = add nuw i64 %index103, 32      ; 2 uses
  %i.je = icmp eq i64 %index.next104, %n.vec101
  br i1 %i.je, label %middle.block105, label %vector.body102, !llvm.loop !154

middle.block105:                                  ; preds = %vector.body102
  br i1 %cmp.n106, label %.preheader4.i, label %vec.epilog.iter.check110

vec.epilog.iter.check110:                         ; preds = %middle.block105
  br i1 %min.epilog.iters.check111, label %.lr.ph.i33.preheader, label %vec.epilog.ph112, !prof !167

vec.epilog.ph112:                                 ; preds = %vector.main.loop.iter.check98, %vec.epilog.iter.check110
  %vec.epilog.resume.val107 = phi i64 [ %n.vec101, %vec.epilog.iter.check110 ], [ 0, %vector.main.loop.iter.check98 ]
  br label %vec.epilog.vector.body114

vec.epilog.vector.body114:                        ; preds = %vec.epilog.vector.body114, %vec.epilog.ph112
  %index115 = phi i64 [ %vec.epilog.resume.val107, %vec.epilog.ph112 ], [ %index.next116, %vec.epilog.vector.body114 ] ; 3 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %index115
  store <4 x float> splat (float 5.000000e-01), ptr %i.jf, align 4, !tbaa !12, !noalias !170
  %i.jg = getelementptr [4 x i8], ptr %9, i64 %index115
  store <4 x float> splat (float 5.000000e-01), ptr %i.jg, align 4, !tbaa !12, !noalias !170
  %index.next116 = add nuw i64 %index115, 4       ; 2 uses
  %i.jh = icmp eq i64 %index.next116, %n.vec113
  br i1 %i.jh, label %vec.epilog.middle.block117, label %vec.epilog.vector.body114, !llvm.loop !155

vec.epilog.middle.block117:                       ; preds = %vec.epilog.vector.body114
  br i1 %cmp.n118, label %.preheader4.i, label %.lr.ph.i33.preheader

.lr.ph.i33.preheader:                             ; preds = %iter.check108, %vec.epilog.iter.check110, %vec.epilog.middle.block117
  %.02536.i.ph = phi i64 [ 0, %iter.check108 ], [ %n.vec101, %vec.epilog.iter.check110 ], [ %n.vec113, %vec.epilog.middle.block117 ] ; 4 uses
  %i.ji = sub nsw i64 %i.fy, %.02536.i.ph
  %xtraiter = and i64 %i.ji, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i33.prol.loopexit, label %.lr.ph.i33.prol

.lr.ph.i33.prol:                                  ; preds = %.lr.ph.i33.preheader, %.lr.ph.i33.prol
  %.02536.i.prol = phi i64 [ %i.jl, %.lr.ph.i33.prol ], [ %.02536.i.ph, %.lr.ph.i33.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i33.prol ], [ 0, %.lr.ph.i33.preheader ]
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %.02536.i.prol
  store float 5.000000e-01, ptr %i.jj, align 4, !tbaa !12, !noalias !170
  %i.jk = getelementptr [4 x i8], ptr %9, i64 %.02536.i.prol
  store float 5.000000e-01, ptr %i.jk, align 4, !tbaa !12, !noalias !170
  %i.jl = add nuw i64 %.02536.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i33.prol.loopexit, label %.lr.ph.i33.prol, !llvm.loop !156

.lr.ph.i33.prol.loopexit:                         ; preds = %.lr.ph.i33.prol, %.lr.ph.i33.preheader
  %.02536.i.unr = phi i64 [ %.02536.i.ph, %.lr.ph.i33.preheader ], [ %i.jl, %.lr.ph.i33.prol ]
  %i.jm = sub nsw i64 %.02536.i.ph, %i.fy
  %i.jn = icmp ugt i64 %i.jm, -8
  br i1 %i.jn, label %.preheader4.i, label %.lr.ph.i33

.preheader4.i:                                    ; preds = %.lr.ph.i33.prol.loopexit, %.lr.ph.i33, %middle.block105, %vec.epilog.middle.block117, %compute_channel_noise.exit.i22
  %i.jo = icmp ne i32 %.025420.i, 1               ; 3 uses
  %i.jp = zext i1 %i.jo to i64
  %i.jq = icmp ult i64 %i.jp, %i.gv               ; 2 uses
  br i1 %.not25.i, label %.split.thread.i, label %.preheader.i35.a

.split.thread.i:                                  ; preds = %.preheader4.i
  call void @dwt_denoise(ptr noundef nonnull %i.gg, i32 noundef %.val, i32 noundef 0, i32 noundef 5, ptr noundef nonnull %i.a) #22, !noalias !170
  br label %._crit_edge19.split.i

.lr.ph.i33:                                       ; preds = %.lr.ph.i33.prol.loopexit, %.lr.ph.i33
  %.02536.i = phi i64 [ %i.ko, %.lr.ph.i33 ], [ %.02536.i.unr, %.lr.ph.i33.prol.loopexit ] ; 10 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %.02536.i
  store float 5.000000e-01, ptr %i.jr, align 4, !tbaa !12, !noalias !170
  %i.js = getelementptr [4 x i8], ptr %9, i64 %.02536.i
  store float 5.000000e-01, ptr %i.js, align 4, !tbaa !12, !noalias !170
  %i.jt = add nuw i64 %.02536.i, 1                ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.jt
  store float 5.000000e-01, ptr %i.ju, align 4, !tbaa !12, !noalias !170
  %i.jv = getelementptr [4 x i8], ptr %9, i64 %i.jt
  store float 5.000000e-01, ptr %i.jv, align 4, !tbaa !12, !noalias !170
  %i.jw = add nuw i64 %.02536.i, 2                ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.jw
  store float 5.000000e-01, ptr %i.jx, align 4, !tbaa !12, !noalias !170
  %i.jy = getelementptr [4 x i8], ptr %9, i64 %i.jw
  store float 5.000000e-01, ptr %i.jy, align 4, !tbaa !12, !noalias !170
  %i.jz = add nuw i64 %.02536.i, 3                ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.jz
  store float 5.000000e-01, ptr %i.ka, align 4, !tbaa !12, !noalias !170
  %i.kb = getelementptr [4 x i8], ptr %9, i64 %i.jz
  store float 5.000000e-01, ptr %i.kb, align 4, !tbaa !12, !noalias !170
  %i.kc = add nuw i64 %.02536.i, 4                ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.kc
  store float 5.000000e-01, ptr %i.kd, align 4, !tbaa !12, !noalias !170
  %i.ke = getelementptr [4 x i8], ptr %9, i64 %i.kc
  store float 5.000000e-01, ptr %i.ke, align 4, !tbaa !12, !noalias !170
  %i.kf = add nuw i64 %.02536.i, 5                ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.kf
  store float 5.000000e-01, ptr %i.kg, align 4, !tbaa !12, !noalias !170
  %i.kh = getelementptr [4 x i8], ptr %9, i64 %i.kf
  store float 5.000000e-01, ptr %i.kh, align 4, !tbaa !12, !noalias !170
  %i.ki = add nuw i64 %.02536.i, 6                ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.ki
  store float 5.000000e-01, ptr %i.kj, align 4, !tbaa !12, !noalias !170
  %i.kk = getelementptr [4 x i8], ptr %9, i64 %i.ki
  store float 5.000000e-01, ptr %i.kk, align 4, !tbaa !12, !noalias !170
  %i.kl = add nuw i64 %.02536.i, 7                ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.kl
  store float 5.000000e-01, ptr %i.km, align 4, !tbaa !12, !noalias !170
  %i.kn = getelementptr [4 x i8], ptr %9, i64 %i.kl
  store float 5.000000e-01, ptr %i.kn, align 4, !tbaa !12, !noalias !170
  %i.ko = add nuw i64 %.02536.i, 8                ; 2 uses
  %exitcond.not.i34.7 = icmp eq i64 %i.ko, %i.fy
  br i1 %exitcond.not.i34.7, label %.preheader4.i, label %.lr.ph.i33, !llvm.loop !157

.split.i:                                         ; preds = %bb.af
  call void @dwt_denoise(ptr noundef nonnull %i.gg, i32 noundef %.val, i32 noundef %.val19, i32 noundef 5, ptr noundef nonnull %i.a) #22, !noalias !170
  br i1 %brmerge.i, label %._crit_edge19.split.i, label %.lr.ph15.i.preheader

.lr.ph15.i.preheader:                             ; preds = %.split.i
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.025420.i, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.lr.ph15.i

.preheader.i35.a:                                 ; preds = %.preheader4.i, %bb.af
  %.025111.i = phi i64 [ %i.pd, %bb.af ], [ 0, %.preheader4.i ] ; 6 uses
  %i.kp = mul i64 %.025111.i, %i.fy               ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kp ; 6 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.kp ; 12 uses
  %i.ks = trunc i64 %.025111.i to i32             ; 3 uses
  %i.kt = add nsw i32 %i.ks, 600
  %i.ku = srem i32 %i.kt, 6
  %i.kv = sext i32 %i.ku to i64                   ; 3 uses
  br i1 %i.jo, label %bb.l, label %.thread57.i

bb.l:                                             ; preds = %.preheader.i35.a
  %i.kw = getelementptr inbounds [6 x i8], ptr %i.fv, i64 %i.kv ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !37, !noalias !170
  %i.ky = zext i8 %i.kx to i32
  %i.kz = icmp eq i32 %.025420.i, %i.ky
  br i1 %i.kz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.la = load float, ptr %i.kq, align 4, !tbaa !12, !alias.scope !168
  %i.lb = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.la, float 0.000000e+00)
  %i.lc = call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.lb) ; 3 uses
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.gs
  store float %i.lc, ptr %i.ld, align 4, !tbaa !12, !noalias !170
  %i.le = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.gt
  store float %i.lc, ptr %i.le, align 4, !tbaa !12, !noalias !170
  store float %i.lc, ptr %i.kr, align 4, !tbaa !12, !noalias !170
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %invariant.gep.i40 = getelementptr [4 x i8], ptr %i.kr, i64 %i.fy
  br i1 %i.jq, label %.lr.ph8.i, label %._crit_edge.i36

.thread57.i:                                      ; preds = %.preheader.i35.a
  br i1 %i.jq, label %.lr.ph8.thread.i, label %._crit_edge.i36

.lr.ph8.thread.i:                                 ; preds = %.thread57.i
  %i.lf = getelementptr inbounds [6 x i8], ptr %i.fv, i64 %i.kv
  br label %.lr.ph8.split.us.i

.lr.ph8.i:                                        ; preds = %bb.n
  %i.lg = icmp ult i64 %.025111.i, %i.gw
  br label %.lr.ph8.split.i

.lr.ph8.split.us.i:                               ; preds = %bb.p, %.lr.ph8.thread.i
  %.02507.us.i = phi i64 [ %i.lv, %bb.p ], [ 0, %.lr.ph8.thread.i ] ; 4 uses
  %i.lh = trunc i64 %.02507.us.i to i32
  %i.li = add nsw i32 %i.lh, 600
  %i.lj = srem i32 %i.li, 6
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds i8, ptr %i.lf, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !37, !noalias !170
  %i.ln = icmp eq i8 %i.lm, 1
  br i1 %i.ln, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph8.split.us.i
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %.02507.us.i
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !12, !alias.scope !168
  %i.lq = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lp, float 0.000000e+00)
  %i.lr = call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.lq) ; 3 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %.02507.us.i ; 3 uses
  store float %i.lr, ptr %i.ls, align 4, !tbaa !12, !noalias !170
  %i.lt = getelementptr [4 x i8], ptr %i.ls, i64 %i.fy
  store float %i.lr, ptr %i.lt, align 4, !tbaa !12, !noalias !170
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  store float %i.lr, ptr %i.lu, align 4, !tbaa !12, !noalias !170
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph8.split.us.i
  %i.lv = add nuw i64 %.02507.us.i, 1             ; 2 uses
  %exitcond28.not.i.a = icmp eq i64 %i.lv, %i.gv
  br i1 %exitcond28.not.i.a, label %._crit_edge.i36, label %.lr.ph8.split.us.i

._crit_edge.i36:                                  ; preds = %bb.p, %bb.s, %.thread57.i, %bb.n
  %i.lw = getelementptr inbounds [6 x i8], ptr %i.fv, i64 %i.kv ; 5 uses
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !37, !noalias !170
  %i.ly = zext i8 %i.lx to i32
  %.not262.i = icmp eq i32 %.025420.i, %i.ly
  br i1 %.not262.i, label %bb.y, label %bb.t

.lr.ph8.split.i:                                  ; preds = %bb.s, %.lr.ph8.i
  %.02507.i = phi i64 [ %i.mu, %bb.s ], [ 1, %.lr.ph8.i ] ; 6 uses
  %i.lz = trunc i64 %.02507.i to i32
  %i.ma = add nsw i32 %i.lz, 600
  %i.mb = srem i32 %i.ma, 6
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds i8, ptr %i.kw, i64 %i.mc
  %i.me = load i8, ptr %i.md, align 1, !tbaa !37, !noalias !170
  %i.mf = zext i8 %i.me to i32
  %i.mg = icmp eq i32 %.025420.i, %i.mf
  br i1 %i.mg, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.lr.ph8.split.i
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %.02507.i
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !12, !alias.scope !168
  %i.mj = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mi, float 0.000000e+00)
  %i.mk = call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.mj) ; 9 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %.02507.i ; 3 uses
  store float %i.mk, ptr %i.ml, align 4, !tbaa !12, !noalias !170
  %i.mm = sub i64 %.02507.i, %i.fy
  %i.mn = getelementptr [4 x i8], ptr %i.kr, i64 %i.mm ; 3 uses
  %i.mo = getelementptr i8, ptr %i.mn, i64 4
  store float %i.mk, ptr %i.mo, align 4, !tbaa !12, !noalias !170
  store float %i.mk, ptr %i.mn, align 4, !tbaa !12, !noalias !170
  %i.mp = getelementptr i8, ptr %i.mn, i64 -4
  store float %i.mk, ptr %i.mp, align 4, !tbaa !12, !noalias !170
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ml, i64 4
  store float %i.mk, ptr %i.mq, align 4, !tbaa !12, !noalias !170
  %i.mr = getelementptr i8, ptr %i.ml, i64 -4
  store float %i.mk, ptr %i.mr, align 4, !tbaa !12, !noalias !170
  br i1 %i.lg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %gep.i41 = getelementptr [4 x i8], ptr %invariant.gep.i40, i64 %.02507.i ; 3 uses
  %i.ms = getelementptr i8, ptr %gep.i41, i64 4
  store float %i.mk, ptr %i.ms, align 4, !tbaa !12, !noalias !170
  store float %i.mk, ptr %gep.i41, align 4, !tbaa !12, !noalias !170
  %i.mt = getelementptr i8, ptr %gep.i41, i64 -4
  store float %i.mk, ptr %i.mt, align 4, !tbaa !12, !noalias !170
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.lr.ph8.split.i
  %i.mu = add nuw i64 %.02507.i, 1                ; 2 uses
  %exitcond27.not.i = icmp eq i64 %i.mu, %i.gv
  br i1 %exitcond27.not.i, label %._crit_edge.i36, label %.lr.ph8.split.i

bb.t:                                             ; preds = %._crit_edge.i36
  %i.mv = icmp ugt i64 %.025111.i, 1
  br i1 %i.mv, label %bb.u, label %.thread.i

.thread.i:                                        ; preds = %bb.t
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lw, i64 1
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !37, !noalias !170
  %i.my = zext i8 %i.mx to i32
  %i.mz = icmp eq i32 %.025420.i, %i.my
  %.mux3.i = zext i1 %i.mz to i32
  br label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.na = add i32 %i.ks, 599
  %i.nb = srem i32 %i.na, 6
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr inbounds [6 x i8], ptr %i.fv, i64 %i.nc ; 2 uses
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !37, !noalias !170
  %i.nf = zext i8 %i.ne to i32
  %i.ng = icmp eq i32 %.025420.i, %i.nf
  br i1 %i.ng, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.nh = getelementptr inbounds nuw i8, ptr %i.lw, i64 1
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !37, !noalias !170
  %i.nj = zext i8 %i.ni to i32
  %i.nk = icmp eq i32 %.025420.i, %i.nj
  br i1 %i.nk, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nd, i64 1
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !37, !noalias !170
  %i.nn = zext i8 %i.nm to i32
  %i.no = icmp eq i32 %.025420.i, %i.nn
  %spec.select.i39 = select i1 %i.no, i32 %i.gr, i32 0
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %.thread.i
  %.0249.i = phi i32 [ %.mux3.i, %.thread.i ], [ 1, %bb.v ], [ %spec.select.i39, %bb.w ], [ %i.gq, %bb.u ]
  %i.np = sext i32 %.0249.i to i64
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %i.np
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !12, !alias.scope !168
  %i.ns = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.nr, float 0.000000e+00)
  %i.nt = call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.ns)
  store float %i.nt, ptr %i.kr, align 4, !tbaa !12, !noalias !170
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i36
  %i.nu = getelementptr inbounds i8, ptr %i.lw, i64 %i.hd
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !37, !noalias !170
  %i.nw = zext i8 %i.nv to i32
  %i.nx = icmp eq i32 %.025420.i, %i.nw           ; 2 uses
  br i1 %i.jo, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  br i1 %i.nx, label %bb.aa, label %.thread64.i

bb.aa:                                            ; preds = %bb.z
  %i.ny = getelementptr [4 x i8], ptr %i.kr, i64 %i.fy
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %i.gv
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !12, !alias.scope !168
  %i.ob = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.oa, float 0.000000e+00)
  %i.oc = call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.ob) ; 3 uses
  %i.od = getelementptr inbounds i8, ptr %i.kr, i64 -4
  store float %i.oc, ptr %i.od, align 4, !tbaa !12, !noalias !170
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.gv
  store float %i.oc, ptr %i.oe, align 4, !tbaa !12, !noalias !170
  %i.of = getelementptr i8, ptr %i.ny, i64 -8
  store float %i.oc, ptr %i.of, align 4, !tbaa !12, !noalias !170
  br label %bb.af

bb.ab:                                            ; preds = %bb.y
  br i1 %i.nx, label %bb.af, label %.thread64.i

.thread64.i:                                      ; preds = %bb.ab, %bb.z
  %i.og = getelementptr inbounds i8, ptr %i.lw, i64 %6
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !37, !noalias !170
  %i.oi = zext i8 %i.oh to i32
  %i.oj = icmp eq i32 %.025420.i, %i.oi
  br i1 %i.oj, label %.critedge.i.a, label %bb.ac

bb.ac:                                            ; preds = %.thread64.i
  %i.ok = icmp ugt i64 %.025111.i, 1
  br i1 %i.ok, label %bb.ad, label %.critedge.i.a

bb.ad:                                            ; preds = %bb.ac
  %i.ol = add i32 %i.ks, 599
  %i.om = srem i32 %i.ol, 6
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr inbounds [6 x i8], ptr %i.fv, i64 %i.on ; 2 uses
  %i.op = getelementptr inbounds i8, ptr %i.oo, i64 %i.hd
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !37, !noalias !170
  %i.or = zext i8 %i.oq to i32
  %i.os = icmp eq i32 %.025420.i, %i.or
  br i1 %i.os, label %.critedge.i.a, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ot = getelementptr inbounds i8, ptr %i.oo, i64 %6
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !37, !noalias !170
  %i.ov = zext i8 %i.ou to i32
  %i.ow = icmp eq i32 %.025420.i, %i.ov
  %spec.select268.i = select i1 %i.ow, i32 -2, i32 %i.gu
  br label %.critedge.i.a

.critedge.i.a:                                    ; preds = %bb.ae, %bb.ad, %bb.ac, %.thread64.i
  %.0248.i = phi i32 [ %i.gu, %bb.ac ], [ %i.ha, %.thread64.i ], [ -1, %bb.ad ], [ %spec.select268.i, %bb.ae ]
  %i.ox = sext i32 %.0248.i to i64
  %i.oy = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %i.ox
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !12, !alias.scope !168
  %i.pa = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.oz, float 0.000000e+00)
  %i.pb = call reassoc nsz arcp contract afn noundef float @llvm.sqrt.f32(float %i.pa)
  %i.pc = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.gv
  store float %i.pb, ptr %i.pc, align 4, !tbaa !12, !noalias !170
  br label %bb.af

bb.af:                                            ; preds = %.critedge.i.a, %bb.ab, %bb.aa
  %i.pd = add nuw i64 %.025111.i, 1               ; 2 uses
  %exitcond29.not.i = icmp eq i64 %i.pd, %i.fz
  br i1 %exitcond29.not.i, label %.split.i, label %.preheader.i35.a

._crit_edge19.split.i:                            ; preds = %._crit_edge16.i, %.split.i, %.split.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !170
  %i.pe = add nuw nsw i32 %.025420.i, 1           ; 2 uses
  %exitcond37.not.i = icmp eq i32 %i.pe, 3
  br i1 %exitcond37.not.i, label %bb.j, label %bb.k

.lr.ph15.i:                                       ; preds = %.lr.ph15.i.preheader, %._crit_edge16.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %._crit_edge16.i ], [ 0, %.lr.ph15.i.preheader ] ; 3 uses
  %i.pf = mul nuw nsw i64 %indvars.iv32.i, %i.fy  ; 2 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.pf ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.pf ; 2 uses
  %i.pi = trunc i64 %indvars.iv32.i to i32
  %i.pj = add i32 %i.pi, 600
  %i.pk = urem i32 %i.pj, 6
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [6 x i8], ptr %i.fv, i64 %i.pl ; 9 uses
  br i1 %min.iters.check85, label %scalar.ph84.preheader, label %vector.body88

vector.body88:                                    ; preds = %.lr.ph15.i, %vector.body88
  %index89 = phi i64 [ %index.next91, %vector.body88 ], [ 0, %.lr.ph15.i ] ; 3 uses
  %vec.ind90 = phi <8 x i32> [ %vec.ind.next92, %vector.body88 ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %.lr.ph15.i ] ; 2 uses
  %i.pn = add <8 x i32> %vec.ind90, splat (i32 600)
  %i.po = urem <8 x i32> %i.pn, splat (i32 6)
  %i.pp = zext nneg <8 x i32> %i.po to <8 x i64>  ; 8 uses
  %i.pq = extractelement <8 x i64> %i.pp, i64 0
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.pq
  %i.ps = extractelement <8 x i64> %i.pp, i64 1
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.ps
  %i.pu = extractelement <8 x i64> %i.pp, i64 2
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.pu
  %i.pw = extractelement <8 x i64> %i.pp, i64 3
  %i.px = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.pw
  %i.py = extractelement <8 x i64> %i.pp, i64 4
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.py
  %i.qa = extractelement <8 x i64> %i.pp, i64 5
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.qa
  %i.qc = extractelement <8 x i64> %i.pp, i64 6
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.qc
  %i.qe = extractelement <8 x i64> %i.pp, i64 7
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.qe
  %i.qg = load i8, ptr %i.pr, align 1, !tbaa !37, !noalias !170
  %i.qh = load i8, ptr %i.pt, align 1, !tbaa !37, !noalias !170
  %i.qi = load i8, ptr %i.pv, align 1, !tbaa !37, !noalias !170
  %i.qj = load i8, ptr %i.px, align 1, !tbaa !37, !noalias !170
  %i.qk = load i8, ptr %i.pz, align 1, !tbaa !37, !noalias !170
  %i.ql = load i8, ptr %i.qb, align 1, !tbaa !37, !noalias !170
  %i.qm = load i8, ptr %i.qd, align 1, !tbaa !37, !noalias !170
  %i.qn = load i8, ptr %i.qf, align 1, !tbaa !37, !noalias !170
  %i.qo = insertelement <8 x i8> poison, i8 %i.qg, i64 0
  %i.qp = insertelement <8 x i8> %i.qo, i8 %i.qh, i64 1
  %i.qq = insertelement <8 x i8> %i.qp, i8 %i.qi, i64 2
  %i.qr = insertelement <8 x i8> %i.qq, i8 %i.qj, i64 3
  %i.qs = insertelement <8 x i8> %i.qr, i8 %i.qk, i64 4
  %i.qt = insertelement <8 x i8> %i.qs, i8 %i.ql, i64 5
  %i.qu = insertelement <8 x i8> %i.qt, i8 %i.qm, i64 6
  %i.qv = insertelement <8 x i8> %i.qu, i8 %i.qn, i64 7
  %i.qw = zext <8 x i8> %i.qv to <8 x i32>
  %i.qx = icmp eq <8 x i32> %broadcast.splat, %i.qw ; 2 uses
  %i.qy = getelementptr [4 x i8], ptr %i.pg, i64 %index89
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.qy, <8 x i1> %i.qx, <8 x float> poison), !tbaa !12, !noalias !170 ; 2 uses
  %i.qz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load, %wide.masked.load
  %i.ra = getelementptr [4 x i8], ptr %i.ph, i64 %index89
  call void @llvm.masked.store.v8f32.p0(<8 x float> %i.qz, ptr align 4 %i.ra, <8 x i1> %i.qx), !tbaa !12, !alias.scope !169
  %index.next91 = add nuw i64 %index89, 8         ; 2 uses
  %vec.ind.next92 = add <8 x i32> %vec.ind90, splat (i32 8)
  %i.rb = icmp eq i64 %index.next91, %n.vec87
  br i1 %i.rb, label %middle.block93, label %vector.body88, !llvm.loop !158

middle.block93:                                   ; preds = %vector.body88
  br i1 %cmp.n94, label %._crit_edge16.i, label %scalar.ph84.preheader

scalar.ph84.preheader:                            ; preds = %.lr.ph15.i, %middle.block93
  %indvars.iv.i37.ph = phi i64 [ 0, %.lr.ph15.i ], [ %n.vec87, %middle.block93 ]
  br label %scalar.ph84

._crit_edge16.i:                                  ; preds = %bb.ah, %middle.block93
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count35.i
  br i1 %exitcond36.not.i, label %._crit_edge19.split.i, label %.lr.ph15.i

scalar.ph84:                                      ; preds = %scalar.ph84.preheader, %bb.ah
  %indvars.iv.i37 = phi i64 [ %indvars.iv.next.i38, %bb.ah ], [ %indvars.iv.i37.ph, %scalar.ph84.preheader ] ; 4 uses
  %i.rc = trunc i64 %indvars.iv.i37 to i32
  %i.rd = add i32 %i.rc, 600
  %i.re = urem i32 %i.rd, 6
  %i.rf = zext nneg i32 %i.re to i64
  %i.rg = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.rf
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !37, !noalias !170
  %i.ri = zext i8 %i.rh to i32
  %i.rj = icmp eq i32 %.025420.i, %i.ri
  br i1 %i.rj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %scalar.ph84
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %indvars.iv.i37
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !12, !noalias !170 ; 2 uses
  %i.rm = fmul reassoc nsz arcp contract afn float %i.rl, %i.rl
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %indvars.iv.i37
  store float %i.rm, ptr %i.rn, align 4, !tbaa !12, !alias.scope !169
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %scalar.ph84
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i37, 1 ; 2 uses
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next.i38, %wide.trip.count.i21
  br i1 %exitcond31.not.i, label %._crit_edge16.i, label %scalar.ph84, !llvm.loop !159

wavelet_denoise.exit:                             ; preds = %bb.j, %bb.h, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @init(ptr noundef %0) local_unnamed_addr #4 {
.preheader:
  tail call void @dt_iop_default_init(ptr noundef %0) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !49  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %gep.3.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %gep.1.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store <8 x float> <float 0.000000e+00, float 2.500000e-01, float 5.000000e-01, float 7.500000e-01, float 1.000000e+00, float 0.000000e+00, float 2.500000e-01, float 5.000000e-01>, ptr %i.c, align 4, !tbaa !12
  store <8 x float> <float 7.500000e-01, float 1.000000e+00, float 0.000000e+00, float 2.500000e-01, float 5.000000e-01, float 7.500000e-01, float 1.000000e+00, float 0.000000e+00>, ptr %gep.1.3, align 4, !tbaa !12
  store <4 x float> <float 2.500000e-01, float 5.000000e-01, float 7.500000e-01, float 1.000000e+00>, ptr %gep.3.1, align 4, !tbaa !12
  ret void
}

declare void @dt_iop_default_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @reload_defaults(ptr nofree noundef captures(none) initializes((488, 492), (676, 680)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = tail call i32 @dt_image_is_raw(ptr noundef nonnull %i.c) #22
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  %i.e = zext i1 %.not to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i32 %i.e, ptr %i.f, align 8, !tbaa !173
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = select i1 %.not, ptr @.str.5, ptr @.str.6
  tail call void @gtk_stack_set_visible_child_name(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 676
  store i32 0, ptr %i.j, align 4, !tbaa !174
  ret void
}

declare i32 @dt_image_is_raw(ptr noundef) local_unnamed_addr #6

declare void @gtk_stack_set_visible_child_name(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #4 {
dt_draw_curve_calc_values.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !32  ; 13 uses
  %i.c = load float, ptr %1, align 4, !tbaa !175
  store float %i.c, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !53   ; 17 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !12
  %i.k = fadd reassoc nsz arcp contract afn float %i.j, -1.000000e+00
  %i.l = load float, ptr %i.f, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store float %i.k, ptr %i.m, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store float %i.l, ptr %i.n, align 4, !tbaa !56
  %i.o = load float, ptr %i.e, align 4, !tbaa !12
  %i.p = load float, ptr %i.f, align 4, !tbaa !12
  store float %i.o, ptr %i.m, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store float %i.p, ptr %i.q, align 4, !tbaa !56
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load float, ptr %i.t, align 4, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store float %i.s, ptr %i.v, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store float %i.u, ptr %i.w, align 4, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.aa = load float, ptr %i.z, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store float %i.y, ptr %i.ab, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store float %i.aa, ptr %i.ac, align 4, !tbaa !56
  %i.ad = load float, ptr %i.i, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.af = load float, ptr %i.ae, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store float %i.ad, ptr %i.ag, align 8, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  store float %i.af, ptr %i.ah, align 4, !tbaa !56
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
end_hunk_0
