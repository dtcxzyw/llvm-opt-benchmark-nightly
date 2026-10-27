Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/variational_refinement?download=true
inline.NumInlined: 820
inline.NumDeleted: 209
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK2cv25VariationalRefinementImpl19RedBlackSOR_ParBodyclERKNS_5RangeE:bb.a
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4 ; 2 uses
  %i.he = and i64 %indvars.iv137, 1
  %i.hf = icmp eq i64 %i.he, 0
  %i.hg = mul i64 %i.gu, %i.bb
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hg ; 2 uses
  %i.hi = mul i64 %i.gi, %i.bb
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.hi ; 2 uses
  %i.hk = mul i64 %i.gp, %i.bb
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.hk ; 2 uses
  br i1 %i.hf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.f, %bb.g
  %.sink = phi i64 [ 5584, %bb.i ], [ 5588, %bb.j ], [ 5576, %bb.f ], [ 5580, %bb.g ]
  %.0124 = phi ptr [ %i.et, %bb.i ], [ %i.et, %bb.j ], [ %i.bl, %bb.f ], [ %i.bl, %bb.g ] ; 5 uses
  %.0123 = phi ptr [ %i.ey, %bb.i ], [ %i.ey, %bb.j ], [ %i.bq, %bb.f ], [ %i.bq, %bb.g ] ; 5 uses
  %.0122 = phi ptr [ %i.fd, %bb.i ], [ %i.fd, %bb.j ], [ %i.bv, %bb.f ], [ %i.bv, %bb.g ] ; 5 uses
  %.0121 = phi ptr [ %i.fi, %bb.i ], [ %i.fi, %bb.j ], [ %i.ca, %bb.f ], [ %i.ca, %bb.g ] ; 5 uses
  %.0120 = phi ptr [ %i.fn, %bb.i ], [ %i.fn, %bb.j ], [ %i.cf, %bb.f ], [ %i.cf, %bb.g ] ; 5 uses
  %.0119 = phi ptr [ %i.eo, %bb.i ], [ %i.eo, %bb.j ], [ %i.bg, %bb.f ], [ %i.bg, %bb.g ] ; 5 uses
  %.0118 = phi ptr [ %i.fv, %bb.i ], [ %i.fv, %bb.j ], [ %i.cn, %bb.f ], [ %i.cn, %bb.g ] ; 19 uses
  %.0117 = phi ptr [ %i.gd, %bb.i ], [ %i.gd, %bb.j ], [ %i.cv, %bb.f ], [ %i.cv, %bb.g ] ; 19 uses
  %.0116 = phi ptr [ %i.hm, %bb.i ], [ %i.hp, %bb.j ], [ %i.ee, %bb.f ], [ %i.eh, %bb.g ] ; 3 uses
  %.0115 = phi ptr [ %i.hn, %bb.i ], [ %i.hq, %bb.j ], [ %i.ef, %bb.f ], [ %i.ei, %bb.g ] ; 6 uses
  %.0114 = phi ptr [ %i.ho, %bb.i ], [ %i.hr, %bb.j ], [ %i.eg, %bb.f ], [ %i.ej, %bb.g ] ; 6 uses
  %.0113 = phi ptr [ %i.gx, %bb.i ], [ %i.gx, %bb.j ], [ %i.dp, %bb.f ], [ %i.dp, %bb.g ] ; 5 uses
  %.0112 = phi ptr [ %i.ha, %bb.i ], [ %i.ha, %bb.j ], [ %i.ds, %bb.f ], [ %i.ds, %bb.g ] ; 5 uses
  %.0111 = phi ptr [ %i.hd, %bb.i ], [ %i.hd, %bb.j ], [ %i.dv, %bb.f ], [ %i.dv, %bb.g ] ; 5 uses
  %.0110 = phi ptr [ %i.gl, %bb.i ], [ %i.gl, %bb.j ], [ %i.dd, %bb.f ], [ %i.dd, %bb.g ] ; 5 uses
  %.0109 = phi ptr [ %i.gs, %bb.i ], [ %i.gs, %bb.j ], [ %i.dk, %bb.f ], [ %i.dk, %bb.g ] ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sink
  %.0107 = load i32, ptr %i.hs, align 4, !tbaa !78 ; 3 uses
  %i.ht = icmp sgt i32 %.0107, 0
  br i1 %i.ht, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %wide.trip.count = zext nneg i32 %.0107 to i64  ; 4 uses
  %min.iters.check = icmp ult i32 %.0107, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.hu = shl nuw nsw i64 %wide.trip.count, 2     ; 16 uses
  %scevgep = getelementptr i8, ptr %.0118, i64 %i.hu ; 16 uses
  %scevgep140 = getelementptr i8, ptr %.0117, i64 %i.hu ; 16 uses
  %scevgep141 = getelementptr i8, ptr %.0113, i64 %i.hu ; 2 uses
  %scevgep142 = getelementptr i8, ptr %.0116, i64 -4 ; 3 uses
  %scevgep143 = getelementptr i8, ptr %scevgep142, i64 %i.hu ; 2 uses
  %scevgep144 = getelementptr i8, ptr %.0110, i64 %i.hu ; 2 uses
  %scevgep145 = getelementptr i8, ptr %.0112, i64 %i.hu ; 2 uses
  %scevgep146 = getelementptr i8, ptr %.0115, i64 -4 ; 2 uses
  %scevgep147 = getelementptr i8, ptr %.0115, i64 %i.hu ; 2 uses
  %scevgep148 = getelementptr i8, ptr %.0119, i64 %i.hu ; 2 uses
  %scevgep149 = getelementptr i8, ptr %.0109, i64 %i.hu ; 2 uses
  %scevgep150 = getelementptr i8, ptr %.0111, i64 %i.hu ; 2 uses
  %scevgep151 = getelementptr i8, ptr %.0114, i64 -4 ; 2 uses
  %scevgep152 = getelementptr i8, ptr %.0114, i64 %i.hu ; 2 uses
  %scevgep154 = getelementptr i8, ptr %.0121, i64 %i.hu ; 2 uses
  %scevgep155 = getelementptr i8, ptr %.0123, i64 %i.hu ; 2 uses
  %scevgep156 = getelementptr i8, ptr %.0124, i64 %i.hu ; 2 uses
  %scevgep157 = getelementptr i8, ptr %.0120, i64 %i.hu ; 2 uses
  %scevgep158 = getelementptr i8, ptr %.0122, i64 %i.hu ; 2 uses
  %bound0 = icmp ult ptr %.0118, %scevgep140
  %bound1 = icmp ult ptr %.0117, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0159 = icmp ult ptr %.0118, %scevgep141
  %bound1160 = icmp ult ptr %.0113, %scevgep
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx = or i1 %found.conflict, %found.conflict161
  %bound0162 = icmp ult ptr %.0118, %scevgep143
  %bound1163 = icmp ult ptr %scevgep142, %scevgep
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx165 = or i1 %conflict.rdx, %found.conflict164
  %bound0166 = icmp ult ptr %.0118, %scevgep144
  %bound1167 = icmp ult ptr %.0110, %scevgep
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %conflict.rdx165, %found.conflict168
  %bound0170 = icmp ult ptr %.0118, %scevgep145
  %bound1171 = icmp ult ptr %.0112, %scevgep
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  %bound0174 = icmp ult ptr %.0118, %scevgep147
  %bound1175 = icmp ult ptr %scevgep146, %scevgep
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  %bound0178 = icmp ult ptr %.0118, %scevgep148
  %bound1179 = icmp ult ptr %.0119, %scevgep
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %conflict.rdx177, %found.conflict180
  %bound0182 = icmp ult ptr %.0118, %scevgep149
  %bound1183 = icmp ult ptr %.0109, %scevgep
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx181, %found.conflict184
  %bound0186 = icmp ult ptr %.0118, %scevgep150
  %bound1187 = icmp ult ptr %.0111, %scevgep
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx185, %found.conflict188
  %bound0190 = icmp ult ptr %.0118, %scevgep152
  %bound1191 = icmp ult ptr %scevgep151, %scevgep
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %conflict.rdx189, %found.conflict192
  %bound0194 = icmp ult ptr %.0118, %scevgep153
  %bound1195 = icmp ult ptr %i.aw, %scevgep
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %conflict.rdx193, %found.conflict196
  %bound0198 = icmp ult ptr %.0118, %scevgep154
  %bound1199 = icmp ult ptr %.0121, %scevgep
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx201 = or i1 %conflict.rdx197, %found.conflict200
  %bound0202 = icmp ult ptr %.0118, %scevgep155
  %bound1203 = icmp ult ptr %.0123, %scevgep
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx205 = or i1 %conflict.rdx201, %found.conflict204
  %bound0206 = icmp ult ptr %.0118, %scevgep156
  %bound1207 = icmp ult ptr %.0124, %scevgep
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx209 = or i1 %conflict.rdx205, %found.conflict208
  %bound0210 = icmp ult ptr %.0118, %scevgep157
  %bound1211 = icmp ult ptr %.0120, %scevgep
  %found.conflict212 = and i1 %bound0210, %bound1211
  %conflict.rdx213 = or i1 %conflict.rdx209, %found.conflict212
  %bound0214 = icmp ult ptr %.0118, %scevgep158
  %bound1215 = icmp ult ptr %.0122, %scevgep
  %found.conflict216 = and i1 %bound0214, %bound1215
  %conflict.rdx217 = or i1 %conflict.rdx213, %found.conflict216
  %bound0218 = icmp ult ptr %.0117, %scevgep141
  %bound1219 = icmp ult ptr %.0113, %scevgep140
  %found.conflict220 = and i1 %bound0218, %bound1219
  %conflict.rdx221 = or i1 %conflict.rdx217, %found.conflict220
  %bound0222 = icmp ult ptr %.0117, %scevgep143
  %bound1223 = icmp ult ptr %scevgep142, %scevgep140
  %found.conflict224 = and i1 %bound0222, %bound1223
  %conflict.rdx225 = or i1 %conflict.rdx221, %found.conflict224
  %bound0226 = icmp ult ptr %.0117, %scevgep144
  %bound1227 = icmp ult ptr %.0110, %scevgep140
  %found.conflict228 = and i1 %bound0226, %bound1227
  %conflict.rdx229 = or i1 %conflict.rdx225, %found.conflict228
  %bound0230 = icmp ult ptr %.0117, %scevgep145
  %bound1231 = icmp ult ptr %.0112, %scevgep140
  %found.conflict232 = and i1 %bound0230, %bound1231
  %conflict.rdx233 = or i1 %conflict.rdx229, %found.conflict232
  %bound0234 = icmp ult ptr %.0117, %scevgep147
  %bound1235 = icmp ult ptr %scevgep146, %scevgep140
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx237 = or i1 %conflict.rdx233, %found.conflict236
  %bound0238 = icmp ult ptr %.0117, %scevgep148
  %bound1239 = icmp ult ptr %.0119, %scevgep140
  %found.conflict240 = and i1 %bound0238, %bound1239
  %conflict.rdx241 = or i1 %conflict.rdx237, %found.conflict240
  %bound0242 = icmp ult ptr %.0117, %scevgep149
  %bound1243 = icmp ult ptr %.0109, %scevgep140
  %found.conflict244 = and i1 %bound0242, %bound1243
  %conflict.rdx245 = or i1 %conflict.rdx241, %found.conflict244
  %bound0246 = icmp ult ptr %.0117, %scevgep150
  %bound1247 = icmp ult ptr %.0111, %scevgep140
  %found.conflict248 = and i1 %bound0246, %bound1247
  %conflict.rdx249 = or i1 %conflict.rdx245, %found.conflict248
  %bound0250 = icmp ult ptr %.0117, %scevgep152
  %bound1251 = icmp ult ptr %scevgep151, %scevgep140
  %found.conflict252 = and i1 %bound0250, %bound1251
  %conflict.rdx253 = or i1 %conflict.rdx249, %found.conflict252
  %bound0254 = icmp ult ptr %.0117, %scevgep153
  %bound1255 = icmp ult ptr %i.aw, %scevgep140
  %found.conflict256 = and i1 %bound0254, %bound1255
  %conflict.rdx257 = or i1 %conflict.rdx253, %found.conflict256
  %bound0258 = icmp ult ptr %.0117, %scevgep154
  %bound1259 = icmp ult ptr %.0121, %scevgep140
  %found.conflict260 = and i1 %bound0258, %bound1259
  %conflict.rdx261 = or i1 %conflict.rdx257, %found.conflict260
  %bound0262 = icmp ult ptr %.0117, %scevgep155
  %bound1263 = icmp ult ptr %.0123, %scevgep140
  %found.conflict264 = and i1 %bound0262, %bound1263
  %conflict.rdx265 = or i1 %conflict.rdx261, %found.conflict264
  %bound0266 = icmp ult ptr %.0117, %scevgep156
  %bound1267 = icmp ult ptr %.0124, %scevgep140
  %found.conflict268 = and i1 %bound0266, %bound1267
  %conflict.rdx269 = or i1 %conflict.rdx265, %found.conflict268
  %bound0270 = icmp ult ptr %.0117, %scevgep157
  %bound1271 = icmp ult ptr %.0120, %scevgep140
  %found.conflict272 = and i1 %bound0270, %bound1271
  %conflict.rdx273 = or i1 %conflict.rdx269, %found.conflict272
  %bound0274 = icmp ult ptr %.0117, %scevgep158
  %bound1275 = icmp ult ptr %.0122, %scevgep140
  %found.conflict276 = and i1 %bound0274, %bound1275
  %conflict.rdx277 = or i1 %conflict.rdx273, %found.conflict276
  br i1 %conflict.rdx277, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %i.hv = load float, ptr %i.aw, align 8, !tbaa !121, !alias.scope !254 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.hv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert297 = insertelement <4 x float> poison, float %i.hv, i64 0
  %broadcast.splat298 = shufflevector <4 x float> %broadcast.splatinsert297, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %i.hw = add nsw i64 %index, -1                  ; 3 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %.0116, i64 %i.hw
  %wide.load = load <4 x float>, ptr %i.hx, align 4, !tbaa !28, !alias.scope !255 ; 2 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %.0115, i64 %i.hw
  %wide.load278 = load <4 x float>, ptr %i.hy, align 4, !tbaa !28, !alias.scope !256
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.0119, i64 %index
  %wide.load279 = load <4 x float>, ptr %i.hz, align 4, !tbaa !28, !alias.scope !257 ; 4 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.0115, i64 %index
  %wide.load280 = load <4 x float>, ptr %i.ia, align 4, !tbaa !28, !alias.scope !256
  %i.ib = fmul <4 x float> %wide.load279, %wide.load280
  %i.ic = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load278, <4 x float> %i.ib)
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.0113, i64 %index
  %wide.load281 = load <4 x float>, ptr %i.id, align 4, !tbaa !28, !alias.scope !258 ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.0112, i64 %index
  %wide.load282 = load <4 x float>, ptr %i.ie, align 4, !tbaa !28, !alias.scope !259
  %i.if = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load281, <4 x float> %wide.load282, <4 x float> %i.ic)
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.0110, i64 %index
  %wide.load283 = load <4 x float>, ptr %i.ig, align 4, !tbaa !28, !alias.scope !260
  %i.ih = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load279, <4 x float> %wide.load283, <4 x float> %i.if)
  %i.ii = getelementptr inbounds [4 x i8], ptr %.0114, i64 %i.hw
  %wide.load284 = load <4 x float>, ptr %i.ii, align 4, !tbaa !28, !alias.scope !261
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.0114, i64 %index
  %wide.load285 = load <4 x float>, ptr %i.ij, align 4, !tbaa !28, !alias.scope !261
  %i.ik = fmul <4 x float> %wide.load279, %wide.load285
  %i.il = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load284, <4 x float> %i.ik)
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.0111, i64 %index
  %wide.load286 = load <4 x float>, ptr %i.im, align 4, !tbaa !28, !alias.scope !262
  %i.in = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load281, <4 x float> %wide.load286, <4 x float> %i.il)
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.0109, i64 %index
  %wide.load287 = load <4 x float>, ptr %i.io, align 4, !tbaa !28, !alias.scope !263
  %i.ip = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load279, <4 x float> %wide.load287, <4 x float> %i.in)
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.0121, i64 %index
  %wide.load288 = load <4 x float>, ptr %i.iq, align 4, !tbaa !28, !alias.scope !264
  %i.ir = fadd <4 x float> %i.ih, %wide.load288
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.0117, i64 %index ; 3 uses
  %wide.load289 = load <4 x float>, ptr %i.is, align 4, !tbaa !28, !alias.scope !265, !noalias !266
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.0123, i64 %index ; 2 uses
  %wide.load290 = load <4 x float>, ptr %i.it, align 4, !tbaa !28, !alias.scope !267
  %i.iu = fneg <4 x float> %wide.load289
  %i.iv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iu, <4 x float> %wide.load290, <4 x float> %i.ir)
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %index
  %wide.load291 = load <4 x float>, ptr %i.iw, align 4, !tbaa !28, !alias.scope !268
  %i.ix = fdiv <4 x float> %i.iv, %wide.load291
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.0118, i64 %index ; 2 uses
  %wide.load292 = load <4 x float>, ptr %i.iy, align 4, !tbaa !28, !alias.scope !269, !noalias !270 ; 2 uses
  %i.iz = fsub <4 x float> %i.ix, %wide.load292
  %i.ja = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.iz, <4 x float> %wide.load292) ; 2 uses
  store <4 x float> %i.ja, ptr %i.iy, align 4, !tbaa !28, !alias.scope !269, !noalias !270
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.0120, i64 %index
  %wide.load293 = load <4 x float>, ptr %i.jb, align 4, !tbaa !28, !alias.scope !271
  %i.jc = fadd <4 x float> %i.ip, %wide.load293
  %wide.load294 = load <4 x float>, ptr %i.it, align 4, !tbaa !28, !alias.scope !267
  %i.jd = fneg <4 x float> %i.ja
  %i.je = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jd, <4 x float> %wide.load294, <4 x float> %i.jc)
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.0122, i64 %index
  %wide.load295 = load <4 x float>, ptr %i.jf, align 4, !tbaa !28, !alias.scope !272
  %i.jg = fdiv <4 x float> %i.je, %wide.load295
  %wide.load296 = load <4 x float>, ptr %i.is, align 4, !tbaa !28, !alias.scope !265, !noalias !266 ; 2 uses
  %i.jh = fsub <4 x float> %i.jg, %wide.load296
  %i.ji = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat298, <4 x float> %i.jh, <4 x float> %wide.load296)
  store <4 x float> %i.ji, ptr %i.is, align 4, !tbaa !28, !alias.scope !265, !noalias !266
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jj = icmp eq i64 %index.next, %n.vec
  br i1 %i.jj, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 17 uses
  %i.jk = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.jl = getelementptr inbounds [4 x i8], ptr %.0116, i64 %i.jk
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !28 ; 2 uses
  %i.jn = getelementptr inbounds [4 x i8], ptr %.0115, i64 %i.jk
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !28
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.0119, i64 %indvars.iv
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !28 ; 4 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.0115, i64 %indvars.iv
  %i.js = load float, ptr %i.jr, align 4, !tbaa !28
  %i.jt = fmul float %i.jq, %i.js
  %i.ju = call float @llvm.fmuladd.f32(float %i.jm, float %i.jo, float %i.jt)
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.0113, i64 %indvars.iv
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !28 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.0112, i64 %indvars.iv
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !28
  %i.jz = call float @llvm.fmuladd.f32(float %i.jw, float %i.jy, float %i.ju)
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.0110, i64 %indvars.iv
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !28
  %i.kc = call float @llvm.fmuladd.f32(float %i.jq, float %i.kb, float %i.jz)
  %i.kd = getelementptr inbounds [4 x i8], ptr %.0114, i64 %i.jk
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !28
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.0114, i64 %indvars.iv
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !28
  %i.kh = fmul float %i.jq, %i.kg
  %i.ki = call float @llvm.fmuladd.f32(float %i.jm, float %i.ke, float %i.kh)
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.0111, i64 %indvars.iv
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !28
  %i.kl = call float @llvm.fmuladd.f32(float %i.jw, float %i.kk, float %i.ki)
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.0109, i64 %indvars.iv
  %i.kn = load float, ptr %i.km, align 4, !tbaa !28
  %i.ko = call float @llvm.fmuladd.f32(float %i.jq, float %i.kn, float %i.kl)
  %i.kp = load float, ptr %i.aw, align 8, !tbaa !121
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.0121, i64 %indvars.iv
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !28
  %i.ks = fadd float %i.kc, %i.kr
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.0117, i64 %indvars.iv ; 3 uses
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !28
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.0123, i64 %indvars.iv ; 2 uses
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !28
  %i.kx = fneg float %i.ku
  %i.ky = call float @llvm.fmuladd.f32(float %i.kx, float %i.kw, float %i.ks)
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %indvars.iv
  %i.la = load float, ptr %i.kz, align 4, !tbaa !28
  %i.lb = fdiv float %i.ky, %i.la
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.0118, i64 %indvars.iv ; 2 uses
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !28 ; 2 uses
  %i.le = fsub float %i.lb, %i.ld
  %i.lf = call float @llvm.fmuladd.f32(float %i.kp, float %i.le, float %i.ld) ; 2 uses
  store float %i.lf, ptr %i.lc, align 4, !tbaa !28
  %i.lg = load float, ptr %i.aw, align 8, !tbaa !121
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.0120, i64 %indvars.iv
  %i.li = load float, ptr %i.lh, align 4, !tbaa !28
  %i.lj = fadd float %i.ko, %i.li
  %i.lk = load float, ptr %i.kv, align 4, !tbaa !28
  %i.ll = fneg float %i.lf
  %i.lm = call float @llvm.fmuladd.f32(float %i.ll, float %i.lk, float %i.lj)
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %.0122, i64 %indvars.iv
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !28
  %i.lp = fdiv float %i.lm, %i.lo
  %i.lq = load float, ptr %i.kt, align 4, !tbaa !28 ; 2 uses
  %i.lr = fsub float %i.lp, %i.lq
  %i.ls = call float @llvm.fmuladd.f32(float %i.lg, float %i.lr, float %i.lq)
  store float %i.ls, ptr %i.kt, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !252

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.k
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next138 to i32
  %exitcond139.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond139.not, label %._crit_edge135, label %bb.d, !llvm.loop !253
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv25VariationalRefinementImpl4calcERKNS_11_InputArrayES3_RKNS_17_InputOutputArrayE(ptr noundef nonnull align 8 dereferenceable(10760) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %17 = alloca [2 x %"class.cv::Mat"], align 16   ; 12 uses
  %18 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %19 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %20 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv25VariationalRefinementImpl4calcERKNS_11_InputArrayES3_RKNS_17_InputOutputArrayEE26__cv_trace_location_fn1117)
  %i.a = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.k, label %bb.f

bb.e:                                             ; preds = %bb.ay, %bb.ar, %bb.ap, %bb.an, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.t, %bb.m, %bb.k, %bb.c, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.f:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv25VariationalRefinementImpl4calcERKNS_11_InputArrayES3_RKNS_17_InputOutputArrayE, ptr noundef nonnull @.str.1, i32 noundef 1119) #18
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %5, align 8, !tbaa !77     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.j = load i64, ptr %i.h, align 8, !tbaa !61
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn50 = phi { ptr, i32 } [ %i.e, %bb.i ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.bq

bb.k:                                             ; preds = %bb.d
  %i.l = invoke noundef zeroext i1 @_ZNK2cv11_InputArray5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  br i1 %i.l, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = invoke noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %bb.n unwind label %bb.e

bb.n:                                             ; preds = %bb.m
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %8)
end_hunk_0
