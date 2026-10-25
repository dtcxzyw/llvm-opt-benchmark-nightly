Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_hexwave?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@hexwave_generate_samples:bb.a
  br i1 %i.nn, label %bb.x, label %hex_blamp.exit178.backedge

bb.x:                                             ; preds = %hex_blep.exit170
  %i.no = fmul float %i.h, %i.la                  ; 2 uses
  %i.np = fsub float %i.nm, %i.lc
  %i.nq = fmul float %i.e, %i.np                  ; 4 uses
  %i.nr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 3 uses
  %i.ns = fmul float %i.no, %i.em
  %i.nt = fptosi float %i.ns to i32
  %spec.select.i.i171 = tail call i32 @llvm.smin.i32(i32 %i.nt, i32 %i.en) ; 3 uses
  %i.nu = mul i32 %spec.select.i.i171, %i.ek
  %i.nv = sext i32 %i.nu to i64                   ; 2 uses
  %i.nw = getelementptr [4 x i8], ptr %i.nr, i64 %i.nv ; 5 uses
  %i.nx = add i32 %spec.select.i.i171, 1
  %i.ny = mul i32 %i.nx, %i.ek
  %i.nz = sext i32 %i.ny to i64                   ; 2 uses
  %i.oa = getelementptr [4 x i8], ptr %i.nr, i64 %i.nz ; 5 uses
  %i.ob = sitofp i32 %spec.select.i.i171 to float
  %i.oc = fneg float %i.ob
  %i.od = tail call float @llvm.fmuladd.f32(float %i.no, float %i.em, float %i.oc) ; 4 uses
  br i1 %i.eo, label %.lr.ph.i.i174.preheader, label %hex_blamp.exit178.backedge

.lr.ph.i.i174.preheader:                          ; preds = %bb.x
  br i1 %min.iters.check314, label %.lr.ph.i.i174.preheader445, label %vector.memcheck302

vector.memcheck302:                               ; preds = %.lr.ph.i.i174.preheader
  %scevgep = getelementptr i8, ptr %i.ky, i64 %i.ep ; 2 uses
  %scevgep303 = getelementptr i8, ptr %i.nr, i64 %i.ep ; 2 uses
  %i.oe = shl nsw i64 %i.nz, 2
  %scevgep304 = getelementptr i8, ptr %scevgep303, i64 %i.oe
  %i.of = shl nsw i64 %i.nv, 2
  %scevgep305 = getelementptr i8, ptr %scevgep303, i64 %i.of
  %bound0306 = icmp ult ptr %i.ky, %scevgep304
  %bound1307 = icmp ult ptr %i.oa, %scevgep
  %found.conflict308 = and i1 %bound0306, %bound1307
  %bound0309 = icmp ult ptr %i.ky, %scevgep305
  %bound1310 = icmp ult ptr %i.nw, %scevgep
  %found.conflict311 = and i1 %bound0309, %bound1310
  %conflict.rdx312 = or i1 %found.conflict308, %found.conflict311
  br i1 %conflict.rdx312, label %.lr.ph.i.i174.preheader445, label %vector.ph315

vector.ph315:                                     ; preds = %vector.memcheck302
  %broadcast.splatinsert317 = insertelement <4 x float> poison, float %i.od, i64 0
  %broadcast.splat318 = shufflevector <4 x float> %broadcast.splatinsert317, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert319 = insertelement <4 x float> poison, float %i.nq, i64 0
  %broadcast.splat320 = shufflevector <4 x float> %broadcast.splatinsert319, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph315
  %index322 = phi i64 [ 0, %vector.ph315 ], [ %index.next329, %vector.body321 ] ; 4 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %index322 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %wide.load323 = load <4 x float>, ptr %i.og, align 4, !tbaa !17, !alias.scope !119 ; 2 uses
  %wide.load324 = load <4 x float>, ptr %i.oh, align 4, !tbaa !17, !alias.scope !119 ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %index322 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %wide.load325 = load <4 x float>, ptr %i.oi, align 4, !tbaa !17, !alias.scope !120
  %wide.load326 = load <4 x float>, ptr %i.oj, align 4, !tbaa !17, !alias.scope !120
  %i.ok = fsub <4 x float> %wide.load325, %wide.load323
  %i.ol = fsub <4 x float> %wide.load326, %wide.load324
  %i.om = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ok, <4 x float> %broadcast.splat318, <4 x float> %wide.load323)
  %i.on = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ol, <4 x float> %broadcast.splat318, <4 x float> %wide.load324)
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %index322 ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16 ; 2 uses
  %wide.load327 = load <4 x float>, ptr %i.oo, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %wide.load328 = load <4 x float>, ptr %i.op, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %i.oq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat320, <4 x float> %i.om, <4 x float> %wide.load327)
  %i.or = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat320, <4 x float> %i.on, <4 x float> %wide.load328)
  store <4 x float> %i.oq, ptr %i.oo, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  store <4 x float> %i.or, ptr %i.op, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %index.next329 = add nuw i64 %index322, 8       ; 2 uses
  %i.os = icmp eq i64 %index.next329, %n.vec316
  br i1 %i.os, label %middle.block330, label %vector.body321, !llvm.loop !97

middle.block330:                                  ; preds = %vector.body321
  br i1 %cmp.n331, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174.preheader445

hex_blamp.exit178.backedge:                       ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174, %middle.block330, %bb.x, %hex_blep.exit170, %bb.u, %hex_blamp.exit162
  %.2125.be = phi i32 [ 0, %middle.block330 ], [ %i.eu, %hex_blamp.exit162 ], [ 0, %bb.x ], [ 0, %hex_blep.exit170 ], [ 0, %bb.u ], [ 0, %.lr.ph.i.i174 ], [ 0, %.lr.ph.i.i174.prol.loopexit ]
  %.1.be = phi float [ %i.la, %middle.block330 ], [ %.2.lcssa, %hex_blamp.exit162 ], [ %i.la, %bb.x ], [ %i.la, %hex_blep.exit170 ], [ %i.la, %bb.u ], [ %i.la, %.lr.ph.i.i174 ], [ %i.la, %.lr.ph.i.i174.prol.loopexit ]
  br label %hex_blamp.exit178

.lr.ph.i.i174.preheader445:                       ; preds = %vector.memcheck302, %.lr.ph.i.i174.preheader, %middle.block330
  %indvars.iv.i.i175.ph = phi i64 [ 0, %vector.memcheck302 ], [ 0, %.lr.ph.i.i174.preheader ], [ %n.vec316, %middle.block330 ] ; 6 uses
  br i1 %lcmp.mod462.not, label %.lr.ph.i.i174.prol.loopexit, label %.lr.ph.i.i174.prol

.lr.ph.i.i174.prol:                               ; preds = %.lr.ph.i.i174.preheader445
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %indvars.iv.i.i175.ph
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !17 ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %indvars.iv.i.i175.ph
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !17
  %i.ox = fsub float %i.ow, %i.ou
  %i.oy = tail call float @llvm.fmuladd.f32(float %i.ox, float %i.od, float %i.ou)
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i.i175.ph ; 2 uses
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !17
  %i.pb = tail call float @llvm.fmuladd.f32(float %i.nq, float %i.oy, float %i.pa)
  store float %i.pb, ptr %i.oz, align 4, !tbaa !17
  %indvars.iv.next.i.i176.prol = or disjoint i64 %indvars.iv.i.i175.ph, 1
  br label %.lr.ph.i.i174.prol.loopexit

.lr.ph.i.i174.prol.loopexit:                      ; preds = %.lr.ph.i.i174.prol, %.lr.ph.i.i174.preheader445
  %indvars.iv.i.i175.unr = phi i64 [ %indvars.iv.i.i175.ph, %.lr.ph.i.i174.preheader445 ], [ %indvars.iv.next.i.i176.prol, %.lr.ph.i.i174.prol ]
  %i.pc = icmp eq i64 %indvars.iv.i.i175.ph, %i.et
  br i1 %i.pc, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174

.lr.ph.i.i174:                                    ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174
  %indvars.iv.i.i175 = phi i64 [ %indvars.iv.next.i.i176.1, %.lr.ph.i.i174 ], [ %indvars.iv.i.i175.unr, %.lr.ph.i.i174.prol.loopexit ] ; 5 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %indvars.iv.i.i175
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !17 ; 2 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %indvars.iv.i.i175
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !17
  %i.ph = fsub float %i.pg, %i.pe
  %i.pi = tail call float @llvm.fmuladd.f32(float %i.ph, float %i.od, float %i.pe)
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i.i175 ; 2 uses
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !17
  %i.pl = tail call float @llvm.fmuladd.f32(float %i.nq, float %i.pi, float %i.pk)
  store float %i.pl, ptr %i.pj, align 4, !tbaa !17
  %indvars.iv.next.i.i176 = add nuw nsw i64 %indvars.iv.i.i175, 1 ; 3 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %indvars.iv.next.i.i176
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !17 ; 2 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %indvars.iv.next.i.i176
  %i.pp = load float, ptr %i.po, align 4, !tbaa !17
  %i.pq = fsub float %i.pp, %i.pn
  %i.pr = tail call float @llvm.fmuladd.f32(float %i.pq, float %i.od, float %i.pn)
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i.i176 ; 2 uses
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !17
  %i.pu = tail call float @llvm.fmuladd.f32(float %i.nq, float %i.pr, float %i.pt)
  store float %i.pu, ptr %i.ps, align 4, !tbaa !17
  %indvars.iv.next.i.i176.1 = add nuw nsw i64 %indvars.iv.i.i175, 2 ; 2 uses
  %exitcond.not.i.i177.1 = icmp eq i64 %indvars.iv.next.i.i176.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i177.1, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174, !llvm.loop !98

.loopexit:                                        ; preds = %.lr.ph, %bb.r, %bb.i
  %.4 = phi float [ %.0122196, %bb.i ], [ %i.fn, %bb.r ], [ %.1, %.lr.ph ] ; 2 uses
  br i1 %i.dt, label %bb.y, label %bb.i, !llvm.loop !99

bb.y:                                             ; preds = %.loopexit
  %i.pv = load i32, ptr @hexblep, align 8, !tbaa !23 ; 6 uses
  %.not145 = icmp slt i32 %1, %i.pv
  br i1 %.not145, label %._crit_edge202, label %.preheader179

.preheader179:                                    ; preds = %bb.y
  %i.pw = icmp sgt i32 %i.pv, 0
  br i1 %i.pw, label %.lr.ph198, label %._crit_edge199

.lr.ph198:                                        ; preds = %.preheader179
  %i.px = sub nsw i32 %1, %i.pv
  %i.py = sext i32 %i.px to i64
  %wide.trip.count = zext nneg i32 %i.pv to i64   ; 3 uses
  %invariant.gep275 = getelementptr [4 x i8], ptr %0, i64 %i.py ; 2 uses
  %min.iters.check432 = icmp ult i32 %i.pv, 8
  br i1 %min.iters.check432, label %scalar.ph431.preheader, label %vector.ph433

vector.ph433:                                     ; preds = %.lr.ph198
  %n.vec434 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph433
  %index436 = phi i64 [ 0, %vector.ph433 ], [ %index.next441, %vector.body435 ] ; 3 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index436 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %wide.load437 = load <4 x float>, ptr %i.pz, align 16, !tbaa !17
  %wide.load438 = load <4 x float>, ptr %i.qa, align 16, !tbaa !17
  %i.qb = getelementptr [4 x i8], ptr %invariant.gep275, i64 %index436 ; 3 uses
  %i.qc = getelementptr i8, ptr %i.qb, i64 16     ; 2 uses
  %wide.load439 = load <4 x float>, ptr %i.qb, align 4, !tbaa !17
  %wide.load440 = load <4 x float>, ptr %i.qc, align 4, !tbaa !17
  %i.qd = fadd <4 x float> %wide.load437, %wide.load439
  %i.qe = fadd <4 x float> %wide.load438, %wide.load440
  store <4 x float> %i.qd, ptr %i.qb, align 4, !tbaa !17
  store <4 x float> %i.qe, ptr %i.qc, align 4, !tbaa !17
  %index.next441 = add nuw i64 %index436, 8       ; 2 uses
  %i.qf = icmp eq i64 %index.next441, %n.vec434
  br i1 %i.qf, label %middle.block442, label %vector.body435, !llvm.loop !100

middle.block442:                                  ; preds = %vector.body435
  %cmp.n443 = icmp eq i64 %n.vec434, %wide.trip.count
  br i1 %cmp.n443, label %._crit_edge199, label %scalar.ph431.preheader

scalar.ph431.preheader:                           ; preds = %.lr.ph198, %middle.block442
  %indvars.iv211.ph = phi i64 [ 0, %.lr.ph198 ], [ %n.vec434, %middle.block442 ]
  br label %scalar.ph431

scalar.ph431:                                     ; preds = %scalar.ph431.preheader, %scalar.ph431
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %scalar.ph431 ], [ %indvars.iv211.ph, %scalar.ph431.preheader ] ; 3 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv211
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !17
  %gep276 = getelementptr [4 x i8], ptr %invariant.gep275, i64 %indvars.iv211 ; 2 uses
  %i.qi = load float, ptr %gep276, align 4, !tbaa !17
  %i.qj = fadd float %i.qh, %i.qi
  store float %i.qj, ptr %gep276, align 4, !tbaa !17
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge199, label %scalar.ph431, !llvm.loop !101

._crit_edge199:                                   ; preds = %scalar.ph431, %middle.block442, %.preheader179
  %i.qk = sext i32 %i.pv to i64
  br label %bb.z

._crit_edge202:                                   ; preds = %bb.y
  %5 = add nsw i32 %1, -1
  %i.ql = zext nneg i32 %5 to i64
  %i.qm = shl nuw nsw i64 %i.ql, 2
  %6 = add nuw nsw i64 %i.qm, 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %6, i1 false), !tbaa !17
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge202, %._crit_edge199
  %.sink280 = phi i64 [ %i.cu, %._crit_edge202 ], [ %i.qk, %._crit_edge199 ]
  %.sink = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.sink280
  %i.qo = sext i32 %i.d to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sink, ptr nonnull align 4 %i.qn, i64 %i.qo, i1 false)
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
