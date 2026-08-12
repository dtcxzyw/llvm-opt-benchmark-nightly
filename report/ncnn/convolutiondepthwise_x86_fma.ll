inline.NumInlined: 225
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4ncnnL21convdw5x5s2_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined:bb.a
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.gb = phi i32 [ %i.cd, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.gc = phi i32 [ %i.ce, %.preheader ], [ %i.fz, %._crit_edge.loopexit ]
  %.1107.lcssa = phi ptr [ %.0106234, %.preheader ], [ %i.fx, %._crit_edge.loopexit ]
  %.1105.lcssa = phi ptr [ %.0104235, %.preheader ], [ %i.cj, %._crit_edge.loopexit ]
  %.1103.lcssa = phi ptr [ %.0102236, %.preheader ], [ %i.dc, %._crit_edge.loopexit ]
  %.1101.lcssa = phi ptr [ %.0100237, %.preheader ], [ %i.dv, %._crit_edge.loopexit ]
  %.199.lcssa = phi ptr [ %.098238, %.preheader ], [ %i.eo, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.097239, %.preheader ], [ %i.fh, %._crit_edge.loopexit ]
  %i.gd = load i32, ptr %9, align 4, !tbaa !72
  %i.ge = sext i32 %i.gd to i64                   ; 5 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %.1105.lcssa, i64 %i.ge
  %i.gg = getelementptr inbounds [4 x i8], ptr %.1103.lcssa, i64 %i.ge
  %i.gh = getelementptr inbounds [4 x i8], ptr %.1101.lcssa, i64 %i.ge
  %i.gi = getelementptr inbounds [4 x i8], ptr %.199.lcssa, i64 %i.ge
  %i.gj = getelementptr inbounds [4 x i8], ptr %.1.lcssa, i64 %i.ge
  %i.gk = add nuw nsw i32 %.096240, 1             ; 2 uses
  %i.gl = icmp slt i32 %i.gk, %i.gb
  br i1 %i.gl, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !270

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %.preheader.lr.ph, %_ZNK4ncnn3Mat7channelEi.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge243, label %_ZN4ncnn3Mat7channelEi.exit

._crit_edge243:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge243, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #16

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL15convdw3x3s1_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !72     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !72
  %i.h = load i32, ptr %0, align 4, !tbaa !72     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !72
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !72
  %i.k = load i32, ptr %i.a, align 4, !tbaa !72   ; 2 uses
  %.not245 = icmp sgt i32 %i.k, %i.j
  br i1 %.not245, label %._crit_edge247, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18, !noalias !271 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !271
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70, !noalias !271
  %factor.op.mul = mul i64 %i.n, %i.p             ; 3 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !168    ; 2 uses
  %.not170 = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %5, align 8, !tbaa !168    ; 5 uses
  %i.s = load i32, ptr %6, align 4, !tbaa !72     ; 16 uses
  %i.t = load ptr, ptr %7, align 8, !tbaa !18, !noalias !274 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20, !noalias !274
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !70, !noalias !274
  %factor.op.mul248 = mul i64 %i.v, %i.x          ; 5 uses
  %i.y = zext nneg i32 %i.s to i64
  %i.z = load i32, ptr %8, align 4, !tbaa !72     ; 4 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = shl i32 %i.z, 1
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = mul nsw i32 %i.z, 3
  %i.ae = sext i32 %i.ad to i64
  %i.af = load i32, ptr %9, align 4, !tbaa !72    ; 5 uses
  %i.ag = icmp sgt i32 %i.af, 1
  %i.ah = add i32 %i.z, 2
  %i.ai = sext i32 %i.ah to i64                   ; 5 uses
  %i.aj = sext i32 %i.k to i64                    ; 5 uses
  %i.ak = mul i64 %factor.op.mul248, %i.aj
  %i.al = add i32 %i.af, -2                       ; 2 uses
  %i.am = lshr i32 %i.al, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 4                ; 2 uses
  %i.aq = mul i64 %i.ap, %i.ai
  %i.ar = add i64 %i.ak, %i.aq                    ; 3 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ar
  %i.as = shl nsw i64 %i.aa, 2
  %i.at = getelementptr i8, ptr %i.t, i64 %i.ar
  %scevgep268 = getelementptr i8, ptr %i.at, i64 %i.as
  %i.au = shl nsw i64 %i.ac, 2
  %i.av = getelementptr i8, ptr %i.t, i64 %i.ar
  %scevgep271 = getelementptr i8, ptr %i.av, i64 %i.au
  %i.aw = mul i64 %factor.op.mul, %i.aj
  %scevgep274 = getelementptr i8, ptr %i.l, i64 %i.aw
  %i.ax = and i32 %i.al, -2
  %i.ay = add i32 %i.ax, 2                        ; 2 uses
  %i.az = add nsw i32 %i.j, 1
  %i.ba = icmp sgt i32 %i.s, 0
  %i.bb = sext i32 %i.s to i64                    ; 3 uses
  %i.bc = mul i64 %i.ap, %i.bb
  %i.bd = icmp sgt i32 %i.s, 0
  %i.be = add i32 %i.s, -1
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2                ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, 12               ; 3 uses
  %i.bi = mul nsw i64 %i.aj, 36                   ; 2 uses
  %i.bj = add i32 %i.s, -1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2                ; 2 uses
  %i.bm = add nuw nsw i64 %i.bl, 4                ; 2 uses
  %i.bn = add nuw nsw i64 %i.bl, 12               ; 4 uses
  %i.bo = mul nsw i64 %i.aj, 36                   ; 2 uses
  %i.bp = getelementptr i8, ptr %i.r, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.r, i64 %i.bo
  %i.br = getelementptr i8, ptr %i.bq, i64 36
  %i.bs = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bt = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bu = getelementptr i8, ptr %i.bt, i64 36
  %i.bv = zext nneg i32 %i.s to i64               ; 2 uses
  %min.iters.check414 = icmp ult i32 %i.s, 8
  %n.vec416 = and i64 %i.bv, 2147483640           ; 4 uses
  %i.bw = shl nuw nsw i64 %n.vec416, 2            ; 6 uses
  %i.bx = trunc nuw nsw i64 %n.vec416 to i32
  %i.by = sub nsw i32 %i.s, %i.bx
  %cmp.n459 = icmp eq i64 %n.vec416, %i.bv
  %i.bz = zext nneg i32 %i.s to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.s, 8
  %n.vec = and i64 %i.bz, 2147483640              ; 4 uses
  %i.ca = trunc nuw nsw i64 %n.vec to i32
  %i.cb = sub nsw i32 %i.s, %i.ca
  %i.cc = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bz
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i64 [ 0, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv278 = phi i64 [ %i.aj, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %indvars.iv275 = phi ptr [ %scevgep274, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep276, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv272 = phi ptr [ %scevgep271, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep273, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv269 = phi ptr [ %scevgep268, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep270, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv = phi ptr [ %scevgep, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep267, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.cd = mul nuw nsw i64 %indvar, 36             ; 2 uses
  %scevgep368 = getelementptr i8, ptr %i.bp, i64 %i.cd ; 2 uses
  %scevgep369 = getelementptr i8, ptr %i.br, i64 %i.cd ; 2 uses
  %i.ce = mul nuw nsw i64 %indvar, 36             ; 2 uses
  %scevgep313 = getelementptr i8, ptr %i.bs, i64 %i.ce
  %scevgep314 = getelementptr i8, ptr %i.bu, i64 %i.ce
  %.reass = mul i64 %factor.op.mul, %indvars.iv278
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  br i1 %.not170, label %_ZN4ncnn3MatD2Ev.exit171, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv278
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit171

_ZN4ncnn3MatD2Ev.exit171:                         ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.ci = phi fast float [ %i.ch, %bb.c ], [ 0.000000e+00, %_ZN4ncnn3Mat7channelEi.exit ] ; 5 uses
  %.idx = mul nsw i64 %indvars.iv278, 36
  %i.cj = getelementptr inbounds i8, ptr %i.r, i64 %.idx ; 18 uses
  %.reass249 = mul i64 %factor.op.mul248, %indvars.iv278
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass249 ; 5 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.aa ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.ac ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 12 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  br i1 %i.ag, label %.lr.ph219, label %.preheader

.lr.ph219:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit171
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 28
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 32 ; 2 uses
  br i1 %i.ba, label %.lr.ph.us.preheader, label %.lr.ph219.split.preheader

.lr.ph219.split.preheader:                        ; preds = %.lr.ph219
  %scevgep277 = getelementptr i8, ptr %indvars.iv275, i64 %i.bc
  br label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph219
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.y
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.ae
  %broadcast.splatinsert417 = insertelement <8 x float> poison, float %i.ci, i64 0
  %broadcast.splat418 = shufflevector <8 x float> %broadcast.splatinsert417, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0149218.us = phi ptr [ %i.gc, %._crit_edge.us ], [ %i.cf, %.lr.ph.us.preheader ] ; 11 uses
  %.0150217.us = phi ptr [ %i.gd, %._crit_edge.us ], [ %i.cv, %.lr.ph.us.preheader ] ; 11 uses
  %.0153216.us = phi i32 [ %i.ge, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.0155215.us = phi ptr [ %i.fy, %._crit_edge.us ], [ %i.ck, %.lr.ph.us.preheader ] ; 7 uses
  %.0159214.us = phi ptr [ %i.fz, %._crit_edge.us ], [ %i.cl, %.lr.ph.us.preheader ] ; 7 uses
  %.0163213.us = phi ptr [ %i.ga, %._crit_edge.us ], [ %i.cm, %.lr.ph.us.preheader ] ; 7 uses
  %.0167212.us = phi ptr [ %i.gb, %._crit_edge.us ], [ %i.cw, %.lr.ph.us.preheader ] ; 7 uses
  br i1 %min.iters.check414, label %scalar.ph413.preheader, label %vector.memcheck361

vector.memcheck361:                               ; preds = %.lr.ph.us
  %scevgep362 = getelementptr i8, ptr %.0149218.us, i64 %i.bm ; 6 uses
  %scevgep363 = getelementptr i8, ptr %.0150217.us, i64 %i.bm ; 6 uses
  %scevgep364 = getelementptr i8, ptr %.0167212.us, i64 %i.bn ; 2 uses
  %scevgep365 = getelementptr i8, ptr %.0163213.us, i64 %i.bn ; 2 uses
  %scevgep366 = getelementptr i8, ptr %.0159214.us, i64 %i.bn ; 2 uses
  %scevgep367 = getelementptr i8, ptr %.0155215.us, i64 %i.bn ; 2 uses
  %bound0370 = icmp ult ptr %.0149218.us, %scevgep363
  %bound1371 = icmp ult ptr %.0150217.us, %scevgep362
  %found.conflict372 = and i1 %bound0370, %bound1371
  %bound0373 = icmp ult ptr %.0149218.us, %scevgep364
  %bound1374 = icmp ult ptr %.0167212.us, %scevgep362
  %found.conflict375 = and i1 %bound0373, %bound1374
  %conflict.rdx376 = or i1 %found.conflict372, %found.conflict375
  %bound0377 = icmp ult ptr %.0149218.us, %scevgep365
  %bound1378 = icmp ult ptr %.0163213.us, %scevgep362
  %found.conflict379 = and i1 %bound0377, %bound1378
  %conflict.rdx380 = or i1 %conflict.rdx376, %found.conflict379
  %bound0381 = icmp ult ptr %.0149218.us, %scevgep366
  %bound1382 = icmp ult ptr %.0159214.us, %scevgep362
  %found.conflict383 = and i1 %bound0381, %bound1382
  %conflict.rdx384 = or i1 %conflict.rdx380, %found.conflict383
  %bound0385 = icmp ult ptr %.0149218.us, %scevgep367
  %bound1386 = icmp ult ptr %.0155215.us, %scevgep362
  %found.conflict387 = and i1 %bound0385, %bound1386
  %conflict.rdx388 = or i1 %conflict.rdx384, %found.conflict387
  %bound0389 = icmp ult ptr %.0149218.us, %scevgep369
  %bound1390 = icmp ult ptr %scevgep368, %scevgep362
  %found.conflict391 = and i1 %bound0389, %bound1390
  %conflict.rdx392 = or i1 %conflict.rdx388, %found.conflict391
  %bound0393 = icmp ult ptr %.0150217.us, %scevgep364
  %bound1394 = icmp ult ptr %.0167212.us, %scevgep363
  %found.conflict395 = and i1 %bound0393, %bound1394
  %conflict.rdx396 = or i1 %conflict.rdx392, %found.conflict395
  %bound0397 = icmp ult ptr %.0150217.us, %scevgep365
  %bound1398 = icmp ult ptr %.0163213.us, %scevgep363
  %found.conflict399 = and i1 %bound0397, %bound1398
  %conflict.rdx400 = or i1 %conflict.rdx396, %found.conflict399
  %bound0401 = icmp ult ptr %.0150217.us, %scevgep366
  %bound1402 = icmp ult ptr %.0159214.us, %scevgep363
  %found.conflict403 = and i1 %bound0401, %bound1402
  %conflict.rdx404 = or i1 %conflict.rdx400, %found.conflict403
  %bound0405 = icmp ult ptr %.0150217.us, %scevgep367
  %bound1406 = icmp ult ptr %.0155215.us, %scevgep363
  %found.conflict407 = and i1 %bound0405, %bound1406
  %conflict.rdx408 = or i1 %conflict.rdx404, %found.conflict407
  %bound0409 = icmp ult ptr %.0150217.us, %scevgep369
  %bound1410 = icmp ult ptr %scevgep368, %scevgep363
  %found.conflict411 = and i1 %bound0409, %bound1410
  %conflict.rdx412 = or i1 %conflict.rdx408, %found.conflict411
  br i1 %conflict.rdx412, label %scalar.ph413.preheader, label %vector.ph415

vector.ph415:                                     ; preds = %vector.memcheck361
  %i.cx = getelementptr i8, ptr %.0149218.us, i64 %i.bw ; 2 uses
  %i.cy = getelementptr i8, ptr %.0150217.us, i64 %i.bw ; 2 uses
  %i.cz = getelementptr i8, ptr %.0155215.us, i64 %i.bw ; 2 uses
  %i.da = getelementptr i8, ptr %.0159214.us, i64 %i.bw ; 2 uses
  %i.db = getelementptr i8, ptr %.0163213.us, i64 %i.bw ; 2 uses
  %i.dc = getelementptr i8, ptr %.0167212.us, i64 %i.bw ; 2 uses
  %i.dd = load float, ptr %i.cj, align 4, !tbaa !45, !alias.scope !277
  %broadcast.splatinsert428 = insertelement <8 x float> poison, float %i.dd, i64 0
  %broadcast.splat429 = shufflevector <8 x float> %broadcast.splatinsert428, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.de = load float, ptr %i.cp, align 4, !tbaa !45, !alias.scope !277
  %broadcast.splatinsert431 = insertelement <8 x float> poison, float %i.de, i64 0
  %broadcast.splat432 = shufflevector <8 x float> %broadcast.splatinsert431, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.df = load float, ptr %i.cq, align 4, !tbaa !45, !alias.scope !277
  %broadcast.splatinsert434 = insertelement <8 x float> poison, float %i.df, i64 0
  %broadcast.splat435 = shufflevector <8 x float> %broadcast.splatinsert434, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dg = load float, ptr %i.cn, align 4, !tbaa !45, !alias.scope !277
  %broadcast.splatinsert437 = insertelement <8 x float> poison, float %i.dg, i64 0
  %broadcast.splat438 = shufflevector <8 x float> %broadcast.splatinsert437, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dh = load float, ptr %i.cr, align 4, !tbaa !45, !alias.scope !277
  %broadcast.splatinsert440 = insertelement <8 x float> poison, float %i.dh, i64 0
  %broadcast.splat441 = shufflevector <8 x float> %broadcast.splatinsert440, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.di = load float, ptr %i.cs, align 4, !tbaa !45, !alias.scope !277
  %broadcast.splatinsert443 = insertelement <8 x float> poison, float %i.di, i64 0
  %broadcast.splat444 = shufflevector <8 x float> %broadcast.splatinsert443, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dj = load float, ptr %i.co, align 4, !tbaa !45, !alias.scope !277
  %broadcast.splatinsert446 = insertelement <8 x float> poison, float %i.dj, i64 0
  %broadcast.splat447 = shufflevector <8 x float> %broadcast.splatinsert446, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dk = load float, ptr %i.ct, align 4, !tbaa !45, !alias.scope !277
  %broadcast.splatinsert449 = insertelement <8 x float> poison, float %i.dk, i64 0
  %broadcast.splat450 = shufflevector <8 x float> %broadcast.splatinsert449, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dl = load float, ptr %i.cu, align 4, !tbaa !45, !alias.scope !277
  %broadcast.splatinsert452 = insertelement <8 x float> poison, float %i.dl, i64 0
  %broadcast.splat453 = shufflevector <8 x float> %broadcast.splatinsert452, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body419

vector.body419:                                   ; preds = %vector.body419, %vector.ph415
  %index420 = phi i64 [ 0, %vector.ph415 ], [ %index.next457, %vector.body419 ] ; 2 uses
  %i.dm = shl i64 %index420, 2                    ; 6 uses
  %next.gep421 = getelementptr i8, ptr %.0149218.us, i64 %i.dm
  %next.gep422 = getelementptr i8, ptr %.0150217.us, i64 %i.dm
  %next.gep423 = getelementptr i8, ptr %.0155215.us, i64 %i.dm ; 3 uses
  %next.gep424 = getelementptr i8, ptr %.0159214.us, i64 %i.dm ; 3 uses
  %next.gep425 = getelementptr i8, ptr %.0163213.us, i64 %i.dm ; 3 uses
  %next.gep426 = getelementptr i8, ptr %.0167212.us, i64 %i.dm ; 3 uses
  %wide.load427 = load <8 x float>, ptr %next.gep423, align 4, !tbaa !45, !alias.scope !280
  %i.dn = fmul fast <8 x float> %broadcast.splat429, %wide.load427
  %i.do = fadd fast <8 x float> %broadcast.splat418, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %next.gep423, i64 4
  %wide.load430 = load <8 x float>, ptr %i.dp, align 4, !tbaa !45, !alias.scope !280
  %i.dq = fmul fast <8 x float> %broadcast.splat432, %wide.load430
  %i.dr = fadd fast <8 x float> %i.do, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %next.gep423, i64 8
  %wide.load433 = load <8 x float>, ptr %i.ds, align 4, !tbaa !45, !alias.scope !280
  %i.dt = fmul fast <8 x float> %broadcast.splat435, %wide.load433
  %i.du = fadd fast <8 x float> %i.dr, %i.dt
  %wide.load436 = load <8 x float>, ptr %next.gep424, align 4, !tbaa !45, !alias.scope !282 ; 2 uses
  %i.dv = fmul fast <8 x float> %broadcast.splat438, %wide.load436
  %i.dw = fadd fast <8 x float> %i.du, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %next.gep424, i64 4
  %wide.load439 = load <8 x float>, ptr %i.dx, align 4, !tbaa !45, !alias.scope !282 ; 2 uses
  %i.dy = fmul fast <8 x float> %broadcast.splat441, %wide.load439
  %i.dz = fadd fast <8 x float> %i.dw, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %next.gep424, i64 8
  %wide.load442 = load <8 x float>, ptr %i.ea, align 4, !tbaa !45, !alias.scope !282 ; 2 uses
  %i.eb = fmul fast <8 x float> %broadcast.splat444, %wide.load442
  %i.ec = fadd fast <8 x float> %i.dz, %i.eb
  %wide.load445 = load <8 x float>, ptr %next.gep425, align 4, !tbaa !45, !alias.scope !284 ; 2 uses
  %i.ed = fmul fast <8 x float> %broadcast.splat447, %wide.load445
  %i.ee = fadd fast <8 x float> %i.ec, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %next.gep425, i64 4
  %wide.load448 = load <8 x float>, ptr %i.ef, align 4, !tbaa !45, !alias.scope !284 ; 2 uses
  %i.eg = fmul fast <8 x float> %broadcast.splat450, %wide.load448
  %i.eh = fadd fast <8 x float> %i.ee, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %next.gep425, i64 8
  %wide.load451 = load <8 x float>, ptr %i.ei, align 4, !tbaa !45, !alias.scope !284 ; 2 uses
  %i.ej = fmul fast <8 x float> %broadcast.splat453, %wide.load451
  %i.ek = fadd fast <8 x float> %i.ej, %i.eh
  %i.el = fmul fast <8 x float> %wide.load436, %broadcast.splat429
  %i.em = fadd fast <8 x float> %broadcast.splat418, %i.el
  %i.en = fmul fast <8 x float> %wide.load439, %broadcast.splat432
  %i.eo = fadd fast <8 x float> %i.em, %i.en
  %i.ep = fmul fast <8 x float> %wide.load442, %broadcast.splat435
  %i.eq = fadd fast <8 x float> %i.eo, %i.ep
  %i.er = fmul fast <8 x float> %wide.load445, %broadcast.splat438
  %i.es = fadd fast <8 x float> %i.eq, %i.er
  %i.et = fmul fast <8 x float> %wide.load448, %broadcast.splat441
  %i.eu = fadd fast <8 x float> %i.es, %i.et
  %i.ev = fmul fast <8 x float> %wide.load451, %broadcast.splat444
  %i.ew = fadd fast <8 x float> %i.eu, %i.ev
  %wide.load454 = load <8 x float>, ptr %next.gep426, align 4, !tbaa !45, !alias.scope !286
  %i.ex = fmul fast <8 x float> %wide.load454, %broadcast.splat447
  %i.ey = fadd fast <8 x float> %i.ew, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %next.gep426, i64 4
  %wide.load455 = load <8 x float>, ptr %i.ez, align 4, !tbaa !45, !alias.scope !286
  %i.fa = fmul fast <8 x float> %wide.load455, %broadcast.splat450
  %i.fb = fadd fast <8 x float> %i.ey, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %next.gep426, i64 8
  %wide.load456 = load <8 x float>, ptr %i.fc, align 4, !tbaa !45, !alias.scope !286
  %i.fd = fmul fast <8 x float> %wide.load456, %broadcast.splat453
  %i.fe = fadd fast <8 x float> %i.fb, %i.fd
  store <8 x float> %i.ek, ptr %next.gep421, align 4, !tbaa !45, !alias.scope !288, !noalias !290
  store <8 x float> %i.fe, ptr %next.gep422, align 4, !tbaa !45, !alias.scope !292, !noalias !293
  %index.next457 = add nuw i64 %index420, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next457, %n.vec416
  br i1 %i.ff, label %middle.block458, label %vector.body419, !llvm.loop !294

middle.block458:                                  ; preds = %vector.body419
  br i1 %cmp.n459, label %._crit_edge.us, label %scalar.ph413.preheader

scalar.ph413.preheader:                           ; preds = %vector.memcheck361, %.lr.ph.us, %middle.block458
  %.1206.us.ph = phi ptr [ %.0149218.us, %vector.memcheck361 ], [ %.0149218.us, %.lr.ph.us ], [ %i.cx, %middle.block458 ]
  %.1151205.us.ph = phi ptr [ %.0150217.us, %vector.memcheck361 ], [ %.0150217.us, %.lr.ph.us ], [ %i.cy, %middle.block458 ]
  %.0152204.us.ph = phi i32 [ %i.s, %vector.memcheck361 ], [ %i.s, %.lr.ph.us ], [ %i.by, %middle.block458 ]
  %.1156203.us.ph = phi ptr [ %.0155215.us, %vector.memcheck361 ], [ %.0155215.us, %.lr.ph.us ], [ %i.cz, %middle.block458 ]
  %.1160202.us.ph = phi ptr [ %.0159214.us, %vector.memcheck361 ], [ %.0159214.us, %.lr.ph.us ], [ %i.da, %middle.block458 ]
  %.1164201.us.ph = phi ptr [ %.0163213.us, %vector.memcheck361 ], [ %.0163213.us, %.lr.ph.us ], [ %i.db, %middle.block458 ]
  %.1168200.us.ph = phi ptr [ %.0167212.us, %vector.memcheck361 ], [ %.0167212.us, %.lr.ph.us ], [ %i.dc, %middle.block458 ]
  br label %scalar.ph413

scalar.ph413:                                     ; preds = %scalar.ph413.preheader, %scalar.ph413
  %.1206.us = phi ptr [ %i.fu, %scalar.ph413 ], [ %.1206.us.ph, %scalar.ph413.preheader ] ; 2 uses
  %.1151205.us = phi ptr [ %i.fv, %scalar.ph413 ], [ %.1151205.us.ph, %scalar.ph413.preheader ] ; 2 uses
  %.0152204.us = phi i32 [ %i.fw, %scalar.ph413 ], [ %.0152204.us.ph, %scalar.ph413.preheader ] ; 2 uses
  %.1156203.us = phi ptr [ %10, %scalar.ph413 ], [ %.1156203.us.ph, %scalar.ph413.preheader ] ; 3 uses
  %.1160202.us = phi ptr [ %19, %scalar.ph413 ], [ %.1160202.us.ph, %scalar.ph413.preheader ] ; 3 uses
  %.1164201.us = phi ptr [ %i.fj, %scalar.ph413 ], [ %.1164201.us.ph, %scalar.ph413.preheader ] ; 3 uses
  %.1168200.us = phi ptr [ %i.fo, %scalar.ph413 ], [ %.1168200.us.ph, %scalar.ph413.preheader ] ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %.1156203.us, i64 4 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.1156203.us, i64 8
  %i.fg = load float, ptr %11, align 4, !tbaa !45
  %i.fh = load float, ptr %.1160202.us, align 4, !tbaa !45 ; 2 uses
  %12 = load <2 x float>, ptr %.1156203.us, align 4, !tbaa !45
  %13 = load <4 x float>, ptr %i.cj, align 4, !tbaa !45 ; 3 uses
  %14 = insertelement <4 x float> poison, float %i.fg, i64 2
  %15 = insertelement <4 x float> %14, float %i.fh, i64 3
  %16 = shufflevector <2 x float> %12, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %17 = shufflevector <4 x float> %16, <4 x float> %15, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %18 = fmul fast <4 x float> %13, %17
  %19 = getelementptr inbounds nuw i8, ptr %.1160202.us, i64 4 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.1160202.us, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.1164201.us, i64 4 ; 3 uses
  %i.fk = load <2 x float>, ptr %19, align 4, !tbaa !45 ; 2 uses
  %20 = load float, ptr %i.fi, align 4, !tbaa !45
  %21 = load <2 x float>, ptr %.1164201.us, align 4, !tbaa !45 ; 2 uses
  %i.fl = load <4 x float>, ptr %i.cr, align 4, !tbaa !45 ; 2 uses
  %22 = shufflevector <2 x float> %i.fk, <2 x float> %21, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fm = fmul fast <4 x float> %i.fl, %22
  %i.fn = getelementptr inbounds nuw i8, ptr %.1164201.us, i64 8
  %23 = load float, ptr %i.cu, align 4, !tbaa !45 ; 2 uses
  %rdx.op = fadd fast <4 x float> %18, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %.1168200.us, i64 4 ; 2 uses
  %i.fp = load <2 x float>, ptr %i.fj, align 4, !tbaa !45
  %24 = load float, ptr %i.fn, align 4, !tbaa !45
  %25 = fmul fast float %23, %24
  %op.rdx468 = call fast float @llvm.vector.reduce.fadd.v4f32(float %25, <4 x float> %rdx.op)
  %op.rdx469 = fadd fast float %op.rdx468, %i.ci
  %26 = load <2 x float>, ptr %.1168200.us, align 4, !tbaa !45
  %27 = shufflevector <2 x float> %21, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %28 = shufflevector <4 x float> %13, <4 x float> %27, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %29 = shufflevector <2 x float> %i.fp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %30 = shufflevector <4 x float> %29, <4 x float> %28, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 poison, i32 poison>
  %31 = shufflevector <2 x float> %26, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %32 = shufflevector <8 x float> %30, <8 x float> %31, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %33 = shufflevector <2 x float> %i.fk, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %34 = shufflevector <4 x float> %33, <4 x float> %13, <8 x i32> <i32 poison, i32 0, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %35 = insertelement <8 x float> %34, float %i.fh, i64 0
  %36 = insertelement <8 x float> %35, float %20, i64 2
  %37 = shufflevector <4 x float> %i.fl, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %38 = shufflevector <8 x float> %36, <8 x float> %37, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fq = fmul fast <8 x float> %32, %38
  %i.fr = getelementptr inbounds nuw i8, ptr %.1168200.us, i64 8
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !45
  %i.ft = fmul fast float %i.fs, %23
  %op.rdx470 = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.ft, <8 x float> %i.fq)
  %op.rdx471 = fadd fast float %op.rdx470, %i.ci
  store float %op.rdx469, ptr %.1206.us, align 4, !tbaa !45
  store float %op.rdx471, ptr %.1151205.us, align 4, !tbaa !45
  %i.fu = getelementptr inbounds nuw i8, ptr %.1206.us, i64 4 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.1151205.us, i64 4 ; 2 uses
  %i.fw = add nsw i32 %.0152204.us, -1
  %i.fx = icmp sgt i32 %.0152204.us, 1
  br i1 %i.fx, label %scalar.ph413, label %._crit_edge.us, !llvm.loop !295

._crit_edge.us:                                   ; preds = %scalar.ph413, %middle.block458
  %.lcssa303 = phi ptr [ %i.cz, %middle.block458 ], [ %10, %scalar.ph413 ]
  %.lcssa302 = phi ptr [ %i.da, %middle.block458 ], [ %19, %scalar.ph413 ]
  %.lcssa301 = phi ptr [ %i.db, %middle.block458 ], [ %i.fj, %scalar.ph413 ]
  %.lcssa300 = phi ptr [ %i.dc, %middle.block458 ], [ %i.fo, %scalar.ph413 ]
  %.lcssa299 = phi ptr [ %i.cx, %middle.block458 ], [ %i.fu, %scalar.ph413 ]
  %.lcssa = phi ptr [ %i.cy, %middle.block458 ], [ %i.fv, %scalar.ph413 ]
  %i.fy = getelementptr inbounds [4 x i8], ptr %.lcssa303, i64 %i.ai ; 2 uses
  %i.fz = getelementptr inbounds [4 x i8], ptr %.lcssa302, i64 %i.ai ; 2 uses
  %i.ga = getelementptr inbounds [4 x i8], ptr %.lcssa301, i64 %i.ai ; 2 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %.lcssa300, i64 %i.ai
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.lcssa299, i64 %i.bb ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.bb
  %i.ge = add nuw nsw i32 %.0153216.us, 2         ; 2 uses
  %i.gf = or disjoint i32 %i.ge, 1
  %i.gg = icmp slt i32 %i.gf, %i.af
  br i1 %i.gg, label %.lr.ph.us, label %.preheader, !llvm.loop !296

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph219.split.preheader, %_ZN4ncnn3MatD2Ev.exit171
  %.0163.lcssa = phi ptr [ %i.cm, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv272, %.lr.ph219.split.preheader ], [ %i.ga, %._crit_edge.us ]
  %.0159.lcssa = phi ptr [ %i.cl, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv269, %.lr.ph219.split.preheader ], [ %i.fz, %._crit_edge.us ]
  %.0155.lcssa = phi ptr [ %i.ck, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv, %.lr.ph219.split.preheader ], [ %i.fy, %._crit_edge.us ]
  %.0153.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit171 ], [ %i.ay, %.lr.ph219.split.preheader ], [ %i.ay, %._crit_edge.us ] ; 2 uses
  %.0149.lcssa = phi ptr [ %i.cf, %_ZN4ncnn3MatD2Ev.exit171 ], [ %scevgep277, %.lr.ph219.split.preheader ], [ %i.gc, %._crit_edge.us ]
  %i.gh = icmp slt i32 %.0153.lcssa, %i.af
  br i1 %i.gh, label %.lr.ph244, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph244:                                        ; preds = %.preheader
  %i.gi = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cj, i64 28
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cj, i64 32 ; 2 uses
  br i1 %i.bd, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph244
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.2243 = phi ptr [ %.lcssa308, %._crit_edge ], [ %.0149.lcssa, %.lr.ph.preheader ] ; 9 uses
  %.1154242 = phi i32 [ %i.jf, %._crit_edge ], [ %.0153.lcssa, %.lr.ph.preheader ]
  %.2157241 = phi ptr [ %i.jc, %._crit_edge ], [ %.0155.lcssa, %.lr.ph.preheader ] ; 6 uses
  %.2161240 = phi ptr [ %i.jd, %._crit_edge ], [ %.0159.lcssa, %.lr.ph.preheader ] ; 6 uses
  %.2165239 = phi ptr [ %i.je, %._crit_edge ], [ %.0163.lcssa, %.lr.ph.preheader ] ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.go = getelementptr i8, ptr %.2243, i64 %i.bg
  %scevgep309 = getelementptr i8, ptr %i.go, i64 4 ; 4 uses
  %scevgep310 = getelementptr i8, ptr %.2165239, i64 %i.bh
  %scevgep311 = getelementptr i8, ptr %.2161240, i64 %i.bh
  %scevgep312 = getelementptr i8, ptr %.2157241, i64 %i.bh
  %bound0 = icmp ult ptr %.2243, %scevgep310
  %bound1 = icmp ult ptr %.2165239, %scevgep309
  %found.conflict = and i1 %bound0, %bound1
  %bound0315 = icmp ult ptr %.2243, %scevgep311
  %bound1316 = icmp ult ptr %.2161240, %scevgep309
  %found.conflict317 = and i1 %bound0315, %bound1316
  %conflict.rdx = or i1 %found.conflict, %found.conflict317
  %bound0318 = icmp ult ptr %.2243, %scevgep312
  %bound1319 = icmp ult ptr %.2157241, %scevgep309
  %found.conflict320 = and i1 %bound0318, %bound1319
  %conflict.rdx321 = or i1 %conflict.rdx, %found.conflict320
  %bound0322 = icmp ult ptr %.2243, %scevgep314
  %bound1323 = icmp ult ptr %scevgep313, %scevgep309
  %found.conflict324 = and i1 %bound0322, %bound1323
  %conflict.rdx325 = or i1 %conflict.rdx321, %found.conflict324
  br i1 %conflict.rdx325, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gp = getelementptr i8, ptr %.2243, i64 %i.cc ; 2 uses
  %i.gq = getelementptr i8, ptr %.2157241, i64 %i.cc ; 2 uses
  %i.gr = getelementptr i8, ptr %.2161240, i64 %i.cc ; 2 uses
  %i.gs = getelementptr i8, ptr %.2165239, i64 %i.cc ; 2 uses
  %i.gt = load float, ptr %i.cj, align 4, !tbaa !45, !alias.scope !297
  %broadcast.splatinsert329 = insertelement <8 x float> poison, float %i.gt, i64 0
  %broadcast.splat330 = shufflevector <8 x float> %broadcast.splatinsert329, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gu = load float, ptr %i.gi, align 4, !tbaa !45, !alias.scope !297
  %broadcast.splatinsert332 = insertelement <8 x float> poison, float %i.gu, i64 0
  %broadcast.splat333 = shufflevector <8 x float> %broadcast.splatinsert332, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gv = load float, ptr %i.gj, align 4, !tbaa !45, !alias.scope !297
  %broadcast.splatinsert335 = insertelement <8 x float> poison, float %i.gv, i64 0
  %broadcast.splat336 = shufflevector <8 x float> %broadcast.splatinsert335, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gw = load float, ptr %i.cn, align 4, !tbaa !45, !alias.scope !297
  %broadcast.splatinsert338 = insertelement <8 x float> poison, float %i.gw, i64 0
  %broadcast.splat339 = shufflevector <8 x float> %broadcast.splatinsert338, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gx = load float, ptr %i.gk, align 4, !tbaa !45, !alias.scope !297
  %broadcast.splatinsert341 = insertelement <8 x float> poison, float %i.gx, i64 0
  %broadcast.splat342 = shufflevector <8 x float> %broadcast.splatinsert341, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gy = load float, ptr %i.gl, align 4, !tbaa !45, !alias.scope !297
  %broadcast.splatinsert344 = insertelement <8 x float> poison, float %i.gy, i64 0
  %broadcast.splat345 = shufflevector <8 x float> %broadcast.splatinsert344, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gz = load float, ptr %i.co, align 4, !tbaa !45, !alias.scope !297
  %broadcast.splatinsert347 = insertelement <8 x float> poison, float %i.gz, i64 0
  %broadcast.splat348 = shufflevector <8 x float> %broadcast.splatinsert347, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ha = load float, ptr %i.gm, align 4, !tbaa !45, !alias.scope !297
  %broadcast.splatinsert350 = insertelement <8 x float> poison, float %i.ha, i64 0
  %broadcast.splat351 = shufflevector <8 x float> %broadcast.splatinsert350, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hb = load float, ptr %i.gn, align 4, !tbaa !45, !alias.scope !297
  %broadcast.splatinsert353 = insertelement <8 x float> poison, float %i.hb, i64 0
  %broadcast.splat354 = shufflevector <8 x float> %broadcast.splatinsert353, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hc = shl i64 %index, 2                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.2243, i64 %i.hc
  %next.gep326 = getelementptr i8, ptr %.2157241, i64 %i.hc ; 3 uses
  %next.gep327 = getelementptr i8, ptr %.2161240, i64 %i.hc ; 3 uses
  %next.gep328 = getelementptr i8, ptr %.2165239, i64 %i.hc ; 3 uses
  %wide.load = load <8 x float>, ptr %next.gep326, align 4, !tbaa !45, !alias.scope !300
  %i.hd = fmul fast <8 x float> %broadcast.splat330, %wide.load
  %i.he = fadd fast <8 x float> %broadcast.splat, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %next.gep326, i64 4
  %wide.load331 = load <8 x float>, ptr %i.hf, align 4, !tbaa !45, !alias.scope !300
  %i.hg = fmul fast <8 x float> %broadcast.splat333, %wide.load331
  %i.hh = fadd fast <8 x float> %i.he, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %next.gep326, i64 8
  %wide.load334 = load <8 x float>, ptr %i.hi, align 4, !tbaa !45, !alias.scope !300
  %i.hj = fmul fast <8 x float> %broadcast.splat336, %wide.load334
  %i.hk = fadd fast <8 x float> %i.hh, %i.hj
  %wide.load337 = load <8 x float>, ptr %next.gep327, align 4, !tbaa !45, !alias.scope !302
  %i.hl = fmul fast <8 x float> %broadcast.splat339, %wide.load337
  %i.hm = fadd fast <8 x float> %i.hk, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %next.gep327, i64 4
  %wide.load340 = load <8 x float>, ptr %i.hn, align 4, !tbaa !45, !alias.scope !302
  %i.ho = fmul fast <8 x float> %broadcast.splat342, %wide.load340
  %i.hp = fadd fast <8 x float> %i.hm, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %next.gep327, i64 8
  %wide.load343 = load <8 x float>, ptr %i.hq, align 4, !tbaa !45, !alias.scope !302
  %i.hr = fmul fast <8 x float> %broadcast.splat345, %wide.load343
  %i.hs = fadd fast <8 x float> %i.hp, %i.hr
  %wide.load346 = load <8 x float>, ptr %next.gep328, align 4, !tbaa !45, !alias.scope !304
  %i.ht = fmul fast <8 x float> %broadcast.splat348, %wide.load346
  %i.hu = fadd fast <8 x float> %i.hs, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %next.gep328, i64 4
  %wide.load349 = load <8 x float>, ptr %i.hv, align 4, !tbaa !45, !alias.scope !304
  %i.hw = fmul fast <8 x float> %broadcast.splat351, %wide.load349
  %i.hx = fadd fast <8 x float> %i.hu, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %next.gep328, i64 8
  %wide.load352 = load <8 x float>, ptr %i.hy, align 4, !tbaa !45, !alias.scope !304
  %i.hz = fmul fast <8 x float> %broadcast.splat354, %wide.load352
  %i.ia = fadd fast <8 x float> %i.hz, %i.hx
  store <8 x float> %i.ia, ptr %next.gep, align 4, !tbaa !45, !alias.scope !306, !noalias !308
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ib = icmp eq i64 %index.next, %n.vec
  br i1 %i.ib, label %middle.block, label %vector.body, !llvm.loop !309

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.gq, i64 -4
  %ind.escape355 = getelementptr i8, ptr %i.gr, i64 -4
  %ind.escape356 = getelementptr i8, ptr %i.gs, i64 -4
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.0148235.ph = phi i32 [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph ], [ %i.cb, %middle.block ]
  %.3234.ph = phi ptr [ %.2243, %vector.memcheck ], [ %.2243, %.lr.ph ], [ %i.gp, %middle.block ]
  %.3158233.ph = phi ptr [ %.2157241, %vector.memcheck ], [ %.2157241, %.lr.ph ], [ %i.gq, %middle.block ]
  %.3162232.ph = phi ptr [ %.2161240, %vector.memcheck ], [ %.2161240, %.lr.ph ], [ %i.gr, %middle.block ]
  %.3166231.ph = phi ptr [ %.2165239, %vector.memcheck ], [ %.2165239, %.lr.ph ], [ %i.gs, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0148235 = phi i32 [ %i.ja, %scalar.ph ], [ %.0148235.ph, %scalar.ph.preheader ] ; 2 uses
  %.3234 = phi ptr [ %i.iz, %scalar.ph ], [ %.3234.ph, %scalar.ph.preheader ] ; 2 uses
  %.3158233 = phi ptr [ %i.ic, %scalar.ph ], [ %.3158233.ph, %scalar.ph.preheader ] ; 4 uses
  %.3162232 = phi ptr [ %i.ig, %scalar.ph ], [ %.3162232.ph, %scalar.ph.preheader ] ; 3 uses
  %.3166231 = phi ptr [ %i.ih, %scalar.ph ], [ %.3166231.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.3158233, i64 4
  %i.id = getelementptr inbounds nuw i8, ptr %.3158233, i64 8
  %i.ie = load float, ptr %i.id, align 4, !tbaa !45
  %i.if = load float, ptr %.3162232, align 4, !tbaa !45
  %i.ig = getelementptr inbounds nuw i8, ptr %.3162232, i64 4 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.3166231, i64 4
  %i.ii = load <2 x float>, ptr %.3158233, align 4, !tbaa !45
  %i.ij = load <2 x float>, ptr %i.ig, align 4, !tbaa !45
  %i.ik = load <2 x float>, ptr %.3166231, align 4, !tbaa !45
  %i.il = load <8 x float>, ptr %i.cj, align 4, !tbaa !45
  %i.im = insertelement <8 x float> poison, float %i.ie, i64 2
  %i.in = insertelement <8 x float> %i.im, float %i.if, i64 3
  %i.io = shufflevector <2 x float> %i.ii, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ip = shufflevector <8 x float> %i.io, <8 x float> %i.in, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iq = shufflevector <2 x float> %i.ij, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ir = shufflevector <8 x float> %i.ip, <8 x float> %i.iq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.is = shufflevector <2 x float> %i.ik, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.it = shufflevector <8 x float> %i.ir, <8 x float> %i.is, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.iu = fmul fast <8 x float> %i.il, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %.3166231, i64 8
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !45
  %i.ix = load float, ptr %i.gn, align 4, !tbaa !45
  %i.iy = fmul fast float %i.ix, %i.iw
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.iy, <8 x float> %i.iu)
  %op.rdx467 = fadd fast float %op.rdx, %i.ci
  store float %op.rdx467, ptr %.3234, align 4, !tbaa !45
  %i.iz = getelementptr inbounds nuw i8, ptr %.3234, i64 4 ; 2 uses
  %i.ja = add nsw i32 %.0148235, -1
  %i.jb = icmp sgt i32 %.0148235, 1
  br i1 %i.jb, label %scalar.ph, label %._crit_edge, !llvm.loop !310

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.3158233.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.3158233, %scalar.ph ]
  %.3162232.lcssa = phi ptr [ %ind.escape355, %middle.block ], [ %.3162232, %scalar.ph ]
  %.3166231.lcssa = phi ptr [ %ind.escape356, %middle.block ], [ %.3166231, %scalar.ph ]
  %.lcssa308 = phi ptr [ %i.gp, %middle.block ], [ %i.iz, %scalar.ph ]
  %i.jc = getelementptr inbounds nuw i8, ptr %.3158233.lcssa, i64 12
  %i.jd = getelementptr inbounds nuw i8, ptr %.3162232.lcssa, i64 12
  %i.je = getelementptr inbounds nuw i8, ptr %.3166231.lcssa, i64 12
  %i.jf = add nuw nsw i32 %.1154242, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.jf, %i.af
  br i1 %exitcond.not, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph, !llvm.loop !311

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %.lr.ph244, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv278, 1 ; 2 uses
  %scevgep267 = getelementptr i8, ptr %indvars.iv, i64 %factor.op.mul248
  %scevgep270 = getelementptr i8, ptr %indvars.iv269, i64 %factor.op.mul248
  %scevgep273 = getelementptr i8, ptr %indvars.iv272, i64 %factor.op.mul248
  %scevgep276 = getelementptr i8, ptr %indvars.iv275, i64 %factor.op.mul
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond280.not = icmp eq i32 %i.az, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond280.not, label %._crit_edge247, label %_ZN4ncnn3Mat7channelEi.exit

._crit_edge247:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge247, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL15convdw3x3s2_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !72     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !72
  %i.h = load i32, ptr %0, align 4, !tbaa !72     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !72
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !72
  %i.k = load i32, ptr %i.a, align 4, !tbaa !72   ; 2 uses
  %.not125 = icmp sgt i32 %i.k, %i.j
  br i1 %.not125, label %._crit_edge127, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18, !noalias !312
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !312
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70, !noalias !312
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !168    ; 2 uses
  %.not81 = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %5, align 8, !tbaa !168    ; 3 uses
  %i.s = load ptr, ptr %6, align 8, !tbaa !18, !noalias !315
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !315
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !70, !noalias !315
  %factor.op.mul128 = mul i64 %i.u, %i.w
  %i.x = load i32, ptr %7, align 4, !tbaa !72     ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i32 %i.x, 1
  %i.aa = sext i32 %i.z to i64
  %i.ab = load i32, ptr %8, align 4, !tbaa !72    ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us, label %._crit_edge127

_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us:       ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph
  %i.ad = load i32, ptr %9, align 4, !tbaa !72    ; 7 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %i.af = load i32, ptr %10, align 4, !tbaa !72
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  br i1 %i.ae, label %_ZN4ncnn3Mat7channelEi.exit.us.us.preheader, label %._crit_edge127

_ZN4ncnn3Mat7channelEi.exit.us.us.preheader:      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us
  %i.ah = sext i32 %i.k to i64                    ; 2 uses
  %i.ai = add nsw i32 %i.j, 1
  %i.aj = add nsw i32 %i.ad, -1
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = shl nuw nsw i64 %i.ak, 3
  %i.an = add nuw nsw i64 %i.am, 12               ; 3 uses
  %i.ao = mul nsw i64 %i.ah, 36                   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.r, i64 %i.ao
  %i.ar = getelementptr i8, ptr %i.aq, i64 36
  %i.as = zext nneg i32 %i.ad to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ad, 5
  %i.at = and i64 %i.as, 3                        ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  %i.av = select i1 %i.au, i64 4, i64 %i.at
  %n.vec = sub nsw i64 %i.as, %i.av               ; 4 uses
  %i.aw = trunc i64 %n.vec to i32
  %i.ax = sub i32 %i.ad, %i.aw
  %i.ay = shl nsw i64 %n.vec, 2
  %i.az = shl nsw i64 %n.vec, 3                   ; 3 uses
  br label %_ZN4ncnn3Mat7channelEi.exit.us.us

_ZN4ncnn3Mat7channelEi.exit.us.us:                ; preds = %_ZN4ncnn3Mat7channelEi.exit.us.us.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us
  %indvar = phi i64 [ 0, %_ZN4ncnn3Mat7channelEi.exit.us.us.preheader ], [ %indvar.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us ] ; 2 uses
  %indvars.iv = phi i64 [ %i.ah, %_ZN4ncnn3Mat7channelEi.exit.us.us.preheader ], [ %indvars.iv.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us ] ; 5 uses
  %i.ba = mul nuw nsw i64 %indvar, 36             ; 2 uses
  %scevgep152 = getelementptr i8, ptr %i.ap, i64 %i.ba
  %scevgep153 = getelementptr i8, ptr %i.ar, i64 %i.ba
  %.reass.us.us = mul i64 %factor.op.mul, %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us.us
  br i1 %.not81, label %_ZN4ncnn3MatD2Ev.exit82.us.us, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit.us.us
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit82.us.us

_ZN4ncnn3MatD2Ev.exit82.us.us:                    ; preds = %bb.c, %_ZN4ncnn3Mat7channelEi.exit.us.us
  %i.be = phi fast float [ %i.bd, %bb.c ], [ 0.000000e+00, %_ZN4ncnn3Mat7channelEi.exit.us.us ] ; 2 uses
  %.idx = mul nsw i64 %indvars.iv, 36
  %i.bf = getelementptr inbounds i8, ptr %i.r, i64 %.idx ; 10 uses
  %.reass129.us.us = mul i64 %factor.op.mul128, %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass129.us.us ; 3 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.y
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.aa
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.be, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit82.us.us, %._crit_edge.us.us
  %.072123.us.us = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit82.us.us ], [ %i.ef, %._crit_edge.us.us ]
  %.073122.us.us = phi ptr [ %i.bb, %_ZN4ncnn3MatD2Ev.exit82.us.us ], [ %i.dz, %._crit_edge.us.us ] ; 9 uses
  %.074121.us.us = phi ptr [ %i.bg, %_ZN4ncnn3MatD2Ev.exit82.us.us ], [ %i.ec, %._crit_edge.us.us ] ; 6 uses
  %.076120.us.us = phi ptr [ %i.bh, %_ZN4ncnn3MatD2Ev.exit82.us.us ], [ %i.ed, %._crit_edge.us.us ] ; 6 uses
  %.078119.us.us = phi ptr [ %i.bi, %_ZN4ncnn3MatD2Ev.exit82.us.us ], [ %i.ee, %._crit_edge.us.us ] ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.us
  %i.br = getelementptr i8, ptr %.073122.us.us, i64 %i.al
  %scevgep = getelementptr i8, ptr %i.br, i64 4   ; 4 uses
  %scevgep149 = getelementptr i8, ptr %.078119.us.us, i64 %i.an
  %scevgep150 = getelementptr i8, ptr %.076120.us.us, i64 %i.an
  %scevgep151 = getelementptr i8, ptr %.074121.us.us, i64 %i.an
  %bound0 = icmp ult ptr %.073122.us.us, %scevgep149
  %bound1 = icmp ult ptr %.078119.us.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0154 = icmp ult ptr %.073122.us.us, %scevgep150
  %bound1155 = icmp ult ptr %.076120.us.us, %scevgep
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx = or i1 %found.conflict, %found.conflict156
  %bound0157 = icmp ult ptr %.073122.us.us, %scevgep151
  %bound1158 = icmp ult ptr %.074121.us.us, %scevgep
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %conflict.rdx, %found.conflict159
  %bound0161 = icmp ult ptr %.073122.us.us, %scevgep153
  %bound1162 = icmp ult ptr %scevgep152, %scevgep
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %conflict.rdx160, %found.conflict163
  br i1 %conflict.rdx164, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %.073122.us.us, i64 %i.ay
  %i.bt = getelementptr i8, ptr %.074121.us.us, i64 %i.az
  %i.bu = getelementptr i8, ptr %.076120.us.us, i64 %i.az
  %i.bv = getelementptr i8, ptr %.078119.us.us, i64 %i.az
  %i.bw = load float, ptr %i.bf, align 4, !tbaa !45, !alias.scope !318
  %broadcast.splatinsert168 = insertelement <4 x float> poison, float %i.bw, i64 0
  %broadcast.splat169 = shufflevector <4 x float> %broadcast.splatinsert168, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = load float, ptr %i.bl, align 4, !tbaa !45, !alias.scope !318
  %broadcast.splatinsert173 = insertelement <4 x float> poison, float %i.bx, i64 0
  %broadcast.splat174 = shufflevector <4 x float> %broadcast.splatinsert173, <4 x float> poison, <4 x i32> zeroinitializer
  %i.by = load float, ptr %i.bm, align 4, !tbaa !45, !alias.scope !318
  %broadcast.splatinsert175 = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat176 = shufflevector <4 x float> %broadcast.splatinsert175, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bz = load float, ptr %i.bj, align 4, !tbaa !45, !alias.scope !318
  %broadcast.splatinsert179 = insertelement <4 x float> poison, float %i.bz, i64 0
  %broadcast.splat180 = shufflevector <4 x float> %broadcast.splatinsert179, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ca = load float, ptr %i.bn, align 4, !tbaa !45, !alias.scope !318
  %broadcast.splatinsert184 = insertelement <4 x float> poison, float %i.ca, i64 0
  %broadcast.splat185 = shufflevector <4 x float> %broadcast.splatinsert184, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cb = load float, ptr %i.bo, align 4, !tbaa !45, !alias.scope !318
  %broadcast.splatinsert186 = insertelement <4 x float> poison, float %i.cb, i64 0
  %broadcast.splat187 = shufflevector <4 x float> %broadcast.splatinsert186, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cc = load float, ptr %i.bk, align 4, !tbaa !45, !alias.scope !318
  %broadcast.splatinsert190 = insertelement <4 x float> poison, float %i.cc, i64 0
  %broadcast.splat191 = shufflevector <4 x float> %broadcast.splatinsert190, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cd = load float, ptr %i.bp, align 4, !tbaa !45, !alias.scope !318
  %broadcast.splatinsert195 = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat196 = shufflevector <4 x float> %broadcast.splatinsert195, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ce = load float, ptr %i.bq, align 4, !tbaa !45, !alias.scope !318
  %broadcast.splatinsert197 = insertelement <4 x float> poison, float %i.ce, i64 0
  %broadcast.splat198 = shufflevector <4 x float> %broadcast.splatinsert197, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cf = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.073122.us.us, i64 %i.cf
  %i.cg = shl i64 %index, 3                       ; 3 uses
  %next.gep165 = getelementptr i8, ptr %.074121.us.us, i64 %i.cg ; 2 uses
  %next.gep166 = getelementptr i8, ptr %.076120.us.us, i64 %i.cg ; 2 uses
  %next.gep167 = getelementptr i8, ptr %.078119.us.us, i64 %i.cg ; 2 uses
  %wide.vec = load <8 x float>, ptr %next.gep165, align 4, !tbaa !45, !alias.scope !321
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ch = fmul fast <4 x float> %broadcast.splat169, %strided.vec
  %i.ci = fadd fast <4 x float> %broadcast.splat, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %next.gep165, i64 4
  %wide.vec170 = load <8 x float>, ptr %i.cj, align 4, !tbaa !45, !alias.scope !321 ; 2 uses
  %strided.vec171 = shufflevector <8 x float> %wide.vec170, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec172 = shufflevector <8 x float> %wide.vec170, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ck = fmul fast <4 x float> %broadcast.splat174, %strided.vec171
  %i.cl = fadd fast <4 x float> %i.ci, %i.ck
  %i.cm = fmul fast <4 x float> %broadcast.splat176, %strided.vec172
  %i.cn = fadd fast <4 x float> %i.cl, %i.cm
  %wide.vec177 = load <8 x float>, ptr %next.gep166, align 4, !tbaa !45, !alias.scope !323
  %strided.vec178 = shufflevector <8 x float> %wide.vec177, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.co = fmul fast <4 x float> %broadcast.splat180, %strided.vec178
  %i.cp = fadd fast <4 x float> %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %next.gep166, i64 4
  %wide.vec181 = load <8 x float>, ptr %i.cq, align 4, !tbaa !45, !alias.scope !323 ; 2 uses
  %strided.vec182 = shufflevector <8 x float> %wide.vec181, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec183 = shufflevector <8 x float> %wide.vec181, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cr = fmul fast <4 x float> %broadcast.splat185, %strided.vec182
  %i.cs = fadd fast <4 x float> %i.cp, %i.cr
  %i.ct = fmul fast <4 x float> %broadcast.splat187, %strided.vec183
  %i.cu = fadd fast <4 x float> %i.cs, %i.ct
  %wide.vec188 = load <8 x float>, ptr %next.gep167, align 4, !tbaa !45, !alias.scope !325
  %strided.vec189 = shufflevector <8 x float> %wide.vec188, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cv = fmul fast <4 x float> %broadcast.splat191, %strided.vec189
  %i.cw = fadd fast <4 x float> %i.cu, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %next.gep167, i64 4
  %wide.vec192 = load <8 x float>, ptr %i.cx, align 4, !tbaa !45, !alias.scope !325 ; 2 uses
  %strided.vec193 = shufflevector <8 x float> %wide.vec192, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec194 = shufflevector <8 x float> %wide.vec192, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cy = fmul fast <4 x float> %broadcast.splat196, %strided.vec193
  %i.cz = fadd fast <4 x float> %i.cw, %i.cy
  %i.da = fmul fast <4 x float> %broadcast.splat198, %strided.vec194
  %i.db = fadd fast <4 x float> %i.da, %i.cz
  store <4 x float> %i.db, ptr %next.gep, align 4, !tbaa !45, !alias.scope !327, !noalias !329
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %scalar.ph.preheader, label %vector.body, !llvm.loop !330

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.us.us
  %.071115.us.us.ph = phi i32 [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.us.us ], [ %i.ax, %vector.body ]
  %.1114.us.us.ph = phi ptr [ %.073122.us.us, %vector.memcheck ], [ %.073122.us.us, %.lr.ph.us.us ], [ %i.bs, %vector.body ]
  %.175113.us.us.ph = phi ptr [ %.074121.us.us, %vector.memcheck ], [ %.074121.us.us, %.lr.ph.us.us ], [ %i.bt, %vector.body ]
  %.177112.us.us.ph = phi ptr [ %.076120.us.us, %vector.memcheck ], [ %.076120.us.us, %.lr.ph.us.us ], [ %i.bu, %vector.body ]
  %.179111.us.us.ph = phi ptr [ %.078119.us.us, %vector.memcheck ], [ %.078119.us.us, %.lr.ph.us.us ], [ %i.bv, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.071115.us.us = phi i32 [ %i.ea, %scalar.ph ], [ %.071115.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.1114.us.us = phi ptr [ %i.dz, %scalar.ph ], [ %.1114.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.175113.us.us = phi ptr [ %i.dd, %scalar.ph ], [ %.175113.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.177112.us.us = phi ptr [ %i.dh, %scalar.ph ], [ %.177112.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.179111.us.us = phi ptr [ %i.dv, %scalar.ph ], [ %.179111.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.175113.us.us, i64 8 ; 3 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !45
  %i.df = load float, ptr %.177112.us.us, align 4, !tbaa !45
  %i.dg = getelementptr inbounds nuw i8, ptr %.177112.us.us, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %.177112.us.us, i64 8 ; 2 uses
  %i.di = load <2 x float>, ptr %.175113.us.us, align 4, !tbaa !45
  %i.dj = load <2 x float>, ptr %i.dg, align 4, !tbaa !45
  %i.dk = load <2 x float>, ptr %.179111.us.us, align 4, !tbaa !45
  %i.dl = load <8 x float>, ptr %i.bf, align 4, !tbaa !45
  %i.dm = insertelement <8 x float> poison, float %i.de, i64 2
  %i.dn = insertelement <8 x float> %i.dm, float %i.df, i64 3
  %i.do = shufflevector <2 x float> %i.di, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dp = shufflevector <8 x float> %i.do, <8 x float> %i.dn, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dq = shufflevector <2 x float> %i.dj, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dr = shufflevector <8 x float> %i.dp, <8 x float> %i.dq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.ds = shufflevector <2 x float> %i.dk, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dt = shufflevector <8 x float> %i.dr, <8 x float> %i.ds, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.du = fmul fast <8 x float> %i.dl, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.179111.us.us, i64 8 ; 3 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !45
  %i.dx = load float, ptr %i.bq, align 4, !tbaa !45
  %i.dy = fmul fast float %i.dx, %i.dw
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.dy, <8 x float> %i.du)
  %op.rdx203 = fadd fast float %op.rdx, %i.be
  store float %op.rdx203, ptr %.1114.us.us, align 4, !tbaa !45
  %i.dz = getelementptr inbounds nuw i8, ptr %.1114.us.us, i64 4 ; 2 uses
  %i.ea = add nsw i32 %.071115.us.us, -1
  %i.eb = icmp sgt i32 %.071115.us.us, 1
  br i1 %i.eb, label %scalar.ph, label %._crit_edge.us.us, !llvm.loop !331

._crit_edge.us.us:                                ; preds = %scalar.ph
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.ag
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.ag
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.ag
  %i.ef = add nuw nsw i32 %.072123.us.us, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.ef, %i.ab
  br i1 %exitcond.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us, label %.lr.ph.us.us, !llvm.loop !332

._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us:           ; preds = %._crit_edge.us.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond136.not = icmp eq i32 %i.ai, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond136.not, label %._crit_edge127, label %_ZN4ncnn3Mat7channelEi.exit.us.us

._crit_edge127:                                   ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us, %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge127, %bb.a
  ret void
}

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn28ConvolutionDepthWise_x86_fma16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %10) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !72     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !72
  %i.h = load i32, ptr %0, align 4, !tbaa !72     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !72
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !72
  %i.k = load i32, ptr %i.a, align 4, !tbaa !72   ; 2 uses
  %.not421 = icmp sgt i32 %i.k, %i.j
  br i1 %.not421, label %._crit_edge423, label %_ZN4ncnn3MatD2Ev.exit91.lr.ph

_ZN4ncnn3MatD2Ev.exit91.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 752
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 576
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 504
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 280 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 648
  %i.aa = load i32, ptr %7, align 4, !tbaa !72    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %_ZN4ncnn3MatD2Ev.exit91.preheader, label %._crit_edge423

_ZN4ncnn3MatD2Ev.exit91.preheader:                ; preds = %_ZN4ncnn3MatD2Ev.exit91.lr.ph
  %i.ac = sext i32 %i.k to i64
  %i.ad = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3MatD2Ev.exit91

_ZN4ncnn3MatD2Ev.exit91:                          ; preds = %_ZN4ncnn3MatD2Ev.exit91.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.ae = phi i32 [ %i.aa, %_ZN4ncnn3MatD2Ev.exit91.preheader ], [ %i.bj, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.af = phi i32 [ %i.aa, %_ZN4ncnn3MatD2Ev.exit91.preheader ], [ %i.bk, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv429 = phi i64 [ %i.ac, %_ZN4ncnn3MatD2Ev.exit91.preheader ], [ %indvars.iv.next430, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.ah = load i32, ptr %5, align 4, !tbaa !72
  %i.ai = trunc nsw i64 %indvars.iv429 to i32
  %i.aj = shl i32 %i.ai, 3
  %i.ak = mul i32 %i.aj, %i.ah
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ag, i64 %i.al
  %i.an = load ptr, ptr %6, align 8, !tbaa !18, !noalias !333
  %i.ao = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !333
  %i.ap = mul i64 %i.ao, %indvars.iv429
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !70, !noalias !333 ; 2 uses
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  %i.at = icmp sgt i32 %i.af, 0
  br i1 %i.at, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit91
  %i.au = load i32, ptr %i.o, align 4, !tbaa !80, !noalias !333
  %i.av = sext i32 %i.au to i64
  %i.aw = mul i64 %i.aq, %i.av
  %i.ax = shl nsw i64 %indvars.iv429, 3           ; 4 uses
  %i.ay = load i32, ptr %8, align 4, !tbaa !72    ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ba = load ptr, ptr %3, align 8, !tbaa !18, !noalias !336
  %i.bb = load i64, ptr %i.m, align 8, !tbaa !70, !noalias !339
  %i.bc = mul i64 %i.bb, %indvars.iv429
  %i.bd = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !336
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge415
  %i.bg = phi i32 [ %i.bl, %._crit_edge415 ], [ %i.ae, %.preheader.preheader ]
  %i.bh = phi i32 [ %i.bm, %._crit_edge415 ], [ %i.ay, %.preheader.preheader ] ; 2 uses
  %.080420 = phi ptr [ %.1.lcssa, %._crit_edge415 ], [ %i.bf, %.preheader.preheader ] ; 2 uses
  %.081419 = phi ptr [ %.182.lcssa, %._crit_edge415 ], [ %i.bf, %.preheader.preheader ] ; 2 uses
  %.084418 = phi i32 [ %i.bn, %._crit_edge415 ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph414, label %._crit_edge415

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge415, %.preheader.lr.ph, %_ZN4ncnn3MatD2Ev.exit91
  %i.bj = phi i32 [ %i.ae, %_ZN4ncnn3MatD2Ev.exit91 ], [ %i.ae, %.preheader.lr.ph ], [ %i.bl, %._crit_edge415 ]
  %i.bk = phi i32 [ %i.af, %_ZN4ncnn3MatD2Ev.exit91 ], [ %i.af, %.preheader.lr.ph ], [ %i.bl, %._crit_edge415 ]
  %indvars.iv.next430 = add nsw i64 %indvars.iv429, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next430 to i32
  %exitcond432.not = icmp eq i32 %i.ad, %lftr.wideiv
  br i1 %exitcond432.not, label %._crit_edge423, label %_ZN4ncnn3MatD2Ev.exit91, !llvm.loop !342

._crit_edge415.loopexit:                          ; preds = %bb.h
  %.pre = load i32, ptr %7, align 4, !tbaa !72
  br label %._crit_edge415

._crit_edge415:                                   ; preds = %._crit_edge415.loopexit, %.preheader
  %i.bl = phi i32 [ %i.bg, %.preheader ], [ %.pre, %._crit_edge415.loopexit ] ; 4 uses
  %i.bm = phi i32 [ %i.bh, %.preheader ], [ %i.pp, %._crit_edge415.loopexit ]
  %.182.lcssa = phi ptr [ %.081419, %.preheader ], [ %.283, %._crit_edge415.loopexit ]
  %.1.lcssa = phi ptr [ %.080420, %.preheader ], [ %.2, %._crit_edge415.loopexit ]
  %i.bn = add nuw nsw i32 %.084418, 1             ; 2 uses
end_hunk_0
