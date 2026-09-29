Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_temperature?download=true
inline.NumInlined: 105
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 38
begin_hunk_0_@process:bb.a
  %broadcast.splat271 = shufflevector <4 x float> %broadcast.splatinsert270, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert272 = insertelement <4 x float> poison, float %i.fy, i64 0
  %broadcast.splat273 = shufflevector <4 x float> %broadcast.splatinsert272, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body274

vector.body274:                                   ; preds = %vector.body274, %vector.ph268
  %index275 = phi i64 [ 0, %vector.ph268 ], [ %index.next282, %vector.body274 ] ; 2 uses
  %i.gk = shl nuw i64 %index275, 2
  %i.gl = or disjoint i64 %i.gk, %i.gb
  %i.gm = add nsw i64 %i.ga, %i.gl                ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gm
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gm
  %wide.vec276 = load <16 x float>, ptr %i.go, align 4, !tbaa !12, !alias.scope !197 ; 4 uses
  %strided.vec277 = shufflevector <16 x float> %wide.vec276, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec278 = shufflevector <16 x float> %wide.vec276, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec279 = shufflevector <16 x float> %wide.vec276, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec280 = shufflevector <16 x float> %wide.vec276, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.gp = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec277, %broadcast.splat271
  %i.gq = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec278, %broadcast.splat273
  %i.gr = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec279, %broadcast.splat271
  %i.gs = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec280, %broadcast.splat273
  %i.gt = shufflevector <4 x float> %i.gp, <4 x float> %i.gq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gu = shufflevector <4 x float> %i.gr, <4 x float> %i.gs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec281 = shufflevector <8 x float> %i.gt, <8 x float> %i.gu, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec281, ptr %i.gn, align 4, !tbaa !12, !alias.scope !198, !noalias !197
  %index.next282 = add nuw i64 %index275, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next282, %n.vec269
  br i1 %i.gv, label %middle.block283, label %vector.body274, !llvm.loop !185

middle.block283:                                  ; preds = %vector.body274
  %cmp.n284 = icmp eq i64 %i.gh, %n.vec269
  br i1 %cmp.n284, label %.preheader.loopexit, label %scalar.ph266.preheader

scalar.ph266.preheader:                           ; preds = %vector.memcheck256, %.lr.ph193, %middle.block283
  %indvars.iv223.ph = phi i64 [ %i.gb, %vector.memcheck256 ], [ %i.gb, %.lr.ph193 ], [ %i.gj, %middle.block283 ]
  br label %scalar.ph266

.preheader.loopexit:                              ; preds = %scalar.ph266, %middle.block283
  %indvars.iv.next224.lcssa = phi i64 [ %i.gj, %middle.block283 ], [ %indvars.iv.next224, %scalar.ph266 ]
  %i.gw = trunc nuw nsw i64 %indvars.iv.next224.lcssa to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge189
  %.1.lcssa = phi i32 [ %.0155.lcssa, %._crit_edge189 ], [ %i.gw, %.preheader.loopexit ] ; 2 uses
  %i.gx = icmp slt i32 %.1.lcssa, %i.h
  br i1 %i.gx, label %.lr.ph196, label %._crit_edge197

.lr.ph196:                                        ; preds = %.preheader
  %i.gy = mul nuw nsw i64 %indvars.iv231, %i.s    ; 5 uses
  %i.gz = zext i32 %.1.lcssa to i64               ; 4 uses
  %i.ha = sub nsw i64 %wide.trip.count229, %i.gz
  %xtraiter292 = and i64 %i.ha, 3                 ; 2 uses
  %lcmp.mod293.not = icmp eq i64 %xtraiter292, 0
  br i1 %lcmp.mod293.not, label %.prol.loopexit291, label %.prol.preheader290

.prol.preheader290:                               ; preds = %.lr.ph196, %.prol.preheader290
  %indvars.iv226.prol = phi i64 [ %indvars.iv.next227.prol, %.prol.preheader290 ], [ %i.gz, %.lr.ph196 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader290 ], [ 0, %.lr.ph196 ]
  %i.hb = add nsw i64 %i.gy, %indvars.iv226.prol  ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hb
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !12
  %i.he = and i64 %indvars.iv226.prol, 1
  %i.hf = or disjoint i64 %i.he, %i.fk
  %.tr.i170.prol = trunc nuw nsw i64 %i.hf to i32
  %i.hg = shl nuw nsw i32 %.tr.i170.prol, 1
  %i.hh = lshr i32 %i.c, %i.hg
  %i.hi = and i32 %i.hh, 3
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hj
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !12
  %i.hm = fmul reassoc nsz arcp contract afn float %i.hl, %i.hd
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hb
  store float %i.hm, ptr %i.hn, align 4, !tbaa !12
  %indvars.iv.next227.prol = add nuw nsw i64 %indvars.iv226.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter292
  br i1 %prol.iter.cmp.not, label %.prol.loopexit291, label %.prol.preheader290, !llvm.loop !186

.prol.loopexit291:                                ; preds = %.prol.preheader290, %.lr.ph196
  %indvars.iv226.unr = phi i64 [ %i.gz, %.lr.ph196 ], [ %indvars.iv.next227.prol, %.prol.preheader290 ] ; 3 uses
  %i.ho = sub nsw i64 %i.gz, %wide.trip.count229
  %i.hp = icmp ugt i64 %i.ho, -4
  br i1 %i.hp, label %._crit_edge197, label %.lr.ph196.new

.lr.ph196.new:                                    ; preds = %.prol.loopexit291
  %i.hq = and i64 %indvars.iv226.unr, 1
  %i.hr = xor i64 %i.hq, 1                        ; 2 uses
  %i.hs = and i64 %indvars.iv226.unr, 1           ; 2 uses
  %i.ht = or disjoint i64 %i.hs, %i.fk
  %.tr.i170 = trunc nuw nsw i64 %i.ht to i32
  %i.hu = shl nuw nsw i32 %.tr.i170, 1
  %i.hv = lshr i32 %i.c, %i.hu
  %i.hw = and i32 %i.hv, 3
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.hx
  %invariant.op = add i64 1, %i.gy
  %i.hz = or disjoint i64 %i.hr, %i.fk
  %.tr.i170.1 = trunc nuw nsw i64 %i.hz to i32
  %i.ia = shl nuw nsw i32 %.tr.i170.1, 1
  %i.ib = lshr i32 %i.c, %i.ia
  %i.ic = and i32 %i.ib, 3
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.id
  %invariant.op295 = add i64 2, %i.gy
  %i.if = or disjoint i64 %i.hs, %i.fk
  %.tr.i170.2 = trunc nuw nsw i64 %i.if to i32
  %i.ig = shl nuw nsw i32 %.tr.i170.2, 1
  %i.ih = lshr i32 %i.c, %i.ig
  %i.ii = and i32 %i.ih, 3
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ij
  %invariant.op297 = add i64 3, %i.gy
  %i.il = or disjoint i64 %i.hr, %i.fk
  %.tr.i170.3 = trunc nuw nsw i64 %i.il to i32
  %i.im = shl nuw nsw i32 %.tr.i170.3, 1
  %i.in = lshr i32 %i.c, %i.im
  %i.io = and i32 %i.in, 3
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ip
  br label %bb.g

scalar.ph266:                                     ; preds = %scalar.ph266.preheader, %scalar.ph266
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %scalar.ph266 ], [ %indvars.iv223.ph, %scalar.ph266.preheader ] ; 2 uses
  %i.ir = add nsw i64 %i.ga, %indvars.iv223       ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ir ; 4 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ir ; 4 uses
  %i.iu = load float, ptr %i.it, align 4, !tbaa !12
  %i.iv = fmul reassoc nsz arcp contract afn float %i.iu, %i.fs
  store float %i.iv, ptr %i.is, align 4, !tbaa !12
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !12
  %i.iy = fmul reassoc nsz arcp contract afn float %i.ix, %i.fy
  %i.iz = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  store float %i.iy, ptr %i.iz, align 4, !tbaa !12
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !12
  %i.jc = fmul reassoc nsz arcp contract afn float %i.jb, %i.fs
  %i.jd = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store float %i.jc, ptr %i.jd, align 4, !tbaa !12
  %i.je = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  %i.jf = load float, ptr %i.je, align 4, !tbaa !12
  %i.jg = fmul reassoc nsz arcp contract afn float %i.jf, %i.fy
  %i.jh = getelementptr inbounds nuw i8, ptr %i.is, i64 12
  store float %i.jg, ptr %i.jh, align 4, !tbaa !12
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 4 ; 3 uses
  %i.ji = icmp samesign ult i64 %indvars.iv.next224, %i.v
  br i1 %i.ji, label %scalar.ph266, label %.preheader.loopexit, !llvm.loop !187

bb.g:                                             ; preds = %bb.g, %.lr.ph196.new
  %indvars.iv226 = phi i64 [ %indvars.iv226.unr, %.lr.ph196.new ], [ %indvars.iv.next227.3, %bb.g ] ; 5 uses
  %i.jj = add nsw i64 %i.gy, %indvars.iv226       ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jj
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !12
  %i.jm = load float, ptr %i.hy, align 4, !tbaa !12
  %i.jn = fmul reassoc nsz arcp contract afn float %i.jm, %i.jl
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jj
  store float %i.jn, ptr %i.jo, align 4, !tbaa !12
  %.reass = add i64 %indvars.iv226, %invariant.op ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !12
  %i.jr = load float, ptr %i.ie, align 4, !tbaa !12
  %i.js = fmul reassoc nsz arcp contract afn float %i.jr, %i.jq
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.reass
  store float %i.js, ptr %i.jt, align 4, !tbaa !12
  %.reass296 = add i64 %indvars.iv226, %invariant.op295 ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass296
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !12
  %i.jw = load float, ptr %i.ik, align 4, !tbaa !12
  %i.jx = fmul reassoc nsz arcp contract afn float %i.jw, %i.jv
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.reass296
  store float %i.jx, ptr %i.jy, align 4, !tbaa !12
  %.reass298 = add i64 %indvars.iv226, %invariant.op297 ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.reass298
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !12
  %i.kb = load float, ptr %i.iq, align 4, !tbaa !12
  %i.kc = fmul reassoc nsz arcp contract afn float %i.kb, %i.ka
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.reass298
  store float %i.kc, ptr %i.kd, align 4, !tbaa !12
  %indvars.iv.next227.3 = add nuw nsw i64 %indvars.iv226, 4 ; 2 uses
  %exitcond230.not.3 = icmp eq i64 %indvars.iv.next227.3, %wide.trip.count229
  br i1 %exitcond230.not.3, label %._crit_edge197, label %bb.g

._crit_edge197:                                   ; preds = %.prol.loopexit291, %bb.g, %.preheader
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %indvars.iv.next220 = sub i2 %indvars.iv219, %i.u
  %exitcond234.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count233
  br i1 %exitcond234.not, label %.loopexit, label %bb.d

bb.h:                                             ; preds = %bb.a
  %i.ke = sext i32 %i.j to i64
  %i.kf = sext i32 %i.h to i64
  %i.kg = shl nsw i64 %i.kf, 2
  %i.kh = mul i64 %i.kg, %i.ke                    ; 4 uses
  %.not = icmp eq i64 %i.kh, 0
  br i1 %.not, label %.loopexit, label %.preheader175.preheader

.preheader175.preheader:                          ; preds = %bb.h
  %i.ki = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.kl = add i64 %i.kh, -1                       ; 2 uses
  %i.km = lshr i64 %i.kl, 2
  %i.kn = add nuw nsw i64 %i.km, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.kh, 29
  br i1 %min.iters.check, label %.preheader175.preheader288, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader175.preheader
  %i.ko = shl i64 %i.kl, 2
  %6 = and i64 %i.ko, -16
  %7 = add i64 %6, 16                             ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %7     ; 2 uses
  %scevgep242 = getelementptr i8, ptr %2, i64 %7
  %scevgep243 = getelementptr i8, ptr %i.f, i64 16
  %bound0 = icmp ult ptr %3, %scevgep242
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0244 = icmp ult ptr %3, %scevgep243
  %bound1245 = icmp ult ptr %i.f, %scevgep
  %found.conflict246 = and i1 %bound0244, %bound1245
  %conflict.rdx = or i1 %found.conflict, %found.conflict246
  br i1 %conflict.rdx, label %.preheader175.preheader288, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.kn, 9223372036854775804     ; 3 uses
  %i.kp = shl i64 %n.vec, 2
  %i.kq = load float, ptr %i.f, align 4, !tbaa !12, !alias.scope !200
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.kq, i64 0
  %i.kr = load float, ptr %i.ki, align 4, !tbaa !12, !alias.scope !200
  %broadcast.splatinsert250 = insertelement <4 x float> poison, float %i.kr, i64 0
  %i.ks = load float, ptr %i.kj, align 4, !tbaa !12, !alias.scope !200
  %broadcast.splatinsert252 = insertelement <4 x float> poison, float %i.ks, i64 0
  %i.kt = load float, ptr %i.kk, align 4, !tbaa !12, !alias.scope !200
  %broadcast.splatinsert254 = insertelement <4 x float> poison, float %i.kt, i64 0
  %i.ku = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> %broadcast.splatinsert250, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.kv = shufflevector <4 x float> %broadcast.splatinsert252, <4 x float> %broadcast.splatinsert254, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kw = shl nuw i64 %index, 2                   ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kw
  %wide.vec = load <16 x float>, ptr %i.kx, align 4, !tbaa !12, !alias.scope !201 ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kw
  %i.kz = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.la = fmul reassoc nsz arcp contract afn <8 x float> %i.ku, %i.kz
  %i.lb = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.lc = fmul reassoc nsz arcp contract afn <8 x float> %i.kv, %i.lb
  %interleaved.vec = shufflevector <8 x float> %i.la, <8 x float> %i.lc, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ky, align 4, !tbaa !12, !alias.scope !202, !noalias !203
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ld = icmp eq i64 %index.next, %n.vec
  br i1 %i.ld, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kn, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader175.preheader288

.preheader175.preheader288:                       ; preds = %vector.memcheck, %.preheader175.preheader, %middle.block
  %.0154178.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader175.preheader ], [ %i.kp, %middle.block ]
  br label %.preheader175

.preheader175:                                    ; preds = %.preheader175.preheader288, %.preheader175
  %.0154178 = phi i64 [ %i.mb, %.preheader175 ], [ %.0154178.ph, %.preheader175.preheader288 ] ; 6 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0154178
  %i.lf = load float, ptr %i.le, align 4, !tbaa !12
  %i.lg = load float, ptr %i.f, align 4, !tbaa !12
  %i.lh = fmul reassoc nsz arcp contract afn float %i.lg, %i.lf
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0154178
  store float %i.lh, ptr %i.li, align 4, !tbaa !12
  %i.lj = or disjoint i64 %.0154178, 1            ; 2 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lj
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !12
  %i.lm = load float, ptr %i.ki, align 4, !tbaa !12
  %i.ln = fmul reassoc nsz arcp contract afn float %i.lm, %i.ll
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.lj
  store float %i.ln, ptr %i.lo, align 4, !tbaa !12
  %i.lp = or disjoint i64 %.0154178, 2            ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lp
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !12
  %i.ls = load float, ptr %i.kj, align 4, !tbaa !12
  %i.lt = fmul reassoc nsz arcp contract afn float %i.ls, %i.lr
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.lp
  store float %i.lt, ptr %i.lu, align 4, !tbaa !12
  %i.lv = or disjoint i64 %.0154178, 3            ; 2 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lv
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !12
  %i.ly = load float, ptr %i.kk, align 4, !tbaa !12
  %i.lz = fmul reassoc nsz arcp contract afn float %i.ly, %i.lx
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.lv
  store float %i.lz, ptr %i.ma, align 4, !tbaa !12
  %i.mb = add nuw i64 %.0154178, 4                ; 2 uses
  %i.mc = icmp ult i64 %i.mb, %i.kh
  br i1 %i.mc, label %.preheader175, label %.loopexit, !llvm.loop !193

.loopexit:                                        ; preds = %.preheader175, %._crit_edge, %._crit_edge197, %middle.block, %bb.h, %.preheader173, %.preheader171
  %i.md = load ptr, ptr %1, align 16, !tbaa !204
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 664
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !47 ; 5 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mh = load i32, ptr %i.mg, align 16, !tbaa !48
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !205 ; 9 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 240
  store i32 %i.mh, ptr %i.mk, align 16, !tbaa !206
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 256
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 272 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mf, i64 2400
  %i.mo = load float, ptr %i.f, align 4, !tbaa !12 ; 2 uses
  store float %i.mo, ptr %i.ml, align 16, !tbaa !12
  %i.mp = load float, ptr %i.mm, align 16, !tbaa !12
  %i.mq = fmul reassoc nsz arcp contract afn float %i.mp, %i.mo
  store float %i.mq, ptr %i.mm, align 16, !tbaa !12
  %i.mr = load float, ptr %i.f, align 4, !tbaa !12
  store float %i.mr, ptr %i.mn, align 4, !tbaa !12
  %i.ms = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !12 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mj, i64 260
  store float %i.mt, ptr %i.mu, align 4, !tbaa !12
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mj, i64 276 ; 2 uses
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !12
  %i.mx = fmul reassoc nsz arcp contract afn float %i.mw, %i.mt
  store float %i.mx, ptr %i.mv, align 4, !tbaa !12
  %i.my = load float, ptr %i.ms, align 4, !tbaa !12
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mf, i64 2404
  store float %i.my, ptr %i.mz, align 4, !tbaa !12
  %i.na = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.nb = load float, ptr %i.na, align 4, !tbaa !12 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mj, i64 264
  store float %i.nb, ptr %i.nc, align 8, !tbaa !12
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mj, i64 280 ; 2 uses
  %i.ne = load float, ptr %i.nd, align 8, !tbaa !12
  %i.nf = fmul reassoc nsz arcp contract afn float %i.ne, %i.nb
  store float %i.nf, ptr %i.nd, align 8, !tbaa !12
  %i.ng = load float, ptr %i.na, align 4, !tbaa !12
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mf, i64 2408
  store float %i.ng, ptr %i.nh, align 4, !tbaa !12
  %i.ni = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !12 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mj, i64 268
  store float %i.nj, ptr %i.nk, align 4, !tbaa !12
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mj, i64 284 ; 2 uses
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !12
  %i.nn = fmul reassoc nsz arcp contract afn float %i.nm, %i.nj
  store float %i.nn, ptr %i.nl, align 4, !tbaa !12
  %i.no = load float, ptr %i.ni, align 4, !tbaa !12
  %i.np = getelementptr inbounds nuw i8, ptr %i.mf, i64 2412
  store float %i.no, ptr %i.np, align 4, !tbaa !12
  %i.nq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !65
  %i.ns = icmp eq i32 %i.nr, 4
  %i.nt = zext i1 %i.ns to i32
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mf, i64 2480
  store i32 %i.nt, ptr %i.nu, align 16, !tbaa !67
  ret void
}

; Function Attrs: nounwind uwtable
define void @commit_params(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !32  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.d = load i32, ptr %i.c, align 8, !tbaa !68
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %.preheader40

.preheader40:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.e, align 16, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2400
  store <4 x float> splat (float 1.000000e+00), ptr %i.h, align 4, !tbaa !12
  br label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47   ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2384
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = load i32, ptr %i.l, align 16, !tbaa !48
  %.fr = freeze i32 %i.m                          ; 2 uses
  %.not39 = icmp eq i32 %.fr, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 2400 ; 2 uses
  %i.o = load float, ptr %1, align 4, !tbaa !12   ; 2 uses
  store float %i.o, ptr %i.b, align 4, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 2404 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2408 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 2412
  br i1 %.not39, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  store float %i.o, ptr %i.n, align 4, !tbaa !12
  %i.y = load float, ptr %i.p, align 4, !tbaa !12 ; 2 uses
  store float %i.y, ptr %i.q, align 4, !tbaa !12
  store float %i.y, ptr %i.r, align 4, !tbaa !12
  %i.z = load float, ptr %i.s, align 4, !tbaa !12 ; 2 uses
  store float %i.z, ptr %i.t, align 4, !tbaa !12
  store float %i.z, ptr %i.u, align 4, !tbaa !12
  %i.aa = load float, ptr %i.v, align 4, !tbaa !12 ; 2 uses
  br label %.split.us

.preheader.split.us.preheader:                    ; preds = %.preheader
  store float 1.000000e+00, ptr %i.n, align 4, !tbaa !12
  %i.ab = load float, ptr %i.p, align 4, !tbaa !12
  store float %i.ab, ptr %i.q, align 4, !tbaa !12
end_hunk_0
