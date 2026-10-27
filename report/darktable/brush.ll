Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/brush?download=true
inline.NumInlined: 210
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_brush_points_recurs:bb.a
bb.u:                                             ; preds = %bb.s
  %i.hk = fcmp reassoc nsz arcp contract afn oeq float %i.hg, f0xFF7FFFFF
  br i1 %i.hk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store float %i.he, ptr %6, align 4, !tbaa !102
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !102
  %i.hn = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.hm, ptr %i.hn, align 4, !tbaa !102
  %.pre182 = load float, ptr %7, align 4, !tbaa !102
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %i.ho = phi float [ %i.hg, %bb.u ], [ %i.he, %bb.v ], [ %.pre183, %bb.t ] ; 2 uses
  %i.hp = phi float [ %i.he, %bb.u ], [ %.pre182, %bb.v ], [ %i.hg, %bb.t ] ; 2 uses
  %i.hq = fptosi float %i.hp to i32
  %i.hr = fptosi float %i.ho to i32
  %i.hs = add i32 %i.hq, -3
  %i.ht = sub i32 %i.hs, %i.hr
  %i.hu = icmp ult i32 %i.ht, -5
  br i1 %i.hu, label %._crit_edge, label %bb.x

._crit_edge:                                      ; preds = %bb.w
  %.phi.trans.insert = getelementptr i8, ptr %6, i64 4
  %.val147.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !102
  %.phi.trans.insert185 = getelementptr i8, ptr %7, i64 4
  %.val149.pre = load float, ptr %.phi.trans.insert185, align 4, !tbaa !102
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hv = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !102 ; 2 uses
  %i.hx = fptosi float %i.hw to i32
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !102 ; 2 uses
  %i.ia = fptosi float %i.hz to i32
  %i.ib = add i32 %i.hx, -3
  %i.ic = sub i32 %i.ib, %i.ia
  %i.id = icmp ult i32 %i.ic, -5
  br i1 %i.id, label %bb.y, label %_brush_points_recurs_border_small_gaps.exit

bb.y:                                             ; preds = %._crit_edge, %bb.x
  %.val149 = phi float [ %.val149.pre, %._crit_edge ], [ %i.hw, %bb.x ]
  %.val147 = phi float [ %.val147.pre, %._crit_edge ], [ %i.hz, %bb.x ]
  %i.ie = load float, ptr %i.go, align 4, !tbaa !102 ; 2 uses
  %i.if = fsub reassoc nsz arcp contract afn float %.val147, %i.ie ; 2 uses
  %i.ig = load float, ptr %5, align 4, !tbaa !102 ; 2 uses
  %i.ih = fsub reassoc nsz arcp contract afn float %i.ho, %i.ig ; 2 uses
  %i.ii = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.if, float %i.ih)
  %i.ij = fadd reassoc nsz arcp contract afn float %i.ii, f0x40C90FDB
  %i.ik = frem reassoc nsz arcp contract afn float %i.ij, f0x40C90FDB ; 6 uses
  %i.il = fsub reassoc nsz arcp contract afn float %.val149, %i.ie ; 2 uses
  %i.im = fsub reassoc nsz arcp contract afn float %i.hp, %i.ig ; 2 uses
  %i.in = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.il, float %i.im)
  %i.io = fadd reassoc nsz arcp contract afn float %i.in, f0x40C90FDB
  %i.ip = frem reassoc nsz arcp contract afn float %i.io, f0x40C90FDB ; 2 uses
  %i.iq = fcmp reassoc nsz arcp contract afn oeq float %i.ik, %i.ip
  br i1 %i.iq, label %_brush_points_recurs_border_small_gaps.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ir = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.if, float noundef %i.ih) #20 ; 6 uses
  %i.is = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.il, float noundef %i.im) #20 ; 2 uses
  %i.it = fsub reassoc nsz arcp contract afn float %i.ip, %i.ik ; 4 uses
  %i.iu = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.it)
  %i.iv = fcmp reassoc nsz arcp contract afn ogt float %i.iu, f0x40490FDB
  %i.iw = tail call reassoc nsz arcp contract afn float @llvm.copysign.f32(float f0x40C90FDB, float %i.it)
  %i.ix = fsub reassoc nsz arcp contract afn float %i.it, %i.iw
  %.065.i = select nsz i1 %i.iv, float %i.ix, float %i.it ; 2 uses
  %i.iy = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.065.i)
  %i.iz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ir, float %i.is)
  %i.ja = fmul reassoc nsz arcp contract afn float %i.iz, %i.iy
  %i.jb = fptosi float %i.ja to i32               ; 7 uses
  %i.jc = icmp slt i32 %i.jb, 2
  br i1 %i.jc, label %_brush_points_recurs_border_small_gaps.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jd = uitofp nneg i32 %i.jb to float          ; 2 uses
  %i.je = fdiv reassoc nsz arcp contract afn float %.065.i, %i.jd ; 7 uses
  %i.jf = fsub reassoc nsz arcp contract afn float %i.is, %i.ir
  %i.jg = fdiv reassoc nsz arcp contract afn float %i.jf, %i.jd ; 6 uses
  %i.jh = shl nuw i32 %i.jb, 1
  %i.ji = add i32 %i.jh, -2
  %i.jj = load i64, ptr %i.gr, align 8, !tbaa !101 ; 2 uses
  %i.jk = zext nneg i32 %i.ji to i64              ; 4 uses
  %i.jl = add i64 %i.jj, %i.jk                    ; 3 uses
  %i.jm = load i64, ptr %i.gu, align 8, !tbaa !159 ; 3 uses
  %.not.i.i = icmp ult i64 %i.jl, %i.jm
  br i1 %.not.i.i, label %bb.ad, label %bb.ab, !prof !160

bb.ab:                                            ; preds = %bb.aa
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %dt_masks_dynbuf_reserve_n.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ab, %.preheader.i.i
  %.018.i.i = phi i64 [ %i.jo, %.preheader.i.i ], [ %i.jm, %bb.ab ] ; 3 uses
  %.not19.i.i = icmp ult i64 %i.jl, %.018.i.i
  %i.jo = shl i64 %.018.i.i, 1
  br i1 %.not19.i.i, label %bb.ac, label %.preheader.i.i

bb.ac:                                            ; preds = %.preheader.i.i
  %i.jp = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %11, i64 noundef %.018.i.i)
  %.not20.not.i.i = icmp eq i32 %i.jp, 0
  br i1 %.not20.not.i.i, label %dt_masks_dynbuf_reserve_n.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ac
  %.pre.i.i = load i64, ptr %i.gr, align 8, !tbaa !101 ; 2 uses
  %.pre21.i.i = add i64 %.pre.i.i, %i.jk
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i, %bb.aa
  %.pre-phi.i.i = phi i64 [ %.pre21.i.i, %._crit_edge.i.i ], [ %i.jl, %bb.aa ]
  %i.jq = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.jj, %bb.aa ]
  %i.jr = load ptr, ptr %11, align 8, !tbaa !100
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.jq
  store i64 %.pre-phi.i.i, ptr %i.gr, align 8, !tbaa !101
  br label %dt_masks_dynbuf_reserve_n.exit.i

dt_masks_dynbuf_reserve_n.exit.i:                 ; preds = %bb.ad, %bb.ac, %bb.ab
  %.1.i.i = phi ptr [ null, %bb.ac ], [ %i.js, %bb.ad ], [ null, %bb.ab ] ; 8 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %12, i64 136 ; 3 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !101 ; 2 uses
  %i.jv = add i64 %i.ju, %i.jk                    ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %12, i64 144
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !159 ; 3 uses
  %.not.i72.i = icmp ult i64 %i.jv, %i.jx
  br i1 %.not.i72.i, label %dt_masks_dynbuf_reserve_n.exit82.i, label %bb.ae, !prof !160

bb.ae:                                            ; preds = %dt_masks_dynbuf_reserve_n.exit.i
  %i.jy = icmp eq i64 %i.jx, 0
  br i1 %i.jy, label %_brush_points_recurs_border_small_gaps.exit, label %.preheader.i73.i

.preheader.i73.i:                                 ; preds = %bb.ae, %.preheader.i73.i
  %.018.i74.i = phi i64 [ %i.jz, %.preheader.i73.i ], [ %i.jx, %bb.ae ] ; 3 uses
  %.not19.i75.i = icmp ult i64 %i.jv, %.018.i74.i
  %i.jz = shl i64 %.018.i74.i, 1
  br i1 %.not19.i75.i, label %bb.af, label %.preheader.i73.i

bb.af:                                            ; preds = %.preheader.i73.i
  %i.ka = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %12, i64 noundef %.018.i74.i)
  %.not20.not.i76.i = icmp eq i32 %i.ka, 0
  br i1 %.not20.not.i76.i, label %_brush_points_recurs_border_small_gaps.exit, label %._crit_edge.i77.i

._crit_edge.i77.i:                                ; preds = %bb.af
  %.pre.i78.i = load i64, ptr %i.jt, align 8, !tbaa !101 ; 2 uses
  %.pre21.i79.i = add i64 %.pre.i78.i, %i.jk
  br label %dt_masks_dynbuf_reserve_n.exit82.i

dt_masks_dynbuf_reserve_n.exit82.i:               ; preds = %._crit_edge.i77.i, %dt_masks_dynbuf_reserve_n.exit.i
  %.pre-phi.i80.i = phi i64 [ %.pre21.i79.i, %._crit_edge.i77.i ], [ %i.jv, %dt_masks_dynbuf_reserve_n.exit.i ]
  %i.kb = phi i64 [ %.pre.i78.i, %._crit_edge.i77.i ], [ %i.ju, %dt_masks_dynbuf_reserve_n.exit.i ] ; 2 uses
  %i.kc = load ptr, ptr %12, align 8, !tbaa !100  ; 3 uses
  store i64 %.pre-phi.i80.i, ptr %i.jt, align 8, !tbaa !101
  %i.kd = icmp ne ptr %.1.i.i, null
  %i.ke = icmp ne ptr %i.kc, null
  %or.cond.i153 = select i1 %i.kd, i1 %i.ke, i1 false
  br i1 %or.cond.i153, label %.lr.ph.preheader.i, label %_brush_points_recurs_border_small_gaps.exit

.lr.ph.preheader.i:                               ; preds = %dt_masks_dynbuf_reserve_n.exit82.i
  %i.kf = getelementptr [4 x i8], ptr %i.kc, i64 %i.kb ; 6 uses
  %i.kg = add nsw i32 %i.jb, -2                   ; 2 uses
  %i.kh = zext i32 %i.kg to i64                   ; 2 uses
  %i.ki = add nuw nsw i64 %i.kh, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.kg, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.kj = shl nuw nsw i64 %i.kh, 3                ; 2 uses
  %i.kk = getelementptr i8, ptr %.1.i.i, i64 %i.kj
  %i.kl = getelementptr i8, ptr %i.kk, i64 8      ; 2 uses
  %i.km = shl i64 %i.kb, 2
  %i.kn = getelementptr i8, ptr %i.kc, i64 %i.kj
  %i.ko = getelementptr i8, ptr %i.kn, i64 %i.km
  %i.kp = getelementptr i8, ptr %i.ko, i64 8      ; 2 uses
  %i.kq = getelementptr i8, ptr %5, i64 8         ; 2 uses
  %bound0 = icmp ult ptr %.1.i.i, %i.kp
  %bound1 = icmp ult ptr %i.kf, %i.kl
  %found.conflict = and i1 %bound0, %bound1
  %bound0222 = icmp ult ptr %.1.i.i, %i.kq
  %bound1223 = icmp ult ptr %5, %i.kl
  %found.conflict224 = and i1 %bound0222, %bound1223
  %conflict.rdx = or i1 %found.conflict, %found.conflict224
  %bound0225 = icmp ult ptr %i.kf, %i.kq
  %bound1226 = icmp ult ptr %5, %i.kp
  %found.conflict227 = and i1 %bound0225, %bound1226
  %conflict.rdx228 = or i1 %conflict.rdx, %found.conflict227
  br i1 %conflict.rdx228, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ki, 8589934584              ; 5 uses
  %i.kr = trunc i64 %n.vec to i32
  %i.ks = or disjoint i32 %i.kr, 1
  %i.kt = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.ku = getelementptr i8, ptr %i.kf, i64 %i.kt
  %i.kv = getelementptr i8, ptr %.1.i.i, i64 %i.kt
  %i.kw = uitofp nneg i64 %n.vec to float         ; 2 uses
  %i.kx = fmul reassoc nsz arcp contract afn float %i.je, %i.kw
  %i.ky = fadd reassoc nsz arcp contract afn float %i.ik, %i.kx
  %i.kz = fmul reassoc nsz arcp contract afn float %i.jg, %i.kw
  %i.la = fadd reassoc nsz arcp contract afn float %i.ir, %i.kz
  %i.lb = load float, ptr %5, align 4, !tbaa !102, !alias.scope !251
  %broadcast.splatinsert242 = insertelement <8 x float> poison, float %i.lb, i64 0 ; 2 uses
  %i.lc = load float, ptr %i.go, align 4, !tbaa !102, !alias.scope !251
  %broadcast.splatinsert248 = insertelement <8 x float> poison, float %i.lc, i64 0 ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.je, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert229 = insertelement <8 x float> poison, float %i.jg, i64 0
  %broadcast.splat230 = shufflevector <8 x float> %broadcast.splatinsert229, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert231 = insertelement <8 x float> poison, float %i.ik, i64 0
  %broadcast.splat232 = shufflevector <8 x float> %broadcast.splatinsert231, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ld = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00>
  %induction = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat232, %i.ld
  %i.le = fmul reassoc nsz arcp contract afn float %i.je, 8.000000e+00
  %broadcast.splatinsert233 = insertelement <8 x float> poison, float %i.le, i64 0
  %broadcast.splat234 = shufflevector <8 x float> %broadcast.splatinsert233, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert235 = insertelement <8 x float> poison, float %i.ir, i64 0
  %broadcast.splat236 = shufflevector <8 x float> %broadcast.splatinsert235, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lf = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat230, <float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00>
  %induction237 = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat236, %i.lf
  %i.lg = fmul reassoc nsz arcp contract afn float %i.jg, 8.000000e+00
  %broadcast.splatinsert238 = insertelement <8 x float> poison, float %i.lg, i64 0
  %broadcast.splat239 = shufflevector <8 x float> %broadcast.splatinsert238, <8 x float> poison, <8 x i32> zeroinitializer
  %interleaved.vec = shufflevector <8 x float> %broadcast.splatinsert242, <8 x float> %broadcast.splatinsert248, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  %i.lh = shufflevector <8 x float> %broadcast.splatinsert242, <8 x float> %broadcast.splatinsert248, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x float> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind240 = phi <8 x float> [ %induction237, %vector.ph ], [ %vec.ind.next251, %vector.body ] ; 2 uses
  %i.li = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.kf, i64 %i.li
  %next.gep241 = getelementptr i8, ptr %.1.i.i, i64 %i.li
  %i.lj = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind, %broadcast.splat
  %i.lk = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.lj) ; 2 uses
  %i.ll = extractvalue { <8 x float>, <8 x float> } %i.lk, 0
  %i.lm = extractvalue { <8 x float>, <8 x float> } %i.lk, 1
  %i.ln = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind240, %broadcast.splat230 ; 2 uses
  store <16 x float> %interleaved.vec, ptr %next.gep241, align 4, !tbaa !102, !alias.scope !252, !noalias !253
  %i.lo = fmul reassoc nsz arcp contract afn <8 x float> %i.lm, %i.ln
  %i.lp = fmul reassoc nsz arcp contract afn <8 x float> %i.ll, %i.ln
  %i.lq = shufflevector <8 x float> %i.lo, <8 x float> %i.lp, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec250 = fadd reassoc nsz arcp contract afn <16 x float> %i.lh, %i.lq
  store <16 x float> %interleaved.vec250, ptr %next.gep, align 4, !tbaa !102, !alias.scope !254, !noalias !251
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind, %broadcast.splat234
  %vec.ind.next251 = fadd reassoc nsz arcp contract afn <8 x float> %vec.ind240, %broadcast.splat239
  %i.lr = icmp eq i64 %index.next, %n.vec
  br i1 %i.lr, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ki, %n.vec
  br i1 %cmp.n, label %_brush_points_recurs_border_small_gaps.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.011.i.ph = phi i32 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader.i ], [ %i.ks, %middle.block ] ; 3 uses
  %.06110.i.ph = phi ptr [ %i.kf, %vector.memcheck ], [ %i.kf, %.lr.ph.preheader.i ], [ %i.ku, %middle.block ] ; 4 uses
  %.0629.i.ph = phi ptr [ %.1.i.i, %vector.memcheck ], [ %.1.i.i, %.lr.ph.preheader.i ], [ %i.kv, %middle.block ] ; 4 uses
  %.pn718.i.ph = phi float [ %i.ik, %vector.memcheck ], [ %i.ik, %.lr.ph.preheader.i ], [ %i.ky, %middle.block ] ; 2 uses
  %.pn7.i.ph = phi float [ %i.ir, %vector.memcheck ], [ %i.ir, %.lr.ph.preheader.i ], [ %i.la, %middle.block ] ; 2 uses
  %i.ls = and i32 %i.jb, 1
  %lcmp.mod.not.not = icmp eq i32 %i.ls, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %.063.i.prol = fadd reassoc nsz arcp contract afn float %.pn718.i.ph, %i.je ; 2 uses
  %sincos.i.prol = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %.063.i.prol) ; 2 uses
  %sin.i.prol = extractvalue { float, float } %sincos.i.prol, 0
  %cos.i.prol = extractvalue { float, float } %sincos.i.prol, 1
  %.064.i.prol = fadd reassoc nsz arcp contract afn float %.pn7.i.ph, %i.jg ; 3 uses
  %i.lt = load float, ptr %5, align 4, !tbaa !102
  %i.lu = getelementptr inbounds nuw i8, ptr %.0629.i.ph, i64 4
  store float %i.lt, ptr %.0629.i.ph, align 4, !tbaa !102
  %i.lv = load float, ptr %i.go, align 4, !tbaa !102
  %i.lw = getelementptr inbounds nuw i8, ptr %.0629.i.ph, i64 8
  store float %i.lv, ptr %i.lu, align 4, !tbaa !102
  %i.lx = load float, ptr %5, align 4, !tbaa !102
  %i.ly = fmul reassoc nsz arcp contract afn float %cos.i.prol, %.064.i.prol
  %i.lz = fadd reassoc nsz arcp contract afn float %i.lx, %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %.06110.i.ph, i64 4
  store float %i.lz, ptr %.06110.i.ph, align 4, !tbaa !102
  %i.mb = load float, ptr %i.go, align 4, !tbaa !102
  %i.mc = fmul reassoc nsz arcp contract afn float %sin.i.prol, %.064.i.prol
  %i.md = fadd reassoc nsz arcp contract afn float %i.mb, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %.06110.i.ph, i64 8
  store float %i.md, ptr %i.ma, align 4, !tbaa !102
  %i.mf = add nuw nsw i32 %.011.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.011.i.unr = phi i32 [ %.011.i.ph, %.lr.ph.i.preheader ], [ %i.mf, %.lr.ph.i.prol ]
  %.06110.i.unr = phi ptr [ %.06110.i.ph, %.lr.ph.i.preheader ], [ %i.me, %.lr.ph.i.prol ]
  %.0629.i.unr = phi ptr [ %.0629.i.ph, %.lr.ph.i.preheader ], [ %i.lw, %.lr.ph.i.prol ]
  %.pn718.i.unr = phi float [ %.pn718.i.ph, %.lr.ph.i.preheader ], [ %.063.i.prol, %.lr.ph.i.prol ]
  %.pn7.i.unr = phi float [ %.pn7.i.ph, %.lr.ph.i.preheader ], [ %.064.i.prol, %.lr.ph.i.prol ]
  %i.mg = add nsw i32 %i.jb, -1
  %i.mh = icmp eq i32 %.011.i.ph, %i.mg
  br i1 %i.mh, label %_brush_points_recurs_border_small_gaps.exit, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.prol.loopexit
  %invariant.op = fadd reassoc nsz arcp contract afn float %i.je, %i.je
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.011.i = phi i32 [ %.011.i.unr, %.lr.ph.i.preheader.new ], [ %i.ng, %.lr.ph.i ]
  %.06110.i = phi ptr [ %.06110.i.unr, %.lr.ph.i.preheader.new ], [ %i.nf, %.lr.ph.i ] ; 5 uses
  %.0629.i = phi ptr [ %.0629.i.unr, %.lr.ph.i.preheader.new ], [ %i.mx, %.lr.ph.i ] ; 5 uses
  %.pn718.i = phi float [ %.pn718.i.unr, %.lr.ph.i.preheader.new ], [ %.063.i.1.reass, %.lr.ph.i ] ; 2 uses
  %.pn7.i = phi float [ %.pn7.i.unr, %.lr.ph.i.preheader.new ], [ %.064.i.1, %.lr.ph.i ]
  %.063.i = fadd reassoc nsz arcp contract afn float %.pn718.i, %i.je
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %.063.i) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %.064.i = fadd reassoc nsz arcp contract afn float %.pn7.i, %i.jg ; 3 uses
  %i.mi = load float, ptr %5, align 4, !tbaa !102
  %i.mj = getelementptr inbounds nuw i8, ptr %.0629.i, i64 4
  store float %i.mi, ptr %.0629.i, align 4, !tbaa !102
  %i.mk = load float, ptr %i.go, align 4, !tbaa !102
  %i.ml = getelementptr inbounds nuw i8, ptr %.0629.i, i64 8
  store float %i.mk, ptr %i.mj, align 4, !tbaa !102
  %i.mm = load float, ptr %5, align 4, !tbaa !102
  %i.mn = fmul reassoc nsz arcp contract afn float %cos.i, %.064.i
  %i.mo = fadd reassoc nsz arcp contract afn float %i.mm, %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %.06110.i, i64 4
  store float %i.mo, ptr %.06110.i, align 4, !tbaa !102
  %i.mq = load float, ptr %i.go, align 4, !tbaa !102
  %i.mr = fmul reassoc nsz arcp contract afn float %sin.i, %.064.i
  %i.ms = fadd reassoc nsz arcp contract afn float %i.mq, %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %.06110.i, i64 8
  store float %i.ms, ptr %i.mp, align 4, !tbaa !102
  %.063.i.1.reass = fadd reassoc nsz arcp contract afn float %.pn718.i, %invariant.op ; 2 uses
  %sincos.i.1 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %.063.i.1.reass) ; 2 uses
  %sin.i.1 = extractvalue { float, float } %sincos.i.1, 0
  %cos.i.1 = extractvalue { float, float } %sincos.i.1, 1
  %.064.i.1 = fadd reassoc nsz arcp contract afn float %.064.i, %i.jg ; 3 uses
  %i.mu = load float, ptr %5, align 4, !tbaa !102
  %i.mv = getelementptr inbounds nuw i8, ptr %.0629.i, i64 12
  store float %i.mu, ptr %i.ml, align 4, !tbaa !102
  %i.mw = load float, ptr %i.go, align 4, !tbaa !102
  %i.mx = getelementptr inbounds nuw i8, ptr %.0629.i, i64 16
  store float %i.mw, ptr %i.mv, align 4, !tbaa !102
  %i.my = load float, ptr %5, align 4, !tbaa !102
  %i.mz = fmul reassoc nsz arcp contract afn float %cos.i.1, %.064.i.1
  %i.na = fadd reassoc nsz arcp contract afn float %i.my, %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %.06110.i, i64 12
  store float %i.na, ptr %i.mt, align 4, !tbaa !102
  %i.nc = load float, ptr %i.go, align 4, !tbaa !102
  %i.nd = fmul reassoc nsz arcp contract afn float %sin.i.1, %.064.i.1
  %i.ne = fadd reassoc nsz arcp contract afn float %i.nc, %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %.06110.i, i64 16
  store float %i.ne, ptr %i.nb, align 4, !tbaa !102
  %i.ng = add nuw nsw i32 %.011.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.ng, %i.jb
  br i1 %exitcond.not.i.1, label %_brush_points_recurs_border_small_gaps.exit, label %.lr.ph.i, !llvm.loop !250

_brush_points_recurs_border_small_gaps.exit:      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %dt_masks_dynbuf_reserve_n.exit82.i, %bb.af, %bb.ae, %bb.z, %bb.y, %bb.x
  %i.nh = load float, ptr %7, align 4, !tbaa !102 ; 2 uses
  store float %i.nh, ptr %9, align 4, !tbaa !102
  %i.ni = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !102 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.nj, ptr %i.nk, align 4, !tbaa !102
  %i.nl = getelementptr inbounds nuw i8, ptr %12, i64 136 ; 3 uses
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !101 ; 2 uses
  %i.nn = add i64 %i.nm, 2                        ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %12, i64 144
  %i.np = load i64, ptr %i.no, align 8, !tbaa !159 ; 3 uses
  %.not.i154 = icmp ult i64 %i.nn, %i.np
  br i1 %.not.i154, label %bb.ai, label %bb.ag, !prof !160

bb.ag:                                            ; preds = %_brush_points_recurs_border_small_gaps.exit
  %i.nq = icmp eq i64 %i.np, 0
  br i1 %i.nq, label %dt_masks_dynbuf_add_2.exit160, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.nr = shl i64 %i.np, 1
  %i.ns = add i64 %i.nr, 2
  %i.nt = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %12, i64 noundef %i.ns)
  %.not11.i155 = icmp eq i32 %i.nt, 0
  br i1 %.not11.i155, label %dt_masks_dynbuf_add_2.exit160, label %._crit_edge.i156

._crit_edge.i156:                                 ; preds = %bb.ah
  %.pre.i157 = load i64, ptr %i.nl, align 8, !tbaa !101 ; 2 uses
  %.pre12.i158 = add i64 %.pre.i157, 2
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i156, %_brush_points_recurs_border_small_gaps.exit
  %.pre-phi.i159 = phi i64 [ %.pre12.i158, %._crit_edge.i156 ], [ %i.nn, %_brush_points_recurs_border_small_gaps.exit ]
  %i.nu = phi i64 [ %.pre.i157, %._crit_edge.i156 ], [ %i.nm, %_brush_points_recurs_border_small_gaps.exit ]
  %i.nv = load ptr, ptr %12, align 8, !tbaa !100
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.nu ; 2 uses
  store float %i.nh, ptr %i.nw, align 4, !tbaa !102
  store i64 %.pre-phi.i159, ptr %i.nl, align 8, !tbaa !101
  br label %dt_masks_dynbuf_add_2.exit160.sink.split

.critedge:                                        ; preds = %bb.l
  store float %.pre, ptr %8, align 4, !tbaa !102
  %i.nx = load float, ptr %i.gb, align 4, !tbaa !102 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.nx, ptr %i.ny, align 4, !tbaa !102
  %i.nz = getelementptr inbounds nuw i8, ptr %11, i64 136 ; 3 uses
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !101 ; 2 uses
  %i.ob = add i64 %i.oa, 2                        ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !159 ; 3 uses
  %.not.i161 = icmp ult i64 %i.ob, %i.od
  br i1 %.not.i161, label %bb.al, label %bb.aj, !prof !160

bb.aj:                                            ; preds = %.critedge
  %i.oe = icmp eq i64 %i.od, 0
  br i1 %i.oe, label %dt_masks_dynbuf_add_2.exit160, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.of = shl i64 %i.od, 1
  %i.og = add i64 %i.of, 2
  %i.oh = tail call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %11, i64 noundef %i.og)
  %.not11.i162 = icmp eq i32 %i.oh, 0
  br i1 %.not11.i162, label %dt_masks_dynbuf_add_2.exit160, label %._crit_edge.i163

._crit_edge.i163:                                 ; preds = %bb.ak
  %.pre.i164 = load i64, ptr %i.nz, align 8, !tbaa !101 ; 2 uses
  %.pre12.i165 = add i64 %.pre.i164, 2
  br label %bb.al

end_hunk_0
