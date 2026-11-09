Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gridsample_x86_avx512?download=true
inline.NumInlined: 683
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %i.acj = sitofp fast <2 x i32> %i.aam to <2 x float>
  %i.ack = fsub fast <2 x float> %i.aak, %i.acj
  store <2 x float> %i.ack, ptr %i.abi, align 4, !tbaa !40
  %i.acl = getelementptr inbounds nuw i8, ptr %.1258440, i64 4
  %i.acm = getelementptr inbounds nuw i8, ptr %.1256441, i64 4
  %i.acn = getelementptr inbounds nuw i8, ptr %.4443, i64 24
  %i.aco = add nuw nsw i32 %.1254442, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.aco, %i.e
  br i1 %exitcond.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !288

.loopexit:                                        ; preds = %bb.q, %._crit_edge, %middle.block, %vec.epilog.middle.block, %.preheader431, %.preheader430
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 17 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !333 ; 4 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader227, label %_ZN4ncnn3MatD2Ev.exit121

.preheader227:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader227
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit122.us.preheader, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph.split

_ZN4ncnn3MatD2Ev.exit122.us.preheader:            ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph
  %i.q = and i32 %i.e, 2147483632                 ; 6 uses
  %i.r = icmp slt i32 %i.q, %i.e
  %i.s = xor i32 %i.q, -1
  %i.t = add nsw i32 %i.e, %i.s                   ; 3 uses
  %i.u = lshr i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64                ; 3 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %scevgep423 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.x = shl nuw nsw i64 %i.v, 2
  %i.y = add nuw nsw i64 %i.v, 1                  ; 5 uses
  %min.iters.check425 = icmp ult i32 %i.t, 6
  %min.iters.check435 = icmp ult i32 %i.t, 30
  %i.z = and i64 %i.y, 12
  %n.vec437 = and i64 %i.y, 4294967280            ; 6 uses
  %i.aa = shl nuw nsw i64 %n.vec437, 2
  %i.ab = shl nuw nsw i64 %n.vec437, 3
  %i.ac = trunc nuw i64 %n.vec437 to i32
  %i.ad = shl i32 %i.ac, 1
  %i.ae = add i32 %i.q, %i.ad
  %broadcast.splatinsert442 = insertelement <16 x ptr> poison, ptr %i.p, i64 0
  %broadcast.splat443 = shufflevector <16 x ptr> %broadcast.splatinsert442, <16 x ptr> poison, <16 x i32> zeroinitializer
  %cmp.n455 = icmp eq i64 %i.y, %n.vec437
  %min.epilog.iters.check459 = icmp eq i64 %i.z, 0
  %n.vec462 = and i64 %i.y, 4294967292            ; 5 uses
  %i.af = shl nuw nsw i64 %n.vec462, 2
  %i.ag = shl nuw nsw i64 %n.vec462, 3
  %i.ah = trunc nuw i64 %n.vec462 to i32
  %i.ai = shl i32 %i.ah, 1
  %i.aj = add i32 %i.q, %i.ai
  %broadcast.splatinsert467 = insertelement <4 x ptr> poison, ptr %i.p, i64 0
  %broadcast.splat468 = shufflevector <4 x ptr> %broadcast.splatinsert467, <4 x ptr> poison, <4 x i32> zeroinitializer
  %cmp.n480 = icmp eq i64 %i.y, %n.vec462
  br label %_ZN4ncnn3MatD2Ev.exit122.us

_ZN4ncnn3MatD2Ev.exit122.us:                      ; preds = %_ZN4ncnn3MatD2Ev.exit122.us.preheader, %._crit_edge.us
  %indvars.iv267 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.us.preheader ], [ %indvars.iv.next268, %._crit_edge.us ] ; 2 uses
  %.0255.us = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.us.preheader ], [ %.2.lcssa.us, %._crit_edge.us ] ; 3 uses
  %.0255.us424 = ptrtoaddr ptr %.0255.us to i64
  %i.ak = load ptr, ptr %1, align 8, !tbaa !20, !noalias !334 ; 2 uses
  %i.al = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !334
  %i.am = mul i64 %i.al, %indvars.iv267
  %i.an = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !334
  %i.ao = mul i64 %i.am, %i.an                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ao
  br label %bb.a

bb.a:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit122.us, %bb.a
  %indvar = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.us ], [ %indvar.next, %bb.a ] ; 2 uses
  %.1244.us = phi ptr [ %.0255.us, %_ZN4ncnn3MatD2Ev.exit122.us ], [ %i.cc, %bb.a ] ; 2 uses
  %.0117243.us = phi ptr [ %i.ap, %_ZN4ncnn3MatD2Ev.exit122.us ], [ %i.cb, %bb.a ] ; 2 uses
  %.0119242.us = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122.us ], [ %i.cd, %bb.a ]
  %i.aq = load <16 x float>, ptr %.0117243.us, align 1, !tbaa !41 ; 2 uses
  %i.ar = shufflevector <16 x float> %i.aq, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.as = shufflevector <16 x float> %i.aq, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.at = load i32, ptr %i.n, align 4, !tbaa !37
  %i.au = sitofp fast i32 %i.at to float
  %i.av = insertelement <8 x float> poison, float %i.au, i64 0
  %i.aw = shufflevector <8 x float> %i.av, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ax = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00)
  %i.ay = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ax, <8 x float> nofpclass(nan inf) %i.aw, <8 x float> splat (float -1.000000e+00))
  %i.az = fmul fast <8 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = load i32, ptr %i.o, align 8, !tbaa !38
  %i.bb = sitofp fast i32 %i.ba to float
  %i.bc = insertelement <8 x float> poison, float %i.bb, i64 0
  %i.bd = shufflevector <8 x float> %i.bc, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.be = fadd fast <8 x float> %i.as, splat (float 1.000000e+00)
  %i.bf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.be, <8 x float> nofpclass(nan inf) %i.bd, <8 x float> splat (float -1.000000e+00))
  %i.bg = fmul fast <8 x float> %i.bf, splat (float 5.000000e-01)
  %i.bh = fadd fast <8 x float> %i.az, splat (float 5.000000e-01)
  %i.bi = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bh, i32 1) ; 3 uses
  %i.bj = fadd fast <8 x float> %i.bg, splat (float 5.000000e-01)
  %i.bk = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bj, i32 1) ; 3 uses
  %i.bl = fcmp fast ogt <8 x float> %i.bi, splat (float -1.000000e+00)
  %i.bm = fcmp fast ogt <8 x float> %i.aw, %i.bi
  %i.bn = and <8 x i1> %i.bl, %i.bm
  %i.bo = fcmp fast ogt <8 x float> %i.bk, splat (float -1.000000e+00)
  %i.bp = fcmp fast ogt <8 x float> %i.bd, %i.bk
  %i.bq = and <8 x i1> %i.bo, %i.bp
  %i.br = and <8 x i1> %i.bn, %i.bq
  %i.bs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bk, <8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.bi)
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bu = sitofp fast i32 %i.bt to float
  %i.bv = insertelement <8 x float> poison, float %i.bu, i64 0
  %i.bw = shufflevector <8 x float> %i.bv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bx = fmul fast <8 x float> %i.bw, %i.bs
  %i.by = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bx)
  %i.bz = bitcast <8 x i32> %i.by to <8 x float>
  %i.ca = select <8 x i1> %i.br, <8 x float> %i.bz, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.ca, ptr %.1244.us, align 1, !tbaa !41
  %i.cb = getelementptr i8, ptr %.0117243.us, i64 64 ; 8 uses
  %i.cc = getelementptr i8, ptr %.1244.us, i64 32 ; 11 uses
  %i.cd = add nuw nsw i32 %.0119242.us, 16        ; 2 uses
  %i.ce = or disjoint i32 %i.cd, 15
  %i.cf = icmp slt i32 %i.ce, %i.e
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cf, label %bb.a, label %..preheader_crit_edge.us, !llvm.loop !306

.lr.ph252.us:                                     ; preds = %.lr.ph252.us.preheader, %bb.c
  %.2251.us = phi ptr [ %i.de, %bb.c ], [ %.2251.us.ph, %.lr.ph252.us.preheader ] ; 2 uses
  %.1118250.us = phi ptr [ %i.dd, %bb.c ], [ %.1118250.us.ph, %.lr.ph252.us.preheader ] ; 2 uses
  %.1120249.us = phi i32 [ %i.df, %bb.c ], [ %.1120249.us.ph, %.lr.ph252.us.preheader ]
  %i.cg = load <2 x float>, ptr %.1118250.us, align 4, !tbaa !40
  %i.ch = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 3 uses
  %i.ci = sitofp fast <2 x i32> %i.ch to <2 x float>
  %i.cj = fmul fast <2 x float> %i.cg, splat (float 5.000000e-01)
  %i.ck = fadd fast <2 x float> %i.cj, splat (float 5.000000e-01)
  %i.cl = fmul fast <2 x float> %i.ck, %i.ci
  %i.cm = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.cl)
  %i.cn = fptosi <2 x float> %i.cm to <2 x i32>   ; 3 uses
  %i.co = extractelement <2 x i32> %i.cn, i64 0   ; 2 uses
  %i.cp = extractelement <2 x i32> %i.cn, i64 1   ; 2 uses
  %i.cq = or i32 %i.cp, %i.co
  %i.cr = icmp sgt i32 %i.cq, -1
  %i.cs = icmp sgt <2 x i32> %i.ch, %i.cn         ; 2 uses
  %i.ct = extractelement <2 x i1> %i.cs, i64 0
  %i.cu = and i1 %i.ct, %i.cr
  %i.cv = extractelement <2 x i1> %i.cs, i64 1
  %i.cw = and i1 %i.cv, %i.cu
  br i1 %i.cw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph252.us
  %i.cx = extractelement <2 x i32> %i.ch, i64 0
  %i.cy = mul nuw nsw i32 %i.cx, %i.cp
  %i.cz = add nsw i32 %i.cy, %i.co
  %i.da = load i32, ptr %i.p, align 8, !tbaa !16
  %i.db = mul nsw i32 %i.da, %i.cz
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph252.us
  %i.dc = phi i32 [ %i.db, %bb.b ], [ -1, %.lr.ph252.us ]
  store i32 %i.dc, ptr %.2251.us, align 4, !tbaa !23
  %i.dd = getelementptr inbounds nuw i8, ptr %.1118250.us, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.2251.us, i64 4 ; 2 uses
  %i.df = add nuw nsw i32 %.1120249.us, 2         ; 2 uses
  %i.dg = icmp slt i32 %i.df, %i.e
  br i1 %i.dg, label %.lr.ph252.us, label %._crit_edge.us, !llvm.loop !307

._crit_edge.us:                                   ; preds = %bb.c, %middle.block454, %vec.epilog.middle.block479, %..preheader_crit_edge.us
  %.2.lcssa.us = phi ptr [ %i.cc, %..preheader_crit_edge.us ], [ %i.ev, %vec.epilog.middle.block479 ], [ %i.dt, %middle.block454 ], [ %i.de, %bb.c ]
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.dh = load i32, ptr %i.h, align 8, !tbaa !17
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next268, %i.di
  br i1 %i.dj, label %_ZN4ncnn3MatD2Ev.exit122.us, label %.loopexit, !llvm.loop !308

..preheader_crit_edge.us:                         ; preds = %bb.a
  br i1 %i.r, label %iter.check456, label %._crit_edge.us

iter.check456:                                    ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check425, label %.lr.ph252.us.preheader, label %vector.memcheck426

vector.memcheck426:                               ; preds = %iter.check456
  %i.dk = ptrtoaddr ptr %i.cc to i64
  %reass.sub = sub i64 %i.dk, %.0255.us424
  %i.dl = getelementptr i8, ptr %.0255.us, i64 %i.x
  %i.dm = getelementptr i8, ptr %i.dl, i64 %reass.sub
  %i.dn = getelementptr i8, ptr %i.dm, i64 4      ; 2 uses
  %i.do = shl nuw nsw i64 %indvar, 6
  %i.dp = getelementptr i8, ptr %i.ak, i64 %i.ao
  %i.dq = getelementptr i8, ptr %i.dp, i64 %i.w
  %i.dr = getelementptr i8, ptr %i.dq, i64 72
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.do
  %bound0427 = icmp ult ptr %i.cc, %scevgep423
  %bound1428 = icmp ult ptr %i.p, %i.dn
  %found.conflict429 = and i1 %bound0427, %bound1428
  %bound0430 = icmp ult ptr %i.cc, %i.ds
  %bound1431 = icmp ult ptr %i.cb, %i.dn
  %found.conflict432 = and i1 %bound0430, %bound1431
  %conflict.rdx433 = or i1 %found.conflict429, %found.conflict432
  br i1 %conflict.rdx433, label %.lr.ph252.us.preheader, label %vector.main.loop.iter.check434

vector.main.loop.iter.check434:                   ; preds = %vector.memcheck426
  br i1 %min.iters.check435, label %vec.epilog.ph460, label %vector.ph436

vector.ph436:                                     ; preds = %vector.main.loop.iter.check434
  %i.dt = getelementptr i8, ptr %i.cc, i64 %i.aa  ; 2 uses
  %i.du = getelementptr i8, ptr %i.cb, i64 %i.ab
  %i.dv = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat439 = shufflevector <1 x i32> %i.dv, <1 x i32> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dw = sitofp fast <16 x i32> %broadcast.splat439 to <16 x float>
  %i.dx = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat441 = shufflevector <1 x i32> %i.dx, <1 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dy = sitofp fast <16 x i32> %broadcast.splat441 to <16 x float>
  br label %vector.body444

vector.body444:                                   ; preds = %vector.ph436, %vector.body444
  %index445 = phi i64 [ 0, %vector.ph436 ], [ %index.next453, %vector.body444 ] ; 3 uses
  %i.dz = shl i64 %index445, 2
  %next.gep446 = getelementptr i8, ptr %i.cc, i64 %i.dz
  %i.ea = shl i64 %index445, 3
  %next.gep447 = getelementptr i8, ptr %i.cb, i64 %i.ea
  %wide.vec448 = load <32 x float>, ptr %next.gep447, align 4, !tbaa !40, !alias.scope !335 ; 2 uses
  %strided.vec449 = shufflevector <32 x float> %wide.vec448, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec450 = shufflevector <32 x float> %wide.vec448, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.eb = fmul fast <16 x float> %strided.vec449, splat (float 5.000000e-01)
  %i.ec = fadd fast <16 x float> %i.eb, splat (float 5.000000e-01)
  %i.ed = fmul fast <16 x float> %i.ec, %i.dw
  %i.ee = fmul fast <16 x float> %strided.vec450, splat (float 5.000000e-01)
  %i.ef = fadd fast <16 x float> %i.ee, splat (float 5.000000e-01)
  %i.eg = fmul fast <16 x float> %i.ef, %i.dy
  %i.eh = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.ed)
  %i.ei = fptosi <16 x float> %i.eh to <16 x i32> ; 3 uses
  %i.ej = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.eg)
  %i.ek = fptosi <16 x float> %i.ej to <16 x i32> ; 3 uses
  %i.el = icmp sgt <16 x i32> %broadcast.splat439, %i.ei
  %i.em = or <16 x i32> %i.ek, %i.ei
  %i.en = icmp sgt <16 x i32> %i.em, splat (i32 -1)
  %i.eo = and <16 x i1> %i.el, %i.en
  %i.ep = icmp sgt <16 x i32> %broadcast.splat441, %i.ek
  %i.eq = and <16 x i1> %i.ep, %i.eo              ; 2 uses
  %i.er = mul nuw nsw <16 x i32> %broadcast.splat439, %i.ek
  %i.es = add nsw <16 x i32> %i.er, %i.ei
  %wide.masked.gather451 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat443, <16 x i1> %i.eq, <16 x i32> poison), !tbaa !16, !alias.scope !336
  %i.et = mul nsw <16 x i32> %wide.masked.gather451, %i.es
  %predphi452 = select <16 x i1> %i.eq, <16 x i32> %i.et, <16 x i32> splat (i32 -1)
  store <16 x i32> %predphi452, ptr %next.gep446, align 4, !tbaa !23, !alias.scope !337, !noalias !338
  %index.next453 = add nuw i64 %index445, 16      ; 2 uses
  %i.eu = icmp eq i64 %index.next453, %n.vec437
  br i1 %i.eu, label %middle.block454, label %vector.body444, !llvm.loop !313

middle.block454:                                  ; preds = %vector.body444
  br i1 %cmp.n455, label %._crit_edge.us, label %vec.epilog.iter.check457

vec.epilog.iter.check457:                         ; preds = %middle.block454
  br i1 %min.epilog.iters.check459, label %.lr.ph252.us.preheader, label %vec.epilog.ph460, !prof !45

vec.epilog.ph460:                                 ; preds = %vector.main.loop.iter.check434, %vec.epilog.iter.check457
  %vec.epilog.resume.val461 = phi i64 [ %n.vec437, %vec.epilog.iter.check457 ], [ 0, %vector.main.loop.iter.check434 ]
  %i.ev = getelementptr i8, ptr %i.cc, i64 %i.af  ; 2 uses
  %i.ew = getelementptr i8, ptr %i.cb, i64 %i.ag
  %i.ex = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat464 = shufflevector <1 x i32> %i.ex, <1 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ey = sitofp fast <4 x i32> %broadcast.splat464 to <4 x float>
  %i.ez = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat466 = shufflevector <1 x i32> %i.ez, <1 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fa = sitofp fast <4 x i32> %broadcast.splat466 to <4 x float>
  br label %vec.epilog.vector.body469

vec.epilog.vector.body469:                        ; preds = %vec.epilog.vector.body469, %vec.epilog.ph460
  %index470 = phi i64 [ %vec.epilog.resume.val461, %vec.epilog.ph460 ], [ %index.next478, %vec.epilog.vector.body469 ] ; 3 uses
  %i.fb = shl i64 %index470, 2
  %next.gep471 = getelementptr i8, ptr %i.cc, i64 %i.fb
  %i.fc = shl i64 %index470, 3
  %next.gep472 = getelementptr i8, ptr %i.cb, i64 %i.fc
  %wide.vec473 = load <8 x float>, ptr %next.gep472, align 4, !tbaa !40, !alias.scope !335 ; 2 uses
  %strided.vec474 = shufflevector <8 x float> %wide.vec473, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec475 = shufflevector <8 x float> %wide.vec473, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fd = fmul fast <4 x float> %strided.vec474, splat (float 5.000000e-01)
  %i.fe = fadd fast <4 x float> %i.fd, splat (float 5.000000e-01)
  %i.ff = fmul fast <4 x float> %i.fe, %i.ey
  %i.fg = fmul fast <4 x float> %strided.vec475, splat (float 5.000000e-01)
  %i.fh = fadd fast <4 x float> %i.fg, splat (float 5.000000e-01)
  %i.fi = fmul fast <4 x float> %i.fh, %i.fa
  %i.fj = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.ff)
  %i.fk = fptosi <4 x float> %i.fj to <4 x i32>   ; 3 uses
  %i.fl = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.fi)
  %i.fm = fptosi <4 x float> %i.fl to <4 x i32>   ; 3 uses
  %i.fn = icmp sgt <4 x i32> %broadcast.splat464, %i.fk
  %i.fo = or <4 x i32> %i.fm, %i.fk
  %i.fp = icmp sgt <4 x i32> %i.fo, splat (i32 -1)
  %i.fq = and <4 x i1> %i.fn, %i.fp
  %i.fr = icmp sgt <4 x i32> %broadcast.splat466, %i.fm
  %i.fs = and <4 x i1> %i.fr, %i.fq               ; 2 uses
  %i.ft = mul nuw nsw <4 x i32> %broadcast.splat464, %i.fm
  %i.fu = add nsw <4 x i32> %i.ft, %i.fk
  %wide.masked.gather476 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat468, <4 x i1> %i.fs, <4 x i32> poison), !tbaa !16, !alias.scope !336
  %i.fv = mul nsw <4 x i32> %wide.masked.gather476, %i.fu
  %predphi477 = select <4 x i1> %i.fs, <4 x i32> %i.fv, <4 x i32> splat (i32 -1)
  store <4 x i32> %predphi477, ptr %next.gep471, align 4, !tbaa !23, !alias.scope !337, !noalias !338
  %index.next478 = add nuw i64 %index470, 4       ; 2 uses
  %i.fw = icmp eq i64 %index.next478, %n.vec462
  br i1 %i.fw, label %vec.epilog.middle.block479, label %vec.epilog.vector.body469, !llvm.loop !314

vec.epilog.middle.block479:                       ; preds = %vec.epilog.vector.body469
  br i1 %cmp.n480, label %._crit_edge.us, label %.lr.ph252.us.preheader

.lr.ph252.us.preheader:                           ; preds = %iter.check456, %vector.memcheck426, %vec.epilog.iter.check457, %vec.epilog.middle.block479
  %.2251.us.ph = phi ptr [ %i.cc, %iter.check456 ], [ %i.cc, %vector.memcheck426 ], [ %i.dt, %vec.epilog.iter.check457 ], [ %i.ev, %vec.epilog.middle.block479 ]
  %.1118250.us.ph = phi ptr [ %i.cb, %iter.check456 ], [ %i.cb, %vector.memcheck426 ], [ %i.du, %vec.epilog.iter.check457 ], [ %i.ew, %vec.epilog.middle.block479 ]
  %.1120249.us.ph = phi i32 [ %i.q, %iter.check456 ], [ %i.q, %vector.memcheck426 ], [ %i.ae, %vec.epilog.iter.check457 ], [ %i.aj, %vec.epilog.middle.block479 ]
  br label %.lr.ph252.us

_ZN4ncnn3MatD2Ev.exit122.lr.ph.split:             ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph
  %i.fx = icmp sgt i32 %i.e, 0
  br i1 %i.fx, label %_ZN4ncnn3MatD2Ev.exit122.preheader, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph.split
  %.pre = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !334
  %.pre270 = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !334
  %i.fy = load ptr, ptr %1, align 8, !tbaa !20, !noalias !334 ; 2 uses
  %factor.op.mul = mul i64 %.pre, %.pre270
  %i.fz = add nsw i32 %i.e, -1
  %i.ga = lshr i32 %i.fz, 1
  %i.gb = zext nneg i32 %i.ga to i64              ; 3 uses
  %i.gc = shl nuw nsw i64 %i.gb, 3
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.gd = shl nuw nsw i64 %i.gb, 2
  %i.ge = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %min.iters.check355 = icmp ult i32 %i.e, 7
  %i.gf = getelementptr i8, ptr %i.fy, i64 %i.gc
  %i.gg = getelementptr i8, ptr %i.gf, i64 8
  %n.vec389 = and i64 %i.ge, 4294967292           ; 5 uses
  %i.gh = shl nuw nsw i64 %n.vec389, 2
  %i.gi = shl nuw nsw i64 %n.vec389, 3
  %i.gj = trunc nuw i64 %n.vec389 to i32
  %i.gk = shl i32 %i.gj, 1
  %broadcast.splatinsert394 = insertelement <4 x ptr> poison, ptr %i.p, i64 0
  %broadcast.splat395 = shufflevector <4 x ptr> %broadcast.splatinsert394, <4 x ptr> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gl = icmp eq i64 %n.vec389, 4
  %cmp.n407 = icmp eq i64 %i.ge, %n.vec389
  br label %iter.check383

iter.check383:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit122.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0255 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.preheader ], [ %.lcssa296, %._crit_edge ] ; 8 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv   ; 2 uses
  %i.gm = getelementptr i8, ptr %i.fy, i64 %.reass ; 6 uses
  br i1 %min.iters.check355, label %vec.epilog.scalar.ph385.preheader, label %vector.memcheck356

vector.memcheck356:                               ; preds = %iter.check383
  %i.gn = getelementptr i8, ptr %.0255, i64 %i.gd
  %i.go = getelementptr i8, ptr %i.gn, i64 4      ; 2 uses
  %i.gp = getelementptr i8, ptr %i.gg, i64 %.reass
  %bound0357 = icmp ult ptr %.0255, %scevgep
  %bound1358 = icmp ult ptr %i.p, %i.go
  %found.conflict359 = and i1 %bound0357, %bound1358
  %bound0360 = icmp ult ptr %.0255, %i.gp
  %bound1361 = icmp ult ptr %i.gm, %i.go
  %found.conflict362 = and i1 %bound0360, %bound1361
  %conflict.rdx363 = or i1 %found.conflict359, %found.conflict362
  br i1 %conflict.rdx363, label %vec.epilog.scalar.ph385.preheader, label %vec.epilog.ph387

vec.epilog.ph387:                                 ; preds = %vector.memcheck356
  %i.gq = getelementptr i8, ptr %.0255, i64 %i.gh ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gm, i64 %i.gi
  %i.gs = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat391 = shufflevector <1 x i32> %i.gs, <1 x i32> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.gt = sitofp fast <4 x i32> %broadcast.splat391 to <4 x float> ; 2 uses
  %i.gu = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat393 = shufflevector <1 x i32> %i.gu, <1 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.gv = sitofp fast <4 x i32> %broadcast.splat393 to <4 x float> ; 2 uses
  %wide.vec400 = load <8 x float>, ptr %i.gm, align 4, !tbaa !40, !alias.scope !339 ; 2 uses
  %strided.vec401 = shufflevector <8 x float> %wide.vec400, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec402 = shufflevector <8 x float> %wide.vec400, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gw = fmul fast <4 x float> %strided.vec401, splat (float 5.000000e-01)
  %i.gx = fadd fast <4 x float> %i.gw, splat (float 5.000000e-01)
  %i.gy = fmul fast <4 x float> %i.gx, %i.gt
  %i.gz = fmul fast <4 x float> %strided.vec402, splat (float 5.000000e-01)
  %i.ha = fadd fast <4 x float> %i.gz, splat (float 5.000000e-01)
  %i.hb = fmul fast <4 x float> %i.ha, %i.gv
  %i.hc = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.gy)
  %i.hd = fptosi <4 x float> %i.hc to <4 x i32>   ; 3 uses
  %i.he = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.hb)
  %i.hf = fptosi <4 x float> %i.he to <4 x i32>   ; 3 uses
  %i.hg = icmp sgt <4 x i32> %broadcast.splat391, %i.hd
  %i.hh = or <4 x i32> %i.hf, %i.hd
  %i.hi = icmp sgt <4 x i32> %i.hh, splat (i32 -1)
  %i.hj = and <4 x i1> %i.hg, %i.hi
  %i.hk = icmp sgt <4 x i32> %broadcast.splat393, %i.hf
  %i.hl = and <4 x i1> %i.hk, %i.hj               ; 2 uses
  %i.hm = mul nuw nsw <4 x i32> %broadcast.splat391, %i.hf
end_hunk_0
begin_hunk_1_@_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit123
  %broadcast.splat321 = shufflevector <1 x i32> %i.lm, <1 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.ln = add nsw <4 x i32> %broadcast.splat321, splat (i32 -1)
  %i.lo = sitofp fast <4 x i32> %i.ln to <4 x float> ; 3 uses
  %i.lp = sitofp fast <4 x i32> %broadcast.splat321 to <4 x float>
  %i.lq = fadd fast <4 x float> %i.lp, splat (float -1.000000e+00)
  %i.lr = load <1 x i32>, ptr %i.ir, align 8
  %broadcast.splat323 = shufflevector <1 x i32> %i.lr, <1 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ls = add nsw <4 x i32> %broadcast.splat323, splat (i32 -1)
  %i.lt = sitofp fast <4 x i32> %i.ls to <4 x float> ; 3 uses
  %i.lu = sitofp fast <4 x i32> %broadcast.splat323 to <4 x float>
  %i.lv = fadd fast <4 x float> %i.lu, splat (float -1.000000e+00)
  %broadcast.splatinsert324 = insertelement <4 x ptr> poison, ptr %i.is, i64 0
  %broadcast.splat325 = shufflevector <4 x ptr> %broadcast.splatinsert324, <4 x ptr> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index326 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next334, %vec.epilog.vector.body ] ; 2 uses
  %i.lw = shl i64 %index326, 2                    ; 3 uses
  %next.gep327 = getelementptr i8, ptr %.3.lcssa, i64 %i.lw
  %next.gep328 = getelementptr i8, ptr %.0112.lcssa, i64 %i.lw
  %next.gep329 = getelementptr i8, ptr %.0114.lcssa, i64 %i.lw
  %wide.load330 = load <4 x float>, ptr %next.gep329, align 4, !tbaa !40, !alias.scope !540
  %wide.load331 = load <4 x float>, ptr %next.gep328, align 4, !tbaa !40, !alias.scope !541
  %i.lx = fmul fast <4 x float> %wide.load330, splat (float 5.000000e-01)
  %i.ly = fadd fast <4 x float> %i.lx, splat (float 5.000000e-01)
  %i.lz = fmul fast <4 x float> %i.ly, %i.lo
  %i.ma = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.lz)
  %i.mb = fsub fast <4 x float> %i.ma, %i.lo
  %i.mc = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.mb)
  %i.md = fsub fast <4 x float> %i.lo, %i.mc
  %i.me = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.md, <4 x float> zeroinitializer)
  %i.mf = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.me, <4 x float> %i.lq)
  %i.mg = fmul fast <4 x float> %wide.load331, splat (float 5.000000e-01)
  %i.mh = fadd fast <4 x float> %i.mg, splat (float 5.000000e-01)
  %i.mi = fmul fast <4 x float> %i.mh, %i.lt
  %i.mj = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.mi)
  %i.mk = fsub fast <4 x float> %i.mj, %i.lt
  %i.ml = tail call fast <4 x float> @llvm.fabs.v4f32(<4 x float> %i.mk)
  %i.mm = fsub fast <4 x float> %i.lt, %i.ml
  %i.mn = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.mm, <4 x float> zeroinitializer)
  %i.mo = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.mn, <4 x float> %i.lv)
  %i.mp = fadd fast <4 x float> %i.mf, splat (float 5.000000e-01)
  %i.mq = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.mp)
  %i.mr = fptosi <4 x float> %i.mq to <4 x i32>   ; 3 uses
  %i.ms = fadd fast <4 x float> %i.mo, splat (float 5.000000e-01)
  %i.mt = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.ms)
  %i.mu = fptosi <4 x float> %i.mt to <4 x i32>   ; 3 uses
  %i.mv = icmp sgt <4 x i32> %broadcast.splat321, %i.mr
  %i.mw = or <4 x i32> %i.mu, %i.mr
  %i.mx = icmp sgt <4 x i32> %i.mw, splat (i32 -1)
  %i.my = and <4 x i1> %i.mv, %i.mx
  %i.mz = icmp sgt <4 x i32> %broadcast.splat323, %i.mu
  %i.na = and <4 x i1> %i.mz, %i.my               ; 2 uses
  %i.nb = mul nuw nsw <4 x i32> %broadcast.splat321, %i.mu
  %i.nc = add nsw <4 x i32> %i.nb, %i.mr
  %wide.masked.gather332 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %broadcast.splat325, <4 x i1> %i.na, <4 x i32> poison), !tbaa !16, !alias.scope !542
  %i.nd = mul nsw <4 x i32> %wide.masked.gather332, %i.nc
  %predphi333 = select <4 x i1> %i.na, <4 x i32> %i.nd, <4 x i32> splat (i32 -1)
  store <4 x i32> %predphi333, ptr %next.gep327, align 4, !tbaa !23, !alias.scope !543, !noalias !544
  %index.next334 = add nuw i64 %index326, 4       ; 2 uses
  %i.ne = icmp eq i64 %index.next334, %n.vec319
  br i1 %i.ne, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !529

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n335 = icmp eq i64 %i.iw, %n.vec319
  br i1 %cmp.n335, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.4249.ph = phi ptr [ %.3.lcssa, %iter.check ], [ %.3.lcssa, %vector.memcheck ], [ %i.ji, %vec.epilog.iter.check ], [ %i.lh, %vec.epilog.middle.block ]
  %.1111248.ph = phi i32 [ %.0110.lcssa, %iter.check ], [ %.0110.lcssa, %vector.memcheck ], [ %i.jk, %vec.epilog.iter.check ], [ %i.lj, %vec.epilog.middle.block ]
  %.1113247.ph = phi ptr [ %.0112.lcssa, %iter.check ], [ %.0112.lcssa, %vector.memcheck ], [ %i.jl, %vec.epilog.iter.check ], [ %i.lk, %vec.epilog.middle.block ]
  %.1115246.ph = phi ptr [ %.0114.lcssa, %iter.check ], [ %.0114.lcssa, %vector.memcheck ], [ %i.jm, %vec.epilog.iter.check ], [ %i.ll, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3242 = phi ptr [ %i.f, %.lr.ph ], [ %i.pb, %bb.c ] ; 2 uses
  %.0110241 = phi i32 [ 0, %.lr.ph ], [ %i.pc, %bb.c ]
  %.0112240 = phi ptr [ %i.ij, %.lr.ph ], [ %i.pa, %bb.c ] ; 2 uses
  %.0114239 = phi ptr [ %i.id, %.lr.ph ], [ %i.oz, %bb.c ] ; 2 uses
  %i.nf = load <8 x float>, ptr %.0114239, align 1, !tbaa !41
  %i.ng = load <8 x float>, ptr %.0112240, align 1, !tbaa !41
  %i.nh = load i32, ptr %i.il, align 4, !tbaa !37
  %i.ni = sitofp fast i32 %i.nh to float
  %i.nj = insertelement <8 x float> poison, float %i.ni, i64 0
  %i.nk = shufflevector <8 x float> %i.nj, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.nl = fmul fast <8 x float> %i.nf, splat (float 5.000000e-01)
  %i.nm = fadd fast <8 x float> %i.nl, splat (float 5.000000e-01)
  %i.nn = fadd fast <8 x float> %i.nk, splat (float -1.000000e+00) ; 2 uses
  %i.no = fmul fast <8 x float> %i.nn, %i.nm
  %i.np = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.no)
  %i.nq = fsub fast <8 x float> %i.np, %i.nn
  %i.nr = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.nq)
  %i.ns = load i32, ptr %i.im, align 8, !tbaa !38
  %i.nt = sitofp fast i32 %i.ns to float
  %i.nu = insertelement <8 x float> poison, float %i.nt, i64 0
  %i.nv = shufflevector <8 x float> %i.nu, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.nw = fmul fast <8 x float> %i.ng, splat (float 5.000000e-01)
  %i.nx = fadd fast <8 x float> %i.nw, splat (float 5.000000e-01)
  %i.ny = fadd fast <8 x float> %i.nv, splat (float -1.000000e+00) ; 2 uses
  %i.nz = fmul fast <8 x float> %i.ny, %i.nx
  %i.oa = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.nz)
  %i.ob = fsub fast <8 x float> %i.oa, %i.ny
  %i.oc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ob)
  %i.od = fadd fast <8 x float> %i.nk, splat (float -5.000000e-01)
  %i.oe = fsub fast <8 x float> %i.od, %i.nr
  %i.of = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.oe, i32 1) ; 3 uses
  %i.og = fadd fast <8 x float> %i.nv, splat (float -5.000000e-01)
  %i.oh = fsub fast <8 x float> %i.og, %i.oc
  %i.oi = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.oh, i32 1) ; 3 uses
  %i.oj = fcmp fast ogt <8 x float> %i.of, splat (float -1.000000e+00)
  %i.ok = fcmp fast ogt <8 x float> %i.nk, %i.of
  %i.ol = and <8 x i1> %i.oj, %i.ok
  %i.om = fcmp fast ogt <8 x float> %i.oi, splat (float -1.000000e+00)
  %i.on = fcmp fast ogt <8 x float> %i.nv, %i.oi
  %i.oo = and <8 x i1> %i.om, %i.on
  %i.op = and <8 x i1> %i.ol, %i.oo
  %i.oq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.oi, <8 x float> nofpclass(nan inf) %i.nk, <8 x float> nofpclass(nan inf) %i.of)
  %i.or = load i32, ptr %i.in, align 8, !tbaa !16
  %i.os = sitofp fast i32 %i.or to float
  %i.ot = insertelement <8 x float> poison, float %i.os, i64 0
  %i.ou = shufflevector <8 x float> %i.ot, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ov = fmul fast <8 x float> %i.ou, %i.oq
  %i.ow = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ov)
  %i.ox = bitcast <8 x i32> %i.ow to <8 x float>
  %i.oy = select <8 x i1> %i.op, <8 x float> %i.ox, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.oy, ptr %.3242, align 1, !tbaa !41
  %i.oz = getelementptr inbounds nuw i8, ptr %.0114239, i64 32 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.0112240, i64 32 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.3242, i64 32 ; 2 uses
  %i.pc = add nuw nsw i32 %.0110241, 8            ; 2 uses
  %i.pd = or disjoint i32 %i.pc, 7
  %i.pe = icmp slt i32 %i.pd, %i.e
  br i1 %i.pe, label %bb.c, label %.preheader237.loopexit, !llvm.loop !530

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %bb.e
  %.4249 = phi ptr [ %i.qr, %bb.e ], [ %.4249.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1111248 = phi i32 [ %i.qs, %bb.e ], [ %.1111248.ph, %vec.epilog.scalar.ph.preheader ]
  %.1113247 = phi ptr [ %i.qq, %bb.e ], [ %.1113247.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1115246 = phi ptr [ %i.qp, %bb.e ], [ %.1115246.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.pf = load float, ptr %.1115246, align 4, !tbaa !40
  %i.pg = load float, ptr %.1113247, align 4, !tbaa !40
  %i.ph = load <2 x i32>, ptr %i.iq, align 4, !tbaa !23 ; 4 uses
  %i.pi = insertelement <2 x float> poison, float %i.pf, i64 0
  %i.pj = insertelement <2 x float> %i.pi, float %i.pg, i64 1
  %i.pk = fmul fast <2 x float> %i.pj, splat (float 5.000000e-01)
  %i.pl = fadd fast <2 x float> %i.pk, splat (float 5.000000e-01)
  %i.pm = add nsw <2 x i32> %i.ph, splat (i32 -1)
  %i.pn = sitofp fast <2 x i32> %i.pm to <2 x float> ; 3 uses
  %i.po = fmul fast <2 x float> %i.pl, %i.pn
  %i.pp = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.po)
  %i.pq = fsub fast <2 x float> %i.pp, %i.pn
  %i.pr = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pq)
  %i.ps = fsub fast <2 x float> %i.pn, %i.pr
  %i.pt = sitofp fast <2 x i32> %i.ph to <2 x float>
  %i.pu = fadd fast <2 x float> %i.pt, splat (float -1.000000e+00)
  %i.pv = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ps, <2 x float> zeroinitializer)
  %i.pw = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.pv, <2 x float> %i.pu)
  %i.px = fadd fast <2 x float> %i.pw, splat (float 5.000000e-01)
  %i.py = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.px)
  %i.pz = fptosi <2 x float> %i.py to <2 x i32>   ; 3 uses
  %i.qa = extractelement <2 x i32> %i.pz, i64 0   ; 2 uses
  %i.qb = extractelement <2 x i32> %i.pz, i64 1   ; 2 uses
  %i.qc = or i32 %i.qb, %i.qa
  %i.qd = icmp sgt i32 %i.qc, -1
  %i.qe = icmp sgt <2 x i32> %i.ph, %i.pz         ; 2 uses
  %i.qf = extractelement <2 x i1> %i.qe, i64 0
  %i.qg = and i1 %i.qf, %i.qd
  %i.qh = extractelement <2 x i1> %i.qe, i64 1
  %i.qi = and i1 %i.qh, %i.qg
  br i1 %i.qi, label %bb.d, label %bb.e

bb.d:                                             ; preds = %vec.epilog.scalar.ph
  %i.qj = extractelement <2 x i32> %i.ph, i64 0
  %i.qk = mul nuw nsw i32 %i.qj, %i.qb
  %i.ql = add nsw i32 %i.qk, %i.qa
  %i.qm = load i32, ptr %i.is, align 8, !tbaa !16
  %i.qn = mul nsw i32 %i.qm, %i.ql
  br label %bb.e

bb.e:                                             ; preds = %vec.epilog.scalar.ph, %bb.d
  %i.qo = phi i32 [ %i.qn, %bb.d ], [ -1, %vec.epilog.scalar.ph ]
  store i32 %i.qo, ptr %.4249, align 4, !tbaa !23
  %i.qp = getelementptr inbounds nuw i8, ptr %.1115246, i64 4
  %i.qq = getelementptr inbounds nuw i8, ptr %.1113247, i64 4
  %i.qr = getelementptr inbounds nuw i8, ptr %.4249, i64 4
  %i.qs = add nuw nsw i32 %.1111248, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.qs, %i.e
  br i1 %exitcond.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !531

.loopexit:                                        ; preds = %bb.e, %._crit_edge, %middle.block, %vec.epilog.middle.block, %.preheader237, %.preheader236
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit399:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 12 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !569 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader492, label %_ZN4ncnn3MatD2Ev.exit397

.preheader492:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit399
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit398.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit398.lr.ph:                   ; preds = %.preheader492
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 15 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 14 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 31 uses
  %i.q = and i32 %i.e, -16
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 52
  %broadcast.splatinsert935 = insertelement <16 x ptr> poison, ptr %i.p, i64 0
  %broadcast.splat936 = shufflevector <16 x ptr> %broadcast.splatinsert935, <16 x ptr> poison, <16 x i32> zeroinitializer ; 28 uses
  br label %_ZN4ncnn3MatD2Ev.exit398

_ZN4ncnn3MatD2Ev.exit398:                         ; preds = %_ZN4ncnn3MatD2Ev.exit398.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0380536 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !570
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !570
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !570
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph520, label %.preheader

.preheader:                                       ; preds = %.lr.ph520, %_ZN4ncnn3MatD2Ev.exit398
  %.0395.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.qo, %.lr.ph520 ] ; 6 uses
  %.0393.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.q, %.lr.ph520 ] ; 5 uses
  %.1.lcssa = phi ptr [ %.0380536, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.qn, %.lr.ph520 ] ; 8 uses
  %i.x = icmp slt i32 %.0393.lcssa, %i.e
  br i1 %i.x, label %.lr.ph533.preheader, label %._crit_edge

.lr.ph533.preheader:                              ; preds = %.preheader
  %i.y = xor i32 %.0393.lcssa, -1
  %i.z = add i32 %i.e, %i.y                       ; 2 uses
  %4 = zext i32 %i.z to i64                       ; 2 uses
  %5 = lshr i64 %4, 1
  %6 = add nuw nsw i64 %5, 1                      ; 2 uses
  %min.iters.check916 = icmp ult i32 %i.z, 30
  br i1 %min.iters.check916, label %.lr.ph533.preheader1117, label %vector.memcheck917

vector.memcheck917:                               ; preds = %.lr.ph533.preheader
  %7 = lshr i64 %4, 1                             ; 2 uses
  %i.aa = mul nuw nsw i64 %7, 72
  %i.ab = getelementptr i8, ptr %.1.lcssa, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 72     ; 2 uses
  %i.ad = shl nuw nsw i64 %7, 3
  %i.ae = getelementptr i8, ptr %.0395.lcssa, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %bound0918 = icmp ult ptr %.1.lcssa, %i.af
  %bound1919 = icmp ult ptr %.0395.lcssa, %i.ac
  %found.conflict920 = and i1 %bound0918, %bound1919
  %bound0921 = icmp ult ptr %.1.lcssa, %scevgep
  %bound1922 = icmp ult ptr %i.p, %i.ac
  %found.conflict923 = and i1 %bound0921, %bound1922
  %conflict.rdx924 = or i1 %found.conflict920, %found.conflict923
  br i1 %conflict.rdx924, label %.lr.ph533.preheader1117, label %vector.ph925

vector.ph925:                                     ; preds = %vector.memcheck917
  %n.vec926 = and i64 %6, 4294967280              ; 5 uses
  %i.ag = mul nuw nsw i64 %n.vec926, 72
  %i.ah = getelementptr i8, ptr %.1.lcssa, i64 %i.ag ; 2 uses
  %i.ai = trunc nuw i64 %n.vec926 to i32
  %i.aj = shl i32 %i.ai, 1
  %i.ak = add i32 %.0393.lcssa, %i.aj
  %i.al = shl nuw nsw i64 %n.vec926, 3
  %i.am = getelementptr i8, ptr %.0395.lcssa, i64 %i.al
  %i.an = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat928 = shufflevector <1 x i32> %i.an, <1 x i32> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ao = sitofp fast <16 x i32> %broadcast.splat928 to <16 x float>
  %i.ap = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat930 = shufflevector <1 x i32> %i.ap, <1 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.aq = sitofp fast <16 x i32> %broadcast.splat930 to <16 x float>
  br label %vector.body937

vector.body937:                                   ; preds = %vector.body937, %vector.ph925
  %index938 = phi i64 [ 0, %vector.ph925 ], [ %index.next1024, %vector.body937 ] ; 2 uses
  %pointer.phi939 = phi ptr [ %.1.lcssa, %vector.ph925 ], [ %ptr.ind1025, %vector.body937 ] ; 2 uses
  %vector.gep940 = getelementptr i8, ptr %pointer.phi939, <16 x i64> <i64 0, i64 72, i64 144, i64 216, i64 288, i64 360, i64 432, i64 504, i64 576, i64 648, i64 720, i64 792, i64 864, i64 936, i64 1008, i64 1080> ; 18 uses
  %i.ar = shl i64 %index938, 3
  %next.gep941 = getelementptr i8, ptr %.0395.lcssa, i64 %i.ar
  %wide.vec = load <32 x float>, ptr %next.gep941, align 4, !tbaa !40, !alias.scope !571 ; 2 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec942 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.as = fmul fast <16 x float> %strided.vec, splat (float 5.000000e-01)
  %i.at = fadd fast <16 x float> %i.as, splat (float 5.000000e-01)
  %i.au = fmul fast <16 x float> %i.at, %i.ao
  %i.av = fadd fast <16 x float> %i.au, splat (float -5.000000e-01) ; 2 uses
  %i.aw = fmul fast <16 x float> %strided.vec942, splat (float 5.000000e-01)
  %i.ax = fadd fast <16 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fmul fast <16 x float> %i.ax, %i.aq
  %i.az = fadd fast <16 x float> %i.ay, splat (float -5.000000e-01) ; 2 uses
  %i.ba = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.av)
  %i.bb = fptosi <16 x float> %i.ba to <16 x i32> ; 13 uses
  %i.bc = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.az)
  %i.bd = fptosi <16 x float> %i.bc to <16 x i32> ; 9 uses
  %i.be = add nsw <16 x i32> %i.bb, splat (i32 -1)
  %i.bf = add nsw <16 x i32> %i.bb, splat (i32 1)
  %i.bg = add nsw <16 x i32> %i.bb, splat (i32 2)
  %i.bh = sitofp fast <16 x i32> %i.bb to <16 x float>
  %i.bi = fsub fast <16 x float> %i.av, %i.bh
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.bi, <16 x ptr> align 4 %vector.gep940, <16 x i1> splat (i1 true)), !tbaa !40, !alias.scope !572, !noalias !573
  %i.bj = sitofp fast <16 x i32> %i.bd to <16 x float>
  %i.bk = fsub fast <16 x float> %i.az, %i.bj
  %wide.gep943 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 4
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.bk, <16 x ptr> align 4 %wide.gep943, <16 x i1> splat (i1 true)), !tbaa !40, !alias.scope !572, !noalias !573
  %i.bl = sitofp fast <16 x i32> %i.be to <16 x float>
  %i.bm = fptosi <16 x float> %i.bl to <16 x i32> ; 6 uses
  %i.bn = sitofp fast <16 x i32> %i.bf to <16 x float>
  %i.bo = fptosi <16 x float> %i.bn to <16 x i32> ; 9 uses
  %i.bp = sitofp fast <16 x i32> %i.bg to <16 x float>
  %i.bq = fptosi <16 x float> %i.bp to <16 x i32> ; 9 uses
  %i.br = icmp sgt <16 x i32> %i.bb, splat (i32 -1)
  %i.bs = icmp sgt <16 x i32> %broadcast.splat928, %i.bb
  %i.bt = and <16 x i1> %i.br, %i.bs              ; 10 uses
  %i.bu = icmp sgt <16 x i32> %i.bm, splat (i32 -1)
  %i.bv = icmp sgt <16 x i32> %broadcast.splat928, %i.bm
  %i.bw = and <16 x i1> %i.bu, %i.bv
  %i.bx = icmp sgt <16 x i32> %i.bo, splat (i32 -1)
  %i.by = icmp sgt <16 x i32> %broadcast.splat928, %i.bo
  %i.bz = and <16 x i1> %i.bx, %i.by              ; 7 uses
  %i.ca = icmp sgt <16 x i32> %i.bq, splat (i32 -1)
  %i.cb = icmp sgt <16 x i32> %broadcast.splat928, %i.bq
  %i.cc = and <16 x i1> %i.ca, %i.cb              ; 7 uses
  %wide.gep944 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 8 ; 3 uses
  %i.cd = add <16 x i32> %i.bd, splat (i32 -1)
  %i.ce = freeze <16 x i1> %i.bw                  ; 12 uses
  %i.cf = sitofp fast <16 x i32> %i.cd to <16 x float>
  %i.cg = fptosi <16 x float> %i.cf to <16 x i32> ; 3 uses
  %i.ch = mul nsw <16 x i32> %broadcast.splat928, %i.cg ; 4 uses
  %i.ci = icmp sgt <16 x i32> %i.cg, splat (i32 -1)
  %i.cj = icmp sgt <16 x i32> %broadcast.splat930, %i.cg
  %i.ck = and <16 x i1> %i.ci, %i.cj              ; 5 uses
  %i.cl = and <16 x i1> %i.bt, %i.ck              ; 4 uses
  %i.cm = and <16 x i1> %i.bz, %i.ck              ; 4 uses
  %i.cn = and <16 x i1> %i.cc, %i.ck              ; 3 uses
  %i.co = xor <16 x i1> %i.ce, splat (i1 true)    ; 27 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep944, <16 x i1> %i.co), !tbaa !23, !alias.scope !572, !noalias !573
  %i.cp = select <16 x i1> %i.co, <16 x i1> %i.cl, <16 x i1> zeroinitializer
  %i.cq = add nsw <16 x i32> %i.ch, %i.bb         ; 2 uses
  %wide.masked.gather945 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.cp, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.cr = mul nsw <16 x i32> %wide.masked.gather945, %i.cq
  %predphi946 = select <16 x i1> %i.cl, <16 x i32> %i.cr, <16 x i32> splat (i32 -1)
  %wide.gep947 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 12 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi946, <16 x ptr> align 4 %wide.gep947, <16 x i1> %i.co), !tbaa !23, !alias.scope !572, !noalias !573
  %i.cs = select <16 x i1> %i.co, <16 x i1> %i.cm, <16 x i1> zeroinitializer
  %i.ct = add nsw <16 x i32> %i.ch, %i.bo         ; 2 uses
  %wide.masked.gather948 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.cs, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.cu = mul nsw <16 x i32> %wide.masked.gather948, %i.ct
  %predphi949 = select <16 x i1> %i.cm, <16 x i32> %i.cu, <16 x i32> splat (i32 -1)
  %wide.gep950 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 16 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi949, <16 x ptr> align 4 %wide.gep950, <16 x i1> %i.co), !tbaa !23, !alias.scope !572, !noalias !573
  %i.cv = select <16 x i1> %i.co, <16 x i1> %i.cn, <16 x i1> zeroinitializer
  %i.cw = add nsw <16 x i32> %i.ch, %i.bq         ; 2 uses
  %wide.masked.gather951 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.cv, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.cx = mul nsw <16 x i32> %wide.masked.gather951, %i.cw
  %predphi952 = select <16 x i1> %i.cn, <16 x i32> %i.cx, <16 x i32> splat (i32 -1)
  %wide.gep953 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 20 ; 2 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi952, <16 x ptr> align 4 %wide.gep953, <16 x i1> %i.co), !tbaa !23, !alias.scope !572, !noalias !573
  %wide.gep954 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 24 ; 3 uses
  %i.cy = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1068 = shufflevector <1 x i32> %i.cy, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.cz = mul nsw <16 x i32> %broadcast.splat1068, %i.bd ; 3 uses
  %i.da = icmp sgt <16 x i32> %i.bd, splat (i32 -1) ; 2 uses
  %i.db = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1071 = shufflevector <1 x i32> %i.db, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.dc = icmp sgt <16 x i32> %broadcast.splat1071, %i.bd
  %i.dd = and <16 x i1> %i.da, %i.dc              ; 3 uses
  %i.de = and <16 x i1> %i.bt, %i.dd              ; 2 uses
  %i.df = and <16 x i1> %i.bz, %i.dd              ; 2 uses
  %i.dg = and <16 x i1> %i.cc, %i.dd              ; 2 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep954, <16 x i1> %i.co), !tbaa !23, !alias.scope !572, !noalias !573
  %i.dh = select <16 x i1> %i.co, <16 x i1> %i.de, <16 x i1> zeroinitializer
  %i.di = add nsw <16 x i32> %i.cz, %i.bb
  %wide.masked.gather957 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.dh, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.dj = mul nsw <16 x i32> %wide.masked.gather957, %i.di
  %predphi958 = select <16 x i1> %i.de, <16 x i32> %i.dj, <16 x i32> splat (i32 -1)
  %wide.gep959 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 28 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi958, <16 x ptr> align 4 %wide.gep959, <16 x i1> %i.co), !tbaa !23, !alias.scope !572, !noalias !573
  %i.dk = select <16 x i1> %i.co, <16 x i1> %i.df, <16 x i1> zeroinitializer
  %i.dl = add nsw <16 x i32> %i.cz, %i.bo
  %wide.masked.gather960 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.dk, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.dm = mul nsw <16 x i32> %wide.masked.gather960, %i.dl
  %predphi961 = select <16 x i1> %i.df, <16 x i32> %i.dm, <16 x i32> splat (i32 -1)
  %wide.gep962 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 32 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi961, <16 x ptr> align 4 %wide.gep962, <16 x i1> %i.co), !tbaa !23, !alias.scope !572, !noalias !573
  %i.dn = select <16 x i1> %i.co, <16 x i1> %i.dg, <16 x i1> zeroinitializer
  %i.do = add nsw <16 x i32> %i.cz, %i.bq
  %wide.masked.gather963 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.dn, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.dp = mul nsw <16 x i32> %wide.masked.gather963, %i.do
  %predphi964 = select <16 x i1> %i.dg, <16 x i32> %i.dp, <16 x i32> splat (i32 -1)
  %wide.gep965 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 36 ; 2 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi964, <16 x ptr> align 4 %wide.gep965, <16 x i1> %i.co), !tbaa !23, !alias.scope !572, !noalias !573
  %wide.gep966 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 40 ; 3 uses
  %i.dq = add <16 x i32> %i.bd, splat (i32 1)
  %i.dr = sitofp fast <16 x i32> %i.dq to <16 x float>
  %i.ds = fptosi <16 x float> %i.dr to <16 x i32> ; 5 uses
  %i.dt = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1074 = shufflevector <1 x i32> %i.dt, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.du = mul nsw <16 x i32> %broadcast.splat1074, %i.ds ; 3 uses
  %i.dv = icmp sgt <16 x i32> %i.ds, splat (i32 -1) ; 2 uses
  %i.dw = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1077 = shufflevector <1 x i32> %i.dw, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.dx = icmp sgt <16 x i32> %broadcast.splat1077, %i.ds
  %i.dy = and <16 x i1> %i.dv, %i.dx              ; 3 uses
  %i.dz = and <16 x i1> %i.bt, %i.dy              ; 2 uses
  %i.ea = and <16 x i1> %i.bz, %i.dy              ; 2 uses
  %i.eb = and <16 x i1> %i.cc, %i.dy              ; 2 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep966, <16 x i1> %i.co), !tbaa !23, !alias.scope !572, !noalias !573
  %i.ec = select <16 x i1> %i.co, <16 x i1> %i.dz, <16 x i1> zeroinitializer
  %i.ed = add nsw <16 x i32> %i.du, %i.bb
  %wide.masked.gather969 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.ec, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.ee = mul nsw <16 x i32> %wide.masked.gather969, %i.ed
  %predphi970 = select <16 x i1> %i.dz, <16 x i32> %i.ee, <16 x i32> splat (i32 -1)
  %wide.gep971 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 44 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi970, <16 x ptr> align 4 %wide.gep971, <16 x i1> %i.co), !tbaa !23, !alias.scope !572, !noalias !573
  %i.ef = select <16 x i1> %i.co, <16 x i1> %i.ea, <16 x i1> zeroinitializer
  %i.eg = add nsw <16 x i32> %i.du, %i.bo
  %wide.masked.gather972 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.ef, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.eh = mul nsw <16 x i32> %wide.masked.gather972, %i.eg
  %predphi973 = select <16 x i1> %i.ea, <16 x i32> %i.eh, <16 x i32> splat (i32 -1)
  %wide.gep974 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 48 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi973, <16 x ptr> align 4 %wide.gep974, <16 x i1> %i.co), !tbaa !23, !alias.scope !572, !noalias !573
  %i.ei = select <16 x i1> %i.co, <16 x i1> %i.eb, <16 x i1> zeroinitializer
  %i.ej = add nsw <16 x i32> %i.du, %i.bq
  %wide.masked.gather975 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.ei, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.ek = mul nsw <16 x i32> %wide.masked.gather975, %i.ej
  %predphi976 = select <16 x i1> %i.eb, <16 x i32> %i.ek, <16 x i32> splat (i32 -1)
  %wide.gep977 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 52 ; 2 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi976, <16 x ptr> align 4 %wide.gep977, <16 x i1> %i.co), !tbaa !23, !alias.scope !572, !noalias !573
  %wide.gep978 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 56 ; 3 uses
  %i.el = add <16 x i32> %i.bd, splat (i32 2)
  %i.em = sitofp fast <16 x i32> %i.el to <16 x float>
  %i.en = fptosi <16 x float> %i.em to <16 x i32> ; 5 uses
  %i.eo = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1080 = shufflevector <1 x i32> %i.eo, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.ep = mul nsw <16 x i32> %broadcast.splat1080, %i.en ; 3 uses
  %i.eq = icmp sgt <16 x i32> %i.en, splat (i32 -1) ; 2 uses
  %i.er = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1083 = shufflevector <1 x i32> %i.er, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.es = icmp sgt <16 x i32> %broadcast.splat1083, %i.en
  %i.et = and <16 x i1> %i.eq, %i.es              ; 3 uses
  %i.eu = and <16 x i1> %i.bt, %i.et              ; 2 uses
  %i.ev = and <16 x i1> %i.bz, %i.et              ; 2 uses
  %i.ew = and <16 x i1> %i.cc, %i.et
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep978, <16 x i1> %i.co), !tbaa !23, !alias.scope !572, !noalias !573
  %i.ex = select <16 x i1> %i.co, <16 x i1> %i.eu, <16 x i1> zeroinitializer
  %i.ey = add nsw <16 x i32> %i.ep, %i.bb
  %wide.masked.gather981 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.ex, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.ez = mul nsw <16 x i32> %wide.masked.gather981, %i.ey
  %predphi982 = select <16 x i1> %i.eu, <16 x i32> %i.ez, <16 x i32> splat (i32 -1)
  %wide.gep983 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 60 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi982, <16 x ptr> align 4 %wide.gep983, <16 x i1> %i.co), !tbaa !23, !alias.scope !572, !noalias !573
  %i.fa = select <16 x i1> %i.co, <16 x i1> %i.ev, <16 x i1> zeroinitializer
  %i.fb = add nsw <16 x i32> %i.ep, %i.bo
  %wide.masked.gather984 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.fa, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.fc = mul nsw <16 x i32> %wide.masked.gather984, %i.fb
  %predphi985 = select <16 x i1> %i.ev, <16 x i32> %i.fc, <16 x i32> splat (i32 -1)
  %wide.gep986 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 64 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi985, <16 x ptr> align 4 %wide.gep986, <16 x i1> %i.co), !tbaa !23, !alias.scope !572, !noalias !573
  %i.fd = select <16 x i1> %i.co, <16 x i1> %i.ew, <16 x i1> zeroinitializer ; 2 uses
  %i.fe = add nsw <16 x i32> %i.ep, %i.bq
  %wide.masked.gather987 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.fd, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.ff = mul nsw <16 x i32> %wide.masked.gather987, %i.fe
  %i.fg = xor <16 x i1> %i.ck, splat (i1 true)
  %i.fh = select <16 x i1> %i.ce, <16 x i1> %i.fg, <16 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep944, <16 x i1> %i.fh), !tbaa !23, !alias.scope !572, !noalias !573
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep947, <16 x i1> %i.fh), !tbaa !23, !alias.scope !572, !noalias !573
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep950, <16 x i1> %i.fh), !tbaa !23, !alias.scope !572, !noalias !573
  %i.fi = select <16 x i1> %i.ce, <16 x i1> %i.ck, <16 x i1> zeroinitializer ; 7 uses
  %i.fj = add nsw <16 x i32> %i.ch, %i.bm
  %wide.masked.gather988 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.fi, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.fk = mul nsw <16 x i32> %wide.masked.gather988, %i.fj
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %i.fk, <16 x ptr> align 4 %wide.gep944, <16 x i1> %i.fi), !tbaa !23, !alias.scope !572, !noalias !573
  %i.fl = select <16 x i1> %i.fi, <16 x i1> %i.cl, <16 x i1> zeroinitializer
  %wide.masked.gather989 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.fl, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.fm = mul nsw <16 x i32> %wide.masked.gather989, %i.cq
  %predphi990 = select <16 x i1> %i.cl, <16 x i32> %i.fm, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi990, <16 x ptr> align 4 %wide.gep947, <16 x i1> %i.fi), !tbaa !23, !alias.scope !572, !noalias !573
  %i.fn = select <16 x i1> %i.fi, <16 x i1> %i.cm, <16 x i1> zeroinitializer
  %wide.masked.gather991 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.fn, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.fo = mul nsw <16 x i32> %wide.masked.gather991, %i.ct
  %predphi992 = select <16 x i1> %i.cm, <16 x i32> %i.fo, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi992, <16 x ptr> align 4 %wide.gep950, <16 x i1> %i.fi), !tbaa !23, !alias.scope !572, !noalias !573
  %i.fp = select <16 x i1> %i.fi, <16 x i1> %i.cn, <16 x i1> zeroinitializer ; 2 uses
  %wide.masked.gather993 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.fp, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.fq = mul nsw <16 x i32> %wide.masked.gather993, %i.cw
  %predphi994 = select <16 x i1> %i.fp, <16 x i32> %i.fq, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi994, <16 x ptr> align 4 %wide.gep953, <16 x i1> %i.ce), !tbaa !23, !alias.scope !572, !noalias !573
  %i.fr = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1086 = shufflevector <1 x i32> %i.fr, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.fs = mul nsw <16 x i32> %broadcast.splat1086, %i.bd ; 4 uses
  %i.ft = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1089 = shufflevector <1 x i32> %i.ft, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.fu = icmp sgt <16 x i32> %broadcast.splat1089, %i.bd
  %i.fv = and <16 x i1> %i.da, %i.fu              ; 4 uses
  %i.fw = and <16 x i1> %i.bz, %i.fv              ; 2 uses
  %i.fx = and <16 x i1> %i.cc, %i.fv
  %i.fy = xor <16 x i1> %i.fv, splat (i1 true)
  %i.fz = select <16 x i1> %i.ce, <16 x i1> %i.fy, <16 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep954, <16 x i1> %i.fz), !tbaa !23, !alias.scope !572, !noalias !573
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep959, <16 x i1> %i.fz), !tbaa !23, !alias.scope !572, !noalias !573
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep962, <16 x i1> %i.fz), !tbaa !23, !alias.scope !572, !noalias !573
  %i.ga = select <16 x i1> %i.ce, <16 x i1> %i.fv, <16 x i1> zeroinitializer ; 7 uses
  %i.gb = add nsw <16 x i32> %i.fs, %i.bm
  %wide.masked.gather997 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.ga, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.gc = mul nsw <16 x i32> %wide.masked.gather997, %i.gb
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %i.gc, <16 x ptr> align 4 %wide.gep954, <16 x i1> %i.ga), !tbaa !23, !alias.scope !572, !noalias !573
  %i.gd = select <16 x i1> %i.ga, <16 x i1> %i.bt, <16 x i1> zeroinitializer
  %i.ge = add nsw <16 x i32> %i.fs, %i.bb
  %wide.masked.gather998 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.gd, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.gf = mul nsw <16 x i32> %wide.masked.gather998, %i.ge
  %predphi999 = select <16 x i1> %i.bt, <16 x i32> %i.gf, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi999, <16 x ptr> align 4 %wide.gep959, <16 x i1> %i.ga), !tbaa !23, !alias.scope !572, !noalias !573
  %i.gg = select <16 x i1> %i.ga, <16 x i1> %i.fw, <16 x i1> zeroinitializer
  %i.gh = add nsw <16 x i32> %i.fs, %i.bo
  %wide.masked.gather1000 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.gg, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.gi = mul nsw <16 x i32> %wide.masked.gather1000, %i.gh
  %predphi1001 = select <16 x i1> %i.fw, <16 x i32> %i.gi, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1001, <16 x ptr> align 4 %wide.gep962, <16 x i1> %i.ga), !tbaa !23, !alias.scope !572, !noalias !573
  %i.gj = select <16 x i1> %i.ga, <16 x i1> %i.fx, <16 x i1> zeroinitializer ; 2 uses
  %i.gk = add nsw <16 x i32> %i.fs, %i.bq
  %wide.masked.gather1002 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.gj, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.gl = mul nsw <16 x i32> %wide.masked.gather1002, %i.gk
  %predphi1003 = select <16 x i1> %i.gj, <16 x i32> %i.gl, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1003, <16 x ptr> align 4 %wide.gep965, <16 x i1> %i.ce), !tbaa !23, !alias.scope !572, !noalias !573
  %i.gm = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1092 = shufflevector <1 x i32> %i.gm, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.gn = mul nsw <16 x i32> %broadcast.splat1092, %i.ds ; 4 uses
  %i.go = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1095 = shufflevector <1 x i32> %i.go, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.gp = icmp sgt <16 x i32> %broadcast.splat1095, %i.ds
  %i.gq = and <16 x i1> %i.dv, %i.gp              ; 4 uses
  %i.gr = and <16 x i1> %i.bz, %i.gq              ; 2 uses
  %i.gs = and <16 x i1> %i.cc, %i.gq
  %i.gt = xor <16 x i1> %i.gq, splat (i1 true)
  %i.gu = select <16 x i1> %i.ce, <16 x i1> %i.gt, <16 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep966, <16 x i1> %i.gu), !tbaa !23, !alias.scope !572, !noalias !573
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep971, <16 x i1> %i.gu), !tbaa !23, !alias.scope !572, !noalias !573
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep974, <16 x i1> %i.gu), !tbaa !23, !alias.scope !572, !noalias !573
  %i.gv = select <16 x i1> %i.ce, <16 x i1> %i.gq, <16 x i1> zeroinitializer ; 7 uses
  %i.gw = add nsw <16 x i32> %i.gn, %i.bm
  %wide.masked.gather1006 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.gv, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.gx = mul nsw <16 x i32> %wide.masked.gather1006, %i.gw
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %i.gx, <16 x ptr> align 4 %wide.gep966, <16 x i1> %i.gv), !tbaa !23, !alias.scope !572, !noalias !573
  %i.gy = select <16 x i1> %i.gv, <16 x i1> %i.bt, <16 x i1> zeroinitializer
  %i.gz = add nsw <16 x i32> %i.gn, %i.bb
  %wide.masked.gather1007 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.gy, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.ha = mul nsw <16 x i32> %wide.masked.gather1007, %i.gz
  %predphi1008 = select <16 x i1> %i.bt, <16 x i32> %i.ha, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1008, <16 x ptr> align 4 %wide.gep971, <16 x i1> %i.gv), !tbaa !23, !alias.scope !572, !noalias !573
  %i.hb = select <16 x i1> %i.gv, <16 x i1> %i.gr, <16 x i1> zeroinitializer
  %i.hc = add nsw <16 x i32> %i.gn, %i.bo
  %wide.masked.gather1009 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.hb, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.hd = mul nsw <16 x i32> %wide.masked.gather1009, %i.hc
  %predphi1010 = select <16 x i1> %i.gr, <16 x i32> %i.hd, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1010, <16 x ptr> align 4 %wide.gep974, <16 x i1> %i.gv), !tbaa !23, !alias.scope !572, !noalias !573
  %i.he = select <16 x i1> %i.gv, <16 x i1> %i.gs, <16 x i1> zeroinitializer ; 2 uses
  %i.hf = add nsw <16 x i32> %i.gn, %i.bq
  %wide.masked.gather1011 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.he, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.hg = mul nsw <16 x i32> %wide.masked.gather1011, %i.hf
  %predphi1012 = select <16 x i1> %i.he, <16 x i32> %i.hg, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1012, <16 x ptr> align 4 %wide.gep977, <16 x i1> %i.ce), !tbaa !23, !alias.scope !572, !noalias !573
  %i.hh = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1098 = shufflevector <1 x i32> %i.hh, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.hi = mul nsw <16 x i32> %broadcast.splat1098, %i.en ; 4 uses
  %i.hj = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1101 = shufflevector <1 x i32> %i.hj, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.hk = icmp sgt <16 x i32> %broadcast.splat1101, %i.en
  %i.hl = and <16 x i1> %i.eq, %i.hk              ; 4 uses
  %i.hm = and <16 x i1> %i.bz, %i.hl              ; 2 uses
  %i.hn = and <16 x i1> %i.cc, %i.hl
  %i.ho = xor <16 x i1> %i.hl, splat (i1 true)
  %i.hp = select <16 x i1> %i.ce, <16 x i1> %i.ho, <16 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep978, <16 x i1> %i.hp), !tbaa !23, !alias.scope !572, !noalias !573
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep983, <16 x i1> %i.hp), !tbaa !23, !alias.scope !572, !noalias !573
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep986, <16 x i1> %i.hp), !tbaa !23, !alias.scope !572, !noalias !573
  %i.hq = select <16 x i1> %i.ce, <16 x i1> %i.hl, <16 x i1> zeroinitializer ; 7 uses
  %i.hr = add nsw <16 x i32> %i.hi, %i.bm
  %wide.masked.gather1015 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.hq, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.hs = mul nsw <16 x i32> %wide.masked.gather1015, %i.hr
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %i.hs, <16 x ptr> align 4 %wide.gep978, <16 x i1> %i.hq), !tbaa !23, !alias.scope !572, !noalias !573
  %i.ht = select <16 x i1> %i.hq, <16 x i1> %i.bt, <16 x i1> zeroinitializer
  %i.hu = add nsw <16 x i32> %i.hi, %i.bb
  %wide.masked.gather1016 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.ht, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.hv = mul nsw <16 x i32> %wide.masked.gather1016, %i.hu
  %predphi1017 = select <16 x i1> %i.bt, <16 x i32> %i.hv, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1017, <16 x ptr> align 4 %wide.gep983, <16 x i1> %i.hq), !tbaa !23, !alias.scope !572, !noalias !573
  %i.hw = select <16 x i1> %i.hq, <16 x i1> %i.hm, <16 x i1> zeroinitializer
  %i.hx = add nsw <16 x i32> %i.hi, %i.bo
  %wide.masked.gather1018 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.hw, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.hy = mul nsw <16 x i32> %wide.masked.gather1018, %i.hx
  %predphi1019 = select <16 x i1> %i.hm, <16 x i32> %i.hy, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1019, <16 x ptr> align 4 %wide.gep986, <16 x i1> %i.hq), !tbaa !23, !alias.scope !572, !noalias !573
  %i.hz = select <16 x i1> %i.hq, <16 x i1> %i.hn, <16 x i1> zeroinitializer ; 2 uses
  %i.ia = add nsw <16 x i32> %i.hi, %i.bq
  %wide.masked.gather1020 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.hz, <16 x i32> poison), !tbaa !16, !alias.scope !574
  %i.ib = mul nsw <16 x i32> %wide.masked.gather1020, %i.ia
  %predphi1021 = select <16 x i1> %i.fd, <16 x i32> %i.ff, <16 x i32> splat (i32 -1)
  %predphi1022 = select <16 x i1> %i.hz, <16 x i32> %i.ib, <16 x i32> %predphi1021
  %wide.gep1023 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 68
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1022, <16 x ptr> align 4 %wide.gep1023, <16 x i1> splat (i1 true)), !tbaa !23, !alias.scope !572, !noalias !573
  %index.next1024 = add nuw i64 %index938, 16     ; 2 uses
  %ptr.ind1025 = getelementptr i8, ptr %pointer.phi939, i64 1152
  %i.ic = icmp eq i64 %index.next1024, %n.vec926
  br i1 %i.ic, label %middle.block1026, label %vector.body937, !llvm.loop !553

middle.block1026:                                 ; preds = %vector.body937
  %cmp.n1027 = icmp eq i64 %6, %n.vec926
  br i1 %cmp.n1027, label %._crit_edge, label %.lr.ph533.preheader1117

.lr.ph533.preheader1117:                          ; preds = %vector.memcheck917, %.lr.ph533.preheader, %middle.block1026
  %.3532.ph = phi ptr [ %.1.lcssa, %vector.memcheck917 ], [ %.1.lcssa, %.lr.ph533.preheader ], [ %i.ah, %middle.block1026 ]
  %.1394531.ph = phi i32 [ %.0393.lcssa, %vector.memcheck917 ], [ %.0393.lcssa, %.lr.ph533.preheader ], [ %i.ak, %middle.block1026 ]
  %.1396530.ph = phi ptr [ %.0395.lcssa, %vector.memcheck917 ], [ %.0395.lcssa, %.lr.ph533.preheader ], [ %i.am, %middle.block1026 ]
  br label %.lr.ph533

.lr.ph520:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph520
  %.1519 = phi ptr [ %i.qn, %.lr.ph520 ], [ %.0380536, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393518 = phi i32 [ %i.qp, %.lr.ph520 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395517 = phi ptr [ %i.qo, %.lr.ph520 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 2 uses
  %i.id = load <16 x float>, ptr %.0395517, align 1, !tbaa !41 ; 2 uses
  %i.ie = shufflevector <16 x float> %i.id, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.if = shufflevector <16 x float> %i.id, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ig = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ih = sitofp fast i32 %i.ig to float
  %i.ii = insertelement <8 x float> poison, float %i.ih, i64 0
  %i.ij = shufflevector <8 x float> %i.ii, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.ik = fadd fast <8 x float> %i.ie, splat (float 1.000000e+00)
  %i.il = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ik, <8 x float> nofpclass(nan inf) %i.ij, <8 x float> splat (float -1.000000e+00))
  %i.im = fmul fast <8 x float> %i.il, splat (float 5.000000e-01) ; 2 uses
  %i.in = load i32, ptr %i.o, align 8, !tbaa !38
  %i.io = sitofp fast i32 %i.in to float
  %i.ip = insertelement <8 x float> poison, float %i.io, i64 0
  %i.iq = shufflevector <8 x float> %i.ip, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.ir = fadd fast <8 x float> %i.if, splat (float 1.000000e+00)
  %i.is = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ir, <8 x float> nofpclass(nan inf) %i.iq, <8 x float> splat (float -1.000000e+00))
  %i.it = fmul fast <8 x float> %i.is, splat (float 5.000000e-01) ; 2 uses
  %i.iu = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.im, i32 1) ; 10 uses
  %i.iv = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.it, i32 1) ; 7 uses
  %i.iw = fadd fast <8 x float> %i.iu, splat (float -1.000000e+00) ; 6 uses
  %i.ix = fadd fast <8 x float> %i.iu, splat (float 1.000000e+00) ; 6 uses
  %i.iy = fadd fast <8 x float> %i.iu, splat (float 2.000000e+00) ; 6 uses
  %i.iz = fcmp fast ogt <8 x float> %i.iw, splat (float -1.000000e+00)
  %i.ja = fcmp fast ogt <8 x float> %i.ij, %i.iw
  %i.jb = and <8 x i1> %i.iz, %i.ja               ; 4 uses
  %i.jc = fcmp fast ogt <8 x float> %i.iu, splat (float -1.000000e+00)
  %i.jd = fcmp fast ogt <8 x float> %i.ij, %i.iu
  %i.je = and <8 x i1> %i.jc, %i.jd               ; 4 uses
  %i.jf = fcmp fast ogt <8 x float> %i.ix, splat (float -1.000000e+00)
  %i.jg = fcmp fast ogt <8 x float> %i.ij, %i.ix
  %i.jh = and <8 x i1> %i.jf, %i.jg               ; 4 uses
  %i.ji = fcmp fast ogt <8 x float> %i.iy, splat (float -1.000000e+00)
  %i.jj = fcmp fast ogt <8 x float> %i.ij, %i.iy
  %i.jk = and <8 x i1> %i.ji, %i.jj               ; 4 uses
  %i.jl = load i32, ptr %i.p, align 8, !tbaa !16
  %i.jm = sitofp fast i32 %i.jl to float
  %i.jn = insertelement <8 x float> poison, float %i.jm, i64 0
  %i.jo = shufflevector <8 x float> %i.jn, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.jp = fadd fast <8 x float> %i.iv, splat (float -1.000000e+00) ; 3 uses
  %i.jq = fcmp fast ogt <8 x float> %i.jp, splat (float -1.000000e+00)
  %i.jr = fcmp fast ogt <8 x float> %i.iq, %i.jp
  %i.js = and <8 x i1> %i.jq, %i.jr               ; 4 uses
  %i.jt = fmul fast <8 x float> %i.jp, %i.ij      ; 4 uses
  %i.ju = fadd fast <8 x float> %i.jt, %i.iw
  %i.jv = fmul fast <8 x float> %i.jo, %i.ju
  %i.jw = fadd fast <8 x float> %i.jt, %i.iu
  %i.jx = fmul fast <8 x float> %i.jo, %i.jw
  %i.jy = fadd fast <8 x float> %i.jt, %i.ix
  %i.jz = fmul fast <8 x float> %i.jo, %i.jy
  %i.ka = fadd fast <8 x float> %i.jt, %i.iy
  %i.kb = fmul fast <8 x float> %i.jo, %i.ka
  %i.kc = and <8 x i1> %i.jb, %i.js
  %i.kd = select <8 x i1> %i.kc, <8 x float> %i.jv, <8 x float> splat (float -1.000000e+00)
  %i.ke = and <8 x i1> %i.je, %i.js
  %i.kf = select <8 x i1> %i.ke, <8 x float> %i.jx, <8 x float> splat (float -1.000000e+00)
  %i.kg = and <8 x i1> %i.jh, %i.js
  %i.kh = select <8 x i1> %i.kg, <8 x float> %i.jz, <8 x float> splat (float -1.000000e+00)
  %i.ki = and <8 x i1> %i.jk, %i.js
  %i.kj = select <8 x i1> %i.ki, <8 x float> %i.kb, <8 x float> splat (float -1.000000e+00)
  %i.kk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kd) ; 2 uses
  %i.kl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kf) ; 2 uses
  %i.km = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kh) ; 2 uses
  %i.kn = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kj) ; 2 uses
  %i.ko = fcmp fast ogt <8 x float> %i.iv, splat (float -1.000000e+00)
  %i.kp = fcmp fast ogt <8 x float> %i.iq, %i.iv
  %i.kq = and <8 x i1> %i.ko, %i.kp               ; 4 uses
  %i.kr = fmul fast <8 x float> %i.iv, %i.ij      ; 4 uses
  %i.ks = fadd fast <8 x float> %i.kr, %i.iw
  %i.kt = fmul fast <8 x float> %i.jo, %i.ks
  %i.ku = fadd fast <8 x float> %i.kr, %i.iu
  %i.kv = fmul fast <8 x float> %i.jo, %i.ku
  %i.kw = fadd fast <8 x float> %i.kr, %i.ix
  %i.kx = fmul fast <8 x float> %i.jo, %i.kw
  %i.ky = fadd fast <8 x float> %i.kr, %i.iy
  %i.kz = fmul fast <8 x float> %i.jo, %i.ky
  %i.la = and <8 x i1> %i.jb, %i.kq
  %i.lb = select <8 x i1> %i.la, <8 x float> %i.kt, <8 x float> splat (float -1.000000e+00)
  %i.lc = and <8 x i1> %i.je, %i.kq
  %i.ld = select <8 x i1> %i.lc, <8 x float> %i.kv, <8 x float> splat (float -1.000000e+00)
  %i.le = and <8 x i1> %i.jh, %i.kq
  %i.lf = select <8 x i1> %i.le, <8 x float> %i.kx, <8 x float> splat (float -1.000000e+00)
  %i.lg = and <8 x i1> %i.jk, %i.kq
  %i.lh = select <8 x i1> %i.lg, <8 x float> %i.kz, <8 x float> splat (float -1.000000e+00)
  %i.li = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lb) ; 2 uses
  %i.lj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ld) ; 2 uses
  %i.lk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lf) ; 2 uses
  %i.ll = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lh) ; 2 uses
  %i.lm = fadd fast <8 x float> %i.iv, splat (float 1.000000e+00) ; 3 uses
  %i.ln = fcmp fast ogt <8 x float> %i.lm, splat (float -1.000000e+00)
  %i.lo = fcmp fast ogt <8 x float> %i.iq, %i.lm
  %i.lp = and <8 x i1> %i.ln, %i.lo               ; 4 uses
  %i.lq = fmul fast <8 x float> %i.lm, %i.ij      ; 4 uses
  %i.lr = fadd fast <8 x float> %i.lq, %i.iw
  %i.ls = fmul fast <8 x float> %i.jo, %i.lr
  %i.lt = fadd fast <8 x float> %i.lq, %i.iu
  %i.lu = fmul fast <8 x float> %i.jo, %i.lt
  %i.lv = fadd fast <8 x float> %i.lq, %i.ix
  %i.lw = fmul fast <8 x float> %i.jo, %i.lv
  %i.lx = fadd fast <8 x float> %i.lq, %i.iy
  %i.ly = fmul fast <8 x float> %i.jo, %i.lx
  %i.lz = and <8 x i1> %i.jb, %i.lp
  %i.ma = select <8 x i1> %i.lz, <8 x float> %i.ls, <8 x float> splat (float -1.000000e+00)
  %i.mb = and <8 x i1> %i.je, %i.lp
  %i.mc = select <8 x i1> %i.mb, <8 x float> %i.lu, <8 x float> splat (float -1.000000e+00)
  %i.md = and <8 x i1> %i.jh, %i.lp
  %i.me = select <8 x i1> %i.md, <8 x float> %i.lw, <8 x float> splat (float -1.000000e+00)
  %i.mf = and <8 x i1> %i.jk, %i.lp
  %i.mg = select <8 x i1> %i.mf, <8 x float> %i.ly, <8 x float> splat (float -1.000000e+00)
  %i.mh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ma) ; 2 uses
  %i.mi = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mc) ; 2 uses
  %i.mj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.me) ; 2 uses
  %i.mk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mg) ; 2 uses
  %i.ml = fadd fast <8 x float> %i.iv, splat (float 2.000000e+00) ; 3 uses
  %i.mm = fcmp fast ogt <8 x float> %i.ml, splat (float -1.000000e+00)
  %i.mn = fcmp fast ogt <8 x float> %i.iq, %i.ml
  %i.mo = and <8 x i1> %i.mm, %i.mn               ; 4 uses
  %i.mp = fmul fast <8 x float> %i.ml, %i.ij      ; 4 uses
  %i.mq = fadd fast <8 x float> %i.mp, %i.iw
  %i.mr = fmul fast <8 x float> %i.jo, %i.mq
  %i.ms = fadd fast <8 x float> %i.mp, %i.iu
  %i.mt = fmul fast <8 x float> %i.jo, %i.ms
  %i.mu = fadd fast <8 x float> %i.mp, %i.ix
  %i.mv = fmul fast <8 x float> %i.jo, %i.mu
  %i.mw = fadd fast <8 x float> %i.mp, %i.iy
  %i.mx = fmul fast <8 x float> %i.jo, %i.mw
  %i.my = and <8 x i1> %i.jb, %i.mo
  %i.mz = select <8 x i1> %i.my, <8 x float> %i.mr, <8 x float> splat (float -1.000000e+00)
  %i.na = and <8 x i1> %i.je, %i.mo
  %i.nb = select <8 x i1> %i.na, <8 x float> %i.mt, <8 x float> splat (float -1.000000e+00)
  %i.nc = and <8 x i1> %i.jh, %i.mo
  %i.nd = select <8 x i1> %i.nc, <8 x float> %i.mv, <8 x float> splat (float -1.000000e+00)
  %i.ne = and <8 x i1> %i.jk, %i.mo
  %i.nf = select <8 x i1> %i.ne, <8 x float> %i.mx, <8 x float> splat (float -1.000000e+00)
  %i.ng = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mz) ; 2 uses
  %i.nh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nb) ; 2 uses
  %i.ni = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nd) ; 2 uses
  %i.nj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nf) ; 2 uses
  %i.nk = fsub fast <8 x float> %i.im, %i.iu      ; 2 uses
  %i.nl = fsub fast <8 x float> %i.it, %i.iv      ; 2 uses
  %i.nm = shufflevector <8 x float> %i.nk, <8 x float> %i.nl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.nn = shufflevector <8 x float> %i.nk, <8 x float> %i.nl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.no = shufflevector <8 x i32> %i.kk, <8 x i32> %i.kl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.np = bitcast <8 x i32> %i.no to <8 x float>
  %i.nq = shufflevector <8 x i32> %i.kk, <8 x i32> %i.kl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.nr = bitcast <8 x i32> %i.nq to <8 x float>
  %i.ns = shufflevector <8 x i32> %i.km, <8 x i32> %i.kn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.nt = shufflevector <8 x i32> %i.km, <8 x i32> %i.kn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.nu = shufflevector <8 x i32> %i.li, <8 x i32> %i.lj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.nv = shufflevector <8 x i32> %i.li, <8 x i32> %i.lj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.nw = shufflevector <8 x i32> %i.lk, <8 x i32> %i.ll, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.nx = shufflevector <8 x i32> %i.lk, <8 x i32> %i.ll, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ny = shufflevector <8 x i32> %i.mh, <8 x i32> %i.mi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.nz = shufflevector <8 x i32> %i.mh, <8 x i32> %i.mi, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.oa = shufflevector <8 x i32> %i.mj, <8 x i32> %i.mk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ob = shufflevector <8 x i32> %i.mj, <8 x i32> %i.mk, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.oc = shufflevector <8 x i32> %i.ng, <8 x i32> %i.nh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.od = shufflevector <8 x i32> %i.ng, <8 x i32> %i.nh, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.oe = shufflevector <8 x i32> %i.ni, <8 x i32> %i.nj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.of = bitcast <8 x i32> %i.oe to <8 x float>
  %i.og = shufflevector <8 x i32> %i.ni, <8 x i32> %i.nj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.oh = bitcast <8 x i32> %i.og to <8 x float>
  %i.oi = shufflevector <8 x float> %i.nm, <8 x float> %i.np, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.oj = shufflevector <8 x i32> %i.ns, <8 x i32> %i.nu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ok = bitcast <8 x i32> %i.oj to <8 x float>  ; 2 uses
  %i.ol = shufflevector <8 x i32> %i.nw, <8 x i32> %i.ny, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.om = shufflevector <8 x i32> %i.oa, <8 x i32> %i.oc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.on = shufflevector <8 x float> %i.of, <8 x float> %i.nm, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.oo = shufflevector <8 x i32> %i.no, <8 x i32> %i.ns, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.op = bitcast <8 x i32> %i.oo to <8 x float>  ; 2 uses
  %i.oq = shufflevector <8 x i32> %i.nu, <8 x i32> %i.nw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.or = shufflevector <8 x i32> %i.ny, <8 x i32> %i.oa, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.os = shufflevector <8 x i32> %i.oc, <8 x i32> %i.oe, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.ot = bitcast <8 x i32> %i.os to <8 x float>  ; 2 uses
  %i.ou = shufflevector <8 x float> %i.nn, <8 x float> %i.nr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ov = shufflevector <8 x i32> %i.nt, <8 x i32> %i.nv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ow = shufflevector <8 x i32> %i.nx, <8 x i32> %i.nz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ox = shufflevector <8 x i32> %i.ob, <8 x i32> %i.od, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.oy = bitcast <8 x i32> %i.ox to <8 x float>  ; 2 uses
  %i.oz = shufflevector <8 x float> %i.oh, <8 x float> %i.nn, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.pa = shufflevector <8 x i32> %i.nq, <8 x i32> %i.nt, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.pb = shufflevector <8 x i32> %i.nv, <8 x i32> %i.nx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.pc = shufflevector <8 x i32> %i.nz, <8 x i32> %i.ob, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.pd = shufflevector <8 x i32> %i.od, <8 x i32> %i.og, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.pe = shufflevector <8 x float> %i.oi, <8 x float> %i.ok, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pf = shufflevector <8 x i32> %i.ol, <8 x i32> %i.om, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pg = shufflevector <8 x float> %i.on, <8 x float> %i.op, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ph = shufflevector <8 x i32> %i.oq, <8 x i32> %i.or, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pi = shufflevector <8 x float> %i.ot, <8 x float> %i.ou, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
end_hunk_1
begin_hunk_2_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399
  %i.azc = mul nsw i32 %i.aza, %i.azb             ; 4 uses
  %i.azd = icmp sgt i32 %i.azb, -1
  %i.aze = load i32, ptr %i.abo, align 8, !tbaa !38
  %i.azf = icmp sgt i32 %i.aze, %i.azb
  %i.azg = and i1 %i.azd, %i.azf                  ; 3 uses
  %i.azh = and i1 %i.ats, %i.azg
  %i.azi = and i1 %i.att, %i.azg
  br i1 %i.azg, label %bb.bt, label %.thread773

.thread773:                                       ; preds = %.split.1
  store i32 -1, ptr %i.ayz, align 4, !tbaa !23
  %i.azj = getelementptr inbounds nuw i8, ptr %.6512, i64 28
  store i32 -1, ptr %i.azj, align 4, !tbaa !23
  %i.azk = getelementptr inbounds nuw i8, ptr %.6512, i64 32
  store i32 -1, ptr %i.azk, align 4, !tbaa !23
  br label %.split.2

bb.bt:                                            ; preds = %.split.1
  %i.azl = extractelement <4 x i32> %i.atl, i64 3
  %i.azm = add nsw i32 %i.azc, %i.azl
  %i.azn = load i32, ptr %i.abp, align 8, !tbaa !16
  %i.azo = mul nsw i32 %i.azn, %i.azm
  store i32 %i.azo, ptr %i.ayz, align 4, !tbaa !23
  br i1 %i.ath, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.azp = add nsw i32 %i.azc, %i.atb
  %i.azq = load i32, ptr %i.abp, align 8, !tbaa !16
  %i.azr = mul nsw i32 %i.azq, %i.azp
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.azs = phi i32 [ %i.azr, %bb.bu ], [ -1, %bb.bt ]
  %i.azt = getelementptr inbounds nuw i8, ptr %.6512, i64 28
  store i32 %i.azs, ptr %i.azt, align 4, !tbaa !23
  br i1 %i.azh, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.azu = extractelement <4 x i32> %i.atl, i64 2
  %i.azv = add nsw i32 %i.azc, %i.azu
  %i.azw = load i32, ptr %i.abp, align 8, !tbaa !16
  %i.azx = mul nsw i32 %i.azw, %i.azv
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.azy = phi i32 [ %i.azx, %bb.bw ], [ -1, %bb.bv ]
  %i.azz = getelementptr inbounds nuw i8, ptr %.6512, i64 32
  store i32 %i.azy, ptr %i.azz, align 4, !tbaa !23
  br i1 %i.azi, label %bb.by, label %.split.2

bb.by:                                            ; preds = %bb.bx
  %i.baa = extractelement <4 x i32> %i.atl, i64 1
  %i.bab = add nsw i32 %i.azc, %i.baa
  %i.bac = load i32, ptr %i.abp, align 8, !tbaa !16
  %i.bad = mul nsw i32 %i.bac, %i.bab
  br label %.split.2

.split.2:                                         ; preds = %.thread773, %bb.by, %bb.bx
  %i.bae = phi i32 [ %i.bad, %bb.by ], [ -1, %bb.bx ], [ -1, %.thread773 ]
  %i.baf = getelementptr inbounds nuw i8, ptr %.6512, i64 36
  store i32 %i.bae, ptr %i.baf, align 4, !tbaa !23
  %i.bag = getelementptr inbounds nuw i8, ptr %.6512, i64 40 ; 2 uses
  %i.bah = add i32 %i.azb, 1
  %i.bai = sitofp fast i32 %i.bah to float
  %i.baj = fptosi float %i.bai to i32             ; 3 uses
  %i.bak = load i32, ptr %i.abn, align 4, !tbaa !37
  %i.bal = mul nsw i32 %i.bak, %i.baj             ; 4 uses
  %i.bam = icmp sgt i32 %i.baj, -1
  %i.ban = load i32, ptr %i.abo, align 8, !tbaa !38
  %i.bao = icmp sgt i32 %i.ban, %i.baj
  %i.bap = and i1 %i.bam, %i.bao                  ; 3 uses
  %i.baq = and i1 %i.ats, %i.bap
  %i.bar = and i1 %i.att, %i.bap
  br i1 %i.bap, label %bb.bz, label %.thread776

.thread776:                                       ; preds = %.split.2
  store i32 -1, ptr %i.bag, align 4, !tbaa !23
  %i.bas = getelementptr inbounds nuw i8, ptr %.6512, i64 44
  store i32 -1, ptr %i.bas, align 4, !tbaa !23
  %i.bat = getelementptr inbounds nuw i8, ptr %.6512, i64 48
  store i32 -1, ptr %i.bat, align 4, !tbaa !23
  br label %.split.3

bb.bz:                                            ; preds = %.split.2
  %i.bau = extractelement <4 x i32> %i.atl, i64 3
  %i.bav = add nsw i32 %i.bal, %i.bau
  %i.baw = load i32, ptr %i.abp, align 8, !tbaa !16
  %i.bax = mul nsw i32 %i.baw, %i.bav
  store i32 %i.bax, ptr %i.bag, align 4, !tbaa !23
  br i1 %i.ath, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.bay = add nsw i32 %i.bal, %i.atb
  %i.baz = load i32, ptr %i.abp, align 8, !tbaa !16
  %i.bba = mul nsw i32 %i.baz, %i.bay
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.bbb = phi i32 [ %i.bba, %bb.ca ], [ -1, %bb.bz ]
  %i.bbc = getelementptr inbounds nuw i8, ptr %.6512, i64 44
  store i32 %i.bbb, ptr %i.bbc, align 4, !tbaa !23
  br i1 %i.baq, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.bbd = extractelement <4 x i32> %i.atl, i64 2
  %i.bbe = add nsw i32 %i.bal, %i.bbd
  %i.bbf = load i32, ptr %i.abp, align 8, !tbaa !16
  %i.bbg = mul nsw i32 %i.bbf, %i.bbe
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.bbh = phi i32 [ %i.bbg, %bb.cc ], [ -1, %bb.cb ]
  %i.bbi = getelementptr inbounds nuw i8, ptr %.6512, i64 48
  store i32 %i.bbh, ptr %i.bbi, align 4, !tbaa !23
  br i1 %i.bar, label %bb.ce, label %.split.3

bb.ce:                                            ; preds = %bb.cd
  %i.bbj = extractelement <4 x i32> %i.atl, i64 1
  %i.bbk = add nsw i32 %i.bal, %i.bbj
  %i.bbl = load i32, ptr %i.abp, align 8, !tbaa !16
  %i.bbm = mul nsw i32 %i.bbl, %i.bbk
  br label %.split.3

.split.3:                                         ; preds = %.thread776, %bb.ce, %bb.cd
  %i.bbn = phi i32 [ %i.bbm, %bb.ce ], [ -1, %bb.cd ], [ -1, %.thread776 ]
  %i.bbo = getelementptr inbounds nuw i8, ptr %.6512, i64 52
  store i32 %i.bbn, ptr %i.bbo, align 4, !tbaa !23
  %i.bbp = getelementptr inbounds nuw i8, ptr %.6512, i64 56 ; 2 uses
  %i.bbq = add i32 %i.azb, 2
  %i.bbr = sitofp fast i32 %i.bbq to float
  %i.bbs = fptosi float %i.bbr to i32             ; 3 uses
  %i.bbt = load i32, ptr %i.abn, align 4, !tbaa !37
  %i.bbu = mul nsw i32 %i.bbt, %i.bbs             ; 4 uses
  %i.bbv = icmp sgt i32 %i.bbs, -1
  %i.bbw = load i32, ptr %i.abo, align 8, !tbaa !38
  %i.bbx = icmp sgt i32 %i.bbw, %i.bbs
  %i.bby = and i1 %i.bbv, %i.bbx                  ; 3 uses
  %i.bbz = and i1 %i.ats, %i.bby
  %i.bca = and i1 %i.att, %i.bby
  br i1 %i.bby, label %bb.cf, label %.thread779

.thread779:                                       ; preds = %.split.3
  store i32 -1, ptr %i.bbp, align 4, !tbaa !23
  %i.bcb = getelementptr inbounds nuw i8, ptr %.6512, i64 60
  store i32 -1, ptr %i.bcb, align 4, !tbaa !23
  %i.bcc = getelementptr inbounds nuw i8, ptr %.6512, i64 64
  store i32 -1, ptr %i.bcc, align 4, !tbaa !23
  br label %.split508.us

bb.cf:                                            ; preds = %.split.3
  %i.bcd = extractelement <4 x i32> %i.atl, i64 3
  %i.bce = add nsw i32 %i.bbu, %i.bcd
  %i.bcf = load i32, ptr %i.abp, align 8, !tbaa !16
  %i.bcg = mul nsw i32 %i.bcf, %i.bce
  store i32 %i.bcg, ptr %i.bbp, align 4, !tbaa !23
  br i1 %i.ath, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.bch = add nsw i32 %i.bbu, %i.atb
  %i.bci = load i32, ptr %i.abp, align 8, !tbaa !16
  %i.bcj = mul nsw i32 %i.bci, %i.bch
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.bck = phi i32 [ %i.bcj, %bb.cg ], [ -1, %bb.cf ]
  %i.bcl = getelementptr inbounds nuw i8, ptr %.6512, i64 60
  store i32 %i.bck, ptr %i.bcl, align 4, !tbaa !23
  br i1 %i.bbz, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.bcm = extractelement <4 x i32> %i.atl, i64 2
  %i.bcn = add nsw i32 %i.bbu, %i.bcm
  %i.bco = load i32, ptr %i.abp, align 8, !tbaa !16
  %i.bcp = mul nsw i32 %i.bco, %i.bcn
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.bcq = phi i32 [ %i.bcp, %bb.ci ], [ -1, %bb.ch ]
  %i.bcr = getelementptr inbounds nuw i8, ptr %.6512, i64 64
  store i32 %i.bcq, ptr %i.bcr, align 4, !tbaa !23
  br i1 %i.bca, label %bb.ck, label %.split508.us

bb.ck:                                            ; preds = %bb.cj
  %i.bcs = extractelement <4 x i32> %i.atl, i64 1
  %i.bct = add nsw i32 %i.bbu, %i.bcs
  %i.bcu = load i32, ptr %i.abp, align 8, !tbaa !16
  %i.bcv = mul nsw i32 %i.bcu, %i.bct
  br label %.split508.us

.loopexit:                                        ; preds = %.split508.us, %._crit_edge, %middle.block, %.preheader493, %.preheader492
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit399:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 12 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !606 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader492, label %_ZN4ncnn3MatD2Ev.exit397

.preheader492:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit399
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit398.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit398.lr.ph:                   ; preds = %.preheader492
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 15 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 14 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 31 uses
  %i.q = and i32 %i.e, -16
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 52
  %broadcast.splatinsert935 = insertelement <16 x ptr> poison, ptr %i.p, i64 0
  %broadcast.splat936 = shufflevector <16 x ptr> %broadcast.splatinsert935, <16 x ptr> poison, <16 x i32> zeroinitializer ; 28 uses
  br label %_ZN4ncnn3MatD2Ev.exit398

_ZN4ncnn3MatD2Ev.exit398:                         ; preds = %_ZN4ncnn3MatD2Ev.exit398.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0380536 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !607
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !607
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !607
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph520, label %.preheader

.preheader:                                       ; preds = %.lr.ph520, %_ZN4ncnn3MatD2Ev.exit398
  %.0395.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.qq, %.lr.ph520 ] ; 6 uses
  %.0393.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.q, %.lr.ph520 ] ; 5 uses
  %.1.lcssa = phi ptr [ %.0380536, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.qp, %.lr.ph520 ] ; 8 uses
  %i.x = icmp slt i32 %.0393.lcssa, %i.e
  br i1 %i.x, label %.lr.ph533.preheader, label %._crit_edge

.lr.ph533.preheader:                              ; preds = %.preheader
  %i.y = xor i32 %.0393.lcssa, -1
  %i.z = add i32 %i.e, %i.y                       ; 2 uses
  %4 = zext i32 %i.z to i64                       ; 2 uses
  %5 = lshr i64 %4, 1
  %6 = add nuw nsw i64 %5, 1                      ; 2 uses
  %min.iters.check916 = icmp ult i32 %i.z, 30
  br i1 %min.iters.check916, label %.lr.ph533.preheader1117, label %vector.memcheck917

vector.memcheck917:                               ; preds = %.lr.ph533.preheader
  %7 = lshr i64 %4, 1                             ; 2 uses
  %i.aa = mul nuw nsw i64 %7, 72
  %i.ab = getelementptr i8, ptr %.1.lcssa, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 72     ; 2 uses
  %i.ad = shl nuw nsw i64 %7, 3
  %i.ae = getelementptr i8, ptr %.0395.lcssa, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %bound0918 = icmp ult ptr %.1.lcssa, %i.af
  %bound1919 = icmp ult ptr %.0395.lcssa, %i.ac
  %found.conflict920 = and i1 %bound0918, %bound1919
  %bound0921 = icmp ult ptr %.1.lcssa, %scevgep
  %bound1922 = icmp ult ptr %i.p, %i.ac
  %found.conflict923 = and i1 %bound0921, %bound1922
  %conflict.rdx924 = or i1 %found.conflict920, %found.conflict923
  br i1 %conflict.rdx924, label %.lr.ph533.preheader1117, label %vector.ph925

vector.ph925:                                     ; preds = %vector.memcheck917
  %n.vec926 = and i64 %6, 4294967280              ; 5 uses
  %i.ag = mul nuw nsw i64 %n.vec926, 72
  %i.ah = getelementptr i8, ptr %.1.lcssa, i64 %i.ag ; 2 uses
  %i.ai = trunc nuw i64 %n.vec926 to i32
  %i.aj = shl i32 %i.ai, 1
  %i.ak = add i32 %.0393.lcssa, %i.aj
  %i.al = shl nuw nsw i64 %n.vec926, 3
  %i.am = getelementptr i8, ptr %.0395.lcssa, i64 %i.al
  %i.an = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat928 = shufflevector <1 x i32> %i.an, <1 x i32> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ao = add nsw <16 x i32> %broadcast.splat928, splat (i32 -1)
  %i.ap = sitofp fast <16 x i32> %i.ao to <16 x float>
  %i.aq = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat930 = shufflevector <1 x i32> %i.aq, <1 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ar = add nsw <16 x i32> %broadcast.splat930, splat (i32 -1)
  %i.as = sitofp fast <16 x i32> %i.ar to <16 x float>
  br label %vector.body937

vector.body937:                                   ; preds = %vector.body937, %vector.ph925
  %index938 = phi i64 [ 0, %vector.ph925 ], [ %index.next1024, %vector.body937 ] ; 2 uses
  %pointer.phi939 = phi ptr [ %.1.lcssa, %vector.ph925 ], [ %ptr.ind1025, %vector.body937 ] ; 2 uses
  %vector.gep940 = getelementptr i8, ptr %pointer.phi939, <16 x i64> <i64 0, i64 72, i64 144, i64 216, i64 288, i64 360, i64 432, i64 504, i64 576, i64 648, i64 720, i64 792, i64 864, i64 936, i64 1008, i64 1080> ; 18 uses
  %i.at = shl i64 %index938, 3
  %next.gep941 = getelementptr i8, ptr %.0395.lcssa, i64 %i.at
  %wide.vec = load <32 x float>, ptr %next.gep941, align 4, !tbaa !40, !alias.scope !608 ; 2 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec942 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.au = fmul fast <16 x float> %strided.vec, splat (float 5.000000e-01)
  %i.av = fadd fast <16 x float> %i.au, splat (float 5.000000e-01)
  %i.aw = fmul fast <16 x float> %i.av, %i.ap     ; 2 uses
  %i.ax = fmul fast <16 x float> %strided.vec942, splat (float 5.000000e-01)
  %i.ay = fadd fast <16 x float> %i.ax, splat (float 5.000000e-01)
  %i.az = fmul fast <16 x float> %i.ay, %i.as     ; 2 uses
  %i.ba = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.aw)
  %i.bb = fptosi <16 x float> %i.ba to <16 x i32> ; 13 uses
  %i.bc = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.az)
  %i.bd = fptosi <16 x float> %i.bc to <16 x i32> ; 9 uses
  %i.be = add nsw <16 x i32> %i.bb, splat (i32 -1)
  %i.bf = add nsw <16 x i32> %i.bb, splat (i32 1)
  %i.bg = add nsw <16 x i32> %i.bb, splat (i32 2)
  %i.bh = sitofp fast <16 x i32> %i.bb to <16 x float>
  %i.bi = fsub fast <16 x float> %i.aw, %i.bh
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.bi, <16 x ptr> align 4 %vector.gep940, <16 x i1> splat (i1 true)), !tbaa !40, !alias.scope !609, !noalias !610
  %i.bj = sitofp fast <16 x i32> %i.bd to <16 x float>
  %i.bk = fsub fast <16 x float> %i.az, %i.bj
  %wide.gep943 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 4
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %i.bk, <16 x ptr> align 4 %wide.gep943, <16 x i1> splat (i1 true)), !tbaa !40, !alias.scope !609, !noalias !610
  %i.bl = sitofp fast <16 x i32> %i.be to <16 x float>
  %i.bm = fptosi <16 x float> %i.bl to <16 x i32> ; 6 uses
  %i.bn = sitofp fast <16 x i32> %i.bf to <16 x float>
  %i.bo = fptosi <16 x float> %i.bn to <16 x i32> ; 9 uses
  %i.bp = sitofp fast <16 x i32> %i.bg to <16 x float>
  %i.bq = fptosi <16 x float> %i.bp to <16 x i32> ; 9 uses
  %i.br = icmp sgt <16 x i32> %i.bb, splat (i32 -1)
  %i.bs = icmp sgt <16 x i32> %broadcast.splat928, %i.bb
  %i.bt = and <16 x i1> %i.br, %i.bs              ; 10 uses
  %i.bu = icmp sgt <16 x i32> %i.bm, splat (i32 -1)
  %i.bv = icmp sgt <16 x i32> %broadcast.splat928, %i.bm
  %i.bw = and <16 x i1> %i.bu, %i.bv
  %i.bx = icmp sgt <16 x i32> %i.bo, splat (i32 -1)
  %i.by = icmp sgt <16 x i32> %broadcast.splat928, %i.bo
  %i.bz = and <16 x i1> %i.bx, %i.by              ; 7 uses
  %i.ca = icmp sgt <16 x i32> %i.bq, splat (i32 -1)
  %i.cb = icmp sgt <16 x i32> %broadcast.splat928, %i.bq
  %i.cc = and <16 x i1> %i.ca, %i.cb              ; 7 uses
  %wide.gep944 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 8 ; 3 uses
  %i.cd = add <16 x i32> %i.bd, splat (i32 -1)
  %i.ce = freeze <16 x i1> %i.bw                  ; 12 uses
  %i.cf = sitofp fast <16 x i32> %i.cd to <16 x float>
  %i.cg = fptosi <16 x float> %i.cf to <16 x i32> ; 3 uses
  %i.ch = mul nsw <16 x i32> %broadcast.splat928, %i.cg ; 4 uses
  %i.ci = icmp sgt <16 x i32> %i.cg, splat (i32 -1)
  %i.cj = icmp sgt <16 x i32> %broadcast.splat930, %i.cg
  %i.ck = and <16 x i1> %i.ci, %i.cj              ; 5 uses
  %i.cl = and <16 x i1> %i.bt, %i.ck              ; 4 uses
  %i.cm = and <16 x i1> %i.bz, %i.ck              ; 4 uses
  %i.cn = and <16 x i1> %i.cc, %i.ck              ; 3 uses
  %i.co = xor <16 x i1> %i.ce, splat (i1 true)    ; 27 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep944, <16 x i1> %i.co), !tbaa !23, !alias.scope !609, !noalias !610
  %i.cp = select <16 x i1> %i.co, <16 x i1> %i.cl, <16 x i1> zeroinitializer
  %i.cq = add nsw <16 x i32> %i.ch, %i.bb         ; 2 uses
  %wide.masked.gather945 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.cp, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.cr = mul nsw <16 x i32> %wide.masked.gather945, %i.cq
  %predphi946 = select <16 x i1> %i.cl, <16 x i32> %i.cr, <16 x i32> splat (i32 -1)
  %wide.gep947 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 12 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi946, <16 x ptr> align 4 %wide.gep947, <16 x i1> %i.co), !tbaa !23, !alias.scope !609, !noalias !610
  %i.cs = select <16 x i1> %i.co, <16 x i1> %i.cm, <16 x i1> zeroinitializer
  %i.ct = add nsw <16 x i32> %i.ch, %i.bo         ; 2 uses
  %wide.masked.gather948 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.cs, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.cu = mul nsw <16 x i32> %wide.masked.gather948, %i.ct
  %predphi949 = select <16 x i1> %i.cm, <16 x i32> %i.cu, <16 x i32> splat (i32 -1)
  %wide.gep950 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 16 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi949, <16 x ptr> align 4 %wide.gep950, <16 x i1> %i.co), !tbaa !23, !alias.scope !609, !noalias !610
  %i.cv = select <16 x i1> %i.co, <16 x i1> %i.cn, <16 x i1> zeroinitializer
  %i.cw = add nsw <16 x i32> %i.ch, %i.bq         ; 2 uses
  %wide.masked.gather951 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.cv, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.cx = mul nsw <16 x i32> %wide.masked.gather951, %i.cw
  %predphi952 = select <16 x i1> %i.cn, <16 x i32> %i.cx, <16 x i32> splat (i32 -1)
  %wide.gep953 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 20 ; 2 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi952, <16 x ptr> align 4 %wide.gep953, <16 x i1> %i.co), !tbaa !23, !alias.scope !609, !noalias !610
  %wide.gep954 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 24 ; 3 uses
  %i.cy = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1068 = shufflevector <1 x i32> %i.cy, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.cz = mul nsw <16 x i32> %broadcast.splat1068, %i.bd ; 3 uses
  %i.da = icmp sgt <16 x i32> %i.bd, splat (i32 -1) ; 2 uses
  %i.db = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1071 = shufflevector <1 x i32> %i.db, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.dc = icmp sgt <16 x i32> %broadcast.splat1071, %i.bd
  %i.dd = and <16 x i1> %i.da, %i.dc              ; 3 uses
  %i.de = and <16 x i1> %i.bt, %i.dd              ; 2 uses
  %i.df = and <16 x i1> %i.bz, %i.dd              ; 2 uses
  %i.dg = and <16 x i1> %i.cc, %i.dd              ; 2 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep954, <16 x i1> %i.co), !tbaa !23, !alias.scope !609, !noalias !610
  %i.dh = select <16 x i1> %i.co, <16 x i1> %i.de, <16 x i1> zeroinitializer
  %i.di = add nsw <16 x i32> %i.cz, %i.bb
  %wide.masked.gather957 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.dh, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.dj = mul nsw <16 x i32> %wide.masked.gather957, %i.di
  %predphi958 = select <16 x i1> %i.de, <16 x i32> %i.dj, <16 x i32> splat (i32 -1)
  %wide.gep959 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 28 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi958, <16 x ptr> align 4 %wide.gep959, <16 x i1> %i.co), !tbaa !23, !alias.scope !609, !noalias !610
  %i.dk = select <16 x i1> %i.co, <16 x i1> %i.df, <16 x i1> zeroinitializer
  %i.dl = add nsw <16 x i32> %i.cz, %i.bo
  %wide.masked.gather960 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.dk, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.dm = mul nsw <16 x i32> %wide.masked.gather960, %i.dl
  %predphi961 = select <16 x i1> %i.df, <16 x i32> %i.dm, <16 x i32> splat (i32 -1)
  %wide.gep962 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 32 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi961, <16 x ptr> align 4 %wide.gep962, <16 x i1> %i.co), !tbaa !23, !alias.scope !609, !noalias !610
  %i.dn = select <16 x i1> %i.co, <16 x i1> %i.dg, <16 x i1> zeroinitializer
  %i.do = add nsw <16 x i32> %i.cz, %i.bq
  %wide.masked.gather963 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.dn, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.dp = mul nsw <16 x i32> %wide.masked.gather963, %i.do
  %predphi964 = select <16 x i1> %i.dg, <16 x i32> %i.dp, <16 x i32> splat (i32 -1)
  %wide.gep965 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 36 ; 2 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi964, <16 x ptr> align 4 %wide.gep965, <16 x i1> %i.co), !tbaa !23, !alias.scope !609, !noalias !610
  %wide.gep966 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 40 ; 3 uses
  %i.dq = add <16 x i32> %i.bd, splat (i32 1)
  %i.dr = sitofp fast <16 x i32> %i.dq to <16 x float>
  %i.ds = fptosi <16 x float> %i.dr to <16 x i32> ; 5 uses
  %i.dt = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1074 = shufflevector <1 x i32> %i.dt, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.du = mul nsw <16 x i32> %broadcast.splat1074, %i.ds ; 3 uses
  %i.dv = icmp sgt <16 x i32> %i.ds, splat (i32 -1) ; 2 uses
  %i.dw = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1077 = shufflevector <1 x i32> %i.dw, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.dx = icmp sgt <16 x i32> %broadcast.splat1077, %i.ds
  %i.dy = and <16 x i1> %i.dv, %i.dx              ; 3 uses
  %i.dz = and <16 x i1> %i.bt, %i.dy              ; 2 uses
  %i.ea = and <16 x i1> %i.bz, %i.dy              ; 2 uses
  %i.eb = and <16 x i1> %i.cc, %i.dy              ; 2 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep966, <16 x i1> %i.co), !tbaa !23, !alias.scope !609, !noalias !610
  %i.ec = select <16 x i1> %i.co, <16 x i1> %i.dz, <16 x i1> zeroinitializer
  %i.ed = add nsw <16 x i32> %i.du, %i.bb
  %wide.masked.gather969 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.ec, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.ee = mul nsw <16 x i32> %wide.masked.gather969, %i.ed
  %predphi970 = select <16 x i1> %i.dz, <16 x i32> %i.ee, <16 x i32> splat (i32 -1)
  %wide.gep971 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 44 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi970, <16 x ptr> align 4 %wide.gep971, <16 x i1> %i.co), !tbaa !23, !alias.scope !609, !noalias !610
  %i.ef = select <16 x i1> %i.co, <16 x i1> %i.ea, <16 x i1> zeroinitializer
  %i.eg = add nsw <16 x i32> %i.du, %i.bo
  %wide.masked.gather972 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.ef, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.eh = mul nsw <16 x i32> %wide.masked.gather972, %i.eg
  %predphi973 = select <16 x i1> %i.ea, <16 x i32> %i.eh, <16 x i32> splat (i32 -1)
  %wide.gep974 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 48 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi973, <16 x ptr> align 4 %wide.gep974, <16 x i1> %i.co), !tbaa !23, !alias.scope !609, !noalias !610
  %i.ei = select <16 x i1> %i.co, <16 x i1> %i.eb, <16 x i1> zeroinitializer
  %i.ej = add nsw <16 x i32> %i.du, %i.bq
  %wide.masked.gather975 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.ei, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.ek = mul nsw <16 x i32> %wide.masked.gather975, %i.ej
  %predphi976 = select <16 x i1> %i.eb, <16 x i32> %i.ek, <16 x i32> splat (i32 -1)
  %wide.gep977 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 52 ; 2 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi976, <16 x ptr> align 4 %wide.gep977, <16 x i1> %i.co), !tbaa !23, !alias.scope !609, !noalias !610
  %wide.gep978 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 56 ; 3 uses
  %i.el = add <16 x i32> %i.bd, splat (i32 2)
  %i.em = sitofp fast <16 x i32> %i.el to <16 x float>
  %i.en = fptosi <16 x float> %i.em to <16 x i32> ; 5 uses
  %i.eo = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1080 = shufflevector <1 x i32> %i.eo, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.ep = mul nsw <16 x i32> %broadcast.splat1080, %i.en ; 3 uses
  %i.eq = icmp sgt <16 x i32> %i.en, splat (i32 -1) ; 2 uses
  %i.er = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1083 = shufflevector <1 x i32> %i.er, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.es = icmp sgt <16 x i32> %broadcast.splat1083, %i.en
  %i.et = and <16 x i1> %i.eq, %i.es              ; 3 uses
  %i.eu = and <16 x i1> %i.bt, %i.et              ; 2 uses
  %i.ev = and <16 x i1> %i.bz, %i.et              ; 2 uses
  %i.ew = and <16 x i1> %i.cc, %i.et
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep978, <16 x i1> %i.co), !tbaa !23, !alias.scope !609, !noalias !610
  %i.ex = select <16 x i1> %i.co, <16 x i1> %i.eu, <16 x i1> zeroinitializer
  %i.ey = add nsw <16 x i32> %i.ep, %i.bb
  %wide.masked.gather981 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.ex, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.ez = mul nsw <16 x i32> %wide.masked.gather981, %i.ey
  %predphi982 = select <16 x i1> %i.eu, <16 x i32> %i.ez, <16 x i32> splat (i32 -1)
  %wide.gep983 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 60 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi982, <16 x ptr> align 4 %wide.gep983, <16 x i1> %i.co), !tbaa !23, !alias.scope !609, !noalias !610
  %i.fa = select <16 x i1> %i.co, <16 x i1> %i.ev, <16 x i1> zeroinitializer
  %i.fb = add nsw <16 x i32> %i.ep, %i.bo
  %wide.masked.gather984 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.fa, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.fc = mul nsw <16 x i32> %wide.masked.gather984, %i.fb
  %predphi985 = select <16 x i1> %i.ev, <16 x i32> %i.fc, <16 x i32> splat (i32 -1)
  %wide.gep986 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 64 ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi985, <16 x ptr> align 4 %wide.gep986, <16 x i1> %i.co), !tbaa !23, !alias.scope !609, !noalias !610
  %i.fd = select <16 x i1> %i.co, <16 x i1> %i.ew, <16 x i1> zeroinitializer ; 2 uses
  %i.fe = add nsw <16 x i32> %i.ep, %i.bq
  %wide.masked.gather987 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.fd, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.ff = mul nsw <16 x i32> %wide.masked.gather987, %i.fe
  %i.fg = xor <16 x i1> %i.ck, splat (i1 true)
  %i.fh = select <16 x i1> %i.ce, <16 x i1> %i.fg, <16 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep944, <16 x i1> %i.fh), !tbaa !23, !alias.scope !609, !noalias !610
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep947, <16 x i1> %i.fh), !tbaa !23, !alias.scope !609, !noalias !610
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep950, <16 x i1> %i.fh), !tbaa !23, !alias.scope !609, !noalias !610
  %i.fi = select <16 x i1> %i.ce, <16 x i1> %i.ck, <16 x i1> zeroinitializer ; 7 uses
  %i.fj = add nsw <16 x i32> %i.ch, %i.bm
  %wide.masked.gather988 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.fi, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.fk = mul nsw <16 x i32> %wide.masked.gather988, %i.fj
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %i.fk, <16 x ptr> align 4 %wide.gep944, <16 x i1> %i.fi), !tbaa !23, !alias.scope !609, !noalias !610
  %i.fl = select <16 x i1> %i.fi, <16 x i1> %i.cl, <16 x i1> zeroinitializer
  %wide.masked.gather989 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.fl, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.fm = mul nsw <16 x i32> %wide.masked.gather989, %i.cq
  %predphi990 = select <16 x i1> %i.cl, <16 x i32> %i.fm, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi990, <16 x ptr> align 4 %wide.gep947, <16 x i1> %i.fi), !tbaa !23, !alias.scope !609, !noalias !610
  %i.fn = select <16 x i1> %i.fi, <16 x i1> %i.cm, <16 x i1> zeroinitializer
  %wide.masked.gather991 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.fn, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.fo = mul nsw <16 x i32> %wide.masked.gather991, %i.ct
  %predphi992 = select <16 x i1> %i.cm, <16 x i32> %i.fo, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi992, <16 x ptr> align 4 %wide.gep950, <16 x i1> %i.fi), !tbaa !23, !alias.scope !609, !noalias !610
  %i.fp = select <16 x i1> %i.fi, <16 x i1> %i.cn, <16 x i1> zeroinitializer ; 2 uses
  %wide.masked.gather993 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.fp, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.fq = mul nsw <16 x i32> %wide.masked.gather993, %i.cw
  %predphi994 = select <16 x i1> %i.fp, <16 x i32> %i.fq, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi994, <16 x ptr> align 4 %wide.gep953, <16 x i1> %i.ce), !tbaa !23, !alias.scope !609, !noalias !610
  %i.fr = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1086 = shufflevector <1 x i32> %i.fr, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.fs = mul nsw <16 x i32> %broadcast.splat1086, %i.bd ; 4 uses
  %i.ft = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1089 = shufflevector <1 x i32> %i.ft, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.fu = icmp sgt <16 x i32> %broadcast.splat1089, %i.bd
  %i.fv = and <16 x i1> %i.da, %i.fu              ; 4 uses
  %i.fw = and <16 x i1> %i.bz, %i.fv              ; 2 uses
  %i.fx = and <16 x i1> %i.cc, %i.fv
  %i.fy = xor <16 x i1> %i.fv, splat (i1 true)
  %i.fz = select <16 x i1> %i.ce, <16 x i1> %i.fy, <16 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep954, <16 x i1> %i.fz), !tbaa !23, !alias.scope !609, !noalias !610
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep959, <16 x i1> %i.fz), !tbaa !23, !alias.scope !609, !noalias !610
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep962, <16 x i1> %i.fz), !tbaa !23, !alias.scope !609, !noalias !610
  %i.ga = select <16 x i1> %i.ce, <16 x i1> %i.fv, <16 x i1> zeroinitializer ; 7 uses
  %i.gb = add nsw <16 x i32> %i.fs, %i.bm
  %wide.masked.gather997 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.ga, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.gc = mul nsw <16 x i32> %wide.masked.gather997, %i.gb
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %i.gc, <16 x ptr> align 4 %wide.gep954, <16 x i1> %i.ga), !tbaa !23, !alias.scope !609, !noalias !610
  %i.gd = select <16 x i1> %i.ga, <16 x i1> %i.bt, <16 x i1> zeroinitializer
  %i.ge = add nsw <16 x i32> %i.fs, %i.bb
  %wide.masked.gather998 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.gd, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.gf = mul nsw <16 x i32> %wide.masked.gather998, %i.ge
  %predphi999 = select <16 x i1> %i.bt, <16 x i32> %i.gf, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi999, <16 x ptr> align 4 %wide.gep959, <16 x i1> %i.ga), !tbaa !23, !alias.scope !609, !noalias !610
  %i.gg = select <16 x i1> %i.ga, <16 x i1> %i.fw, <16 x i1> zeroinitializer
  %i.gh = add nsw <16 x i32> %i.fs, %i.bo
  %wide.masked.gather1000 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.gg, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.gi = mul nsw <16 x i32> %wide.masked.gather1000, %i.gh
  %predphi1001 = select <16 x i1> %i.fw, <16 x i32> %i.gi, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1001, <16 x ptr> align 4 %wide.gep962, <16 x i1> %i.ga), !tbaa !23, !alias.scope !609, !noalias !610
  %i.gj = select <16 x i1> %i.ga, <16 x i1> %i.fx, <16 x i1> zeroinitializer ; 2 uses
  %i.gk = add nsw <16 x i32> %i.fs, %i.bq
  %wide.masked.gather1002 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.gj, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.gl = mul nsw <16 x i32> %wide.masked.gather1002, %i.gk
  %predphi1003 = select <16 x i1> %i.gj, <16 x i32> %i.gl, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1003, <16 x ptr> align 4 %wide.gep965, <16 x i1> %i.ce), !tbaa !23, !alias.scope !609, !noalias !610
  %i.gm = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1092 = shufflevector <1 x i32> %i.gm, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.gn = mul nsw <16 x i32> %broadcast.splat1092, %i.ds ; 4 uses
  %i.go = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1095 = shufflevector <1 x i32> %i.go, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.gp = icmp sgt <16 x i32> %broadcast.splat1095, %i.ds
  %i.gq = and <16 x i1> %i.dv, %i.gp              ; 4 uses
  %i.gr = and <16 x i1> %i.bz, %i.gq              ; 2 uses
  %i.gs = and <16 x i1> %i.cc, %i.gq
  %i.gt = xor <16 x i1> %i.gq, splat (i1 true)
  %i.gu = select <16 x i1> %i.ce, <16 x i1> %i.gt, <16 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep966, <16 x i1> %i.gu), !tbaa !23, !alias.scope !609, !noalias !610
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep971, <16 x i1> %i.gu), !tbaa !23, !alias.scope !609, !noalias !610
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep974, <16 x i1> %i.gu), !tbaa !23, !alias.scope !609, !noalias !610
  %i.gv = select <16 x i1> %i.ce, <16 x i1> %i.gq, <16 x i1> zeroinitializer ; 7 uses
  %i.gw = add nsw <16 x i32> %i.gn, %i.bm
  %wide.masked.gather1006 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.gv, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.gx = mul nsw <16 x i32> %wide.masked.gather1006, %i.gw
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %i.gx, <16 x ptr> align 4 %wide.gep966, <16 x i1> %i.gv), !tbaa !23, !alias.scope !609, !noalias !610
  %i.gy = select <16 x i1> %i.gv, <16 x i1> %i.bt, <16 x i1> zeroinitializer
  %i.gz = add nsw <16 x i32> %i.gn, %i.bb
  %wide.masked.gather1007 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.gy, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.ha = mul nsw <16 x i32> %wide.masked.gather1007, %i.gz
  %predphi1008 = select <16 x i1> %i.bt, <16 x i32> %i.ha, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1008, <16 x ptr> align 4 %wide.gep971, <16 x i1> %i.gv), !tbaa !23, !alias.scope !609, !noalias !610
  %i.hb = select <16 x i1> %i.gv, <16 x i1> %i.gr, <16 x i1> zeroinitializer
  %i.hc = add nsw <16 x i32> %i.gn, %i.bo
  %wide.masked.gather1009 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.hb, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.hd = mul nsw <16 x i32> %wide.masked.gather1009, %i.hc
  %predphi1010 = select <16 x i1> %i.gr, <16 x i32> %i.hd, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1010, <16 x ptr> align 4 %wide.gep974, <16 x i1> %i.gv), !tbaa !23, !alias.scope !609, !noalias !610
  %i.he = select <16 x i1> %i.gv, <16 x i1> %i.gs, <16 x i1> zeroinitializer ; 2 uses
  %i.hf = add nsw <16 x i32> %i.gn, %i.bq
  %wide.masked.gather1011 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.he, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.hg = mul nsw <16 x i32> %wide.masked.gather1011, %i.hf
  %predphi1012 = select <16 x i1> %i.he, <16 x i32> %i.hg, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1012, <16 x ptr> align 4 %wide.gep977, <16 x i1> %i.ce), !tbaa !23, !alias.scope !609, !noalias !610
  %i.hh = load <1 x i32>, ptr %i.n, align 4
  %broadcast.splat1098 = shufflevector <1 x i32> %i.hh, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.hi = mul nsw <16 x i32> %broadcast.splat1098, %i.en ; 4 uses
  %i.hj = load <1 x i32>, ptr %i.o, align 8
  %broadcast.splat1101 = shufflevector <1 x i32> %i.hj, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.hk = icmp sgt <16 x i32> %broadcast.splat1101, %i.en
  %i.hl = and <16 x i1> %i.eq, %i.hk              ; 4 uses
  %i.hm = and <16 x i1> %i.bz, %i.hl              ; 2 uses
  %i.hn = and <16 x i1> %i.cc, %i.hl
  %i.ho = xor <16 x i1> %i.hl, splat (i1 true)
  %i.hp = select <16 x i1> %i.ce, <16 x i1> %i.ho, <16 x i1> zeroinitializer ; 3 uses
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep978, <16 x i1> %i.hp), !tbaa !23, !alias.scope !609, !noalias !610
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep983, <16 x i1> %i.hp), !tbaa !23, !alias.scope !609, !noalias !610
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> splat (i32 -1), <16 x ptr> align 4 %wide.gep986, <16 x i1> %i.hp), !tbaa !23, !alias.scope !609, !noalias !610
  %i.hq = select <16 x i1> %i.ce, <16 x i1> %i.hl, <16 x i1> zeroinitializer ; 7 uses
  %i.hr = add nsw <16 x i32> %i.hi, %i.bm
  %wide.masked.gather1015 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.hq, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.hs = mul nsw <16 x i32> %wide.masked.gather1015, %i.hr
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %i.hs, <16 x ptr> align 4 %wide.gep978, <16 x i1> %i.hq), !tbaa !23, !alias.scope !609, !noalias !610
  %i.ht = select <16 x i1> %i.hq, <16 x i1> %i.bt, <16 x i1> zeroinitializer
  %i.hu = add nsw <16 x i32> %i.hi, %i.bb
  %wide.masked.gather1016 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.ht, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.hv = mul nsw <16 x i32> %wide.masked.gather1016, %i.hu
  %predphi1017 = select <16 x i1> %i.bt, <16 x i32> %i.hv, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1017, <16 x ptr> align 4 %wide.gep983, <16 x i1> %i.hq), !tbaa !23, !alias.scope !609, !noalias !610
  %i.hw = select <16 x i1> %i.hq, <16 x i1> %i.hm, <16 x i1> zeroinitializer
  %i.hx = add nsw <16 x i32> %i.hi, %i.bo
  %wide.masked.gather1018 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.hw, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.hy = mul nsw <16 x i32> %wide.masked.gather1018, %i.hx
  %predphi1019 = select <16 x i1> %i.hm, <16 x i32> %i.hy, <16 x i32> splat (i32 -1)
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1019, <16 x ptr> align 4 %wide.gep986, <16 x i1> %i.hq), !tbaa !23, !alias.scope !609, !noalias !610
  %i.hz = select <16 x i1> %i.hq, <16 x i1> %i.hn, <16 x i1> zeroinitializer ; 2 uses
  %i.ia = add nsw <16 x i32> %i.hi, %i.bq
  %wide.masked.gather1020 = tail call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %broadcast.splat936, <16 x i1> %i.hz, <16 x i32> poison), !tbaa !16, !alias.scope !611
  %i.ib = mul nsw <16 x i32> %wide.masked.gather1020, %i.ia
  %predphi1021 = select <16 x i1> %i.fd, <16 x i32> %i.ff, <16 x i32> splat (i32 -1)
  %predphi1022 = select <16 x i1> %i.hz, <16 x i32> %i.ib, <16 x i32> %predphi1021
  %wide.gep1023 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep940, i64 68
  tail call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %predphi1022, <16 x ptr> align 4 %wide.gep1023, <16 x i1> splat (i1 true)), !tbaa !23, !alias.scope !609, !noalias !610
  %index.next1024 = add nuw i64 %index938, 16     ; 2 uses
  %ptr.ind1025 = getelementptr i8, ptr %pointer.phi939, i64 1152
  %i.ic = icmp eq i64 %index.next1024, %n.vec926
  br i1 %i.ic, label %middle.block1026, label %vector.body937, !llvm.loop !590

middle.block1026:                                 ; preds = %vector.body937
  %cmp.n1027 = icmp eq i64 %6, %n.vec926
  br i1 %cmp.n1027, label %._crit_edge, label %.lr.ph533.preheader1117

.lr.ph533.preheader1117:                          ; preds = %vector.memcheck917, %.lr.ph533.preheader, %middle.block1026
  %.3532.ph = phi ptr [ %.1.lcssa, %vector.memcheck917 ], [ %.1.lcssa, %.lr.ph533.preheader ], [ %i.ah, %middle.block1026 ]
  %.1394531.ph = phi i32 [ %.0393.lcssa, %vector.memcheck917 ], [ %.0393.lcssa, %.lr.ph533.preheader ], [ %i.ak, %middle.block1026 ]
  %.1396530.ph = phi ptr [ %.0395.lcssa, %vector.memcheck917 ], [ %.0395.lcssa, %.lr.ph533.preheader ], [ %i.am, %middle.block1026 ]
  br label %.lr.ph533

.lr.ph520:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph520
  %.1519 = phi ptr [ %i.qp, %.lr.ph520 ], [ %.0380536, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393518 = phi i32 [ %i.qr, %.lr.ph520 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395517 = phi ptr [ %i.qq, %.lr.ph520 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 2 uses
  %i.id = load <16 x float>, ptr %.0395517, align 1, !tbaa !41 ; 2 uses
  %i.ie = shufflevector <16 x float> %i.id, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.if = shufflevector <16 x float> %i.id, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ig = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ih = sitofp fast i32 %i.ig to float
  %i.ii = insertelement <8 x float> poison, float %i.ih, i64 0
  %i.ij = shufflevector <8 x float> %i.ii, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.ik = fmul fast <8 x float> %i.ie, splat (float 5.000000e-01)
  %i.il = fadd fast <8 x float> %i.ik, splat (float 5.000000e-01)
  %i.im = fadd fast <8 x float> %i.ij, splat (float -1.000000e+00)
  %i.in = fmul fast <8 x float> %i.im, %i.il      ; 2 uses
  %i.io = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ip = sitofp fast i32 %i.io to float
  %i.iq = insertelement <8 x float> poison, float %i.ip, i64 0
  %i.ir = shufflevector <8 x float> %i.iq, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.is = fmul fast <8 x float> %i.if, splat (float 5.000000e-01)
  %i.it = fadd fast <8 x float> %i.is, splat (float 5.000000e-01)
  %i.iu = fadd fast <8 x float> %i.ir, splat (float -1.000000e+00)
  %i.iv = fmul fast <8 x float> %i.iu, %i.it      ; 2 uses
  %i.iw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.in, i32 1) ; 10 uses
  %i.ix = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.iv, i32 1) ; 7 uses
  %i.iy = fadd fast <8 x float> %i.iw, splat (float -1.000000e+00) ; 6 uses
  %i.iz = fadd fast <8 x float> %i.iw, splat (float 1.000000e+00) ; 6 uses
  %i.ja = fadd fast <8 x float> %i.iw, splat (float 2.000000e+00) ; 6 uses
  %i.jb = fcmp fast ogt <8 x float> %i.iy, splat (float -1.000000e+00)
  %i.jc = fcmp fast ogt <8 x float> %i.ij, %i.iy
  %i.jd = and <8 x i1> %i.jb, %i.jc               ; 4 uses
  %i.je = fcmp fast ogt <8 x float> %i.iw, splat (float -1.000000e+00)
  %i.jf = fcmp fast ogt <8 x float> %i.ij, %i.iw
  %i.jg = and <8 x i1> %i.je, %i.jf               ; 4 uses
  %i.jh = fcmp fast ogt <8 x float> %i.iz, splat (float -1.000000e+00)
  %i.ji = fcmp fast ogt <8 x float> %i.ij, %i.iz
  %i.jj = and <8 x i1> %i.jh, %i.ji               ; 4 uses
  %i.jk = fcmp fast ogt <8 x float> %i.ja, splat (float -1.000000e+00)
  %i.jl = fcmp fast ogt <8 x float> %i.ij, %i.ja
  %i.jm = and <8 x i1> %i.jk, %i.jl               ; 4 uses
  %i.jn = load i32, ptr %i.p, align 8, !tbaa !16
  %i.jo = sitofp fast i32 %i.jn to float
  %i.jp = insertelement <8 x float> poison, float %i.jo, i64 0
  %i.jq = shufflevector <8 x float> %i.jp, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.jr = fadd fast <8 x float> %i.ix, splat (float -1.000000e+00) ; 3 uses
  %i.js = fcmp fast ogt <8 x float> %i.jr, splat (float -1.000000e+00)
  %i.jt = fcmp fast ogt <8 x float> %i.ir, %i.jr
  %i.ju = and <8 x i1> %i.js, %i.jt               ; 4 uses
  %i.jv = fmul fast <8 x float> %i.jr, %i.ij      ; 4 uses
  %i.jw = fadd fast <8 x float> %i.jv, %i.iy
  %i.jx = fmul fast <8 x float> %i.jq, %i.jw
  %i.jy = fadd fast <8 x float> %i.jv, %i.iw
  %i.jz = fmul fast <8 x float> %i.jq, %i.jy
  %i.ka = fadd fast <8 x float> %i.jv, %i.iz
  %i.kb = fmul fast <8 x float> %i.jq, %i.ka
  %i.kc = fadd fast <8 x float> %i.jv, %i.ja
  %i.kd = fmul fast <8 x float> %i.jq, %i.kc
  %i.ke = and <8 x i1> %i.jd, %i.ju
  %i.kf = select <8 x i1> %i.ke, <8 x float> %i.jx, <8 x float> splat (float -1.000000e+00)
  %i.kg = and <8 x i1> %i.jg, %i.ju
  %i.kh = select <8 x i1> %i.kg, <8 x float> %i.jz, <8 x float> splat (float -1.000000e+00)
  %i.ki = and <8 x i1> %i.jj, %i.ju
  %i.kj = select <8 x i1> %i.ki, <8 x float> %i.kb, <8 x float> splat (float -1.000000e+00)
  %i.kk = and <8 x i1> %i.jm, %i.ju
  %i.kl = select <8 x i1> %i.kk, <8 x float> %i.kd, <8 x float> splat (float -1.000000e+00)
  %i.km = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kf) ; 2 uses
  %i.kn = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kh) ; 2 uses
  %i.ko = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kj) ; 2 uses
  %i.kp = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.kl) ; 2 uses
  %i.kq = fcmp fast ogt <8 x float> %i.ix, splat (float -1.000000e+00)
  %i.kr = fcmp fast ogt <8 x float> %i.ir, %i.ix
  %i.ks = and <8 x i1> %i.kq, %i.kr               ; 4 uses
  %i.kt = fmul fast <8 x float> %i.ix, %i.ij      ; 4 uses
  %i.ku = fadd fast <8 x float> %i.kt, %i.iy
  %i.kv = fmul fast <8 x float> %i.jq, %i.ku
  %i.kw = fadd fast <8 x float> %i.kt, %i.iw
  %i.kx = fmul fast <8 x float> %i.jq, %i.kw
  %i.ky = fadd fast <8 x float> %i.kt, %i.iz
  %i.kz = fmul fast <8 x float> %i.jq, %i.ky
  %i.la = fadd fast <8 x float> %i.kt, %i.ja
  %i.lb = fmul fast <8 x float> %i.jq, %i.la
  %i.lc = and <8 x i1> %i.jd, %i.ks
  %i.ld = select <8 x i1> %i.lc, <8 x float> %i.kv, <8 x float> splat (float -1.000000e+00)
  %i.le = and <8 x i1> %i.jg, %i.ks
  %i.lf = select <8 x i1> %i.le, <8 x float> %i.kx, <8 x float> splat (float -1.000000e+00)
  %i.lg = and <8 x i1> %i.jj, %i.ks
  %i.lh = select <8 x i1> %i.lg, <8 x float> %i.kz, <8 x float> splat (float -1.000000e+00)
  %i.li = and <8 x i1> %i.jm, %i.ks
  %i.lj = select <8 x i1> %i.li, <8 x float> %i.lb, <8 x float> splat (float -1.000000e+00)
  %i.lk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ld) ; 2 uses
  %i.ll = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lf) ; 2 uses
  %i.lm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lh) ; 2 uses
  %i.ln = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.lj) ; 2 uses
  %i.lo = fadd fast <8 x float> %i.ix, splat (float 1.000000e+00) ; 3 uses
  %i.lp = fcmp fast ogt <8 x float> %i.lo, splat (float -1.000000e+00)
  %i.lq = fcmp fast ogt <8 x float> %i.ir, %i.lo
  %i.lr = and <8 x i1> %i.lp, %i.lq               ; 4 uses
  %i.ls = fmul fast <8 x float> %i.lo, %i.ij      ; 4 uses
  %i.lt = fadd fast <8 x float> %i.ls, %i.iy
  %i.lu = fmul fast <8 x float> %i.jq, %i.lt
  %i.lv = fadd fast <8 x float> %i.ls, %i.iw
  %i.lw = fmul fast <8 x float> %i.jq, %i.lv
  %i.lx = fadd fast <8 x float> %i.ls, %i.iz
  %i.ly = fmul fast <8 x float> %i.jq, %i.lx
  %i.lz = fadd fast <8 x float> %i.ls, %i.ja
  %i.ma = fmul fast <8 x float> %i.jq, %i.lz
  %i.mb = and <8 x i1> %i.jd, %i.lr
  %i.mc = select <8 x i1> %i.mb, <8 x float> %i.lu, <8 x float> splat (float -1.000000e+00)
  %i.md = and <8 x i1> %i.jg, %i.lr
  %i.me = select <8 x i1> %i.md, <8 x float> %i.lw, <8 x float> splat (float -1.000000e+00)
  %i.mf = and <8 x i1> %i.jj, %i.lr
  %i.mg = select <8 x i1> %i.mf, <8 x float> %i.ly, <8 x float> splat (float -1.000000e+00)
  %i.mh = and <8 x i1> %i.jm, %i.lr
  %i.mi = select <8 x i1> %i.mh, <8 x float> %i.ma, <8 x float> splat (float -1.000000e+00)
  %i.mj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mc) ; 2 uses
  %i.mk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.me) ; 2 uses
  %i.ml = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mg) ; 2 uses
  %i.mm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.mi) ; 2 uses
  %i.mn = fadd fast <8 x float> %i.ix, splat (float 2.000000e+00) ; 3 uses
  %i.mo = fcmp fast ogt <8 x float> %i.mn, splat (float -1.000000e+00)
  %i.mp = fcmp fast ogt <8 x float> %i.ir, %i.mn
  %i.mq = and <8 x i1> %i.mo, %i.mp               ; 4 uses
  %i.mr = fmul fast <8 x float> %i.mn, %i.ij      ; 4 uses
  %i.ms = fadd fast <8 x float> %i.mr, %i.iy
  %i.mt = fmul fast <8 x float> %i.jq, %i.ms
  %i.mu = fadd fast <8 x float> %i.mr, %i.iw
  %i.mv = fmul fast <8 x float> %i.jq, %i.mu
  %i.mw = fadd fast <8 x float> %i.mr, %i.iz
  %i.mx = fmul fast <8 x float> %i.jq, %i.mw
  %i.my = fadd fast <8 x float> %i.mr, %i.ja
  %i.mz = fmul fast <8 x float> %i.jq, %i.my
  %i.na = and <8 x i1> %i.jd, %i.mq
  %i.nb = select <8 x i1> %i.na, <8 x float> %i.mt, <8 x float> splat (float -1.000000e+00)
  %i.nc = and <8 x i1> %i.jg, %i.mq
  %i.nd = select <8 x i1> %i.nc, <8 x float> %i.mv, <8 x float> splat (float -1.000000e+00)
  %i.ne = and <8 x i1> %i.jj, %i.mq
  %i.nf = select <8 x i1> %i.ne, <8 x float> %i.mx, <8 x float> splat (float -1.000000e+00)
  %i.ng = and <8 x i1> %i.jm, %i.mq
  %i.nh = select <8 x i1> %i.ng, <8 x float> %i.mz, <8 x float> splat (float -1.000000e+00)
  %i.ni = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nb) ; 2 uses
  %i.nj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nd) ; 2 uses
  %i.nk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nf) ; 2 uses
  %i.nl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.nh) ; 2 uses
  %i.nm = fsub fast <8 x float> %i.in, %i.iw      ; 2 uses
  %i.nn = fsub fast <8 x float> %i.iv, %i.ix      ; 2 uses
  %i.no = shufflevector <8 x float> %i.nm, <8 x float> %i.nn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.np = shufflevector <8 x float> %i.nm, <8 x float> %i.nn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.nq = shufflevector <8 x i32> %i.km, <8 x i32> %i.kn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.nr = bitcast <8 x i32> %i.nq to <8 x float>
  %i.ns = shufflevector <8 x i32> %i.km, <8 x i32> %i.kn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.nt = bitcast <8 x i32> %i.ns to <8 x float>
  %i.nu = shufflevector <8 x i32> %i.ko, <8 x i32> %i.kp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.nv = shufflevector <8 x i32> %i.ko, <8 x i32> %i.kp, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.nw = shufflevector <8 x i32> %i.lk, <8 x i32> %i.ll, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.nx = shufflevector <8 x i32> %i.lk, <8 x i32> %i.ll, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ny = shufflevector <8 x i32> %i.lm, <8 x i32> %i.ln, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.nz = shufflevector <8 x i32> %i.lm, <8 x i32> %i.ln, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.oa = shufflevector <8 x i32> %i.mj, <8 x i32> %i.mk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ob = shufflevector <8 x i32> %i.mj, <8 x i32> %i.mk, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.oc = shufflevector <8 x i32> %i.ml, <8 x i32> %i.mm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.od = shufflevector <8 x i32> %i.ml, <8 x i32> %i.mm, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.oe = shufflevector <8 x i32> %i.ni, <8 x i32> %i.nj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.of = shufflevector <8 x i32> %i.ni, <8 x i32> %i.nj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.og = shufflevector <8 x i32> %i.nk, <8 x i32> %i.nl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.oh = bitcast <8 x i32> %i.og to <8 x float>
  %i.oi = shufflevector <8 x i32> %i.nk, <8 x i32> %i.nl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.oj = bitcast <8 x i32> %i.oi to <8 x float>
  %i.ok = shufflevector <8 x float> %i.no, <8 x float> %i.nr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ol = shufflevector <8 x i32> %i.nu, <8 x i32> %i.nw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.om = bitcast <8 x i32> %i.ol to <8 x float>  ; 2 uses
  %i.on = shufflevector <8 x i32> %i.ny, <8 x i32> %i.oa, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.oo = shufflevector <8 x i32> %i.oc, <8 x i32> %i.oe, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.op = shufflevector <8 x float> %i.oh, <8 x float> %i.no, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.oq = shufflevector <8 x i32> %i.nq, <8 x i32> %i.nu, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.or = bitcast <8 x i32> %i.oq to <8 x float>  ; 2 uses
  %i.os = shufflevector <8 x i32> %i.nw, <8 x i32> %i.ny, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ot = shufflevector <8 x i32> %i.oa, <8 x i32> %i.oc, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ou = shufflevector <8 x i32> %i.oe, <8 x i32> %i.og, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.ov = bitcast <8 x i32> %i.ou to <8 x float>  ; 2 uses
  %i.ow = shufflevector <8 x float> %i.np, <8 x float> %i.nt, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ox = shufflevector <8 x i32> %i.nv, <8 x i32> %i.nx, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.oy = shufflevector <8 x i32> %i.nz, <8 x i32> %i.ob, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.oz = shufflevector <8 x i32> %i.od, <8 x i32> %i.of, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.pa = bitcast <8 x i32> %i.oz to <8 x float>  ; 2 uses
  %i.pb = shufflevector <8 x float> %i.oj, <8 x float> %i.np, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.pc = shufflevector <8 x i32> %i.ns, <8 x i32> %i.nv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.pd = shufflevector <8 x i32> %i.nx, <8 x i32> %i.nz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.pe = shufflevector <8 x i32> %i.ob, <8 x i32> %i.od, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.pf = shufflevector <8 x i32> %i.of, <8 x i32> %i.oi, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.pg = shufflevector <8 x float> %i.ok, <8 x float> %i.om, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ph = shufflevector <8 x i32> %i.on, <8 x i32> %i.oo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.pi = shufflevector <8 x float> %i.op, <8 x float> %i.or, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
end_hunk_2
