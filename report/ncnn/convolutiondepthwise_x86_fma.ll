Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolutiondepthwise_x86_fma?download=true
inline.NumInlined: 225
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4ncnnL21convdw5x5s2_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined:bb.a
  store <4 x float> %i.fw, ptr %.1107222, align 16, !tbaa !87
  %i.fx = getelementptr inbounds nuw i8, ptr %.1107222, i64 16 ; 2 uses
  %i.fy = add nuw nsw i32 %.0228, 1               ; 2 uses
  %i.fz = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.ga = icmp slt i32 %i.fy, %i.fz
  br i1 %i.ga, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !272

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %7, align 4, !tbaa !69
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
  %i.gd = load i32, ptr %9, align 4, !tbaa !69
  %i.ge = sext i32 %i.gd to i64                   ; 5 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %.1105.lcssa, i64 %i.ge
  %i.gg = getelementptr inbounds [4 x i8], ptr %.1103.lcssa, i64 %i.ge
  %i.gh = getelementptr inbounds [4 x i8], ptr %.1101.lcssa, i64 %i.ge
  %i.gi = getelementptr inbounds [4 x i8], ptr %.199.lcssa, i64 %i.ge
  %i.gj = getelementptr inbounds [4 x i8], ptr %.1.lcssa, i64 %i.ge
  %i.gk = add nuw nsw i32 %.096240, 1             ; 2 uses
  %i.gl = icmp slt i32 %i.gk, %i.gb
  br i1 %i.gl, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !273

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
  %i.e = load i32, ptr %2, align 4, !tbaa !69     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.h = load i32, ptr %0, align 4, !tbaa !69     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !69
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !69
  %i.k = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %.not245 = icmp sgt i32 %i.k, %i.j
  br i1 %.not245, label %._crit_edge247, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !21, !noalias !300 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22, !noalias !300
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !67, !noalias !300
  %factor.op.mul = mul i64 %i.n, %i.p             ; 3 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !97     ; 2 uses
  %.not170 = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %5, align 8, !tbaa !97     ; 3 uses
  %i.s = load i32, ptr %6, align 4, !tbaa !69     ; 16 uses
  %i.t = load ptr, ptr %7, align 8, !tbaa !21, !noalias !301 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22, !noalias !301
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !67, !noalias !301
  %factor.op.mul248 = mul i64 %i.v, %i.x          ; 5 uses
  %i.y = zext nneg i32 %i.s to i64
  %i.z = load i32, ptr %8, align 4, !tbaa !69     ; 4 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = shl i32 %i.z, 1
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = mul nsw i32 %i.z, 3
  %i.ae = sext i32 %i.ad to i64
  %i.af = load i32, ptr %9, align 4, !tbaa !69    ; 5 uses
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
  %i.ay = add nuw i32 %i.ax, 2                    ; 2 uses
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
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 20 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
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
  %.0150218.us = phi i32 [ %i.fx, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.0151217.us = phi ptr [ %i.fu, %._crit_edge.us ], [ %i.cu, %.lr.ph.us.preheader ] ; 7 uses
  %.0153216.us = phi ptr [ %i.ft, %._crit_edge.us ], [ %i.ck, %.lr.ph.us.preheader ] ; 7 uses
  %.0155215.us = phi ptr [ %i.fs, %._crit_edge.us ], [ %i.cj, %.lr.ph.us.preheader ] ; 7 uses
  %.0159214.us = phi ptr [ %i.fr, %._crit_edge.us ], [ %i.ci, %.lr.ph.us.preheader ] ; 7 uses
  %.0163213.us = phi ptr [ %i.fw, %._crit_edge.us ], [ %i.ct, %.lr.ph.us.preheader ] ; 11 uses
  %.0165212.us = phi ptr [ %i.fv, %._crit_edge.us ], [ %i.cd, %.lr.ph.us.preheader ] ; 11 uses
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
  %i.db = load float, ptr %i.ch, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert426 = insertelement <8 x float> poison, float %i.db, i64 0
  %broadcast.splat427 = shufflevector <8 x float> %broadcast.splatinsert426, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dc = load float, ptr %i.cn, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert429 = insertelement <8 x float> poison, float %i.dc, i64 0
  %broadcast.splat430 = shufflevector <8 x float> %broadcast.splatinsert429, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dd = load float, ptr %i.co, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert432 = insertelement <8 x float> poison, float %i.dd, i64 0
  %broadcast.splat433 = shufflevector <8 x float> %broadcast.splatinsert432, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.de = load float, ptr %i.cl, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert435 = insertelement <8 x float> poison, float %i.de, i64 0
  %broadcast.splat436 = shufflevector <8 x float> %broadcast.splatinsert435, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.df = load float, ptr %i.cp, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert438 = insertelement <8 x float> poison, float %i.df, i64 0
  %broadcast.splat439 = shufflevector <8 x float> %broadcast.splatinsert438, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dg = load float, ptr %i.cq, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert441 = insertelement <8 x float> poison, float %i.dg, i64 0
  %broadcast.splat442 = shufflevector <8 x float> %broadcast.splatinsert441, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dh = load float, ptr %i.cm, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert444 = insertelement <8 x float> poison, float %i.dh, i64 0
  %broadcast.splat445 = shufflevector <8 x float> %broadcast.splatinsert444, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.di = load float, ptr %i.cr, align 4, !tbaa !45, !alias.scope !302
  %broadcast.splatinsert447 = insertelement <8 x float> poison, float %i.di, i64 0
  %broadcast.splat448 = shufflevector <8 x float> %broadcast.splatinsert447, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.dj = load float, ptr %i.cs, align 4, !tbaa !45, !alias.scope !302
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
  %wide.load425 = load <8 x float>, ptr %next.gep422, align 4, !tbaa !45, !alias.scope !303
  %i.dl = fmul fast <8 x float> %broadcast.splat427, %wide.load425
  %i.dm = fadd fast <8 x float> %broadcast.splat416, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %next.gep422, i64 4
  %wide.load428 = load <8 x float>, ptr %i.dn, align 4, !tbaa !45, !alias.scope !303
  %i.do = fmul fast <8 x float> %broadcast.splat430, %wide.load428
  %i.dp = fadd fast <8 x float> %i.do, %i.dm
  %i.dq = getelementptr inbounds nuw i8, ptr %next.gep422, i64 8
  %wide.load431 = load <8 x float>, ptr %i.dq, align 4, !tbaa !45, !alias.scope !303
  %i.dr = fmul fast <8 x float> %broadcast.splat433, %wide.load431
  %i.ds = fadd fast <8 x float> %i.dp, %i.dr
  %wide.load434 = load <8 x float>, ptr %next.gep421, align 4, !tbaa !45, !alias.scope !304 ; 2 uses
  %i.dt = fmul fast <8 x float> %broadcast.splat436, %wide.load434
  %i.du = fadd fast <8 x float> %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %next.gep421, i64 4
  %wide.load437 = load <8 x float>, ptr %i.dv, align 4, !tbaa !45, !alias.scope !304 ; 2 uses
  %i.dw = fmul fast <8 x float> %broadcast.splat439, %wide.load437
  %i.dx = fadd fast <8 x float> %i.du, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %next.gep421, i64 8
  %wide.load440 = load <8 x float>, ptr %i.dy, align 4, !tbaa !45, !alias.scope !304 ; 2 uses
  %i.dz = fmul fast <8 x float> %broadcast.splat442, %wide.load440
  %i.ea = fadd fast <8 x float> %i.dx, %i.dz
  %wide.load443 = load <8 x float>, ptr %next.gep420, align 4, !tbaa !45, !alias.scope !305 ; 2 uses
  %i.eb = fmul fast <8 x float> %broadcast.splat445, %wide.load443
  %i.ec = fadd fast <8 x float> %i.ea, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %next.gep420, i64 4
  %wide.load446 = load <8 x float>, ptr %i.ed, align 4, !tbaa !45, !alias.scope !305 ; 2 uses
  %i.ee = fmul fast <8 x float> %broadcast.splat448, %wide.load446
  %i.ef = fadd fast <8 x float> %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %next.gep420, i64 8
  %wide.load449 = load <8 x float>, ptr %i.eg, align 4, !tbaa !45, !alias.scope !305 ; 2 uses
  %i.eh = fmul fast <8 x float> %broadcast.splat451, %wide.load449
  %i.ei = fadd fast <8 x float> %i.ef, %i.eh
  %i.ej = fmul fast <8 x float> %wide.load434, %broadcast.splat427
  %i.ek = fadd fast <8 x float> %broadcast.splat416, %i.ej
  %i.el = fmul fast <8 x float> %wide.load437, %broadcast.splat430
  %i.em = fadd fast <8 x float> %i.el, %i.ek
  %i.en = fmul fast <8 x float> %wide.load440, %broadcast.splat433
  %i.eo = fadd fast <8 x float> %i.em, %i.en
  %i.ep = fmul fast <8 x float> %wide.load443, %broadcast.splat436
  %i.eq = fadd fast <8 x float> %i.eo, %i.ep
  %i.er = fmul fast <8 x float> %wide.load446, %broadcast.splat439
  %i.es = fadd fast <8 x float> %i.eq, %i.er
  %i.et = fmul fast <8 x float> %wide.load449, %broadcast.splat442
  %i.eu = fadd fast <8 x float> %i.es, %i.et
  %wide.load452 = load <8 x float>, ptr %next.gep419, align 4, !tbaa !45, !alias.scope !306
  %i.ev = fmul fast <8 x float> %wide.load452, %broadcast.splat445
  %i.ew = fadd fast <8 x float> %i.eu, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %next.gep419, i64 4
  %wide.load453 = load <8 x float>, ptr %i.ex, align 4, !tbaa !45, !alias.scope !306
  %i.ey = fmul fast <8 x float> %wide.load453, %broadcast.splat448
  %i.ez = fadd fast <8 x float> %i.ew, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %next.gep419, i64 8
  %wide.load454 = load <8 x float>, ptr %i.fa, align 4, !tbaa !45, !alias.scope !306
  %i.fb = fmul fast <8 x float> %wide.load454, %broadcast.splat451
  %i.fc = fadd fast <8 x float> %i.ez, %i.fb
  store <8 x float> %i.ei, ptr %next.gep424, align 4, !tbaa !45, !alias.scope !307, !noalias !308
  store <8 x float> %i.fc, ptr %next.gep423, align 4, !tbaa !45, !alias.scope !309, !noalias !310
  %index.next455 = add nuw i64 %index418, 8       ; 2 uses
  %i.fd = icmp eq i64 %index.next455, %n.vec414
  br i1 %i.fd, label %middle.block456, label %vector.body417, !llvm.loop !288

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
  %.0149206.us = phi i32 [ %i.fp, %scalar.ph411 ], [ %.0149206.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %.1152205.us = phi ptr [ %i.fk, %scalar.ph411 ], [ %.1152205.us.ph, %scalar.ph411.preheader ] ; 3 uses
  %.1154204.us = phi ptr [ %i.fj, %scalar.ph411 ], [ %.1154204.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %.1156203.us = phi ptr [ %i.fi, %scalar.ph411 ], [ %.1156203.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %.1160202.us = phi ptr [ %i.fh, %scalar.ph411 ], [ %.1160202.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %.1164201.us = phi ptr [ %i.fo, %scalar.ph411 ], [ %.1164201.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %.1166200.us = phi ptr [ %i.fn, %scalar.ph411 ], [ %.1166200.us.ph, %scalar.ph411.preheader ] ; 2 uses
  %i.fe = load float, ptr %.1160202.us, align 4, !tbaa !45
  %i.ff = load float, ptr %i.ch, align 4, !tbaa !45 ; 2 uses
  %i.fg = fmul fast float %i.ff, %i.fe
  %i.fh = getelementptr inbounds nuw i8, ptr %.1160202.us, i64 4 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.1156203.us, i64 4 ; 3 uses
  %10 = load <2 x float>, ptr %i.fh, align 4, !tbaa !45
  %11 = load <2 x float>, ptr %.1156203.us, align 4, !tbaa !45 ; 2 uses
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = load <4 x float>, ptr %i.cn, align 4, !tbaa !45 ; 2 uses
  %14 = shufflevector <2 x float> %11, <2 x float> %10, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %15 = fmul fast <4 x float> %13, %14
  %i.fj = getelementptr inbounds nuw i8, ptr %.1154204.us, i64 4 ; 3 uses
  %16 = load <2 x float>, ptr %.1154204.us, align 4, !tbaa !45 ; 2 uses
  %17 = load <4 x float>, ptr %i.cq, align 4, !tbaa !45 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.1152205.us, i64 4 ; 2 uses
  %18 = load <2 x float>, ptr %i.fi, align 4, !tbaa !45 ; 2 uses
  %19 = load <2 x float>, ptr %i.fj, align 4, !tbaa !45 ; 2 uses
  %20 = shufflevector <2 x float> %16, <2 x float> %19, <4 x i32> <i32 poison, i32 0, i32 1, i32 3>
  %21 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %22 = shufflevector <4 x float> %20, <4 x float> %21, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %23 = fmul fast <4 x float> %17, %22
  %rdx.op = fadd fast <4 x float> %15, %23
  %op.rdx466 = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.fg, <4 x float> %rdx.op)
  %op.rdx467 = fadd fast float %op.rdx466, %i.cg
  %24 = load <2 x float>, ptr %.1152205.us, align 4, !tbaa !45
  %25 = shufflevector <4 x float> %13, <4 x float> %17, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %26 = shufflevector <8 x float> %12, <8 x float> %25, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %27 = shufflevector <2 x float> %16, <2 x float> %18, <8 x i32> <i32 poison, i32 2, i32 3, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %28 = insertelement <8 x float> %27, float %i.ff, i64 0
  %29 = shufflevector <2 x float> %19, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %30 = shufflevector <8 x float> %28, <8 x float> %29, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %31 = shufflevector <2 x float> %24, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %32 = shufflevector <8 x float> %30, <8 x float> %31, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %33 = fmul fast <8 x float> %26, %32
  %i.fl = getelementptr inbounds nuw i8, ptr %.1152205.us, i64 8
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !45
  %34 = extractelement <4 x float> %17, i64 3
  %35 = fmul fast float %i.fm, %34
  %op.rdx468 = call fast float @llvm.vector.reduce.fadd.v8f32(float %35, <8 x float> %33)
  %op.rdx469 = fadd fast float %op.rdx468, %i.cg
  store float %op.rdx467, ptr %.1166200.us, align 4, !tbaa !45
  store float %op.rdx469, ptr %.1164201.us, align 4, !tbaa !45
  %i.fn = getelementptr inbounds nuw i8, ptr %.1166200.us, i64 4 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.1164201.us, i64 4 ; 2 uses
  %i.fp = add nsw i32 %.0149206.us, -1
  %i.fq = icmp sgt i32 %.0149206.us, 1
  br i1 %i.fq, label %scalar.ph411, label %._crit_edge.us, !llvm.loop !289

._crit_edge.us:                                   ; preds = %scalar.ph411, %middle.block456
  %.lcssa303 = phi ptr [ %i.cy, %middle.block456 ], [ %i.fh, %scalar.ph411 ]
  %.lcssa302 = phi ptr [ %i.cx, %middle.block456 ], [ %i.fi, %scalar.ph411 ]
  %.lcssa301 = phi ptr [ %i.cw, %middle.block456 ], [ %i.fj, %scalar.ph411 ]
  %.lcssa300 = phi ptr [ %i.cv, %middle.block456 ], [ %i.fk, %scalar.ph411 ]
  %.lcssa299 = phi ptr [ %i.da, %middle.block456 ], [ %i.fn, %scalar.ph411 ]
  %.lcssa = phi ptr [ %i.cz, %middle.block456 ], [ %i.fo, %scalar.ph411 ]
  %i.fr = getelementptr inbounds [4 x i8], ptr %.lcssa303, i64 %i.ai ; 2 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %.lcssa302, i64 %i.ai ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %.lcssa301, i64 %i.ai ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %.lcssa300, i64 %i.ai
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.lcssa299, i64 %i.bb ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.bb
  %i.fx = add nuw nsw i32 %.0150218.us, 2         ; 2 uses
  %i.fy = or disjoint i32 %i.fx, 1
  %i.fz = icmp slt i32 %i.fy, %i.af
  br i1 %i.fz, label %.lr.ph.us, label %.preheader, !llvm.loop !290

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph219.split.preheader, %_ZN4ncnn3MatD2Ev.exit171
  %.0165.lcssa = phi ptr [ %i.cd, %_ZN4ncnn3MatD2Ev.exit171 ], [ %scevgep277, %.lr.ph219.split.preheader ], [ %i.fv, %._crit_edge.us ]
  %.0159.lcssa = phi ptr [ %i.ci, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv, %.lr.ph219.split.preheader ], [ %i.fr, %._crit_edge.us ]
  %.0155.lcssa = phi ptr [ %i.cj, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv269, %.lr.ph219.split.preheader ], [ %i.fs, %._crit_edge.us ]
  %.0153.lcssa = phi ptr [ %i.ck, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv272, %.lr.ph219.split.preheader ], [ %i.ft, %._crit_edge.us ]
  %.0150.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit171 ], [ %i.ay, %.lr.ph219.split.preheader ], [ %i.ay, %._crit_edge.us ] ; 2 uses
  %i.ga = icmp slt i32 %.0150.lcssa, %i.af
  br i1 %i.ga, label %.lr.ph244, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph244:                                        ; preds = %.preheader
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ch, i64 32 ; 2 uses
  br i1 %i.bd, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %.lr.ph244
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cg, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.1243 = phi i32 [ %i.iy, %._crit_edge ], [ %.0150.lcssa, %.lr.ph.preheader ]
  %.2242 = phi ptr [ %i.ix, %._crit_edge ], [ %.0153.lcssa, %.lr.ph.preheader ] ; 6 uses
  %.2157241 = phi ptr [ %i.iw, %._crit_edge ], [ %.0155.lcssa, %.lr.ph.preheader ] ; 6 uses
  %.2161240 = phi ptr [ %i.iv, %._crit_edge ], [ %.0159.lcssa, %.lr.ph.preheader ] ; 6 uses
  %.2167239 = phi ptr [ %.lcssa308, %._crit_edge ], [ %.0165.lcssa, %.lr.ph.preheader ] ; 9 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.gh = getelementptr i8, ptr %.2167239, i64 %i.bg
  %scevgep309 = getelementptr i8, ptr %i.gh, i64 4 ; 4 uses
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
  %i.gi = getelementptr i8, ptr %.2242, i64 %i.ca ; 2 uses
  %i.gj = getelementptr i8, ptr %.2157241, i64 %i.ca ; 2 uses
  %i.gk = getelementptr i8, ptr %.2161240, i64 %i.ca ; 2 uses
  %i.gl = getelementptr i8, ptr %.2167239, i64 %i.ca ; 2 uses
  %i.gm = load float, ptr %i.ch, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert328 = insertelement <8 x float> poison, float %i.gm, i64 0
  %broadcast.splat329 = shufflevector <8 x float> %broadcast.splatinsert328, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gn = load float, ptr %i.gb, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert331 = insertelement <8 x float> poison, float %i.gn, i64 0
  %broadcast.splat332 = shufflevector <8 x float> %broadcast.splatinsert331, <8 x float> poison, <8 x i32> zeroinitializer
  %i.go = load float, ptr %i.gc, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert334 = insertelement <8 x float> poison, float %i.go, i64 0
  %broadcast.splat335 = shufflevector <8 x float> %broadcast.splatinsert334, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gp = load float, ptr %i.cl, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert337 = insertelement <8 x float> poison, float %i.gp, i64 0
  %broadcast.splat338 = shufflevector <8 x float> %broadcast.splatinsert337, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gq = load float, ptr %i.gd, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert340 = insertelement <8 x float> poison, float %i.gq, i64 0
  %broadcast.splat341 = shufflevector <8 x float> %broadcast.splatinsert340, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gr = load float, ptr %i.ge, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert343 = insertelement <8 x float> poison, float %i.gr, i64 0
  %broadcast.splat344 = shufflevector <8 x float> %broadcast.splatinsert343, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gs = load float, ptr %i.cm, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert346 = insertelement <8 x float> poison, float %i.gs, i64 0
  %broadcast.splat347 = shufflevector <8 x float> %broadcast.splatinsert346, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gt = load float, ptr %i.gf, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert349 = insertelement <8 x float> poison, float %i.gt, i64 0
  %broadcast.splat350 = shufflevector <8 x float> %broadcast.splatinsert349, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gu = load float, ptr %i.gg, align 4, !tbaa !45, !alias.scope !311
  %broadcast.splatinsert352 = insertelement <8 x float> poison, float %i.gu, i64 0
  %broadcast.splat353 = shufflevector <8 x float> %broadcast.splatinsert352, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gv = shl i64 %index, 2                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.2242, i64 %i.gv ; 3 uses
  %next.gep325 = getelementptr i8, ptr %.2157241, i64 %i.gv ; 3 uses
  %next.gep326 = getelementptr i8, ptr %.2161240, i64 %i.gv ; 3 uses
  %next.gep327 = getelementptr i8, ptr %.2167239, i64 %i.gv
  %wide.load = load <8 x float>, ptr %next.gep326, align 4, !tbaa !45, !alias.scope !312
  %i.gw = fmul fast <8 x float> %broadcast.splat329, %wide.load
  %i.gx = fadd fast <8 x float> %broadcast.splat, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %next.gep326, i64 4
  %wide.load330 = load <8 x float>, ptr %i.gy, align 4, !tbaa !45, !alias.scope !312
  %i.gz = fmul fast <8 x float> %broadcast.splat332, %wide.load330
  %i.ha = fadd fast <8 x float> %i.gz, %i.gx
  %i.hb = getelementptr inbounds nuw i8, ptr %next.gep326, i64 8
  %wide.load333 = load <8 x float>, ptr %i.hb, align 4, !tbaa !45, !alias.scope !312
  %i.hc = fmul fast <8 x float> %broadcast.splat335, %wide.load333
  %i.hd = fadd fast <8 x float> %i.ha, %i.hc
  %wide.load336 = load <8 x float>, ptr %next.gep325, align 4, !tbaa !45, !alias.scope !313
  %i.he = fmul fast <8 x float> %broadcast.splat338, %wide.load336
  %i.hf = fadd fast <8 x float> %i.hd, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %next.gep325, i64 4
  %wide.load339 = load <8 x float>, ptr %i.hg, align 4, !tbaa !45, !alias.scope !313
  %i.hh = fmul fast <8 x float> %broadcast.splat341, %wide.load339
  %i.hi = fadd fast <8 x float> %i.hf, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %next.gep325, i64 8
  %wide.load342 = load <8 x float>, ptr %i.hj, align 4, !tbaa !45, !alias.scope !313
  %i.hk = fmul fast <8 x float> %broadcast.splat344, %wide.load342
  %i.hl = fadd fast <8 x float> %i.hi, %i.hk
  %wide.load345 = load <8 x float>, ptr %next.gep, align 4, !tbaa !45, !alias.scope !314
  %i.hm = fmul fast <8 x float> %broadcast.splat347, %wide.load345
  %i.hn = fadd fast <8 x float> %i.hl, %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %wide.load348 = load <8 x float>, ptr %i.ho, align 4, !tbaa !45, !alias.scope !314
  %i.hp = fmul fast <8 x float> %broadcast.splat350, %wide.load348
  %i.hq = fadd fast <8 x float> %i.hn, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %wide.load351 = load <8 x float>, ptr %i.hr, align 4, !tbaa !45, !alias.scope !314
  %i.hs = fmul fast <8 x float> %broadcast.splat353, %wide.load351
  %i.ht = fadd fast <8 x float> %i.hq, %i.hs
  store <8 x float> %i.ht, ptr %next.gep327, align 4, !tbaa !45, !alias.scope !315, !noalias !316
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hu = icmp eq i64 %index.next, %n.vec
  br i1 %i.hu, label %middle.block, label %vector.body, !llvm.loop !297

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.gi, i64 -4
  %ind.escape354 = getelementptr i8, ptr %i.gj, i64 -4
  %ind.escape355 = getelementptr i8, ptr %i.gk, i64 -4
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.0148235.ph = phi i32 [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph ], [ %i.bz, %middle.block ]
  %.3234.ph = phi ptr [ %.2242, %vector.memcheck ], [ %.2242, %.lr.ph ], [ %i.gi, %middle.block ]
  %.3158233.ph = phi ptr [ %.2157241, %vector.memcheck ], [ %.2157241, %.lr.ph ], [ %i.gj, %middle.block ]
  %.3162232.ph = phi ptr [ %.2161240, %vector.memcheck ], [ %.2161240, %.lr.ph ], [ %i.gk, %middle.block ]
  %.3168231.ph = phi ptr [ %.2167239, %vector.memcheck ], [ %.2167239, %.lr.ph ], [ %i.gl, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0148235 = phi i32 [ %i.it, %scalar.ph ], [ %.0148235.ph, %scalar.ph.preheader ] ; 2 uses
  %.3234 = phi ptr [ %i.ia, %scalar.ph ], [ %.3234.ph, %scalar.ph.preheader ] ; 4 uses
  %.3158233 = phi ptr [ %i.hz, %scalar.ph ], [ %.3158233.ph, %scalar.ph.preheader ] ; 3 uses
  %.3162232 = phi ptr [ %i.hv, %scalar.ph ], [ %.3162232.ph, %scalar.ph.preheader ] ; 4 uses
  %.3168231 = phi ptr [ %i.is, %scalar.ph ], [ %.3168231.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.3162232, i64 4
  %i.hw = getelementptr inbounds nuw i8, ptr %.3162232, i64 8
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !45
  %i.hy = load float, ptr %.3158233, align 4, !tbaa !45
  %i.hz = getelementptr inbounds nuw i8, ptr %.3158233, i64 4 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.3234, i64 4
  %i.ib = load <2 x float>, ptr %.3162232, align 4, !tbaa !45
  %i.ic = load <2 x float>, ptr %i.hz, align 4, !tbaa !45
  %i.id = load <2 x float>, ptr %.3234, align 4, !tbaa !45
  %i.ie = load <8 x float>, ptr %i.ch, align 4, !tbaa !45
  %i.if = insertelement <8 x float> poison, float %i.hx, i64 2
  %i.ig = insertelement <8 x float> %i.if, float %i.hy, i64 3
  %i.ih = shufflevector <2 x float> %i.ib, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ii = shufflevector <8 x float> %i.ih, <8 x float> %i.ig, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ij = shufflevector <2 x float> %i.ic, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ik = shufflevector <8 x float> %i.ii, <8 x float> %i.ij, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.il = shufflevector <2 x float> %i.id, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.im = shufflevector <8 x float> %i.ik, <8 x float> %i.il, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.in = fmul fast <8 x float> %i.ie, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %.3234, i64 8
  %i.ip = load float, ptr %i.io, align 4, !tbaa !45
  %i.iq = load float, ptr %i.gg, align 4, !tbaa !45
  %i.ir = fmul fast float %i.iq, %i.ip
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.ir, <8 x float> %i.in)
  %op.rdx465 = fadd fast float %op.rdx, %i.cg
  store float %op.rdx465, ptr %.3168231, align 4, !tbaa !45
  %i.is = getelementptr inbounds nuw i8, ptr %.3168231, i64 4 ; 2 uses
  %i.it = add nsw i32 %.0148235, -1
  %i.iu = icmp sgt i32 %.0148235, 1
  br i1 %i.iu, label %scalar.ph, label %._crit_edge, !llvm.loop !298

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.3234.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.3234, %scalar.ph ]
  %.3158233.lcssa = phi ptr [ %ind.escape354, %middle.block ], [ %.3158233, %scalar.ph ]
end_hunk_0
begin_hunk_1_@_ZN4ncnnL28convdw3x3s2_int8_dequant_sseERKNS_3MatERS0_S2_S2_St6vectorIfSaIfEERKNS_6OptionE.omp_outlined:bb.a
  %i.nv = sub i32 %i.j, %i.k
  %xtraiter = and i32 %i.nu, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4ncnn3Mat7channelEi.exit.us124.us.prol.loopexit, label %_ZN4ncnn3Mat7channelEi.exit.us124.us.prol

_ZN4ncnn3Mat7channelEi.exit.us124.us.prol:        ; preds = %_ZN4ncnn3Mat7channelEi.exit.us124.us.preheader, %_ZN4ncnn3Mat7channelEi.exit.us124.us.prol
  %indvars.iv153.prol = phi i64 [ %indvars.iv.next154.prol, %_ZN4ncnn3Mat7channelEi.exit.us124.us.prol ], [ %i.nr, %_ZN4ncnn3Mat7channelEi.exit.us124.us.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %_ZN4ncnn3Mat7channelEi.exit.us124.us.prol ], [ 0, %_ZN4ncnn3Mat7channelEi.exit.us124.us.preheader ]
  %.reass.us126.us.prol = mul i64 %factor.op.mul, %indvars.iv153.prol
  %i.nw = getelementptr i8, ptr %i.r, i64 %.reass.us126.us.prol
  call void @llvm.memset.p0.i64(ptr align 4 %i.nw, i8 0, i64 %i.nq, i1 false), !tbaa !45
  %indvars.iv.next154.prol = add nsw i64 %indvars.iv153.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN4ncnn3Mat7channelEi.exit.us124.us.prol.loopexit, label %_ZN4ncnn3Mat7channelEi.exit.us124.us.prol, !llvm.loop !462

_ZN4ncnn3Mat7channelEi.exit.us124.us.prol.loopexit: ; preds = %_ZN4ncnn3Mat7channelEi.exit.us124.us.prol, %_ZN4ncnn3Mat7channelEi.exit.us124.us.preheader
  %indvars.iv153.unr = phi i64 [ %i.nr, %_ZN4ncnn3Mat7channelEi.exit.us124.us.preheader ], [ %indvars.iv.next154.prol, %_ZN4ncnn3Mat7channelEi.exit.us124.us.prol ]
  %i.nx = icmp ult i32 %i.nv, 7
  br i1 %i.nx, label %._crit_edge121, label %_ZN4ncnn3Mat7channelEi.exit.us124.us

_ZN4ncnn3Mat7channelEi.exit.us124.us:             ; preds = %_ZN4ncnn3Mat7channelEi.exit.us124.us.prol.loopexit, %_ZN4ncnn3Mat7channelEi.exit.us124.us
  %indvars.iv153 = phi i64 [ %indvars.iv.next154.7, %_ZN4ncnn3Mat7channelEi.exit.us124.us ], [ %indvars.iv153.unr, %_ZN4ncnn3Mat7channelEi.exit.us124.us.prol.loopexit ] ; 9 uses
  %.reass.us126.us = mul i64 %factor.op.mul, %indvars.iv153
  %i.ny = getelementptr i8, ptr %i.r, i64 %.reass.us126.us
  call void @llvm.memset.p0.i64(ptr align 4 %i.ny, i8 0, i64 %i.nq, i1 false), !tbaa !45
  %indvars.iv.next154 = add nsw i64 %indvars.iv153, 1
  %.reass.us126.us.1 = mul i64 %factor.op.mul, %indvars.iv.next154
  %i.nz = getelementptr i8, ptr %i.r, i64 %.reass.us126.us.1
  call void @llvm.memset.p0.i64(ptr align 4 %i.nz, i8 0, i64 %i.nq, i1 false), !tbaa !45
  %indvars.iv.next154.1 = add nsw i64 %indvars.iv153, 2
  %.reass.us126.us.2 = mul i64 %factor.op.mul, %indvars.iv.next154.1
  %i.oa = getelementptr i8, ptr %i.r, i64 %.reass.us126.us.2
  call void @llvm.memset.p0.i64(ptr align 4 %i.oa, i8 0, i64 %i.nq, i1 false), !tbaa !45
  %indvars.iv.next154.2 = add nsw i64 %indvars.iv153, 3
  %.reass.us126.us.3 = mul i64 %factor.op.mul, %indvars.iv.next154.2
  %i.ob = getelementptr i8, ptr %i.r, i64 %.reass.us126.us.3
  call void @llvm.memset.p0.i64(ptr align 4 %i.ob, i8 0, i64 %i.nq, i1 false), !tbaa !45
  %indvars.iv.next154.3 = add nsw i64 %indvars.iv153, 4
  %.reass.us126.us.4 = mul i64 %factor.op.mul, %indvars.iv.next154.3
  %i.oc = getelementptr i8, ptr %i.r, i64 %.reass.us126.us.4
  call void @llvm.memset.p0.i64(ptr align 4 %i.oc, i8 0, i64 %i.nq, i1 false), !tbaa !45
  %indvars.iv.next154.4 = add nsw i64 %indvars.iv153, 5
  %.reass.us126.us.5 = mul i64 %factor.op.mul, %indvars.iv.next154.4
  %i.od = getelementptr i8, ptr %i.r, i64 %.reass.us126.us.5
  call void @llvm.memset.p0.i64(ptr align 4 %i.od, i8 0, i64 %i.nq, i1 false), !tbaa !45
  %indvars.iv.next154.5 = add nsw i64 %indvars.iv153, 6
  %.reass.us126.us.6 = mul i64 %factor.op.mul, %indvars.iv.next154.5
  %i.oe = getelementptr i8, ptr %i.r, i64 %.reass.us126.us.6
  call void @llvm.memset.p0.i64(ptr align 4 %i.oe, i8 0, i64 %i.nq, i1 false), !tbaa !45
  %indvars.iv.next154.6 = add nsw i64 %indvars.iv153, 7
  %.reass.us126.us.7 = mul i64 %factor.op.mul, %indvars.iv.next154.6
  %i.of = getelementptr i8, ptr %i.r, i64 %.reass.us126.us.7
  call void @llvm.memset.p0.i64(ptr align 4 %i.of, i8 0, i64 %i.nq, i1 false), !tbaa !45
  %indvars.iv.next154.7 = add nsw i64 %indvars.iv153, 8 ; 2 uses
  %lftr.wideiv156.7 = trunc i64 %indvars.iv.next154.7 to i32
  %exitcond157.not.7 = icmp eq i32 %i.ns, %lftr.wideiv156.7
  br i1 %exitcond157.not.7, label %._crit_edge121, label %_ZN4ncnn3Mat7channelEi.exit.us124.us

iter.check:                                       ; preds = %_ZN4ncnn3Mat7channelEi.exit.us124.preheader, %._ZN4ncnn3Mat4fillEf.exit_crit_edge.us130
  %indvars.iv = phi i64 [ %i.nh, %_ZN4ncnn3Mat7channelEi.exit.us124.preheader ], [ %indvars.iv.next, %._ZN4ncnn3Mat4fillEf.exit_crit_edge.us130 ] ; 3 uses
  %.reass.us126 = mul i64 %factor.op.mul, %indvars.iv
  %i.og = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass.us126 ; 5 uses
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !45 ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check199, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.oj = getelementptr i8, ptr %i.og, i64 %i.nm
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.oi, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ok = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.og, i64 %i.ok ; 4 uses
  %i.ol = getelementptr i8, ptr %next.gep, i64 32
  %i.om = getelementptr i8, ptr %next.gep, i64 64
  %i.on = getelementptr i8, ptr %next.gep, i64 96
  store <8 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !45
  store <8 x float> %broadcast.splat, ptr %i.ol, align 4, !tbaa !45
  store <8 x float> %broadcast.splat, ptr %i.om, align 4, !tbaa !45
  store <8 x float> %broadcast.splat, ptr %i.on, align 4, !tbaa !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.oo = icmp eq i64 %index.next, %n.vec
  br i1 %i.oo, label %middle.block, label %vector.body, !llvm.loop !463

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._ZN4ncnn3Mat4fillEf.exit_crit_edge.us130, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !92

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.op = getelementptr i8, ptr %i.og, i64 %i.no
  %broadcast.splatinsert202 = insertelement <8 x float> poison, float %i.oi, i64 0
  %broadcast.splat203 = shufflevector <8 x float> %broadcast.splatinsert202, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index204 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next206, %vec.epilog.vector.body ] ; 2 uses
  %i.oq = shl i64 %index204, 2
  %next.gep205 = getelementptr i8, ptr %i.og, i64 %i.oq
  store <8 x float> %broadcast.splat203, ptr %next.gep205, align 4, !tbaa !45
  %index.next206 = add nuw i64 %index204, 8       ; 2 uses
  %i.or = icmp eq i64 %index.next206, %n.vec201
  br i1 %i.or, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !464

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n207, label %._ZN4ncnn3Mat4fillEf.exit_crit_edge.us130, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i103.us128.ph = phi i32 [ 0, %iter.check ], [ %i.nl, %vec.epilog.iter.check ], [ %i.nn, %vec.epilog.middle.block ]
  %.05.i102.us129.ph = phi ptr [ %i.og, %iter.check ], [ %i.oj, %vec.epilog.iter.check ], [ %i.op, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0.i103.us128 = phi i32 [ %i.ot, %vec.epilog.scalar.ph ], [ %.0.i103.us128.ph, %vec.epilog.scalar.ph.preheader ]
  %.05.i102.us129 = phi ptr [ %i.os, %vec.epilog.scalar.ph ], [ %.05.i102.us129.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.05.i102.us129, i64 4
  store float %i.oi, ptr %.05.i102.us129, align 4, !tbaa !45
  %i.ot = add nuw nsw i32 %.0.i103.us128, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.ot, %i.aj
  br i1 %exitcond.not, label %._ZN4ncnn3Mat4fillEf.exit_crit_edge.us130, label %vec.epilog.scalar.ph, !llvm.loop !465

._ZN4ncnn3Mat4fillEf.exit_crit_edge.us130:        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond152.not = icmp eq i32 %i.ni, %lftr.wideiv
  br i1 %exitcond152.not, label %._crit_edge121, label %iter.check

._crit_edge121:                                   ; preds = %._ZN4ncnn3Mat4fillEf.exit_crit_edge.us130, %_ZN4ncnn3Mat7channelEi.exit.us124.us.prol.loopexit, %_ZN4ncnn3Mat7channelEi.exit.us124.us, %._ZN4ncnn3Mat4fillEf.exit_crit_edge.us.us139, %_ZN4ncnn3Mat7channelEi.exit.us.us133.us.prol.loopexit, %_ZN4ncnn3Mat7channelEi.exit.us.us133.us, %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us, %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split, %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge121, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.copysign.v4f32(<4 x float>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #15

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #17 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = distinct !{null, null}
!2 = distinct !{null}
!3 = !{i32 7, !"openmp", i32 51}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 int", !14, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!"p1 _ZTSN4ncnn9AllocatorE", !14, i64 0}
!18 = !{!"_ZTSN4ncnn3MatE", !14, i64 0, !15, i64 8, !16, i64 16, !9, i64 24, !17, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !16, i64 64}
!19 = !{!18, !15, i64 8}
!20 = !{!18, !17, i64 32}
!21 = !{!18, !14, i64 0}
!22 = !{!18, !16, i64 64}
!23 = !{!"any p2 pointer", !14, i64 0}
!24 = !{!"p2 _ZTSN4ncnn5LayerE", !23, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIPN4ncnn5LayerESaIS2_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!25, !24, i64 0}
!27 = !{!25, !24, i64 16}
!28 = !{!"bool", !8, i64 0}
!29 = !{!"p1 omnipotent char", !14, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !29, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0, !16, i64 8, !8, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorIiSaIiEE", !34, i64 0}
!36 = !{!"p1 _ZTSN4ncnn3MatE", !14, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !37, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !39, i64 0}
!41 = !{!"_ZTSN4ncnn5LayerE", !28, i64 8, !28, i64 9, !28, i64 10, !28, i64 11, !28, i64 12, !28, i64 13, !28, i64 14, !28, i64 15, !28, i64 16, !28, i64 17, !28, i64 18, !28, i64 19, !28, i64 20, !28, i64 21, !28, i64 22, !28, i64 23, !28, i64 24, !28, i64 25, !28, i64 26, !28, i64 27, !9, i64 28, !14, i64 32, !9, i64 40, !31, i64 48, !31, i64 80, !35, i64 112, !35, i64 136, !40, i64 160, !40, i64 184}
!42 = !{!"float", !8, i64 0}
!43 = !{!"_ZTSN4ncnn20ConvolutionDepthWiseE", !41, i64 0, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !9, i64 248, !42, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !18, i64 280, !9, i64 352, !18, i64 360, !18, i64 432, !18, i64 504, !18, i64 576, !18, i64 648}
!44 = !{!43, !9, i64 272}
!45 = !{!42, !42, i64 0}
!46 = !{!"p1 _ZTSN4ncnn5LayerE", !14, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIPN4ncnn5LayerESaIS2_EE12_Vector_implE", !25, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIPN4ncnn5LayerESaIS2_EE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIPN4ncnn5LayerESaIS2_EE", !48, i64 0}
!50 = !{!"_ZTSN4ncnn28ConvolutionDepthWise_x86_fmaE", !43, i64 0, !46, i64 720, !49, i64 728, !18, i64 752}
!51 = !{!50, !46, i64 720}
!52 = !{!"_ZTSN4ncnn6OptionE", !28, i64 0, !28, i64 1, !28, i64 2, !28, i64 3, !9, i64 4, !17, i64 8, !17, i64 16, !9, i64 24, !28, i64 28, !28, i64 29, !28, i64 30, !28, i64 31, !28, i64 32, !28, i64 33, !28, i64 34, !28, i64 35, !28, i64 36, !28, i64 37, !28, i64 38, !28, i64 39, !9, i64 40, !28, i64 44, !28, i64 45, !28, i64 46, !28, i64 47, !8, i64 48, !28, i64 49, !28, i64 50, !28, i64 51, !28, i64 52, !28, i64 53, !28, i64 54, !28, i64 55, !28, i64 56, !28, i64 57, !28, i64 58, !28, i64 59, !28, i64 60, !28, i64 61, !28, i64 62, !28, i64 63}
!53 = !{!52, !28, i64 30}
!54 = !{i8 0, i8 2}
!55 = !{}
!56 = !{!43, !9, i64 212}
!57 = !{!43, !9, i64 216}
!58 = !{!43, !9, i64 260}
!59 = !{!43, !9, i64 264}
!60 = !{!43, !9, i64 208}
!61 = !{!52, !28, i64 39}
!62 = !{!43, !9, i64 220}
!63 = !{!43, !9, i64 224}
!64 = !{!43, !9, i64 228}
!65 = !{!43, !9, i64 232}
!66 = !{!14, !14, i64 0}
!67 = !{!18, !16, i64 16}
!68 = !{!18, !9, i64 24}
!69 = !{!9, !9, i64 0}
!70 = !{!18, !9, i64 56}
!71 = !{!52, !28, i64 0}
!72 = !{!25, !24, i64 8}
!73 = !{!46, !46, i64 0}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!18, !9, i64 44}
!76 = !{!18, !9, i64 48}
!77 = !{!43, !9, i64 256}
!78 = !{!43, !9, i64 268}
!79 = !{!52, !17, i64 8}
!80 = !{!32, !15, i64 0}
!81 = !{!15, !15, i64 0}
!82 = !{!52, !9, i64 4}
!83 = !{!"llvm.loop.unswitch.partial.disable"}
!84 = !{!32, !15, i64 16}
!85 = !{!28, !28, i64 0}
!86 = !{!17, !17, i64 0}
!87 = !{!8, !8, i64 0}
!88 = !{i64 0, i64 1, !85, i64 1, i64 1, !85, i64 2, i64 1, !85, i64 3, i64 1, !85, i64 4, i64 4, !69, i64 8, i64 8, !86, i64 16, i64 8, !86, i64 24, i64 4, !69, i64 28, i64 1, !85, i64 29, i64 1, !85, i64 30, i64 1, !85, i64 31, i64 1, !85, i64 32, i64 1, !85, i64 33, i64 1, !85, i64 34, i64 1, !85, i64 35, i64 1, !85, i64 36, i64 1, !85, i64 37, i64 1, !85, i64 38, i64 1, !85, i64 39, i64 1, !85, i64 40, i64 4, !69, i64 44, i64 1, !85, i64 45, i64 1, !85, i64 46, i64 1, !85, i64 47, i64 1, !85, i64 48, i64 1, !87, i64 49, i64 1, !85, i64 50, i64 1, !85, i64 51, i64 1, !85, i64 52, i64 1, !85, i64 53, i64 1, !85, i64 54, i64 1, !85, i64 55, i64 1, !85, i64 56, i64 1, !85, i64 57, i64 1, !85, i64 58, i64 1, !85, i64 59, i64 1, !85, i64 60, i64 1, !85, i64 61, i64 1, !85, i64 62, i64 1, !85, i64 63, i64 1, !85}
!89 = !{!52, !17, i64 16}
!90 = !{!"llvm.loop.isvectorized", i32 1}
!91 = !{!"llvm.loop.unroll.runtime.disable"}
!92 = !{!"branch_weights", i32 8, i32 24}
!93 = !{!"p1 float", !14, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!95 = !{!94, !93, i64 0}
!96 = !{!94, !93, i64 16}
!97 = !{!93, !93, i64 0}
!98 = !{i64 2, i64 -1, i64 -1, i1 true}
!99 = !{!98}
!100 = !{!94, !93, i64 8}
!101 = !{!29, !29, i64 0}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = !{!18, !9, i64 52}
!104 = !{!18, !9, i64 40}
!105 = !{ptr @_ZN4ncnn28ConvolutionDepthWise_x86_fmaD2Ev}
!106 = distinct !{null}
!107 = !{!43, !9, i64 352}
!108 = !{!43, !16, i64 376}
!109 = distinct !{!109, !74}
!110 = !{!37, !36, i64 0}
!111 = !{!43, !9, i64 236}
!112 = !{!43, !9, i64 240}
!113 = !{!43, !9, i64 244}
!114 = !{!43, !9, i64 248}
!115 = !{!43, !42, i64 252}
!116 = distinct !{!116, !74, !83}
!117 = distinct !{!117, !74}
!118 = distinct !{!118, !74, !83}
!119 = distinct !{!119, !74}
!120 = distinct !{!120, !74}
!121 = distinct !{!121, !"_ZN4ncnn3Mat13channel_rangeEii"}
!122 = distinct !{!122, !121, !"_ZN4ncnn3Mat13channel_rangeEii: argument 0"}
!123 = distinct !{!123, !"_ZN4ncnn3Mat13channel_rangeEii"}
!124 = distinct !{!124, !123, !"_ZN4ncnn3Mat13channel_rangeEii: argument 0"}
!125 = !{!122}
!126 = !{!124}
!127 = !{!41, !28, i64 11}
!128 = distinct !{!128, !74}
!129 = distinct !{!129, !"_ZN4ncnn3Mat5rangeEii"}
!130 = distinct !{!130, !129, !"_ZN4ncnn3Mat5rangeEii: argument 0"}
!131 = distinct !{!131, !"_ZN4ncnn3Mat5rangeEii"}
!132 = distinct !{!132, !131, !"_ZN4ncnn3Mat5rangeEii: argument 0"}
!133 = distinct !{!133, !74, !90, !91}
!134 = distinct !{!134, !74, !90, !91}
!135 = distinct !{!135, !74, !91, !90}
!136 = distinct !{!136, !"_ZN4ncnn3Mat5rangeEii"}
!137 = distinct !{!137, !136, !"_ZN4ncnn3Mat5rangeEii: argument 0"}
!138 = distinct !{!138, !"_ZN4ncnn3Mat5rangeEii"}
!139 = distinct !{!139, !138, !"_ZN4ncnn3Mat5rangeEii: argument 0"}
!140 = distinct !{!140, !74, !90, !91}
!141 = distinct !{!141, !74, !90, !91}
!142 = distinct !{!142, !74, !91, !90}
!143 = distinct !{!143, !"_ZN4ncnn3Mat5rangeEii"}
!144 = distinct !{!144, !143, !"_ZN4ncnn3Mat5rangeEii: argument 0"}
!145 = distinct !{!145, !"_ZN4ncnn3Mat5rangeEii"}
!146 = distinct !{!146, !145, !"_ZN4ncnn3Mat5rangeEii: argument 0"}
!147 = distinct !{!147, !74}
!148 = !{!130}
!149 = !{!132}
!150 = !{!137}
!151 = !{!139}
!152 = !{!144}
!153 = !{!146}
!154 = distinct !{!154, !74, !90, !91}
!155 = distinct !{!155, !74, !90, !91}
!156 = distinct !{!156, !74}
!157 = distinct !{!157, !74, !91, !90}
!158 = distinct !{!158, !74, !83}
!159 = distinct !{!159, !74}
!160 = distinct !{!160, !74}
end_hunk_1
