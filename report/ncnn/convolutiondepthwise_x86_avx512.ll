Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolutiondepthwise_x86_avx512?download=true
inline.NumInlined: 230
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4ncnnL21convdw5x5s2_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined:bb.a
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
  br i1 %i.gl, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !325

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
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #17

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL15convdw3x3s1_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #18 personality ptr @__gxx_personality_v0 {
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
  %i.l = load ptr, ptr %3, align 8, !tbaa !21, !noalias !354 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22, !noalias !354
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !67, !noalias !354
  %factor.op.mul = mul i64 %i.n, %i.p             ; 3 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !97     ; 2 uses
  %.not170 = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %5, align 8, !tbaa !97     ; 3 uses
  %i.s = load i32, ptr %6, align 4, !tbaa !69     ; 19 uses
  %i.t = load ptr, ptr %7, align 8, !tbaa !21, !noalias !355 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !22, !noalias !355
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !67, !noalias !355
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
  %i.bj = zext i32 %i.s to i64                    ; 10 uses
  %i.bk = add i32 %i.s, -1
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2                ; 2 uses
  %i.bn = add nuw nsw i64 %i.bm, 4                ; 2 uses
  %i.bo = add nuw nsw i64 %i.bm, 12               ; 4 uses
  %i.bp = mul nsw i64 %i.aj, 36
  %i.bq = getelementptr i8, ptr %i.r, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 36
  %i.bs = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bt = getelementptr i8, ptr %i.bs, i64 36
  %min.iters.check457 = icmp ult i32 %i.s, 4
  %min.iters.check459 = icmp ult i32 %i.s, 16
  %i.bu = and i64 %i.bj, 12
  %n.vec461 = and i64 %i.bj, 2147483632           ; 5 uses
  %i.bv = trunc nuw nsw i64 %n.vec461 to i32
  %i.bw = sub nsw i32 %i.s, %i.bv
  %i.bx = shl nuw nsw i64 %n.vec461, 2            ; 6 uses
  %cmp.n504 = icmp eq i64 %n.vec461, %i.bj
  %min.epilog.iters.check515 = icmp eq i64 %i.bu, 0
  %n.vec517 = and i64 %i.bj, 2147483644           ; 4 uses
  %i.by = trunc nuw nsw i64 %n.vec517 to i32
  %i.bz = sub nsw i32 %i.s, %i.by
  %i.ca = shl nuw nsw i64 %n.vec517, 2            ; 6 uses
  %cmp.n560 = icmp eq i64 %n.vec517, %i.bj
  %min.iters.check = icmp ult i32 %i.s, 4
  %min.iters.check325 = icmp ult i32 %i.s, 16
  %i.cb = and i64 %i.bj, 12
  %n.vec = and i64 %i.bj, 2147483632              ; 5 uses
  %i.cc = trunc nuw nsw i64 %n.vec to i32
  %i.cd = sub nsw i32 %i.s, %i.cc
  %i.ce = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bj
  %min.epilog.iters.check = icmp eq i64 %i.cb, 0
  %n.vec361 = and i64 %i.bj, 2147483644           ; 4 uses
  %i.cf = trunc nuw nsw i64 %n.vec361 to i32
  %i.cg = sub nsw i32 %i.s, %i.cf
  %i.ch = shl nuw nsw i64 %n.vec361, 2            ; 4 uses
  %cmp.n400 = icmp eq i64 %n.vec361, %i.bj
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i64 [ 0, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv278 = phi i64 [ %i.aj, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %indvars.iv275 = phi ptr [ %scevgep274, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep276, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv272 = phi ptr [ %scevgep271, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep273, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv269 = phi ptr [ %scevgep268, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep270, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv = phi ptr [ %scevgep, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep267, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.ci = mul nuw nsw i64 %indvar, 36
  %scevgep413 = getelementptr i8, ptr %i.br, i64 %i.ci ; 2 uses
  %i.cj = mul nuw nsw i64 %indvar, 36
  %scevgep313 = getelementptr i8, ptr %i.bt, i64 %i.cj
  %.reass = mul i64 %factor.op.mul, %indvars.iv278
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  br i1 %.not170, label %_ZN4ncnn3MatD2Ev.exit171, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv278
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit171

_ZN4ncnn3MatD2Ev.exit171:                         ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.cn = phi fast float [ %i.cm, %bb.c ], [ 0.000000e+00, %_ZN4ncnn3Mat7channelEi.exit ] ; 7 uses
  %.idx = mul i64 %indvars.iv278, 36
  %i.co = getelementptr i8, ptr %i.r, i64 %.idx   ; 23 uses
  %.reass249 = mul i64 %factor.op.mul248, %indvars.iv278
  %i.cp = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass249 ; 5 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.aa ; 2 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.ac ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 12 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 5 uses
  br i1 %i.ag, label %.lr.ph219, label %.preheader

.lr.ph219:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit171
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 20 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 28 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 32 ; 3 uses
  br i1 %i.ba, label %.lr.ph.us.preheader, label %.lr.ph219.split.preheader

.lr.ph219.split.preheader:                        ; preds = %.lr.ph219
  %scevgep277 = getelementptr i8, ptr %indvars.iv275, i64 %i.bc
  br label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph219
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.y
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.ae
  %broadcast.splatinsert462 = insertelement <16 x float> poison, float %i.cn, i64 0
  %broadcast.splat463 = shufflevector <16 x float> %broadcast.splatinsert462, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert518 = insertelement <4 x float> poison, float %i.cn, i64 0
  %broadcast.splat519 = shufflevector <4 x float> %broadcast.splatinsert518, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %iter.check512

iter.check512:                                    ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0150218.us = phi i32 [ %i.ip, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.0151217.us = phi ptr [ %i.im, %._crit_edge.us ], [ %i.db, %.lr.ph.us.preheader ] ; 9 uses
  %.0153216.us = phi ptr [ %i.il, %._crit_edge.us ], [ %i.cr, %.lr.ph.us.preheader ] ; 9 uses
  %.0155215.us = phi ptr [ %i.ik, %._crit_edge.us ], [ %i.cq, %.lr.ph.us.preheader ] ; 9 uses
  %.0159214.us = phi ptr [ %i.ij, %._crit_edge.us ], [ %i.cp, %.lr.ph.us.preheader ] ; 9 uses
  %.0163213.us = phi ptr [ %i.io, %._crit_edge.us ], [ %i.da, %.lr.ph.us.preheader ] ; 13 uses
  %.0165212.us = phi ptr [ %i.in, %._crit_edge.us ], [ %i.ck, %.lr.ph.us.preheader ] ; 13 uses
  br i1 %min.iters.check457, label %vec.epilog.scalar.ph513.preheader, label %vector.memcheck406

vector.memcheck406:                               ; preds = %iter.check512
  %scevgep407 = getelementptr i8, ptr %.0165212.us, i64 %i.bn ; 6 uses
  %scevgep408 = getelementptr i8, ptr %.0163213.us, i64 %i.bn ; 6 uses
  %scevgep409 = getelementptr i8, ptr %.0151217.us, i64 %i.bo ; 2 uses
  %scevgep410 = getelementptr i8, ptr %.0153216.us, i64 %i.bo ; 2 uses
  %scevgep411 = getelementptr i8, ptr %.0155215.us, i64 %i.bo ; 2 uses
  %scevgep412 = getelementptr i8, ptr %.0159214.us, i64 %i.bo ; 2 uses
  %bound0414 = icmp ult ptr %.0165212.us, %scevgep408
  %bound1415 = icmp ult ptr %.0163213.us, %scevgep407
  %found.conflict416 = and i1 %bound0414, %bound1415
  %bound0417 = icmp ult ptr %.0165212.us, %scevgep409
  %bound1418 = icmp ult ptr %.0151217.us, %scevgep407
  %found.conflict419 = and i1 %bound0417, %bound1418
  %conflict.rdx420 = or i1 %found.conflict416, %found.conflict419
  %bound0421 = icmp ult ptr %.0165212.us, %scevgep410
  %bound1422 = icmp ult ptr %.0153216.us, %scevgep407
  %found.conflict423 = and i1 %bound0421, %bound1422
  %conflict.rdx424 = or i1 %conflict.rdx420, %found.conflict423
  %bound0425 = icmp ult ptr %.0165212.us, %scevgep411
  %bound1426 = icmp ult ptr %.0155215.us, %scevgep407
  %found.conflict427 = and i1 %bound0425, %bound1426
  %conflict.rdx428 = or i1 %conflict.rdx424, %found.conflict427
  %bound0429 = icmp ult ptr %.0165212.us, %scevgep412
  %bound1430 = icmp ult ptr %.0159214.us, %scevgep407
  %found.conflict431 = and i1 %bound0429, %bound1430
  %conflict.rdx432 = or i1 %conflict.rdx428, %found.conflict431
  %bound0433 = icmp ult ptr %.0165212.us, %scevgep413
  %bound1434 = icmp ult ptr %i.co, %scevgep407
  %found.conflict435 = and i1 %bound0433, %bound1434
  %conflict.rdx436 = or i1 %conflict.rdx432, %found.conflict435
  %bound0437 = icmp ult ptr %.0163213.us, %scevgep409
  %bound1438 = icmp ult ptr %.0151217.us, %scevgep408
  %found.conflict439 = and i1 %bound0437, %bound1438
  %conflict.rdx440 = or i1 %conflict.rdx436, %found.conflict439
  %bound0441 = icmp ult ptr %.0163213.us, %scevgep410
  %bound1442 = icmp ult ptr %.0153216.us, %scevgep408
  %found.conflict443 = and i1 %bound0441, %bound1442
  %conflict.rdx444 = or i1 %conflict.rdx440, %found.conflict443
  %bound0445 = icmp ult ptr %.0163213.us, %scevgep411
  %bound1446 = icmp ult ptr %.0155215.us, %scevgep408
  %found.conflict447 = and i1 %bound0445, %bound1446
  %conflict.rdx448 = or i1 %conflict.rdx444, %found.conflict447
  %bound0449 = icmp ult ptr %.0163213.us, %scevgep412
  %bound1450 = icmp ult ptr %.0159214.us, %scevgep408
  %found.conflict451 = and i1 %bound0449, %bound1450
  %conflict.rdx452 = or i1 %conflict.rdx448, %found.conflict451
  %bound0453 = icmp ult ptr %.0163213.us, %scevgep413
  %bound1454 = icmp ult ptr %i.co, %scevgep408
  %found.conflict455 = and i1 %bound0453, %bound1454
  %conflict.rdx456 = or i1 %conflict.rdx452, %found.conflict455
  br i1 %conflict.rdx456, label %vec.epilog.scalar.ph513.preheader, label %vector.main.loop.iter.check458

vector.main.loop.iter.check458:                   ; preds = %vector.memcheck406
  br i1 %min.iters.check459, label %vec.epilog.ph516, label %vector.ph460

vector.ph460:                                     ; preds = %vector.main.loop.iter.check458
  %i.dc = getelementptr i8, ptr %.0151217.us, i64 %i.bx ; 2 uses
  %i.dd = getelementptr i8, ptr %.0153216.us, i64 %i.bx ; 2 uses
  %i.de = getelementptr i8, ptr %.0155215.us, i64 %i.bx ; 2 uses
  %i.df = getelementptr i8, ptr %.0159214.us, i64 %i.bx ; 2 uses
  %i.dg = getelementptr i8, ptr %.0163213.us, i64 %i.bx ; 2 uses
  %i.dh = getelementptr i8, ptr %.0165212.us, i64 %i.bx ; 2 uses
  %i.di = load float, ptr %i.co, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert473 = insertelement <16 x float> poison, float %i.di, i64 0
  %broadcast.splat474 = shufflevector <16 x float> %broadcast.splatinsert473, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dj = load float, ptr %i.cu, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert476 = insertelement <16 x float> poison, float %i.dj, i64 0
  %broadcast.splat477 = shufflevector <16 x float> %broadcast.splatinsert476, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dk = load float, ptr %i.cv, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert479 = insertelement <16 x float> poison, float %i.dk, i64 0
  %broadcast.splat480 = shufflevector <16 x float> %broadcast.splatinsert479, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dl = load float, ptr %i.cs, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert482 = insertelement <16 x float> poison, float %i.dl, i64 0
  %broadcast.splat483 = shufflevector <16 x float> %broadcast.splatinsert482, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dm = load float, ptr %i.cw, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert485 = insertelement <16 x float> poison, float %i.dm, i64 0
  %broadcast.splat486 = shufflevector <16 x float> %broadcast.splatinsert485, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dn = load float, ptr %i.cx, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert488 = insertelement <16 x float> poison, float %i.dn, i64 0
  %broadcast.splat489 = shufflevector <16 x float> %broadcast.splatinsert488, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.do = load float, ptr %i.ct, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert491 = insertelement <16 x float> poison, float %i.do, i64 0
  %broadcast.splat492 = shufflevector <16 x float> %broadcast.splatinsert491, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dp = load float, ptr %i.cy, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert494 = insertelement <16 x float> poison, float %i.dp, i64 0
  %broadcast.splat495 = shufflevector <16 x float> %broadcast.splatinsert494, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dq = load float, ptr %i.cz, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert497 = insertelement <16 x float> poison, float %i.dq, i64 0
  %broadcast.splat498 = shufflevector <16 x float> %broadcast.splatinsert497, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body464

vector.body464:                                   ; preds = %vector.ph460, %vector.body464
  %index465 = phi i64 [ 0, %vector.ph460 ], [ %index.next502, %vector.body464 ] ; 2 uses
  %i.dr = shl i64 %index465, 2                    ; 6 uses
  %next.gep466 = getelementptr i8, ptr %.0151217.us, i64 %i.dr ; 3 uses
  %next.gep467 = getelementptr i8, ptr %.0153216.us, i64 %i.dr ; 3 uses
  %next.gep468 = getelementptr i8, ptr %.0155215.us, i64 %i.dr ; 3 uses
  %next.gep469 = getelementptr i8, ptr %.0159214.us, i64 %i.dr ; 3 uses
  %next.gep470 = getelementptr i8, ptr %.0163213.us, i64 %i.dr
  %next.gep471 = getelementptr i8, ptr %.0165212.us, i64 %i.dr
  %wide.load472 = load <16 x float>, ptr %next.gep469, align 4, !tbaa !45, !alias.scope !357
  %i.ds = fmul fast <16 x float> %broadcast.splat474, %wide.load472
  %i.dt = fadd fast <16 x float> %broadcast.splat463, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %next.gep469, i64 4
  %wide.load475 = load <16 x float>, ptr %i.du, align 4, !tbaa !45, !alias.scope !357
  %i.dv = fmul fast <16 x float> %broadcast.splat477, %wide.load475
  %i.dw = fadd fast <16 x float> %i.dv, %i.dt
  %i.dx = getelementptr inbounds nuw i8, ptr %next.gep469, i64 8
  %wide.load478 = load <16 x float>, ptr %i.dx, align 4, !tbaa !45, !alias.scope !357
  %i.dy = fmul fast <16 x float> %broadcast.splat480, %wide.load478
  %i.dz = fadd fast <16 x float> %i.dw, %i.dy
  %wide.load481 = load <16 x float>, ptr %next.gep468, align 4, !tbaa !45, !alias.scope !358 ; 2 uses
  %i.ea = fmul fast <16 x float> %broadcast.splat483, %wide.load481
  %i.eb = fadd fast <16 x float> %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %next.gep468, i64 4
  %wide.load484 = load <16 x float>, ptr %i.ec, align 4, !tbaa !45, !alias.scope !358 ; 2 uses
  %i.ed = fmul fast <16 x float> %broadcast.splat486, %wide.load484
  %i.ee = fadd fast <16 x float> %i.eb, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %next.gep468, i64 8
  %wide.load487 = load <16 x float>, ptr %i.ef, align 4, !tbaa !45, !alias.scope !358 ; 2 uses
  %i.eg = fmul fast <16 x float> %broadcast.splat489, %wide.load487
  %i.eh = fadd fast <16 x float> %i.ee, %i.eg
  %wide.load490 = load <16 x float>, ptr %next.gep467, align 4, !tbaa !45, !alias.scope !359 ; 2 uses
  %i.ei = fmul fast <16 x float> %broadcast.splat492, %wide.load490
  %i.ej = fadd fast <16 x float> %i.eh, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %next.gep467, i64 4
  %wide.load493 = load <16 x float>, ptr %i.ek, align 4, !tbaa !45, !alias.scope !359 ; 2 uses
  %i.el = fmul fast <16 x float> %broadcast.splat495, %wide.load493
  %i.em = fadd fast <16 x float> %i.ej, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %next.gep467, i64 8
  %wide.load496 = load <16 x float>, ptr %i.en, align 4, !tbaa !45, !alias.scope !359 ; 2 uses
  %i.eo = fmul fast <16 x float> %broadcast.splat498, %wide.load496
  %i.ep = fadd fast <16 x float> %i.em, %i.eo
  %i.eq = fmul fast <16 x float> %wide.load481, %broadcast.splat474
  %i.er = fadd fast <16 x float> %broadcast.splat463, %i.eq
  %i.es = fmul fast <16 x float> %wide.load484, %broadcast.splat477
  %i.et = fadd fast <16 x float> %i.es, %i.er
  %i.eu = fmul fast <16 x float> %wide.load487, %broadcast.splat480
  %i.ev = fadd fast <16 x float> %i.et, %i.eu
  %i.ew = fmul fast <16 x float> %wide.load490, %broadcast.splat483
  %i.ex = fadd fast <16 x float> %i.ev, %i.ew
  %i.ey = fmul fast <16 x float> %wide.load493, %broadcast.splat486
  %i.ez = fadd fast <16 x float> %i.ex, %i.ey
  %i.fa = fmul fast <16 x float> %wide.load496, %broadcast.splat489
  %i.fb = fadd fast <16 x float> %i.ez, %i.fa
  %wide.load499 = load <16 x float>, ptr %next.gep466, align 4, !tbaa !45, !alias.scope !360
  %i.fc = fmul fast <16 x float> %wide.load499, %broadcast.splat492
  %i.fd = fadd fast <16 x float> %i.fb, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %next.gep466, i64 4
  %wide.load500 = load <16 x float>, ptr %i.fe, align 4, !tbaa !45, !alias.scope !360
  %i.ff = fmul fast <16 x float> %wide.load500, %broadcast.splat495
  %i.fg = fadd fast <16 x float> %i.fd, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %next.gep466, i64 8
  %wide.load501 = load <16 x float>, ptr %i.fh, align 4, !tbaa !45, !alias.scope !360
  %i.fi = fmul fast <16 x float> %wide.load501, %broadcast.splat498
  %i.fj = fadd fast <16 x float> %i.fg, %i.fi
  store <16 x float> %i.ep, ptr %next.gep471, align 4, !tbaa !45, !alias.scope !361, !noalias !362
  store <16 x float> %i.fj, ptr %next.gep470, align 4, !tbaa !45, !alias.scope !363, !noalias !364
  %index.next502 = add nuw i64 %index465, 16      ; 2 uses
  %i.fk = icmp eq i64 %index.next502, %n.vec461
  br i1 %i.fk, label %middle.block503, label %vector.body464, !llvm.loop !340

middle.block503:                                  ; preds = %vector.body464
  br i1 %cmp.n504, label %._crit_edge.us, label %vec.epilog.iter.check514

vec.epilog.iter.check514:                         ; preds = %middle.block503
  br i1 %min.epilog.iters.check515, label %vec.epilog.scalar.ph513.preheader, label %vec.epilog.ph516, !prof !100

vec.epilog.ph516:                                 ; preds = %vector.main.loop.iter.check458, %vec.epilog.iter.check514
  %vec.epilog.resume.val505 = phi i64 [ %n.vec461, %vec.epilog.iter.check514 ], [ 0, %vector.main.loop.iter.check458 ]
  %i.fl = getelementptr i8, ptr %.0151217.us, i64 %i.ca ; 2 uses
  %i.fm = getelementptr i8, ptr %.0153216.us, i64 %i.ca ; 2 uses
  %i.fn = getelementptr i8, ptr %.0155215.us, i64 %i.ca ; 2 uses
  %i.fo = getelementptr i8, ptr %.0159214.us, i64 %i.ca ; 2 uses
  %i.fp = getelementptr i8, ptr %.0163213.us, i64 %i.ca ; 2 uses
  %i.fq = getelementptr i8, ptr %.0165212.us, i64 %i.ca ; 2 uses
  %i.fr = load float, ptr %i.co, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert529 = insertelement <4 x float> poison, float %i.fr, i64 0
  %broadcast.splat530 = shufflevector <4 x float> %broadcast.splatinsert529, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fs = load float, ptr %i.cu, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert532 = insertelement <4 x float> poison, float %i.fs, i64 0
  %broadcast.splat533 = shufflevector <4 x float> %broadcast.splatinsert532, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ft = load float, ptr %i.cv, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert535 = insertelement <4 x float> poison, float %i.ft, i64 0
  %broadcast.splat536 = shufflevector <4 x float> %broadcast.splatinsert535, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fu = load float, ptr %i.cs, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert538 = insertelement <4 x float> poison, float %i.fu, i64 0
  %broadcast.splat539 = shufflevector <4 x float> %broadcast.splatinsert538, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fv = load float, ptr %i.cw, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert541 = insertelement <4 x float> poison, float %i.fv, i64 0
  %broadcast.splat542 = shufflevector <4 x float> %broadcast.splatinsert541, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fw = load float, ptr %i.cx, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert544 = insertelement <4 x float> poison, float %i.fw, i64 0
  %broadcast.splat545 = shufflevector <4 x float> %broadcast.splatinsert544, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fx = load float, ptr %i.ct, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert547 = insertelement <4 x float> poison, float %i.fx, i64 0
  %broadcast.splat548 = shufflevector <4 x float> %broadcast.splatinsert547, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fy = load float, ptr %i.cy, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert550 = insertelement <4 x float> poison, float %i.fy, i64 0
  %broadcast.splat551 = shufflevector <4 x float> %broadcast.splatinsert550, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fz = load float, ptr %i.cz, align 4, !tbaa !45, !alias.scope !356
  %broadcast.splatinsert553 = insertelement <4 x float> poison, float %i.fz, i64 0
  %broadcast.splat554 = shufflevector <4 x float> %broadcast.splatinsert553, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vec.epilog.vector.body520

vec.epilog.vector.body520:                        ; preds = %vec.epilog.vector.body520, %vec.epilog.ph516
  %index521 = phi i64 [ %vec.epilog.resume.val505, %vec.epilog.ph516 ], [ %index.next558, %vec.epilog.vector.body520 ] ; 2 uses
  %i.ga = shl i64 %index521, 2                    ; 6 uses
  %next.gep522 = getelementptr i8, ptr %.0151217.us, i64 %i.ga ; 3 uses
  %next.gep523 = getelementptr i8, ptr %.0153216.us, i64 %i.ga ; 3 uses
  %next.gep524 = getelementptr i8, ptr %.0155215.us, i64 %i.ga ; 3 uses
  %next.gep525 = getelementptr i8, ptr %.0159214.us, i64 %i.ga ; 3 uses
  %next.gep526 = getelementptr i8, ptr %.0163213.us, i64 %i.ga
  %next.gep527 = getelementptr i8, ptr %.0165212.us, i64 %i.ga
  %wide.load528 = load <4 x float>, ptr %next.gep525, align 4, !tbaa !45, !alias.scope !357
  %i.gb = fmul fast <4 x float> %broadcast.splat530, %wide.load528
  %i.gc = fadd fast <4 x float> %broadcast.splat519, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %next.gep525, i64 4
  %wide.load531 = load <4 x float>, ptr %i.gd, align 4, !tbaa !45, !alias.scope !357
  %i.ge = fmul fast <4 x float> %broadcast.splat533, %wide.load531
  %i.gf = fadd fast <4 x float> %i.ge, %i.gc
  %i.gg = getelementptr inbounds nuw i8, ptr %next.gep525, i64 8
  %wide.load534 = load <4 x float>, ptr %i.gg, align 4, !tbaa !45, !alias.scope !357
  %i.gh = fmul fast <4 x float> %broadcast.splat536, %wide.load534
  %i.gi = fadd fast <4 x float> %i.gf, %i.gh
  %wide.load537 = load <4 x float>, ptr %next.gep524, align 4, !tbaa !45, !alias.scope !358 ; 2 uses
  %i.gj = fmul fast <4 x float> %broadcast.splat539, %wide.load537
  %i.gk = fadd fast <4 x float> %i.gi, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %next.gep524, i64 4
  %wide.load540 = load <4 x float>, ptr %i.gl, align 4, !tbaa !45, !alias.scope !358 ; 2 uses
  %i.gm = fmul fast <4 x float> %broadcast.splat542, %wide.load540
  %i.gn = fadd fast <4 x float> %i.gk, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %next.gep524, i64 8
  %wide.load543 = load <4 x float>, ptr %i.go, align 4, !tbaa !45, !alias.scope !358 ; 2 uses
  %i.gp = fmul fast <4 x float> %broadcast.splat545, %wide.load543
  %i.gq = fadd fast <4 x float> %i.gn, %i.gp
  %wide.load546 = load <4 x float>, ptr %next.gep523, align 4, !tbaa !45, !alias.scope !359 ; 2 uses
  %i.gr = fmul fast <4 x float> %broadcast.splat548, %wide.load546
  %i.gs = fadd fast <4 x float> %i.gq, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %next.gep523, i64 4
  %wide.load549 = load <4 x float>, ptr %i.gt, align 4, !tbaa !45, !alias.scope !359 ; 2 uses
  %i.gu = fmul fast <4 x float> %broadcast.splat551, %wide.load549
  %i.gv = fadd fast <4 x float> %i.gs, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %next.gep523, i64 8
  %wide.load552 = load <4 x float>, ptr %i.gw, align 4, !tbaa !45, !alias.scope !359 ; 2 uses
  %i.gx = fmul fast <4 x float> %broadcast.splat554, %wide.load552
  %i.gy = fadd fast <4 x float> %i.gv, %i.gx
  %i.gz = fmul fast <4 x float> %wide.load537, %broadcast.splat530
  %i.ha = fadd fast <4 x float> %broadcast.splat519, %i.gz
  %i.hb = fmul fast <4 x float> %wide.load540, %broadcast.splat533
  %i.hc = fadd fast <4 x float> %i.hb, %i.ha
  %i.hd = fmul fast <4 x float> %wide.load543, %broadcast.splat536
  %i.he = fadd fast <4 x float> %i.hc, %i.hd
  %i.hf = fmul fast <4 x float> %wide.load546, %broadcast.splat539
  %i.hg = fadd fast <4 x float> %i.he, %i.hf
  %i.hh = fmul fast <4 x float> %wide.load549, %broadcast.splat542
  %i.hi = fadd fast <4 x float> %i.hg, %i.hh
  %i.hj = fmul fast <4 x float> %wide.load552, %broadcast.splat545
  %i.hk = fadd fast <4 x float> %i.hi, %i.hj
  %wide.load555 = load <4 x float>, ptr %next.gep522, align 4, !tbaa !45, !alias.scope !360
  %i.hl = fmul fast <4 x float> %wide.load555, %broadcast.splat548
  %i.hm = fadd fast <4 x float> %i.hk, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %next.gep522, i64 4
  %wide.load556 = load <4 x float>, ptr %i.hn, align 4, !tbaa !45, !alias.scope !360
  %i.ho = fmul fast <4 x float> %wide.load556, %broadcast.splat551
  %i.hp = fadd fast <4 x float> %i.hm, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %next.gep522, i64 8
  %wide.load557 = load <4 x float>, ptr %i.hq, align 4, !tbaa !45, !alias.scope !360
  %i.hr = fmul fast <4 x float> %wide.load557, %broadcast.splat554
  %i.hs = fadd fast <4 x float> %i.hp, %i.hr
  store <4 x float> %i.gy, ptr %next.gep527, align 4, !tbaa !45, !alias.scope !361, !noalias !362
  store <4 x float> %i.hs, ptr %next.gep526, align 4, !tbaa !45, !alias.scope !363, !noalias !364
  %index.next558 = add nuw i64 %index521, 4       ; 2 uses
  %i.ht = icmp eq i64 %index.next558, %n.vec517
  br i1 %i.ht, label %vec.epilog.middle.block559, label %vec.epilog.vector.body520, !llvm.loop !341

vec.epilog.middle.block559:                       ; preds = %vec.epilog.vector.body520
  br i1 %cmp.n560, label %._crit_edge.us, label %vec.epilog.scalar.ph513.preheader

vec.epilog.scalar.ph513.preheader:                ; preds = %iter.check512, %vector.memcheck406, %vec.epilog.iter.check514, %vec.epilog.middle.block559
  %.0149206.us.ph = phi i32 [ %i.s, %iter.check512 ], [ %i.s, %vector.memcheck406 ], [ %i.bw, %vec.epilog.iter.check514 ], [ %i.bz, %vec.epilog.middle.block559 ]
  %.1152205.us.ph = phi ptr [ %.0151217.us, %iter.check512 ], [ %.0151217.us, %vector.memcheck406 ], [ %i.dc, %vec.epilog.iter.check514 ], [ %i.fl, %vec.epilog.middle.block559 ]
  %.1154204.us.ph = phi ptr [ %.0153216.us, %iter.check512 ], [ %.0153216.us, %vector.memcheck406 ], [ %i.dd, %vec.epilog.iter.check514 ], [ %i.fm, %vec.epilog.middle.block559 ]
  %.1156203.us.ph = phi ptr [ %.0155215.us, %iter.check512 ], [ %.0155215.us, %vector.memcheck406 ], [ %i.de, %vec.epilog.iter.check514 ], [ %i.fn, %vec.epilog.middle.block559 ]
  %.1160202.us.ph = phi ptr [ %.0159214.us, %iter.check512 ], [ %.0159214.us, %vector.memcheck406 ], [ %i.df, %vec.epilog.iter.check514 ], [ %i.fo, %vec.epilog.middle.block559 ]
  %.1164201.us.ph = phi ptr [ %.0163213.us, %iter.check512 ], [ %.0163213.us, %vector.memcheck406 ], [ %i.dg, %vec.epilog.iter.check514 ], [ %i.fp, %vec.epilog.middle.block559 ]
  %.1166200.us.ph = phi ptr [ %.0165212.us, %iter.check512 ], [ %.0165212.us, %vector.memcheck406 ], [ %i.dh, %vec.epilog.iter.check514 ], [ %i.fq, %vec.epilog.middle.block559 ]
  br label %vec.epilog.scalar.ph513

vec.epilog.scalar.ph513:                          ; preds = %vec.epilog.scalar.ph513.preheader, %vec.epilog.scalar.ph513
  %.0149206.us = phi i32 [ %i.ih, %vec.epilog.scalar.ph513 ], [ %.0149206.us.ph, %vec.epilog.scalar.ph513.preheader ] ; 2 uses
  %.1152205.us = phi ptr [ %i.ic, %vec.epilog.scalar.ph513 ], [ %.1152205.us.ph, %vec.epilog.scalar.ph513.preheader ] ; 3 uses
  %.1154204.us = phi ptr [ %i.hz, %vec.epilog.scalar.ph513 ], [ %.1154204.us.ph, %vec.epilog.scalar.ph513.preheader ] ; 3 uses
  %.1156203.us = phi ptr [ %i.hx, %vec.epilog.scalar.ph513 ], [ %.1156203.us.ph, %vec.epilog.scalar.ph513.preheader ] ; 3 uses
  %.1160202.us = phi ptr [ %i.hu, %vec.epilog.scalar.ph513 ], [ %.1160202.us.ph, %vec.epilog.scalar.ph513.preheader ] ; 3 uses
  %.1164201.us = phi ptr [ %i.ig, %vec.epilog.scalar.ph513 ], [ %.1164201.us.ph, %vec.epilog.scalar.ph513.preheader ] ; 2 uses
  %.1166200.us = phi ptr [ %i.if, %vec.epilog.scalar.ph513 ], [ %.1166200.us.ph, %vec.epilog.scalar.ph513.preheader ] ; 2 uses
  %10 = load float, ptr %.1160202.us, align 4, !tbaa !45
  %11 = load float, ptr %i.co, align 4, !tbaa !45 ; 2 uses
  %12 = fmul fast float %11, %10
  %13 = fadd fast float %i.cn, %12
  %i.hu = getelementptr inbounds nuw i8, ptr %.1160202.us, i64 4 ; 3 uses
  %14 = load float, ptr %i.hu, align 4, !tbaa !45
  %15 = load float, ptr %i.cu, align 4, !tbaa !45 ; 2 uses
  %16 = fmul fast float %15, %14
  %17 = fadd fast float %16, %13
  %i.hv = getelementptr inbounds nuw i8, ptr %.1160202.us, i64 8
  %18 = load float, ptr %i.hv, align 4, !tbaa !45
  %19 = load float, ptr %i.cv, align 4, !tbaa !45 ; 2 uses
  %20 = fmul fast float %19, %18
  %21 = fadd fast float %17, %20
  %22 = load float, ptr %.1156203.us, align 4, !tbaa !45 ; 2 uses
  %i.hw = load float, ptr %i.cs, align 4, !tbaa !45 ; 2 uses
  %23 = fmul fast float %i.hw, %22
  %24 = fadd fast float %21, %23
  %i.hx = getelementptr inbounds nuw i8, ptr %.1156203.us, i64 4 ; 3 uses
  %25 = load float, ptr %i.hx, align 4, !tbaa !45 ; 2 uses
  %26 = load float, ptr %i.cw, align 4, !tbaa !45 ; 2 uses
  %27 = fmul fast float %26, %25
  %28 = fadd fast float %24, %27
  %29 = getelementptr inbounds nuw i8, ptr %.1156203.us, i64 8
  %30 = load float, ptr %29, align 4, !tbaa !45   ; 2 uses
  %31 = load float, ptr %i.cx, align 4, !tbaa !45 ; 2 uses
  %32 = fmul fast float %31, %30
  %33 = fadd fast float %28, %32
  %34 = load float, ptr %.1154204.us, align 4, !tbaa !45 ; 2 uses
  %i.hy = load float, ptr %i.ct, align 4, !tbaa !45 ; 2 uses
  %35 = fmul fast float %i.hy, %34
  %36 = fadd fast float %33, %35
  %i.hz = getelementptr inbounds nuw i8, ptr %.1154204.us, i64 4 ; 3 uses
  %37 = load float, ptr %i.hz, align 4, !tbaa !45 ; 2 uses
  %38 = load float, ptr %i.cy, align 4, !tbaa !45 ; 2 uses
  %39 = fmul fast float %38, %37
  %40 = fadd fast float %36, %39
  %41 = getelementptr inbounds nuw i8, ptr %.1154204.us, i64 8
  %42 = load float, ptr %41, align 4, !tbaa !45   ; 2 uses
  %i.ia = load float, ptr %i.cz, align 4, !tbaa !45 ; 2 uses
  %i.ib = fmul fast float %i.ia, %42
  %43 = fadd fast float %40, %i.ib
  %44 = fmul fast float %22, %11
  %op.rdx570 = fadd fast float %i.cn, %44
  %45 = fmul fast float %25, %15
  %46 = fadd fast float %45, %op.rdx570
  %47 = fmul fast float %30, %19
  %48 = fadd fast float %46, %47
  %49 = fmul fast float %34, %i.hw
  %50 = fadd fast float %48, %49
  %51 = fmul fast float %37, %26
  %52 = fadd fast float %50, %51
  %53 = fmul fast float %42, %31
  %54 = fadd fast float %52, %53
  %55 = load float, ptr %.1152205.us, align 4, !tbaa !45
  %56 = fmul fast float %55, %i.hy
  %57 = fadd fast float %54, %56
  %i.ic = getelementptr inbounds nuw i8, ptr %.1152205.us, i64 4 ; 3 uses
  %i.id = load float, ptr %i.ic, align 4, !tbaa !45
  %i.ie = fmul fast float %i.id, %38
  %58 = fadd fast float %57, %i.ie
  %59 = getelementptr inbounds nuw i8, ptr %.1152205.us, i64 8
  %60 = load float, ptr %59, align 4, !tbaa !45
  %61 = fmul fast float %60, %i.ia
  %op.rdx572 = fadd fast float %58, %61
  store float %43, ptr %.1166200.us, align 4, !tbaa !45
  store float %op.rdx572, ptr %.1164201.us, align 4, !tbaa !45
  %i.if = getelementptr inbounds nuw i8, ptr %.1166200.us, i64 4 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.1164201.us, i64 4 ; 2 uses
  %i.ih = add nsw i32 %.0149206.us, -1
  %i.ii = icmp sgt i32 %.0149206.us, 1
  br i1 %i.ii, label %vec.epilog.scalar.ph513, label %._crit_edge.us, !llvm.loop !342

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph513, %vec.epilog.middle.block559, %middle.block503
  %.lcssa303 = phi ptr [ %i.fo, %vec.epilog.middle.block559 ], [ %i.df, %middle.block503 ], [ %i.hu, %vec.epilog.scalar.ph513 ]
  %.lcssa302 = phi ptr [ %i.fn, %vec.epilog.middle.block559 ], [ %i.de, %middle.block503 ], [ %i.hx, %vec.epilog.scalar.ph513 ]
  %.lcssa301 = phi ptr [ %i.fm, %vec.epilog.middle.block559 ], [ %i.dd, %middle.block503 ], [ %i.hz, %vec.epilog.scalar.ph513 ]
  %.lcssa300 = phi ptr [ %i.fl, %vec.epilog.middle.block559 ], [ %i.dc, %middle.block503 ], [ %i.ic, %vec.epilog.scalar.ph513 ]
  %.lcssa299 = phi ptr [ %i.fq, %vec.epilog.middle.block559 ], [ %i.dh, %middle.block503 ], [ %i.if, %vec.epilog.scalar.ph513 ]
  %.lcssa = phi ptr [ %i.fp, %vec.epilog.middle.block559 ], [ %i.dg, %middle.block503 ], [ %i.ig, %vec.epilog.scalar.ph513 ]
  %i.ij = getelementptr inbounds [4 x i8], ptr %.lcssa303, i64 %i.ai ; 2 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %.lcssa302, i64 %i.ai ; 2 uses
  %i.il = getelementptr inbounds [4 x i8], ptr %.lcssa301, i64 %i.ai ; 2 uses
  %i.im = getelementptr inbounds [4 x i8], ptr %.lcssa300, i64 %i.ai
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.lcssa299, i64 %i.bb ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.bb
  %i.ip = add nuw nsw i32 %.0150218.us, 2         ; 2 uses
  %i.iq = or disjoint i32 %i.ip, 1
  %i.ir = icmp slt i32 %i.iq, %i.af
  br i1 %i.ir, label %iter.check512, label %.preheader, !llvm.loop !343

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph219.split.preheader, %_ZN4ncnn3MatD2Ev.exit171
  %.0165.lcssa = phi ptr [ %i.ck, %_ZN4ncnn3MatD2Ev.exit171 ], [ %scevgep277, %.lr.ph219.split.preheader ], [ %i.in, %._crit_edge.us ]
  %.0159.lcssa = phi ptr [ %i.cp, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv, %.lr.ph219.split.preheader ], [ %i.ij, %._crit_edge.us ]
  %.0155.lcssa = phi ptr [ %i.cq, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv269, %.lr.ph219.split.preheader ], [ %i.ik, %._crit_edge.us ]
  %.0153.lcssa = phi ptr [ %i.cr, %_ZN4ncnn3MatD2Ev.exit171 ], [ %indvars.iv272, %.lr.ph219.split.preheader ], [ %i.il, %._crit_edge.us ]
  %.0150.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit171 ], [ %i.ay, %.lr.ph219.split.preheader ], [ %i.ay, %._crit_edge.us ] ; 2 uses
  %i.is = icmp slt i32 %.0150.lcssa, %i.af
  br i1 %i.is, label %.lr.ph244, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph244:                                        ; preds = %.preheader
  %i.it = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.co, i64 20 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.co, i64 28 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.co, i64 32 ; 3 uses
  br i1 %i.bd, label %iter.check.preheader, label %_ZN4ncnn3MatD2Ev.exit

iter.check.preheader:                             ; preds = %.lr.ph244
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.cn, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert362 = insertelement <4 x float> poison, float %i.cn, i64 0
  %broadcast.splat363 = shufflevector <4 x float> %broadcast.splatinsert362, <4 x float> poison, <4 x i32> zeroinitializer
  br label %iter.check

iter.check:                                       ; preds = %iter.check.preheader, %._crit_edge
  %.1243 = phi i32 [ %i.nd, %._crit_edge ], [ %.0150.lcssa, %iter.check.preheader ]
  %.2242 = phi ptr [ %i.nc, %._crit_edge ], [ %.0153.lcssa, %iter.check.preheader ] ; 8 uses
  %.2157241 = phi ptr [ %i.nb, %._crit_edge ], [ %.0155.lcssa, %iter.check.preheader ] ; 8 uses
  %.2161240 = phi ptr [ %i.na, %._crit_edge ], [ %.0159.lcssa, %iter.check.preheader ] ; 8 uses
  %.2167239 = phi ptr [ %.lcssa308, %._crit_edge ], [ %.0165.lcssa, %iter.check.preheader ] ; 11 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.iz = getelementptr i8, ptr %.2167239, i64 %i.bg
  %scevgep309 = getelementptr i8, ptr %i.iz, i64 4 ; 4 uses
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
  %bound1322 = icmp ult ptr %i.co, %scevgep309
  %found.conflict323 = and i1 %bound0321, %bound1322
  %conflict.rdx324 = or i1 %conflict.rdx320, %found.conflict323
  br i1 %conflict.rdx324, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check325, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ja = getelementptr i8, ptr %.2242, i64 %i.ce ; 2 uses
  %i.jb = getelementptr i8, ptr %.2157241, i64 %i.ce ; 2 uses
  %i.jc = getelementptr i8, ptr %.2161240, i64 %i.ce ; 2 uses
  %i.jd = getelementptr i8, ptr %.2167239, i64 %i.ce ; 2 uses
  %i.je = load float, ptr %i.co, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert329 = insertelement <16 x float> poison, float %i.je, i64 0
  %broadcast.splat330 = shufflevector <16 x float> %broadcast.splatinsert329, <16 x float> poison, <16 x i32> zeroinitializer
  %i.jf = load float, ptr %i.it, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert332 = insertelement <16 x float> poison, float %i.jf, i64 0
  %broadcast.splat333 = shufflevector <16 x float> %broadcast.splatinsert332, <16 x float> poison, <16 x i32> zeroinitializer
  %i.jg = load float, ptr %i.iu, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert335 = insertelement <16 x float> poison, float %i.jg, i64 0
  %broadcast.splat336 = shufflevector <16 x float> %broadcast.splatinsert335, <16 x float> poison, <16 x i32> zeroinitializer
  %i.jh = load float, ptr %i.cs, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert338 = insertelement <16 x float> poison, float %i.jh, i64 0
  %broadcast.splat339 = shufflevector <16 x float> %broadcast.splatinsert338, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ji = load float, ptr %i.iv, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert341 = insertelement <16 x float> poison, float %i.ji, i64 0
  %broadcast.splat342 = shufflevector <16 x float> %broadcast.splatinsert341, <16 x float> poison, <16 x i32> zeroinitializer
  %i.jj = load float, ptr %i.iw, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert344 = insertelement <16 x float> poison, float %i.jj, i64 0
  %broadcast.splat345 = shufflevector <16 x float> %broadcast.splatinsert344, <16 x float> poison, <16 x i32> zeroinitializer
  %i.jk = load float, ptr %i.ct, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert347 = insertelement <16 x float> poison, float %i.jk, i64 0
  %broadcast.splat348 = shufflevector <16 x float> %broadcast.splatinsert347, <16 x float> poison, <16 x i32> zeroinitializer
  %i.jl = load float, ptr %i.ix, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert350 = insertelement <16 x float> poison, float %i.jl, i64 0
  %broadcast.splat351 = shufflevector <16 x float> %broadcast.splatinsert350, <16 x float> poison, <16 x i32> zeroinitializer
  %i.jm = load float, ptr %i.iy, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert353 = insertelement <16 x float> poison, float %i.jm, i64 0
  %broadcast.splat354 = shufflevector <16 x float> %broadcast.splatinsert353, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jn = shl i64 %index, 2                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.2242, i64 %i.jn ; 3 uses
  %next.gep326 = getelementptr i8, ptr %.2157241, i64 %i.jn ; 3 uses
  %next.gep327 = getelementptr i8, ptr %.2161240, i64 %i.jn ; 3 uses
  %next.gep328 = getelementptr i8, ptr %.2167239, i64 %i.jn
  %wide.load = load <16 x float>, ptr %next.gep327, align 4, !tbaa !45, !alias.scope !366
  %i.jo = fmul fast <16 x float> %broadcast.splat330, %wide.load
  %i.jp = fadd fast <16 x float> %broadcast.splat, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %next.gep327, i64 4
  %wide.load331 = load <16 x float>, ptr %i.jq, align 4, !tbaa !45, !alias.scope !366
  %i.jr = fmul fast <16 x float> %broadcast.splat333, %wide.load331
  %i.js = fadd fast <16 x float> %i.jr, %i.jp
  %i.jt = getelementptr inbounds nuw i8, ptr %next.gep327, i64 8
  %wide.load334 = load <16 x float>, ptr %i.jt, align 4, !tbaa !45, !alias.scope !366
  %i.ju = fmul fast <16 x float> %broadcast.splat336, %wide.load334
  %i.jv = fadd fast <16 x float> %i.js, %i.ju
  %wide.load337 = load <16 x float>, ptr %next.gep326, align 4, !tbaa !45, !alias.scope !367
  %i.jw = fmul fast <16 x float> %broadcast.splat339, %wide.load337
  %i.jx = fadd fast <16 x float> %i.jv, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %next.gep326, i64 4
  %wide.load340 = load <16 x float>, ptr %i.jy, align 4, !tbaa !45, !alias.scope !367
  %i.jz = fmul fast <16 x float> %broadcast.splat342, %wide.load340
  %i.ka = fadd fast <16 x float> %i.jx, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %next.gep326, i64 8
  %wide.load343 = load <16 x float>, ptr %i.kb, align 4, !tbaa !45, !alias.scope !367
  %i.kc = fmul fast <16 x float> %broadcast.splat345, %wide.load343
  %i.kd = fadd fast <16 x float> %i.ka, %i.kc
  %wide.load346 = load <16 x float>, ptr %next.gep, align 4, !tbaa !45, !alias.scope !368
  %i.ke = fmul fast <16 x float> %broadcast.splat348, %wide.load346
  %i.kf = fadd fast <16 x float> %i.kd, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %wide.load349 = load <16 x float>, ptr %i.kg, align 4, !tbaa !45, !alias.scope !368
  %i.kh = fmul fast <16 x float> %broadcast.splat351, %wide.load349
  %i.ki = fadd fast <16 x float> %i.kf, %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %wide.load352 = load <16 x float>, ptr %i.kj, align 4, !tbaa !45, !alias.scope !368
  %i.kk = fmul fast <16 x float> %broadcast.splat354, %wide.load352
  %i.kl = fadd fast <16 x float> %i.ki, %i.kk
  store <16 x float> %i.kl, ptr %next.gep328, align 4, !tbaa !45, !alias.scope !369, !noalias !370
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.km = icmp eq i64 %index.next, %n.vec
  br i1 %i.km, label %middle.block, label %vector.body, !llvm.loop !350

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.ja, i64 -4
  %ind.escape355 = getelementptr i8, ptr %i.jb, i64 -4
  %ind.escape356 = getelementptr i8, ptr %i.jc, i64 -4
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !100

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.kn = getelementptr i8, ptr %.2242, i64 %i.ch ; 2 uses
  %i.ko = getelementptr i8, ptr %.2157241, i64 %i.ch ; 2 uses
  %i.kp = getelementptr i8, ptr %.2161240, i64 %i.ch ; 2 uses
  %i.kq = getelementptr i8, ptr %.2167239, i64 %i.ch ; 2 uses
  %i.kr = load float, ptr %i.co, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert370 = insertelement <4 x float> poison, float %i.kr, i64 0
  %broadcast.splat371 = shufflevector <4 x float> %broadcast.splatinsert370, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ks = load float, ptr %i.it, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert373 = insertelement <4 x float> poison, float %i.ks, i64 0
  %broadcast.splat374 = shufflevector <4 x float> %broadcast.splatinsert373, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kt = load float, ptr %i.iu, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert376 = insertelement <4 x float> poison, float %i.kt, i64 0
  %broadcast.splat377 = shufflevector <4 x float> %broadcast.splatinsert376, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ku = load float, ptr %i.cs, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert379 = insertelement <4 x float> poison, float %i.ku, i64 0
  %broadcast.splat380 = shufflevector <4 x float> %broadcast.splatinsert379, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kv = load float, ptr %i.iv, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert382 = insertelement <4 x float> poison, float %i.kv, i64 0
  %broadcast.splat383 = shufflevector <4 x float> %broadcast.splatinsert382, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kw = load float, ptr %i.iw, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert385 = insertelement <4 x float> poison, float %i.kw, i64 0
  %broadcast.splat386 = shufflevector <4 x float> %broadcast.splatinsert385, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kx = load float, ptr %i.ct, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert388 = insertelement <4 x float> poison, float %i.kx, i64 0
  %broadcast.splat389 = shufflevector <4 x float> %broadcast.splatinsert388, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ky = load float, ptr %i.ix, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert391 = insertelement <4 x float> poison, float %i.ky, i64 0
  %broadcast.splat392 = shufflevector <4 x float> %broadcast.splatinsert391, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kz = load float, ptr %i.iy, align 4, !tbaa !45, !alias.scope !365
  %broadcast.splatinsert394 = insertelement <4 x float> poison, float %i.kz, i64 0
  %broadcast.splat395 = shufflevector <4 x float> %broadcast.splatinsert394, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index364 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next396, %vec.epilog.vector.body ] ; 2 uses
  %i.la = shl i64 %index364, 2                    ; 4 uses
  %next.gep365 = getelementptr i8, ptr %.2242, i64 %i.la ; 3 uses
  %next.gep366 = getelementptr i8, ptr %.2157241, i64 %i.la ; 3 uses
end_hunk_0
