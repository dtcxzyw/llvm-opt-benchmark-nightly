inline.NumInlined: 7
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@Fft:bb.a
  %scevgep130 = getelementptr i8, ptr %1, i64 %i.f
  %scevgep132 = getelementptr i8, ptr %1, i64 4
  %scevgep144 = getelementptr i8, ptr %1, i64 4
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep154 = getelementptr i8, ptr %i.g, i64 4
  %scevgep156 = getelementptr i8, ptr %1, i64 8
  %scevgep158 = getelementptr i8, ptr %1, i64 4
  %scevgep160 = getelementptr i8, ptr %1, i64 8
  %i.h = zext nneg i32 %smax to i64               ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 1
  %i.j = zext nneg i32 %smax to i64               ; 2 uses
  %min.iters.check = icmp slt i32 %0, 4
  %i.k = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.k, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.j, 2147483644               ; 3 uses
  %i.l = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.j
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.084 = phi i32 [ 1, %bb.a ], [ %i.eb, %.loopexit ] ; 2 uses
  %i.m = sext i32 %.084 to i64                    ; 5 uses
  %i.n = shl nsw i64 %i.m, 3
  %i.o = shl nsw i64 %i.m, 3                      ; 4 uses
  %i.p = shl nsw i64 %i.m, 3
  %i.q = getelementptr i8, ptr %2, i64 %i.o
  %i.r = getelementptr i8, ptr %2, i64 %i.o
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %i.t = getelementptr i8, ptr %2, i64 %i.o
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = getelementptr i8, ptr %2, i64 %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %bb.d ], [ %i.m, %bb.b ] ; 7 uses
  %.085 = phi i64 [ %indvars.iv99, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.083 = phi i64 [ %indvars.iv.next, %bb.d ], [ 1, %bb.b ] ; 12 uses
  %i.w = mul i64 %i.p, %indvar                    ; 8 uses
  %scevgep135 = getelementptr i8, ptr %2, i64 %i.w
  %i.x = getelementptr i8, ptr %2, i64 %i.w
  %scevgep137 = getelementptr i8, ptr %i.x, i64 4 ; 2 uses
  %scevgep139 = getelementptr i8, ptr %i.q, i64 %i.w
  %scevgep141 = getelementptr i8, ptr %i.s, i64 %i.w ; 2 uses
  %i.y = add i64 %i.w, 8                          ; 2 uses
  %scevgep146 = getelementptr i8, ptr %3, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %3, i64 %i.w
  %scevgep147 = getelementptr i8, ptr %i.z, i64 12 ; 4 uses
  %scevgep149 = getelementptr i8, ptr %2, i64 %i.y
  %scevgep152 = getelementptr i8, ptr %i.u, i64 %i.w
  %i.aa = getelementptr i8, ptr %3, i64 %i.w
  %scevgep162 = getelementptr i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %3, i64 %.085 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8      ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 12     ; 2 uses
  %invariant.gep112 = getelementptr [8 x i8], ptr %2, i64 %.085 ; 2 uses
  %invariant.gep114 = getelementptr [8 x i8], ptr %2, i64 %indvars.iv99 ; 2 uses
  %i.ae = tail call i64 @llvm.smax.i64(i64 %.083, i64 %indvars.iv99)
  %i.af = sub i64 %i.ae, %.083
  %i.ag = add i64 %i.af, 1                        ; 3 uses
  %min.iters.check215 = icmp ult i64 %i.ag, 17
  br i1 %min.iters.check215, label %scalar.ph214.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.c
  %i.ah = mul i64 %i.n, %indvar                   ; 2 uses
  %scevgep119 = getelementptr i8, ptr %i.v, i64 %i.ah
  %scevgep = getelementptr i8, ptr %2, i64 %i.ah
  %smax117 = tail call i64 @llvm.smax.i64(i64 %.083, i64 %indvars.iv99)
  %i.ai = sub i64 %smax117, %.083                 ; 4 uses
  %i.aj = shl i64 %.083, 3                        ; 3 uses
  %scevgep118 = getelementptr i8, ptr %scevgep, i64 %i.aj ; 2 uses
  %mul.result = shl i64 %i.ai, 3
  %i.ak = getelementptr i8, ptr %scevgep118, i64 %mul.result
  %i.al = icmp ult ptr %i.ak, %scevgep118
  %scevgep120 = getelementptr i8, ptr %scevgep119, i64 %i.aj ; 2 uses
  %mul.result122 = shl i64 %i.ai, 3
  %mul.overflow123 = icmp ugt i64 %i.ai, 2305843009213693951
  %i.am = getelementptr i8, ptr %scevgep120, i64 %mul.result122
  %i.an = icmp ult ptr %i.am, %scevgep120
  %i.ao = or i1 %i.an, %mul.overflow123
  %scevgep125 = getelementptr i8, ptr %scevgep124, i64 %i.aj ; 2 uses
  %mul.result127 = shl i64 %i.ai, 3
  %i.ap = getelementptr i8, ptr %scevgep125, i64 %mul.result127
  %i.aq = icmp ult ptr %i.ap, %scevgep125
  %i.ar = or i1 %i.al, %i.ao
  %i.as = or i1 %i.aq, %i.ar
  br i1 %i.as, label %scalar.ph214.preheader, label %vector.memcheck129

vector.memcheck129:                               ; preds = %vector.scevcheck
  %i.at = shl i64 %.083, 3                        ; 8 uses
  %scevgep131 = getelementptr i8, ptr %scevgep130, i64 %i.at ; 2 uses
  %smax133 = tail call i64 @llvm.smax.i64(i64 %.083, i64 %indvars.iv99) ; 2 uses
  %i.au = add i64 %smax133, %i.d
  %i.av = shl i64 %i.au, 3                        ; 2 uses
  %scevgep134 = getelementptr i8, ptr %scevgep132, i64 %i.av ; 2 uses
  %scevgep136 = getelementptr i8, ptr %scevgep135, i64 %i.at ; 4 uses
  %i.aw = shl i64 %smax133, 3                     ; 6 uses
  %scevgep138 = getelementptr i8, ptr %scevgep137, i64 %i.aw ; 4 uses
  %scevgep140 = getelementptr i8, ptr %scevgep139, i64 %i.at ; 4 uses
  %scevgep142 = getelementptr i8, ptr %scevgep141, i64 %i.aw ; 4 uses
  %scevgep143 = getelementptr i8, ptr %1, i64 %i.at ; 2 uses
  %scevgep145 = getelementptr i8, ptr %scevgep144, i64 %i.aw ; 2 uses
  %scevgep148 = getelementptr i8, ptr %scevgep137, i64 %i.at ; 4 uses
  %scevgep150 = getelementptr i8, ptr %scevgep149, i64 %i.aw ; 4 uses
  %scevgep151 = getelementptr i8, ptr %scevgep141, i64 %i.at ; 4 uses
  %scevgep153 = getelementptr i8, ptr %scevgep152, i64 %i.aw ; 4 uses
  %scevgep155 = getelementptr i8, ptr %scevgep154, i64 %i.at ; 2 uses
  %scevgep157 = getelementptr i8, ptr %scevgep156, i64 %i.av ; 2 uses
  %scevgep159 = getelementptr i8, ptr %scevgep158, i64 %i.at ; 2 uses
  %scevgep161 = getelementptr i8, ptr %scevgep160, i64 %i.aw ; 2 uses
  %bound0 = icmp ult ptr %scevgep131, %scevgep138
  %bound1 = icmp ult ptr %scevgep136, %scevgep134
  %found.conflict = and i1 %bound0, %bound1
  %bound0163 = icmp ult ptr %scevgep131, %scevgep142
  %bound1164 = icmp ult ptr %scevgep140, %scevgep134
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx = or i1 %found.conflict, %found.conflict165
  %bound0166 = icmp ult ptr %scevgep143, %scevgep138
  %bound1167 = icmp ult ptr %scevgep136, %scevgep145
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %conflict.rdx, %found.conflict168
  %bound0170 = icmp ult ptr %scevgep143, %scevgep142
  %bound1171 = icmp ult ptr %scevgep140, %scevgep145
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  %bound0174 = icmp ult ptr %scevgep146, %scevgep138
  %bound1175 = icmp ult ptr %scevgep136, %scevgep147
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  %bound0178 = icmp ult ptr %scevgep146, %scevgep142
  %bound1179 = icmp ult ptr %scevgep140, %scevgep147
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %conflict.rdx177, %found.conflict180
  %bound0182 = icmp ult ptr %scevgep136, %scevgep142
  %bound1183 = icmp ult ptr %scevgep140, %scevgep138
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx181, %found.conflict184
  %bound0186 = icmp ult ptr %scevgep148, %scevgep153
  %bound1187 = icmp ult ptr %scevgep151, %scevgep150
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx185, %found.conflict188
  %bound0190 = icmp ult ptr %scevgep148, %scevgep157
  %bound1191 = icmp ult ptr %scevgep155, %scevgep150
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %conflict.rdx189, %found.conflict192
  %bound0194 = icmp ult ptr %scevgep148, %scevgep161
  %bound1195 = icmp ult ptr %scevgep159, %scevgep150
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %conflict.rdx193, %found.conflict196
  %bound0198 = icmp ult ptr %scevgep148, %scevgep162
  %bound1199 = icmp ult ptr %scevgep147, %scevgep150
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx201 = or i1 %conflict.rdx197, %found.conflict200
  %bound0202 = icmp ult ptr %scevgep151, %scevgep157
  %bound1203 = icmp ult ptr %scevgep155, %scevgep153
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx205 = or i1 %conflict.rdx201, %found.conflict204
  %bound0206 = icmp ult ptr %scevgep151, %scevgep161
  %bound1207 = icmp ult ptr %scevgep159, %scevgep153
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx209 = or i1 %conflict.rdx205, %found.conflict208
  %bound0210 = icmp ult ptr %scevgep151, %scevgep162
  %bound1211 = icmp ult ptr %scevgep147, %scevgep153
  %found.conflict212 = and i1 %bound0210, %bound1211
  %conflict.rdx213 = or i1 %conflict.rdx209, %found.conflict212
  br i1 %conflict.rdx213, label %scalar.ph214.preheader, label %vector.ph216

vector.ph216:                                     ; preds = %vector.memcheck129
  %n.mod.vf217 = and i64 %i.ag, 3                 ; 2 uses
  %i.ax = icmp eq i64 %n.mod.vf217, 0
  %i.ay = select i1 %i.ax, i64 4, i64 %n.mod.vf217
  %n.vec218 = sub i64 %i.ag, %i.ay                ; 2 uses
  %i.az = add i64 %.083, %n.vec218
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph216
  %index220 = phi i64 [ 0, %vector.ph216 ], [ %index.next238, %vector.body219 ] ; 2 uses
  %i.ba = add i64 %.083, %index220                ; 7 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ba ; 3 uses
  %wide.vec = load <8 x float>, ptr %i.bb, align 4, !tbaa !10, !alias.scope !23, !noalias !26
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bc = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ba ; 3 uses
  %i.bd = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ba
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ba
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %i.bh = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ba
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  %i.bj = load float, ptr %i.bc, align 4, !tbaa !10, !alias.scope !29, !noalias !26
  %i.bk = load float, ptr %i.be, align 4, !tbaa !10, !alias.scope !29, !noalias !26
  %i.bl = load float, ptr %i.bg, align 4, !tbaa !10, !alias.scope !29, !noalias !26
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !10, !alias.scope !29, !noalias !26
  %i.bn = insertelement <4 x float> poison, float %i.bj, i64 0
  %i.bo = insertelement <4 x float> %i.bn, float %i.bk, i64 1
  %i.bp = insertelement <4 x float> %i.bo, float %i.bl, i64 2
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 3
  %i.br = fadd <4 x float> %strided.vec, %i.bq
  %i.bs = getelementptr [8 x i8], ptr %invariant.gep112, i64 %i.ba
  %wide.vec221 = load <8 x float>, ptr %i.bb, align 4, !tbaa !16 ; 2 uses
  %wide.vec224 = load <8 x float>, ptr %i.bc, align 4, !tbaa !16 ; 2 uses
  %5 = fadd <8 x float> %wide.vec221, %wide.vec224
  %i.bt = shufflevector <8 x float> %5, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %interleaved.vec = shufflevector <4 x float> %i.br, <4 x float> %i.bt, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.bs, align 4, !tbaa !16
  %i.bu = load float, ptr %i.ac, align 4, !tbaa !10, !alias.scope !31, !noalias !26
  %broadcast.splatinsert233 = insertelement <4 x float> poison, float %i.bu, i64 0
  %broadcast.splat234 = shufflevector <4 x float> %broadcast.splatinsert233, <4 x float> poison, <4 x i32> zeroinitializer
  %6 = fsub <8 x float> %wide.vec221, %wide.vec224
  %7 = shufflevector <8 x float> %6, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bv = load float, ptr %i.ad, align 4, !tbaa !13, !alias.scope !33
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %wide.vec227 = load <8 x float>, ptr %i.bb, align 4, !tbaa !16 ; 2 uses
  %wide.vec230 = load <8 x float>, ptr %i.bc, align 4, !tbaa !16 ; 2 uses
  %8 = fsub <8 x float> %wide.vec227, %wide.vec230
  %i.bw = shufflevector <8 x float> %8, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.bx = fneg <4 x float> %i.bw
  %i.by = fmul <4 x float> %broadcast.splat, %i.bx
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat234, <4 x float> %7, <4 x float> %i.by)
  %i.ca = getelementptr [8 x i8], ptr %invariant.gep114, i64 %i.ba
  %i.cb = load float, ptr %i.ac, align 4, !tbaa !10, !alias.scope !31, !noalias !26
  %broadcast.splatinsert235 = insertelement <4 x float> poison, float %i.cb, i64 0
  %broadcast.splat236 = shufflevector <4 x float> %broadcast.splatinsert235, <4 x float> poison, <4 x i32> zeroinitializer
  %9 = fsub <8 x float> %wide.vec227, %wide.vec230
  %10 = shufflevector <8 x float> %9, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cc = fmul <4 x float> %broadcast.splat, %10
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat236, <4 x float> %i.bw, <4 x float> %i.cc)
  %interleaved.vec237 = shufflevector <4 x float> %i.bz, <4 x float> %i.cd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec237, ptr %i.ca, align 4, !tbaa !16
  %index.next238 = add nuw i64 %index220, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next238, %n.vec218
  br i1 %i.ce, label %scalar.ph214.preheader, label %vector.body219, !llvm.loop !35

scalar.ph214.preheader:                           ; preds = %vector.body219, %vector.memcheck129, %vector.scevcheck, %bb.c
  %indvars.iv.ph = phi i64 [ %.083, %vector.memcheck129 ], [ %.083, %vector.scevcheck ], [ %.083, %bb.c ], [ %i.az, %vector.body219 ]
  br label %scalar.ph214

scalar.ph214:                                     ; preds = %scalar.ph214.preheader, %scalar.ph214
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph214 ], [ %indvars.iv.ph, %scalar.ph214.preheader ] ; 6 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 4 uses
  %gep113 = getelementptr [8 x i8], ptr %invariant.gep112, i64 %indvars.iv
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.ci = load <2 x float>, ptr %i.cf, align 4, !tbaa !16
  %i.cj = load <2 x float>, ptr %gep, align 4, !tbaa !16
  %i.ck = fadd <2 x float> %i.ci, %i.cj
  store <2 x float> %i.ck, ptr %gep113, align 4, !tbaa !16
  %i.cl = load float, ptr %i.ac, align 4, !tbaa !10
  %i.cm = load float, ptr %i.cf, align 4, !tbaa !10
  %i.cn = load float, ptr %gep, align 4, !tbaa !10
  %i.co = fsub float %i.cm, %i.cn
  %i.cp = load float, ptr %i.ad, align 4, !tbaa !13 ; 2 uses
  %i.cq = load float, ptr %i.cg, align 4, !tbaa !13
  %i.cr = load float, ptr %i.ch, align 4, !tbaa !13
  %i.cs = fsub float %i.cq, %i.cr                 ; 2 uses
  %i.ct = fneg float %i.cs
  %i.cu = fmul float %i.cp, %i.ct
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.co, float %i.cu)
  %gep115 = getelementptr [8 x i8], ptr %invariant.gep114, i64 %indvars.iv ; 2 uses
  store float %i.cv, ptr %gep115, align 4, !tbaa !10
  %i.cw = load float, ptr %i.ac, align 4, !tbaa !10
  %i.cx = load float, ptr %i.cf, align 4, !tbaa !10
  %i.cy = load float, ptr %gep, align 4, !tbaa !10
  %i.cz = fsub float %i.cx, %i.cy
  %i.da = fmul float %i.cp, %i.cz
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.cs, float %i.da)
  %i.dc = getelementptr inbounds nuw i8, ptr %gep115, i64 4
  store float %i.db, ptr %i.dc, align 4, !tbaa !13
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not.not = icmp slt i64 %indvars.iv, %indvars.iv99
  br i1 %.not.not, label %scalar.ph214, label %bb.d, !llvm.loop !36

bb.d:                                             ; preds = %scalar.ph214
  %indvars.iv.next100 = add nsw i64 %indvars.iv99, %i.m ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next100, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.preheader95.preheader, label %bb.c, !llvm.loop !37

.preheader95.preheader:                           ; preds = %bb.d
  br i1 %or.cond, label %.preheader95.preheader260, label %vector.body

vector.body:                                      ; preds = %.preheader95.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader95.preheader ] ; 2 uses
  %i.dd = or disjoint i64 %index, 1               ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dd ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load = load <2 x i64>, ptr %i.df, align 4
  %wide.load116 = load <2 x i64>, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <2 x i64> %wide.load, ptr %i.de, align 4
  store <2 x i64> %wide.load116, ptr %i.dh, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.preheader95.preheader260

.preheader95.preheader260:                        ; preds = %.preheader95.preheader, %middle.block
  %indvars.iv103.ph = phi i64 [ 1, %.preheader95.preheader ], [ %i.l, %middle.block ] ; 4 uses
  %i.dj = sub nsw i64 %i.i, %indvars.iv103.ph
  %i.dk = sub nsw i64 %i.h, %indvars.iv103.ph
  %xtraiter = and i64 %i.dj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader95.prol.loopexit, label %.preheader95.prol

.preheader95.prol:                                ; preds = %.preheader95.preheader260, %.preheader95.prol
  %indvars.iv103.prol = phi i64 [ %indvars.iv.next104.prol, %.preheader95.prol ], [ %indvars.iv103.ph, %.preheader95.preheader260 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader95.prol ], [ 0, %.preheader95.preheader260 ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv103.prol
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103.prol
  %i.dn = load i64, ptr %i.dm, align 4
  store i64 %i.dn, ptr %i.dl, align 4
  %indvars.iv.next104.prol = add nuw nsw i64 %indvars.iv103.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader95.prol.loopexit, label %.preheader95.prol, !llvm.loop !39

.preheader95.prol.loopexit:                       ; preds = %.preheader95.prol, %.preheader95.preheader260
  %indvars.iv103.unr = phi i64 [ %indvars.iv103.ph, %.preheader95.preheader260 ], [ %indvars.iv.next104.prol, %.preheader95.prol ]
  %i.do = icmp ult i64 %i.dk, 3
  br i1 %i.do, label %.loopexit, label %.preheader95

.preheader95:                                     ; preds = %.preheader95.prol.loopexit, %.preheader95
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.3, %.preheader95 ], [ %indvars.iv103.unr, %.preheader95.prol.loopexit ] ; 6 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv103
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv103
  %i.dr = load i64, ptr %i.dq, align 4
  store i64 %i.dr, ptr %i.dp, align 4
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next104
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next104
  %i.du = load i64, ptr %i.dt, align 4
  store i64 %i.du, ptr %i.ds, align 4
  %indvars.iv.next104.1 = add nuw nsw i64 %indvars.iv103, 2 ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next104.1
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next104.1
  %i.dx = load i64, ptr %i.dw, align 4
  store i64 %i.dx, ptr %i.dv, align 4
  %indvars.iv.next104.2 = add nuw nsw i64 %indvars.iv103, 3 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next104.2
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next104.2
  %i.ea = load i64, ptr %i.dz, align 4
  store i64 %i.ea, ptr %i.dy, align 4
  %indvars.iv.next104.3 = add nuw nsw i64 %indvars.iv103, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next104.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.preheader95, !llvm.loop !41

.loopexit:                                        ; preds = %.preheader95.prol.loopexit, %.preheader95, %middle.block
  %i.eb = shl nsw i32 %.084, 1                    ; 2 uses
  %.not93 = icmp sgt i32 %i.eb, %i.c
  br i1 %.not93, label %.preheader, label %bb.b, !llvm.loop !42

.preheader:                                       ; preds = %.loopexit
  %.not9496 = icmp slt i32 %0, 1
  br i1 %.not9496, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ec = fneg float %4                           ; 2 uses
  %i.ed = add nuw i32 %0, 1
  %wide.trip.count109 = zext i32 %i.ed to i64
  %i.ee = zext nneg i32 %0 to i64                 ; 3 uses
  %min.iters.check242 = icmp eq i32 %0, 1
  br i1 %min.iters.check242, label %scalar.ph241.preheader, label %vector.ph243

vector.ph243:                                     ; preds = %.lr.ph
  %n.vec245 = and i64 %i.ee, 2147483646           ; 2 uses
  %i.ef = or i64 %i.ee, 1
  %broadcast.splatinsert246 = insertelement <2 x float> poison, float %i.ec, i64 0
  %broadcast.splatinsert248 = insertelement <2 x float> poison, float %4, i64 0
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph243
  %index251 = phi i64 [ 0, %vector.ph243 ], [ %index.next256, %vector.body250 ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index251
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %wide.vec252 = load <4 x float>, ptr %i.eh, align 4, !tbaa !16 ; 2 uses
  %strided.vec253 = shufflevector <4 x float> %wide.vec252, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec254 = shufflevector <4 x float> %wide.vec252, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ei = shufflevector <2 x float> %broadcast.splatinsert248, <2 x float> %strided.vec254, <4 x i32> <i32 0, i32 2, i32 0, i32 3>
  %i.ej = shufflevector <2 x float> %strided.vec253, <2 x float> %broadcast.splatinsert246, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  %interleaved.vec255 = fmul <4 x float> %i.ei, %i.ej
  store <4 x float> %interleaved.vec255, ptr %i.eh, align 4, !tbaa !16
  %index.next256 = add nuw i64 %index251, 2       ; 2 uses
  %i.ek = icmp eq i64 %index.next256, %n.vec245
  br i1 %i.ek, label %middle.block257, label %vector.body250, !llvm.loop !43

middle.block257:                                  ; preds = %vector.body250
  %cmp.n258 = icmp eq i64 %n.vec245, %i.ee
  br i1 %cmp.n258, label %._crit_edge, label %scalar.ph241.preheader

scalar.ph241.preheader:                           ; preds = %.lr.ph, %middle.block257
  %indvars.iv106.ph = phi i64 [ 1, %.lr.ph ], [ %i.ef, %middle.block257 ]
  %i.el = insertelement <2 x float> poison, float %4, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.ec, i64 1
  br label %scalar.ph241

scalar.ph241:                                     ; preds = %scalar.ph241.preheader, %scalar.ph241
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %scalar.ph241 ], [ %indvars.iv106.ph, %scalar.ph241.preheader ] ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv106 ; 2 uses
  %i.eo = load <2 x float>, ptr %i.en, align 4, !tbaa !16
  %i.ep = fmul <2 x float> %i.eo, %i.em
  store <2 x float> %i.ep, ptr %i.en, align 4, !tbaa !16
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %._crit_edge, label %scalar.ph241, !llvm.loop !44

._crit_edge:                                      ; preds = %scalar.ph241, %middle.block257, %.preheader
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @Oscar() local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [26 x float], align 16            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
end_hunk_0
begin_hunk_1_@Oscar:bb.a
  %i.go = fadd <2 x float> %i.gn, %i.gk
  %i.gp = fmul <2 x float> %i.di, %i.go
  store <2 x float> %i.gp, ptr getelementptr inbounds nuw (i8, ptr @e, i64 888), align 8, !tbaa !16
  %i.gq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 936), align 8, !tbaa !16 ; 2 uses
  %i.gr = fadd <2 x float> %i.gq, %i.gn
  %i.gs = fmul <2 x float> %i.di, %i.gr
  store <2 x float> %i.gs, ptr getelementptr inbounds nuw (i8, ptr @e, i64 920), align 8, !tbaa !16
  %i.gt = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 968), align 8, !tbaa !16 ; 2 uses
  %i.gu = fadd <2 x float> %i.gt, %i.gq
  %i.gv = fmul <2 x float> %i.di, %i.gu
  store <2 x float> %i.gv, ptr getelementptr inbounds nuw (i8, ptr @e, i64 952), align 8, !tbaa !16
  %i.gw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 1000), align 8, !tbaa !16 ; 2 uses
  %i.gx = fadd <2 x float> %i.gw, %i.gt
  %i.gy = fmul <2 x float> %i.di, %i.gx
  store <2 x float> %i.gy, ptr getelementptr inbounds nuw (i8, ptr @e, i64 984), align 8, !tbaa !16
  %i.gz = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @e, i64 1032), align 8, !tbaa !16
  %i.ha = fadd <2 x float> %i.gz, %i.gw
  %i.hb = fmul <2 x float> %i.di, %i.ha
  store <2 x float> %i.hb, ptr getelementptr inbounds nuw (i8, ptr @e, i64 1016), align 8, !tbaa !16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.hd = load <4 x float>, ptr %i.hc, align 8
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv53.i.5 = phi i64 [ 1, %bb.c ], [ %indvars.iv.next54.i.5.3, %bb.d ] ; 8 uses
  %gep.i.5 = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @e, i64 8), i64 %indvars.iv53.i.5
  %i.hf = getelementptr i8, ptr %gep.i.5, i64 8
  %i.hg = getelementptr [8 x i8], ptr @e, i64 %indvars.iv53.i.5
  %i.hh = getelementptr [8 x i8], ptr @e, i64 %indvars.iv53.i.5
  %i.hi = getelementptr i8, ptr %i.hh, i64 8
  %i.hj = load <2 x float>, ptr %i.hf, align 8, !tbaa !16 ; 2 uses
  %i.hk = load <2 x float>, ptr %i.hg, align 8, !tbaa !16
  %i.hl = fadd <2 x float> %i.hj, %i.hk
  %i.hm = fmul <2 x float> %i.he, %i.hl
  store <2 x float> %i.hm, ptr %i.hi, align 8, !tbaa !16
  %indvars.iv.next54.i.5 = add nuw nsw i64 %indvars.iv53.i.5, 2 ; 2 uses
  %gep.i.5.1 = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @e, i64 8), i64 %indvars.iv.next54.i.5
  %i.hn = getelementptr i8, ptr %gep.i.5.1, i64 8
  %i.ho = getelementptr [8 x i8], ptr @e, i64 %indvars.iv.next54.i.5
  %i.hp = getelementptr i8, ptr %i.ho, i64 8
  %i.hq = load <2 x float>, ptr %i.hn, align 8, !tbaa !16 ; 2 uses
  %i.hr = fadd <2 x float> %i.hq, %i.hj
  %i.hs = fmul <2 x float> %i.he, %i.hr
  store <2 x float> %i.hs, ptr %i.hp, align 8, !tbaa !16
  %indvars.iv.next54.i.5.1 = add nuw nsw i64 %indvars.iv53.i.5, 4 ; 2 uses
  %gep.i.5.2 = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @e, i64 8), i64 %indvars.iv.next54.i.5.1
  %i.ht = getelementptr i8, ptr %gep.i.5.2, i64 8
  %i.hu = getelementptr [8 x i8], ptr @e, i64 %indvars.iv.next54.i.5.1
  %i.hv = getelementptr i8, ptr %i.hu, i64 8
  %i.hw = load <2 x float>, ptr %i.ht, align 8, !tbaa !16 ; 2 uses
  %i.hx = fadd <2 x float> %i.hw, %i.hq
  %i.hy = fmul <2 x float> %i.he, %i.hx
  store <2 x float> %i.hy, ptr %i.hv, align 8, !tbaa !16
  %indvars.iv.next54.i.5.2 = add nuw nsw i64 %indvars.iv53.i.5, 6 ; 2 uses
  %gep.i.5.3 = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @e, i64 8), i64 %indvars.iv.next54.i.5.2
  %i.hz = getelementptr i8, ptr %gep.i.5.3, i64 8
  %i.ia = getelementptr [8 x i8], ptr @e, i64 %indvars.iv.next54.i.5.2
  %i.ib = getelementptr i8, ptr %i.ia, i64 8
  %i.ic = load <2 x float>, ptr %i.hz, align 8, !tbaa !16
  %i.id = fadd <2 x float> %i.ic, %i.hw
  %i.ie = fmul <2 x float> %i.he, %i.id
  store <2 x float> %i.ie, ptr %i.ib, align 8, !tbaa !16
  %indvars.iv.next54.i.5.3 = add nuw nsw i64 %indvars.iv53.i.5, 8
  %.not.i.5.3 = icmp samesign ugt i64 %indvars.iv53.i.5, 120
  br i1 %.not.i.5.3, label %Exptab.exit, label %bb.d, !llvm.loop !45

Exptab.exit:                                      ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.e

.preheader15:                                     ; preds = %bb.e
  %i.if = zext nneg i32 %i.io to i64
  store i64 %i.if, ptr @seed, align 8, !tbaa !8
  %i.ig = extractelement <2 x float> %i.iu, i64 0
  store float %i.ig, ptr @zr, align 4, !tbaa !16
  %i.ih = extractelement <2 x float> %i.iu, i64 1
  store float %i.ih, ptr @zi, align 4, !tbaa !16
  br label %.preheader

bb.e:                                             ; preds = %Exptab.exit, %bb.e
  %indvars.iv = phi i64 [ 1, %Exptab.exit ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.ii = phi i32 [ 5767, %Exptab.exit ], [ %i.io, %bb.e ]
  %i.ij = mul nuw nsw i32 %i.ii, 4855
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %indvars.iv
  %i.il = add nuw nsw i32 %i.ij, 1731             ; 2 uses
  %i.im = mul i32 %i.il, 4855
  %i.in = add i32 %i.im, 1731
  %i.io = and i32 %i.in, 8191                     ; 3 uses
  %i.ip = and i32 %i.il, 8191
  %i.iq = uitofp nneg i32 %i.io to float
  %i.ir = uitofp nneg i32 %i.ip to float
  %i.is = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.it = insertelement <2 x float> %i.is, float %i.iq, i64 1
  %i.iu = fmul nnan <2 x float> %i.it, splat (float f0x39000000) ; 3 uses
  %i.iv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iu, <2 x float> splat (float 2.000000e+01), <2 x float> splat (float -1.000000e+01))
  store <2 x float> %i.iv, ptr %i.ik, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 257
  br i1 %exitcond.not, label %.preheader15, label %bb.e, !llvm.loop !46

.preheader:                                       ; preds = %.preheader15, %Fft.exit
  %.119 = phi i32 [ 1, %.preheader15 ], [ %i.lo, %Fft.exit ]
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.preheader95.i.preheader
  %.084.i = phi i32 [ %i.le, %.preheader95.i.preheader ], [ 1, %.preheader ] ; 3 uses
  %i.iw = zext nneg i32 %.084.i to i64            ; 5 uses
  %i.ix = shl nuw nsw i64 %i.iw, 3                ; 4 uses
  %i.iy = shl nuw nsw i64 %i.iw, 3
  %i.iz = shl nuw nsw i64 %i.iw, 3
  %i.ja = getelementptr i8, ptr @w, i64 %i.ix
  %i.jb = getelementptr i8, ptr @w, i64 %i.ix
  %i.jc = getelementptr i8, ptr %i.jb, i64 4
  %i.jd = getelementptr i8, ptr @w, i64 %i.ix
  %i.je = getelementptr i8, ptr %i.jd, i64 8
  %i.jf = getelementptr i8, ptr @w, i64 %i.ix
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.f
  %indvar = phi i64 [ %indvar.next, %.loopexit ], [ 0, %bb.f ] ; 3 uses
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i, %.loopexit ], [ %i.iw, %bb.f ] ; 4 uses
  %.085.i = phi i64 [ %indvars.iv99.i, %.loopexit ], [ 0, %bb.f ] ; 5 uses
  %.083.i = phi i64 [ %i.jm, %.loopexit ], [ 1, %bb.f ] ; 12 uses
  %i.jg = mul i64 %i.iz, %indvar                  ; 3 uses
  %scevgep41 = getelementptr i8, ptr %i.ja, i64 %i.jg
  %scevgep43 = getelementptr i8, ptr %i.jc, i64 %i.jg ; 2 uses
  %scevgep48 = getelementptr i8, ptr %i.je, i64 %i.jg
  %i.jh = getelementptr [8 x i8], ptr @e, i64 %.085.i ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 8
  %i.jj = getelementptr i8, ptr %i.jh, i64 12
  %invariant.gep112.i = getelementptr [8 x i8], ptr @w, i64 %.085.i ; 2 uses
  %invariant.gep114.i = getelementptr [8 x i8], ptr @w, i64 %indvars.iv99.i ; 2 uses
  %i.jk = load float, ptr %i.ji, align 8, !tbaa !10 ; 2 uses
  %i.jl = load float, ptr %i.jj, align 4, !tbaa !13 ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %.083.i, i64 %indvars.iv99.i) ; 6 uses
  %i.jm = add nuw i64 %smax, 1
  %i.jn = sub i64 %smax, %.083.i
  %i.jo = add i64 %i.jn, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.jo, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.g
  %i.jp = mul i64 %i.iy, %indvar
  %scevgep34 = getelementptr i8, ptr %i.jf, i64 %i.jp
  %i.jq = sub i64 %smax, %.083.i                  ; 3 uses
  %i.jr = shl i64 %.083.i, 3
  %i.js = add i64 %.085.i, %.083.i
  %i.jt = shl i64 %i.js, 3
  %scevgep = getelementptr i8, ptr @w, i64 %i.jt  ; 2 uses
  %mul.result = shl i64 %i.jq, 3
  %i.ju = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.jv = icmp ult ptr %i.ju, %scevgep
  %scevgep35 = getelementptr i8, ptr %scevgep34, i64 %i.jr ; 2 uses
  %mul.result37 = shl i64 %i.jq, 3
  %mul.overflow38 = icmp ugt i64 %i.jq, 2305843009213693951
  %i.jw = getelementptr i8, ptr %scevgep35, i64 %mul.result37
  %i.jx = icmp ult ptr %i.jw, %scevgep35
  %i.jy = or i1 %i.jx, %mul.overflow38
  %i.jz = or i1 %i.jv, %i.jy
  br i1 %i.jz, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ka = shl i64 %.083.i, 3                      ; 2 uses
  %i.kb = add i64 %.085.i, %.083.i
  %i.kc = shl i64 %i.kb, 3                        ; 2 uses
  %scevgep39 = getelementptr i8, ptr @w, i64 %i.kc
  %i.kd = add i64 %.085.i, %smax
  %i.ke = shl i64 %i.kd, 3                        ; 2 uses
  %scevgep40 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @w, i64 4), i64 %i.ke
  %scevgep42 = getelementptr i8, ptr %scevgep41, i64 %i.ka
  %i.kf = shl i64 %smax, 3                        ; 2 uses
  %scevgep44 = getelementptr i8, ptr %scevgep43, i64 %i.kf
  %scevgep45 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @w, i64 4), i64 %i.kc
  %scevgep46 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @w, i64 8), i64 %i.ke
  %scevgep47 = getelementptr i8, ptr %scevgep43, i64 %i.ka
  %scevgep49 = getelementptr i8, ptr %scevgep48, i64 %i.kf
  %bound0 = icmp ult ptr %scevgep39, %scevgep44
  %bound1 = icmp ult ptr %scevgep42, %scevgep40
  %found.conflict = and i1 %bound0, %bound1
  %bound050 = icmp ult ptr %scevgep45, %scevgep49
  %bound151 = icmp ult ptr %scevgep47, %scevgep46
  %found.conflict52 = and i1 %bound050, %bound151
  %conflict.rdx = or i1 %found.conflict, %found.conflict52
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph53

vector.ph53:                                      ; preds = %vector.memcheck
  %n.vec = and i64 %i.jo, -4                      ; 3 uses
  %i.kg = add i64 %.083.i, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.jk, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert54 = insertelement <4 x float> poison, float %i.jl, i64 0
  %broadcast.splat55 = shufflevector <4 x float> %broadcast.splatinsert54, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph53
  %index57 = phi i64 [ 0, %vector.ph53 ], [ %index.next66, %vector.body56 ] ; 2 uses
  %i.kh = add i64 %.083.i, %index57               ; 4 uses
  %i.ki = getelementptr inbounds [8 x i8], ptr @z, i64 %i.kh
  %wide.vec58 = load <8 x float>, ptr %i.ki, align 8, !tbaa !16 ; 3 uses
  %i.kj = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @z, i64 1024), i64 %i.kh
  %wide.vec61 = load <8 x float>, ptr %i.kj, align 8, !tbaa !16 ; 3 uses
  %0 = getelementptr [8 x i8], ptr %invariant.gep112.i, i64 %i.kh
  %interleaved.vec64 = fadd <8 x float> %wide.vec58, %wide.vec61
  store <8 x float> %interleaved.vec64, ptr %0, align 8, !tbaa !16
  %1 = fsub <8 x float> %wide.vec58, %wide.vec61
  %2 = shufflevector <8 x float> %1, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %3 = fsub <8 x float> %wide.vec58, %wide.vec61
  %4 = shufflevector <8 x float> %3, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.kk = fneg <4 x float> %4
  %i.kl = fmul <4 x float> %broadcast.splat55, %i.kk
  %i.km = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %2, <4 x float> %i.kl)
  %i.kn = getelementptr [8 x i8], ptr %invariant.gep114.i, i64 %i.kh
  %i.ko = fmul <4 x float> %2, %broadcast.splat55
  %i.kp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %4, <4 x float> %i.ko)
  %interleaved.vec65 = shufflevector <4 x float> %i.km, <4 x float> %i.kp, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec65, ptr %i.kn, align 8, !tbaa !16
  %index.next66 = add nuw i64 %index57, 4         ; 2 uses
  %i.kq = icmp eq i64 %index.next66, %n.vec
  br i1 %i.kq, label %middle.block67, label %vector.body56, !llvm.loop !47

middle.block67:                                   ; preds = %vector.body56
  %cmp.n = icmp eq i64 %i.jo, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %bb.g, %middle.block67
  %indvars.iv.i6.ph = phi i64 [ %.083.i, %vector.memcheck ], [ %.083.i, %vector.scevcheck ], [ %.083.i, %bb.g ], [ %i.kg, %middle.block67 ]
  %i.kr = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.ks = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kt = insertelement <2 x float> poison, float %i.jk, i64 0
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i6 = phi i64 [ %indvars.iv.next.i8, %scalar.ph ], [ %indvars.iv.i6.ph, %scalar.ph.preheader ] ; 6 uses
  %i.kv = getelementptr inbounds [8 x i8], ptr @z, i64 %indvars.iv.i6
  %gep.i7 = getelementptr [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @z, i64 1024), i64 %indvars.iv.i6
  %gep113.i = getelementptr [8 x i8], ptr %invariant.gep112.i, i64 %indvars.iv.i6
  %i.kw = load <2 x float>, ptr %i.kv, align 8, !tbaa !16 ; 2 uses
  %i.kx = load <2 x float>, ptr %gep.i7, align 8, !tbaa !16 ; 2 uses
  %i.ky = fadd <2 x float> %i.kw, %i.kx
  store <2 x float> %i.ky, ptr %gep113.i, align 8, !tbaa !16
  %gep115.i = getelementptr [8 x i8], ptr %invariant.gep114.i, i64 %indvars.iv.i6
  %i.kz = fsub <2 x float> %i.kw, %i.kx           ; 3 uses
  %i.la = fneg <2 x float> %i.kz
  %i.lb = shufflevector <2 x float> %i.la, <2 x float> %i.kz, <2 x i32> <i32 1, i32 2>
  %i.lc = fmul <2 x float> %i.ks, %i.lb
  %i.ld = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ku, <2 x float> %i.kz, <2 x float> %i.lc)
  store <2 x float> %i.ld, ptr %gep115.i, align 8, !tbaa !16
  %indvars.iv.next.i8 = add i64 %indvars.iv.i6, 1
  %exitcond23.not = icmp eq i64 %indvars.iv.i6, %smax
  br i1 %exitcond23.not, label %.loopexit, label %scalar.ph, !llvm.loop !48

.loopexit:                                        ; preds = %scalar.ph, %middle.block67
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, %i.iw ; 2 uses
  %.not.i9 = icmp samesign ugt i64 %indvars.iv.next100.i, 128
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i9, label %.preheader95.i.preheader, label %bb.g, !llvm.loop !37

.preheader95.i.preheader:                         ; preds = %.loopexit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) getelementptr inbounds nuw (i8, ptr @z, i64 8), ptr noundef nonnull align 8 dereferenceable(2048) getelementptr inbounds nuw (i8, ptr @w, i64 8), i64 2048, i1 false)
  %i.le = shl nuw nsw i32 %.084.i, 1
  %.not93.i = icmp samesign ugt i32 %.084.i, 64
  br i1 %.not93.i, label %vector.body, label %bb.f, !llvm.loop !42

vector.body:                                      ; preds = %.preheader95.i.preheader, %vector.body
  %index = phi i64 [ %index.next.3, %vector.body ], [ 0, %.preheader95.i.preheader ] ; 5 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %index
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8 ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.lg, align 8, !tbaa !16
  %interleaved.vec = fmul <4 x float> %wide.vec, <float 6.250000e-02, float -6.250000e-02, float 6.250000e-02, float -6.250000e-02>
  store <4 x float> %interleaved.vec, ptr %i.lg, align 8, !tbaa !16
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %index
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24 ; 2 uses
  %wide.vec.1 = load <4 x float>, ptr %i.li, align 8, !tbaa !16
  %interleaved.vec.1 = fmul <4 x float> %wide.vec.1, <float 6.250000e-02, float -6.250000e-02, float 6.250000e-02, float -6.250000e-02>
  store <4 x float> %interleaved.vec.1, ptr %i.li, align 8, !tbaa !16
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %index
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 40 ; 2 uses
  %wide.vec.2 = load <4 x float>, ptr %i.lk, align 8, !tbaa !16
  %interleaved.vec.2 = fmul <4 x float> %wide.vec.2, <float 6.250000e-02, float -6.250000e-02, float 6.250000e-02, float -6.250000e-02>
  store <4 x float> %interleaved.vec.2, ptr %i.lk, align 8, !tbaa !16
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr @z, i64 %index
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 56 ; 2 uses
  %wide.vec.3 = load <4 x float>, ptr %i.lm, align 8, !tbaa !16
  %interleaved.vec.3 = fmul <4 x float> %wide.vec.3, <float 6.250000e-02, float -6.250000e-02, float 6.250000e-02, float -6.250000e-02>
  store <4 x float> %interleaved.vec.3, ptr %i.lm, align 8, !tbaa !16
  %index.next.3 = add nuw nsw i64 %index, 8       ; 2 uses
  %i.ln = icmp eq i64 %index.next.3, 256
  br i1 %i.ln, label %Fft.exit, label %vector.body, !llvm.loop !49

Fft.exit:                                         ; preds = %vector.body
  %i.lo = add nuw nsw i32 %.119, 1                ; 2 uses
  %exitcond24.not = icmp eq i32 %i.lo, 21
  br i1 %exitcond24.not, label %Printcomplex.exit, label %.preheader, !llvm.loop !50

Printcomplex.exit:                                ; preds = %Fft.exit
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.lp = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 8), align 8, !tbaa !10
  %i.lq = fpext float %i.lp to double
  %i.lr = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 12), align 4, !tbaa !13
  %i.ls = fpext float %i.lr to double
  %i.lt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.lq, double noundef %i.ls) ; 0 uses
  %i.lu = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 144), align 16, !tbaa !10
  %i.lv = fpext float %i.lu to double
  %i.lw = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 148), align 4, !tbaa !13
  %i.lx = fpext float %i.lw to double
  %i.ly = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.lv, double noundef %i.lx) ; 0 uses
  %putchar14.i = tail call i32 @putchar(i32 10)   ; 0 uses
  %i.lz = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 280), align 8, !tbaa !10
  %i.ma = fpext float %i.lz to double
  %i.mb = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 284), align 4, !tbaa !13
  %i.mc = fpext float %i.mb to double
  %i.md = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.ma, double noundef %i.mc) ; 0 uses
  %i.me = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 416), align 16, !tbaa !10
  %i.mf = fpext float %i.me to double
  %i.mg = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 420), align 4, !tbaa !13
  %i.mh = fpext float %i.mg to double
  %i.mi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.mf, double noundef %i.mh) ; 0 uses
  %putchar14.i.1 = tail call i32 @putchar(i32 10) ; 0 uses
  %i.mj = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 552), align 8, !tbaa !10
  %i.mk = fpext float %i.mj to double
  %i.ml = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 556), align 4, !tbaa !13
  %i.mm = fpext float %i.ml to double
  %i.mn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.mk, double noundef %i.mm) ; 0 uses
  %i.mo = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 688), align 16, !tbaa !10
  %i.mp = fpext float %i.mo to double
  %i.mq = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 692), align 4, !tbaa !13
  %i.mr = fpext float %i.mq to double
  %i.ms = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.mp, double noundef %i.mr) ; 0 uses
  %putchar14.i.2 = tail call i32 @putchar(i32 10) ; 0 uses
  %i.mt = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 824), align 8, !tbaa !10
  %i.mu = fpext float %i.mt to double
  %i.mv = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 828), align 4, !tbaa !13
  %i.mw = fpext float %i.mv to double
  %i.mx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.mu, double noundef %i.mw) ; 0 uses
  %i.my = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 960), align 16, !tbaa !10
  %i.mz = fpext float %i.my to double
  %i.na = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 964), align 4, !tbaa !13
  %i.nb = fpext float %i.na to double
  %i.nc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.mz, double noundef %i.nb) ; 0 uses
  %putchar14.i.3 = tail call i32 @putchar(i32 10) ; 0 uses
  %i.nd = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1096), align 8, !tbaa !10
  %i.ne = fpext float %i.nd to double
  %i.nf = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1100), align 4, !tbaa !13
  %i.ng = fpext float %i.nf to double
  %i.nh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.ne, double noundef %i.ng) ; 0 uses
  %i.ni = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1232), align 16, !tbaa !10
  %i.nj = fpext float %i.ni to double
  %i.nk = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1236), align 4, !tbaa !13
  %i.nl = fpext float %i.nk to double
  %i.nm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.nj, double noundef %i.nl) ; 0 uses
  %putchar14.i.4 = tail call i32 @putchar(i32 10) ; 0 uses
  %i.nn = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1368), align 8, !tbaa !10
  %i.no = fpext float %i.nn to double
  %i.np = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1372), align 4, !tbaa !13
  %i.nq = fpext float %i.np to double
  %i.nr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.no, double noundef %i.nq) ; 0 uses
  %i.ns = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1504), align 16, !tbaa !10
  %i.nt = fpext float %i.ns to double
  %i.nu = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1508), align 4, !tbaa !13
  %i.nv = fpext float %i.nu to double
  %i.nw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.nt, double noundef %i.nv) ; 0 uses
  %putchar14.i.5 = tail call i32 @putchar(i32 10) ; 0 uses
  %i.nx = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1640), align 8, !tbaa !10
  %i.ny = fpext float %i.nx to double
  %i.nz = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1644), align 4, !tbaa !13
  %i.oa = fpext float %i.nz to double
  %i.ob = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.ny, double noundef %i.oa) ; 0 uses
  %i.oc = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1776), align 16, !tbaa !10
  %i.od = fpext float %i.oc to double
  %i.oe = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1780), align 4, !tbaa !13
  %i.of = fpext float %i.oe to double
  %i.og = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.od, double noundef %i.of) ; 0 uses
  %putchar14.i.6 = tail call i32 @putchar(i32 10) ; 0 uses
  %i.oh = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1912), align 8, !tbaa !10
  %i.oi = fpext float %i.oh to double
  %i.oj = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 1916), align 4, !tbaa !13
  %i.ok = fpext float %i.oj to double
  %i.ol = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.oi, double noundef %i.ok) ; 0 uses
  %i.om = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 2048), align 16, !tbaa !10
  %i.on = fpext float %i.om to double
  %i.oo = load float, ptr getelementptr inbounds nuw (i8, ptr @z, i64 2052), align 4, !tbaa !13
  %i.op = fpext float %i.oo to double
  %i.oq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.on, double noundef %i.op) ; 0 uses
  %putchar14.i.7 = tail call i32 @putchar(i32 10) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
bb.a:
  tail call void @Oscar()
  tail call void @Oscar()
  tail call void @Oscar()
  tail call void @Oscar()
  tail call void @Oscar()
  tail call void @Oscar()
  tail call void @Oscar()
  tail call void @Oscar()
  tail call void @Oscar()
  tail call void @Oscar()
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_1
