Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/guided_filter?download=true
inline.NumInlined: 16
inline.NumDeleted: 9
begin_hunk_0_@guided_filter:bb.a
  %i.bw = mul i64 %i.bv, %i.bt                    ; 2 uses
  %i.bx = shl i64 %i.bw, 2
  %i.by = tail call ptr @dt_alloc_aligned(i64 noundef %i.bx) #7, !noalias !33 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.by, i64 64) ]
  %i.bz = mul i64 %i.bw, 9
  %i.ca = tail call ptr @dt_alloc_aligned(i64 noundef %i.bz) #7, !noalias !34 ; 14 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ca, i64 64) ]
  %i.cb = tail call i64 @dt_round_size(i64 noundef %i.bs, i64 noundef 16) #7
  %i.cc = mul i64 %i.cb, 36
  %i.cd = add i64 %i.cc, 60
  %i.ce = and i64 %i.cd, -64
  %i.cf = tail call ptr @dt_alloc_aligned(i64 noundef %i.ce) #7 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cf, i64 64) ]
  %i.cg = icmp slt i32 %i.bn, %i.bp
  br i1 %i.cg, label %.lr.ph325.i.us, label %._crit_edge326.i.us

.lr.ph325.i.us:                                   ; preds = %bb.d
  %i.ch = shl i32 %i.bq, 2                        ; 3 uses
  %i.ci = mul i32 %i.bq, 9                        ; 3 uses
  %i.cj = icmp slt i32 %i.bj, %i.bl
  br i1 %i.cj, label %.lr.ph.us.preheader.i.us, label %.lr.ph325.split.preheader.i.us

.lr.ph325.split.preheader.i.us:                   ; preds = %.lr.ph325.i.us
  %i.ck = zext nneg i32 %i.bn to i64
  %wide.trip.count.i.us = zext nneg i32 %i.bp to i64
  br label %.lr.ph325.split.i.us

.lr.ph325.split.i.us:                             ; preds = %.lr.ph325.split.i.us, %.lr.ph325.split.preheader.i.us
  %indvars.iv.i.us = phi i64 [ %i.ck, %.lr.ph325.split.preheader.i.us ], [ %indvars.iv.next.i.us, %.lr.ph325.split.i.us ] ; 2 uses
  %i.cl = trunc i64 %indvars.iv.i.us to i32
  %i.cm = sub i32 %i.cl, %i.bn                    ; 2 uses
  %i.cn = mul i32 %i.cm, %i.ch
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.co
  %i.cq = mul i32 %i.cm, %i.ci
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cr
  tail call void @dt_box_mean_horizontal(ptr noundef %i.cp, i64 noundef %i.bs, i32 noundef 16777220, i64 noundef %.pre.i, ptr noundef %i.cf) #7
  tail call void @dt_box_mean_horizontal(ptr noundef %i.cs, i64 noundef %i.bs, i32 noundef 16777225, i64 noundef %.pre.i, ptr noundef %i.cf) #7
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %._crit_edge326.i.us, label %.lr.ph325.split.i.us

.lr.ph.us.preheader.i.us:                         ; preds = %.lr.ph325.i.us
  %i.ct = zext nneg i32 %i.bj to i64              ; 11 uses
  %i.cu = zext nneg i32 %i.bn to i64              ; 4 uses
  %wide.trip.count349.i.us = zext i32 %i.bp to i64 ; 2 uses
  %wide.trip.count344.i.us = zext nneg i32 %i.bl to i64 ; 5 uses
  %i.cv = sub nsw i64 %wide.trip.count344.i.us, %i.ct
  %i.cw = shl nsw i64 %i.cv, 4
  %scevgep150 = getelementptr i8, ptr %i.by, i64 %i.cw
  %i.cx = mul nuw nsw i64 %wide.trip.count344.i.us, 36
  %.neg = mul nsw i64 %i.ct, -36
  %i.cy = getelementptr i8, ptr %i.ca, i64 %.neg
  %scevgep154 = getelementptr i8, ptr %i.cy, i64 %i.cx
  %i.cz = mul nuw nsw i64 %i.k, %i.cu             ; 2 uses
  %i.da = add nuw nsw i64 %i.cz, %i.ct
  %i.db = shl i64 %i.da, 2
  %scevgep156 = getelementptr i8, ptr %0, i64 %i.db ; 2 uses
  %i.dc = xor i64 %i.cu, -1
  %i.dd = add nsw i64 %i.dc, %wide.trip.count349.i.us
  %i.de = mul i64 %i.t, %i.dd
  %i.df = add nuw nsw i64 %i.cz, %wide.trip.count344.i.us
  %i.dg = shl i64 %i.df, 2
  %i.dh = add i64 %i.de, %i.dg                    ; 2 uses
  %scevgep158 = getelementptr i8, ptr %scevgep157, i64 %i.dh ; 2 uses
  %i.di = mul nuw i64 %i.u, %i.cu
  %i.dj = shl nuw nsw i64 %i.ct, 2
  %i.dk = getelementptr i8, ptr %1, i64 %i.di
  %scevgep159 = getelementptr i8, ptr %i.dk, i64 %i.dj ; 2 uses
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.dh ; 2 uses
  %i.dl = sub nsw i64 %wide.trip.count344.i.us, %i.ct ; 3 uses
  %min.iters.check181 = icmp ugt i64 %i.dl, 7
  %or.cond = and i1 %min.iters.check181, %ident.check148.not
  %n.vec183 = and i64 %i.dl, -8                   ; 3 uses
  %i.dm = add nsw i64 %n.vec183, %i.ct
  %broadcast.splatinsert184 = insertelement <8 x i64> poison, i64 %i.ct, i64 0
  %broadcast.splat185 = shufflevector <8 x i64> %broadcast.splatinsert184, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <8 x i64> %broadcast.splat185, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n208 = icmp eq i64 %i.dl, %n.vec183
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %._crit_edge.us.i.us, %.lr.ph.us.preheader.i.us
  %indvar151 = phi i32 [ %indvar.next152, %._crit_edge.us.i.us ], [ 0, %.lr.ph.us.preheader.i.us ] ; 3 uses
  %indvars.iv346.i.us = phi i64 [ %indvars.iv.next347.i.us, %._crit_edge.us.i.us ], [ %i.cu, %.lr.ph.us.preheader.i.us ] ; 3 uses
  %i.dn = trunc i64 %indvars.iv346.i.us to i32
  %i.do = sub i32 %i.dn, %i.bn                    ; 2 uses
  %i.dp = mul i32 %i.do, %i.ch
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dq ; 6 uses
  %i.ds = mul i32 %i.do, %i.ci
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr [4 x i8], ptr %i.ca, i64 %i.dt ; 6 uses
  %i.dv = mul nuw nsw i64 %indvars.iv346.i.us, %i.k ; 3 uses
  %i.dw = getelementptr [4 x i8], ptr %1, i64 %i.dv ; 2 uses
  br i1 %or.cond, label %vector.memcheck149, label %scalar.ph180.preheader

vector.memcheck149:                               ; preds = %.lr.ph.us.i.us
  %i.dx = mul i32 %i.ci, %indvar151
  %i.dy = sext i32 %i.dx to i64
  %i.dz = shl nsw i64 %i.dy, 2
  %scevgep155 = getelementptr i8, ptr %scevgep154, i64 %i.dz ; 3 uses
  %i.ea = mul i32 %i.ch, %indvar151
  %i.eb = sext i32 %i.ea to i64
  %i.ec = shl nsw i64 %i.eb, 2
  %scevgep153 = getelementptr i8, ptr %scevgep150, i64 %i.ec ; 3 uses
  %bound0161 = icmp ult ptr %i.dr, %scevgep155
  %bound1162 = icmp ult ptr %i.du, %scevgep153
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0164 = icmp ult ptr %i.dr, %scevgep158
  %bound1165 = icmp ult ptr %scevgep156, %scevgep153
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %found.conflict163, %found.conflict166
  %bound0168 = icmp ult ptr %i.dr, %scevgep160
  %bound1169 = icmp ult ptr %scevgep159, %scevgep153
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx167, %found.conflict170
  %bound0172 = icmp ult ptr %i.du, %scevgep158
  %bound1173 = icmp ult ptr %scevgep156, %scevgep155
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %conflict.rdx171, %found.conflict174
  %bound0176 = icmp ult ptr %i.du, %scevgep160
  %bound1177 = icmp ult ptr %scevgep159, %scevgep155
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx175, %found.conflict178
  br i1 %conflict.rdx179, label %scalar.ph180.preheader, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck149
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.dv
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph182
  %index189 = phi i64 [ 0, %vector.ph182 ], [ %index.next205, %vector.body188 ] ; 2 uses
  %vec.ind190 = phi <8 x i64> [ %induction, %vector.ph182 ], [ %vec.ind.next206, %vector.body188 ] ; 2 uses
  %i.ed = add nuw i64 %index189, %i.ct            ; 2 uses
  %i.ee = sub nuw nsw <8 x i64> %vec.ind190, %broadcast.splat185 ; 2 uses
  %i.ef = extractelement <8 x i64> %i.ee, i64 0
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ed ; 3 uses
  %wide.load191 = load <8 x float>, ptr %gep, align 4, !tbaa !36, !alias.scope !37
  %i.eg = fmul reassoc nsz arcp contract afn <8 x float> %wide.load191, %broadcast.splat187 ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %wide.load192 = load <8 x float>, ptr %i.eh, align 4, !tbaa !36, !alias.scope !37
  %i.ei = fmul reassoc nsz arcp contract afn <8 x float> %wide.load192, %broadcast.splat187 ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load193 = load <8 x float>, ptr %i.ej, align 4, !tbaa !36, !alias.scope !37
  %i.ek = fmul reassoc nsz arcp contract afn <8 x float> %wide.load193, %broadcast.splat187 ; 6 uses
  %i.el = getelementptr [4 x i8], ptr %i.dw, i64 %i.ed
  %wide.load194 = load <8 x float>, ptr %i.el, align 4, !tbaa !36, !alias.scope !38 ; 4 uses
  %i.em = shl nuw nsw i64 %i.ef, 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.em
  %i.eo = shufflevector <8 x float> %wide.load194, <8 x float> %i.eg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ep = shufflevector <8 x float> %i.ei, <8 x float> %i.ek, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec195 = shufflevector <16 x float> %i.eo, <16 x float> %i.ep, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec195, ptr %i.en, align 16, !tbaa !36, !alias.scope !39, !noalias !40
  %i.eq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load194, %i.eg
  %i.er = mul nuw nsw <8 x i64> %i.ee, splat (i64 36)
  %wide.gep196 = getelementptr inbounds nuw i8, ptr %i.du, <8 x i64> %i.er ; 9 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.eq, <8 x ptr> align 4 %wide.gep196, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.es = fmul reassoc nsz arcp contract afn <8 x float> %wide.load194, %i.ei
  %wide.gep197 = getelementptr i8, <8 x ptr> %wide.gep196, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.es, <8 x ptr> align 4 %wide.gep197, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.et = fmul reassoc nsz arcp contract afn <8 x float> %i.ek, %wide.load194
  %wide.gep198 = getelementptr i8, <8 x ptr> %wide.gep196, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.et, <8 x ptr> align 4 %wide.gep198, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.eu = fmul reassoc nsz arcp contract afn <8 x float> %i.eg, %i.eg
  %wide.gep199 = getelementptr i8, <8 x ptr> %wide.gep196, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.eu, <8 x ptr> align 4 %wide.gep199, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.ev = fmul reassoc nsz arcp contract afn <8 x float> %i.ei, %i.eg
  %wide.gep200 = getelementptr i8, <8 x ptr> %wide.gep196, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ev, <8 x ptr> align 4 %wide.gep200, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.ew = fmul reassoc nsz arcp contract afn <8 x float> %i.ek, %i.eg
  %wide.gep201 = getelementptr i8, <8 x ptr> %wide.gep196, i64 20
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ew, <8 x ptr> align 4 %wide.gep201, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.ex = fmul reassoc nsz arcp contract afn <8 x float> %i.ei, %i.ei
  %wide.gep202 = getelementptr i8, <8 x ptr> %wide.gep196, i64 24
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ex, <8 x ptr> align 4 %wide.gep202, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.ey = fmul reassoc nsz arcp contract afn <8 x float> %i.ek, %i.ei
  %wide.gep203 = getelementptr i8, <8 x ptr> %wide.gep196, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ey, <8 x ptr> align 4 %wide.gep203, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.ez = fmul reassoc nsz arcp contract afn <8 x float> %i.ek, %i.ek
  %wide.gep204 = getelementptr i8, <8 x ptr> %wide.gep196, i64 32
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ez, <8 x ptr> align 4 %wide.gep204, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %index.next205 = add nuw i64 %index189, 8       ; 2 uses
  %vec.ind.next206 = add nuw nsw <8 x i64> %vec.ind190, splat (i64 8)
  %i.fa = icmp eq i64 %index.next205, %n.vec183
  br i1 %i.fa, label %middle.block207, label %vector.body188, !llvm.loop !20

middle.block207:                                  ; preds = %vector.body188
  br i1 %cmp.n208, label %._crit_edge.us.i.us, label %scalar.ph180.preheader

scalar.ph180.preheader:                           ; preds = %vector.memcheck149, %.lr.ph.us.i.us, %middle.block207
  %indvars.iv340.i.us.ph = phi i64 [ %i.ct, %vector.memcheck149 ], [ %i.ct, %.lr.ph.us.i.us ], [ %i.dm, %middle.block207 ]
  br label %scalar.ph180

scalar.ph180:                                     ; preds = %scalar.ph180.preheader, %scalar.ph180
  %indvars.iv340.i.us = phi i64 [ %indvars.iv.next341.i.us, %scalar.ph180 ], [ %indvars.iv340.i.us.ph, %scalar.ph180.preheader ] ; 4 uses
  %i.fb = sub nuw nsw i64 %indvars.iv340.i.us, %i.ct ; 2 uses
  %i.fc = add nuw nsw i64 %indvars.iv340.i.us, %i.dv
  %i.fd = mul i64 %i.fc, %i.l
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fd ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.ff = load float, ptr %11, align 4, !tbaa !36 ; 2 uses
  %12 = getelementptr [4 x i8], ptr %i.dw, i64 %indvars.iv340.i.us
  %.idx312.us.i.us = shl nuw nsw i64 %i.fb, 4
  %13 = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx312.us.i.us ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 4
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 12
  %.idx313.us.i.us = mul nuw nsw i64 %i.fb, 36
  %i.fh = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx313.us.i.us ; 2 uses
  %i.fi = load <2 x float>, ptr %i.fe, align 4, !tbaa !36
  %i.fj = load float, ptr %12, align 4, !tbaa !36 ; 2 uses
  %i.fk = insertelement <4 x float> poison, float %i.fj, i64 0
  %i.fl = insertelement <4 x float> %i.fk, float %i.ff, i64 1
  %i.fm = shufflevector <2 x float> %i.fi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fn = shufflevector <4 x float> %i.fl, <4 x float> %i.fm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fo = fmul reassoc nsz arcp contract afn <4 x float> %i.fn, %i.w ; 3 uses
  %15 = shufflevector <4 x float> %i.fo, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 1, i32 3, i32 1>
  %16 = fmul reassoc nsz arcp contract afn float %i.ff, %8 ; 3 uses
  store float %i.fj, ptr %13, align 16, !tbaa !36
  %17 = shufflevector <4 x float> %i.fo, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %17, ptr %i.fg, align 4, !tbaa !36
  store float %16, ptr %14, align 4, !tbaa !36
  %18 = shufflevector <4 x float> %i.fo, <4 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 2, i32 2, i32 2, i32 3, i32 3>
  %i.fp = fmul reassoc nsz arcp contract afn <8 x float> %15, %18
  store <8 x float> %i.fp, ptr %i.fh, align 4, !tbaa !36
  %19 = fmul reassoc nsz arcp contract afn float %16, %16
  %i.fq = getelementptr i8, ptr %i.fh, i64 32
  store float %19, ptr %i.fq, align 4, !tbaa !36
  %indvars.iv.next341.i.us = add nuw nsw i64 %indvars.iv340.i.us, 1 ; 2 uses
  %exitcond345.not.i.us = icmp eq i64 %indvars.iv.next341.i.us, %wide.trip.count344.i.us
  br i1 %exitcond345.not.i.us, label %._crit_edge.us.i.us, label %scalar.ph180, !llvm.loop !21

._crit_edge.us.i.us:                              ; preds = %scalar.ph180, %middle.block207
  tail call void @dt_box_mean_horizontal(ptr noundef nonnull %i.dr, i64 noundef %i.bs, i32 noundef 16777220, i64 noundef %.pre.i, ptr noundef %i.cf) #7
  tail call void @dt_box_mean_horizontal(ptr noundef nonnull %i.du, i64 noundef %i.bs, i32 noundef 16777225, i64 noundef %.pre.i, ptr noundef %i.cf) #7
  %indvars.iv.next347.i.us = add nuw nsw i64 %indvars.iv346.i.us, 1 ; 2 uses
  %exitcond350.not.i.us = icmp eq i64 %indvars.iv.next347.i.us, %wide.trip.count349.i.us
  %indvar.next152 = add i32 %indvar151, 1
  br i1 %exitcond350.not.i.us, label %._crit_edge326.i.us, label %.lr.ph.us.i.us

._crit_edge326.i.us:                              ; preds = %.lr.ph325.split.i.us, %._crit_edge.us.i.us, %bb.d
  tail call void @free(ptr noundef %i.cf) #7
  tail call void @dt_box_mean_vertical(ptr noundef %i.by, i64 noundef %i.bt, i64 noundef %i.bs, i32 noundef 16777220, i64 noundef %.pre.i) #7
  tail call void @dt_box_mean_vertical(ptr noundef %i.ca, i64 noundef %i.bt, i64 noundef %i.bs, i32 noundef 16777225, i64 noundef %.pre.i) #7
  %.not.i.us = icmp eq i64 %i.bu, 0
  br i1 %.not.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %._crit_edge326.i.us
  %min.iters.check112 = icmp ult i64 %i.bu, 8
  br i1 %min.iters.check112, label %.lr.ph.i.us.preheader212, label %vector.scevcheck102

vector.scevcheck102:                              ; preds = %.lr.ph.i.us.preheader
  %i.fr = add i64 %i.bu, -1
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fr, i64 36) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 3 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.fs = getelementptr i8, ptr %i.ca, i64 %mul.result
  %i.ft = icmp ult ptr %i.fs, %i.ca
  %scevgep103 = getelementptr i8, ptr %i.ca, i64 4 ; 2 uses
  %i.fu = getelementptr i8, ptr %scevgep103, i64 %mul.result
  %i.fv = icmp ult ptr %i.fu, %scevgep103
  %scevgep104 = getelementptr i8, ptr %i.ca, i64 8 ; 2 uses
  %i.fw = getelementptr i8, ptr %scevgep104, i64 %mul.result
  %i.fx = icmp ult ptr %i.fw, %scevgep104
  %i.fy = or i1 %i.fx, %mul.overflow
  %i.fz = or i1 %i.fv, %i.ft
  %i.ga = or i1 %i.fz, %i.fy
  br i1 %i.ga, label %.lr.ph.i.us.preheader212, label %vector.memcheck105

vector.memcheck105:                               ; preds = %vector.scevcheck102
  %i.gb = shl nsw i64 %i.bt, 4
  %i.gc = mul i64 %i.gb, %i.bs
  %scevgep106 = getelementptr i8, ptr %i.by, i64 %i.gc
  %i.gd = mul nsw i64 %i.bt, 36
  %i.ge = mul i64 %i.gd, %i.bs
  %scevgep107 = getelementptr i8, ptr %i.ca, i64 %i.ge
  %bound0108 = icmp ult ptr %i.by, %scevgep107
  %bound1109 = icmp ult ptr %i.ca, %scevgep106
  %found.conflict110 = and i1 %bound0108, %bound1109
  br i1 %found.conflict110, label %.lr.ph.i.us.preheader212, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck105
  %n.vec114 = and i64 %i.bu, -8                   ; 3 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph113
  %index118 = phi i64 [ 0, %vector.ph113 ], [ %index.next143, %vector.body117 ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph113 ], [ %vec.ind.next, %vector.body117 ] ; 2 uses
  %i.gf = shl i64 %index118, 4
  %i.gg = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.gf ; 2 uses
  %wide.vec119 = load <32 x float>, ptr %i.gg, align 64, !tbaa !36, !alias.scope !45, !noalias !46 ; 4 uses
  %strided.vec120 = shufflevector <32 x float> %wide.vec119, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %strided.vec121 = shufflevector <32 x float> %wide.vec119, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 6 uses
  %strided.vec122 = shufflevector <32 x float> %wide.vec119, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 6 uses
  %strided.vec123 = shufflevector <32 x float> %wide.vec119, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 6 uses
  %i.gh = mul <8 x i64> %vec.ind, splat (i64 36)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.ca, <8 x i64> %i.gh ; 9 uses
  %wide.gep124 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep124, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.gi = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec121, %strided.vec121
  %i.gj = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.gi
  %i.gk = fadd reassoc nsz arcp contract afn <8 x float> %i.gj, %broadcast.splat116 ; 3 uses
  %wide.gep125 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  %wide.masked.gather126 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep125, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.gl = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec122, %strided.vec121
  %i.gm = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather126, %i.gl ; 6 uses
  %wide.gep127 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  %wide.masked.gather128 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep127, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.gn = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec123, %strided.vec121
  %i.go = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather128, %i.gn ; 6 uses
  %wide.gep129 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  %wide.masked.gather130 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep129, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.gp = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec122, %strided.vec122
  %i.gq = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather130, %i.gp
  %i.gr = fadd reassoc nsz arcp contract afn <8 x float> %i.gq, %broadcast.splat116 ; 3 uses
  %wide.gep131 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  %wide.masked.gather132 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep131, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.gs = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec123, %strided.vec122
  %i.gt = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather132, %i.gs ; 6 uses
  %wide.gep133 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  %wide.masked.gather134 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep133, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.gu = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec123, %strided.vec123
  %i.gv = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather134, %i.gu
  %i.gw = fadd reassoc nsz arcp contract afn <8 x float> %i.gv, %broadcast.splat116 ; 3 uses
  %i.gx = fmul reassoc nsz arcp contract afn <8 x float> %i.gw, %i.gr
  %i.gy = fmul reassoc nsz arcp contract afn <8 x float> %i.gt, %i.gt
  %i.gz = fsub reassoc nsz arcp contract afn <8 x float> %i.gx, %i.gy ; 2 uses
  %i.ha = fmul reassoc nsz arcp contract afn <8 x float> %i.gz, %i.gk
  %i.hb = fmul reassoc nsz arcp contract afn <8 x float> %i.gw, %i.gm
  %i.hc = fmul reassoc nsz arcp contract afn <8 x float> %i.gt, %i.go
  %i.hd = fsub reassoc nsz arcp contract afn <8 x float> %i.hb, %i.hc ; 2 uses
  %i.he = fmul reassoc nsz arcp contract afn <8 x float> %i.hd, %i.gm
  %i.hf = fsub reassoc nsz arcp contract afn <8 x float> %i.ha, %i.he
  %i.hg = fmul reassoc nsz arcp contract afn <8 x float> %i.gt, %i.gm
  %i.hh = fmul reassoc nsz arcp contract afn <8 x float> %i.gr, %i.go
  %i.hi = fsub reassoc nsz arcp contract afn <8 x float> %i.hg, %i.hh ; 2 uses
  %i.hj = fmul reassoc nsz arcp contract afn <8 x float> %i.hi, %i.go
  %i.hk = fadd reassoc nsz arcp contract afn <8 x float> %i.hf, %i.hj ; 4 uses
  %i.hl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hk)
  %i.hm = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.hl, splat (float f0x35000000) ; 7 uses
  %wide.masked.gather135 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.hm, <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.hn = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec121, %strided.vec120
  %i.ho = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather135, %i.hn ; 3 uses
  %wide.gep136 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather137 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep136, <8 x i1> %i.hm, <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.hp = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec122, %strided.vec120
  %i.hq = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather137, %i.hp ; 3 uses
  %wide.gep138 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather139 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep138, <8 x i1> %i.hm, <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.hr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec123, %strided.vec120
  %i.hs = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather139, %i.hr ; 3 uses
  %i.ht = fmul reassoc nsz arcp contract afn <8 x float> %i.ho, %i.gz
  %i.hu = fmul reassoc nsz arcp contract afn <8 x float> %i.hq, %i.gw
  %i.hv = fmul reassoc nsz arcp contract afn <8 x float> %i.hs, %i.gt
  %i.hw = fsub reassoc nsz arcp contract afn <8 x float> %i.hu, %i.hv ; 2 uses
  %i.hx = fmul reassoc nsz arcp contract afn <8 x float> %i.hq, %i.gt ; 2 uses
  %i.hy = fmul reassoc nsz arcp contract afn <8 x float> %i.hs, %i.gr ; 2 uses
  %i.hz = fsub reassoc nsz arcp contract afn <8 x float> %i.hx, %i.hy
  %i.ia = fmul reassoc nsz arcp contract afn <8 x float> %i.hz, %i.go
  %i.ib = fadd reassoc nsz arcp contract afn <8 x float> %i.ia, %i.ht
  %i.ic = fmul reassoc nsz arcp contract afn <8 x float> %i.gm, %i.hw
  %i.id = fsub reassoc nsz arcp contract afn <8 x float> %i.ib, %i.ic
  %i.ie = fmul reassoc nsz arcp contract afn <8 x float> %i.hw, %i.gk
  %i.if = fmul reassoc nsz arcp contract afn <8 x float> %i.hd, %i.ho
  %i.ig = fsub reassoc nsz arcp contract afn <8 x float> %i.ie, %i.if
  %i.ih = fmul reassoc nsz arcp contract afn <8 x float> %i.hs, %i.gm
  %i.ii = fmul reassoc nsz arcp contract afn <8 x float> %i.hq, %i.go
  %i.ij = fsub reassoc nsz arcp contract afn <8 x float> %i.ih, %i.ii ; 2 uses
  %i.ik = fmul reassoc nsz arcp contract afn <8 x float> %i.ij, %i.go
  %i.il = fadd reassoc nsz arcp contract afn <8 x float> %i.ig, %i.ik
  %i.im = fsub reassoc nsz arcp contract afn <8 x float> %i.hy, %i.hx
  %i.in = fmul reassoc nsz arcp contract afn <8 x float> %i.im, %i.gk
  %i.io = fmul reassoc nsz arcp contract afn <8 x float> %i.ho, %i.hi
  %i.ip = fadd reassoc nsz arcp contract afn <8 x float> %i.in, %i.io
  %i.iq = fmul reassoc nsz arcp contract afn <8 x float> %i.gm, %i.ij
  %i.ir = fsub reassoc nsz arcp contract afn <8 x float> %i.ip, %i.iq
  %i.is = fdiv reassoc nsz arcp contract afn <8 x float> %i.id, %i.hk ; 2 uses
  %i.it = fdiv reassoc nsz arcp contract afn <8 x float> %i.il, %i.hk ; 2 uses
  %i.iu = fdiv reassoc nsz arcp contract afn <8 x float> %i.ir, %i.hk ; 2 uses
  %i.iv = fmul reassoc nsz arcp contract afn <8 x float> %i.it, %strided.vec122
  %i.iw = fmul reassoc nsz arcp contract afn <8 x float> %i.iu, %strided.vec123
  %i.ix = fmul reassoc nsz arcp contract afn <8 x float> %i.is, %strided.vec121
  %i.iy = fadd reassoc nsz arcp contract afn <8 x float> %i.iv, %i.iw
  %i.iz = fadd reassoc nsz arcp contract afn <8 x float> %i.iy, %i.ix
  %i.ja = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec120, %i.iz
  %predphi = select nsz <8 x i1> %i.hm, <8 x float> %i.is, <8 x float> zeroinitializer
  %predphi140 = select nsz <8 x i1> %i.hm, <8 x float> %i.it, <8 x float> zeroinitializer
  %predphi141 = select nsz <8 x i1> %i.hm, <8 x float> %i.iu, <8 x float> zeroinitializer
  %predphi142 = select nsz <8 x i1> %i.hm, <8 x float> %i.ja, <8 x float> %strided.vec120
  %i.jb = shufflevector <8 x float> %predphi, <8 x float> %predphi140, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jc = shufflevector <8 x float> %predphi141, <8 x float> %predphi142, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.jb, <16 x float> %i.jc, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.gg, align 64, !tbaa !36, !alias.scope !45, !noalias !46
  %index.next143 = add nuw i64 %index118, 8       ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.jd = icmp eq i64 %index.next143, %n.vec114
  br i1 %i.jd, label %middle.block144, label %vector.body117, !llvm.loop !25

middle.block144:                                  ; preds = %vector.body117
  %cmp.n145 = icmp eq i64 %i.bu, %n.vec114
  br i1 %cmp.n145, label %._crit_edge.i.us, label %.lr.ph.i.us.preheader212

.lr.ph.i.us.preheader212:                         ; preds = %vector.memcheck105, %vector.scevcheck102, %.lr.ph.i.us.preheader, %middle.block144
  %.0273327.i.us.ph = phi i64 [ 0, %vector.memcheck105 ], [ 0, %vector.scevcheck102 ], [ 0, %.lr.ph.i.us.preheader ], [ %n.vec114, %middle.block144 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader212, %bb.f
  %.0273327.i.us = phi i64 [ %i.my, %bb.f ], [ %.0273327.i.us.ph, %.lr.ph.i.us.preheader212 ] ; 3 uses
  %.idx309.i.us = shl i64 %.0273327.i.us, 4
  %i.je = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx309.i.us ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 12 ; 2 uses
  %.idx310.i.us = mul i64 %.0273327.i.us, 36
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx310.i.us ; 9 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 20
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 28
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jp = load float, ptr %i.je, align 16, !tbaa !36 ; 5 uses
  %i.jq = load float, ptr %i.jf, align 4, !tbaa !36 ; 6 uses
  %i.jr = load float, ptr %i.jg, align 8, !tbaa !36 ; 6 uses
  %i.js = load float, ptr %i.jh, align 4, !tbaa !36 ; 6 uses
  %i.jt = load float, ptr %i.jj, align 4, !tbaa !36
  %i.ju = fmul reassoc nsz arcp contract afn float %i.jq, %i.jq
end_hunk_0
