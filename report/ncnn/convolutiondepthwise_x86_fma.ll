Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolutiondepthwise_x86_fma?download=true
inline.NumInlined: 225
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4ncnnL21convdw5x5s2_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined:bb.a
  br i1 %i.ga, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !269

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %7, align 4, !tbaa !72
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
  %i.r = load ptr, ptr %5, align 8, !tbaa !168    ; 3 uses
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
  %i.bi = mul nsw i64 %i.aj, 36
  %i.bj = add i32 %i.s, -1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2                ; 2 uses
  %i.bm = add nuw nsw i64 %i.bl, 4                ; 2 uses
  %i.bn = add nuw nsw i64 %i.bl, 12               ; 4 uses
  %i.bo = mul nsw i64 %i.aj, 36
  %i.bp = getelementptr i8, ptr %i.r, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 36
  %i.br = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bs = getelementptr i8, ptr %i.br, i64 36
  %i.bt = zext nneg i32 %i.s to i64               ; 2 uses
  %min.iters.check412 = icmp ult i32 %i.s, 8
  %n.vec414 = and i64 %i.bt, 2147483640           ; 4 uses
  %i.bu = trunc nuw nsw i64 %n.vec414 to i32
  %i.bv = sub nsw i32 %i.s, %i.bu
  %i.bw = shl nuw nsw i64 %n.vec414, 2            ; 6 uses
  %cmp.n457 = icmp eq i64 %n.vec414, %i.bt
  %i.bx = zext nneg i32 %i.s to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.s, 8
  %n.vec = and i64 %i.bx, 2147483640              ; 4 uses
  %i.by = trunc nuw nsw i64 %n.vec to i32
  %i.bz = sub nsw i32 %i.s, %i.by
  %i.ca = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bx
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i64 [ 0, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv278 = phi i64 [ %i.aj, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %indvars.iv275 = phi ptr [ %scevgep274, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep276, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv272 = phi ptr [ %scevgep271, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep273, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv269 = phi ptr [ %scevgep268, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep270, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv = phi ptr [ %scevgep, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep267, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.cb = mul nuw nsw i64 %indvar, 36
  %scevgep367 = getelementptr i8, ptr %i.bq, i64 %i.cb ; 2 uses
  %i.cc = mul nuw nsw i64 %indvar, 36
  %scevgep313 = getelementptr i8, ptr %i.bs, i64 %i.cc
  %.reass = mul i64 %factor.op.mul, %indvars.iv278
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  br i1 %.not170, label %_ZN4ncnn3MatD2Ev.exit171, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv278
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit171

_ZN4ncnn3MatD2Ev.exit171:                         ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.cg = phi fast float [ %i.cf, %bb.c ], [ 0.000000e+00, %_ZN4ncnn3Mat7channelEi.exit ] ; 5 uses
  %.idx = mul i64 %indvars.iv278, 36
  %i.ch = getelementptr i8, ptr %i.r, i64 %.idx   ; 21 uses
  %.reass249 = mul i64 %factor.op.mul248, %indvars.iv278
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass249 ; 5 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.aa ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ac ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 12 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 2 uses
  br i1 %i.ag, label %.lr.ph219, label %.preheader

.lr.ph219:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit171
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 32 ; 2 uses
  br i1 %i.ba, label %.lr.ph.us.preheader, label %.lr.ph219.split.preheader

.lr.ph219.split.preheader:                        ; preds = %.lr.ph219
  %scevgep277 = getelementptr i8, ptr %indvars.iv275, i64 %i.bc
  br label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph219
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.y
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ae
  %broadcast.splatinsert415 = insertelement <8 x float> poison, float %i.cg, i64 0
  %broadcast.splat416 = shufflevector <8 x float> %broadcast.splatinsert415, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0150218.us = phi i32 [ %i.gc, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.0151217.us = phi ptr [ %i.fz, %._crit_edge.us ], [ %i.cu, %.lr.ph.us.preheader ] ; 7 uses
  %.0153216.us = phi ptr [ %i.fy, %._crit_edge.us ], [ %i.ck, %.lr.ph.us.preheader ] ; 7 uses
  %.0155215.us = phi ptr [ %i.fx, %._crit_edge.us ], [ %i.cj, %.lr.ph.us.preheader ] ; 7 uses
  %.0159214.us = phi ptr [ %i.fw, %._crit_edge.us ], [ %i.ci, %.lr.ph.us.preheader ] ; 7 uses
  %.0163213.us = phi ptr [ %i.gb, %._crit_edge.us ], [ %i.ct, %.lr.ph.us.preheader ] ; 11 uses
  %.0165212.us = phi ptr [ %i.ga, %._crit_edge.us ], [ %i.cd, %.lr.ph.us.preheader ] ; 11 uses
  br i1 %min.iters.check412, label %scalar.ph411.preheader, label %vector.memcheck360

vector.memcheck360:                               ; preds = %.lr.ph.us
  %scevgep361 = getelementptr i8, ptr %.0165212.us, i64 %i.bm ; 6 uses
  %scevgep362 = getelementptr i8, ptr %.0163213.us, i64 %i.bm ; 6 uses
  %scevgep363 = getelementptr i8, ptr %.0151217.us, i64 %i.bn ; 2 uses
  %scevgep364 = getelementptr i8, ptr %.0153216.us, i64 %i.bn ; 2 uses
  %scevgep365 = getelementptr i8, ptr %.0155215.us, i64 %i.bn ; 2 uses
  %scevgep366 = getelementptr i8, ptr %.0159214.us, i64 %i.bn ; 2 uses
  %bound0368 = icmp ult ptr %.0165212.us, %scevgep362
  %bound1369 = icmp ult ptr %.0163213.us, %scevgep361
  %found.conflict370 = and i1 %bound0368, %bound1369
  %bound0371 = icmp ult ptr %.0165212.us, %scevgep363
  %bound1372 = icmp ult ptr %.0151217.us, %scevgep361
  %found.conflict373 = and i1 %bound0371, %bound1372
  %conflict.rdx374 = or i1 %found.conflict370, %found.conflict373
  %bound0375 = icmp ult ptr %.0165212.us, %scevgep364
  %bound1376 = icmp ult ptr %.0153216.us, %scevgep361
  %found.conflict377 = and i1 %bound0375, %bound1376
  %conflict.rdx378 = or i1 %conflict.rdx374, %found.conflict377
  %bound0379 = icmp ult ptr %.0165212.us, %scevgep365
  %bound1380 = icmp ult ptr %.0155215.us, %scevgep361
  %found.conflict381 = and i1 %bound0379, %bound1380
  %conflict.rdx382 = or i1 %conflict.rdx378, %found.conflict381
  %bound0383 = icmp ult ptr %.0165212.us, %scevgep366
  %bound1384 = icmp ult ptr %.0159214.us, %scevgep361
  %found.conflict385 = and i1 %bound0383, %bound1384
  %conflict.rdx386 = or i1 %conflict.rdx382, %found.conflict385
  %bound0387 = icmp ult ptr %.0165212.us, %scevgep367
  %bound1388 = icmp ult ptr %i.ch, %scevgep361
  %found.conflict389 = and i1 %bound0387, %bound1388
  %conflict.rdx390 = or i1 %conflict.rdx386, %found.conflict389
  %bound0391 = icmp ult ptr %.0163213.us, %scevgep363
  %bound1392 = icmp ult ptr %.0151217.us, %scevgep362
  %found.conflict393 = and i1 %bound0391, %bound1392
  %conflict.rdx394 = or i1 %conflict.rdx390, %found.conflict393
  %bound0395 = icmp ult ptr %.0163213.us, %scevgep364
  %bound1396 = icmp ult ptr %.0153216.us, %scevgep362
  %found.conflict397 = and i1 %bound0395, %bound1396
  %conflict.rdx398 = or i1 %conflict.rdx394, %found.conflict397
  %bound0399 = icmp ult ptr %.0163213.us, %scevgep365
  %bound1400 = icmp ult ptr %.0155215.us, %scevgep362
  %found.conflict401 = and i1 %bound0399, %bound1400
  %conflict.rdx402 = or i1 %conflict.rdx398, %found.conflict401
  %bound0403 = icmp ult ptr %.0163213.us, %scevgep366
  %bound1404 = icmp ult ptr %.0159214.us, %scevgep362
  %found.conflict405 = and i1 %bound0403, %bound1404
  %conflict.rdx406 = or i1 %conflict.rdx402, %found.conflict405
  %bound0407 = icmp ult ptr %.0163213.us, %scevgep367
  %bound1408 = icmp ult ptr %i.ch, %scevgep362
  %found.conflict409 = and i1 %bound0407, %bound1408
  %conflict.rdx410 = or i1 %conflict.rdx406, %found.conflict409
  br i1 %conflict.rdx410, label %scalar.ph411.preheader, label %vector.ph413

vector.ph413:                                     ; preds = %vector.memcheck360
  %i.cv = getelementptr i8, ptr %.0151217.us, i64 %i.bw ; 2 uses
  %i.cw = getelementptr i8, ptr %.0153216.us, i64 %i.bw ; 2 uses
  %i.cx = getelementptr i8, ptr %.0155215.us, i64 %i.bw ; 2 uses
  %i.cy = getelementptr i8, ptr %.0159214.us, i64 %i.bw ; 2 uses
  %i.cz = getelementptr i8, ptr %.0163213.us, i64 %i.bw ; 2 uses
  %i.da = getelementptr i8, ptr %.0165212.us, i64 %i.bw ; 2 uses
  %i.db = load float, ptr %i.ch, align 4, !tbaa !45, !alias.scope !277
  %broadcast.splatinsert426 = insertelement <8 x float> poison, float %i.db, i64 0
  %broadcast.splat427 = shufflevector <8 x float> %broadcast.splatinsert426, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dc = load float, ptr %i.cn, align 4, !tbaa !45, !alias.scope !277
  %broadcast.splatinsert429 = insertelement <8 x float> poison, float %i.dc, i64 0
  %broadcast.splat430 = shufflevector <8 x float> %broadcast.splatinsert429, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dd = load float, ptr %i.co, align 4, !tbaa !45, !alias.scope !277
  %broadcast.splatinsert432 = insertelement <8 x float> poison, float %i.dd, i64 0
  %broadcast.splat433 = shufflevector <8 x float> %broadcast.splatinsert432, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.de = load float, ptr %i.cl, align 4, !tbaa !45, !alias.scope !277
  %broadcast.splatinsert435 = insertelement <8 x float> poison, float %i.de, i64 0
  %broadcast.splat436 = shufflevector <8 x float> %broadcast.splatinsert435, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.df = load float, ptr %i.cp, align 4, !tbaa !45, !alias.scope !277
  %broadcast.splatinsert438 = insertelement <8 x float> poison, float %i.df, i64 0
  %broadcast.splat439 = shufflevector <8 x float> %broadcast.splatinsert438, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dg = load float, ptr %i.cq, align 4, !tbaa !45, !alias.scope !277
  %broadcast.splatinsert441 = insertelement <8 x float> poison, float %i.dg, i64 0
  %broadcast.splat442 = shufflevector <8 x float> %broadcast.splatinsert441, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dh = load float, ptr %i.cm, align 4, !tbaa !45, !alias.scope !277
  %broadcast.splatinsert444 = insertelement <8 x float> poison, float %i.dh, i64 0
  %broadcast.splat445 = shufflevector <8 x float> %broadcast.splatinsert444, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.di = load float, ptr %i.cr, align 4, !tbaa !45, !alias.scope !277
  %broadcast.splatinsert447 = insertelement <8 x float> poison, float %i.di, i64 0
  %broadcast.splat448 = shufflevector <8 x float> %broadcast.splatinsert447, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dj = load float, ptr %i.cs, align 4, !tbaa !45, !alias.scope !277
  %broadcast.splatinsert450 = insertelement <8 x float> poison, float %i.dj, i64 0
  %broadcast.splat451 = shufflevector <8 x float> %broadcast.splatinsert450, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph413
  %index418 = phi i64 [ 0, %vector.ph413 ], [ %index.next455, %vector.body417 ] ; 2 uses
  %i.dk = shl i64 %index418, 2                    ; 6 uses
  %next.gep419 = getelementptr i8, ptr %.0151217.us, i64 %i.dk ; 3 uses
  %next.gep420 = getelementptr i8, ptr %.0153216.us, i64 %i.dk ; 3 uses
  %next.gep421 = getelementptr i8, ptr %.0155215.us, i64 %i.dk ; 3 uses
  %next.gep422 = getelementptr i8, ptr %.0159214.us, i64 %i.dk ; 3 uses
  %next.gep423 = getelementptr i8, ptr %.0163213.us, i64 %i.dk
  %next.gep424 = getelementptr i8, ptr %.0165212.us, i64 %i.dk
  %wide.load425 = load <8 x float>, ptr %next.gep422, align 4, !tbaa !45, !alias.scope !280
  %i.dl = fmul fast <8 x float> %broadcast.splat427, %wide.load425
  %i.dm = fadd fast <8 x float> %broadcast.splat416, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %next.gep422, i64 4
  %wide.load428 = load <8 x float>, ptr %i.dn, align 4, !tbaa !45, !alias.scope !280
  %i.do = fmul fast <8 x float> %broadcast.splat430, %wide.load428
  %i.dp = fadd fast <8 x float> %i.dm, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %next.gep422, i64 8
  %wide.load431 = load <8 x float>, ptr %i.dq, align 4, !tbaa !45, !alias.scope !280
  %i.dr = fmul fast <8 x float> %broadcast.splat433, %wide.load431
  %i.ds = fadd fast <8 x float> %i.dp, %i.dr
  %wide.load434 = load <8 x float>, ptr %next.gep421, align 4, !tbaa !45, !alias.scope !282 ; 2 uses
  %i.dt = fmul fast <8 x float> %broadcast.splat436, %wide.load434
  %i.du = fadd fast <8 x float> %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %next.gep421, i64 4
  %wide.load437 = load <8 x float>, ptr %i.dv, align 4, !tbaa !45, !alias.scope !282 ; 2 uses
  %i.dw = fmul fast <8 x float> %broadcast.splat439, %wide.load437
  %i.dx = fadd fast <8 x float> %i.du, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %next.gep421, i64 8
  %wide.load440 = load <8 x float>, ptr %i.dy, align 4, !tbaa !45, !alias.scope !282 ; 2 uses
  %i.dz = fmul fast <8 x float> %broadcast.splat442, %wide.load440
  %i.ea = fadd fast <8 x float> %i.dx, %i.dz
  %wide.load443 = load <8 x float>, ptr %next.gep420, align 4, !tbaa !45, !alias.scope !284 ; 2 uses
  %i.eb = fmul fast <8 x float> %broadcast.splat445, %wide.load443
  %i.ec = fadd fast <8 x float> %i.ea, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %next.gep420, i64 4
  %wide.load446 = load <8 x float>, ptr %i.ed, align 4, !tbaa !45, !alias.scope !284 ; 2 uses
  %i.ee = fmul fast <8 x float> %broadcast.splat448, %wide.load446
  %i.ef = fadd fast <8 x float> %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %next.gep420, i64 8
  %wide.load449 = load <8 x float>, ptr %i.eg, align 4, !tbaa !45, !alias.scope !284 ; 2 uses
  %i.eh = fmul fast <8 x float> %broadcast.splat451, %wide.load449
  %i.ei = fadd fast <8 x float> %i.eh, %i.ef
  %i.ej = fmul fast <8 x float> %wide.load434, %broadcast.splat427
  %i.ek = fadd fast <8 x float> %broadcast.splat416, %i.ej
  %i.el = fmul fast <8 x float> %wide.load437, %broadcast.splat430
  %i.em = fadd fast <8 x float> %i.ek, %i.el
  %i.en = fmul fast <8 x float> %wide.load440, %broadcast.splat433
  %i.eo = fadd fast <8 x float> %i.em, %i.en
  %i.ep = fmul fast <8 x float> %wide.load443, %broadcast.splat436
  %i.eq = fadd fast <8 x float> %i.eo, %i.ep
  %i.er = fmul fast <8 x float> %wide.load446, %broadcast.splat439
  %i.es = fadd fast <8 x float> %i.eq, %i.er
  %i.et = fmul fast <8 x float> %wide.load449, %broadcast.splat442
  %i.eu = fadd fast <8 x float> %i.es, %i.et
  %wide.load452 = load <8 x float>, ptr %next.gep419, align 4, !tbaa !45, !alias.scope !286
  %i.ev = fmul fast <8 x float> %wide.load452, %broadcast.splat445
  %i.ew = fadd fast <8 x float> %i.eu, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %next.gep419, i64 4
  %wide.load453 = load <8 x float>, ptr %i.ex, align 4, !tbaa !45, !alias.scope !286
  %i.ey = fmul fast <8 x float> %wide.load453, %broadcast.splat448
  %i.ez = fadd fast <8 x float> %i.ew, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %next.gep419, i64 8
  %wide.load454 = load <8 x float>, ptr %i.fa, align 4, !tbaa !45, !alias.scope !286
  %i.fb = fmul fast <8 x float> %wide.load454, %broadcast.splat451
  %i.fc = fadd fast <8 x float> %i.ez, %i.fb
  store <8 x float> %i.ei, ptr %next.gep424, align 4, !tbaa !45, !alias.scope !288, !noalias !290
  store <8 x float> %i.fc, ptr %next.gep423, align 4, !tbaa !45, !alias.scope !292, !noalias !293
  %index.next455 = add nuw i64 %index418, 8       ; 2 uses
  %i.fd = icmp eq i64 %index.next455, %n.vec414
  br i1 %i.fd, label %middle.block456, label %vector.body417, !llvm.loop !294

middle.block456:                                  ; preds = %vector.body417
  br i1 %cmp.n457, label %._crit_edge.us, label %scalar.ph411.preheader

scalar.ph411.preheader:                           ; preds = %vector.memcheck360, %.lr.ph.us, %middle.block456
  %.0149206.us.ph = phi i32 [ %i.s, %vector.memcheck360 ], [ %i.s, %.lr.ph.us ], [ %i.bv, %middle.block456 ]
  %.1152205.us.ph = phi ptr [ %.0151217.us, %vector.memcheck360 ], [ %.0151217.us, %.lr.ph.us ], [ %i.cv, %middle.block456 ]
  %.1154204.us.ph = phi ptr [ %.0153216.us, %vector.memcheck360 ], [ %.0153216.us, %.lr.ph.us ], [ %i.cw, %middle.block456 ]
  %.1156203.us.ph = phi ptr [ %.0155215.us, %vector.memcheck360 ], [ %.0155215.us, %.lr.ph.us ], [ %i.cx, %middle.block456 ]
  %.1160202.us.ph = phi ptr [ %.0159214.us, %vector.memcheck360 ], [ %.0159214.us, %.lr.ph.us ], [ %i.cy, %middle.block456 ]
  %.1164201.us.ph = phi ptr [ %.0163213.us, %vector.memcheck360 ], [ %.0163213.us, %.lr.ph.us ], [ %i.cz, %middle.block456 ]
  %.1166200.us.ph = phi ptr [ %.0165212.us, %vector.memcheck360 ], [ %.0165212.us, %.lr.ph.us ], [ %i.da, %middle.block456 ]
  br label %scalar.ph411

scalar.ph411:                                     ; preds = %scalar.ph411.preheader, %scalar.ph411
  %.0149206.us = phi i32 [ %i.fu, %scalar.ph411 ], [ %.0149206.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %.1152205.us = phi ptr [ %i.fm, %scalar.ph411 ], [ %.1152205.us.ph, %scalar.ph411.preheader ] ; 3 uses
  %.1154204.us = phi ptr [ %i.fh, %scalar.ph411 ], [ %.1154204.us.ph, %scalar.ph411.preheader ] ; 3 uses
  %.1156203.us = phi ptr [ %19, %scalar.ph411 ], [ %.1156203.us.ph, %scalar.ph411.preheader ] ; 3 uses
  %.1160202.us = phi ptr [ %10, %scalar.ph411 ], [ %.1160202.us.ph, %scalar.ph411.preheader ] ; 3 uses
  %.1164201.us = phi ptr [ %i.ft, %scalar.ph411 ], [ %.1164201.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %.1166200.us = phi ptr [ %i.fs, %scalar.ph411 ], [ %.1166200.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.1160202.us, i64 4 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.1160202.us, i64 8
  %i.fe = load float, ptr %11, align 4, !tbaa !45
  %i.ff = load float, ptr %.1156203.us, align 4, !tbaa !45 ; 2 uses
  %12 = load <2 x float>, ptr %.1160202.us, align 4, !tbaa !45
  %13 = load <4 x float>, ptr %i.ch, align 4, !tbaa !45 ; 3 uses
  %14 = insertelement <4 x float> poison, float %i.fe, i64 2
  %15 = insertelement <4 x float> %14, float %i.ff, i64 3
  %16 = shufflevector <2 x float> %12, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %17 = shufflevector <4 x float> %16, <4 x float> %15, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %18 = fmul fast <4 x float> %13, %17
  %19 = getelementptr inbounds nuw i8, ptr %.1156203.us, i64 4 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.1156203.us, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %.1154204.us, i64 4 ; 3 uses
  %i.fi = load <2 x float>, ptr %19, align 4, !tbaa !45 ; 2 uses
  %20 = load float, ptr %i.fg, align 4, !tbaa !45
  %21 = load <2 x float>, ptr %.1154204.us, align 4, !tbaa !45 ; 2 uses
  %i.fj = load <4 x float>, ptr %i.cp, align 4, !tbaa !45 ; 2 uses
  %22 = shufflevector <2 x float> %i.fi, <2 x float> %21, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fk = fmul fast <4 x float> %i.fj, %22
  %i.fl = getelementptr inbounds nuw i8, ptr %.1154204.us, i64 8
  %23 = load float, ptr %i.cs, align 4, !tbaa !45 ; 2 uses
  %rdx.op = fadd fast <4 x float> %18, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %.1152205.us, i64 4 ; 2 uses
  %i.fn = load <2 x float>, ptr %i.fh, align 4, !tbaa !45
  %24 = load float, ptr %i.fl, align 4, !tbaa !45
  %25 = fmul fast float %23, %24
  %op.rdx466 = call fast float @llvm.vector.reduce.fadd.v4f32(float %25, <4 x float> %rdx.op)
  %op.rdx467 = fadd fast float %op.rdx466, %i.cg
  %26 = load <2 x float>, ptr %.1152205.us, align 4, !tbaa !45
  %27 = shufflevector <2 x float> %21, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %28 = shufflevector <4 x float> %13, <4 x float> %27, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %29 = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %30 = shufflevector <4 x float> %29, <4 x float> %28, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 poison, i32 poison>
  %31 = shufflevector <2 x float> %26, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %32 = shufflevector <8 x float> %30, <8 x float> %31, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %33 = shufflevector <2 x float> %i.fi, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %34 = shufflevector <4 x float> %33, <4 x float> %13, <8 x i32> <i32 poison, i32 0, i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison>
  %35 = insertelement <8 x float> %34, float %i.ff, i64 0
  %36 = insertelement <8 x float> %35, float %20, i64 2
  %37 = shufflevector <4 x float> %i.fj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %38 = shufflevector <8 x float> %36, <8 x float> %37, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.fo = fmul fast <8 x float> %32, %38
  %i.fp = getelementptr inbounds nuw i8, ptr %.1152205.us, i64 8
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !45
  %i.fr = fmul fast float %i.fq, %23
  %op.rdx468 = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.fr, <8 x float> %i.fo)
  %op.rdx469 = fadd fast float %op.rdx468, %i.cg
  store float %op.rdx467, ptr %.1166200.us, align 4, !tbaa !45
  store float %op.rdx469, ptr %.1164201.us, align 4, !tbaa !45
  %i.fs = getelementptr inbounds nuw i8, ptr %.1166200.us, i64 4 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.1164201.us, i64 4 ; 2 uses
  %i.fu = add nsw i32 %.0149206.us, -1
  %i.fv = icmp sgt i32 %.0149206.us, 1
  br i1 %i.fv, label %scalar.ph411, label %._crit_edge.us, !llvm.loop !295

._crit_edge.us:                                   ; preds = %scalar.ph411, %middle.block456
  %.lcssa303 = phi ptr [ %i.cy, %middle.block456 ], [ %10, %scalar.ph411 ]
  %.lcssa302 = phi ptr [ %i.cx, %middle.block456 ], [ %19, %scalar.ph411 ]
  %.lcssa301 = phi ptr [ %i.cw, %middle.block456 ], [ %i.fh, %scalar.ph411 ]
  %.lcssa300 = phi ptr [ %i.cv, %middle.block456 ], [ %i.fm, %scalar.ph411 ]
  %.lcssa299 = phi ptr [ %i.da, %middle.block456 ], [ %i.fs, %scalar.ph411 ]
  %.lcssa = phi ptr [ %i.cz, %middle.block456 ], [ %i.ft, %scalar.ph411 ]
  %i.fw = getelementptr inbounds [4 x i8], ptr %.lcssa303, i64 %i.ai ; 2 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %.lcssa302, i64 %i.ai ; 2 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %.lcssa301, i64 %i.ai ; 2 uses
  %i.fz = getelementptr inbounds [4 x i8], ptr %.lcssa300, i64 %i.ai
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.lcssa299, i64 %i.bb ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.bb
  %i.gc = add nuw nsw i32 %.0150218.us, 2         ; 2 uses
  %i.gd = or disjoint i32 %i.gc, 1
  %i.ge = icmp slt i32 %i.gd, %i.af
  br i1 %i.ge, label %.lr.ph.us, label %.preheader, !llvm.loop !296

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph219.split.preheader, %_ZN4ncnn3MatD2Ev.exit171
  %.0165.lcssa = phi ptr [ %i.cd, %_ZN4ncnn3MatD2Ev.exit171 ], [ %scevgep277, %.lr.ph219.split.preheader ], [ %i.ga, %._crit_edge.us ]
  %.0159.lcssa = phi ptr [ %i.ci, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv, %.lr.ph219.split.preheader ], [ %i.fw, %._crit_edge.us ]
  %.0155.lcssa = phi ptr [ %i.cj, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv269, %.lr.ph219.split.preheader ], [ %i.fx, %._crit_edge.us ]
  %.0153.lcssa = phi ptr [ %i.ck, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv272, %.lr.ph219.split.preheader ], [ %i.fy, %._crit_edge.us ]
  %.0150.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit171 ], [ %i.ay, %.lr.ph219.split.preheader ], [ %i.ay, %._crit_edge.us ] ; 2 uses
  %i.gf = icmp slt i32 %.0150.lcssa, %i.af
  br i1 %i.gf, label %.lr.ph244, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph244:                                        ; preds = %.preheader
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ch, i64 32 ; 2 uses
  br i1 %i.bd, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph244
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cg, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.1243 = phi i32 [ %i.jd, %._crit_edge ], [ %.0150.lcssa, %.lr.ph.preheader ]
  %.2242 = phi ptr [ %i.jc, %._crit_edge ], [ %.0153.lcssa, %.lr.ph.preheader ] ; 6 uses
  %.2157241 = phi ptr [ %i.jb, %._crit_edge ], [ %.0155.lcssa, %.lr.ph.preheader ] ; 6 uses
  %.2161240 = phi ptr [ %i.ja, %._crit_edge ], [ %.0159.lcssa, %.lr.ph.preheader ] ; 6 uses
  %.2167239 = phi ptr [ %.lcssa308, %._crit_edge ], [ %.0165.lcssa, %.lr.ph.preheader ] ; 9 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.gm = getelementptr i8, ptr %.2167239, i64 %i.bg
  %scevgep309 = getelementptr i8, ptr %i.gm, i64 4 ; 4 uses
  %scevgep310 = getelementptr i8, ptr %.2242, i64 %i.bh
  %scevgep311 = getelementptr i8, ptr %.2157241, i64 %i.bh
  %scevgep312 = getelementptr i8, ptr %.2161240, i64 %i.bh
  %bound0 = icmp ult ptr %.2167239, %scevgep310
  %bound1 = icmp ult ptr %.2242, %scevgep309
  %found.conflict = and i1 %bound0, %bound1
  %bound0314 = icmp ult ptr %.2167239, %scevgep311
  %bound1315 = icmp ult ptr %.2157241, %scevgep309
  %found.conflict316 = and i1 %bound0314, %bound1315
  %conflict.rdx = or i1 %found.conflict, %found.conflict316
  %bound0317 = icmp ult ptr %.2167239, %scevgep312
  %bound1318 = icmp ult ptr %.2161240, %scevgep309
  %found.conflict319 = and i1 %bound0317, %bound1318
  %conflict.rdx320 = or i1 %conflict.rdx, %found.conflict319
  %bound0321 = icmp ult ptr %.2167239, %scevgep313
  %bound1322 = icmp ult ptr %i.ch, %scevgep309
  %found.conflict323 = and i1 %bound0321, %bound1322
  %conflict.rdx324 = or i1 %conflict.rdx320, %found.conflict323
  br i1 %conflict.rdx324, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gn = getelementptr i8, ptr %.2242, i64 %i.ca ; 2 uses
  %i.go = getelementptr i8, ptr %.2157241, i64 %i.ca ; 2 uses
  %i.gp = getelementptr i8, ptr %.2161240, i64 %i.ca ; 2 uses
  %i.gq = getelementptr i8, ptr %.2167239, i64 %i.ca ; 2 uses
  %i.gr = load float, ptr %i.ch, align 4, !tbaa !45, !alias.scope !297
  %broadcast.splatinsert328 = insertelement <8 x float> poison, float %i.gr, i64 0
  %broadcast.splat329 = shufflevector <8 x float> %broadcast.splatinsert328, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gs = load float, ptr %i.gg, align 4, !tbaa !45, !alias.scope !297
  %broadcast.splatinsert331 = insertelement <8 x float> poison, float %i.gs, i64 0
  %broadcast.splat332 = shufflevector <8 x float> %broadcast.splatinsert331, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gt = load float, ptr %i.gh, align 4, !tbaa !45, !alias.scope !297
  %broadcast.splatinsert334 = insertelement <8 x float> poison, float %i.gt, i64 0
  %broadcast.splat335 = shufflevector <8 x float> %broadcast.splatinsert334, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gu = load float, ptr %i.cl, align 4, !tbaa !45, !alias.scope !297
  %broadcast.splatinsert337 = insertelement <8 x float> poison, float %i.gu, i64 0
  %broadcast.splat338 = shufflevector <8 x float> %broadcast.splatinsert337, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gv = load float, ptr %i.gi, align 4, !tbaa !45, !alias.scope !297
  %broadcast.splatinsert340 = insertelement <8 x float> poison, float %i.gv, i64 0
  %broadcast.splat341 = shufflevector <8 x float> %broadcast.splatinsert340, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gw = load float, ptr %i.gj, align 4, !tbaa !45, !alias.scope !297
  %broadcast.splatinsert343 = insertelement <8 x float> poison, float %i.gw, i64 0
  %broadcast.splat344 = shufflevector <8 x float> %broadcast.splatinsert343, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gx = load float, ptr %i.cm, align 4, !tbaa !45, !alias.scope !297
  %broadcast.splatinsert346 = insertelement <8 x float> poison, float %i.gx, i64 0
  %broadcast.splat347 = shufflevector <8 x float> %broadcast.splatinsert346, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gy = load float, ptr %i.gk, align 4, !tbaa !45, !alias.scope !297
  %broadcast.splatinsert349 = insertelement <8 x float> poison, float %i.gy, i64 0
  %broadcast.splat350 = shufflevector <8 x float> %broadcast.splatinsert349, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gz = load float, ptr %i.gl, align 4, !tbaa !45, !alias.scope !297
  %broadcast.splatinsert352 = insertelement <8 x float> poison, float %i.gz, i64 0
  %broadcast.splat353 = shufflevector <8 x float> %broadcast.splatinsert352, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ha = shl i64 %index, 2                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.2242, i64 %i.ha ; 3 uses
  %next.gep325 = getelementptr i8, ptr %.2157241, i64 %i.ha ; 3 uses
  %next.gep326 = getelementptr i8, ptr %.2161240, i64 %i.ha ; 3 uses
  %next.gep327 = getelementptr i8, ptr %.2167239, i64 %i.ha
  %wide.load = load <8 x float>, ptr %next.gep326, align 4, !tbaa !45, !alias.scope !300
  %i.hb = fmul fast <8 x float> %broadcast.splat329, %wide.load
  %i.hc = fadd fast <8 x float> %broadcast.splat, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %next.gep326, i64 4
  %wide.load330 = load <8 x float>, ptr %i.hd, align 4, !tbaa !45, !alias.scope !300
  %i.he = fmul fast <8 x float> %broadcast.splat332, %wide.load330
  %i.hf = fadd fast <8 x float> %i.hc, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %next.gep326, i64 8
  %wide.load333 = load <8 x float>, ptr %i.hg, align 4, !tbaa !45, !alias.scope !300
  %i.hh = fmul fast <8 x float> %broadcast.splat335, %wide.load333
  %i.hi = fadd fast <8 x float> %i.hf, %i.hh
  %wide.load336 = load <8 x float>, ptr %next.gep325, align 4, !tbaa !45, !alias.scope !302
  %i.hj = fmul fast <8 x float> %broadcast.splat338, %wide.load336
  %i.hk = fadd fast <8 x float> %i.hi, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %next.gep325, i64 4
  %wide.load339 = load <8 x float>, ptr %i.hl, align 4, !tbaa !45, !alias.scope !302
  %i.hm = fmul fast <8 x float> %broadcast.splat341, %wide.load339
  %i.hn = fadd fast <8 x float> %i.hk, %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %next.gep325, i64 8
  %wide.load342 = load <8 x float>, ptr %i.ho, align 4, !tbaa !45, !alias.scope !302
  %i.hp = fmul fast <8 x float> %broadcast.splat344, %wide.load342
  %i.hq = fadd fast <8 x float> %i.hn, %i.hp
  %wide.load345 = load <8 x float>, ptr %next.gep, align 4, !tbaa !45, !alias.scope !304
  %i.hr = fmul fast <8 x float> %broadcast.splat347, %wide.load345
  %i.hs = fadd fast <8 x float> %i.hq, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %wide.load348 = load <8 x float>, ptr %i.ht, align 4, !tbaa !45, !alias.scope !304
  %i.hu = fmul fast <8 x float> %broadcast.splat350, %wide.load348
  %i.hv = fadd fast <8 x float> %i.hs, %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %wide.load351 = load <8 x float>, ptr %i.hw, align 4, !tbaa !45, !alias.scope !304
  %i.hx = fmul fast <8 x float> %broadcast.splat353, %wide.load351
  %i.hy = fadd fast <8 x float> %i.hx, %i.hv
  store <8 x float> %i.hy, ptr %next.gep327, align 4, !tbaa !45, !alias.scope !306, !noalias !308
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hz = icmp eq i64 %index.next, %n.vec
  br i1 %i.hz, label %middle.block, label %vector.body, !llvm.loop !309

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.gn, i64 -4
  %ind.escape354 = getelementptr i8, ptr %i.go, i64 -4
  %ind.escape355 = getelementptr i8, ptr %i.gp, i64 -4
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.0148235.ph = phi i32 [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph ], [ %i.bz, %middle.block ]
  %.3234.ph = phi ptr [ %.2242, %vector.memcheck ], [ %.2242, %.lr.ph ], [ %i.gn, %middle.block ]
  %.3158233.ph = phi ptr [ %.2157241, %vector.memcheck ], [ %.2157241, %.lr.ph ], [ %i.go, %middle.block ]
  %.3162232.ph = phi ptr [ %.2161240, %vector.memcheck ], [ %.2161240, %.lr.ph ], [ %i.gp, %middle.block ]
  %.3168231.ph = phi ptr [ %.2167239, %vector.memcheck ], [ %.2167239, %.lr.ph ], [ %i.gq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0148235 = phi i32 [ %i.iy, %scalar.ph ], [ %.0148235.ph, %scalar.ph.preheader ] ; 2 uses
  %.3234 = phi ptr [ %i.if, %scalar.ph ], [ %.3234.ph, %scalar.ph.preheader ] ; 4 uses
  %.3158233 = phi ptr [ %i.ie, %scalar.ph ], [ %.3158233.ph, %scalar.ph.preheader ] ; 3 uses
  %.3162232 = phi ptr [ %i.ia, %scalar.ph ], [ %.3162232.ph, %scalar.ph.preheader ] ; 4 uses
  %.3168231 = phi ptr [ %i.ix, %scalar.ph ], [ %.3168231.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.3162232, i64 4
  %i.ib = getelementptr inbounds nuw i8, ptr %.3162232, i64 8
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !45
  %i.id = load float, ptr %.3158233, align 4, !tbaa !45
  %i.ie = getelementptr inbounds nuw i8, ptr %.3158233, i64 4 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.3234, i64 4
  %i.ig = load <2 x float>, ptr %.3162232, align 4, !tbaa !45
  %i.ih = load <2 x float>, ptr %i.ie, align 4, !tbaa !45
  %i.ii = load <2 x float>, ptr %.3234, align 4, !tbaa !45
  %i.ij = load <8 x float>, ptr %i.ch, align 4, !tbaa !45
  %i.ik = insertelement <8 x float> poison, float %i.ic, i64 2
  %i.il = insertelement <8 x float> %i.ik, float %i.id, i64 3
  %i.im = shufflevector <2 x float> %i.ig, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.in = shufflevector <8 x float> %i.im, <8 x float> %i.il, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.io = shufflevector <2 x float> %i.ih, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ip = shufflevector <8 x float> %i.in, <8 x float> %i.io, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.iq = shufflevector <2 x float> %i.ii, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ir = shufflevector <8 x float> %i.ip, <8 x float> %i.iq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.is = fmul fast <8 x float> %i.ij, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %.3234, i64 8
  %i.iu = load float, ptr %i.it, align 4, !tbaa !45
  %i.iv = load float, ptr %i.gl, align 4, !tbaa !45
  %i.iw = fmul fast float %i.iv, %i.iu
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.iw, <8 x float> %i.is)
  %op.rdx465 = fadd fast float %op.rdx, %i.cg
  store float %op.rdx465, ptr %.3168231, align 4, !tbaa !45
  %i.ix = getelementptr inbounds nuw i8, ptr %.3168231, i64 4 ; 2 uses
  %i.iy = add nsw i32 %.0148235, -1
  %i.iz = icmp sgt i32 %.0148235, 1
  br i1 %i.iz, label %scalar.ph, label %._crit_edge, !llvm.loop !310

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.3234.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.3234, %scalar.ph ]
  %.3158233.lcssa = phi ptr [ %ind.escape354, %middle.block ], [ %.3158233, %scalar.ph ]
  %.3162232.lcssa = phi ptr [ %ind.escape355, %middle.block ], [ %.3162232, %scalar.ph ]
  %.lcssa308 = phi ptr [ %i.gq, %middle.block ], [ %i.ix, %scalar.ph ]
  %i.ja = getelementptr inbounds nuw i8, ptr %.3162232.lcssa, i64 12
  %i.jb = getelementptr inbounds nuw i8, ptr %.3158233.lcssa, i64 12
  %i.jc = getelementptr inbounds nuw i8, ptr %.3234.lcssa, i64 12
  %i.jd = add nuw nsw i32 %.1243, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.jd, %i.af
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
  %i.r = load ptr, ptr %5, align 8, !tbaa !168    ; 2 uses
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
  %i.ao = mul nsw i64 %i.ah, 36
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 36
  %i.ar = zext nneg i32 %i.ad to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ad, 5
  %i.as = and i64 %i.ar, 3                        ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  %i.au = select i1 %i.at, i64 4, i64 %i.as
  %n.vec = sub nsw i64 %i.ar, %i.au               ; 4 uses
  %i.av = trunc i64 %n.vec to i32
  %i.aw = sub i32 %i.ad, %i.av
  %i.ax = shl nsw i64 %n.vec, 3                   ; 3 uses
  %i.ay = shl nsw i64 %n.vec, 2
  br label %_ZN4ncnn3Mat7channelEi.exit.us.us

_ZN4ncnn3Mat7channelEi.exit.us.us:                ; preds = %_ZN4ncnn3Mat7channelEi.exit.us.us.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us
  %indvar = phi i64 [ 0, %_ZN4ncnn3Mat7channelEi.exit.us.us.preheader ], [ %indvar.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us ] ; 2 uses
  %indvars.iv = phi i64 [ %i.ah, %_ZN4ncnn3Mat7channelEi.exit.us.us.preheader ], [ %indvars.iv.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us ] ; 5 uses
  %i.az = mul nuw nsw i64 %indvar, 36
  %scevgep152 = getelementptr i8, ptr %i.aq, i64 %i.az
  %.reass.us.us = mul i64 %factor.op.mul, %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us.us
  br i1 %.not81, label %_ZN4ncnn3MatD2Ev.exit82.us.us, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit.us.us
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit82.us.us

_ZN4ncnn3MatD2Ev.exit82.us.us:                    ; preds = %bb.c, %_ZN4ncnn3Mat7channelEi.exit.us.us
  %i.bd = phi fast float [ %i.bc, %bb.c ], [ 0.000000e+00, %_ZN4ncnn3Mat7channelEi.exit.us.us ] ; 2 uses
  %.idx = mul nsw i64 %indvars.iv, 36
  %i.be = getelementptr inbounds i8, ptr %i.r, i64 %.idx ; 11 uses
  %.reass129.us.us = mul i64 %factor.op.mul128, %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass129.us.us ; 3 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.y
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.aa
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bd, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit82.us.us, %._crit_edge.us.us
  %.072123.us.us = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit82.us.us ], [ %i.ee, %._crit_edge.us.us ]
  %.073122.us.us = phi ptr [ %i.bh, %_ZN4ncnn3MatD2Ev.exit82.us.us ], [ %i.ed, %._crit_edge.us.us ] ; 6 uses
  %.074121.us.us = phi ptr [ %i.bg, %_ZN4ncnn3MatD2Ev.exit82.us.us ], [ %i.ec, %._crit_edge.us.us ] ; 6 uses
  %.076120.us.us = phi ptr [ %i.bf, %_ZN4ncnn3MatD2Ev.exit82.us.us ], [ %i.eb, %._crit_edge.us.us ] ; 6 uses
  %.078119.us.us = phi ptr [ %i.ba, %_ZN4ncnn3MatD2Ev.exit82.us.us ], [ %i.dy, %._crit_edge.us.us ] ; 9 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us.us
  %i.bq = getelementptr i8, ptr %.078119.us.us, i64 %i.al
  %scevgep = getelementptr i8, ptr %i.bq, i64 4   ; 4 uses
  %scevgep149 = getelementptr i8, ptr %.073122.us.us, i64 %i.an
  %scevgep150 = getelementptr i8, ptr %.074121.us.us, i64 %i.an
  %scevgep151 = getelementptr i8, ptr %.076120.us.us, i64 %i.an
  %bound0 = icmp ult ptr %.078119.us.us, %scevgep149
  %bound1 = icmp ult ptr %.073122.us.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0153 = icmp ult ptr %.078119.us.us, %scevgep150
  %bound1154 = icmp ult ptr %.074121.us.us, %scevgep
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx = or i1 %found.conflict, %found.conflict155
  %bound0156 = icmp ult ptr %.078119.us.us, %scevgep151
  %bound1157 = icmp ult ptr %.076120.us.us, %scevgep
  %found.conflict158 = and i1 %bound0156, %bound1157
  %conflict.rdx159 = or i1 %conflict.rdx, %found.conflict158
  %bound0160 = icmp ult ptr %.078119.us.us, %scevgep152
  %bound1161 = icmp ult ptr %i.be, %scevgep
  %found.conflict162 = and i1 %bound0160, %bound1161
  %conflict.rdx163 = or i1 %conflict.rdx159, %found.conflict162
  br i1 %conflict.rdx163, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.br = getelementptr i8, ptr %.073122.us.us, i64 %i.ax
  %i.bs = getelementptr i8, ptr %.074121.us.us, i64 %i.ax
  %i.bt = getelementptr i8, ptr %.076120.us.us, i64 %i.ax
  %i.bu = getelementptr i8, ptr %.078119.us.us, i64 %i.ay
  %i.bv = load float, ptr %i.be, align 4, !tbaa !45, !alias.scope !318
  %broadcast.splatinsert167 = insertelement <4 x float> poison, float %i.bv, i64 0
  %broadcast.splat168 = shufflevector <4 x float> %broadcast.splatinsert167, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bw = load float, ptr %i.bk, align 4, !tbaa !45, !alias.scope !318
  %broadcast.splatinsert172 = insertelement <4 x float> poison, float %i.bw, i64 0
  %broadcast.splat173 = shufflevector <4 x float> %broadcast.splatinsert172, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = load float, ptr %i.bl, align 4, !tbaa !45, !alias.scope !318
  %broadcast.splatinsert174 = insertelement <4 x float> poison, float %i.bx, i64 0
  %broadcast.splat175 = shufflevector <4 x float> %broadcast.splatinsert174, <4 x float> poison, <4 x i32> zeroinitializer
  %i.by = load float, ptr %i.bi, align 4, !tbaa !45, !alias.scope !318
  %broadcast.splatinsert178 = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat179 = shufflevector <4 x float> %broadcast.splatinsert178, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bz = load float, ptr %i.bm, align 4, !tbaa !45, !alias.scope !318
  %broadcast.splatinsert183 = insertelement <4 x float> poison, float %i.bz, i64 0
  %broadcast.splat184 = shufflevector <4 x float> %broadcast.splatinsert183, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ca = load float, ptr %i.bn, align 4, !tbaa !45, !alias.scope !318
  %broadcast.splatinsert185 = insertelement <4 x float> poison, float %i.ca, i64 0
  %broadcast.splat186 = shufflevector <4 x float> %broadcast.splatinsert185, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cb = load float, ptr %i.bj, align 4, !tbaa !45, !alias.scope !318
  %broadcast.splatinsert189 = insertelement <4 x float> poison, float %i.cb, i64 0
  %broadcast.splat190 = shufflevector <4 x float> %broadcast.splatinsert189, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cc = load float, ptr %i.bo, align 4, !tbaa !45, !alias.scope !318
  %broadcast.splatinsert194 = insertelement <4 x float> poison, float %i.cc, i64 0
  %broadcast.splat195 = shufflevector <4 x float> %broadcast.splatinsert194, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cd = load float, ptr %i.bp, align 4, !tbaa !45, !alias.scope !318
  %broadcast.splatinsert196 = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat197 = shufflevector <4 x float> %broadcast.splatinsert196, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ce = shl i64 %index, 3                       ; 3 uses
  %next.gep = getelementptr i8, ptr %.073122.us.us, i64 %i.ce ; 2 uses
  %next.gep164 = getelementptr i8, ptr %.074121.us.us, i64 %i.ce ; 2 uses
  %next.gep165 = getelementptr i8, ptr %.076120.us.us, i64 %i.ce ; 2 uses
  %i.cf = shl i64 %index, 2
  %next.gep166 = getelementptr i8, ptr %.078119.us.us, i64 %i.cf
  %wide.vec = load <8 x float>, ptr %next.gep165, align 4, !tbaa !45, !alias.scope !321
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cg = fmul fast <4 x float> %broadcast.splat168, %strided.vec
  %i.ch = fadd fast <4 x float> %broadcast.splat, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %next.gep165, i64 4
  %wide.vec169 = load <8 x float>, ptr %i.ci, align 4, !tbaa !45, !alias.scope !321 ; 2 uses
  %strided.vec170 = shufflevector <8 x float> %wide.vec169, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec171 = shufflevector <8 x float> %wide.vec169, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cj = fmul fast <4 x float> %broadcast.splat173, %strided.vec170
  %i.ck = fadd fast <4 x float> %i.ch, %i.cj
  %i.cl = fmul fast <4 x float> %broadcast.splat175, %strided.vec171
  %i.cm = fadd fast <4 x float> %i.ck, %i.cl
  %wide.vec176 = load <8 x float>, ptr %next.gep164, align 4, !tbaa !45, !alias.scope !323
  %strided.vec177 = shufflevector <8 x float> %wide.vec176, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cn = fmul fast <4 x float> %broadcast.splat179, %strided.vec177
  %i.co = fadd fast <4 x float> %i.cm, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %next.gep164, i64 4
  %wide.vec180 = load <8 x float>, ptr %i.cp, align 4, !tbaa !45, !alias.scope !323 ; 2 uses
  %strided.vec181 = shufflevector <8 x float> %wide.vec180, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec182 = shufflevector <8 x float> %wide.vec180, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cq = fmul fast <4 x float> %broadcast.splat184, %strided.vec181
  %i.cr = fadd fast <4 x float> %i.co, %i.cq
  %i.cs = fmul fast <4 x float> %broadcast.splat186, %strided.vec182
  %i.ct = fadd fast <4 x float> %i.cr, %i.cs
  %wide.vec187 = load <8 x float>, ptr %next.gep, align 4, !tbaa !45, !alias.scope !325
  %strided.vec188 = shufflevector <8 x float> %wide.vec187, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cu = fmul fast <4 x float> %broadcast.splat190, %strided.vec188
  %i.cv = fadd fast <4 x float> %i.ct, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %wide.vec191 = load <8 x float>, ptr %i.cw, align 4, !tbaa !45, !alias.scope !325 ; 2 uses
  %strided.vec192 = shufflevector <8 x float> %wide.vec191, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec193 = shufflevector <8 x float> %wide.vec191, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cx = fmul fast <4 x float> %broadcast.splat195, %strided.vec192
  %i.cy = fadd fast <4 x float> %i.cv, %i.cx
  %i.cz = fmul fast <4 x float> %broadcast.splat197, %strided.vec193
  %i.da = fadd fast <4 x float> %i.cz, %i.cy
  store <4 x float> %i.da, ptr %next.gep166, align 4, !tbaa !45, !alias.scope !327, !noalias !329
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %scalar.ph.preheader, label %vector.body, !llvm.loop !330

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.us.us
  %.071115.us.us.ph = phi i32 [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.us.us ], [ %i.aw, %vector.body ]
  %.1114.us.us.ph = phi ptr [ %.073122.us.us, %vector.memcheck ], [ %.073122.us.us, %.lr.ph.us.us ], [ %i.br, %vector.body ]
  %.175113.us.us.ph = phi ptr [ %.074121.us.us, %vector.memcheck ], [ %.074121.us.us, %.lr.ph.us.us ], [ %i.bs, %vector.body ]
  %.177112.us.us.ph = phi ptr [ %.076120.us.us, %vector.memcheck ], [ %.076120.us.us, %.lr.ph.us.us ], [ %i.bt, %vector.body ]
  %.179111.us.us.ph = phi ptr [ %.078119.us.us, %vector.memcheck ], [ %.078119.us.us, %.lr.ph.us.us ], [ %i.bu, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.071115.us.us = phi i32 [ %i.dz, %scalar.ph ], [ %.071115.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.1114.us.us = phi ptr [ %i.du, %scalar.ph ], [ %.1114.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.175113.us.us = phi ptr [ %i.dg, %scalar.ph ], [ %.175113.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.177112.us.us = phi ptr [ %i.dc, %scalar.ph ], [ %.177112.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.179111.us.us = phi ptr [ %i.dy, %scalar.ph ], [ %.179111.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.177112.us.us, i64 8 ; 3 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !45
  %i.de = load float, ptr %.175113.us.us, align 4, !tbaa !45
  %i.df = getelementptr inbounds nuw i8, ptr %.175113.us.us, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.175113.us.us, i64 8 ; 2 uses
  %i.dh = load <2 x float>, ptr %.177112.us.us, align 4, !tbaa !45
  %i.di = load <2 x float>, ptr %i.df, align 4, !tbaa !45
  %i.dj = load <2 x float>, ptr %.1114.us.us, align 4, !tbaa !45
  %i.dk = load <8 x float>, ptr %i.be, align 4, !tbaa !45
  %i.dl = insertelement <8 x float> poison, float %i.dd, i64 2
  %i.dm = insertelement <8 x float> %i.dl, float %i.de, i64 3
  %i.dn = shufflevector <2 x float> %i.dh, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.do = shufflevector <8 x float> %i.dn, <8 x float> %i.dm, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dp = shufflevector <2 x float> %i.di, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dq = shufflevector <8 x float> %i.do, <8 x float> %i.dp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.dr = shufflevector <2 x float> %i.dj, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ds = shufflevector <8 x float> %i.dq, <8 x float> %i.dr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.dt = fmul fast <8 x float> %i.dk, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %.1114.us.us, i64 8 ; 3 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !45
  %i.dw = load float, ptr %i.bp, align 4, !tbaa !45
  %i.dx = fmul fast float %i.dw, %i.dv
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.dx, <8 x float> %i.dt)
  %op.rdx202 = fadd fast float %op.rdx, %i.bd
  store float %op.rdx202, ptr %.179111.us.us, align 4, !tbaa !45
  %i.dy = getelementptr inbounds nuw i8, ptr %.179111.us.us, i64 4 ; 2 uses
  %i.dz = add nsw i32 %.071115.us.us, -1
  %i.ea = icmp sgt i32 %.071115.us.us, 1
  br i1 %i.ea, label %scalar.ph, label %._crit_edge.us.us, !llvm.loop !331

._crit_edge.us.us:                                ; preds = %scalar.ph
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.ag
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.ag
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.ag
  %i.ee = add nuw nsw i32 %.072123.us.us, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.ee, %i.ab
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
