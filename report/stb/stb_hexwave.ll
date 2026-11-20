Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_hexwave?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@hexwave_generate_samples:bb.a

bb.x:                                             ; preds = %hex_blep.exit170
  %i.oc = fmul float %i.h, %i.lj                  ; 2 uses
  %i.od = fsub float %i.oa, %i.ll
  %i.oe = fmul float %i.e, %i.od                  ; 4 uses
  %i.of = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 4 uses
  %i.og = fmul float %i.oc, %i.em
  %i.oh = fptosi float %i.og to i32
  %spec.select.i.i171 = tail call i32 @llvm.smin.i32(i32 %i.oh, i32 %i.en) ; 3 uses
  %i.oi = mul i32 %spec.select.i.i171, %i.ek
  %i.oj = sext i32 %i.oi to i64                   ; 2 uses
  %i.ok = getelementptr [4 x i8], ptr %i.of, i64 %i.oj ; 5 uses
  %i.ol = add i32 %spec.select.i.i171, 1
  %i.om = mul i32 %i.ol, %i.ek
  %i.on = sext i32 %i.om to i64                   ; 2 uses
  %i.oo = getelementptr [4 x i8], ptr %i.of, i64 %i.on ; 5 uses
  %i.op = sitofp i32 %spec.select.i.i171 to float
  %i.oq = fneg float %i.op
  %i.or = tail call float @llvm.fmuladd.f32(float %i.oc, float %i.em, float %i.oq) ; 4 uses
  br i1 %i.eo, label %.lr.ph.i.i174.preheader, label %hex_blamp.exit178.backedge

.lr.ph.i.i174.preheader:                          ; preds = %bb.x
  br i1 %min.iters.check314, label %.lr.ph.i.i174.preheader475, label %vector.memcheck315

vector.memcheck315:                               ; preds = %.lr.ph.i.i174.preheader
  %i.os = getelementptr i8, ptr %i.lh, i64 %i.ep  ; 2 uses
  %i.ot = add nsw i64 %i.on, %wide.trip.count.i.i150
  %i.ou = shl nsw i64 %i.ot, 2
  %i.ov = getelementptr i8, ptr %i.of, i64 %i.ou
  %i.ow = add nsw i64 %i.oj, %wide.trip.count.i.i150
  %i.ox = shl nsw i64 %i.ow, 2
  %i.oy = getelementptr i8, ptr %i.of, i64 %i.ox
  %bound0316 = icmp ult ptr %i.lh, %i.ov
  %bound1317 = icmp ult ptr %i.oo, %i.os
  %found.conflict318 = and i1 %bound0316, %bound1317
  %bound0319 = icmp ult ptr %i.lh, %i.oy
  %bound1320 = icmp ult ptr %i.ok, %i.os
  %found.conflict321 = and i1 %bound0319, %bound1320
  %conflict.rdx322 = or i1 %found.conflict318, %found.conflict321
  br i1 %conflict.rdx322, label %.lr.ph.i.i174.preheader475, label %vector.ph323

vector.ph323:                                     ; preds = %vector.memcheck315
  %broadcast.splatinsert325 = insertelement <4 x float> poison, float %i.or, i64 0
  %broadcast.splat326 = shufflevector <4 x float> %broadcast.splatinsert325, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert327 = insertelement <4 x float> poison, float %i.oe, i64 0
  %broadcast.splat328 = shufflevector <4 x float> %broadcast.splatinsert327, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph323
  %index330 = phi i64 [ 0, %vector.ph323 ], [ %index.next337, %vector.body329 ] ; 4 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %index330 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %wide.load331 = load <4 x float>, ptr %i.oz, align 4, !tbaa !17, !alias.scope !119 ; 2 uses
  %wide.load332 = load <4 x float>, ptr %i.pa, align 4, !tbaa !17, !alias.scope !119 ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %index330 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %wide.load333 = load <4 x float>, ptr %i.pb, align 4, !tbaa !17, !alias.scope !120
  %wide.load334 = load <4 x float>, ptr %i.pc, align 4, !tbaa !17, !alias.scope !120
  %i.pd = fsub <4 x float> %wide.load333, %wide.load331
  %i.pe = fsub <4 x float> %wide.load334, %wide.load332
  %i.pf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pd, <4 x float> %broadcast.splat326, <4 x float> %wide.load331)
  %i.pg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pe, <4 x float> %broadcast.splat326, <4 x float> %wide.load332)
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %index330 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16 ; 2 uses
  %wide.load335 = load <4 x float>, ptr %i.ph, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %wide.load336 = load <4 x float>, ptr %i.pi, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %i.pj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat328, <4 x float> %i.pf, <4 x float> %wide.load335)
  %i.pk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat328, <4 x float> %i.pg, <4 x float> %wide.load336)
  store <4 x float> %i.pj, ptr %i.ph, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  store <4 x float> %i.pk, ptr %i.pi, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %index.next337 = add nuw i64 %index330, 8       ; 2 uses
  %i.pl = icmp eq i64 %index.next337, %n.vec324
  br i1 %i.pl, label %middle.block338, label %vector.body329, !llvm.loop !97

middle.block338:                                  ; preds = %vector.body329
  br i1 %cmp.n339, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174.preheader475

hex_blamp.exit178.backedge:                       ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174, %middle.block338, %bb.x, %hex_blep.exit170, %bb.u, %hex_blamp.exit162
  %.2125.be = phi i32 [ 0, %middle.block338 ], [ %i.eu, %hex_blamp.exit162 ], [ 0, %bb.x ], [ 0, %hex_blep.exit170 ], [ 0, %bb.u ], [ 0, %.lr.ph.i.i174 ], [ 0, %.lr.ph.i.i174.prol.loopexit ]
  %.1.be = phi float [ %i.lj, %middle.block338 ], [ %.2.lcssa, %hex_blamp.exit162 ], [ %i.lj, %bb.x ], [ %i.lj, %hex_blep.exit170 ], [ %i.lj, %bb.u ], [ %i.lj, %.lr.ph.i.i174 ], [ %i.lj, %.lr.ph.i.i174.prol.loopexit ]
  br label %hex_blamp.exit178

.lr.ph.i.i174.preheader475:                       ; preds = %vector.memcheck315, %.lr.ph.i.i174.preheader, %middle.block338
  %indvars.iv.i.i175.ph = phi i64 [ 0, %vector.memcheck315 ], [ 0, %.lr.ph.i.i174.preheader ], [ %n.vec324, %middle.block338 ] ; 6 uses
  br i1 %lcmp.mod492.not, label %.lr.ph.i.i174.prol.loopexit, label %.lr.ph.i.i174.prol

.lr.ph.i.i174.prol:                               ; preds = %.lr.ph.i.i174.preheader475
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv.i.i175.ph
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !17 ; 2 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv.i.i175.ph
  %i.pp = load float, ptr %i.po, align 4, !tbaa !17
  %i.pq = fsub float %i.pp, %i.pn
  %i.pr = tail call float @llvm.fmuladd.f32(float %i.pq, float %i.or, float %i.pn)
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i.i175.ph ; 2 uses
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !17
  %i.pu = tail call float @llvm.fmuladd.f32(float %i.oe, float %i.pr, float %i.pt)
  store float %i.pu, ptr %i.ps, align 4, !tbaa !17
  %indvars.iv.next.i.i176.prol = or disjoint i64 %indvars.iv.i.i175.ph, 1
  br label %.lr.ph.i.i174.prol.loopexit

.lr.ph.i.i174.prol.loopexit:                      ; preds = %.lr.ph.i.i174.prol, %.lr.ph.i.i174.preheader475
  %indvars.iv.i.i175.unr = phi i64 [ %indvars.iv.i.i175.ph, %.lr.ph.i.i174.preheader475 ], [ %indvars.iv.next.i.i176.prol, %.lr.ph.i.i174.prol ]
  %i.pv = icmp eq i64 %indvars.iv.i.i175.ph, %i.et
  br i1 %i.pv, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174

.lr.ph.i.i174:                                    ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174
  %indvars.iv.i.i175 = phi i64 [ %indvars.iv.next.i.i176.1, %.lr.ph.i.i174 ], [ %indvars.iv.i.i175.unr, %.lr.ph.i.i174.prol.loopexit ] ; 5 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv.i.i175
  %i.px = load float, ptr %i.pw, align 4, !tbaa !17 ; 2 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv.i.i175
  %i.pz = load float, ptr %i.py, align 4, !tbaa !17
  %i.qa = fsub float %i.pz, %i.px
  %i.qb = tail call float @llvm.fmuladd.f32(float %i.qa, float %i.or, float %i.px)
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i.i175 ; 2 uses
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !17
  %i.qe = tail call float @llvm.fmuladd.f32(float %i.oe, float %i.qb, float %i.qd)
  store float %i.qe, ptr %i.qc, align 4, !tbaa !17
  %indvars.iv.next.i.i176 = add nuw nsw i64 %indvars.iv.i.i175, 1 ; 3 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv.next.i.i176
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !17 ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv.next.i.i176
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !17
  %i.qj = fsub float %i.qi, %i.qg
  %i.qk = tail call float @llvm.fmuladd.f32(float %i.qj, float %i.or, float %i.qg)
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.next.i.i176 ; 2 uses
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !17
  %i.qn = tail call float @llvm.fmuladd.f32(float %i.oe, float %i.qk, float %i.qm)
  store float %i.qn, ptr %i.ql, align 4, !tbaa !17
  %indvars.iv.next.i.i176.1 = add nuw nsw i64 %indvars.iv.i.i175, 2 ; 2 uses
  %exitcond.not.i.i177.1 = icmp eq i64 %indvars.iv.next.i.i176.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i177.1, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174, !llvm.loop !98

.loopexit:                                        ; preds = %.lr.ph, %bb.r, %bb.i
  %.4 = phi float [ %.0122196, %bb.i ], [ %i.fn, %bb.r ], [ %.1, %.lr.ph ] ; 2 uses
  br i1 %i.dt, label %bb.y, label %bb.i, !llvm.loop !99

bb.y:                                             ; preds = %.loopexit
  %i.qo = load i32, ptr @hexblep, align 8, !tbaa !23 ; 6 uses
  %.not145 = icmp slt i32 %1, %i.qo
  br i1 %.not145, label %._crit_edge202, label %.preheader179

.preheader179:                                    ; preds = %bb.y
  %i.qp = icmp sgt i32 %i.qo, 0
  br i1 %i.qp, label %.lr.ph198, label %._crit_edge199

.lr.ph198:                                        ; preds = %.preheader179
  %i.qq = sub nsw i32 %1, %i.qo
  %i.qr = sext i32 %i.qq to i64
  %wide.trip.count = zext nneg i32 %i.qo to i64   ; 3 uses
  %invariant.gep275 = getelementptr [4 x i8], ptr %0, i64 %i.qr ; 2 uses
  %min.iters.check462 = icmp ult i32 %i.qo, 8
  br i1 %min.iters.check462, label %scalar.ph461.preheader, label %vector.ph463

vector.ph463:                                     ; preds = %.lr.ph198
  %n.vec464 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body465

vector.body465:                                   ; preds = %vector.body465, %vector.ph463
  %index466 = phi i64 [ 0, %vector.ph463 ], [ %index.next471, %vector.body465 ] ; 3 uses
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index466 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %wide.load467 = load <4 x float>, ptr %i.qs, align 16, !tbaa !17
  %wide.load468 = load <4 x float>, ptr %i.qt, align 16, !tbaa !17
  %i.qu = getelementptr [4 x i8], ptr %invariant.gep275, i64 %index466 ; 3 uses
  %i.qv = getelementptr i8, ptr %i.qu, i64 16     ; 2 uses
  %wide.load469 = load <4 x float>, ptr %i.qu, align 4, !tbaa !17
  %wide.load470 = load <4 x float>, ptr %i.qv, align 4, !tbaa !17
  %i.qw = fadd <4 x float> %wide.load467, %wide.load469
  %i.qx = fadd <4 x float> %wide.load468, %wide.load470
  store <4 x float> %i.qw, ptr %i.qu, align 4, !tbaa !17
  store <4 x float> %i.qx, ptr %i.qv, align 4, !tbaa !17
  %index.next471 = add nuw i64 %index466, 8       ; 2 uses
  %i.qy = icmp eq i64 %index.next471, %n.vec464
  br i1 %i.qy, label %middle.block472, label %vector.body465, !llvm.loop !100

middle.block472:                                  ; preds = %vector.body465
  %cmp.n473 = icmp eq i64 %n.vec464, %wide.trip.count
  br i1 %cmp.n473, label %._crit_edge199, label %scalar.ph461.preheader

scalar.ph461.preheader:                           ; preds = %.lr.ph198, %middle.block472
  %indvars.iv211.ph = phi i64 [ 0, %.lr.ph198 ], [ %n.vec464, %middle.block472 ]
  br label %scalar.ph461

scalar.ph461:                                     ; preds = %scalar.ph461.preheader, %scalar.ph461
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %scalar.ph461 ], [ %indvars.iv211.ph, %scalar.ph461.preheader ] ; 3 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv211
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !17
  %gep276 = getelementptr [4 x i8], ptr %invariant.gep275, i64 %indvars.iv211 ; 2 uses
  %i.rb = load float, ptr %gep276, align 4, !tbaa !17
  %i.rc = fadd float %i.ra, %i.rb
  store float %i.rc, ptr %gep276, align 4, !tbaa !17
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge199, label %scalar.ph461, !llvm.loop !101

._crit_edge199:                                   ; preds = %scalar.ph461, %middle.block472, %.preheader179
  %i.rd = sext i32 %i.qo to i64
  br label %bb.z

._crit_edge202:                                   ; preds = %bb.y
  %5 = add nsw i32 %1, -1
  %i.re = zext nneg i32 %5 to i64
  %i.rf = shl nuw nsw i64 %i.re, 2
  %6 = add nuw nsw i64 %i.rf, 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %6, i1 false), !tbaa !17
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge202, %._crit_edge199
  %.sink280 = phi i64 [ %i.cu, %._crit_edge202 ], [ %i.rd, %._crit_edge199 ]
  %.sink = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.rg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.sink280
  %i.rh = sext i32 %i.d to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sink, ptr nonnull align 4 %i.rg, i64 %i.rh, i1 false)
  store float %.4, ptr %2, align 4, !tbaa !102
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @hexwave_shutdown(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !28
  tail call void @free(ptr noundef %i.a) #12
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29
  tail call void @free(ptr noundef %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @hexwave_init(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = sdiv i32 %0, 2                           ; 5 uses
  %i.b = mul i32 %i.a, %1                         ; 5 uses
  %i.c = add i32 %1, 1                            ; 3 uses
  %i.d = mul nsw i32 %i.c, %0                     ; 2 uses
  %i.e = shl i32 %i.b, 1                          ; 6 uses
  %i.f = or disjoint i32 %i.e, 1
  %.not = icmp eq ptr %2, null                    ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #13 ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.g
  %spec.store.select134 = tail call i32 @llvm.smin.i32(i32 %0, i32 64)
  %i.k = sext i32 %i.d to i64
  %i.l = shl nsw i64 %i.k, 2                      ; 2 uses
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #13
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.l) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 2 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %0, i32 64)
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.g ; 2 uses
  %i.q = sext i32 %i.d to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %spec.store.select135 = phi i32 [ %spec.store.select134, %bb.b ], [ %spec.store.select, %bb.c ] ; 6 uses
  %i.s = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 25 uses
  %i.t = phi ptr [ %i.i, %bb.b ], [ %2, %bb.c ]   ; 26 uses
  %.0125 = phi ptr [ %i.m, %bb.b ], [ %i.p, %bb.c ] ; 17 uses
  %.0124 = phi ptr [ %i.n, %bb.b ], [ %i.r, %bb.c ] ; 17 uses
  %.not130147 = icmp slt i32 %i.b, 0
  br i1 %.not130147, label %.preheader140, label %.preheader142.lr.ph

.preheader142.lr.ph:                              ; preds = %bb.d
  %i.u = sitofp i32 %i.e to float
  %i.v = sitofp i32 %1 to float
  %i.w = zext nneg i32 %i.b to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0) ; 3 uses
  %i.x = or disjoint i32 %smax, 1
  %wide.trip.count = zext nneg i32 %i.x to i64
  br label %.preheader142

.preheader142:                                    ; preds = %.preheader142.lr.ph, %.split.us
  %indvars.iv = phi i64 [ 0, %.preheader142.lr.ph ], [ %indvars.iv.next, %.split.us ] ; 6 uses
  %.0120149 = phi double [ 0.000000e+00, %.preheader142.lr.ph ], [ %.us-phi146, %.split.us ] ; 2 uses
  %.0122148 = phi double [ 0.000000e+00, %.preheader142.lr.ph ], [ %.us-phi, %.split.us ] ; 2 uses
  %i.y = icmp eq i64 %indvars.iv, %i.w
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  %i.aa = uitofp nneg i32 %i.z to float
  %i.ab = fmul nnan float %i.aa, f0x40C90FDA
  %i.ac = fdiv float %i.ab, %i.u                  ; 3 uses
  %i.ad = fpext float %i.ac to double             ; 17 uses
  %i.ae = fmul float %i.ac, 2.000000e+00
  %i.af = fpext float %i.ae to double             ; 17 uses
  %i.ag = fmul float %i.ac, 3.000000e+00
  %i.ah = fpext float %i.ag to double             ; 17 uses
  %i.ai = trunc i64 %indvars.iv to i32
  %i.aj = sub i32 %i.ai, %i.b
  %i.ak = sitofp i32 %i.aj to float
  %i.al = fmul nnan float %i.ak, f0x40490FD8
  %i.am = fdiv float %i.al, %i.v                  ; 2 uses
  %i.an = fpext float %i.am to double
  br i1 %i.y, label %.preheader142.split.us.preheader, label %.preheader142.split

.preheader142.split.us.preheader:                 ; preds = %.preheader142
  %i.ao = tail call double @cos(double noundef %i.ad) #12
  %i.ap = tail call double @cos(double noundef %i.af) #12
  %i.aq = tail call double @cos(double noundef %i.ah) #12
  %i.ar = tail call double @cos(double noundef %i.ad) #12
  %i.as = tail call double @cos(double noundef %i.af) #12
  %i.at = tail call double @cos(double noundef %i.ah) #12
  %i.au = tail call double @cos(double noundef %i.ad) #12
  %i.av = tail call double @cos(double noundef %i.af) #12
  %i.aw = tail call double @cos(double noundef %i.ah) #12
  %i.ax = tail call double @cos(double noundef %i.ad) #12
  %i.ay = tail call double @cos(double noundef %i.af) #12
  %i.az = tail call double @cos(double noundef %i.ah) #12
  %i.ba = tail call double @cos(double noundef %i.ad) #12
  %i.bb = tail call double @cos(double noundef %i.af) #12
  %i.bc = tail call double @cos(double noundef %i.ah) #12
  %i.bd = tail call double @cos(double noundef %i.ad) #12
  %i.be = tail call double @cos(double noundef %i.af) #12
  %i.bf = tail call double @cos(double noundef %i.ah) #12
  %i.bg = tail call double @cos(double noundef %i.ad) #12
  %i.bh = tail call double @cos(double noundef %i.af) #12
  %i.bi = tail call double @cos(double noundef %i.ah) #12
  %i.bj = tail call double @cos(double noundef %i.ad) #12
  %i.bk = tail call double @cos(double noundef %i.af) #12
  %i.bl = tail call double @cos(double noundef %i.ah) #12
  %i.bm = tail call double @cos(double noundef %i.ad) #12
  %i.bn = tail call double @cos(double noundef %i.af) #12
  %i.bo = tail call double @cos(double noundef %i.ah) #12
  %i.bp = tail call double @cos(double noundef %i.ad) #12
  %i.bq = tail call double @cos(double noundef %i.af) #12
  %i.br = tail call double @cos(double noundef %i.ah) #12
  %i.bs = tail call double @cos(double noundef %i.ad) #12
  %i.bt = tail call double @cos(double noundef %i.af) #12
  %i.bu = tail call double @cos(double noundef %i.ah) #12
  %i.bv = tail call double @cos(double noundef %i.ad) #12
  %i.bw = tail call double @cos(double noundef %i.af) #12
  %i.bx = tail call double @cos(double noundef %i.ah) #12
  %i.by = tail call double @cos(double noundef %i.ad) #12
  %i.bz = tail call double @cos(double noundef %i.af) #12
  %i.ca = tail call double @cos(double noundef %i.ah) #12
  %i.cb = tail call double @cos(double noundef %i.ad) #12
  %i.cc = tail call double @cos(double noundef %i.af) #12
  %i.cd = tail call double @cos(double noundef %i.ah) #12
  %i.ce = tail call double @cos(double noundef %i.ad) #12
  %i.cf = tail call double @cos(double noundef %i.af) #12
  %i.cg = tail call double @cos(double noundef %i.ah) #12
  %i.ch = tail call double @cos(double noundef %i.ad) #12
  %i.ci = tail call double @cos(double noundef %i.af) #12
  %i.cj = tail call double @cos(double noundef %i.ah) #12
  %i.ck = insertelement <16 x double> poison, double %i.ao, i64 0
  %i.cl = insertelement <16 x double> %i.ck, double %i.ar, i64 1
  %i.cm = insertelement <16 x double> %i.cl, double %i.au, i64 2
  %i.cn = insertelement <16 x double> %i.cm, double %i.ax, i64 3
  %i.co = insertelement <16 x double> %i.cn, double %i.ba, i64 4
  %i.cp = insertelement <16 x double> %i.co, double %i.bd, i64 5
  %i.cq = insertelement <16 x double> %i.cp, double %i.bg, i64 6
  %i.cr = insertelement <16 x double> %i.cq, double %i.bj, i64 7
  %i.cs = insertelement <16 x double> %i.cr, double %i.bm, i64 8
  %i.ct = insertelement <16 x double> %i.cs, double %i.bp, i64 9
  %i.cu = insertelement <16 x double> %i.ct, double %i.bs, i64 10
  %i.cv = insertelement <16 x double> %i.cu, double %i.bv, i64 11
  %i.cw = insertelement <16 x double> %i.cv, double %i.by, i64 12
  %i.cx = insertelement <16 x double> %i.cw, double %i.cb, i64 13
  %i.cy = insertelement <16 x double> %i.cx, double %i.ce, i64 14
  %i.cz = insertelement <16 x double> %i.cy, double %i.ch, i64 15
  %i.da = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %i.cz, <16 x double> splat (double -4.873960e-01), <16 x double> splat (double 3.557680e-01))
  %i.db = insertelement <16 x double> poison, double %i.ap, i64 0
  %i.dc = insertelement <16 x double> %i.db, double %i.as, i64 1
  %i.dd = insertelement <16 x double> %i.dc, double %i.av, i64 2
  %i.de = insertelement <16 x double> %i.dd, double %i.ay, i64 3
  %i.df = insertelement <16 x double> %i.de, double %i.bb, i64 4
  %i.dg = insertelement <16 x double> %i.df, double %i.be, i64 5
  %i.dh = insertelement <16 x double> %i.dg, double %i.bh, i64 6
  %i.di = insertelement <16 x double> %i.dh, double %i.bk, i64 7
  %i.dj = insertelement <16 x double> %i.di, double %i.bn, i64 8
  %i.dk = insertelement <16 x double> %i.dj, double %i.bq, i64 9
  %i.dl = insertelement <16 x double> %i.dk, double %i.bt, i64 10
  %i.dm = insertelement <16 x double> %i.dl, double %i.bw, i64 11
  %i.dn = insertelement <16 x double> %i.dm, double %i.bz, i64 12
  %i.do = insertelement <16 x double> %i.dn, double %i.cc, i64 13
  %i.dp = insertelement <16 x double> %i.do, double %i.cf, i64 14
  %i.dq = insertelement <16 x double> %i.dp, double %i.ci, i64 15
  %i.dr = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %i.dq, <16 x double> splat (double 1.442320e-01), <16 x double> %i.da)
  %i.ds = insertelement <16 x double> poison, double %i.aq, i64 0
  %i.dt = insertelement <16 x double> %i.ds, double %i.at, i64 1
  %i.du = insertelement <16 x double> %i.dt, double %i.aw, i64 2
  %i.dv = insertelement <16 x double> %i.du, double %i.az, i64 3
  %i.dw = insertelement <16 x double> %i.dv, double %i.bc, i64 4
  %i.dx = insertelement <16 x double> %i.dw, double %i.bf, i64 5
  %i.dy = insertelement <16 x double> %i.dx, double %i.bi, i64 6
  %i.dz = insertelement <16 x double> %i.dy, double %i.bl, i64 7
end_hunk_0
