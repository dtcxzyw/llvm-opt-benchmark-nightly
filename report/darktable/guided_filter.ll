inline.NumInlined: 16
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@guided_filter:bb.a
  %i.dh = getelementptr i8, ptr %i.cj, i64 %.neg
  %scevgep164.a = getelementptr i8, ptr %i.dh, i64 %i.dg
  %i.di = mul nuw nsw i64 %i.k, %i.dd             ; 2 uses
  %i.dj = add nuw nsw i64 %i.di, %i.dc
  %i.dk = shl i64 %i.dj, 2
  %scevgep166 = getelementptr i8, ptr %0, i64 %i.dk ; 2 uses
  %i.dl = xor i64 %i.dd, -1
  %i.dm = add nsw i64 %i.dl, %wide.trip.count348.i.us
  %i.dn = mul i64 %i.t, %i.dm
  %i.do = add nuw nsw i64 %i.di, %wide.trip.count343.i.us
  %i.dp = shl i64 %i.do, 2
  %i.dq = add i64 %i.dn, %i.dp                    ; 2 uses
  %scevgep168 = getelementptr i8, ptr %scevgep167, i64 %i.dq ; 2 uses
  %i.dr = mul nuw i64 %i.u, %i.dd
  %i.ds = shl nuw nsw i64 %i.dc, 2
  %i.dt = getelementptr i8, ptr %1, i64 %i.dr
  %scevgep169 = getelementptr i8, ptr %i.dt, i64 %i.ds ; 2 uses
  %scevgep170 = getelementptr i8, ptr %1, i64 %i.dq ; 2 uses
  %i.du = sub nsw i64 %wide.trip.count343.i.us, %i.dc ; 3 uses
  %min.iters.check191 = icmp ugt i64 %i.du, 7
  %or.cond = and i1 %min.iters.check191, %ident.check156.not
  %n.vec194 = and i64 %i.du, -8                   ; 3 uses
  %i.dv = add nsw i64 %n.vec194, %i.dc
  %broadcast.splatinsert195 = insertelement <8 x i64> poison, i64 %i.dc, i64 0
  %broadcast.splat196 = shufflevector <8 x i64> %broadcast.splatinsert195, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <8 x i64> %broadcast.splat196, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n219 = icmp eq i64 %i.du, %n.vec194
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %._crit_edge.us.i.us, %.lr.ph.us.preheader.i.us
  %indvar158 = phi i32 [ %indvar.next159, %._crit_edge.us.i.us ], [ 0, %.lr.ph.us.preheader.i.us ] ; 3 uses
  %indvars.iv345.i.us = phi i64 [ %indvars.iv.next346.i.us, %._crit_edge.us.i.us ], [ %i.dd, %.lr.ph.us.preheader.i.us ] ; 3 uses
  %i.dw = trunc i64 %indvars.iv345.i.us to i32
  %i.dx = sub i32 %i.dw, %i.bw                    ; 2 uses
  %i.dy = mul i32 %i.dx, %i.cq
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.dz ; 3 uses
  %i.eb = mul i32 %i.dx, %i.cr
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ec ; 3 uses
  %i.ee = mul nuw nsw i64 %indvars.iv345.i.us, %i.k ; 3 uses
  %i.ef = getelementptr [4 x i8], ptr %1, i64 %i.ee ; 2 uses
  br i1 %or.cond, label %vector.memcheck157, label %scalar.ph190.preheader

vector.memcheck157:                               ; preds = %.lr.ph.us.i.us
  %i.eg = mul i32 %i.cr, %indvar158
  %i.eh = sext i32 %i.eg to i64
  %i.ei = shl nsw i64 %i.eh, 2                    ; 2 uses
  %scevgep165 = getelementptr i8, ptr %scevgep164.a, i64 %i.ei ; 3 uses
  %scevgep163 = getelementptr i8, ptr %i.cj, i64 %i.ei ; 3 uses
  %i.ej = mul i32 %i.cq, %indvar158
  %i.ek = sext i32 %i.ej to i64
  %i.el = shl nsw i64 %i.ek, 2                    ; 2 uses
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.el ; 3 uses
  %scevgep160 = getelementptr i8, ptr %i.ch, i64 %i.el ; 3 uses
  %bound0171 = icmp ult ptr %scevgep160, %scevgep165
  %bound1172 = icmp ult ptr %scevgep163, %scevgep162
  %found.conflict173 = and i1 %bound0171, %bound1172
  %bound0174 = icmp ult ptr %scevgep160, %scevgep168
  %bound1175 = icmp ult ptr %scevgep166, %scevgep162
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %found.conflict173, %found.conflict176
  %bound0178 = icmp ult ptr %scevgep160, %scevgep170
  %bound1179 = icmp ult ptr %scevgep169, %scevgep162
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %conflict.rdx177, %found.conflict180
  %bound0182 = icmp ult ptr %scevgep163, %scevgep168
  %bound1183 = icmp ult ptr %scevgep166, %scevgep165
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx181, %found.conflict184
  %bound0186 = icmp ult ptr %scevgep163, %scevgep170
  %bound1187 = icmp ult ptr %scevgep169, %scevgep165
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx185, %found.conflict188
  br i1 %conflict.rdx189, label %scalar.ph190.preheader, label %vector.ph192

vector.ph192:                                     ; preds = %vector.memcheck157
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ee
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph192
  %index200 = phi i64 [ 0, %vector.ph192 ], [ %index.next216, %vector.body199 ] ; 2 uses
  %vec.ind201 = phi <8 x i64> [ %induction, %vector.ph192 ], [ %vec.ind.next217, %vector.body199 ] ; 2 uses
  %i.em = add nuw i64 %index200, %i.dc            ; 2 uses
  %i.en = sub nuw nsw <8 x i64> %vec.ind201, %broadcast.splat196 ; 2 uses
  %i.eo = extractelement <8 x i64> %i.en, i64 0
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.em ; 3 uses
  %wide.load202 = load <8 x float>, ptr %gep, align 4, !tbaa !17, !alias.scope !19
  %i.ep = fmul reassoc nsz arcp contract afn <8 x float> %wide.load202, %broadcast.splat198 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %wide.load203 = load <8 x float>, ptr %i.eq, align 4, !tbaa !17, !alias.scope !19
  %i.er = fmul reassoc nsz arcp contract afn <8 x float> %wide.load203, %broadcast.splat198 ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load204 = load <8 x float>, ptr %i.es, align 4, !tbaa !17, !alias.scope !19
  %i.et = fmul reassoc nsz arcp contract afn <8 x float> %wide.load204, %broadcast.splat198 ; 6 uses
  %i.eu = getelementptr [4 x i8], ptr %i.ef, i64 %i.em
  %wide.load205 = load <8 x float>, ptr %i.eu, align 4, !tbaa !17, !alias.scope !22 ; 4 uses
  %i.ev = shl nuw nsw i64 %i.eo, 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ev
  %i.ex = shufflevector <8 x float> %wide.load205, <8 x float> %i.ep, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ey = shufflevector <8 x float> %i.er, <8 x float> %i.et, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec206 = shufflevector <16 x float> %i.ex, <16 x float> %i.ey, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec206, ptr %i.ew, align 16, !tbaa !17, !alias.scope !24, !noalias !26
  %i.ez = fmul reassoc nsz arcp contract afn <8 x float> %wide.load205, %i.ep
  %i.fa = mul nuw nsw <8 x i64> %i.en, splat (i64 36)
  %wide.gep207.a = getelementptr inbounds nuw i8, ptr %i.ed, <8 x i64> %i.fa ; 9 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ez, <8 x ptr> align 4 %wide.gep207.a, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %i.fb = fmul reassoc nsz arcp contract afn <8 x float> %wide.load205, %i.er
  %wide.gep208.a = getelementptr i8, <8 x ptr> %wide.gep207.a, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fb, <8 x ptr> align 4 %wide.gep208.a, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %i.fc = fmul reassoc nsz arcp contract afn <8 x float> %i.et, %wide.load205
  %wide.gep209.a = getelementptr i8, <8 x ptr> %wide.gep207.a, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fc, <8 x ptr> align 4 %wide.gep209.a, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %i.fd = fmul reassoc nsz arcp contract afn <8 x float> %i.ep, %i.ep
  %wide.gep210 = getelementptr i8, <8 x ptr> %wide.gep207.a, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fd, <8 x ptr> align 4 %wide.gep210, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %i.fe = fmul reassoc nsz arcp contract afn <8 x float> %i.er, %i.ep
  %wide.gep211 = getelementptr i8, <8 x ptr> %wide.gep207.a, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fe, <8 x ptr> align 4 %wide.gep211, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %i.ff = fmul reassoc nsz arcp contract afn <8 x float> %i.et, %i.ep
  %wide.gep212 = getelementptr i8, <8 x ptr> %wide.gep207.a, i64 20
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ff, <8 x ptr> align 4 %wide.gep212, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %i.fg = fmul reassoc nsz arcp contract afn <8 x float> %i.er, %i.er
  %wide.gep213 = getelementptr i8, <8 x ptr> %wide.gep207.a, i64 24
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fg, <8 x ptr> align 4 %wide.gep213, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %i.fh = fmul reassoc nsz arcp contract afn <8 x float> %i.et, %i.er
  %wide.gep214 = getelementptr i8, <8 x ptr> %wide.gep207.a, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fh, <8 x ptr> align 4 %wide.gep214, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %i.fi = fmul reassoc nsz arcp contract afn <8 x float> %i.et, %i.et
  %wide.gep215 = getelementptr i8, <8 x ptr> %wide.gep207.a, i64 32
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fi, <8 x ptr> align 4 %wide.gep215, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %index.next216 = add nuw i64 %index200, 8       ; 2 uses
  %vec.ind.next217 = add nuw nsw <8 x i64> %vec.ind201, splat (i64 8)
  %i.fj = icmp eq i64 %index.next216, %n.vec194
  br i1 %i.fj, label %middle.block218, label %vector.body199, !llvm.loop !30

middle.block218:                                  ; preds = %vector.body199
  br i1 %cmp.n219, label %._crit_edge.us.i.us, label %scalar.ph190.preheader

scalar.ph190.preheader:                           ; preds = %vector.memcheck157, %.lr.ph.us.i.us, %middle.block218
  %indvars.iv340.i.us.ph = phi i64 [ %i.dc, %vector.memcheck157 ], [ %i.dc, %.lr.ph.us.i.us ], [ %i.dv, %middle.block218 ]
  br label %scalar.ph190

scalar.ph190:                                     ; preds = %scalar.ph190.preheader, %scalar.ph190
  %indvars.iv340.i.us = phi i64 [ %indvars.iv.next341.i.us, %scalar.ph190 ], [ %indvars.iv340.i.us.ph, %scalar.ph190.preheader ] ; 4 uses
  %i.fk = sub nuw nsw i64 %indvars.iv340.i.us, %i.dc ; 2 uses
  %i.fl = add nuw nsw i64 %indvars.iv340.i.us, %i.ee
  %i.fm = mul i64 %i.fl, %i.l
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fm ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !17 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fq = getelementptr [4 x i8], ptr %i.ef, i64 %indvars.iv340.i.us
  %.idx312.us.i.us = shl nuw nsw i64 %i.fk, 4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.idx312.us.i.us
  %i.fs = load <2 x float>, ptr %i.fp, align 4, !tbaa !17
  %i.ft = load float, ptr %i.fq, align 4, !tbaa !17 ; 2 uses
  %i.fu = insertelement <4 x float> poison, float %i.ft, i64 0
  %i.fv = insertelement <4 x float> %i.fu, float %i.fo, i64 1
  %i.fw = shufflevector <2 x float> %i.fs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fx = shufflevector <4 x float> %i.fv, <4 x float> %i.fw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fy = fmul reassoc nsz arcp contract afn <4 x float> %i.fx, %i.w ; 5 uses
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fo, %8
  store <4 x float> %i.fy, ptr %i.fr, align 16, !tbaa !17
  %.idx313.us.i.us = mul nuw nsw i64 %i.fk, 36
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx313.us.i.us ; 2 uses
  %i.gb = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 2>
  %i.gc = insertelement <4 x float> %i.gb, float %i.ft, i64 0
  %i.gd = insertelement <4 x float> %i.gc, float %i.fz, i64 2 ; 2 uses
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 1, i32 3, i32 1>
  %i.gf = shufflevector <4 x float> %i.fy, <4 x float> %i.gd, <8 x i32> <i32 6, i32 2, i32 4, i32 6, i32 6, i32 6, i32 2, i32 2>
  %i.gg = fmul reassoc nsz arcp contract afn <8 x float> %i.ge, %i.gf
  store <8 x float> %i.gg, ptr %i.ga, align 4, !tbaa !17
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <4 x float> %i.fy, %i.fy
  %i.gh = extractelement <4 x float> %foldExtExtBinop, i64 3
  %i.gi = getelementptr i8, ptr %i.ga, i64 32
  store float %i.gh, ptr %i.gi, align 4, !tbaa !17
  %indvars.iv.next341.i.us = add nuw nsw i64 %indvars.iv340.i.us, 1 ; 2 uses
  %exitcond344.not.i.us = icmp eq i64 %indvars.iv.next341.i.us, %wide.trip.count343.i.us
  br i1 %exitcond344.not.i.us, label %._crit_edge.us.i.us, label %scalar.ph190, !llvm.loop !33

._crit_edge.us.i.us:                              ; preds = %scalar.ph190, %middle.block218
  tail call void @dt_box_mean_horizontal(ptr noundef nonnull %i.ea, i64 noundef %i.cb, i32 noundef 16777220, i64 noundef %.pre.i, ptr noundef %i.co) #7
  tail call void @dt_box_mean_horizontal(ptr noundef nonnull %i.ed, i64 noundef %i.cb, i32 noundef 16777225, i64 noundef %.pre.i, ptr noundef %i.co) #7
  %indvars.iv.next346.i.us = add nuw nsw i64 %indvars.iv345.i.us, 1 ; 2 uses
  %exitcond349.not.i.us = icmp eq i64 %indvars.iv.next346.i.us, %wide.trip.count348.i.us
  %indvar.next159 = add i32 %indvar158, 1
  br i1 %exitcond349.not.i.us, label %._crit_edge326.i.us, label %.lr.ph.us.i.us

._crit_edge326.i.us:                              ; preds = %.lr.ph325.split.i.us, %._crit_edge.us.i.us, %bb.d
  tail call void @free(ptr noundef %i.co) #7
  tail call void @dt_box_mean_vertical(ptr noundef %i.ch, i64 noundef %i.cc, i64 noundef %i.cb, i32 noundef 16777220, i64 noundef %.pre.i) #7
  tail call void @dt_box_mean_vertical(ptr noundef %i.cj, i64 noundef %i.cc, i64 noundef %i.cb, i32 noundef 16777225, i64 noundef %.pre.i) #7
  %.not.i.us = icmp eq i64 %i.cd, 0
  br i1 %.not.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %._crit_edge326.i.us
  %min.iters.check119 = icmp ult i64 %i.cd, 8
  br i1 %min.iters.check119, label %.lr.ph.i.us.preheader225, label %vector.scevcheck103

vector.scevcheck103:                              ; preds = %.lr.ph.i.us.preheader
  %i.gj = add i64 %i.cd, -1
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gj, i64 36) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 3 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.gk = getelementptr i8, ptr %i.cj, i64 %mul.result
  %i.gl = icmp ult ptr %i.gk, %i.cj
  %scevgep104 = getelementptr i8, ptr %i.cj, i64 4 ; 2 uses
  %i.gm = getelementptr i8, ptr %scevgep104, i64 %mul.result
  %i.gn = icmp ult ptr %i.gm, %scevgep104
  %scevgep108.a = getelementptr i8, ptr %i.cj, i64 8 ; 2 uses
  %i.go = getelementptr i8, ptr %scevgep108.a, i64 %mul.result
  %i.gp = icmp ult ptr %i.go, %scevgep108.a
  %i.gq = or i1 %i.gp, %mul.overflow
  %i.gr = or i1 %i.gn, %i.gl
  %i.gs = or i1 %i.gr, %i.gq
  br i1 %i.gs, label %.lr.ph.i.us.preheader225, label %vector.memcheck112

vector.memcheck112:                               ; preds = %vector.scevcheck103
  %i.gt = shl nsw i64 %i.cc, 4
  %i.gu = mul i64 %i.gt, %i.cb
  %scevgep113 = getelementptr i8, ptr %i.ch, i64 %i.gu
  %i.gv = mul nsw i64 %i.cc, 36
  %i.gw = mul i64 %i.gv, %i.cb
  %scevgep114 = getelementptr i8, ptr %i.cj, i64 %i.gw
  %bound0115 = icmp ult ptr %i.ch, %scevgep114
  %bound1116 = icmp ult ptr %i.cj, %scevgep113
  %found.conflict117 = and i1 %bound0115, %bound1116
  br i1 %found.conflict117, label %.lr.ph.i.us.preheader225, label %vector.ph120

vector.ph120:                                     ; preds = %vector.memcheck112
  %n.vec122 = and i64 %i.cd, -8                   ; 3 uses
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph120
  %index126 = phi i64 [ 0, %vector.ph120 ], [ %index.next151, %vector.body125 ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph120 ], [ %vec.ind.next, %vector.body125 ] ; 2 uses
  %i.gx = shl i64 %index126, 4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.gx ; 2 uses
  %wide.vec127 = load <32 x float>, ptr %i.gy, align 64, !tbaa !17, !alias.scope !34, !noalias !37 ; 4 uses
  %strided.vec128 = shufflevector <32 x float> %wide.vec127, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %strided.vec129 = shufflevector <32 x float> %wide.vec127, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 6 uses
  %strided.vec130 = shufflevector <32 x float> %wide.vec127, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 6 uses
  %strided.vec131 = shufflevector <32 x float> %wide.vec127, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 6 uses
  %i.gz = mul <8 x i64> %vec.ind, splat (i64 36)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.cj, <8 x i64> %i.gz ; 9 uses
  %wide.gep132 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep132, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.ha = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec129, %strided.vec129
  %i.hb = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.ha
  %i.hc = fadd reassoc nsz arcp contract afn <8 x float> %i.hb, %broadcast.splat124 ; 3 uses
  %wide.gep133.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  %wide.masked.gather134.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep133.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.hd = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec130, %strided.vec129
  %i.he = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather134.a, %i.hd ; 6 uses
  %wide.gep135.a = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  %wide.masked.gather136.a = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep135.a, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.hf = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec131, %strided.vec129
  %i.hg = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather136.a, %i.hf ; 6 uses
  %wide.gep137 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  %wide.masked.gather138 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep137, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.hh = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec130, %strided.vec130
  %i.hi = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather138, %i.hh
  %i.hj = fadd reassoc nsz arcp contract afn <8 x float> %i.hi, %broadcast.splat124 ; 3 uses
  %wide.gep139 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  %wide.masked.gather140 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep139, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.hk = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec131, %strided.vec130
  %i.hl = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather140, %i.hk ; 6 uses
  %wide.gep141 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  %wide.masked.gather142 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep141, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.hm = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec131, %strided.vec131
  %i.hn = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather142, %i.hm
  %i.ho = fadd reassoc nsz arcp contract afn <8 x float> %i.hn, %broadcast.splat124 ; 3 uses
  %i.hp = fmul reassoc nsz arcp contract afn <8 x float> %i.ho, %i.hj
  %i.hq = fmul reassoc nsz arcp contract afn <8 x float> %i.hl, %i.hl
  %i.hr = fsub reassoc nsz arcp contract afn <8 x float> %i.hp, %i.hq ; 2 uses
  %i.hs = fmul reassoc nsz arcp contract afn <8 x float> %i.hr, %i.hc
  %i.ht = fmul reassoc nsz arcp contract afn <8 x float> %i.ho, %i.he
  %i.hu = fmul reassoc nsz arcp contract afn <8 x float> %i.hl, %i.hg
  %i.hv = fsub reassoc nsz arcp contract afn <8 x float> %i.ht, %i.hu ; 2 uses
  %i.hw = fmul reassoc nsz arcp contract afn <8 x float> %i.hv, %i.he
  %i.hx = fsub reassoc nsz arcp contract afn <8 x float> %i.hs, %i.hw
  %i.hy = fmul reassoc nsz arcp contract afn <8 x float> %i.hl, %i.he
  %i.hz = fmul reassoc nsz arcp contract afn <8 x float> %i.hj, %i.hg
  %i.ia = fsub reassoc nsz arcp contract afn <8 x float> %i.hy, %i.hz ; 2 uses
  %i.ib = fmul reassoc nsz arcp contract afn <8 x float> %i.ia, %i.hg
  %i.ic = fadd reassoc nsz arcp contract afn <8 x float> %i.hx, %i.ib ; 4 uses
  %i.id = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ic)
  %i.ie = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.id, splat (float f0x35000000) ; 7 uses
  %wide.masked.gather143 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.ie, <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.if = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec129, %strided.vec128
  %i.ig = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather143, %i.if ; 3 uses
  %wide.gep144 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather145 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep144, <8 x i1> %i.ie, <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.ih = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec130, %strided.vec128
  %i.ii = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather145, %i.ih ; 3 uses
  %wide.gep146 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather147 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep146, <8 x i1> %i.ie, <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.ij = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec131, %strided.vec128
  %i.ik = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather147, %i.ij ; 3 uses
  %i.il = fmul reassoc nsz arcp contract afn <8 x float> %i.ig, %i.hr
  %i.im = fmul reassoc nsz arcp contract afn <8 x float> %i.ii, %i.ho
  %i.in = fmul reassoc nsz arcp contract afn <8 x float> %i.ik, %i.hl
  %i.io = fsub reassoc nsz arcp contract afn <8 x float> %i.im, %i.in ; 2 uses
  %i.ip = fmul reassoc nsz arcp contract afn <8 x float> %i.ii, %i.hl ; 2 uses
  %i.iq = fmul reassoc nsz arcp contract afn <8 x float> %i.ik, %i.hj ; 2 uses
  %i.ir = fsub reassoc nsz arcp contract afn <8 x float> %i.ip, %i.iq
  %i.is = fmul reassoc nsz arcp contract afn <8 x float> %i.ir, %i.hg
  %i.it = fadd reassoc nsz arcp contract afn <8 x float> %i.is, %i.il
  %i.iu = fmul reassoc nsz arcp contract afn <8 x float> %i.he, %i.io
  %i.iv = fsub reassoc nsz arcp contract afn <8 x float> %i.it, %i.iu
  %i.iw = fmul reassoc nsz arcp contract afn <8 x float> %i.io, %i.hc
  %i.ix = fmul reassoc nsz arcp contract afn <8 x float> %i.hv, %i.ig
  %i.iy = fsub reassoc nsz arcp contract afn <8 x float> %i.iw, %i.ix
  %i.iz = fmul reassoc nsz arcp contract afn <8 x float> %i.ik, %i.he
  %i.ja = fmul reassoc nsz arcp contract afn <8 x float> %i.ii, %i.hg
  %i.jb = fsub reassoc nsz arcp contract afn <8 x float> %i.iz, %i.ja ; 2 uses
  %i.jc = fmul reassoc nsz arcp contract afn <8 x float> %i.jb, %i.hg
  %i.jd = fadd reassoc nsz arcp contract afn <8 x float> %i.iy, %i.jc
  %i.je = fsub reassoc nsz arcp contract afn <8 x float> %i.iq, %i.ip
  %i.jf = fmul reassoc nsz arcp contract afn <8 x float> %i.je, %i.hc
  %i.jg = fmul reassoc nsz arcp contract afn <8 x float> %i.ig, %i.ia
  %i.jh = fadd reassoc nsz arcp contract afn <8 x float> %i.jf, %i.jg
  %i.ji = fmul reassoc nsz arcp contract afn <8 x float> %i.he, %i.jb
  %i.jj = fsub reassoc nsz arcp contract afn <8 x float> %i.jh, %i.ji
  %i.jk = fdiv reassoc nsz arcp contract afn <8 x float> %i.iv, %i.ic ; 2 uses
  %i.jl = fdiv reassoc nsz arcp contract afn <8 x float> %i.jd, %i.ic ; 2 uses
  %i.jm = fdiv reassoc nsz arcp contract afn <8 x float> %i.jj, %i.ic ; 2 uses
  %i.jn = fmul reassoc nsz arcp contract afn <8 x float> %i.jl, %strided.vec130
  %i.jo = fmul reassoc nsz arcp contract afn <8 x float> %i.jm, %strided.vec131
  %i.jp = fmul reassoc nsz arcp contract afn <8 x float> %i.jk, %strided.vec129
  %i.jq = fadd reassoc nsz arcp contract afn <8 x float> %i.jn, %i.jo
  %i.jr = fadd reassoc nsz arcp contract afn <8 x float> %i.jq, %i.jp
  %i.js = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec128, %i.jr
  %predphi = select nsz <8 x i1> %i.ie, <8 x float> %i.js, <8 x float> %strided.vec128
  %predphi148 = select nsz <8 x i1> %i.ie, <8 x float> %i.jm, <8 x float> zeroinitializer
  %predphi149 = select nsz <8 x i1> %i.ie, <8 x float> %i.jl, <8 x float> zeroinitializer
  %predphi150 = select nsz <8 x i1> %i.ie, <8 x float> %i.jk, <8 x float> zeroinitializer
  %i.jt = shufflevector <8 x float> %predphi150, <8 x float> %predphi149, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ju = shufflevector <8 x float> %predphi148, <8 x float> %predphi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.jt, <16 x float> %i.ju, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.gy, align 64, !tbaa !17, !alias.scope !34, !noalias !37
  %index.next151 = add nuw i64 %index126, 8       ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.jv = icmp eq i64 %index.next151, %n.vec122
  br i1 %i.jv, label %middle.block152, label %vector.body125, !llvm.loop !39

middle.block152:                                  ; preds = %vector.body125
  %cmp.n153 = icmp eq i64 %i.cd, %n.vec122
  br i1 %cmp.n153, label %._crit_edge.i.us, label %.lr.ph.i.us.preheader225

.lr.ph.i.us.preheader225:                         ; preds = %vector.memcheck112, %vector.scevcheck103, %.lr.ph.i.us.preheader, %middle.block152
  %.0271327.i.us.ph = phi i64 [ 0, %vector.memcheck112 ], [ 0, %vector.scevcheck103 ], [ 0, %.lr.ph.i.us.preheader ], [ %n.vec122, %middle.block152 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader225, %bb.f
  %.0271327.i.us = phi i64 [ %i.ns, %bb.f ], [ %.0271327.i.us.ph, %.lr.ph.i.us.preheader225 ] ; 3 uses
  %.idx309.i.us = shl i64 %.0271327.i.us, 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx309.i.us ; 5 uses
  %i.jx = load float, ptr %i.jw, align 16, !tbaa !17 ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 12 ; 2 uses
  %.idx310.i.us = mul i64 %.0271327.i.us, 36
  %i.kb = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx310.i.us ; 9 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 20
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 28
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.ki = load float, ptr %i.ka, align 4, !tbaa !17 ; 6 uses
  %i.kj = load <2 x float>, ptr %i.jy, align 4, !tbaa !17 ; 5 uses
  %i.kk = extractelement <2 x float> %i.kj, i64 0 ; 3 uses
  %foldExtExtBinop223 = fmul reassoc nsz arcp contract afn <2 x float> %i.kj, %i.kj
  %i.kl = extractelement <2 x float> %foldExtExtBinop223, i64 0
  %i.km = load float, ptr %i.ke, align 4, !tbaa !17
  %i.kn = load float, ptr %i.kd, align 4, !tbaa !17
  %i.ko = load float, ptr %i.kf, align 4, !tbaa !17
  %i.kp = load float, ptr %i.kc, align 4, !tbaa !17
  %i.kq = fsub reassoc nsz arcp contract afn float %i.kp, %i.kl
  %i.kr = fmul reassoc nsz arcp contract afn float %i.ki, %i.kk
  %i.ks = fadd reassoc nsz arcp contract afn float %i.kq, %i.h ; 3 uses
  %i.kt = extractelement <2 x float> %i.kj, i64 1 ; 5 uses
  %i.ku = fmul reassoc nsz arcp contract afn float %i.kt, %i.kt
  %i.kv = fmul reassoc nsz arcp contract afn float %i.kt, %i.kk
  %i.kw = fsub reassoc nsz arcp contract afn float %i.ko, %i.ku
  %i.kx = fsub reassoc nsz arcp contract afn float %i.kn, %i.kv ; 6 uses
  %i.ky = fadd reassoc nsz arcp contract afn float %i.kw, %i.h ; 3 uses
  %i.kz = load float, ptr %i.kh, align 4, !tbaa !17
  %i.la = load float, ptr %i.kg, align 4, !tbaa !17
  %i.lb = fmul reassoc nsz arcp contract afn float %i.ki, %i.ki
  %i.lc = fsub reassoc nsz arcp contract afn float %i.kz, %i.lb
  %i.ld = fmul reassoc nsz arcp contract afn float %i.ki, %i.kt
  %i.le = fsub reassoc nsz arcp contract afn float %i.km, %i.kr ; 6 uses
  %i.lf = fadd reassoc nsz arcp contract afn float %i.lc, %i.h ; 3 uses
  %i.lg = fsub reassoc nsz arcp contract afn float %i.la, %i.ld ; 6 uses
  %i.lh = fmul reassoc nsz arcp contract afn float %i.lf, %i.kx
  %i.li = fmul reassoc nsz arcp contract afn float %i.lf, %i.ky
  %i.lj = fmul reassoc nsz arcp contract afn float %i.lg, %i.le
  %i.lk = fmul reassoc nsz arcp contract afn float %i.lg, %i.lg
  %i.ll = fsub reassoc nsz arcp contract afn float %i.lh, %i.lj ; 2 uses
  %i.lm = fsub reassoc nsz arcp contract afn float %i.li, %i.lk ; 2 uses
  %i.ln = fmul reassoc nsz arcp contract afn float %i.lm, %i.ks
  %i.lo = fmul reassoc nsz arcp contract afn float %i.ll, %i.kx
  %i.lp = fsub reassoc nsz arcp contract afn float %i.ln, %i.lo
  %i.lq = fmul reassoc nsz arcp contract afn float %i.lg, %i.kx
  %i.lr = fmul reassoc nsz arcp contract afn float %i.ky, %i.le
  %i.ls = fsub reassoc nsz arcp contract afn float %i.lq, %i.lr ; 2 uses
  %i.lt = fmul reassoc nsz arcp contract afn float %i.ls, %i.le
  %i.lu = fadd reassoc nsz arcp contract afn float %i.lp, %i.lt ; 3 uses
  %i.lv = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lu)
  %i.lw = fcmp reassoc nsz arcp contract afn ogt float %i.lv, f0x35000000
  br i1 %i.lw, label %bb.e, label %bb.f

end_hunk_0
