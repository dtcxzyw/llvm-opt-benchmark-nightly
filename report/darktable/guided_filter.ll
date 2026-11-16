Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/guided_filter?download=true
inline.NumInlined: 16
inline.NumDeleted: 9
begin_hunk_0_@guided_filter:bb.a
  %i.bz = tail call ptr @dt_alloc_aligned(i64 noundef %i.by) #7, !noalias !34 ; 14 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bz, i64 64) ]
  %i.ca = tail call i64 @dt_round_size(i64 noundef %i.br, i64 noundef 16) #7
  %i.cb = mul i64 %i.ca, 36
  %i.cc = add i64 %i.cb, 60
  %i.cd = and i64 %i.cc, -64
  %i.ce = tail call ptr @dt_alloc_aligned(i64 noundef %i.cd) #7 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ce, i64 64) ]
  %i.cf = icmp slt i32 %i.bm, %i.bo
  br i1 %i.cf, label %.lr.ph324.i.us, label %._crit_edge325.i.us

.lr.ph324.i.us:                                   ; preds = %bb.d
  %i.cg = shl i32 %i.bp, 2                        ; 2 uses
  %i.ch = mul i32 %i.bp, 9                        ; 2 uses
  %i.ci = icmp slt i32 %i.bi, %i.bk
  br i1 %i.ci, label %.lr.ph.us.preheader.i.us, label %.lr.ph324.split.preheader.i.us

.lr.ph324.split.preheader.i.us:                   ; preds = %.lr.ph324.i.us
  %i.cj = zext nneg i32 %i.bm to i64
  %wide.trip.count.i.us = zext nneg i32 %i.bo to i64
  br label %.lr.ph324.split.i.us

.lr.ph324.split.i.us:                             ; preds = %.lr.ph324.split.i.us, %.lr.ph324.split.preheader.i.us
  %indvars.iv.i.us = phi i64 [ %i.cj, %.lr.ph324.split.preheader.i.us ], [ %indvars.iv.next.i.us, %.lr.ph324.split.i.us ] ; 2 uses
  %i.ck = trunc i64 %indvars.iv.i.us to i32
  %i.cl = sub i32 %i.ck, %i.bm                    ; 2 uses
  %i.cm = mul i32 %i.cl, %i.cg
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.cn
  %i.cp = mul i32 %i.cl, %i.ch
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cq
  tail call void @dt_box_mean_horizontal(ptr noundef %i.co, i64 noundef %i.br, i32 noundef 16777220, i64 noundef %.pre.i, ptr noundef %i.ce) #7
  tail call void @dt_box_mean_horizontal(ptr noundef %i.cr, i64 noundef %i.br, i32 noundef 16777225, i64 noundef %.pre.i, ptr noundef %i.ce) #7
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %._crit_edge325.i.us, label %.lr.ph324.split.i.us

.lr.ph.us.preheader.i.us:                         ; preds = %.lr.ph324.i.us
  %i.cs = zext nneg i32 %i.bi to i64              ; 11 uses
  %i.ct = zext nneg i32 %i.bm to i64              ; 4 uses
  %wide.trip.count348.i.us = zext i32 %i.bo to i64 ; 2 uses
  %wide.trip.count343.i.us = zext nneg i32 %i.bk to i64 ; 5 uses
  %i.cu = xor i64 %i.ct, -1
  %i.cv = add nsw i64 %i.cu, %wide.trip.count348.i.us
  %i.cw = mul i64 %i.t, %i.cv
  %i.cx = mul nuw nsw i64 %i.k, %i.ct             ; 2 uses
  %i.cy = add nuw nsw i64 %i.cx, %wide.trip.count343.i.us
  %i.cz = shl i64 %i.cy, 2
  %i.da = add i64 %i.cw, %i.cz                    ; 2 uses
  %scevgep199 = getelementptr i8, ptr %1, i64 %i.da ; 2 uses
  %i.db = mul nuw i64 %i.u, %i.ct
  %i.dc = shl nuw nsw i64 %i.cs, 2
  %i.dd = getelementptr i8, ptr %1, i64 %i.db
  %scevgep200 = getelementptr i8, ptr %i.dd, i64 %i.dc ; 2 uses
  %scevgep202 = getelementptr i8, ptr %scevgep201, i64 %i.da ; 2 uses
  %i.de = add nuw nsw i64 %i.cx, %i.cs
  %i.df = shl i64 %i.de, 2
  %scevgep203 = getelementptr i8, ptr %0, i64 %i.df ; 2 uses
  %i.dg = mul nuw nsw i64 %wide.trip.count343.i.us, 36
  %.neg = mul nsw i64 %i.cs, -36
  %i.dh = getelementptr i8, ptr %i.bz, i64 %.neg
  %scevgep204 = getelementptr i8, ptr %i.dh, i64 %i.dg
  %i.di = sub nsw i64 %wide.trip.count343.i.us, %i.cs
  %i.dj = shl nsw i64 %i.di, 4
  %scevgep205 = getelementptr i8, ptr %i.bx, i64 %i.dj
  %i.dk = sub nsw i64 %wide.trip.count343.i.us, %i.cs ; 3 uses
  %min.iters.check207 = icmp ugt i64 %i.dk, 7
  %or.cond = and i1 %min.iters.check207, %ident.check167.not
  %n.vec229 = and i64 %i.dk, -8                   ; 3 uses
  %i.dl = add nsw i64 %n.vec229, %i.cs
  %broadcast.splatinsert230 = insertelement <8 x i64> poison, i64 %i.cs, i64 0
  %broadcast.splat231 = shufflevector <8 x i64> %broadcast.splatinsert230, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <8 x i64> %broadcast.splat231, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n254 = icmp eq i64 %i.dk, %n.vec229
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %._crit_edge.us.i.us, %.lr.ph.us.preheader.i.us
  %indvars.iv345.i.us = phi i64 [ %i.ct, %.lr.ph.us.preheader.i.us ], [ %indvars.iv.next346.i.us, %._crit_edge.us.i.us ] ; 3 uses
  %i.dm = trunc i64 %indvars.iv345.i.us to i32
  %i.dn = sub i32 %i.dm, %i.bm                    ; 2 uses
  %i.do = mul i32 %i.dn, %i.cg
  %i.dp = sext i32 %i.do to i64                   ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.dp ; 6 uses
  %i.dr = mul i32 %i.dn, %i.ch
  %i.ds = sext i32 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ds ; 6 uses
  %i.du = mul nuw nsw i64 %indvars.iv345.i.us, %i.k ; 3 uses
  %i.dv = getelementptr [4 x i8], ptr %1, i64 %i.du ; 2 uses
  br i1 %or.cond, label %vector.memcheck208, label %scalar.ph206.preheader

vector.memcheck208:                               ; preds = %.lr.ph.us.i.us
  %i.dw = shl nsw i64 %i.dp, 2
  %i.dx = getelementptr i8, ptr %scevgep205, i64 %i.dw ; 3 uses
  %i.dy = shl nsw i64 %i.ds, 2
  %i.dz = getelementptr i8, ptr %scevgep204, i64 %i.dy ; 3 uses
  %bound0209 = icmp ult ptr %i.dq, %i.dz
  %bound1210 = icmp ult ptr %i.dt, %i.dx
  %found.conflict211 = and i1 %bound0209, %bound1210
  %bound0212 = icmp ult ptr %i.dq, %scevgep202
  %bound1213 = icmp ult ptr %scevgep203, %i.dx
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx215 = or i1 %found.conflict211, %found.conflict214
  %bound0216 = icmp ult ptr %i.dq, %scevgep199
  %bound1217 = icmp ult ptr %scevgep200, %i.dx
  %found.conflict218 = and i1 %bound0216, %bound1217
  %conflict.rdx219 = or i1 %conflict.rdx215, %found.conflict218
  %bound0220 = icmp ult ptr %i.dt, %scevgep202
  %bound1221 = icmp ult ptr %scevgep203, %i.dz
  %found.conflict222 = and i1 %bound0220, %bound1221
  %conflict.rdx223 = or i1 %conflict.rdx219, %found.conflict222
  %bound0224 = icmp ult ptr %i.dt, %scevgep199
  %bound1225 = icmp ult ptr %scevgep200, %i.dz
  %found.conflict226 = and i1 %bound0224, %bound1225
  %conflict.rdx227 = or i1 %conflict.rdx223, %found.conflict226
  br i1 %conflict.rdx227, label %scalar.ph206.preheader, label %vector.ph228

vector.ph228:                                     ; preds = %vector.memcheck208
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.du
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph228
  %index235 = phi i64 [ 0, %vector.ph228 ], [ %index.next251, %vector.body234 ] ; 2 uses
  %vec.ind236 = phi <8 x i64> [ %induction, %vector.ph228 ], [ %vec.ind.next252, %vector.body234 ] ; 2 uses
  %i.ea = add nuw i64 %index235, %i.cs            ; 2 uses
  %i.eb = sub nuw nsw <8 x i64> %vec.ind236, %broadcast.splat231 ; 2 uses
  %i.ec = extractelement <8 x i64> %i.eb, i64 0
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ea ; 3 uses
  %wide.load237 = load <8 x float>, ptr %gep, align 4, !tbaa !36, !alias.scope !37
  %i.ed = fmul reassoc nsz arcp contract afn <8 x float> %wide.load237, %broadcast.splat233 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %wide.load238 = load <8 x float>, ptr %i.ee, align 4, !tbaa !36, !alias.scope !37
  %i.ef = fmul reassoc nsz arcp contract afn <8 x float> %wide.load238, %broadcast.splat233 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load239 = load <8 x float>, ptr %i.eg, align 4, !tbaa !36, !alias.scope !37
  %i.eh = fmul reassoc nsz arcp contract afn <8 x float> %wide.load239, %broadcast.splat233 ; 6 uses
  %i.ei = getelementptr [4 x i8], ptr %i.dv, i64 %i.ea
  %wide.load240 = load <8 x float>, ptr %i.ei, align 4, !tbaa !36, !alias.scope !38 ; 4 uses
  %i.ej = shl nuw nsw i64 %i.ec, 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ej
  %i.el = shufflevector <8 x float> %wide.load240, <8 x float> %i.ed, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.em = shufflevector <8 x float> %i.ef, <8 x float> %i.eh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec241 = shufflevector <16 x float> %i.el, <16 x float> %i.em, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec241, ptr %i.ek, align 16, !tbaa !36, !alias.scope !39, !noalias !40
  %i.en = fmul reassoc nsz arcp contract afn <8 x float> %wide.load240, %i.ed
  %i.eo = mul nuw nsw <8 x i64> %i.eb, splat (i64 36)
  %wide.gep242 = getelementptr inbounds nuw i8, ptr %i.dt, <8 x i64> %i.eo ; 9 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.en, <8 x ptr> align 4 %wide.gep242, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.ep = fmul reassoc nsz arcp contract afn <8 x float> %wide.load240, %i.ef
  %wide.gep243 = getelementptr i8, <8 x ptr> %wide.gep242, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ep, <8 x ptr> align 4 %wide.gep243, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.eq = fmul reassoc nsz arcp contract afn <8 x float> %i.eh, %wide.load240
  %wide.gep244 = getelementptr i8, <8 x ptr> %wide.gep242, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.eq, <8 x ptr> align 4 %wide.gep244, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.er = fmul reassoc nsz arcp contract afn <8 x float> %i.ed, %i.ed
  %wide.gep245 = getelementptr i8, <8 x ptr> %wide.gep242, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.er, <8 x ptr> align 4 %wide.gep245, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.es = fmul reassoc nsz arcp contract afn <8 x float> %i.ef, %i.ed
  %wide.gep246 = getelementptr i8, <8 x ptr> %wide.gep242, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.es, <8 x ptr> align 4 %wide.gep246, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.et = fmul reassoc nsz arcp contract afn <8 x float> %i.eh, %i.ed
  %wide.gep247 = getelementptr i8, <8 x ptr> %wide.gep242, i64 20
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.et, <8 x ptr> align 4 %wide.gep247, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.eu = fmul reassoc nsz arcp contract afn <8 x float> %i.ef, %i.ef
  %wide.gep248 = getelementptr i8, <8 x ptr> %wide.gep242, i64 24
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.eu, <8 x ptr> align 4 %wide.gep248, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.ev = fmul reassoc nsz arcp contract afn <8 x float> %i.eh, %i.ef
  %wide.gep249 = getelementptr i8, <8 x ptr> %wide.gep242, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ev, <8 x ptr> align 4 %wide.gep249, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.ew = fmul reassoc nsz arcp contract afn <8 x float> %i.eh, %i.eh
  %wide.gep250 = getelementptr i8, <8 x ptr> %wide.gep242, i64 32
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ew, <8 x ptr> align 4 %wide.gep250, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %index.next251 = add nuw i64 %index235, 8       ; 2 uses
  %vec.ind.next252 = add nuw nsw <8 x i64> %vec.ind236, splat (i64 8)
  %i.ex = icmp eq i64 %index.next251, %n.vec229
  br i1 %i.ex, label %middle.block253, label %vector.body234, !llvm.loop !20

middle.block253:                                  ; preds = %vector.body234
  br i1 %cmp.n254, label %._crit_edge.us.i.us, label %scalar.ph206.preheader

scalar.ph206.preheader:                           ; preds = %vector.memcheck208, %.lr.ph.us.i.us, %middle.block253
  %indvars.iv339.i.us.ph = phi i64 [ %i.cs, %vector.memcheck208 ], [ %i.cs, %.lr.ph.us.i.us ], [ %i.dl, %middle.block253 ]
  br label %scalar.ph206

scalar.ph206:                                     ; preds = %scalar.ph206.preheader, %scalar.ph206
  %indvars.iv339.i.us = phi i64 [ %indvars.iv.next340.i.us, %scalar.ph206 ], [ %indvars.iv339.i.us.ph, %scalar.ph206.preheader ] ; 4 uses
  %i.ey = sub nuw nsw i64 %indvars.iv339.i.us, %i.cs ; 2 uses
  %i.ez = add nuw nsw i64 %indvars.iv339.i.us, %i.du
  %i.fa = mul i64 %i.ez, %i.l
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !36 ; 2 uses
  %i.fe = getelementptr [4 x i8], ptr %i.dv, i64 %indvars.iv339.i.us
  %.idx311.us.i.us = shl nuw nsw i64 %i.ey, 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx311.us.i.us ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %.idx312.us.i.us = mul nuw nsw i64 %i.ey, 36
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx312.us.i.us ; 2 uses
  %i.fj = load <2 x float>, ptr %i.fb, align 4, !tbaa !36
  %i.fk = load float, ptr %i.fe, align 4, !tbaa !36 ; 2 uses
  %i.fl = insertelement <4 x float> poison, float %i.fk, i64 0
  %i.fm = insertelement <4 x float> %i.fl, float %i.fd, i64 1
  %i.fn = shufflevector <2 x float> %i.fj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fo = shufflevector <4 x float> %i.fm, <4 x float> %i.fn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fp = fmul reassoc arcp contract afn <4 x float> %i.fo, %i.w ; 3 uses
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 1, i32 3, i32 1>
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fd, %8 ; 3 uses
  store float %i.fk, ptr %i.ff, align 16, !tbaa !36
  %i.fs = shufflevector <4 x float> %i.fp, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %i.fs, ptr %i.fg, align 4, !tbaa !36
  store float %i.fr, ptr %i.fh, align 4, !tbaa !36
  %11 = shufflevector <4 x float> %i.fp, <4 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 2, i32 2, i32 2, i32 3, i32 3>
  %i.ft = fmul reassoc nsz arcp contract afn <8 x float> %i.fq, %11
  store <8 x float> %i.ft, ptr %i.fi, align 4, !tbaa !36
  %i.fu = fmul reassoc nsz arcp contract afn float %i.fr, %i.fr
  %i.fv = getelementptr i8, ptr %i.fi, i64 32
  store float %i.fu, ptr %i.fv, align 4, !tbaa !36
  %indvars.iv.next340.i.us = add nuw nsw i64 %indvars.iv339.i.us, 1 ; 2 uses
  %exitcond344.not.i.us = icmp eq i64 %indvars.iv.next340.i.us, %wide.trip.count343.i.us
  br i1 %exitcond344.not.i.us, label %._crit_edge.us.i.us, label %scalar.ph206, !llvm.loop !21

._crit_edge.us.i.us:                              ; preds = %scalar.ph206, %middle.block253
  tail call void @dt_box_mean_horizontal(ptr noundef nonnull %i.dq, i64 noundef %i.br, i32 noundef 16777220, i64 noundef %.pre.i, ptr noundef %i.ce) #7
  tail call void @dt_box_mean_horizontal(ptr noundef nonnull %i.dt, i64 noundef %i.br, i32 noundef 16777225, i64 noundef %.pre.i, ptr noundef %i.ce) #7
  %indvars.iv.next346.i.us = add nuw nsw i64 %indvars.iv345.i.us, 1 ; 2 uses
  %exitcond349.not.i.us = icmp eq i64 %indvars.iv.next346.i.us, %wide.trip.count348.i.us
  br i1 %exitcond349.not.i.us, label %._crit_edge325.i.us, label %.lr.ph.us.i.us

._crit_edge325.i.us:                              ; preds = %.lr.ph324.split.i.us, %._crit_edge.us.i.us, %bb.d
  tail call void @free(ptr noundef %i.ce) #7
  tail call void @dt_box_mean_vertical(ptr noundef %i.bx, i64 noundef %i.bs, i64 noundef %i.br, i32 noundef 16777220, i64 noundef %.pre.i) #7
  tail call void @dt_box_mean_vertical(ptr noundef %i.bz, i64 noundef %i.bs, i64 noundef %i.br, i32 noundef 16777225, i64 noundef %.pre.i) #7
  %.not.i.us = icmp eq i64 %i.bt, 0
  br i1 %.not.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %._crit_edge325.i.us
  %min.iters.check127 = icmp ult i64 %i.bt, 8
  br i1 %min.iters.check127, label %.lr.ph.i.us.preheader257, label %vector.scevcheck117

vector.scevcheck117:                              ; preds = %.lr.ph.i.us.preheader
  %i.fw = add i64 %i.bt, -1
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fw, i64 36) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 3 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.fx = getelementptr i8, ptr %i.bz, i64 %mul.result
  %i.fy = icmp ult ptr %i.fx, %i.bz
  %scevgep118 = getelementptr i8, ptr %i.bz, i64 4 ; 2 uses
  %i.fz = getelementptr i8, ptr %scevgep118, i64 %mul.result
  %i.ga = icmp ult ptr %i.fz, %scevgep118
  %scevgep119 = getelementptr i8, ptr %i.bz, i64 8 ; 2 uses
  %i.gb = getelementptr i8, ptr %scevgep119, i64 %mul.result
  %i.gc = icmp ult ptr %i.gb, %scevgep119
  %i.gd = or i1 %i.gc, %mul.overflow
  %i.ge = or i1 %i.ga, %i.fy
  %i.gf = or i1 %i.ge, %i.gd
  br i1 %i.gf, label %.lr.ph.i.us.preheader257, label %vector.memcheck128

vector.memcheck128:                               ; preds = %vector.scevcheck117
  %i.gg = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.gh = shl i64 %i.gg, 4
  %i.gi = getelementptr i8, ptr %i.bx, i64 %i.gh
  %i.gj = mul i64 %i.gg, 36
  %i.gk = getelementptr i8, ptr %i.bz, i64 %i.gj
  %bound0129 = icmp ult ptr %i.bx, %i.gk
  %bound1130 = icmp ult ptr %i.bz, %i.gi
  %found.conflict131 = and i1 %bound0129, %bound1130
  br i1 %found.conflict131, label %.lr.ph.i.us.preheader257, label %vector.ph132

vector.ph132:                                     ; preds = %vector.memcheck128
  %n.vec133 = and i64 %i.bt, -8                   ; 3 uses
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph132
  %index137 = phi i64 [ 0, %vector.ph132 ], [ %index.next162, %vector.body136 ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph132 ], [ %vec.ind.next, %vector.body136 ] ; 2 uses
  %i.gl = shl i64 %index137, 4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.gl ; 2 uses
  %wide.vec138 = load <32 x float>, ptr %i.gm, align 64, !tbaa !36, !alias.scope !45, !noalias !46 ; 4 uses
  %strided.vec139 = shufflevector <32 x float> %wide.vec138, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %strided.vec140 = shufflevector <32 x float> %wide.vec138, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 6 uses
  %strided.vec141 = shufflevector <32 x float> %wide.vec138, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 6 uses
  %strided.vec142 = shufflevector <32 x float> %wide.vec138, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 6 uses
  %i.gn = mul <8 x i64> %vec.ind, splat (i64 36)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.bz, <8 x i64> %i.gn ; 9 uses
  %wide.gep143 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep143, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.go = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec140, %strided.vec140
  %i.gp = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.go
  %i.gq = fadd reassoc nsz arcp contract afn <8 x float> %i.gp, %broadcast.splat135 ; 3 uses
  %wide.gep144 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  %wide.masked.gather145 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep144, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.gr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec141, %strided.vec140
  %i.gs = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather145, %i.gr ; 6 uses
  %wide.gep146 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  %wide.masked.gather147 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep146, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.gt = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec142, %strided.vec140
  %i.gu = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather147, %i.gt ; 6 uses
  %wide.gep148 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  %wide.masked.gather149 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep148, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.gv = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec141, %strided.vec141
  %i.gw = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather149, %i.gv
  %i.gx = fadd reassoc nsz arcp contract afn <8 x float> %i.gw, %broadcast.splat135 ; 3 uses
  %wide.gep150 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  %wide.masked.gather151 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep150, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.gy = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec142, %strided.vec141
  %i.gz = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather151, %i.gy ; 6 uses
  %wide.gep152 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  %wide.masked.gather153 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep152, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.ha = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec142, %strided.vec142
  %i.hb = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather153, %i.ha
  %i.hc = fadd reassoc nsz arcp contract afn <8 x float> %i.hb, %broadcast.splat135 ; 3 uses
  %i.hd = fmul reassoc nsz arcp contract afn <8 x float> %i.hc, %i.gx
  %i.he = fmul reassoc nsz arcp contract afn <8 x float> %i.gz, %i.gz
  %i.hf = fsub reassoc nsz arcp contract afn <8 x float> %i.hd, %i.he ; 2 uses
  %i.hg = fmul reassoc nsz arcp contract afn <8 x float> %i.hf, %i.gq
  %i.hh = fmul reassoc nsz arcp contract afn <8 x float> %i.hc, %i.gs
  %i.hi = fmul reassoc nsz arcp contract afn <8 x float> %i.gz, %i.gu
  %i.hj = fsub reassoc nsz arcp contract afn <8 x float> %i.hh, %i.hi ; 2 uses
  %i.hk = fmul reassoc nsz arcp contract afn <8 x float> %i.hj, %i.gs
  %i.hl = fsub reassoc nsz arcp contract afn <8 x float> %i.hg, %i.hk
  %i.hm = fmul reassoc nsz arcp contract afn <8 x float> %i.gz, %i.gs
  %i.hn = fmul reassoc nsz arcp contract afn <8 x float> %i.gx, %i.gu
  %i.ho = fsub reassoc nsz arcp contract afn <8 x float> %i.hm, %i.hn ; 2 uses
  %i.hp = fmul reassoc nsz arcp contract afn <8 x float> %i.ho, %i.gu
  %i.hq = fadd reassoc nsz arcp contract afn <8 x float> %i.hl, %i.hp ; 4 uses
  %i.hr = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hq)
  %i.hs = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.hr, splat (float f0x35000000) ; 7 uses
  %wide.masked.gather154 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.hs, <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.ht = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec140, %strided.vec139
  %i.hu = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather154, %i.ht ; 3 uses
  %wide.gep155 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather156 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep155, <8 x i1> %i.hs, <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.hv = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec141, %strided.vec139
  %i.hw = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather156, %i.hv ; 3 uses
  %wide.gep157 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather158 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep157, <8 x i1> %i.hs, <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.hx = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec142, %strided.vec139
  %i.hy = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather158, %i.hx ; 3 uses
  %i.hz = fmul reassoc nsz arcp contract afn <8 x float> %i.hu, %i.hf
  %i.ia = fmul reassoc nsz arcp contract afn <8 x float> %i.hw, %i.hc
  %i.ib = fmul reassoc nsz arcp contract afn <8 x float> %i.hy, %i.gz
  %i.ic = fsub reassoc nsz arcp contract afn <8 x float> %i.ia, %i.ib ; 2 uses
  %i.id = fmul reassoc nsz arcp contract afn <8 x float> %i.hw, %i.gz ; 2 uses
  %i.ie = fmul reassoc nsz arcp contract afn <8 x float> %i.hy, %i.gx ; 2 uses
  %i.if = fsub reassoc nsz arcp contract afn <8 x float> %i.id, %i.ie
  %i.ig = fmul reassoc nsz arcp contract afn <8 x float> %i.if, %i.gu
  %i.ih = fadd reassoc nsz arcp contract afn <8 x float> %i.ig, %i.hz
  %i.ii = fmul reassoc nsz arcp contract afn <8 x float> %i.gs, %i.ic
  %i.ij = fsub reassoc nsz arcp contract afn <8 x float> %i.ih, %i.ii
  %i.ik = fmul reassoc nsz arcp contract afn <8 x float> %i.ic, %i.gq
  %i.il = fmul reassoc nsz arcp contract afn <8 x float> %i.hj, %i.hu
  %i.im = fsub reassoc nsz arcp contract afn <8 x float> %i.ik, %i.il
  %i.in = fmul reassoc nsz arcp contract afn <8 x float> %i.hy, %i.gs
  %i.io = fmul reassoc nsz arcp contract afn <8 x float> %i.hw, %i.gu
  %i.ip = fsub reassoc nsz arcp contract afn <8 x float> %i.in, %i.io ; 2 uses
  %i.iq = fmul reassoc nsz arcp contract afn <8 x float> %i.ip, %i.gu
  %i.ir = fadd reassoc nsz arcp contract afn <8 x float> %i.im, %i.iq
  %i.is = fsub reassoc nsz arcp contract afn <8 x float> %i.ie, %i.id
  %i.it = fmul reassoc nsz arcp contract afn <8 x float> %i.is, %i.gq
  %i.iu = fmul reassoc nsz arcp contract afn <8 x float> %i.hu, %i.ho
  %i.iv = fadd reassoc nsz arcp contract afn <8 x float> %i.it, %i.iu
  %i.iw = fmul reassoc nsz arcp contract afn <8 x float> %i.gs, %i.ip
  %i.ix = fsub reassoc nsz arcp contract afn <8 x float> %i.iv, %i.iw
  %i.iy = fdiv reassoc nsz arcp contract afn <8 x float> %i.ij, %i.hq ; 2 uses
  %i.iz = fdiv reassoc nsz arcp contract afn <8 x float> %i.ir, %i.hq ; 2 uses
  %i.ja = fdiv reassoc nsz arcp contract afn <8 x float> %i.ix, %i.hq ; 2 uses
  %i.jb = fmul reassoc nsz arcp contract afn <8 x float> %i.iz, %strided.vec141
  %i.jc = fmul reassoc nsz arcp contract afn <8 x float> %i.ja, %strided.vec142
  %i.jd = fmul reassoc nsz arcp contract afn <8 x float> %i.iy, %strided.vec140
  %i.je = fadd reassoc nsz arcp contract afn <8 x float> %i.jb, %i.jc
  %i.jf = fadd reassoc nsz arcp contract afn <8 x float> %i.je, %i.jd
  %i.jg = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec139, %i.jf
  %predphi = select nsz <8 x i1> %i.hs, <8 x float> %i.iy, <8 x float> zeroinitializer
  %predphi159 = select nsz <8 x i1> %i.hs, <8 x float> %i.iz, <8 x float> zeroinitializer
  %predphi160 = select nsz <8 x i1> %i.hs, <8 x float> %i.ja, <8 x float> zeroinitializer
  %predphi161 = select nsz <8 x i1> %i.hs, <8 x float> %i.jg, <8 x float> %strided.vec139
  %i.jh = shufflevector <8 x float> %predphi, <8 x float> %predphi159, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ji = shufflevector <8 x float> %predphi160, <8 x float> %predphi161, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.jh, <16 x float> %i.ji, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.gm, align 64, !tbaa !36, !alias.scope !45, !noalias !46
  %index.next162 = add nuw i64 %index137, 8       ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.jj = icmp eq i64 %index.next162, %n.vec133
  br i1 %i.jj, label %middle.block163, label %vector.body136, !llvm.loop !25

middle.block163:                                  ; preds = %vector.body136
  %cmp.n164 = icmp eq i64 %i.bt, %n.vec133
  br i1 %cmp.n164, label %._crit_edge.i.us, label %.lr.ph.i.us.preheader257

.lr.ph.i.us.preheader257:                         ; preds = %vector.memcheck128, %vector.scevcheck117, %.lr.ph.i.us.preheader, %middle.block163
  %.0273326.i.us.ph = phi i64 [ 0, %vector.memcheck128 ], [ 0, %vector.scevcheck117 ], [ 0, %.lr.ph.i.us.preheader ], [ %n.vec133, %middle.block163 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader257, %bb.f
  %.0273326.i.us = phi i64 [ %i.ne, %bb.f ], [ %.0273326.i.us.ph, %.lr.ph.i.us.preheader257 ] ; 3 uses
  %.idx308.i.us = shl i64 %.0273326.i.us, 4
  %i.jk = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx308.i.us ; 5 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 12 ; 2 uses
  %.idx309.i.us = mul i64 %.0273326.i.us, 36
  %i.jo = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx309.i.us ; 9 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 20
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 28
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.jv = load float, ptr %i.jk, align 16, !tbaa !36 ; 5 uses
  %i.jw = load float, ptr %i.jl, align 4, !tbaa !36 ; 6 uses
  %i.jx = load float, ptr %i.jm, align 8, !tbaa !36 ; 6 uses
  %i.jy = load float, ptr %i.jn, align 4, !tbaa !36 ; 6 uses
  %i.jz = load float, ptr %i.jp, align 4, !tbaa !36
end_hunk_0
