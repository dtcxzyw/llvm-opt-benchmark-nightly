inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4ncnn34transpose_pack_B_tile_int8_avxvnniERKNS_3MatERS0_iiii:bb.a
  %i.mv = getelementptr inbounds i8, ptr %.1214307.i, i64 %i.dz ; 2 uses
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !17
  %i.mx = getelementptr inbounds nuw i8, ptr %.10306.i, i64 1
  store i8 %i.mw, ptr %i.mx, align 1, !tbaa !17
  %i.my = getelementptr inbounds nuw i8, ptr %.1214307.i, i64 1
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !17
  %i.na = getelementptr inbounds nuw i8, ptr %.10306.i, i64 2
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !17
  %i.nb = getelementptr i8, ptr %i.mv, i64 1
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !17
  %i.nd = getelementptr inbounds nuw i8, ptr %.10306.i, i64 3
  store i8 %i.nc, ptr %i.nd, align 1, !tbaa !17
  %i.ne = getelementptr inbounds nuw i8, ptr %.10306.i, i64 4 ; 2 uses
  %i.nf = getelementptr inbounds i8, ptr %.1214307.i, i64 %i.eb ; 2 uses
  %i.ng = add nuw nsw i32 %.1212308.i, 2          ; 3 uses
  %i.nh = or disjoint i32 %i.ng, 1
  %i.ni = icmp slt i32 %i.nh, %5
  br i1 %i.ni, label %.lr.ph309.i, label %.preheader241.i, !llvm.loop !179

.lr.ph316.i:                                      ; preds = %.lr.ph316.i.prol.loopexit, %.lr.ph316.i
  %.2315.i = phi i32 [ %i.oh, %.lr.ph316.i ], [ %.2315.i.unr, %.lr.ph316.i.prol.loopexit ]
  %.2215314.i = phi ptr [ %i.og, %.lr.ph316.i ], [ %.2215314.i.unr, %.lr.ph316.i.prol.loopexit ] ; 3 uses
  %.11313.i = phi ptr [ %i.of, %.lr.ph316.i ], [ %.11313.i.unr, %.lr.ph316.i.prol.loopexit ] ; 9 uses
  %i.nj = load i8, ptr %.2215314.i, align 1, !tbaa !17
  store i8 %i.nj, ptr %.11313.i, align 1, !tbaa !17
  %i.nk = getelementptr inbounds nuw i8, ptr %.2215314.i, i64 1
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !17
  %i.nm = getelementptr inbounds nuw i8, ptr %.11313.i, i64 1
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !17
  %i.nn = getelementptr inbounds nuw i8, ptr %.11313.i, i64 2
  %i.no = getelementptr inbounds i8, ptr %.2215314.i, i64 %i.dz ; 3 uses
  %i.np = load i8, ptr %i.no, align 1, !tbaa !17
  store i8 %i.np, ptr %i.nn, align 1, !tbaa !17
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 1
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !17
  %i.ns = getelementptr inbounds nuw i8, ptr %.11313.i, i64 3
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !17
  %i.nt = getelementptr inbounds nuw i8, ptr %.11313.i, i64 4
  %i.nu = getelementptr inbounds i8, ptr %i.no, i64 %i.dz ; 3 uses
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !17
  store i8 %i.nv, ptr %i.nt, align 1, !tbaa !17
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 1
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !17
  %i.ny = getelementptr inbounds nuw i8, ptr %.11313.i, i64 5
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !17
  %i.nz = getelementptr inbounds nuw i8, ptr %.11313.i, i64 6
  %i.oa = getelementptr inbounds i8, ptr %i.nu, i64 %i.dz ; 3 uses
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !17
  store i8 %i.ob, ptr %i.nz, align 1, !tbaa !17
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 1
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !17
  %i.oe = getelementptr inbounds nuw i8, ptr %.11313.i, i64 7
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !17
  %i.of = getelementptr inbounds nuw i8, ptr %.11313.i, i64 8 ; 2 uses
  %i.og = getelementptr inbounds i8, ptr %i.oa, i64 %i.dz
  %i.oh = add nuw nsw i32 %.2315.i, 4             ; 2 uses
  %exitcond375.not.i.3 = icmp eq i32 %i.oh, %5
  br i1 %exitcond375.not.i.3, label %._crit_edge317.i, label %.lr.ph316.i, !llvm.loop !180

._crit_edge317.i:                                 ; preds = %.lr.ph316.i.prol.loopexit, %.lr.ph316.i, %.preheader241.i
  %.11.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader241.i ], [ %.lcssa107.unr, %.lr.ph316.i.prol.loopexit ], [ %i.of, %.lr.ph316.i ] ; 2 uses
  %indvars.iv.next377.i = add nuw nsw i64 %indvars.iv376.i, 2 ; 3 uses
  %i.oi = icmp slt i64 %indvars.iv.next377.i, %invariant.op416.i
  br i1 %i.oi, label %bb.g, label %.preheader240.loopexit.i, !llvm.loop !181

.preheader.i:                                     ; preds = %._crit_edge336.i, %.preheader.preheader.i
  %indvars.iv380.i = phi i64 [ %i.kn, %.preheader.preheader.i ], [ %indvars.iv.next381.i, %._crit_edge336.i ] ; 2 uses
  %.12339.i = phi ptr [ %.8.lcssa.i, %.preheader.preheader.i ], [ %.lcssa101, %._crit_edge336.i ] ; 4 uses
  %i.oj = load ptr, ptr %0, align 8, !tbaa !9
  %i.ok = load i32, ptr %i.b, align 4, !tbaa !15
  %i.ol = sext i32 %i.ok to i64
  %i.om = mul nsw i64 %i.ol, %i.is
  %i.on = load i64, ptr %i.it, align 8, !tbaa !16
  %i.oo = mul i64 %i.om, %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.oo
  %i.oq = getelementptr i8, ptr %i.op, i64 %indvars.iv380.i
  %i.or = getelementptr i8, ptr %i.oq, i64 %i.ko  ; 2 uses
  %i.os = load i8, ptr %i.or, align 1, !tbaa !17
  store i8 %i.os, ptr %.12339.i, align 1, !tbaa !17
  %i.ot = getelementptr inbounds nuw i8, ptr %.12339.i, i64 1 ; 2 uses
  br i1 %exitcond379.not.i, label %._crit_edge336.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i
  %i.ou = getelementptr inbounds i8, ptr %i.or, i64 %i.iv ; 2 uses
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !17
  store i8 %i.ov, ptr %i.ot, align 1, !tbaa !17
  %i.ow = getelementptr inbounds nuw i8, ptr %.12339.i, i64 2 ; 2 uses
  br i1 %exitcond379.not.i.1, label %._crit_edge336.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ox = getelementptr inbounds i8, ptr %i.ou, i64 %i.iv
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !17
  store i8 %i.oy, ptr %i.ow, align 1, !tbaa !17
  %i.oz = getelementptr inbounds nuw i8, ptr %.12339.i, i64 3
  br label %._crit_edge336.i

._crit_edge336.i:                                 ; preds = %bb.i, %bb.h, %.preheader.i
  %.lcssa101 = phi ptr [ %i.ot, %.preheader.i ], [ %i.ow, %bb.h ], [ %i.oz, %bb.i ]
  %indvars.iv.next381.i = add nsw i64 %indvars.iv380.i, 1 ; 2 uses
  %exitcond383.not.i = icmp eq i64 %indvars.iv.next381.i, %wide.trip.count.i
  br i1 %exitcond383.not.i, label %_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit, label %.preheader.i, !llvm.loop !176

_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge336.i, %._crit_edge336.us.i, %bb.b, %.preheader240.i, %.lr.ph340.split.i
  ret void
}

declare void @_ZN4ncnn38transpose_pack_B_tile_int8_avxvnniint8ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn32pack_A_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn36pack_A_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
  br label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !182  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !183
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !184
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15
  %i.k = sext i32 %i.j to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.h, %bb.d ], [ %i.k, %bb.e ] ; 22 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.n = icmp sgt i32 %3, 7
  br i1 %i.n, label %.lr.ph783.i, label %.preheader701.i

.lr.ph783.i:                                      ; preds = %bb.f
  %i.o = mul nsw i32 %i.c, %4
  %i.p = sext i32 %i.o to i64
  %i.q = sext i32 %2 to i64                       ; 2 uses
  %i.r = icmp sgt i32 %5, 3                       ; 3 uses
  %.idx502.i = shl i64 %i.l, 4                    ; 4 uses
  %.idx494.i = shl i64 %i.l, 3
  %.idx495.i = mul i64 %i.l, 12
  %.idx497.i = mul i64 %i.l, 20
  %.idx498.i = mul i64 %i.l, 24
  %.idx499.i = mul i64 %i.l, 28
  %i.s = trunc i64 %i.l to i32
  %i.t = insertelement <8 x i32> poison, i32 %i.s, i64 0
  %i.u = shufflevector <8 x i32> %i.t, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.v = mul <8 x i32> %i.u, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 3 uses
  %i.w = and i32 %5, -4                           ; 3 uses
  %i.x = zext nneg i32 %3 to i64
  br label %bb.i

.preheader701.loopexit.i:                         ; preds = %.loopexit703.i
  %i.y = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader701.i

.preheader701.i:                                  ; preds = %.preheader701.loopexit.i, %bb.f
  %.0439.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.y, %.preheader701.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.m, %bb.f ], [ %.15.i, %.preheader701.loopexit.i ] ; 4 uses
  %i.z = or disjoint i32 %.0439.lcssa.i, 3
  %i.aa = icmp slt i32 %i.z, %3
  br i1 %i.aa, label %.lr.ph833.i, label %.preheader694.i

.lr.ph833.i:                                      ; preds = %.preheader701.i
  %i.ab = mul nsw i32 %i.c, %4
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = sext i32 %2 to i64                      ; 4 uses
  %i.ae = icmp sgt i32 %5, 3                      ; 2 uses
  %.idx.i = shl i64 %i.l, 3
  %.idx493.i = mul i64 %i.l, 12
  %i.af = trunc i64 %i.l to i32
  %i.ag = insertelement <4 x i32> poison, i32 %i.af, i64 0
  %i.ah = shufflevector <4 x i32> %i.ag, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ai = mul <4 x i32> %i.ah, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.aj = and i32 %5, -4                          ; 2 uses
  %i.ak = zext i32 %.0439.lcssa.i to i64          ; 5 uses
  %i.al = sext i32 %3 to i64
  %invariant.op.i = add nsw i64 %i.al, -3         ; 3 uses
  switch i32 %i.c, label %.loopexit696.i.preheader [
    i32 4, label %.preheader700.i.us
    i32 1, label %.preheader697.i.us
  ]

.loopexit696.i.preheader:                         ; preds = %.lr.ph833.i
  %i.am = add nuw nsw i64 %i.ak, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.am)
  %i.an = xor i64 %i.ak, -1
  %i.ao = add nsw i64 %smax, %i.an
  %i.ap = and i64 %i.ao, -4
  %i.aq = add i64 %i.ap, %i.ak
  %i.ar = add i64 %i.aq, 4
  br label %.preheader694.loopexit.i

.preheader700.i.us:                               ; preds = %.lr.ph833.i, %.loopexit696.i.us
  %indvars.iv954.i.us = phi i64 [ %indvars.iv.next955.i.us, %.loopexit696.i.us ], [ %i.ak, %.lr.ph833.i ] ; 3 uses
  %.16832.i.us = phi ptr [ %.26.i.us, %.loopexit696.i.us ], [ %.0.lcssa.i, %.lr.ph833.i ] ; 2 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !9
  %i.at = add nsw i64 %indvars.iv954.i.us, %i.ad
  %i.au = mul i64 %i.at, %i.l
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.au
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ac ; 2 uses
  %i.ax = load ptr, ptr %6, align 8, !tbaa !9
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ad
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv954.i.us
  %i.ba = load <4 x float>, ptr %i.az, align 16, !tbaa !17 ; 9 uses
  br i1 %i.ae, label %.lr.ph789.i.us, label %._crit_edge790.i.us

.lr.ph789.i.us:                                   ; preds = %.preheader700.i.us, %.lr.ph789.i.us
  %.17788.i.us = phi ptr [ %i.ci, %.lr.ph789.i.us ], [ %.16832.i.us, %.preheader700.i.us ] ; 3 uses
  %.0465787.i.us = phi ptr [ %i.cj, %.lr.ph789.i.us ], [ %i.aw, %.preheader700.i.us ] ; 5 uses
  %.0477786.i.us = phi i32 [ %i.ck, %.lr.ph789.i.us ], [ 0, %.preheader700.i.us ]
  %i.bb = phi <4 x i32> [ %i.ch, %.lr.ph789.i.us ], [ zeroinitializer, %.preheader700.i.us ]
  %i.bc = load <4 x float>, ptr %.0465787.i.us, align 16, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %.0465787.i.us, i64 16
  %i.be = load <4 x float>, ptr %i.bd, align 16, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %.0465787.i.us, i64 32
  %i.bg = load <4 x float>, ptr %i.bf, align 16, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %.0465787.i.us, i64 48
  %i.bi = load <4 x float>, ptr %i.bh, align 16, !tbaa !17
  %i.bj = fmul fast <4 x float> %i.bc, %i.ba      ; 2 uses
  %i.bk = fmul fast <4 x float> %i.be, %i.ba      ; 2 uses
  %i.bl = fmul fast <4 x float> %i.bg, %i.ba      ; 2 uses
  %i.bm = fmul fast <4 x float> %i.bi, %i.ba      ; 2 uses
  %i.bn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bj)
  %i.bo = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bk)
  %i.bp = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bl)
  %i.bq = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bm)
  %i.br = fadd fast <4 x float> %i.bn, %i.bj
  %i.bs = fadd fast <4 x float> %i.bo, %i.bk
  %i.bt = fadd fast <4 x float> %i.bp, %i.bl
  %i.bu = fadd fast <4 x float> %i.bq, %i.bm
  %i.bv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.br)
  %i.bw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bs)
  %i.bx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bt)
  %i.by = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bu)
  %i.bz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bv, <4 x i32> %i.bw)
  %i.ca = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bx, <4 x i32> %i.by)
  %i.cb = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bz, <8 x i16> splat (i16 -127))
  %i.cc = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cb, <8 x i16> splat (i16 127))
  %i.cd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ca, <8 x i16> splat (i16 -127))
  %i.ce = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cd, <8 x i16> splat (i16 127))
  %i.cf = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.cc, <8 x i16> %i.ce)
  %i.cg = shufflevector <16 x i8> %i.cf, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.ch = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.bb, <16 x i8> splat (i8 127), <16 x i8> %i.cg) ; 2 uses
  store <16 x i8> %i.cg, ptr %.17788.i.us, align 1, !tbaa !17
  %i.ci = getelementptr inbounds nuw i8, ptr %.17788.i.us, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0465787.i.us, i64 64 ; 2 uses
  %i.ck = add nuw nsw i32 %.0477786.i.us, 4       ; 2 uses
  %i.cl = or disjoint i32 %i.ck, 3
  %i.cm = icmp slt i32 %i.cl, %5
  br i1 %i.cm, label %.lr.ph789.i.us, label %bb.g, !llvm.loop !185

bb.g:                                             ; preds = %.lr.ph789.i.us
  store <4 x i32> %i.ch, ptr %i.ci, align 1, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %.17788.i.us, i64 32
  br label %._crit_edge790.i.us

._crit_edge790.i.us:                              ; preds = %bb.g, %.preheader700.i.us
  %.0465.lcssa1021.i.us = phi ptr [ %i.cj, %bb.g ], [ %i.aw, %.preheader700.i.us ] ; 2 uses
  %.0477.lcssa1019.i.us = phi i32 [ %i.aj, %bb.g ], [ 0, %.preheader700.i.us ] ; 3 uses
  %.18.i.us = phi ptr [ %i.cn, %bb.g ], [ %.16832.i.us, %.preheader700.i.us ] ; 2 uses
  %i.co = or disjoint i32 %.0477.lcssa1019.i.us, 1
  %i.cp = icmp slt i32 %i.co, %5
  br i1 %i.cp, label %.lr.ph799.i.us, label %.preheader698.i.us

.lr.ph799.i.us:                                   ; preds = %._crit_edge790.i.us, %.lr.ph799.i.us
  %.19797.i.us = phi ptr [ %i.dj, %.lr.ph799.i.us ], [ %.18.i.us, %._crit_edge790.i.us ] ; 2 uses
  %.1466796.i.us = phi ptr [ %i.dk, %.lr.ph799.i.us ], [ %.0465.lcssa1021.i.us, %._crit_edge790.i.us ] ; 3 uses
  %.1478795.i.us = phi i32 [ %i.dl, %.lr.ph799.i.us ], [ %.0477.lcssa1019.i.us, %._crit_edge790.i.us ]
  %i.cq = load <4 x float>, ptr %.1466796.i.us, align 16, !tbaa !17
  %i.cr = getelementptr inbounds nuw i8, ptr %.1466796.i.us, i64 16
  %i.cs = load <4 x float>, ptr %i.cr, align 16, !tbaa !17
  %i.ct = fmul fast <4 x float> %i.cq, %i.ba      ; 2 uses
  %i.cu = fmul fast <4 x float> %i.cs, %i.ba      ; 2 uses
  %i.cv = shufflevector <4 x float> %i.ct, <4 x float> %i.cu, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cw = shufflevector <4 x float> %i.ct, <4 x float> %i.cu, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cx = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.cv)
  %i.cy = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.cw)
  %i.cz = fadd fast <4 x float> %i.cx, %i.cv
  %i.da = fadd fast <4 x float> %i.cy, %i.cw
  %i.db = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cz)
  %i.dc = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.da)
  %i.dd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.db, <4 x i32> %i.dc)
  %i.de = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dd, <8 x i16> splat (i16 -127))
  %i.df = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.de, <8 x i16> splat (i16 127))
  %i.dg = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.df, <8 x i16> poison)
  %i.dh = bitcast <16 x i8> %i.dg to <2 x i64>
  %i.di = extractelement <2 x i64> %i.dh, i64 0
  store i64 %i.di, ptr %.19797.i.us, align 8, !tbaa !186
  %i.dj = getelementptr inbounds nuw i8, ptr %.19797.i.us, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.1466796.i.us, i64 32 ; 2 uses
  %i.dl = add nuw nsw i32 %.1478795.i.us, 2       ; 3 uses
  %i.dm = or disjoint i32 %i.dl, 1
  %i.dn = icmp slt i32 %i.dm, %5
  br i1 %i.dn, label %.lr.ph799.i.us, label %.preheader698.i.us, !llvm.loop !187

.preheader698.i.us:                               ; preds = %.lr.ph799.i.us, %._crit_edge790.i.us
  %.1478.lcssa.i.us = phi i32 [ %.0477.lcssa1019.i.us, %._crit_edge790.i.us ], [ %i.dl, %.lr.ph799.i.us ] ; 5 uses
  %.1466.lcssa.i.us = phi ptr [ %.0465.lcssa1021.i.us, %._crit_edge790.i.us ], [ %i.dk, %.lr.ph799.i.us ] ; 3 uses
  %.19.lcssa.i.us = phi ptr [ %.18.i.us, %._crit_edge790.i.us ], [ %i.dj, %.lr.ph799.i.us ] ; 4 uses
  %i.do = icmp slt i32 %.1478.lcssa.i.us, %5
  br i1 %i.do, label %.lr.ph806.i.us.preheader, label %.loopexit696.i.us

.lr.ph806.i.us.preheader:                         ; preds = %.preheader698.i.us
  %i.dp = sub i32 %5, %.1478.lcssa.i.us
  %.neg327 = add i32 %.1478.lcssa.i.us, 1
  %xtraiter323 = and i32 %i.dp, 1
  %lcmp.mod324.not = icmp eq i32 %xtraiter323, 0
  br i1 %lcmp.mod324.not, label %.lr.ph806.i.us.prol.loopexit, label %.lr.ph806.i.us.prol

.lr.ph806.i.us.prol:                              ; preds = %.lr.ph806.i.us.preheader
  %i.dq = load <4 x float>, ptr %.1466.lcssa.i.us, align 16, !tbaa !17
  %i.dr = fmul fast <4 x float> %i.dq, %i.ba      ; 2 uses
  %i.ds = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dr)
  %i.dt = fadd fast <4 x float> %i.ds, %i.dr
  %i.du = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dt) ; 2 uses
  %i.dv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.du, <4 x i32> %i.du)
  %i.dw = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dv, <8 x i16> splat (i16 -127))
  %i.dx = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.dw, <8 x i16> splat (i16 127))
  %i.dy = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.dx, <8 x i16> poison)
  %i.dz = bitcast <16 x i8> %i.dy to <4 x i32>
  %i.ea = extractelement <4 x i32> %i.dz, i64 0
  store i32 %i.ea, ptr %.19.lcssa.i.us, align 4, !tbaa !43
  %i.eb = getelementptr inbounds nuw i8, ptr %.19.lcssa.i.us, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.1466.lcssa.i.us, i64 16
  %i.ed = add nuw nsw i32 %.1478.lcssa.i.us, 1
  br label %.lr.ph806.i.us.prol.loopexit

.lr.ph806.i.us.prol.loopexit:                     ; preds = %.lr.ph806.i.us.prol, %.lr.ph806.i.us.preheader
  %.lcssa291.unr = phi ptr [ poison, %.lr.ph806.i.us.preheader ], [ %i.eb, %.lr.ph806.i.us.prol ]
  %.20805.i.us.unr = phi ptr [ %.19.lcssa.i.us, %.lr.ph806.i.us.preheader ], [ %i.eb, %.lr.ph806.i.us.prol ]
  %.2467804.i.us.unr = phi ptr [ %.1466.lcssa.i.us, %.lr.ph806.i.us.preheader ], [ %i.ec, %.lr.ph806.i.us.prol ]
  %.2479803.i.us.unr = phi i32 [ %.1478.lcssa.i.us, %.lr.ph806.i.us.preheader ], [ %i.ed, %.lr.ph806.i.us.prol ]
  %i.ee = icmp eq i32 %5, %.neg327
  br i1 %i.ee, label %.loopexit696.i.us, label %.lr.ph806.i.us

.lr.ph806.i.us:                                   ; preds = %.lr.ph806.i.us.prol.loopexit, %.lr.ph806.i.us
  %.20805.i.us = phi ptr [ %i.fd, %.lr.ph806.i.us ], [ %.20805.i.us.unr, %.lr.ph806.i.us.prol.loopexit ] ; 3 uses
  %.2467804.i.us = phi ptr [ %i.fe, %.lr.ph806.i.us ], [ %.2467804.i.us.unr, %.lr.ph806.i.us.prol.loopexit ] ; 3 uses
  %.2479803.i.us = phi i32 [ %i.ff, %.lr.ph806.i.us ], [ %.2479803.i.us.unr, %.lr.ph806.i.us.prol.loopexit ]
  %i.ef = load <4 x float>, ptr %.2467804.i.us, align 16, !tbaa !17
  %i.eg = fmul fast <4 x float> %i.ef, %i.ba      ; 2 uses
  %i.eh = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.eg)
  %i.ei = fadd fast <4 x float> %i.eh, %i.eg
  %i.ej = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ei) ; 2 uses
  %i.ek = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ej, <4 x i32> %i.ej)
  %i.el = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ek, <8 x i16> splat (i16 -127))
  %i.em = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.el, <8 x i16> splat (i16 127))
  %i.en = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.em, <8 x i16> poison)
  %i.eo = bitcast <16 x i8> %i.en to <4 x i32>
  %i.ep = extractelement <4 x i32> %i.eo, i64 0
  store i32 %i.ep, ptr %.20805.i.us, align 4, !tbaa !43
  %i.eq = getelementptr inbounds nuw i8, ptr %.20805.i.us, i64 4
  %i.er = getelementptr inbounds nuw i8, ptr %.2467804.i.us, i64 16
  %i.es = load <4 x float>, ptr %i.er, align 16, !tbaa !17
  %i.et = fmul fast <4 x float> %i.es, %i.ba      ; 2 uses
  %i.eu = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.et)
  %i.ev = fadd fast <4 x float> %i.eu, %i.et
  %i.ew = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ev) ; 2 uses
  %i.ex = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ew, <4 x i32> %i.ew)
  %i.ey = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ex, <8 x i16> splat (i16 -127))
  %i.ez = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ey, <8 x i16> splat (i16 127))
  %i.fa = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ez, <8 x i16> poison)
  %i.fb = bitcast <16 x i8> %i.fa to <4 x i32>
  %i.fc = extractelement <4 x i32> %i.fb, i64 0
  store i32 %i.fc, ptr %i.eq, align 4, !tbaa !43
  %i.fd = getelementptr inbounds nuw i8, ptr %.20805.i.us, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.2467804.i.us, i64 32
  %i.ff = add nuw nsw i32 %.2479803.i.us, 2       ; 2 uses
  %exitcond952.not.i.us.1 = icmp eq i32 %i.ff, %5
  br i1 %exitcond952.not.i.us.1, label %.loopexit696.i.us, label %.lr.ph806.i.us, !llvm.loop !188

.loopexit696.i.us:                                ; preds = %.lr.ph806.i.us.prol.loopexit, %.lr.ph806.i.us, %.preheader698.i.us
  %.26.i.us = phi ptr [ %.19.lcssa.i.us, %.preheader698.i.us ], [ %.lcssa291.unr, %.lr.ph806.i.us.prol.loopexit ], [ %i.fd, %.lr.ph806.i.us ] ; 2 uses
  %indvars.iv.next955.i.us = add nuw nsw i64 %indvars.iv954.i.us, 4 ; 3 uses
  %i.fg = icmp slt i64 %indvars.iv.next955.i.us, %invariant.op.i
  br i1 %i.fg, label %.preheader700.i.us, label %.preheader694.loopexit.i, !llvm.loop !189

.preheader697.i.us:                               ; preds = %.lr.ph833.i, %.loopexit696.i.us59
  %indvars.iv954.i.us57 = phi i64 [ %indvars.iv.next955.i.us61, %.loopexit696.i.us59 ], [ %i.ak, %.lr.ph833.i ] ; 3 uses
  %.16832.i.us58 = phi ptr [ %.26.i.us60, %.loopexit696.i.us59 ], [ %.0.lcssa.i, %.lr.ph833.i ] ; 2 uses
  %i.fh = load ptr, ptr %0, align 8, !tbaa !9
  %i.fi = add nsw i64 %indvars.iv954.i.us57, %i.ad
  %i.fj = mul i64 %i.fi, %i.l
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fj
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.ac ; 2 uses
  %i.fm = load ptr, ptr %6, align 8, !tbaa !9
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.ad
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv954.i.us57
  %i.fp = load <4 x float>, ptr %i.fo, align 16, !tbaa !17 ; 9 uses
  br i1 %i.ae, label %.lr.ph812.i.us, label %._crit_edge813.i.us
end_hunk_0
begin_hunk_1_@_ZN4ncnn32pack_A_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiiS2_:bb.a
.lr.ph883.i.preheader:                            ; preds = %vector.memcheck233, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.35881.i.ph = phi ptr [ %.34.i, %iter.check ], [ %.34.i, %vector.memcheck233 ], [ %i.aen, %vec.epilog.iter.check ], [ %i.afy, %vec.epilog.middle.block ] ; 3 uses
  %.1438880.i.ph = phi i32 [ %.0437.lcssa1054.i, %iter.check ], [ %.0437.lcssa1054.i, %vector.memcheck233 ], [ %i.aep, %vec.epilog.iter.check ], [ %i.aga, %vec.epilog.middle.block ] ; 4 uses
  %.1455879.i.ph = phi ptr [ %.0454.lcssa1052.i, %iter.check ], [ %.0454.lcssa1052.i, %vector.memcheck233 ], [ %i.aer, %vec.epilog.iter.check ], [ %i.agc, %vec.epilog.middle.block ] ; 3 uses
  %i.agl = sub i32 %5, %.1438880.i.ph
  %.neg328 = add i32 %.1438880.i.ph, 1
  %xtraiter325 = and i32 %i.agl, 1
  %lcmp.mod326.not = icmp eq i32 %xtraiter325, 0
  br i1 %lcmp.mod326.not, label %.lr.ph883.i.prol.loopexit, label %.lr.ph883.i.prol

.lr.ph883.i.prol:                                 ; preds = %.lr.ph883.i.preheader
  %i.agm = load float, ptr %.1455879.i.ph, align 4, !tbaa !203
  %i.agn = fmul fast float %i.agm, %i.acx
  %i.ago = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.agn)
  %i.agp = fptosi float %i.ago to i32
  %spec.select.i687.i.prol = tail call i32 @llvm.smax.i32(i32 %i.agp, i32 -127)
  %.0.i688.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i687.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i688.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.35881.i.ph, align 1, !tbaa !17
  %i.agq = getelementptr inbounds nuw i8, ptr %.35881.i.ph, i64 1 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %.1455879.i.ph, i64 4
  %i.ags = add nuw nsw i32 %.1438880.i.ph, 1
  br label %.lr.ph883.i.prol.loopexit

.lr.ph883.i.prol.loopexit:                        ; preds = %.lr.ph883.i.prol, %.lr.ph883.i.preheader
  %.lcssa276.unr = phi ptr [ poison, %.lr.ph883.i.preheader ], [ %i.agq, %.lr.ph883.i.prol ]
  %.35881.i.unr = phi ptr [ %.35881.i.ph, %.lr.ph883.i.preheader ], [ %i.agq, %.lr.ph883.i.prol ]
  %.1438880.i.unr = phi i32 [ %.1438880.i.ph, %.lr.ph883.i.preheader ], [ %i.ags, %.lr.ph883.i.prol ]
  %.1455879.i.unr = phi ptr [ %.1455879.i.ph, %.lr.ph883.i.preheader ], [ %i.agr, %.lr.ph883.i.prol ]
  %i.agt = icmp eq i32 %5, %.neg328
  br i1 %i.agt, label %._crit_edge884.i, label %.lr.ph883.i

.lr.ph883.i:                                      ; preds = %.lr.ph883.i.prol.loopexit, %.lr.ph883.i
  %.35881.i = phi ptr [ %i.ahe, %.lr.ph883.i ], [ %.35881.i.unr, %.lr.ph883.i.prol.loopexit ] ; 3 uses
  %.1438880.i = phi i32 [ %i.ahg, %.lr.ph883.i ], [ %.1438880.i.unr, %.lr.ph883.i.prol.loopexit ]
  %.1455879.i = phi ptr [ %i.ahf, %.lr.ph883.i ], [ %.1455879.i.unr, %.lr.ph883.i.prol.loopexit ] ; 3 uses
  %i.agu = load float, ptr %.1455879.i, align 4, !tbaa !203
  %i.agv = fmul fast float %i.agu, %i.acx
  %i.agw = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.agv)
  %i.agx = fptosi float %i.agw to i32
  %spec.select.i687.i = tail call i32 @llvm.smax.i32(i32 %i.agx, i32 -127)
  %.0.i688.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i687.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i688.i to i8
  store i8 %.0.i.i, ptr %.35881.i, align 1, !tbaa !17
  %i.agy = getelementptr inbounds nuw i8, ptr %.35881.i, i64 1
  %i.agz = getelementptr inbounds nuw i8, ptr %.1455879.i, i64 4
  %i.aha = load float, ptr %i.agz, align 4, !tbaa !203
  %i.ahb = fmul fast float %i.aha, %i.acx
  %i.ahc = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ahb)
  %i.ahd = fptosi float %i.ahc to i32
  %spec.select.i687.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ahd, i32 -127)
  %.0.i688.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i687.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i688.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.agy, align 1, !tbaa !17
  %i.ahe = getelementptr inbounds nuw i8, ptr %.35881.i, i64 2 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %.1455879.i, i64 8
  %i.ahg = add nuw nsw i32 %.1438880.i, 2         ; 2 uses
  %exitcond961.not.i.1 = icmp eq i32 %i.ahg, %5
  br i1 %exitcond961.not.i.1, label %._crit_edge884.i, label %.lr.ph883.i, !llvm.loop !226

._crit_edge884.i:                                 ; preds = %.lr.ph883.i.prol.loopexit, %.lr.ph883.i, %middle.block257, %vec.epilog.middle.block, %._crit_edge874.i
  %.35.lcssa.i = phi ptr [ %.34.i, %._crit_edge874.i ], [ %i.afy, %vec.epilog.middle.block ], [ %i.aen, %middle.block257 ], [ %.lcssa276.unr, %.lr.ph883.i.prol.loopexit ], [ %i.ahe, %.lr.ph883.i ]
  %indvars.iv.next963.i = add nsw i64 %indvars.iv962.i, 1 ; 2 uses
  %exitcond965.not.i = icmp eq i64 %indvars.iv.next963.i, %wide.trip.count.i
  br i1 %exitcond965.not.i, label %_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit, label %bb.o, !llvm.loop !227

_ZN4ncnnL24pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit: ; preds = %._crit_edge884.i, %bb.b, %.preheader.i
  ret void
}

declare void @_ZN4ncnn36pack_A_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float>, ptr, <8 x i32>, <8 x float>, i8 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float>, ptr, <4 x i32>, <4 x float>, i8 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32>, <8 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smin.v16i16(<16 x i16>, <16 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smax.v16i16(<16 x i16>, <16 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16>, <16 x i16>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn42transpose_pack_A_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn46transpose_pack_A_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
  br label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !182  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !183
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !184
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15
  %i.k = sext i32 %i.j to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.h, %bb.d ], [ %i.k, %bb.e ] ; 33 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.n = icmp sgt i32 %3, 7
  br i1 %i.n, label %.lr.ph903.i, label %.preheader853.i

.lr.ph903.i:                                      ; preds = %bb.f
  %i.o = sext i32 %4 to i64
  %i.p = mul i64 %i.l, %i.o
  %i.q = sext i32 %2 to i64                       ; 2 uses
  %i.r = icmp sgt i32 %5, 7
  %.idx623.i = shl i64 %i.l, 5
  %i.s = icmp sgt i32 %5, 3                       ; 3 uses
  %.idx622.i = shl i64 %i.l, 4                    ; 2 uses
  %.idx619.i = shl i64 %i.l, 3                    ; 2 uses
  %.idx620.i = mul i64 %i.l, 12
  %i.t = and i32 %5, -4
  %i.u = zext nneg i32 %3 to i64
  %i.v = sext i32 %i.c to i64
  br label %bb.i

.preheader853.loopexit.i:                         ; preds = %.loopexit855.i
  %i.w = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader853.i

.preheader853.i:                                  ; preds = %.preheader853.loopexit.i, %bb.f
  %.0535.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.w, %.preheader853.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.m, %bb.f ], [ %.11.i, %.preheader853.loopexit.i ] ; 5 uses
  %i.x = or disjoint i32 %.0535.lcssa.i, 3
  %i.y = icmp slt i32 %i.x, %3
  br i1 %i.y, label %.lr.ph949.i, label %.preheader850.i

.lr.ph949.i:                                      ; preds = %.preheader853.i
  %i.z = sext i32 %4 to i64
  %i.aa = mul i64 %i.l, %i.z                      ; 3 uses
  %i.ab = icmp sgt i32 %5, 7
  %.idx617.i = shl i64 %i.l, 5
  %i.ac = icmp sgt i32 %5, 3                      ; 3 uses
  %.idx616.i = shl i64 %i.l, 4                    ; 2 uses
  %i.ad = sext i32 %2 to i64                      ; 4 uses
  %.idx613.i = shl i64 %i.l, 3                    ; 2 uses
  %.idx614.i = mul i64 %i.l, 12
  %i.ae = and i32 %5, -4
  %i.af = zext i32 %.0535.lcssa.i to i64          ; 6 uses
  %i.ag = sext i32 %3 to i64
  %i.ah = sext i32 %i.c to i64                    ; 3 uses
  %invariant.op.i = add nsw i64 %i.ag, -3         ; 4 uses
  switch i32 %i.c, label %.loopexit852.i.preheader [
    i32 8, label %.lr.ph949.i.split.us
    i32 4, label %.lr.ph949.i.split.us49
    i32 1, label %.lr.ph949.i.split.us59
  ]

.loopexit852.i.preheader:                         ; preds = %.lr.ph949.i
  %i.ai = add nuw nsw i64 %i.af, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.ai)
  %i.aj = xor i64 %i.af, -1
  %i.ak = add nsw i64 %smax, %i.aj
  %i.al = and i64 %i.ak, -4
  %i.am = add i64 %i.al, %i.af
  %i.an = add i64 %i.am, 4
  br label %.preheader850.loopexit.i

.lr.ph949.i.split.us:                             ; preds = %.lr.ph949.i, %.loopexit852.i.us
  %indvars.iv1104.i.us = phi i64 [ %indvars.iv.next1105.i.us, %.loopexit852.i.us ], [ %i.af, %.lr.ph949.i ] ; 2 uses
  %.12948.i.us = phi ptr [ %.23.i.us, %.loopexit852.i.us ], [ %.0.lcssa.i, %.lr.ph949.i ] ; 3 uses
  %i.ao = add nsw i64 %indvars.iv1104.i.us, %i.ad ; 2 uses
  %i.ap = load ptr, ptr %6, align 8, !tbaa !9
  %i.aq = getelementptr [4 x i8], ptr %i.ap, i64 %i.ao ; 4 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !203
  %i.as = insertelement <8 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <8 x float> %i.as, <8 x float> poison, <8 x i32> zeroinitializer
  %i.au = getelementptr i8, ptr %i.aq, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !203
  %i.aw = insertelement <8 x float> poison, float %i.av, i64 0
  %i.ax = shufflevector <8 x float> %i.aw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ay = getelementptr i8, ptr %i.aq, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !203
  %i.ba = insertelement <8 x float> poison, float %i.az, i64 0
  %i.bb = shufflevector <8 x float> %i.ba, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bc = getelementptr i8, ptr %i.aq, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !203
  %i.be = insertelement <8 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <8 x float> %i.be, <8 x float> poison, <8 x i32> zeroinitializer
  br i1 %i.ab, label %.lr.ph910.i.us.preheader, label %._crit_edge911.i.us

.lr.ph910.i.us.preheader:                         ; preds = %.lr.ph949.i.split.us
  %i.bg = load ptr, ptr %0, align 8, !tbaa !9
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.aa
  %i.bi = mul nsw i64 %i.ao, %i.ah
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bi
  br label %.lr.ph910.i.us

._crit_edge911.i.us:                              ; preds = %.lr.ph949.i.split.us
  br i1 %i.ac, label %._crit_edge911.thread.i.us, label %.loopexit852.i.us

.lr.ph910.i.us:                                   ; preds = %.lr.ph910.i.us.preheader, %.lr.ph910.i.us
  %.13908.i.us = phi ptr [ %i.dl, %.lr.ph910.i.us ], [ %.12948.i.us, %.lr.ph910.i.us.preheader ] ; 3 uses
  %.0558907.i.us = phi ptr [ %i.dm, %.lr.ph910.i.us ], [ %i.bj, %.lr.ph910.i.us.preheader ] ; 5 uses
  %.0565906.i.us = phi i32 [ %i.dn, %.lr.ph910.i.us ], [ 0, %.lr.ph910.i.us.preheader ]
  %i.bk = phi <4 x i32> [ %i.dj, %.lr.ph910.i.us ], [ zeroinitializer, %.lr.ph910.i.us.preheader ]
  %i.bl = load <8 x float>, ptr %.0558907.i.us, align 32, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.0558907.i.us, i64 32
  %i.bn = load <8 x float>, ptr %i.bm, align 32, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %.0558907.i.us, i64 64
  %i.bp = load <8 x float>, ptr %i.bo, align 32, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.0558907.i.us, i64 96
  %i.br = load <8 x float>, ptr %i.bq, align 32, !tbaa !17
  %i.bs = fmul fast <8 x float> %i.bl, %i.at      ; 2 uses
  %i.bt = fmul fast <8 x float> %i.bn, %i.ax      ; 2 uses
  %i.bu = fmul fast <8 x float> %i.bp, %i.bb      ; 2 uses
  %i.bv = fmul fast <8 x float> %i.br, %i.bf      ; 2 uses
  %i.bw = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bs)
  %i.bx = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bu)
  %i.by = fadd fast <8 x float> %i.bw, %i.bs
  %i.bz = fadd fast <8 x float> %i.bx, %i.bu
  %i.ca = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.by)
  %i.cb = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bz)
  %i.cc = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ca, <8 x i32> %i.cb)
  %i.cd = bitcast <16 x i16> %i.cc to <4 x i64>
  %i.ce = shufflevector <4 x i64> %i.cd, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.cf = bitcast <4 x i64> %i.ce to <16 x i16>
  %i.cg = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.cf, <16 x i16> splat (i16 -127))
  %i.ch = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.cg, <16 x i16> splat (i16 127))
  %i.ci = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.ch, <16 x i16> poison)
  %i.cj = bitcast <32 x i8> %i.ci to <8 x i32>
  %i.ck = shufflevector <8 x i32> %i.cj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.cl = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bt)
  %i.cm = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.bv)
  %i.cn = fadd fast <8 x float> %i.cl, %i.bt
  %i.co = fadd fast <8 x float> %i.cm, %i.bv
  %i.cp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cn)
  %i.cq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.co)
  %i.cr = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.cp, <8 x i32> %i.cq)
  %i.cs = bitcast <16 x i16> %i.cr to <4 x i64>
  %i.ct = shufflevector <4 x i64> %i.cs, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.cu = bitcast <4 x i64> %i.ct to <16 x i16>
  %i.cv = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.cu, <16 x i16> splat (i16 -127))
  %i.cw = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.cv, <16 x i16> splat (i16 127))
  %i.cx = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.cw, <16 x i16> poison)
  %i.cy = bitcast <32 x i8> %i.cx to <8 x i32>
  %i.cz = shufflevector <8 x i32> %i.cy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.da = shufflevector <4 x i32> %i.ck, <4 x i32> %i.cz, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.db = bitcast <4 x i32> %i.da to <2 x i64>    ; 2 uses
  %i.dc = shufflevector <4 x i32> %i.ck, <4 x i32> %i.cz, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dd = bitcast <4 x i32> %i.dc to <2 x i64>    ; 2 uses
  %i.de = shufflevector <2 x i64> %i.db, <2 x i64> %i.dd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.df = shufflevector <2 x i64> %i.db, <2 x i64> %i.dd, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dg = bitcast <2 x i64> %i.de to <16 x i8>
  %i.dh = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.bk, <16 x i8> splat (i8 127), <16 x i8> %i.dg)
  %i.di = bitcast <2 x i64> %i.df to <16 x i8>
  %i.dj = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.dh, <16 x i8> splat (i8 127), <16 x i8> %i.di) ; 2 uses
  store <2 x i64> %i.de, ptr %.13908.i.us, align 16, !tbaa !17
  %i.dk = getelementptr inbounds nuw i8, ptr %.13908.i.us, i64 16
  store <2 x i64> %i.df, ptr %i.dk, align 16, !tbaa !17
  %i.dl = getelementptr inbounds nuw i8, ptr %.13908.i.us, i64 32 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0558907.i.us, i64 %.idx617.i
  %i.dn = add nuw nsw i32 %.0565906.i.us, 8       ; 2 uses
  %i.do = or disjoint i32 %i.dn, 7
  %i.dp = icmp slt i32 %i.do, %5
  br i1 %i.dp, label %.lr.ph910.i.us, label %._crit_edge911.thread.i.us, !llvm.loop !228

._crit_edge911.thread.i.us:                       ; preds = %.lr.ph910.i.us, %._crit_edge911.i.us
  %.13.lcssa1160.i.us = phi ptr [ %.12948.i.us, %._crit_edge911.i.us ], [ %i.dl, %.lr.ph910.i.us ] ; 2 uses
  %.lcssa8581158.i.us = phi <4 x i32> [ zeroinitializer, %._crit_edge911.i.us ], [ %i.dj, %.lr.ph910.i.us ]
  store <4 x i32> %.lcssa8581158.i.us, ptr %.13.lcssa1160.i.us, align 16, !tbaa !17
  %i.dq = getelementptr inbounds nuw i8, ptr %.13.lcssa1160.i.us, i64 16
  br label %.loopexit852.i.us

.loopexit852.i.us:                                ; preds = %._crit_edge911.thread.i.us, %._crit_edge911.i.us
  %.23.i.us = phi ptr [ %i.dq, %._crit_edge911.thread.i.us ], [ %.12948.i.us, %._crit_edge911.i.us ] ; 2 uses
  %indvars.iv.next1105.i.us = add nuw nsw i64 %indvars.iv1104.i.us, 4 ; 3 uses
  %i.dr = icmp slt i64 %indvars.iv.next1105.i.us, %invariant.op.i
  br i1 %i.dr, label %.lr.ph949.i.split.us, label %.preheader850.loopexit.i, !llvm.loop !229

.lr.ph949.i.split.us49:                           ; preds = %.lr.ph949.i, %.loopexit852.i.us52
  %indvars.iv1104.i.us50 = phi i64 [ %indvars.iv.next1105.i.us54, %.loopexit852.i.us52 ], [ %i.af, %.lr.ph949.i ] ; 2 uses
  %.12948.i.us51 = phi ptr [ %.23.i.us53, %.loopexit852.i.us52 ], [ %.0.lcssa.i, %.lr.ph949.i ] ; 2 uses
  %i.ds = add nsw i64 %indvars.iv1104.i.us50, %i.ad ; 2 uses
  %i.dt = load ptr, ptr %6, align 8, !tbaa !9
  %i.du = getelementptr [4 x i8], ptr %i.dt, i64 %i.ds ; 4 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !203
  %i.dw = insertelement <4 x float> poison, float %i.dv, i64 0
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dy = getelementptr i8, ptr %i.du, i64 4
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !203
  %i.ea = insertelement <4 x float> poison, float %i.dz, i64 0
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ec = getelementptr i8, ptr %i.du, i64 8
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !203
  %i.ee = insertelement <4 x float> poison, float %i.ed, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = getelementptr i8, ptr %i.du, i64 12
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !203
  %i.ei = insertelement <4 x float> poison, float %i.eh, i64 0
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> zeroinitializer
  br i1 %i.ac, label %.lr.ph919.i.us.preheader, label %.loopexit852.i.us52

.lr.ph919.i.us.preheader:                         ; preds = %.lr.ph949.i.split.us49
  %i.ek = load ptr, ptr %0, align 8, !tbaa !9
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.aa
  %i.em = mul nsw i64 %i.ds, %i.ah
  %i.en = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.em
  br label %.lr.ph919.i.us

.lr.ph919.i.us:                                   ; preds = %.lr.ph919.i.us.preheader, %.lr.ph919.i.us
  %.16917.i.us = phi ptr [ %i.fu, %.lr.ph919.i.us ], [ %.12948.i.us51, %.lr.ph919.i.us.preheader ] ; 3 uses
  %.2560916.i.us = phi ptr [ %i.fv, %.lr.ph919.i.us ], [ %i.en, %.lr.ph919.i.us.preheader ] ; 5 uses
  %.0572915.i.us = phi i32 [ %i.fw, %.lr.ph919.i.us ], [ 0, %.lr.ph919.i.us.preheader ]
  %i.eo = phi <4 x i32> [ %i.ft, %.lr.ph919.i.us ], [ zeroinitializer, %.lr.ph919.i.us.preheader ]
  %i.ep = load <4 x float>, ptr %.2560916.i.us, align 16, !tbaa !17
  %i.eq = getelementptr inbounds nuw i8, ptr %.2560916.i.us, i64 16
  %i.er = load <4 x float>, ptr %i.eq, align 16, !tbaa !17
  %i.es = getelementptr inbounds nuw i8, ptr %.2560916.i.us, i64 32
  %i.et = load <4 x float>, ptr %i.es, align 16, !tbaa !17
  %i.eu = getelementptr inbounds nuw i8, ptr %.2560916.i.us, i64 48
  %i.ev = load <4 x float>, ptr %i.eu, align 16, !tbaa !17
  %i.ew = fmul fast <4 x float> %i.ep, %i.dx      ; 2 uses
  %i.ex = fmul fast <4 x float> %i.er, %i.eb      ; 2 uses
  %i.ey = fmul fast <4 x float> %i.et, %i.ef      ; 2 uses
  %i.ez = fmul fast <4 x float> %i.ev, %i.ej      ; 2 uses
  %i.fa = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ew)
  %i.fb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ex)
  %i.fc = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ey)
  %i.fd = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ez)
  %i.fe = fadd fast <4 x float> %i.fa, %i.ew
  %i.ff = fadd fast <4 x float> %i.fb, %i.ex
  %i.fg = fadd fast <4 x float> %i.fc, %i.ey
  %i.fh = fadd fast <4 x float> %i.fd, %i.ez
  %i.fi = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fe)
  %i.fj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ff)
  %i.fk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fg)
  %i.fl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fh)
  %i.fm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.fi, <4 x i32> %i.fj)
  %i.fn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.fk, <4 x i32> %i.fl)
  %i.fo = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fm, <8 x i16> splat (i16 -127))
  %i.fp = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.fo, <8 x i16> splat (i16 127))
  %i.fq = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fn, <8 x i16> splat (i16 -127))
  %i.fr = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.fq, <8 x i16> splat (i16 127))
  %i.fs = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.fp, <8 x i16> %i.fr) ; 2 uses
  %i.ft = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.eo, <16 x i8> splat (i8 127), <16 x i8> %i.fs) ; 2 uses
  store <16 x i8> %i.fs, ptr %.16917.i.us, align 16, !tbaa !17
  %i.fu = getelementptr inbounds nuw i8, ptr %.16917.i.us, i64 16 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.2560916.i.us, i64 %.idx616.i
  %i.fw = add nuw nsw i32 %.0572915.i.us, 4       ; 2 uses
  %i.fx = or disjoint i32 %i.fw, 3
  %i.fy = icmp slt i32 %i.fx, %5
  br i1 %i.fy, label %.lr.ph919.i.us, label %bb.g, !llvm.loop !230

bb.g:                                             ; preds = %.lr.ph919.i.us
  store <4 x i32> %i.ft, ptr %i.fu, align 16, !tbaa !17
  %i.fz = getelementptr inbounds nuw i8, ptr %.16917.i.us, i64 32
  br label %.loopexit852.i.us52

.loopexit852.i.us52:                              ; preds = %bb.g, %.lr.ph949.i.split.us49
  %.23.i.us53 = phi ptr [ %i.fz, %bb.g ], [ %.12948.i.us51, %.lr.ph949.i.split.us49 ] ; 2 uses
  %indvars.iv.next1105.i.us54 = add nuw nsw i64 %indvars.iv1104.i.us50, 4 ; 3 uses
  %i.ga = icmp slt i64 %indvars.iv.next1105.i.us54, %invariant.op.i
  br i1 %i.ga, label %.lr.ph949.i.split.us49, label %.preheader850.loopexit.i, !llvm.loop !229

.lr.ph949.i.split.us59:                           ; preds = %.lr.ph949.i, %.loopexit852.i.us62
end_hunk_1
begin_hunk_2_@_ZN4ncnn42transpose_pack_A_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiiS2_:bb.a
  %i.ahz = bitcast <16 x i8> %i.ahy to <4 x i32>
  %i.aia = extractelement <4 x i32> %i.ahz, i64 0 ; 2 uses
  store i32 %i.aia, ptr %.431027.i, align 4, !tbaa !43
  %sext1126.i = shl i32 %i.aia, 24
  %i.aib = ashr exact i32 %sext1126.i, 24
  %i.aic = extractelement <16 x i8> %i.ahy, i64 1
  %i.aid = sext i8 %i.aic to i32
  %i.aie = extractelement <16 x i8> %i.ahy, i64 2
  %i.aif = sext i8 %i.aie to i32
  %i.aig = extractelement <16 x i8> %i.ahy, i64 3
  %i.aih = sext i8 %i.aig to i32
  %i.aii = add i32 %.05391026.i, %i.aid
  %i.aij = add i32 %i.aii, %i.aif
  %i.aik = add i32 %i.aij, %i.aih
  %i.ail = add i32 %i.aik, %i.aib                 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %.431027.i, i64 4 ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %.45701024.i, i64 %.idx604.i ; 2 uses
  %i.aio = add nuw nsw i32 %.05471025.i, 4        ; 2 uses
  %i.aip = or disjoint i32 %i.aio, 3
  %i.aiq = icmp slt i32 %i.aip, %5
  br i1 %i.aiq, label %.lr.ph1029.i, label %bb.z, !llvm.loop !248

bb.z:                                             ; preds = %.lr.ph1029.i
  %i.air = mul nsw i32 %i.ail, 127
  store i32 %i.air, ptr %i.aim, align 4, !tbaa !43
  %i.ais = getelementptr inbounds nuw i8, ptr %.431027.i, i64 8
  br label %._crit_edge1030.i

._crit_edge1030.i:                                ; preds = %bb.z, %bb.y
  %.0547.lcssa1243.i = phi i32 [ %i.wx, %bb.z ], [ 0, %bb.y ] ; 4 uses
  %.4570.lcssa1241.i = phi ptr [ %i.ain, %bb.z ], [ %i.aex, %bb.y ] ; 3 uses
  %.44.i = phi ptr [ %i.ais, %bb.z ], [ %.361042.i, %bb.y ] ; 4 uses
  %i.ait = icmp slt i32 %.0547.lcssa1243.i, %5
  br i1 %i.ait, label %.lr.ph1039.i.preheader, label %.loopexit.i

.lr.ph1039.i.preheader:                           ; preds = %._crit_edge1030.i
  %.neg253 = or disjoint i32 %.0547.lcssa1243.i, 1
  br i1 %lcmp.mod252.not, label %.lr.ph1039.i.prol.loopexit, label %.lr.ph1039.i.prol

.lr.ph1039.i.prol:                                ; preds = %.lr.ph1039.i.preheader
  %i.aiu = load float, ptr %.4570.lcssa1241.i, align 4, !tbaa !203
  %i.aiv = fmul fast float %i.aiu, %i.afa
  %i.aiw = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.aiv)
  %i.aix = fptosi float %i.aiw to i32
  %spec.select.i841.i.prol = tail call i32 @llvm.smax.i32(i32 %i.aix, i32 -127)
  %.0.i842.i.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i841.i.prol, i32 127)
  %.0.i.i.prol = trunc nsw i32 %.0.i842.i.prol to i8
  store i8 %.0.i.i.prol, ptr %.44.i, align 1, !tbaa !17
  %i.aiy = getelementptr inbounds nuw i8, ptr %.44.i, i64 1 ; 2 uses
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %.4570.lcssa1241.i, i64 %i.l
  %i.aja = or disjoint i32 %.0547.lcssa1243.i, 1
  br label %.lr.ph1039.i.prol.loopexit

.lr.ph1039.i.prol.loopexit:                       ; preds = %.lr.ph1039.i.prol, %.lr.ph1039.i.preheader
  %.lcssa212.unr = phi ptr [ poison, %.lr.ph1039.i.preheader ], [ %i.aiy, %.lr.ph1039.i.prol ]
  %.451037.i.unr = phi ptr [ %.44.i, %.lr.ph1039.i.preheader ], [ %i.aiy, %.lr.ph1039.i.prol ]
  %.15481036.i.unr = phi i32 [ %.0547.lcssa1243.i, %.lr.ph1039.i.preheader ], [ %i.aja, %.lr.ph1039.i.prol ]
  %.55711035.i.unr = phi ptr [ %.4570.lcssa1241.i, %.lr.ph1039.i.preheader ], [ %i.aiz, %.lr.ph1039.i.prol ]
  %i.ajb = icmp eq i32 %5, %.neg253
  br i1 %i.ajb, label %.loopexit.i, label %.lr.ph1039.i

.lr.ph1039.i:                                     ; preds = %.lr.ph1039.i.prol.loopexit, %.lr.ph1039.i
  %.451037.i = phi ptr [ %i.ajm, %.lr.ph1039.i ], [ %.451037.i.unr, %.lr.ph1039.i.prol.loopexit ] ; 3 uses
  %.15481036.i = phi i32 [ %i.ajo, %.lr.ph1039.i ], [ %.15481036.i.unr, %.lr.ph1039.i.prol.loopexit ]
  %.55711035.i = phi ptr [ %i.ajn, %.lr.ph1039.i ], [ %.55711035.i.unr, %.lr.ph1039.i.prol.loopexit ] ; 2 uses
  %i.ajc = load float, ptr %.55711035.i, align 4, !tbaa !203
  %i.ajd = fmul fast float %i.ajc, %i.afa
  %i.aje = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ajd)
  %i.ajf = fptosi float %i.aje to i32
  %spec.select.i841.i = tail call i32 @llvm.smax.i32(i32 %i.ajf, i32 -127)
  %.0.i842.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i841.i, i32 127)
  %.0.i.i = trunc nsw i32 %.0.i842.i to i8
  store i8 %.0.i.i, ptr %.451037.i, align 1, !tbaa !17
  %i.ajg = getelementptr inbounds nuw i8, ptr %.451037.i, i64 1
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %.55711035.i, i64 %i.l ; 2 uses
  %i.aji = load float, ptr %i.ajh, align 4, !tbaa !203
  %i.ajj = fmul fast float %i.aji, %i.afa
  %i.ajk = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.ajj)
  %i.ajl = fptosi float %i.ajk to i32
  %spec.select.i841.i.1 = tail call i32 @llvm.smax.i32(i32 %i.ajl, i32 -127)
  %.0.i842.i.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i841.i.1, i32 127)
  %.0.i.i.1 = trunc nsw i32 %.0.i842.i.1 to i8
  store i8 %.0.i.i.1, ptr %i.ajg, align 1, !tbaa !17
  %i.ajm = getelementptr inbounds nuw i8, ptr %.451037.i, i64 2 ; 2 uses
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.ajh, i64 %i.l
  %i.ajo = add nuw nsw i32 %.15481036.i, 2        ; 2 uses
  %exitcond1111.not.i.1 = icmp eq i32 %i.ajo, %5
  br i1 %exitcond1111.not.i.1, label %.loopexit.i, label %.lr.ph1039.i, !llvm.loop !249

.loopexit.i:                                      ; preds = %.lr.ph1039.i.prol.loopexit, %.lr.ph1039.i, %._crit_edge1030.i, %bb.x, %bb.w, %bb.v, %._crit_edge1010.i, %bb.t
  %.46.i = phi ptr [ %.361042.i, %bb.t ], [ %.44.i, %._crit_edge1030.i ], [ %i.agi, %bb.v ], [ %.361042.i, %bb.w ], [ %i.ahn, %bb.x ], [ %.361042.i, %._crit_edge1010.i ], [ %.lcssa212.unr, %.lr.ph1039.i.prol.loopexit ], [ %i.ajm, %.lr.ph1039.i ]
  %indvars.iv.next1113.i = add nsw i64 %indvars.iv1112.i, 1 ; 2 uses
  %exitcond1115.not.i = icmp eq i64 %indvars.iv.next1113.i, %wide.trip.count.i
  br i1 %exitcond1115.not.i, label %_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit, label %bb.t, !llvm.loop !250

_ZN4ncnnL34transpose_pack_A_tile_fp32_to_int8ERKNS_3MatERS0_iiiiS2_.exit: ; preds = %.loopexit.i, %bb.b, %.preheader.i
  ret void
}

declare void @_ZN4ncnn46transpose_pack_A_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiiS2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32>, <4 x i32>) #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn32pack_B_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn36pack_B_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef nofpclass(nan inf) %6)
  br label %_ZN4ncnnL24pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !182  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !183
  %i.f = icmp eq i32 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !184
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15
  %i.k = sext i32 %i.j to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi i64 [ %i.h, %bb.d ], [ %i.k, %bb.e ] ; 22 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.n = icmp sgt i32 %3, 7
  br i1 %i.n, label %.lr.ph640.i, label %.preheader568.i

.lr.ph640.i:                                      ; preds = %bb.f
  %i.o = mul nsw i32 %i.c, %4
  %i.p = sext i32 %i.o to i64
  %i.q = insertelement <8 x float> poison, float %6, i64 0
  %i.r = shufflevector <8 x float> %i.q, <8 x float> poison, <8 x i32> zeroinitializer ; 21 uses
  %i.s = icmp sgt i32 %5, 3                       ; 3 uses
  %.idx417.i = shl i64 %i.l, 4                    ; 4 uses
  %.idx409.i = shl i64 %i.l, 3
  %.idx410.i = mul i64 %i.l, 12
  %.idx412.i = mul i64 %i.l, 20
  %.idx413.i = mul i64 %i.l, 24
  %.idx414.i = mul i64 %i.l, 28
  %i.t = trunc i64 %i.l to i32
  %i.u = insertelement <8 x i32> poison, i32 %i.t, i64 0
  %i.v = shufflevector <8 x i32> %i.u, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.w = mul <8 x i32> %i.v, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 3 uses
  %i.x = and i32 %5, -4                           ; 3 uses
  %i.y = zext nneg i32 %3 to i64
  %i.z = sext i32 %2 to i64
  br label %bb.g

.preheader568.loopexit.i:                         ; preds = %.loopexit570.i
  %i.aa = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %.preheader568.i

.preheader568.i:                                  ; preds = %.preheader568.loopexit.i, %bb.f
  %.0363.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.aa, %.preheader568.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.m, %bb.f ], [ %.12.i, %.preheader568.loopexit.i ] ; 4 uses
  %i.ab = or disjoint i32 %.0363.lcssa.i, 3
  %i.ac = icmp slt i32 %i.ab, %3
  br i1 %i.ac, label %.lr.ph684.i, label %.preheader559.i

.lr.ph684.i:                                      ; preds = %.preheader568.i
  %i.ad = mul nsw i32 %i.c, %4
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = insertelement <4 x float> poison, float %6, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer ; 18 uses
  %i.ah = icmp sgt i32 %5, 3                      ; 2 uses
  %.idx.i = shl i64 %i.l, 3
  %.idx408.i = mul i64 %i.l, 12
  %i.ai = trunc i64 %i.l to i32
  %i.aj = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.ak = shufflevector <4 x i32> %i.aj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.al = mul <4 x i32> %i.ak, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.am = and i32 %5, -4                          ; 2 uses
  %i.an = zext i32 %.0363.lcssa.i to i64          ; 5 uses
  %i.ao = sext i32 %3 to i64
  %i.ap = sext i32 %2 to i64                      ; 2 uses
  %invariant.op.i = add nsw i64 %i.ao, -3         ; 3 uses
  switch i32 %i.c, label %.loopexit561.i.preheader [
    i32 4, label %.preheader567.i.us
    i32 1, label %.preheader563.i.us
  ]

.loopexit561.i.preheader:                         ; preds = %.lr.ph684.i
  %i.aq = add nuw nsw i64 %i.an, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.aq)
  %i.ar = xor i64 %i.an, -1
  %i.as = add nsw i64 %smax, %i.ar
  %i.at = and i64 %i.as, -4
  %i.au = add i64 %i.at, %i.an
  %i.av = add i64 %i.au, 4
  br label %.preheader559.loopexit.i

.preheader567.i.us:                               ; preds = %.lr.ph684.i, %.loopexit561.i.us
  %indvars.iv784.i.us = phi i64 [ %indvars.iv.next785.i.us, %.loopexit561.i.us ], [ %i.an, %.lr.ph684.i ] ; 2 uses
  %.13683.i.us = phi ptr [ %.21.i.us, %.loopexit561.i.us ], [ %.0.lcssa.i, %.lr.ph684.i ] ; 2 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !9
  %i.ax = add nsw i64 %indvars.iv784.i.us, %i.ap
  %i.ay = mul i64 %i.ax, %i.l
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ae ; 2 uses
  br i1 %i.ah, label %.lr.ph646.i.us, label %.preheader566.i.us

.lr.ph646.i.us:                                   ; preds = %.preheader567.i.us, %.lr.ph646.i.us
  %.14645.i.us = phi ptr [ %i.ch, %.lr.ph646.i.us ], [ %.13683.i.us, %.preheader567.i.us ] ; 2 uses
  %.0392644.i.us = phi ptr [ %i.ci, %.lr.ph646.i.us ], [ %i.ba, %.preheader567.i.us ] ; 5 uses
  %.0402643.i.us = phi i32 [ %i.cj, %.lr.ph646.i.us ], [ 0, %.preheader567.i.us ]
  %i.bb = load <4 x float>, ptr %.0392644.i.us, align 16, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %.0392644.i.us, i64 16
  %i.bd = load <4 x float>, ptr %i.bc, align 16, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %.0392644.i.us, i64 32
  %i.bf = load <4 x float>, ptr %i.be, align 16, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %.0392644.i.us, i64 48
  %i.bh = load <4 x float>, ptr %i.bg, align 16, !tbaa !17
  %i.bi = fmul fast <4 x float> %i.bb, %i.ag      ; 2 uses
  %i.bj = fmul fast <4 x float> %i.bd, %i.ag      ; 2 uses
  %i.bk = fmul fast <4 x float> %i.bf, %i.ag      ; 2 uses
  %i.bl = fmul fast <4 x float> %i.bh, %i.ag      ; 2 uses
  %i.bm = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bi)
  %i.bn = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bj)
  %i.bo = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bk)
  %i.bp = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.bl)
  %i.bq = fadd fast <4 x float> %i.bm, %i.bi
  %i.br = fadd fast <4 x float> %i.bn, %i.bj
  %i.bs = fadd fast <4 x float> %i.bo, %i.bk
  %i.bt = fadd fast <4 x float> %i.bp, %i.bl
  %i.bu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bq)
  %i.bv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.br)
  %i.bw = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bs)
  %i.bx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bt)
  %i.by = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bu, <4 x i32> %i.bv)
  %i.bz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bw, <4 x i32> %i.bx)
  %i.ca = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.by, <8 x i16> splat (i16 -127))
  %i.cb = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ca, <8 x i16> splat (i16 127))
  %i.cc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.bz, <8 x i16> splat (i16 -127))
  %i.cd = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.cc, <8 x i16> splat (i16 127))
  %i.ce = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.cb, <8 x i16> %i.cd)
  %i.cf = add <16 x i8> %i.ce, splat (i8 127)
  %i.cg = shufflevector <16 x i8> %i.cf, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %i.cg, ptr %.14645.i.us, align 1, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %.14645.i.us, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0392644.i.us, i64 64 ; 2 uses
  %i.cj = add nuw nsw i32 %.0402643.i.us, 4       ; 2 uses
  %i.ck = or disjoint i32 %i.cj, 3
  %i.cl = icmp slt i32 %i.ck, %5
  br i1 %i.cl, label %.lr.ph646.i.us, label %.preheader566.i.us, !llvm.loop !251

.preheader566.i.us:                               ; preds = %.lr.ph646.i.us, %.preheader567.i.us
  %.0402.lcssa.i.us = phi i32 [ 0, %.preheader567.i.us ], [ %i.am, %.lr.ph646.i.us ] ; 3 uses
  %.0392.lcssa.i.us = phi ptr [ %i.ba, %.preheader567.i.us ], [ %i.ci, %.lr.ph646.i.us ] ; 2 uses
  %.14.lcssa.i.us = phi ptr [ %.13683.i.us, %.preheader567.i.us ], [ %i.ch, %.lr.ph646.i.us ] ; 2 uses
  %i.cm = or disjoint i32 %.0402.lcssa.i.us, 1
  %i.cn = icmp slt i32 %i.cm, %5
  br i1 %i.cn, label %.lr.ph653.i.us, label %.preheader564.i.us

.lr.ph653.i.us:                                   ; preds = %.preheader566.i.us, %.lr.ph653.i.us
  %.15652.i.us = phi ptr [ %i.dh, %.lr.ph653.i.us ], [ %.14.lcssa.i.us, %.preheader566.i.us ] ; 2 uses
  %.1393651.i.us = phi ptr [ %i.di, %.lr.ph653.i.us ], [ %.0392.lcssa.i.us, %.preheader566.i.us ] ; 3 uses
  %.1403650.i.us = phi i32 [ %i.dj, %.lr.ph653.i.us ], [ %.0402.lcssa.i.us, %.preheader566.i.us ]
  %i.co = load <4 x float>, ptr %.1393651.i.us, align 16, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %.1393651.i.us, i64 16
  %i.cq = load <4 x float>, ptr %i.cp, align 16, !tbaa !17
  %i.cr = fmul fast <4 x float> %i.co, %i.ag      ; 2 uses
  %i.cs = fmul fast <4 x float> %i.cq, %i.ag      ; 2 uses
  %i.ct = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cu = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ct)
  %i.cw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.cu)
  %i.cx = fadd fast <4 x float> %i.cv, %i.ct
  %i.cy = fadd fast <4 x float> %i.cw, %i.cu
  %i.cz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cx)
  %i.da = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cy)
  %i.db = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cz, <4 x i32> %i.da)
  %i.dc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.db, <8 x i16> splat (i16 -127))
  %i.dd = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.dc, <8 x i16> splat (i16 127))
  %i.de = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.dd, <8 x i16> poison)
  %i.df = bitcast <16 x i8> %i.de to <2 x i64>
  %i.dg = extractelement <2 x i64> %i.df, i64 0
  store i64 %i.dg, ptr %.15652.i.us, align 8, !tbaa !186
  %i.dh = getelementptr inbounds nuw i8, ptr %.15652.i.us, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.1393651.i.us, i64 32 ; 2 uses
  %i.dj = add nuw nsw i32 %.1403650.i.us, 2       ; 3 uses
  %i.dk = or disjoint i32 %i.dj, 1
  %i.dl = icmp slt i32 %i.dk, %5
  br i1 %i.dl, label %.lr.ph653.i.us, label %.preheader564.i.us, !llvm.loop !252

.preheader564.i.us:                               ; preds = %.lr.ph653.i.us, %.preheader566.i.us
  %.1403.lcssa.i.us = phi i32 [ %.0402.lcssa.i.us, %.preheader566.i.us ], [ %i.dj, %.lr.ph653.i.us ] ; 5 uses
  %.1393.lcssa.i.us = phi ptr [ %.0392.lcssa.i.us, %.preheader566.i.us ], [ %i.di, %.lr.ph653.i.us ] ; 3 uses
  %.15.lcssa.i.us = phi ptr [ %.14.lcssa.i.us, %.preheader566.i.us ], [ %i.dh, %.lr.ph653.i.us ] ; 4 uses
  %i.dm = icmp slt i32 %.1403.lcssa.i.us, %5
  br i1 %i.dm, label %.lr.ph660.i.us.preheader, label %.loopexit561.i.us

.lr.ph660.i.us.preheader:                         ; preds = %.preheader564.i.us
  %i.dn = sub i32 %5, %.1403.lcssa.i.us
  %.neg286 = add i32 %.1403.lcssa.i.us, 1
  %xtraiter282 = and i32 %i.dn, 1
  %lcmp.mod283.not = icmp eq i32 %xtraiter282, 0
  br i1 %lcmp.mod283.not, label %.lr.ph660.i.us.prol.loopexit, label %.lr.ph660.i.us.prol

.lr.ph660.i.us.prol:                              ; preds = %.lr.ph660.i.us.preheader
  %i.do = load <4 x float>, ptr %.1393.lcssa.i.us, align 16, !tbaa !17
  %i.dp = fmul fast <4 x float> %i.do, %i.ag      ; 2 uses
  %i.dq = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.dp)
  %i.dr = fadd fast <4 x float> %i.dq, %i.dp
  %i.ds = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dr) ; 2 uses
  %i.dt = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ds, <4 x i32> %i.ds)
  %i.du = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.dt, <8 x i16> splat (i16 -127))
  %i.dv = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.du, <8 x i16> splat (i16 127))
  %i.dw = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.dv, <8 x i16> poison)
  %i.dx = bitcast <16 x i8> %i.dw to <4 x i32>
  %i.dy = extractelement <4 x i32> %i.dx, i64 0
  store i32 %i.dy, ptr %.15.lcssa.i.us, align 4, !tbaa !43
  %i.dz = getelementptr inbounds nuw i8, ptr %.15.lcssa.i.us, i64 4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.1393.lcssa.i.us, i64 16
  %i.eb = add nuw nsw i32 %.1403.lcssa.i.us, 1
  br label %.lr.ph660.i.us.prol.loopexit

.lr.ph660.i.us.prol.loopexit:                     ; preds = %.lr.ph660.i.us.prol, %.lr.ph660.i.us.preheader
  %.lcssa254.unr = phi ptr [ poison, %.lr.ph660.i.us.preheader ], [ %i.dz, %.lr.ph660.i.us.prol ]
  %.16659.i.us.unr = phi ptr [ %.15.lcssa.i.us, %.lr.ph660.i.us.preheader ], [ %i.dz, %.lr.ph660.i.us.prol ]
  %.2394658.i.us.unr = phi ptr [ %.1393.lcssa.i.us, %.lr.ph660.i.us.preheader ], [ %i.ea, %.lr.ph660.i.us.prol ]
  %.2404657.i.us.unr = phi i32 [ %.1403.lcssa.i.us, %.lr.ph660.i.us.preheader ], [ %i.eb, %.lr.ph660.i.us.prol ]
  %i.ec = icmp eq i32 %5, %.neg286
  br i1 %i.ec, label %.loopexit561.i.us, label %.lr.ph660.i.us

.lr.ph660.i.us:                                   ; preds = %.lr.ph660.i.us.prol.loopexit, %.lr.ph660.i.us
  %.16659.i.us = phi ptr [ %i.fb, %.lr.ph660.i.us ], [ %.16659.i.us.unr, %.lr.ph660.i.us.prol.loopexit ] ; 3 uses
  %.2394658.i.us = phi ptr [ %i.fc, %.lr.ph660.i.us ], [ %.2394658.i.us.unr, %.lr.ph660.i.us.prol.loopexit ] ; 3 uses
  %.2404657.i.us = phi i32 [ %i.fd, %.lr.ph660.i.us ], [ %.2404657.i.us.unr, %.lr.ph660.i.us.prol.loopexit ]
  %i.ed = load <4 x float>, ptr %.2394658.i.us, align 16, !tbaa !17
  %i.ee = fmul fast <4 x float> %i.ed, %i.ag      ; 2 uses
  %i.ef = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ee)
  %i.eg = fadd fast <4 x float> %i.ef, %i.ee
  %i.eh = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eg) ; 2 uses
  %i.ei = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.eh, <4 x i32> %i.eh)
  %i.ej = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ei, <8 x i16> splat (i16 -127))
  %i.ek = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ej, <8 x i16> splat (i16 127))
  %i.el = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ek, <8 x i16> poison)
  %i.em = bitcast <16 x i8> %i.el to <4 x i32>
  %i.en = extractelement <4 x i32> %i.em, i64 0
  store i32 %i.en, ptr %.16659.i.us, align 4, !tbaa !43
  %i.eo = getelementptr inbounds nuw i8, ptr %.16659.i.us, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %.2394658.i.us, i64 16
  %i.eq = load <4 x float>, ptr %i.ep, align 16, !tbaa !17
  %i.er = fmul fast <4 x float> %i.eq, %i.ag      ; 2 uses
  %i.es = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.er)
  %i.et = fadd fast <4 x float> %i.es, %i.er
  %i.eu = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.et) ; 2 uses
  %i.ev = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.eu, <4 x i32> %i.eu)
  %i.ew = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ev, <8 x i16> splat (i16 -127))
  %i.ex = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ew, <8 x i16> splat (i16 127))
  %i.ey = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ex, <8 x i16> poison)
  %i.ez = bitcast <16 x i8> %i.ey to <4 x i32>
  %i.fa = extractelement <4 x i32> %i.ez, i64 0
  store i32 %i.fa, ptr %i.eo, align 4, !tbaa !43
  %i.fb = getelementptr inbounds nuw i8, ptr %.16659.i.us, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.2394658.i.us, i64 32
  %i.fd = add nuw nsw i32 %.2404657.i.us, 2       ; 2 uses
  %exitcond782.not.i.us.1 = icmp eq i32 %i.fd, %5
  br i1 %exitcond782.not.i.us.1, label %.loopexit561.i.us, label %.lr.ph660.i.us, !llvm.loop !253

.loopexit561.i.us:                                ; preds = %.lr.ph660.i.us.prol.loopexit, %.lr.ph660.i.us, %.preheader564.i.us
  %.21.i.us = phi ptr [ %.15.lcssa.i.us, %.preheader564.i.us ], [ %.lcssa254.unr, %.lr.ph660.i.us.prol.loopexit ], [ %i.fb, %.lr.ph660.i.us ] ; 2 uses
  %indvars.iv.next785.i.us = add nuw nsw i64 %indvars.iv784.i.us, 4 ; 3 uses
  %i.fe = icmp slt i64 %indvars.iv.next785.i.us, %invariant.op.i
  br i1 %i.fe, label %.preheader567.i.us, label %.preheader559.loopexit.i, !llvm.loop !254

.preheader563.i.us:                               ; preds = %.lr.ph684.i, %.loopexit561.i.us51
  %indvars.iv784.i.us49 = phi i64 [ %indvars.iv.next785.i.us53, %.loopexit561.i.us51 ], [ %i.an, %.lr.ph684.i ] ; 2 uses
  %.13683.i.us50 = phi ptr [ %.21.i.us52, %.loopexit561.i.us51 ], [ %.0.lcssa.i, %.lr.ph684.i ] ; 2 uses
  %i.ff = load ptr, ptr %0, align 8, !tbaa !9
  %i.fg = add nsw i64 %indvars.iv784.i.us49, %i.ap
  %i.fh = mul i64 %i.fg, %i.l
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fh
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.ae ; 2 uses
  br i1 %i.ah, label %.lr.ph666.i.us, label %.preheader562.i.us

.lr.ph666.i.us:                                   ; preds = %.preheader563.i.us, %.lr.ph666.i.us
  %.18665.i.us = phi ptr [ %i.gp, %.lr.ph666.i.us ], [ %.13683.i.us50, %.preheader563.i.us ] ; 2 uses
  %.4396664.i.us = phi ptr [ %i.gq, %.lr.ph666.i.us ], [ %i.fj, %.preheader563.i.us ] ; 5 uses
  %.0405663.i.us = phi i32 [ %i.gr, %.lr.ph666.i.us ], [ 0, %.preheader563.i.us ]
  %i.fk = load <4 x float>, ptr %.4396664.i.us, align 1, !tbaa !17
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.4396664.i.us, i64 %i.l
  %i.fm = load <4 x float>, ptr %i.fl, align 1, !tbaa !17
  %i.fn = getelementptr inbounds nuw i8, ptr %.4396664.i.us, i64 %.idx.i
  %i.fo = load <4 x float>, ptr %i.fn, align 1, !tbaa !17
  %i.fp = getelementptr inbounds nuw i8, ptr %.4396664.i.us, i64 %.idx408.i
  %i.fq = load <4 x float>, ptr %i.fp, align 1, !tbaa !17
  %i.fr = fmul fast <4 x float> %i.fk, %i.ag      ; 2 uses
  %i.fs = fmul fast <4 x float> %i.fm, %i.ag      ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnn42transpose_pack_B_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiif:bb.a
  %.5.lcssa.i.us.us.us = phi ptr [ %.0694.i.us.us.us, %.loopexit663.i.us.us.us ], [ %i.cb, %.lr.ph677.i.us.us.us ] ; 2 uses
  %i.cg = or disjoint i32 %.0443.lcssa.i.us.us.us, 1
  %i.ch = icmp slt i32 %i.cg, %5
  br i1 %i.ch, label %.lr.ph684.i.us.us.us, label %.preheader659.i.us.us.us

.lr.ph684.i.us.us.us:                             ; preds = %.preheader661.i.us.us.us, %.lr.ph684.i.us.us.us
  %.6683.i.us.us.us = phi ptr [ %i.de, %.lr.ph684.i.us.us.us ], [ %.5.lcssa.i.us.us.us, %.preheader661.i.us.us.us ] ; 2 uses
  %.5436682.i.us.us.us = phi ptr [ %i.df, %.lr.ph684.i.us.us.us ], [ %.4435.lcssa.i.us.us.us, %.preheader661.i.us.us.us ] ; 3 uses
  %.1444681.i.us.us.us = phi i32 [ %i.dg, %.lr.ph684.i.us.us.us ], [ %.0443.lcssa.i.us.us.us, %.preheader661.i.us.us.us ]
  %i.ci = load <8 x float>, ptr %.5436682.i.us.us.us, align 1, !tbaa !17
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.5436682.i.us.us.us, i64 %i.l
  %i.ck = load <8 x float>, ptr %i.cj, align 1, !tbaa !17
  %i.cl = fmul fast <8 x float> %i.ci, %i.s       ; 2 uses
  %i.cm = fmul fast <8 x float> %i.ck, %i.s       ; 2 uses
  %i.cn = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.cl)
  %i.co = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.cm)
  %i.cp = fadd fast <8 x float> %i.cn, %i.cl
  %i.cq = fadd fast <8 x float> %i.co, %i.cm
  %i.cr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cp)
  %i.cs = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cq)
  %i.ct = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.cr, <8 x i32> %i.cs)
  %i.cu = bitcast <16 x i16> %i.ct to <4 x i64>
  %i.cv = shufflevector <4 x i64> %i.cu, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.cw = bitcast <4 x i64> %i.cv to <16 x i16>
  %i.cx = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.cw, <16 x i16> splat (i16 -127))
  %i.cy = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.cx, <16 x i16> splat (i16 127))
  %i.cz = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.cy, <16 x i16> poison)
  %i.da = bitcast <32 x i8> %i.cz to <8 x i32>
  %i.db = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dc = bitcast <4 x i32> %i.db to <16 x i8>
  %i.dd = shufflevector <16 x i8> %i.dc, <16 x i8> poison, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %i.dd, ptr %.6683.i.us.us.us, align 1, !tbaa !17
  %i.de = getelementptr inbounds nuw i8, ptr %.6683.i.us.us.us, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.5436682.i.us.us.us, i64 %.idx492.i ; 2 uses
  %i.dg = add nuw nsw i32 %.1444681.i.us.us.us, 2 ; 3 uses
  %i.dh = or disjoint i32 %i.dg, 1
  %i.di = icmp slt i32 %i.dh, %5
  br i1 %i.di, label %.lr.ph684.i.us.us.us, label %.preheader659.i.us.us.us, !llvm.loop !292

.preheader659.i.us.us.us:                         ; preds = %.lr.ph684.i.us.us.us, %.preheader661.i.us.us.us
  %.1444.lcssa.i.us.us.us = phi i32 [ %.0443.lcssa.i.us.us.us, %.preheader661.i.us.us.us ], [ %i.dg, %.lr.ph684.i.us.us.us ] ; 2 uses
  %.5436.lcssa.i.us.us.us = phi ptr [ %.4435.lcssa.i.us.us.us, %.preheader661.i.us.us.us ], [ %i.df, %.lr.ph684.i.us.us.us ]
  %.6.lcssa.i.us.us.us = phi ptr [ %.5.lcssa.i.us.us.us, %.preheader661.i.us.us.us ], [ %i.de, %.lr.ph684.i.us.us.us ] ; 2 uses
  %i.dj = icmp slt i32 %.1444.lcssa.i.us.us.us, %5
  br i1 %i.dj, label %.lr.ph691.i.us.us.us, label %.loopexit660.i.us.us.us

.lr.ph691.i.us.us.us:                             ; preds = %.preheader659.i.us.us.us, %.lr.ph691.i.us.us.us
  %.7690.i.us.us.us = phi ptr [ %i.dy, %.lr.ph691.i.us.us.us ], [ %.6.lcssa.i.us.us.us, %.preheader659.i.us.us.us ] ; 2 uses
  %.6437689.i.us.us.us = phi ptr [ %i.dz, %.lr.ph691.i.us.us.us ], [ %.5436.lcssa.i.us.us.us, %.preheader659.i.us.us.us ] ; 2 uses
  %.2445688.i.us.us.us = phi i32 [ %i.ea, %.lr.ph691.i.us.us.us ], [ %.1444.lcssa.i.us.us.us, %.preheader659.i.us.us.us ]
  %i.dk = load <8 x float>, ptr %.6437689.i.us.us.us, align 1, !tbaa !17
  %i.dl = fmul fast <8 x float> %i.dk, %i.s       ; 2 uses
  %i.dm = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.dl)
  %i.dn = fadd fast <8 x float> %i.dm, %i.dl
  %i.do = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dn)
  %i.dp = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.do, <8 x i32> poison)
  %i.dq = bitcast <16 x i16> %i.dp to <8 x i32>
  %i.dr = shufflevector <8 x i32> %i.dq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ds = bitcast <4 x i32> %i.dr to <8 x i16>
  %i.dt = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ds, <8 x i16> splat (i16 -127))
  %i.du = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.dt, <8 x i16> splat (i16 127))
  %i.dv = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.du, <8 x i16> poison)
  %i.dw = bitcast <16 x i8> %i.dv to <2 x i64>
  %i.dx = extractelement <2 x i64> %i.dw, i64 0
  store i64 %i.dx, ptr %.7690.i.us.us.us, align 8, !tbaa !186
  %i.dy = getelementptr inbounds nuw i8, ptr %.7690.i.us.us.us, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.6437689.i.us.us.us, i64 %i.l
  %i.ea = add nuw nsw i32 %.2445688.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us = icmp eq i32 %i.ea, %5
  br i1 %exitcond.not.i.us.us.us, label %.loopexit660.i.us.us.us, label %.lr.ph691.i.us.us.us, !llvm.loop !293

.loopexit660.i.us.us.us:                          ; preds = %.lr.ph691.i.us.us.us, %.preheader659.i.us.us.us
  %.8.i.us.us.us = phi ptr [ %.6.lcssa.i.us.us.us, %.preheader659.i.us.us.us ], [ %i.dy, %.lr.ph691.i.us.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us, 8 ; 3 uses
  %i.eb = or disjoint i64 %indvars.iv.next.i.us.us.us, 7
  %i.ec = icmp samesign ult i64 %i.eb, %i.x
  br i1 %i.ec, label %.loopexit663.i.us.us.us, label %.preheader658.loopexit.i, !llvm.loop !294

.loopexit663.i.us:                                ; preds = %.lr.ph695.i.split.us, %.loopexit660.i.loopexit12.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.loopexit660.i.loopexit12.us ], [ 0, %.lr.ph695.i.split.us ] ; 2 uses
  %.0694.i.us = phi ptr [ %i.fy, %.loopexit660.i.loopexit12.us ], [ %i.m, %.lr.ph695.i.split.us ]
  %i.ed = load ptr, ptr %0, align 8, !tbaa !9
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.p
  %i.ef = add nsw i64 %indvars.iv.i.us, %i.y
  %i.eg = mul nsw i64 %i.ef, %i.z
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.eg
  br label %.lr.ph671.i.us

.lr.ph671.i.us:                                   ; preds = %.loopexit663.i.us, %.lr.ph671.i.us
  %.3670.i.us = phi ptr [ %i.fy, %.lr.ph671.i.us ], [ %.0694.i.us, %.loopexit663.i.us ] ; 2 uses
  %.2433669.i.us = phi ptr [ %i.fz, %.lr.ph671.i.us ], [ %i.eh, %.loopexit663.i.us ] ; 5 uses
  %.0442668.i.us = phi i32 [ %i.ga, %.lr.ph671.i.us ], [ 0, %.loopexit663.i.us ]
  %i.ei = load <8 x float>, ptr %.2433669.i.us, align 1, !tbaa !17
  %i.ej = getelementptr inbounds nuw i8, ptr %.2433669.i.us, i64 32
  %i.ek = load <8 x float>, ptr %i.ej, align 1, !tbaa !17
  %i.el = getelementptr inbounds nuw i8, ptr %.2433669.i.us, i64 64
  %i.em = load <8 x float>, ptr %i.el, align 1, !tbaa !17
  %i.en = getelementptr inbounds nuw i8, ptr %.2433669.i.us, i64 96
  %i.eo = load <8 x float>, ptr %i.en, align 1, !tbaa !17
  %i.ep = fmul fast <8 x float> %i.ei, %i.s       ; 2 uses
  %i.eq = fmul fast <8 x float> %i.ek, %i.s       ; 2 uses
  %i.er = fmul fast <8 x float> %i.em, %i.s       ; 2 uses
  %i.es = fmul fast <8 x float> %i.eo, %i.s       ; 2 uses
  %i.et = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ep)
  %i.eu = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.eq)
  %i.ev = fadd fast <8 x float> %i.et, %i.ep
  %i.ew = fadd fast <8 x float> %i.eu, %i.eq
  %i.ex = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ev)
  %i.ey = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ew)
  %i.ez = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ex, <8 x i32> %i.ey)
  %i.fa = bitcast <16 x i16> %i.ez to <4 x i64>
  %i.fb = shufflevector <4 x i64> %i.fa, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.fc = bitcast <4 x i64> %i.fb to <16 x i16>
  %i.fd = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.fc, <16 x i16> splat (i16 -127))
  %i.fe = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.fd, <16 x i16> splat (i16 127))
  %i.ff = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.fe, <16 x i16> poison)
  %i.fg = bitcast <32 x i8> %i.ff to <4 x i64>
  %i.fh = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.er)
  %i.fi = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.es)
  %i.fj = fadd fast <8 x float> %i.fh, %i.er
  %i.fk = fadd fast <8 x float> %i.fi, %i.es
  %i.fl = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fj)
  %i.fm = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fk)
  %i.fn = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.fl, <8 x i32> %i.fm)
  %i.fo = bitcast <16 x i16> %i.fn to <4 x i64>
  %i.fp = shufflevector <4 x i64> %i.fo, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.fq = bitcast <4 x i64> %i.fp to <16 x i16>
  %i.fr = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.fq, <16 x i16> splat (i16 -127))
  %i.fs = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.fr, <16 x i16> splat (i16 127))
  %i.ft = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.fs, <16 x i16> poison)
  %i.fu = bitcast <32 x i8> %i.ft to <4 x i64>
  %i.fv = shufflevector <4 x i64> %i.fg, <4 x i64> %i.fu, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.fw = bitcast <4 x i64> %i.fv to <32 x i8>
  %i.fx = add <32 x i8> %i.fw, splat (i8 127)
  store <32 x i8> %i.fx, ptr %.3670.i.us, align 32, !tbaa !17
  %i.fy = getelementptr inbounds nuw i8, ptr %.3670.i.us, i64 32 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.2433669.i.us, i64 %.idx495.i
  %i.ga = add nuw nsw i32 %.0442668.i.us, 4       ; 2 uses
  %i.gb = or disjoint i32 %i.ga, 3
  %i.gc = icmp slt i32 %i.gb, %5
  br i1 %i.gc, label %.lr.ph671.i.us, label %.loopexit660.i.loopexit12.us, !llvm.loop !295

.loopexit660.i.loopexit12.us:                     ; preds = %.lr.ph671.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 8 ; 3 uses
  %i.gd = or disjoint i64 %indvars.iv.next.i.us, 7
  %i.ge = icmp samesign ult i64 %i.gd, %i.x
  br i1 %i.ge, label %.loopexit663.i.us, label %.preheader658.loopexit.i, !llvm.loop !294

.preheader658.loopexit.i:                         ; preds = %.loopexit660.i.loopexit13, %.loopexit660.i.loopexit12.us, %.loopexit660.i.us.us.us, %.loopexit663.i.us.us.preheader
  %.us-phi = phi ptr [ %i.m, %.loopexit663.i.us.us.preheader ], [ %i.fy, %.loopexit660.i.loopexit12.us ], [ %.8.i.us.us.us, %.loopexit660.i.us.us.us ], [ %i.qz, %.loopexit660.i.loopexit13 ]
  %.us-phi42 = phi i64 [ %i.ac, %.loopexit663.i.us.us.preheader ], [ %indvars.iv.next.i.us, %.loopexit660.i.loopexit12.us ], [ %indvars.iv.next.i.us.us.us, %.loopexit660.i.us.us.us ], [ %indvars.iv.next.i, %.loopexit660.i.loopexit13 ]
  %i.gf = trunc nuw nsw i64 %.us-phi42 to i32
  br label %.preheader658.i

.preheader658.i:                                  ; preds = %.preheader658.loopexit.i, %bb.f
  %.0427.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.gf, %.preheader658.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %i.m, %bb.f ], [ %.us-phi, %.preheader658.loopexit.i ] ; 5 uses
  %i.gg = or disjoint i32 %.0427.lcssa.i, 3
  %i.gh = icmp slt i32 %i.gg, %3
  br i1 %i.gh, label %.lr.ph731.i, label %.preheader652.i

.lr.ph731.i:                                      ; preds = %.preheader658.i
  %i.gi = sext i32 %4 to i64
  %i.gj = mul i64 %i.l, %i.gi                     ; 3 uses
  %i.gk = icmp ne i32 %i.c, 8
  %i.gl = insertelement <8 x float> poison, float %6, i64 0
  %i.gm = shufflevector <8 x float> %i.gl, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.gn = icmp slt i32 %5, 8
  %.idx490.i = shl i64 %i.l, 5
  %i.go = insertelement <4 x float> poison, float %6, i64 0
  %i.gp = shufflevector <4 x float> %i.go, <4 x float> poison, <4 x i32> zeroinitializer ; 13 uses
  %.idx489.i = shl i64 %i.l, 4                    ; 2 uses
  %i.gq = icmp eq i32 %i.c, 1
  %i.gr = icmp sgt i32 %5, 3
  %.idx486.i = shl i64 %i.l, 3                    ; 2 uses
  %.idx487.i = mul i64 %i.l, 12
  %i.gs = and i32 %5, -4
  %i.gt = zext i32 %.0427.lcssa.i to i64          ; 6 uses
  %i.gu = sext i32 %3 to i64
  %i.gv = sext i32 %2 to i64                      ; 3 uses
  %i.gw = sext i32 %i.c to i64                    ; 3 uses
  %brmerge804.i = or i1 %i.gn, %i.gk
  %invariant.op.i = add nsw i64 %i.gu, -3         ; 4 uses
  br i1 %brmerge804.i, label %.lr.ph731.i.split.us, label %.lr.ph701.i.preheader

.lr.ph731.i.split.us:                             ; preds = %.lr.ph731.i
  %i.gx = icmp slt i32 %5, 4
  %i.gy = icmp ne i32 %i.c, 4
  %brmerge807.i = or i1 %i.gx, %i.gy
  br i1 %brmerge807.i, label %.lr.ph731.i.split.us.split.us, label %.loopexit657.i.us

.lr.ph731.i.split.us.split.us:                    ; preds = %.lr.ph731.i.split.us
  br i1 %i.gq, label %.loopexit657.i.us.us.us, label %.loopexit657.i.us.us.preheader

.loopexit657.i.us.us.preheader:                   ; preds = %.lr.ph731.i.split.us.split.us
  %i.gz = add nuw nsw i64 %i.gt, 4
  %smax = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.gz)
  %i.ha = xor i64 %i.gt, -1
  %i.hb = add nsw i64 %smax, %i.ha
  %i.hc = and i64 %i.hb, -4
  %i.hd = add i64 %i.hc, %i.gt
  %i.he = add i64 %i.hd, 4
  br label %.preheader652.loopexit.i

.loopexit657.i.us.us.us:                          ; preds = %.lr.ph731.i.split.us.split.us, %.loopexit654.i.us.us.us
  %indvars.iv865.i.us.us.us = phi i64 [ %indvars.iv.next866.i.us.us.us, %.loopexit654.i.us.us.us ], [ %i.gt, %.lr.ph731.i.split.us.split.us ] ; 2 uses
  %.9730.i.us.us.us = phi ptr [ %.17.i.us.us.us, %.loopexit654.i.us.us.us ], [ %.0.lcssa.i, %.lr.ph731.i.split.us.split.us ] ; 2 uses
  %i.hf = load ptr, ptr %0, align 8, !tbaa !9
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.gj
  %i.hh = add nsw i64 %indvars.iv865.i.us.us.us, %i.gv
  %i.hi = mul nuw nsw i64 %i.hh, %i.gw
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.hi ; 2 uses
  br i1 %i.gr, label %.lr.ph713.i.us.us.us, label %.preheader655.i.us.us.us

.lr.ph713.i.us.us.us:                             ; preds = %.loopexit657.i.us.us.us, %.lr.ph713.i.us.us.us
  %.14712.i.us.us.us = phi ptr [ %i.iq, %.lr.ph713.i.us.us.us ], [ %.9730.i.us.us.us, %.loopexit657.i.us.us.us ] ; 2 uses
  %.4451711.i.us.us.us = phi ptr [ %i.ir, %.lr.ph713.i.us.us.us ], [ %i.hj, %.loopexit657.i.us.us.us ] ; 5 uses
  %.0462710.i.us.us.us = phi i32 [ %i.is, %.lr.ph713.i.us.us.us ], [ 0, %.loopexit657.i.us.us.us ]
  %i.hk = load <4 x float>, ptr %.4451711.i.us.us.us, align 1, !tbaa !17
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.4451711.i.us.us.us, i64 %i.l
  %i.hm = load <4 x float>, ptr %i.hl, align 1, !tbaa !17
  %i.hn = getelementptr inbounds nuw i8, ptr %.4451711.i.us.us.us, i64 %.idx486.i
  %i.ho = load <4 x float>, ptr %i.hn, align 1, !tbaa !17
  %i.hp = getelementptr inbounds nuw i8, ptr %.4451711.i.us.us.us, i64 %.idx487.i
  %i.hq = load <4 x float>, ptr %i.hp, align 1, !tbaa !17
  %i.hr = fmul fast <4 x float> %i.hk, %i.gp      ; 2 uses
  %i.hs = fmul fast <4 x float> %i.hm, %i.gp      ; 2 uses
  %i.ht = fmul fast <4 x float> %i.ho, %i.gp      ; 2 uses
  %i.hu = fmul fast <4 x float> %i.hq, %i.gp      ; 2 uses
  %i.hv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hr)
  %i.hw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hs)
  %i.hx = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.ht)
  %i.hy = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.hu)
  %i.hz = fadd fast <4 x float> %i.hv, %i.hr
  %i.ia = fadd fast <4 x float> %i.hw, %i.hs
  %i.ib = fadd fast <4 x float> %i.hx, %i.ht
  %i.ic = fadd fast <4 x float> %i.hy, %i.hu
  %i.id = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.hz)
  %i.ie = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ia)
  %i.if = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ib)
  %i.ig = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ic)
  %i.ih = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.id, <4 x i32> %i.ie)
  %i.ii = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.if, <4 x i32> %i.ig)
  %i.ij = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ih, <8 x i16> splat (i16 -127))
  %i.ik = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ij, <8 x i16> splat (i16 127))
  %i.il = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ii, <8 x i16> splat (i16 -127))
  %i.im = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.il, <8 x i16> splat (i16 127))
  %i.in = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ik, <8 x i16> %i.im)
  %i.io = add <16 x i8> %i.in, splat (i8 127)
  %i.ip = shufflevector <16 x i8> %i.io, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %i.ip, ptr %.14712.i.us.us.us, align 1, !tbaa !17
  %i.iq = getelementptr inbounds nuw i8, ptr %.14712.i.us.us.us, i64 16 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.4451711.i.us.us.us, i64 %.idx489.i ; 2 uses
  %i.is = add nuw nsw i32 %.0462710.i.us.us.us, 4 ; 2 uses
  %i.it = or disjoint i32 %i.is, 3
  %i.iu = icmp slt i32 %i.it, %5
  br i1 %i.iu, label %.lr.ph713.i.us.us.us, label %.preheader655.i.us.us.us, !llvm.loop !296

.preheader655.i.us.us.us:                         ; preds = %.lr.ph713.i.us.us.us, %.loopexit657.i.us.us.us
  %.0462.lcssa.i.us.us.us = phi i32 [ 0, %.loopexit657.i.us.us.us ], [ %i.gs, %.lr.ph713.i.us.us.us ] ; 3 uses
  %.4451.lcssa.i.us.us.us = phi ptr [ %i.hj, %.loopexit657.i.us.us.us ], [ %i.ir, %.lr.ph713.i.us.us.us ] ; 2 uses
  %.14.lcssa.i.us.us.us = phi ptr [ %.9730.i.us.us.us, %.loopexit657.i.us.us.us ], [ %i.iq, %.lr.ph713.i.us.us.us ] ; 2 uses
  %i.iv = or disjoint i32 %.0462.lcssa.i.us.us.us, 1
  %i.iw = icmp slt i32 %i.iv, %5
  br i1 %i.iw, label %.lr.ph720.i.us.us.us, label %.preheader653.i.us.us.us

.lr.ph720.i.us.us.us:                             ; preds = %.preheader655.i.us.us.us, %.lr.ph720.i.us.us.us
  %.15719.i.us.us.us = phi ptr [ %i.jq, %.lr.ph720.i.us.us.us ], [ %.14.lcssa.i.us.us.us, %.preheader655.i.us.us.us ] ; 2 uses
  %.5452718.i.us.us.us = phi ptr [ %i.jr, %.lr.ph720.i.us.us.us ], [ %.4451.lcssa.i.us.us.us, %.preheader655.i.us.us.us ] ; 3 uses
  %.1463717.i.us.us.us = phi i32 [ %i.js, %.lr.ph720.i.us.us.us ], [ %.0462.lcssa.i.us.us.us, %.preheader655.i.us.us.us ]
  %i.ix = load <4 x float>, ptr %.5452718.i.us.us.us, align 1, !tbaa !17
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.5452718.i.us.us.us, i64 %i.l
  %i.iz = load <4 x float>, ptr %i.iy, align 1, !tbaa !17
  %i.ja = fmul fast <4 x float> %i.ix, %i.gp      ; 2 uses
  %i.jb = fmul fast <4 x float> %i.iz, %i.gp      ; 2 uses
  %i.jc = shufflevector <4 x float> %i.ja, <4 x float> %i.jb, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.jd = shufflevector <4 x float> %i.ja, <4 x float> %i.jb, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.je = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.jc)
  %i.jf = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.jd)
  %i.jg = fadd fast <4 x float> %i.je, %i.jc
  %i.jh = fadd fast <4 x float> %i.jf, %i.jd
  %i.ji = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jg)
  %i.jj = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.jh)
  %i.jk = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ji, <4 x i32> %i.jj)
  %i.jl = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.jk, <8 x i16> splat (i16 -127))
  %i.jm = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.jl, <8 x i16> splat (i16 127))
  %i.jn = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.jm, <8 x i16> poison)
  %i.jo = bitcast <16 x i8> %i.jn to <2 x i64>
  %i.jp = extractelement <2 x i64> %i.jo, i64 0
  store i64 %i.jp, ptr %.15719.i.us.us.us, align 8, !tbaa !186
  %i.jq = getelementptr inbounds nuw i8, ptr %.15719.i.us.us.us, i64 8 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.5452718.i.us.us.us, i64 %.idx486.i ; 2 uses
  %i.js = add nuw nsw i32 %.1463717.i.us.us.us, 2 ; 3 uses
  %i.jt = or disjoint i32 %i.js, 1
  %i.ju = icmp slt i32 %i.jt, %5
  br i1 %i.ju, label %.lr.ph720.i.us.us.us, label %.preheader653.i.us.us.us, !llvm.loop !297

.preheader653.i.us.us.us:                         ; preds = %.lr.ph720.i.us.us.us, %.preheader655.i.us.us.us
  %.1463.lcssa.i.us.us.us = phi i32 [ %.0462.lcssa.i.us.us.us, %.preheader655.i.us.us.us ], [ %i.js, %.lr.ph720.i.us.us.us ] ; 5 uses
  %.5452.lcssa.i.us.us.us = phi ptr [ %.4451.lcssa.i.us.us.us, %.preheader655.i.us.us.us ], [ %i.jr, %.lr.ph720.i.us.us.us ] ; 3 uses
  %.15.lcssa.i.us.us.us = phi ptr [ %.14.lcssa.i.us.us.us, %.preheader655.i.us.us.us ], [ %i.jq, %.lr.ph720.i.us.us.us ] ; 4 uses
  %i.jv = icmp slt i32 %.1463.lcssa.i.us.us.us, %5
  br i1 %i.jv, label %.lr.ph727.i.us.us.us.preheader, label %.loopexit654.i.us.us.us

.lr.ph727.i.us.us.us.preheader:                   ; preds = %.preheader653.i.us.us.us
  %i.jw = sub i32 %5, %.1463.lcssa.i.us.us.us
  %.neg = add i32 %.1463.lcssa.i.us.us.us, 1
  %xtraiter = and i32 %i.jw, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph727.i.us.us.us.prol.loopexit, label %.lr.ph727.i.us.us.us.prol

.lr.ph727.i.us.us.us.prol:                        ; preds = %.lr.ph727.i.us.us.us.preheader
  %i.jx = load <4 x float>, ptr %.5452.lcssa.i.us.us.us, align 1, !tbaa !17
  %i.jy = fmul fast <4 x float> %i.jx, %i.gp      ; 2 uses
  %i.jz = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.jy)
  %i.ka = fadd fast <4 x float> %i.jz, %i.jy
  %i.kb = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ka) ; 2 uses
  %i.kc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kb, <4 x i32> %i.kb)
  %i.kd = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.kc, <8 x i16> splat (i16 -127))
  %i.ke = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.kd, <8 x i16> splat (i16 127))
  %i.kf = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ke, <8 x i16> poison)
  %i.kg = bitcast <16 x i8> %i.kf to <4 x i32>
  %i.kh = extractelement <4 x i32> %i.kg, i64 0
  store i32 %i.kh, ptr %.15.lcssa.i.us.us.us, align 4, !tbaa !43
  %i.ki = getelementptr inbounds nuw i8, ptr %.15.lcssa.i.us.us.us, i64 4 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.5452.lcssa.i.us.us.us, i64 %i.l
  %i.kk = add nuw nsw i32 %.1463.lcssa.i.us.us.us, 1
  br label %.lr.ph727.i.us.us.us.prol.loopexit

.lr.ph727.i.us.us.us.prol.loopexit:               ; preds = %.lr.ph727.i.us.us.us.prol, %.lr.ph727.i.us.us.us.preheader
  %.lcssa196.unr = phi ptr [ poison, %.lr.ph727.i.us.us.us.preheader ], [ %i.ki, %.lr.ph727.i.us.us.us.prol ]
  %.16726.i.us.us.us.unr = phi ptr [ %.15.lcssa.i.us.us.us, %.lr.ph727.i.us.us.us.preheader ], [ %i.ki, %.lr.ph727.i.us.us.us.prol ]
  %.6453725.i.us.us.us.unr = phi ptr [ %.5452.lcssa.i.us.us.us, %.lr.ph727.i.us.us.us.preheader ], [ %i.kj, %.lr.ph727.i.us.us.us.prol ]
  %.2464724.i.us.us.us.unr = phi i32 [ %.1463.lcssa.i.us.us.us, %.lr.ph727.i.us.us.us.preheader ], [ %i.kk, %.lr.ph727.i.us.us.us.prol ]
  %i.kl = icmp eq i32 %5, %.neg
  br i1 %i.kl, label %.loopexit654.i.us.us.us, label %.lr.ph727.i.us.us.us

.lr.ph727.i.us.us.us:                             ; preds = %.lr.ph727.i.us.us.us.prol.loopexit, %.lr.ph727.i.us.us.us
  %.16726.i.us.us.us = phi ptr [ %i.lk, %.lr.ph727.i.us.us.us ], [ %.16726.i.us.us.us.unr, %.lr.ph727.i.us.us.us.prol.loopexit ] ; 3 uses
  %.6453725.i.us.us.us = phi ptr [ %i.ll, %.lr.ph727.i.us.us.us ], [ %.6453725.i.us.us.us.unr, %.lr.ph727.i.us.us.us.prol.loopexit ] ; 2 uses
  %.2464724.i.us.us.us = phi i32 [ %i.lm, %.lr.ph727.i.us.us.us ], [ %.2464724.i.us.us.us.unr, %.lr.ph727.i.us.us.us.prol.loopexit ]
  %i.km = load <4 x float>, ptr %.6453725.i.us.us.us, align 1, !tbaa !17
  %i.kn = fmul fast <4 x float> %i.km, %i.gp      ; 2 uses
  %i.ko = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.kn)
  %i.kp = fadd fast <4 x float> %i.ko, %i.kn
  %i.kq = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kp) ; 2 uses
  %i.kr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.kq, <4 x i32> %i.kq)
  %i.ks = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.kr, <8 x i16> splat (i16 -127))
  %i.kt = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ks, <8 x i16> splat (i16 127))
  %i.ku = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.kt, <8 x i16> poison)
  %i.kv = bitcast <16 x i8> %i.ku to <4 x i32>
  %i.kw = extractelement <4 x i32> %i.kv, i64 0
  store i32 %i.kw, ptr %.16726.i.us.us.us, align 4, !tbaa !43
  %i.kx = getelementptr inbounds nuw i8, ptr %.16726.i.us.us.us, i64 4
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.6453725.i.us.us.us, i64 %i.l ; 2 uses
  %i.kz = load <4 x float>, ptr %i.ky, align 1, !tbaa !17
  %i.la = fmul fast <4 x float> %i.kz, %i.gp      ; 2 uses
  %i.lb = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.la)
  %i.lc = fadd fast <4 x float> %i.lb, %i.la
  %i.ld = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lc) ; 2 uses
  %i.le = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ld, <4 x i32> %i.ld)
  %i.lf = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.le, <8 x i16> splat (i16 -127))
  %i.lg = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.lf, <8 x i16> splat (i16 127))
  %i.lh = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.lg, <8 x i16> poison)
  %i.li = bitcast <16 x i8> %i.lh to <4 x i32>
  %i.lj = extractelement <4 x i32> %i.li, i64 0
  store i32 %i.lj, ptr %i.kx, align 4, !tbaa !43
  %i.lk = getelementptr inbounds nuw i8, ptr %.16726.i.us.us.us, i64 8 ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.l
  %i.lm = add nuw nsw i32 %.2464724.i.us.us.us, 2 ; 2 uses
  %exitcond864.not.i.us.us.us.1 = icmp eq i32 %i.lm, %5
  br i1 %exitcond864.not.i.us.us.us.1, label %.loopexit654.i.us.us.us, label %.lr.ph727.i.us.us.us, !llvm.loop !298

.loopexit654.i.us.us.us:                          ; preds = %.lr.ph727.i.us.us.us.prol.loopexit, %.lr.ph727.i.us.us.us, %.preheader653.i.us.us.us
  %.17.i.us.us.us = phi ptr [ %.15.lcssa.i.us.us.us, %.preheader653.i.us.us.us ], [ %.lcssa196.unr, %.lr.ph727.i.us.us.us.prol.loopexit ], [ %i.lk, %.lr.ph727.i.us.us.us ] ; 2 uses
  %indvars.iv.next866.i.us.us.us = add nuw nsw i64 %indvars.iv865.i.us.us.us, 4 ; 3 uses
  %i.ln = icmp slt i64 %indvars.iv.next866.i.us.us.us, %invariant.op.i
  br i1 %i.ln, label %.loopexit657.i.us.us.us, label %.preheader652.loopexit.i, !llvm.loop !299

.loopexit657.i.us:                                ; preds = %.lr.ph731.i.split.us, %.loopexit654.i.loopexit10.us
  %indvars.iv865.i.us = phi i64 [ %indvars.iv.next866.i.us, %.loopexit654.i.loopexit10.us ], [ %i.gt, %.lr.ph731.i.split.us ] ; 2 uses
  %.9730.i.us = phi ptr [ %i.my, %.loopexit654.i.loopexit10.us ], [ %.0.lcssa.i, %.lr.ph731.i.split.us ]
  %i.lo = load ptr, ptr %0, align 8, !tbaa !9
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.gj
  %i.lq = add nsw i64 %indvars.iv865.i.us, %i.gv
  %i.lr = mul nsw i64 %i.lq, %i.gw
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.lr
  br label %.lr.ph707.i.us

.lr.ph707.i.us:                                   ; preds = %.loopexit657.i.us, %.lr.ph707.i.us
  %.12706.i.us = phi ptr [ %i.my, %.lr.ph707.i.us ], [ %.9730.i.us, %.loopexit657.i.us ] ; 2 uses
  %.2449705.i.us = phi ptr [ %i.mz, %.lr.ph707.i.us ], [ %i.ls, %.loopexit657.i.us ] ; 5 uses
  %.0461704.i.us = phi i32 [ %i.na, %.lr.ph707.i.us ], [ 0, %.loopexit657.i.us ]
  %i.lt = load <4 x float>, ptr %.2449705.i.us, align 16, !tbaa !17
  %i.lu = getelementptr inbounds nuw i8, ptr %.2449705.i.us, i64 16
  %i.lv = load <4 x float>, ptr %i.lu, align 16, !tbaa !17
  %i.lw = getelementptr inbounds nuw i8, ptr %.2449705.i.us, i64 32
  %i.lx = load <4 x float>, ptr %i.lw, align 16, !tbaa !17
  %i.ly = getelementptr inbounds nuw i8, ptr %.2449705.i.us, i64 48
  %i.lz = load <4 x float>, ptr %i.ly, align 16, !tbaa !17
  %i.ma = fmul fast <4 x float> %i.lt, %i.gp      ; 2 uses
  %i.mb = fmul fast <4 x float> %i.lv, %i.gp      ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4ncnn42transpose_pack_B_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiif:bb.a
  %i.mm = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mi)
  %i.mn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mj)
  %i.mo = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.mk)
  %i.mp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ml)
  %i.mq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mm, <4 x i32> %i.mn)
  %i.mr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.mo, <4 x i32> %i.mp)
  %i.ms = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mq, <8 x i16> splat (i16 -127))
  %i.mt = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.ms, <8 x i16> splat (i16 127))
  %i.mu = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.mr, <8 x i16> splat (i16 -127))
  %i.mv = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.mu, <8 x i16> splat (i16 127))
  %i.mw = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.mt, <8 x i16> %i.mv)
  %i.mx = add <16 x i8> %i.mw, splat (i8 127)
  store <16 x i8> %i.mx, ptr %.12706.i.us, align 16, !tbaa !17
  %i.my = getelementptr inbounds nuw i8, ptr %.12706.i.us, i64 16 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.2449705.i.us, i64 %.idx489.i
  %i.na = add nuw nsw i32 %.0461704.i.us, 4       ; 2 uses
  %i.nb = or disjoint i32 %i.na, 3
  %i.nc = icmp slt i32 %i.nb, %5
  br i1 %i.nc, label %.lr.ph707.i.us, label %.loopexit654.i.loopexit10.us, !llvm.loop !300

.loopexit654.i.loopexit10.us:                     ; preds = %.lr.ph707.i.us
  %indvars.iv.next866.i.us = add nuw nsw i64 %indvars.iv865.i.us, 4 ; 3 uses
  %i.nd = icmp slt i64 %indvars.iv.next866.i.us, %invariant.op.i
  br i1 %i.nd, label %.loopexit657.i.us, label %.preheader652.loopexit.i, !llvm.loop !299

.lr.ph.i.preheader:                               ; preds = %.lr.ph695.i, %.loopexit660.i.loopexit13
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit660.i.loopexit13 ], [ 0, %.lr.ph695.i ] ; 2 uses
  %.0694.i = phi ptr [ %i.qz, %.loopexit660.i.loopexit13 ], [ %i.m, %.lr.ph695.i ]
  %i.ne = load ptr, ptr %0, align 8, !tbaa !9
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.p
  %i.ng = add nsw i64 %indvars.iv.i, %i.y
  %i.nh = mul nsw i64 %i.ng, %i.z
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.nf, i64 %i.nh
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.1666.i = phi ptr [ %i.qz, %.lr.ph.i ], [ %.0694.i, %.lr.ph.i.preheader ] ; 3 uses
  %.0431665.i = phi ptr [ %i.ra, %.lr.ph.i ], [ %i.ni, %.lr.ph.i.preheader ] ; 9 uses
  %.0440664.i = phi i32 [ %i.rb, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.nj = load <8 x float>, ptr %.0431665.i, align 32, !tbaa !17
  %i.nk = getelementptr inbounds nuw i8, ptr %.0431665.i, i64 32
  %i.nl = load <8 x float>, ptr %i.nk, align 32, !tbaa !17
  %i.nm = getelementptr inbounds nuw i8, ptr %.0431665.i, i64 64
  %i.nn = load <8 x float>, ptr %i.nm, align 32, !tbaa !17
  %i.no = getelementptr inbounds nuw i8, ptr %.0431665.i, i64 96
  %i.np = load <8 x float>, ptr %i.no, align 32, !tbaa !17
  %i.nq = getelementptr inbounds nuw i8, ptr %.0431665.i, i64 128
  %i.nr = load <8 x float>, ptr %i.nq, align 32, !tbaa !17
  %i.ns = getelementptr inbounds nuw i8, ptr %.0431665.i, i64 160
  %i.nt = load <8 x float>, ptr %i.ns, align 32, !tbaa !17
  %i.nu = getelementptr inbounds nuw i8, ptr %.0431665.i, i64 192
  %i.nv = load <8 x float>, ptr %i.nu, align 32, !tbaa !17
  %i.nw = getelementptr inbounds nuw i8, ptr %.0431665.i, i64 224
  %i.nx = load <8 x float>, ptr %i.nw, align 32, !tbaa !17
  %i.ny = fmul fast <8 x float> %i.nj, %i.s       ; 2 uses
  %i.nz = fmul fast <8 x float> %i.nl, %i.s       ; 2 uses
  %i.oa = fmul fast <8 x float> %i.nn, %i.s       ; 2 uses
  %i.ob = fmul fast <8 x float> %i.np, %i.s       ; 2 uses
  %i.oc = fmul fast <8 x float> %i.nr, %i.s       ; 2 uses
  %i.od = fmul fast <8 x float> %i.nt, %i.s       ; 2 uses
  %i.oe = fmul fast <8 x float> %i.nv, %i.s       ; 2 uses
  %i.of = fmul fast <8 x float> %i.nx, %i.s       ; 2 uses
  %i.og = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ny)
  %i.oh = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.oa)
  %i.oi = fadd fast <8 x float> %i.og, %i.ny
  %i.oj = fadd fast <8 x float> %i.oh, %i.oa
  %i.ok = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.oi)
  %i.ol = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.oj)
  %i.om = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.ok, <8 x i32> %i.ol)
  %i.on = bitcast <16 x i16> %i.om to <4 x i64>
  %i.oo = shufflevector <4 x i64> %i.on, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.op = bitcast <4 x i64> %i.oo to <16 x i16>
  %i.oq = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.op, <16 x i16> splat (i16 -127))
  %i.or = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.oq, <16 x i16> splat (i16 127))
  %i.os = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.or, <16 x i16> poison)
  %i.ot = bitcast <32 x i8> %i.os to <4 x i64>
  %i.ou = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.nz)
  %i.ov = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ob)
  %i.ow = fadd fast <8 x float> %i.ou, %i.nz
  %i.ox = fadd fast <8 x float> %i.ov, %i.ob
  %i.oy = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ow)
  %i.oz = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ox)
  %i.pa = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.oy, <8 x i32> %i.oz)
  %i.pb = bitcast <16 x i16> %i.pa to <4 x i64>
  %i.pc = shufflevector <4 x i64> %i.pb, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.pd = bitcast <4 x i64> %i.pc to <16 x i16>
  %i.pe = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.pd, <16 x i16> splat (i16 -127))
  %i.pf = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.pe, <16 x i16> splat (i16 127))
  %i.pg = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.pf, <16 x i16> poison)
  %i.ph = bitcast <32 x i8> %i.pg to <4 x i64>
  %i.pi = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.oc)
  %i.pj = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.oe)
  %i.pk = fadd fast <8 x float> %i.pi, %i.oc
  %i.pl = fadd fast <8 x float> %i.pj, %i.oe
  %i.pm = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.pk)
  %i.pn = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.pl)
  %i.po = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.pm, <8 x i32> %i.pn)
  %i.pp = bitcast <16 x i16> %i.po to <4 x i64>
  %i.pq = shufflevector <4 x i64> %i.pp, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.pr = bitcast <4 x i64> %i.pq to <16 x i16>
  %i.ps = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.pr, <16 x i16> splat (i16 -127))
  %i.pt = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.ps, <16 x i16> splat (i16 127))
  %i.pu = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.pt, <16 x i16> poison)
  %i.pv = bitcast <32 x i8> %i.pu to <4 x i64>
  %i.pw = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.od)
  %i.px = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.of)
  %i.py = fadd fast <8 x float> %i.pw, %i.od
  %i.pz = fadd fast <8 x float> %i.px, %i.of
  %i.qa = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.py)
  %i.qb = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.pz)
  %i.qc = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.qa, <8 x i32> %i.qb)
  %i.qd = bitcast <16 x i16> %i.qc to <4 x i64>
  %i.qe = shufflevector <4 x i64> %i.qd, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.qf = bitcast <4 x i64> %i.qe to <16 x i16>
  %i.qg = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.qf, <16 x i16> splat (i16 -127))
  %i.qh = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.qg, <16 x i16> splat (i16 127))
  %i.qi = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.qh, <16 x i16> poison)
  %i.qj = bitcast <32 x i8> %i.qi to <4 x i64>
  %i.qk = shufflevector <4 x i64> %i.ot, <4 x i64> %i.pv, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ql = shufflevector <4 x i64> %i.ph, <4 x i64> %i.qj, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.qm = bitcast <4 x i64> %i.qk to <8 x i32>    ; 2 uses
  %i.qn = bitcast <4 x i64> %i.ql to <8 x i32>    ; 2 uses
  %i.qo = shufflevector <8 x i32> %i.qm, <8 x i32> %i.qn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.qp = bitcast <8 x i32> %i.qo to <4 x i64>    ; 2 uses
  %i.qq = shufflevector <8 x i32> %i.qm, <8 x i32> %i.qn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.qr = bitcast <8 x i32> %i.qq to <4 x i64>    ; 2 uses
  %i.qs = shufflevector <4 x i64> %i.qp, <4 x i64> %i.qr, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.qt = shufflevector <4 x i64> %i.qp, <4 x i64> %i.qr, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.qu = bitcast <4 x i64> %i.qs to <32 x i8>
  %i.qv = add <32 x i8> %i.qu, splat (i8 127)
  %i.qw = bitcast <4 x i64> %i.qt to <32 x i8>
  %i.qx = add <32 x i8> %i.qw, splat (i8 127)
  store <32 x i8> %i.qv, ptr %.1666.i, align 32, !tbaa !17
  %i.qy = getelementptr inbounds nuw i8, ptr %.1666.i, i64 32
  store <32 x i8> %i.qx, ptr %i.qy, align 32, !tbaa !17
  %i.qz = getelementptr inbounds nuw i8, ptr %.1666.i, i64 64 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.0431665.i, i64 %.idx496.i
  %i.rb = add nuw nsw i32 %.0440664.i, 8          ; 2 uses
  %i.rc = or disjoint i32 %i.rb, 7
  %i.rd = icmp slt i32 %i.rc, %5
  br i1 %i.rd, label %.lr.ph.i, label %.loopexit660.i.loopexit13, !llvm.loop !301

.loopexit660.i.loopexit13:                        ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.re = or disjoint i64 %indvars.iv.next.i, 7
  %i.rf = icmp samesign ult i64 %i.re, %i.x
  br i1 %i.rf, label %.lr.ph.i.preheader, label %.preheader658.loopexit.i, !llvm.loop !294

.preheader652.loopexit.i:                         ; preds = %.loopexit654.i.loopexit11, %.loopexit654.i.loopexit10.us, %.loopexit654.i.us.us.us, %.loopexit657.i.us.us.preheader
  %.us-phi47 = phi ptr [ %.0.lcssa.i, %.loopexit657.i.us.us.preheader ], [ %i.my, %.loopexit654.i.loopexit10.us ], [ %.17.i.us.us.us, %.loopexit654.i.us.us.us ], [ %i.ys, %.loopexit654.i.loopexit11 ]
  %.us-phi48 = phi i64 [ %i.he, %.loopexit657.i.us.us.preheader ], [ %indvars.iv.next866.i.us, %.loopexit654.i.loopexit10.us ], [ %indvars.iv.next866.i.us.us.us, %.loopexit654.i.us.us.us ], [ %indvars.iv.next866.i, %.loopexit654.i.loopexit11 ]
  %i.rg = trunc nuw nsw i64 %.us-phi48 to i32
  br label %.preheader652.i

.preheader652.i:                                  ; preds = %.preheader652.loopexit.i, %.preheader658.i
  %.1428.lcssa.i = phi i32 [ %.0427.lcssa.i, %.preheader658.i ], [ %i.rg, %.preheader652.loopexit.i ] ; 3 uses
  %.9.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader658.i ], [ %.us-phi47, %.preheader652.loopexit.i ] ; 5 uses
  %i.rh = or disjoint i32 %.1428.lcssa.i, 1
  %i.ri = icmp slt i32 %i.rh, %3
  br i1 %i.ri, label %.lr.ph767.i, label %.preheader645.i

.lr.ph767.i:                                      ; preds = %.preheader652.i
  %i.rj = sext i32 %4 to i64
  %i.rk = mul i64 %i.l, %i.rj                     ; 3 uses
  %i.rl = icmp ne i32 %i.c, 8
  %i.rm = insertelement <8 x float> poison, float %6, i64 0
  %i.rn = shufflevector <8 x float> %i.rm, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ro = icmp slt i32 %5, 8
  %.idx484.i = shl i64 %i.l, 5
  %i.rp = insertelement <4 x float> poison, float %6, i64 0
  %i.rq = shufflevector <4 x float> %i.rp, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %.idx483.i = shl i64 %i.l, 4                    ; 2 uses
  %i.rr = icmp eq i32 %i.c, 1
  %i.rs = icmp sgt i32 %5, 3
  %.idx480.i = shl i64 %i.l, 3                    ; 2 uses
  %.idx481.i = mul i64 %i.l, 12
  %i.rt = and i32 %5, -4
  %i.ru = zext i32 %.1428.lcssa.i to i64          ; 6 uses
  %i.rv = sext i32 %3 to i64
  %i.rw = sext i32 %2 to i64                      ; 3 uses
  %i.rx = sext i32 %i.c to i64                    ; 3 uses
  %brmerge810.i = or i1 %i.ro, %i.rl
  %invariant.op943.i = add nsw i64 %i.rv, -1      ; 4 uses
  br i1 %brmerge810.i, label %.lr.ph767.i.split.us, label %.lr.ph737.i.preheader

.lr.ph767.i.split.us:                             ; preds = %.lr.ph767.i
  %i.ry = icmp slt i32 %5, 4
  %i.rz = icmp ne i32 %i.c, 4
  %brmerge813.i = or i1 %i.ry, %i.rz
  br i1 %brmerge813.i, label %.lr.ph767.i.split.us.split.us, label %.loopexit651.i.us

.lr.ph767.i.split.us.split.us:                    ; preds = %.lr.ph767.i.split.us
  br i1 %i.rr, label %.loopexit651.i.us.us.us, label %.loopexit651.i.us.us.preheader

.loopexit651.i.us.us.preheader:                   ; preds = %.lr.ph767.i.split.us.split.us
  %i.sa = add nuw nsw i64 %i.ru, 2
  %smax98 = tail call i64 @llvm.smax.i64(i64 %invariant.op943.i, i64 %i.sa)
  %i.sb = xor i64 %i.ru, -1
  %i.sc = add nsw i64 %smax98, %i.sb
  %i.sd = and i64 %i.sc, -2
  %i.se = add i64 %i.sd, %i.ru
  %i.sf = add i64 %i.se, 2
  br label %.preheader645.loopexit.i

.loopexit651.i.us.us.us:                          ; preds = %.lr.ph767.i.split.us.split.us, %.loopexit648.i.us.us.us
  %indvars.iv869.i.us.us.us = phi i64 [ %indvars.iv.next870.i.us.us.us, %.loopexit648.i.us.us.us ], [ %i.ru, %.lr.ph767.i.split.us.split.us ] ; 2 uses
  %.18766.i.us.us.us = phi ptr [ %.26.i.us.us.us, %.loopexit648.i.us.us.us ], [ %.9.lcssa.i, %.lr.ph767.i.split.us.split.us ] ; 2 uses
  %i.sg = load ptr, ptr %0, align 8, !tbaa !9
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %i.rk
  %i.si = add nsw i64 %indvars.iv869.i.us.us.us, %i.rw
  %i.sj = mul nuw nsw i64 %i.si, %i.rx
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.sh, i64 %i.sj ; 2 uses
  br i1 %i.rs, label %.lr.ph749.i.us.us.us, label %.preheader649.i.us.us.us

.lr.ph749.i.us.us.us:                             ; preds = %.loopexit651.i.us.us.us, %.lr.ph749.i.us.us.us
  %.23748.i.us.us.us = phi ptr [ %i.ts, %.lr.ph749.i.us.us.us ], [ %.18766.i.us.us.us, %.loopexit651.i.us.us.us ] ; 2 uses
  %.4469747.i.us.us.us = phi ptr [ %i.tt, %.lr.ph749.i.us.us.us ], [ %i.sk, %.loopexit651.i.us.us.us ] ; 5 uses
  %.0474746.i.us.us.us = phi i32 [ %i.tu, %.lr.ph749.i.us.us.us ], [ 0, %.loopexit651.i.us.us.us ]
  %i.sl = load i64, ptr %.4469747.i.us.us.us, align 1, !tbaa !17
  %i.sm = insertelement <2 x i64> poison, i64 %i.sl, i64 0
  %i.sn = bitcast <2 x i64> %i.sm to <4 x float>
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %.4469747.i.us.us.us, i64 %i.l
  %i.sp = load i64, ptr %i.so, align 1, !tbaa !17
  %i.sq = insertelement <2 x i64> poison, i64 %i.sp, i64 0
  %i.sr = bitcast <2 x i64> %i.sq to <4 x float>
  %i.ss = getelementptr inbounds nuw i8, ptr %.4469747.i.us.us.us, i64 %.idx480.i
  %i.st = load i64, ptr %i.ss, align 1, !tbaa !17
  %i.su = insertelement <2 x i64> poison, i64 %i.st, i64 0
  %i.sv = bitcast <2 x i64> %i.su to <4 x float>
  %i.sw = getelementptr inbounds nuw i8, ptr %.4469747.i.us.us.us, i64 %.idx481.i
  %i.sx = load i64, ptr %i.sw, align 1, !tbaa !17
  %i.sy = insertelement <2 x i64> poison, i64 %i.sx, i64 0
  %i.sz = bitcast <2 x i64> %i.sy to <4 x float>
  %i.ta = shufflevector <4 x float> %i.sn, <4 x float> %i.sr, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.tb = shufflevector <4 x float> %i.sv, <4 x float> %i.sz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.tc = shufflevector <4 x float> %i.ta, <4 x float> %i.tb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.td = shufflevector <4 x float> %i.ta, <4 x float> %i.tb, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.te = fmul fast <4 x float> %i.rq, %i.tc      ; 2 uses
  %i.tf = fmul fast <4 x float> %i.rq, %i.td      ; 2 uses
  %i.tg = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.te)
  %i.th = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.tf)
  %i.ti = fadd fast <4 x float> %i.tg, %i.te
  %i.tj = fadd fast <4 x float> %i.th, %i.tf
  %i.tk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ti)
  %i.tl = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.tj)
  %i.tm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.tk, <4 x i32> %i.tl)
  %i.tn = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.tm, <8 x i16> splat (i16 -127))
  %i.to = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.tn, <8 x i16> splat (i16 127))
  %i.tp = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.to, <8 x i16> poison)
  %i.tq = shufflevector <16 x i8> %i.tp, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.tr = add <8 x i8> %i.tq, splat (i8 127)
  store <8 x i8> %i.tr, ptr %.23748.i.us.us.us, align 1, !tbaa !17
  %i.ts = getelementptr inbounds nuw i8, ptr %.23748.i.us.us.us, i64 8 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.4469747.i.us.us.us, i64 %.idx483.i ; 2 uses
  %i.tu = add nuw nsw i32 %.0474746.i.us.us.us, 4 ; 2 uses
  %i.tv = or disjoint i32 %i.tu, 3
  %i.tw = icmp slt i32 %i.tv, %5
  br i1 %i.tw, label %.lr.ph749.i.us.us.us, label %.preheader649.i.us.us.us, !llvm.loop !302

.preheader649.i.us.us.us:                         ; preds = %.lr.ph749.i.us.us.us, %.loopexit651.i.us.us.us
  %.0474.lcssa.i.us.us.us = phi i32 [ 0, %.loopexit651.i.us.us.us ], [ %i.rt, %.lr.ph749.i.us.us.us ] ; 3 uses
  %.4469.lcssa.i.us.us.us = phi ptr [ %i.sk, %.loopexit651.i.us.us.us ], [ %i.tt, %.lr.ph749.i.us.us.us ] ; 2 uses
  %.23.lcssa.i.us.us.us = phi ptr [ %.18766.i.us.us.us, %.loopexit651.i.us.us.us ], [ %i.ts, %.lr.ph749.i.us.us.us ] ; 2 uses
  %i.tx = or disjoint i32 %.0474.lcssa.i.us.us.us, 1
  %i.ty = icmp slt i32 %i.tx, %5
  br i1 %i.ty, label %.lr.ph756.i.us.us.us, label %.preheader647.i.us.us.us

.lr.ph756.i.us.us.us:                             ; preds = %.preheader649.i.us.us.us, %.lr.ph756.i.us.us.us
  %.24755.i.us.us.us = phi ptr [ %i.ur, %.lr.ph756.i.us.us.us ], [ %.23.lcssa.i.us.us.us, %.preheader649.i.us.us.us ] ; 2 uses
  %.5470754.i.us.us.us = phi ptr [ %i.us, %.lr.ph756.i.us.us.us ], [ %.4469.lcssa.i.us.us.us, %.preheader649.i.us.us.us ] ; 3 uses
  %.1475753.i.us.us.us = phi i32 [ %i.ut, %.lr.ph756.i.us.us.us ], [ %.0474.lcssa.i.us.us.us, %.preheader649.i.us.us.us ]
  %i.tz = load i64, ptr %.5470754.i.us.us.us, align 1, !tbaa !17
  %i.ua = insertelement <2 x i64> poison, i64 %i.tz, i64 0
  %i.ub = bitcast <2 x i64> %i.ua to <4 x float>
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %.5470754.i.us.us.us, i64 %i.l
  %i.ud = load i64, ptr %i.uc, align 1, !tbaa !17
  %i.ue = insertelement <2 x i64> poison, i64 %i.ud, i64 0
  %i.uf = bitcast <2 x i64> %i.ue to <4 x float>
  %i.ug = shufflevector <4 x float> %i.ub, <4 x float> %i.uf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.uh = fmul fast <4 x float> %i.ug, %i.rq      ; 2 uses
  %i.ui = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.uh)
  %i.uj = fadd fast <4 x float> %i.ui, %i.uh
  %i.uk = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.uj) ; 2 uses
  %i.ul = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.uk, <4 x i32> %i.uk)
  %i.um = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ul, <8 x i16> splat (i16 -127))
  %i.un = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.um, <8 x i16> splat (i16 127))
  %i.uo = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.un, <8 x i16> poison)
  %i.up = bitcast <16 x i8> %i.uo to <4 x i32>
  %i.uq = extractelement <4 x i32> %i.up, i64 0
  store i32 %i.uq, ptr %.24755.i.us.us.us, align 4, !tbaa !43
  %i.ur = getelementptr inbounds nuw i8, ptr %.24755.i.us.us.us, i64 4 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.5470754.i.us.us.us, i64 %.idx480.i ; 2 uses
  %i.ut = add nuw nsw i32 %.1475753.i.us.us.us, 2 ; 3 uses
  %i.uu = or disjoint i32 %i.ut, 1
  %i.uv = icmp slt i32 %i.uu, %5
  br i1 %i.uv, label %.lr.ph756.i.us.us.us, label %.preheader647.i.us.us.us, !llvm.loop !303

.preheader647.i.us.us.us:                         ; preds = %.lr.ph756.i.us.us.us, %.preheader649.i.us.us.us
  %.1475.lcssa.i.us.us.us = phi i32 [ %.0474.lcssa.i.us.us.us, %.preheader649.i.us.us.us ], [ %i.ut, %.lr.ph756.i.us.us.us ] ; 2 uses
  %.5470.lcssa.i.us.us.us = phi ptr [ %.4469.lcssa.i.us.us.us, %.preheader649.i.us.us.us ], [ %i.us, %.lr.ph756.i.us.us.us ]
  %.24.lcssa.i.us.us.us = phi ptr [ %.23.lcssa.i.us.us.us, %.preheader649.i.us.us.us ], [ %i.ur, %.lr.ph756.i.us.us.us ] ; 2 uses
  %i.uw = icmp slt i32 %.1475.lcssa.i.us.us.us, %5
  br i1 %i.uw, label %.lr.ph763.i.us.us.us, label %.loopexit648.i.us.us.us

.lr.ph763.i.us.us.us:                             ; preds = %.preheader647.i.us.us.us, %.lr.ph763.i.us.us.us
  %.25762.i.us.us.us = phi ptr [ %i.vh, %.lr.ph763.i.us.us.us ], [ %.24.lcssa.i.us.us.us, %.preheader647.i.us.us.us ] ; 3 uses
  %.6471761.i.us.us.us = phi ptr [ %i.vi, %.lr.ph763.i.us.us.us ], [ %.5470.lcssa.i.us.us.us, %.preheader647.i.us.us.us ] ; 3 uses
  %.2476760.i.us.us.us = phi i32 [ %i.vj, %.lr.ph763.i.us.us.us ], [ %.1475.lcssa.i.us.us.us, %.preheader647.i.us.us.us ]
  %i.ux = load float, ptr %.6471761.i.us.us.us, align 4, !tbaa !203
  %i.uy = fmul fast float %i.ux, %6
  %i.uz = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.uy)
  %i.va = fptosi float %i.uz to i32
  %spec.select.i499639.i.us.us.us = tail call i32 @llvm.smax.i32(i32 %i.va, i32 -127)
  %.0.i500640.i.us.us.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i499639.i.us.us.us, i32 127)
  %.0.i500.i.us.us.us = trunc nsw i32 %.0.i500640.i.us.us.us to i8
  store i8 %.0.i500.i.us.us.us, ptr %.25762.i.us.us.us, align 1, !tbaa !17
  %i.vb = getelementptr inbounds nuw i8, ptr %.6471761.i.us.us.us, i64 4
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !203
  %i.vd = fmul fast float %i.vc, %6
  %i.ve = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.vd)
  %i.vf = fptosi float %i.ve to i32
  %spec.select.i497641.i.us.us.us = tail call i32 @llvm.smax.i32(i32 %i.vf, i32 -127)
  %.0.i498642.i.us.us.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i497641.i.us.us.us, i32 127)
  %.0.i498.i.us.us.us = trunc nsw i32 %.0.i498642.i.us.us.us to i8
  %i.vg = getelementptr inbounds nuw i8, ptr %.25762.i.us.us.us, i64 1
  store i8 %.0.i498.i.us.us.us, ptr %i.vg, align 1, !tbaa !17
  %i.vh = getelementptr inbounds nuw i8, ptr %.25762.i.us.us.us, i64 2 ; 2 uses
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %.6471761.i.us.us.us, i64 %i.l
  %i.vj = add nuw nsw i32 %.2476760.i.us.us.us, 1 ; 2 uses
  %exitcond868.not.i.us.us.us = icmp eq i32 %i.vj, %5
  br i1 %exitcond868.not.i.us.us.us, label %.loopexit648.i.us.us.us, label %.lr.ph763.i.us.us.us, !llvm.loop !304

.loopexit648.i.us.us.us:                          ; preds = %.lr.ph763.i.us.us.us, %.preheader647.i.us.us.us
  %.26.i.us.us.us = phi ptr [ %.24.lcssa.i.us.us.us, %.preheader647.i.us.us.us ], [ %i.vh, %.lr.ph763.i.us.us.us ] ; 2 uses
  %indvars.iv.next870.i.us.us.us = add nuw nsw i64 %indvars.iv869.i.us.us.us, 2 ; 3 uses
  %i.vk = icmp slt i64 %indvars.iv.next870.i.us.us.us, %invariant.op943.i
  br i1 %i.vk, label %.loopexit651.i.us.us.us, label %.preheader645.loopexit.i, !llvm.loop !305

.loopexit651.i.us:                                ; preds = %.lr.ph767.i.split.us, %.loopexit648.i.loopexit8.us
  %indvars.iv869.i.us = phi i64 [ %indvars.iv.next870.i.us, %.loopexit648.i.loopexit8.us ], [ %i.ru, %.lr.ph767.i.split.us ] ; 2 uses
  %.18766.i.us = phi ptr [ %i.wh, %.loopexit648.i.loopexit8.us ], [ %.9.lcssa.i, %.lr.ph767.i.split.us ]
  %i.vl = load ptr, ptr %0, align 8, !tbaa !9
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %i.rk
  %i.vn = add nsw i64 %indvars.iv869.i.us, %i.rw
  %i.vo = mul nsw i64 %i.vn, %i.rx
  %i.vp = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.vo
  br label %.lr.ph743.i.us

.lr.ph743.i.us:                                   ; preds = %.loopexit651.i.us, %.lr.ph743.i.us
  %.21742.i.us = phi ptr [ %i.wh, %.lr.ph743.i.us ], [ %.18766.i.us, %.loopexit651.i.us ] ; 2 uses
  %.2467741.i.us = phi ptr [ %i.wi, %.lr.ph743.i.us ], [ %i.vp, %.loopexit651.i.us ] ; 3 uses
  %.0473740.i.us = phi i32 [ %i.wj, %.lr.ph743.i.us ], [ 0, %.loopexit651.i.us ]
  %i.vq = load <4 x float>, ptr %.2467741.i.us, align 16, !tbaa !17
  %i.vr = getelementptr inbounds nuw i8, ptr %.2467741.i.us, i64 16
  %i.vs = load <4 x float>, ptr %i.vr, align 16, !tbaa !17
  %i.vt = fmul fast <4 x float> %i.vq, %i.rq      ; 2 uses
  %i.vu = fmul fast <4 x float> %i.vs, %i.rq      ; 2 uses
  %i.vv = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.vt)
  %i.vw = tail call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.vu)
  %i.vx = fadd fast <4 x float> %i.vv, %i.vt
  %i.vy = fadd fast <4 x float> %i.vw, %i.vu
  %i.vz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vx)
  %i.wa = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.vy)
  %i.wb = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.vz, <4 x i32> %i.wa)
  %i.wc = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.wb, <8 x i16> splat (i16 -127))
  %i.wd = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.wc, <8 x i16> splat (i16 127))
  %i.we = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.wd, <8 x i16> poison)
  %i.wf = shufflevector <16 x i8> %i.we, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.wg = add <8 x i8> %i.wf, splat (i8 127)
  store <8 x i8> %i.wg, ptr %.21742.i.us, align 1, !tbaa !17
  %i.wh = getelementptr inbounds nuw i8, ptr %.21742.i.us, i64 8 ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.2467741.i.us, i64 %.idx483.i
  %i.wj = add nuw nsw i32 %.0473740.i.us, 4       ; 2 uses
  %i.wk = or disjoint i32 %i.wj, 3
  %i.wl = icmp slt i32 %i.wk, %5
  br i1 %i.wl, label %.lr.ph743.i.us, label %.loopexit648.i.loopexit8.us, !llvm.loop !306

.loopexit648.i.loopexit8.us:                      ; preds = %.lr.ph743.i.us
  %indvars.iv.next870.i.us = add nuw nsw i64 %indvars.iv869.i.us, 2 ; 3 uses
  %i.wm = icmp slt i64 %indvars.iv.next870.i.us, %invariant.op943.i
  br i1 %i.wm, label %.loopexit651.i.us, label %.preheader645.loopexit.i, !llvm.loop !305

.lr.ph701.i.preheader:                            ; preds = %.lr.ph731.i, %.loopexit654.i.loopexit11
  %indvars.iv865.i = phi i64 [ %indvars.iv.next866.i, %.loopexit654.i.loopexit11 ], [ %i.gt, %.lr.ph731.i ] ; 2 uses
  %.9730.i = phi ptr [ %i.ys, %.loopexit654.i.loopexit11 ], [ %.0.lcssa.i, %.lr.ph731.i ]
  %i.wn = load ptr, ptr %0, align 8, !tbaa !9
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.wn, i64 %i.gj
  %i.wp = add nsw i64 %indvars.iv865.i, %i.gv
  %i.wq = mul nsw i64 %i.wp, %i.gw
  %i.wr = getelementptr inbounds [4 x i8], ptr %i.wo, i64 %i.wq
  br label %.lr.ph701.i

.lr.ph701.i:                                      ; preds = %.lr.ph701.i.preheader, %.lr.ph701.i
  %.10700.i = phi ptr [ %i.ys, %.lr.ph701.i ], [ %.9730.i, %.lr.ph701.i.preheader ] ; 3 uses
  %.0447699.i = phi ptr [ %i.yt, %.lr.ph701.i ], [ %i.wr, %.lr.ph701.i.preheader ] ; 5 uses
  %.0460698.i = phi i32 [ %i.yu, %.lr.ph701.i ], [ 0, %.lr.ph701.i.preheader ]
  %i.ws = load <8 x float>, ptr %.0447699.i, align 32, !tbaa !17
  %i.wt = getelementptr inbounds nuw i8, ptr %.0447699.i, i64 32
  %i.wu = load <8 x float>, ptr %i.wt, align 32, !tbaa !17
  %i.wv = getelementptr inbounds nuw i8, ptr %.0447699.i, i64 64
  %i.ww = load <8 x float>, ptr %i.wv, align 32, !tbaa !17
  %i.wx = getelementptr inbounds nuw i8, ptr %.0447699.i, i64 96
end_hunk_4
begin_hunk_5_@_ZN4ncnn42transpose_pack_B_tile_fp32_to_int8_avxvnniERKNS_3MatERS0_iiiif:bb.a
  %i.aay = shufflevector <16 x i8> %i.aax, <16 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aaz = add <4 x i8> %i.aay, splat (i8 127)
  store <4 x i8> %i.aaz, ptr %.32784.i.us, align 1, !tbaa !17
  %i.aba = getelementptr inbounds nuw i8, ptr %.32784.i.us, i64 4 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %.4458782.i.us, i64 %.idx477.i ; 2 uses
  %i.abc = add nuw nsw i32 %.0438783.i.us, 4      ; 2 uses
  %i.abd = or disjoint i32 %i.abc, 3
  %i.abe = icmp slt i32 %i.abd, %5
  br i1 %i.abe, label %.lr.ph785.i.us, label %.preheader.i.us, !llvm.loop !309

.preheader.i.us:                                  ; preds = %.lr.ph785.i.us, %bb.g
  %.4458.lcssa.i.us = phi ptr [ %i.zy, %bb.g ], [ %i.abb, %.lr.ph785.i.us ] ; 3 uses
  %.0438.lcssa.i.us = phi i32 [ 0, %bb.g ], [ %i.zq, %.lr.ph785.i.us ] ; 4 uses
  %.32.lcssa.i.us = phi ptr [ %.27795.i.us, %bb.g ], [ %i.aba, %.lr.ph785.i.us ] ; 4 uses
  %i.abf = icmp slt i32 %.0438.lcssa.i.us, %5
  br i1 %i.abf, label %.lr.ph792.i.us.preheader, label %.loopexit.i.us

.lr.ph792.i.us.preheader:                         ; preds = %.preheader.i.us
  %.neg213 = or disjoint i32 %.0438.lcssa.i.us, 1
  br i1 %lcmp.mod212.not, label %.lr.ph792.i.us.prol.loopexit, label %.lr.ph792.i.us.prol

.lr.ph792.i.us.prol:                              ; preds = %.lr.ph792.i.us.preheader
  %i.abg = load float, ptr %.4458.lcssa.i.us, align 4, !tbaa !203
  %i.abh = fmul fast float %i.abg, %6
  %i.abi = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.abh)
  %i.abj = fptosi float %i.abi to i32
  %spec.select.i637.i.us.prol = tail call i32 @llvm.smax.i32(i32 %i.abj, i32 -127)
  %.0.i638.i.us.prol = tail call i32 @llvm.smin.i32(i32 %spec.select.i637.i.us.prol, i32 127)
  %.0.i.i.us.prol = trunc nsw i32 %.0.i638.i.us.prol to i8
  store i8 %.0.i.i.us.prol, ptr %.32.lcssa.i.us, align 1, !tbaa !17
  %i.abk = getelementptr inbounds nuw i8, ptr %.32.lcssa.i.us, i64 1 ; 2 uses
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %.4458.lcssa.i.us, i64 %i.l
  %i.abm = or disjoint i32 %.0438.lcssa.i.us, 1
  br label %.lr.ph792.i.us.prol.loopexit

.lr.ph792.i.us.prol.loopexit:                     ; preds = %.lr.ph792.i.us.prol, %.lr.ph792.i.us.preheader
  %.lcssa178.unr = phi ptr [ poison, %.lr.ph792.i.us.preheader ], [ %i.abk, %.lr.ph792.i.us.prol ]
  %.33791.i.us.unr = phi ptr [ %.32.lcssa.i.us, %.lr.ph792.i.us.preheader ], [ %i.abk, %.lr.ph792.i.us.prol ]
  %.1439790.i.us.unr = phi i32 [ %.0438.lcssa.i.us, %.lr.ph792.i.us.preheader ], [ %i.abm, %.lr.ph792.i.us.prol ]
  %.5459789.i.us.unr = phi ptr [ %.4458.lcssa.i.us, %.lr.ph792.i.us.preheader ], [ %i.abl, %.lr.ph792.i.us.prol ]
  %i.abn = icmp eq i32 %5, %.neg213
  br i1 %i.abn, label %.loopexit.i.us, label %.lr.ph792.i.us

.lr.ph792.i.us:                                   ; preds = %.lr.ph792.i.us.prol.loopexit, %.lr.ph792.i.us
  %.33791.i.us = phi ptr [ %i.aby, %.lr.ph792.i.us ], [ %.33791.i.us.unr, %.lr.ph792.i.us.prol.loopexit ] ; 3 uses
  %.1439790.i.us = phi i32 [ %i.aca, %.lr.ph792.i.us ], [ %.1439790.i.us.unr, %.lr.ph792.i.us.prol.loopexit ]
  %.5459789.i.us = phi ptr [ %i.abz, %.lr.ph792.i.us ], [ %.5459789.i.us.unr, %.lr.ph792.i.us.prol.loopexit ] ; 2 uses
  %i.abo = load float, ptr %.5459789.i.us, align 4, !tbaa !203
  %i.abp = fmul fast float %i.abo, %6
  %i.abq = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.abp)
  %i.abr = fptosi float %i.abq to i32
  %spec.select.i637.i.us = tail call i32 @llvm.smax.i32(i32 %i.abr, i32 -127)
  %.0.i638.i.us = tail call i32 @llvm.smin.i32(i32 %spec.select.i637.i.us, i32 127)
  %.0.i.i.us = trunc nsw i32 %.0.i638.i.us to i8
  store i8 %.0.i.i.us, ptr %.33791.i.us, align 1, !tbaa !17
  %i.abs = getelementptr inbounds nuw i8, ptr %.33791.i.us, i64 1
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %.5459789.i.us, i64 %i.l ; 2 uses
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !203
  %i.abv = fmul fast float %i.abu, %6
  %i.abw = tail call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.abv)
  %i.abx = fptosi float %i.abw to i32
  %spec.select.i637.i.us.1 = tail call i32 @llvm.smax.i32(i32 %i.abx, i32 -127)
  %.0.i638.i.us.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.i637.i.us.1, i32 127)
  %.0.i.i.us.1 = trunc nsw i32 %.0.i638.i.us.1 to i8
  store i8 %.0.i.i.us.1, ptr %i.abs, align 1, !tbaa !17
  %i.aby = getelementptr inbounds nuw i8, ptr %.33791.i.us, i64 2 ; 2 uses
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.l
  %i.aca = add nuw nsw i32 %.1439790.i.us, 2      ; 2 uses
  %exitcond872.not.i.us.1 = icmp eq i32 %i.aca, %5
  br i1 %exitcond872.not.i.us.1, label %.loopexit.i.us, label %.lr.ph792.i.us, !llvm.loop !310

.loopexit.i.us:                                   ; preds = %.lr.ph779.i.us, %.lr.ph792.i.us.prol.loopexit, %.lr.ph792.i.us, %.preheader.i.us, %.loopexit643.i.us
  %.34.i.us = phi ptr [ %.27795.i.us, %.loopexit643.i.us ], [ %.32.lcssa.i.us, %.preheader.i.us ], [ %i.aby, %.lr.ph792.i.us ], [ %.lcssa178.unr, %.lr.ph792.i.us.prol.loopexit ], [ %i.aak, %.lr.ph779.i.us ]
  %indvars.iv.next874.i.us = add nsw i64 %indvars.iv873.i.us, 1 ; 2 uses
  %exitcond876.not.i.us = icmp eq i64 %indvars.iv.next874.i.us, %wide.trip.count.i
  br i1 %exitcond876.not.i.us, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %.loopexit644.i.us, !llvm.loop !311

.lr.ph737.i.preheader:                            ; preds = %.lr.ph767.i, %.loopexit648.i.loopexit9
  %indvars.iv869.i = phi i64 [ %indvars.iv.next870.i, %.loopexit648.i.loopexit9 ], [ %i.ru, %.lr.ph767.i ] ; 2 uses
  %.18766.i = phi ptr [ %i.adc, %.loopexit648.i.loopexit9 ], [ %.9.lcssa.i, %.lr.ph767.i ]
  %i.acb = load ptr, ptr %0, align 8, !tbaa !9
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.acb, i64 %i.rk
  %i.acd = add nsw i64 %indvars.iv869.i, %i.rw
  %i.ace = mul nsw i64 %i.acd, %i.rx
  %i.acf = getelementptr inbounds [4 x i8], ptr %i.acc, i64 %i.ace
  br label %.lr.ph737.i

.lr.ph737.i:                                      ; preds = %.lr.ph737.i.preheader, %.lr.ph737.i
  %.19736.i = phi ptr [ %i.adc, %.lr.ph737.i ], [ %.18766.i, %.lr.ph737.i.preheader ] ; 2 uses
  %.0465735.i = phi ptr [ %i.add, %.lr.ph737.i ], [ %i.acf, %.lr.ph737.i.preheader ] ; 3 uses
  %.0472734.i = phi i32 [ %i.ade, %.lr.ph737.i ], [ 0, %.lr.ph737.i.preheader ]
  %i.acg = load <8 x float>, ptr %.0465735.i, align 32, !tbaa !17
  %i.ach = getelementptr inbounds nuw i8, ptr %.0465735.i, i64 32
  %i.aci = load <8 x float>, ptr %i.ach, align 32, !tbaa !17
  %i.acj = fmul fast <8 x float> %i.acg, %i.rn    ; 2 uses
  %i.ack = fmul fast <8 x float> %i.aci, %i.rn    ; 2 uses
  %i.acl = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.acj)
  %i.acm = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ack)
  %i.acn = fadd fast <8 x float> %i.acl, %i.acj
  %i.aco = fadd fast <8 x float> %i.acm, %i.ack
  %i.acp = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.acn)
  %i.acq = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.aco)
  %i.acr = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.acp, <8 x i32> %i.acq)
  %i.acs = bitcast <16 x i16> %i.acr to <4 x i64>
  %i.act = shufflevector <4 x i64> %i.acs, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.acu = bitcast <4 x i64> %i.act to <16 x i16>
  %i.acv = tail call <16 x i16> @llvm.smax.v16i16(<16 x i16> %i.acu, <16 x i16> splat (i16 -127))
  %i.acw = tail call <16 x i16> @llvm.smin.v16i16(<16 x i16> %i.acv, <16 x i16> splat (i16 127))
  %i.acx = tail call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.acw, <16 x i16> poison)
  %i.acy = bitcast <32 x i8> %i.acx to <8 x i32>
  %i.acz = shufflevector <8 x i32> %i.acy, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ada = bitcast <4 x i32> %i.acz to <16 x i8>
  %i.adb = add <16 x i8> %i.ada, splat (i8 127)
  store <16 x i8> %i.adb, ptr %.19736.i, align 16, !tbaa !17
  %i.adc = getelementptr inbounds nuw i8, ptr %.19736.i, i64 16 ; 3 uses
  %i.add = getelementptr inbounds nuw i8, ptr %.0465735.i, i64 %.idx484.i
  %i.ade = add nuw nsw i32 %.0472734.i, 8         ; 2 uses
  %i.adf = or disjoint i32 %i.ade, 7
  %i.adg = icmp slt i32 %i.adf, %5
  br i1 %i.adg, label %.lr.ph737.i, label %.loopexit648.i.loopexit9, !llvm.loop !312

.loopexit648.i.loopexit9:                         ; preds = %.lr.ph737.i
  %indvars.iv.next870.i = add nuw nsw i64 %indvars.iv869.i, 2 ; 3 uses
  %i.adh = icmp slt i64 %indvars.iv.next870.i, %invariant.op943.i
  br i1 %i.adh, label %.lr.ph737.i.preheader, label %.preheader645.loopexit.i, !llvm.loop !305

.lr.ph773.i.preheader:                            ; preds = %.lr.ph796.i, %.loopexit.i.loopexit7
  %indvars.iv873.i = phi i64 [ %indvars.iv.next874.i, %.loopexit.i.loopexit7 ], [ %i.zr, %.lr.ph796.i ] ; 2 uses
  %.27795.i = phi ptr [ %i.aeb, %.loopexit.i.loopexit7 ], [ %.18.lcssa.i, %.lr.ph796.i ]
  %i.adi = load ptr, ptr %0, align 8, !tbaa !9
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.adi, i64 %i.zb
  %i.adk = add nsw i64 %indvars.iv873.i, %i.zs
  %i.adl = mul nsw i64 %i.adk, %i.zt
  %i.adm = getelementptr inbounds [4 x i8], ptr %i.adj, i64 %i.adl
  br label %.lr.ph773.i

.lr.ph773.i:                                      ; preds = %.lr.ph773.i.preheader, %.lr.ph773.i
  %.28772.i = phi ptr [ %i.aeb, %.lr.ph773.i ], [ %.27795.i, %.lr.ph773.i.preheader ] ; 2 uses
  %.0446771.i = phi i32 [ %i.aed, %.lr.ph773.i ], [ 0, %.lr.ph773.i.preheader ]
  %.0454770.i = phi ptr [ %i.aec, %.lr.ph773.i ], [ %i.adm, %.lr.ph773.i.preheader ] ; 2 uses
  %i.adn = load <8 x float>, ptr %.0454770.i, align 32, !tbaa !17
  %i.ado = fmul fast <8 x float> %i.adn, %i.ze    ; 2 uses
  %i.adp = tail call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float 5.000000e-01), <8 x float> %i.ado)
  %i.adq = fadd fast <8 x float> %i.adp, %i.ado
  %i.adr = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.adq)
  %i.ads = tail call <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32> %i.adr, <8 x i32> poison)
  %i.adt = bitcast <16 x i16> %i.ads to <8 x i32>
  %i.adu = shufflevector <8 x i32> %i.adt, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.adv = bitcast <4 x i32> %i.adu to <8 x i16>
  %i.adw = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.adv, <8 x i16> splat (i16 -127))
  %i.adx = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.adw, <8 x i16> splat (i16 127))
  %i.ady = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.adx, <8 x i16> poison)
  %i.adz = shufflevector <16 x i8> %i.ady, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aea = add <8 x i8> %i.adz, splat (i8 127)
  store <8 x i8> %i.aea, ptr %.28772.i, align 1, !tbaa !17
  %i.aeb = getelementptr inbounds nuw i8, ptr %.28772.i, i64 8 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %.0454770.i, i64 %.idx478.i
  %i.aed = add nuw nsw i32 %.0446771.i, 8         ; 2 uses
  %i.aee = or disjoint i32 %i.aed, 7
  %i.aef = icmp slt i32 %i.aee, %5
  br i1 %i.aef, label %.lr.ph773.i, label %.loopexit.i.loopexit7, !llvm.loop !313

.loopexit.i.loopexit7:                            ; preds = %.lr.ph773.i
  %indvars.iv.next874.i = add nsw i64 %indvars.iv873.i, 1 ; 2 uses
  %exitcond876.not.i = icmp eq i64 %indvars.iv.next874.i, %wide.trip.count.i
  br i1 %exitcond876.not.i, label %_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit, label %.lr.ph773.i.preheader, !llvm.loop !311

_ZN4ncnnL34transpose_pack_B_tile_fp32_to_int8ERKNS_3MatERS0_iiiif.exit: ; preds = %.loopexit.i.loopexit7, %.loopexit.i.us, %bb.b, %.preheader645.i
  ret void
}

declare void @_ZN4ncnn46transpose_pack_B_tile_fp32_to_int8_avxvnniint8ERKNS_3MatERS0_iiiif(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev()
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn40gemm_transB_packed_tile_int8_avxvnniint8ERKNS_3MatES2_RS0_iiiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  br label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !9      ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !9      ; 8 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.e = icmp sgt i32 %4, 7
  br i1 %i.e, label %.preheader1976.lr.ph.i, label %.preheader1968.i

.preheader1976.lr.ph.i:                           ; preds = %bb.c
  %i.f = icmp sgt i32 %6, 7
  %i.g = icmp eq i32 %7, 0                        ; 4 uses
  %i.h = icmp sgt i32 %8, 3                       ; 5 uses
  %i.i = shl i32 %8, 3
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %spec.select.idx.i = select i1 %i.h, i64 32, i64 0 ; 2 uses
  %i.k = add i32 %8, -4                           ; 5 uses
  %i.l = and i32 %i.k, -4
  %i.m = add i32 %i.l, 4                          ; 4 uses
  %i.n = and i32 %6, -8
  %i.o = zext i32 %i.k to i64                     ; 2 uses
  %i.p = lshr i64 %i.o, 2                         ; 3 uses
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = shl nuw nsw i64 %i.p, 3
  %i.s = and i64 %i.o, 4294967292
  %i.t = shl nuw nsw i64 %i.p, 5                  ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 32                 ; 2 uses
  %scevgep494 = getelementptr i8, ptr %i.b, i64 %i.t
  %i.v = add nsw i64 %spec.select.idx.i, %i.j     ; 2 uses
  %scevgep496 = getelementptr i8, ptr %i.b, i64 %i.u
  %i.w = lshr i32 %i.k, 2                         ; 2 uses
  %i.x = add nuw nsw i32 %i.w, 1                  ; 4 uses
  %i.y = icmp eq i32 %i.w, 0
  %unroll_iter = and i32 %i.x, 2147483646
  %i.z = and i32 %i.k, 4
  %lcmp.mod.not.not = icmp eq i32 %i.z, 0
  %lcmp.mod1947 = trunc i32 %i.x to i1
  %xtraiter1953 = and i32 %i.x, 3                 ; 3 uses
  %i.aa = icmp ult i32 %i.k, 12
  %unroll_iter1959 = and i32 %i.x, 2147483644
  %lcmp.mod1956.not = icmp eq i32 %xtraiter1953, 0
  %lcmp.mod1958 = icmp ne i32 %xtraiter1953, 0
  br label %.preheader1976.i

.preheader1976.i:                                 ; preds = %._crit_edge2230.i, %.preheader1976.lr.ph.i
  %indvars.iv497 = phi ptr [ %scevgep498, %._crit_edge2230.i ], [ %scevgep496, %.preheader1976.lr.ph.i ] ; 4 uses
  %indvars.iv = phi ptr [ %scevgep495, %._crit_edge2230.i ], [ %scevgep494, %.preheader1976.lr.ph.i ] ; 4 uses
  %.010732234.i = phi ptr [ %spec.select.i, %._crit_edge2230.i ], [ %i.b, %.preheader1976.lr.ph.i ] ; 11 uses
  %.010932233.i = phi ptr [ %.41097.lcssa.i, %._crit_edge2230.i ], [ %i.d, %.preheader1976.lr.ph.i ] ; 2 uses
  %.011202232.i = phi i32 [ %i.uc, %._crit_edge2230.i ], [ 0, %.preheader1976.lr.ph.i ]
  br i1 %i.f, label %.lr.ph2118.i, label %.preheader1975.i

.preheader1968.loopexit.i:                        ; preds = %._crit_edge2230.i
  %i.ab = and i32 %4, 2147483640
  br label %.preheader1968.i

.preheader1968.i:                                 ; preds = %.preheader1968.loopexit.i, %bb.c
  %.01120.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.ab, %.preheader1968.loopexit.i ] ; 3 uses
  %.01093.lcssa.i = phi ptr [ %i.d, %bb.c ], [ %.41097.lcssa.i, %.preheader1968.loopexit.i ] ; 2 uses
  %.01073.lcssa.i = phi ptr [ %i.b, %bb.c ], [ %spec.select.i, %.preheader1968.loopexit.i ] ; 4 uses
  %i.ac = or disjoint i32 %.01120.lcssa.i, 3
  %i.ad = icmp slt i32 %i.ac, %4
  br i1 %i.ad, label %.preheader1967.lr.ph.i, label %.preheader1959.i

.preheader1967.lr.ph.i:                           ; preds = %.preheader1968.i
  %i.ae = icmp sgt i32 %6, 7
  %i.af = icmp eq i32 %7, 0                       ; 4 uses
  %i.ag = icmp sgt i32 %8, 3                      ; 5 uses
  %i.ah = shl i32 %8, 2
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %spec.select1374.idx.i = select i1 %i.ag, i64 16, i64 0 ; 3 uses
  %i.aj = add i32 %8, -4                          ; 6 uses
  %i.ak = and i32 %i.aj, -4
  %i.al = add i32 %i.ak, 4                        ; 4 uses
  %i.am = and i32 %6, -8
  %i.an = zext i32 %i.aj to i64                   ; 2 uses
  %i.ao = lshr i64 %i.an, 2                       ; 3 uses
  %i.ap = shl nuw nsw i64 %i.ao, 4                ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 16               ; 2 uses
  %scevgep3037.i = getelementptr i8, ptr %.01073.lcssa.i, i64 %i.aq
  %i.ar = shl nuw nsw i64 %i.ao, 3
  %i.as = and i64 %i.an, 4294967292
  %i.at = shl nuw nsw i64 %i.ao, 5
  %scevgep500 = getelementptr i8, ptr %.01073.lcssa.i, i64 %i.ap
  %i.au = lshr i32 %i.aj, 2                       ; 3 uses
  %i.av = add nuw nsw i32 %i.au, 1                ; 6 uses
  %i.aw = icmp eq i32 %i.au, 0
  %unroll_iter1982 = and i32 %i.av, 2147483646
  %i.ax = and i32 %i.aj, 4
  %lcmp.mod1975.not.not = icmp eq i32 %i.ax, 0
  %lcmp.mod1981 = trunc i32 %i.av to i1
  %i.ay = icmp eq i32 %i.au, 0
  %unroll_iter1996 = and i32 %i.av, 2147483646
  %i.az = and i32 %i.aj, 4
  %lcmp.mod1991.not.not = icmp eq i32 %i.az, 0
  %lcmp.mod1995 = trunc i32 %i.av to i1
  %xtraiter1999 = and i32 %i.av, 3                ; 3 uses
  %i.ba = icmp ult i32 %i.aj, 12
  %unroll_iter2007 = and i32 %i.av, 2147483644
  %lcmp.mod2003.not = icmp eq i32 %xtraiter1999, 0
  %lcmp.mod2006 = icmp ne i32 %xtraiter1999, 0
  br label %.preheader1967.i

.preheader1975.i:                                 ; preds = %._crit_edge2105.i, %.preheader1976.i
  %.01140.lcssa.i = phi i32 [ 0, %.preheader1976.i ], [ %i.n, %._crit_edge2105.i ] ; 3 uses
  %.01124.lcssa.i = phi ptr [ %i.c, %.preheader1976.i ], [ %.31127.lcssa.i, %._crit_edge2105.i ] ; 2 uses
  %.11094.lcssa.i = phi ptr [ %.010932233.i, %.preheader1976.i ], [ %i.he, %._crit_edge2105.i ] ; 2 uses
  %i.bb = or disjoint i32 %.01140.lcssa.i, 3
  %i.bc = icmp slt i32 %i.bb, %6
  br i1 %i.bc, label %.lr.ph2160.i.preheader, label %.preheader1974.i

.lr.ph2160.i.preheader:                           ; preds = %.preheader1975.i
  %i.bd = getelementptr inbounds nuw i8, ptr %indvars.iv, i64 64
  br label %.lr.ph2160.i

.lr.ph2118.i:                                     ; preds = %.preheader1976.i, %._crit_edge2105.i
  %.110942117.i = phi ptr [ %i.he, %._crit_edge2105.i ], [ %.010932233.i, %.preheader1976.i ] ; 17 uses
  %.011242116.i = phi ptr [ %.31127.lcssa.i, %._crit_edge2105.i ], [ %i.c, %.preheader1976.i ] ; 3 uses
  %.011402115.i = phi i32 [ %i.hf, %._crit_edge2105.i ], [ 0, %.preheader1976.i ]
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph2118.i
  %i.be = load <8 x i32>, ptr %.110942117.i, align 32, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %.110942117.i, i64 32
  %i.bg = load <8 x i32>, ptr %i.bf, align 32, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %.110942117.i, i64 64
  %i.bi = load <8 x i32>, ptr %i.bh, align 32, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %.110942117.i, i64 96
  %i.bk = load <8 x i32>, ptr %i.bj, align 32, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %.110942117.i, i64 128
  %i.bm = load <8 x i32>, ptr %i.bl, align 32, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %.110942117.i, i64 160
  %i.bo = load <8 x i32>, ptr %i.bn, align 32, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %.110942117.i, i64 192
  %i.bq = load <8 x i32>, ptr %i.bp, align 32, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %.110942117.i, i64 224
  %i.bs = load <8 x i32>, ptr %i.br, align 32, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph2118.i
  %i.bt = phi <8 x i32> [ %i.bq, %bb.d ], [ zeroinitializer, %.lr.ph2118.i ] ; 2 uses
  %i.bu = phi <8 x i32> [ %i.bo, %bb.d ], [ zeroinitializer, %.lr.ph2118.i ] ; 2 uses
  %i.bv = phi <8 x i32> [ %i.bm, %bb.d ], [ zeroinitializer, %.lr.ph2118.i ] ; 2 uses
  %i.bw = phi <8 x i32> [ %i.bk, %bb.d ], [ zeroinitializer, %.lr.ph2118.i ] ; 2 uses
  %i.bx = phi <8 x i32> [ %i.bi, %bb.d ], [ zeroinitializer, %.lr.ph2118.i ] ; 2 uses
  %i.by = phi <8 x i32> [ %i.bg, %bb.d ], [ zeroinitializer, %.lr.ph2118.i ] ; 2 uses
  %i.bz = phi <8 x i32> [ %i.be, %bb.d ], [ zeroinitializer, %.lr.ph2118.i ] ; 2 uses
  %i.ca = phi <8 x i32> [ %i.bs, %bb.d ], [ zeroinitializer, %.lr.ph2118.i ] ; 2 uses
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.111252074.i = phi ptr [ %i.cy, %.lr.ph.i ], [ %.011242116.i, %bb.e ] ; 2 uses
  %.011442073.i = phi ptr [ %i.cx, %.lr.ph.i ], [ %.010732234.i, %bb.e ] ; 3 uses
  %.011482072.i = phi i32 [ %i.cz, %.lr.ph.i ], [ 0, %bb.e ]
  %i.cb = phi <8 x i32> [ %i.cp, %.lr.ph.i ], [ %i.bz, %bb.e ]
  %i.cc = phi <8 x i32> [ %i.cq, %.lr.ph.i ], [ %i.by, %bb.e ]
  %i.cd = phi <8 x i32> [ %i.cr, %.lr.ph.i ], [ %i.bx, %bb.e ]
  %i.ce = phi <8 x i32> [ %i.cs, %.lr.ph.i ], [ %i.bw, %bb.e ]
  %i.cf = phi <8 x i32> [ %i.ct, %.lr.ph.i ], [ %i.bv, %bb.e ]
  %i.cg = phi <8 x i32> [ %i.cu, %.lr.ph.i ], [ %i.bu, %bb.e ]
  %i.ch = phi <8 x i32> [ %i.cv, %.lr.ph.i ], [ %i.bt, %bb.e ]
  %i.ci = phi <8 x i32> [ %i.cw, %.lr.ph.i ], [ %i.ca, %bb.e ]
  %i.cj = load <32 x i8>, ptr %.011442073.i, align 1, !tbaa !17 ; 5 uses
  %i.ck = load <4 x i64>, ptr %.111252074.i, align 1, !tbaa !17 ; 2 uses
  %i.cl = shufflevector <32 x i8> %i.cj, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 4 uses
  %.cast1372.i = bitcast <4 x i64> %i.ck to <32 x i8> ; 3 uses
  %i.cm = shufflevector <32 x i8> %.cast1372.i, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.cn = shufflevector <4 x i64> %i.ck, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %.cast1373.i = bitcast <4 x i64> %i.cn to <32 x i8> ; 3 uses
  %i.co = shufflevector <32 x i8> %.cast1373.i, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.cp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cb, <32 x i8> %.cast1372.i, <32 x i8> %i.cj) ; 2 uses
  %i.cq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cc, <32 x i8> %i.cm, <32 x i8> %i.cj) ; 2 uses
  %i.cr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cd, <32 x i8> %.cast1372.i, <32 x i8> %i.cl) ; 2 uses
  %i.cs = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ce, <32 x i8> %i.cm, <32 x i8> %i.cl) ; 2 uses
  %i.ct = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cf, <32 x i8> %.cast1373.i, <32 x i8> %i.cj) ; 2 uses
  %i.cu = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cg, <32 x i8> %i.co, <32 x i8> %i.cj) ; 2 uses
  %i.cv = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ch, <32 x i8> %.cast1373.i, <32 x i8> %i.cl) ; 2 uses
  %i.cw = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ci, <32 x i8> %i.co, <32 x i8> %i.cl) ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.011442073.i, i64 32 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.111252074.i, i64 32
  %i.cz = add nuw nsw i32 %.011482072.i, 4        ; 2 uses
  %i.da = or disjoint i32 %i.cz, 3
  %i.db = icmp slt i32 %i.da, %8
  br i1 %i.db, label %.lr.ph.i, label %bb.f, !llvm.loop !314

bb.f:                                             ; preds = %.lr.ph.i
  %scevgep = getelementptr i8, ptr %.011242116.i, i64 %i.u
  %i.dc = load <4 x i64>, ptr %i.cx, align 1, !tbaa !17 ; 2 uses
  %i.dd = bitcast <4 x i64> %i.dc to <8 x i32>    ; 4 uses
  %i.de = sub <8 x i32> %i.cp, %i.dd
  %i.df = sub <8 x i32> %i.cq, %i.dd
  %i.dg = bitcast <4 x i64> %i.dc to <8 x i32>
  %i.dh = shufflevector <8 x i32> %i.dg, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 4 uses
  %i.di = sub <8 x i32> %i.cr, %i.dh
  %i.dj = sub <8 x i32> %i.cs, %i.dh
  %i.dk = sub <8 x i32> %i.ct, %i.dd
  %i.dl = sub <8 x i32> %i.cu, %i.dd
  %i.dm = sub <8 x i32> %i.cv, %i.dh
  %i.dn = sub <8 x i32> %i.cw, %i.dh
  %i.do = getelementptr inbounds nuw i8, ptr %.011442073.i, i64 64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f, %bb.e
  %.11125.lcssa3111.i = phi ptr [ %scevgep, %bb.f ], [ %.011242116.i, %bb.e ] ; 2 uses
  %.01148.lcssa3108.i = phi i32 [ %i.m, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.dp = phi <8 x i32> [ %i.dn, %bb.f ], [ %i.ca, %bb.e ] ; 2 uses
  %i.dq = phi <8 x i32> [ %i.dm, %bb.f ], [ %i.bt, %bb.e ] ; 2 uses
  %i.dr = phi <8 x i32> [ %i.dl, %bb.f ], [ %i.bu, %bb.e ] ; 2 uses
  %i.ds = phi <8 x i32> [ %i.dk, %bb.f ], [ %i.bv, %bb.e ] ; 2 uses
  %i.dt = phi <8 x i32> [ %i.dj, %bb.f ], [ %i.bw, %bb.e ] ; 2 uses
  %i.du = phi <8 x i32> [ %i.di, %bb.f ], [ %i.bx, %bb.e ] ; 2 uses
  %i.dv = phi <8 x i32> [ %i.df, %bb.f ], [ %i.by, %bb.e ] ; 2 uses
  %i.dw = phi <8 x i32> [ %i.de, %bb.f ], [ %i.bz, %bb.e ] ; 2 uses
  %.11145.i = phi ptr [ %i.do, %bb.f ], [ %.010732234.i, %bb.e ] ; 2 uses
  %i.dx = or disjoint i32 %.01148.lcssa3108.i, 1
  %i.dy = icmp slt i32 %i.dx, %8
  br i1 %i.dy, label %.lr.ph2089.i, label %.preheader1972.i

.preheader1972.i:                                 ; preds = %.lr.ph2089.i, %._crit_edge.i
  %.lcssa2042.i = phi <8 x i32> [ %i.dp, %._crit_edge.i ], [ %i.fa, %.lr.ph2089.i ] ; 2 uses
  %.lcssa2041.i = phi <8 x i32> [ %i.dq, %._crit_edge.i ], [ %i.ez, %.lr.ph2089.i ] ; 2 uses
  %.lcssa2040.i = phi <8 x i32> [ %i.dr, %._crit_edge.i ], [ %i.ey, %.lr.ph2089.i ] ; 2 uses
  %.lcssa2039.i = phi <8 x i32> [ %i.ds, %._crit_edge.i ], [ %i.ev, %.lr.ph2089.i ] ; 2 uses
  %.lcssa2038.i = phi <8 x i32> [ %i.dt, %._crit_edge.i ], [ %i.et, %.lr.ph2089.i ] ; 2 uses
  %.lcssa2037.i = phi <8 x i32> [ %i.du, %._crit_edge.i ], [ %i.es, %.lr.ph2089.i ] ; 2 uses
  %.lcssa2036.i = phi <8 x i32> [ %i.dv, %._crit_edge.i ], [ %i.eq, %.lr.ph2089.i ] ; 2 uses
  %.lcssa2035.i = phi <8 x i32> [ %i.dw, %._crit_edge.i ], [ %i.eo, %.lr.ph2089.i ] ; 2 uses
  %.11149.lcssa.i = phi i32 [ %.01148.lcssa3108.i, %._crit_edge.i ], [ %i.fd, %.lr.ph2089.i ] ; 2 uses
  %.21146.lcssa.i = phi ptr [ %.11145.i, %._crit_edge.i ], [ %i.fb, %.lr.ph2089.i ]
  %.21126.lcssa.i = phi ptr [ %.11125.lcssa3111.i, %._crit_edge.i ], [ %i.fc, %.lr.ph2089.i ] ; 2 uses
  %i.dz = icmp slt i32 %.11149.lcssa.i, %8
  br i1 %i.dz, label %.lr.ph2104.i, label %._crit_edge2105.i

.lr.ph2089.i:                                     ; preds = %._crit_edge.i, %.lr.ph2089.i
  %.211262087.i = phi ptr [ %i.fc, %.lr.ph2089.i ], [ %.11125.lcssa3111.i, %._crit_edge.i ] ; 2 uses
  %.211462086.i = phi ptr [ %i.fb, %.lr.ph2089.i ], [ %.11145.i, %._crit_edge.i ] ; 2 uses
  %.111492085.i = phi i32 [ %i.fd, %.lr.ph2089.i ], [ %.01148.lcssa3108.i, %._crit_edge.i ]
  %i.ea = phi <8 x i32> [ %i.eo, %.lr.ph2089.i ], [ %i.dw, %._crit_edge.i ]
  %i.eb = phi <8 x i32> [ %i.eq, %.lr.ph2089.i ], [ %i.dv, %._crit_edge.i ]
  %i.ec = phi <8 x i32> [ %i.es, %.lr.ph2089.i ], [ %i.du, %._crit_edge.i ]
  %i.ed = phi <8 x i32> [ %i.et, %.lr.ph2089.i ], [ %i.dt, %._crit_edge.i ]
  %i.ee = phi <8 x i32> [ %i.ev, %.lr.ph2089.i ], [ %i.ds, %._crit_edge.i ]
  %i.ef = phi <8 x i32> [ %i.ey, %.lr.ph2089.i ], [ %i.dr, %._crit_edge.i ]
  %i.eg = phi <8 x i32> [ %i.ez, %.lr.ph2089.i ], [ %i.dq, %._crit_edge.i ]
  %i.eh = phi <8 x i32> [ %i.fa, %.lr.ph2089.i ], [ %i.dp, %._crit_edge.i ]
  %i.ei = load <16 x i8>, ptr %.211462086.i, align 1, !tbaa !17
  %i.ej = load <16 x i8>, ptr %.211262087.i, align 1, !tbaa !17
  %i.ek = sext <16 x i8> %i.ei to <16 x i16>      ; 5 uses
  %i.el = sext <16 x i8> %i.ej to <16 x i16>      ; 4 uses
  %i.em = bitcast <16 x i16> %i.el to <4 x i64>
  %i.en = shufflevector <4 x i64> %i.em, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.eo = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ea, <16 x i16> %i.ek, <16 x i16> %i.el) ; 2 uses
  %i.ep = shufflevector <16 x i16> %i.el, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9> ; 2 uses
  %i.eq = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.eb, <16 x i16> %i.ek, <16 x i16> %i.ep) ; 2 uses
  %i.er = shufflevector <16 x i16> %i.ek, <16 x i16> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.es = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ec, <16 x i16> %i.er, <16 x i16> %i.el) ; 2 uses
  %i.et = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ed, <16 x i16> %i.er, <16 x i16> %i.ep) ; 2 uses
  %i.eu = bitcast <4 x i64> %i.en to <16 x i16>   ; 2 uses
  %i.ev = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ee, <16 x i16> %i.ek, <16 x i16> %i.eu) ; 2 uses
  %i.ew = bitcast <4 x i64> %i.en to <16 x i16>
  %i.ex = shufflevector <16 x i16> %i.ew, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9> ; 2 uses
  %i.ey = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.ef, <16 x i16> %i.ek, <16 x i16> %i.ex) ; 2 uses
  %i.ez = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.eg, <16 x i16> %i.er, <16 x i16> %i.eu) ; 2 uses
  %i.fa = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.eh, <16 x i16> %i.er, <16 x i16> %i.ex) ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.211462086.i, i64 16 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.211262087.i, i64 16 ; 2 uses
  %i.fd = add nuw nsw i32 %.111492085.i, 2        ; 3 uses
  %i.fe = or disjoint i32 %i.fd, 1
  %i.ff = icmp slt i32 %i.fe, %8
  br i1 %i.ff, label %.lr.ph2089.i, label %.preheader1972.i, !llvm.loop !315

.lr.ph2104.i:                                     ; preds = %.preheader1972.i, %.lr.ph2104.i
  %.311272103.i = phi ptr [ %i.gv, %.lr.ph2104.i ], [ %.21126.lcssa.i, %.preheader1972.i ] ; 2 uses
  %.311472102.i = phi ptr [ %i.gu, %.lr.ph2104.i ], [ %.21146.lcssa.i, %.preheader1972.i ] ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.qt = load <32 x i8>, ptr %i.qr, align 1, !tbaa !17
  %i.qu = load float, ptr %i.qs, align 1, !tbaa !17
  %i.qv = insertelement <8 x float> poison, float %i.qu, i64 0
  %i.qw = shufflevector <8 x float> %i.qv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qx = bitcast <8 x float> %i.qw to <32 x i8>
  %i.qy = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.qq, <32 x i8> %i.qx, <32 x i8> %i.qt)
  %i.qz = getelementptr inbounds nuw i8, ptr %.011722201.i, i64 96
  %i.ra = getelementptr inbounds nuw i8, ptr %.1311372202.i, i64 12
  %i.rb = load <32 x i8>, ptr %i.qz, align 1, !tbaa !17
  %i.rc = load float, ptr %i.ra, align 1, !tbaa !17
  %i.rd = insertelement <8 x float> poison, float %i.rc, i64 0
  %i.re = shufflevector <8 x float> %i.rd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rf = bitcast <8 x float> %i.re to <32 x i8>
  %i.rg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.qy, <32 x i8> %i.rf, <32 x i8> %i.rb) ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.011722201.i, i64 128 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.1311372202.i, i64 16 ; 2 uses
  %niter1960.next.3 = add nuw nsw i32 %niter1960, 4 ; 2 uses
  %niter1960.ncmp.3.not = icmp eq i32 %niter1960.next.3, %unroll_iter1959
  br i1 %niter1960.ncmp.3.not, label %.unr-lcssa1952, label %.lr.ph2204.i, !llvm.loop !328

.unr-lcssa1952:                                   ; preds = %.lr.ph2204.i
  br i1 %lcmp.mod1956.not, label %.epilog-lcssa, label %.lr.ph2204.i.epil.preheader

.lr.ph2204.i.epil.preheader:                      ; preds = %.unr-lcssa1952, %.lr.ph2204.i.preheader
  %.1311372202.i.epil.init = phi ptr [ %.1211362227.i, %.lr.ph2204.i.preheader ], [ %i.ri, %.unr-lcssa1952 ]
  %.011722201.i.epil.init = phi ptr [ %.010732234.i, %.lr.ph2204.i.preheader ], [ %i.rh, %.unr-lcssa1952 ]
  %.epil.init1955 = phi <8 x i32> [ %i.qb, %.lr.ph2204.i.preheader ], [ %i.rg, %.unr-lcssa1952 ]
  tail call void @llvm.assume(i1 %lcmp.mod1958)
  br label %.lr.ph2204.i.epil

.lr.ph2204.i.epil:                                ; preds = %.lr.ph2204.i.epil, %.lr.ph2204.i.epil.preheader
  %.1311372202.i.epil = phi ptr [ %i.rr, %.lr.ph2204.i.epil ], [ %.1311372202.i.epil.init, %.lr.ph2204.i.epil.preheader ] ; 2 uses
  %.011722201.i.epil = phi ptr [ %i.rq, %.lr.ph2204.i.epil ], [ %.011722201.i.epil.init, %.lr.ph2204.i.epil.preheader ] ; 2 uses
  %i.rj = phi <8 x i32> [ %i.rp, %.lr.ph2204.i.epil ], [ %.epil.init1955, %.lr.ph2204.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph2204.i.epil ], [ 0, %.lr.ph2204.i.epil.preheader ]
  %i.rk = load <32 x i8>, ptr %.011722201.i.epil, align 1, !tbaa !17
  %i.rl = load float, ptr %.1311372202.i.epil, align 1, !tbaa !17
  %i.rm = insertelement <8 x float> poison, float %i.rl, i64 0
  %i.rn = shufflevector <8 x float> %i.rm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ro = bitcast <8 x float> %i.rn to <32 x i8>
  %i.rp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.rj, <32 x i8> %i.ro, <32 x i8> %i.rk) ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.011722201.i.epil, i64 32
  %i.rr = getelementptr inbounds nuw i8, ptr %.1311372202.i.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1953
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.lr.ph2204.i.epil, !llvm.loop !329

.epilog-lcssa:                                    ; preds = %.lr.ph2204.i.epil, %.unr-lcssa1952
  %.lcssa1935 = phi <8 x i32> [ %i.rg, %.unr-lcssa1952 ], [ %i.rp, %.lr.ph2204.i.epil ]
  %i.rs = getelementptr i8, ptr %.1211362227.i, i64 %i.s
  %scevgep3031.i = getelementptr i8, ptr %i.rs, i64 4
  %i.rt = load <8 x i32>, ptr %indvars.iv497, align 1, !tbaa !17
  %i.ru = sub <8 x i32> %.lcssa1935, %i.rt
  br label %._crit_edge2205.i

._crit_edge2205.i:                                ; preds = %.epilog-lcssa, %bb.n
  %.131137.lcssa3149.i = phi ptr [ %scevgep3031.i, %.epilog-lcssa ], [ %.1211362227.i, %bb.n ] ; 2 uses
  %.01176.lcssa3146.i = phi i32 [ %i.m, %.epilog-lcssa ], [ 0, %bb.n ] ; 3 uses
  %i.rv = phi <8 x i32> [ %i.ru, %.epilog-lcssa ], [ %i.qb, %bb.n ] ; 2 uses
  %.11173.i = phi ptr [ %i.lj, %.epilog-lcssa ], [ %.010732234.i, %bb.n ] ; 2 uses
  %i.rw = or disjoint i32 %.01176.lcssa3146.i, 1
  %i.rx = icmp slt i32 %i.rw, %8
  br i1 %i.rx, label %.lr.ph2214.i, label %.preheader1969.i

.preheader1969.i:                                 ; preds = %.lr.ph2214.i, %._crit_edge2205.i
  %.lcssa2070.i = phi <8 x i32> [ %i.rv, %._crit_edge2205.i ], [ %i.sv, %.lr.ph2214.i ] ; 3 uses
  %.11177.lcssa.i = phi i32 [ %.01176.lcssa3146.i, %._crit_edge2205.i ], [ %i.sy, %.lr.ph2214.i ] ; 5 uses
  %.21174.lcssa.i = phi ptr [ %.11173.i, %._crit_edge2205.i ], [ %i.sw, %.lr.ph2214.i ] ; 3 uses
  %.141138.lcssa.i = phi ptr [ %.131137.lcssa3149.i, %._crit_edge2205.i ], [ %i.sx, %.lr.ph2214.i ] ; 4 uses
  %i.ry = icmp slt i32 %.11177.lcssa.i, %8
  br i1 %i.ry, label %.lr.ph2222.i.preheader, label %._crit_edge2223.i

.lr.ph2222.i.preheader:                           ; preds = %.preheader1969.i
  %i.rz = sub i32 %8, %.11177.lcssa.i
  %.neg2078 = add i32 %.11177.lcssa.i, 1
  %xtraiter1961 = and i32 %i.rz, 1
  %lcmp.mod1962.not = icmp eq i32 %xtraiter1961, 0
  br i1 %lcmp.mod1962.not, label %.lr.ph2222.i.prol.loopexit, label %.lr.ph2222.i.prol

.lr.ph2222.i.prol:                                ; preds = %.lr.ph2222.i.preheader
  %i.sa = load <8 x i8>, ptr %.21174.lcssa.i, align 1, !tbaa !17
  %i.sb = load i8, ptr %.141138.lcssa.i, align 1, !tbaa !17
  %i.sc = sext i8 %i.sb to i16
  %i.sd = insertelement <8 x i16> poison, i16 %i.sc, i64 0
  %i.se = shufflevector <8 x i16> %i.sd, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.sf = sext <8 x i8> %i.sa to <8 x i16>
  %i.sg = mul <8 x i16> %i.se, %i.sf
  %i.sh = sext <8 x i16> %i.sg to <8 x i32>
  %i.si = add <8 x i32> %.lcssa2070.i, %i.sh      ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.21174.lcssa.i, i64 8
  %i.sk = getelementptr inbounds nuw i8, ptr %.141138.lcssa.i, i64 1 ; 2 uses
  %i.sl = add nuw nsw i32 %.11177.lcssa.i, 1
  br label %.lr.ph2222.i.prol.loopexit

.lr.ph2222.i.prol.loopexit:                       ; preds = %.lr.ph2222.i.prol, %.lr.ph2222.i.preheader
  %.lcssa1941.unr = phi <8 x i32> [ poison, %.lr.ph2222.i.preheader ], [ %i.si, %.lr.ph2222.i.prol ]
  %.lcssa1940.unr = phi ptr [ poison, %.lr.ph2222.i.preheader ], [ %i.sk, %.lr.ph2222.i.prol ]
  %.1511392221.i.unr = phi ptr [ %.141138.lcssa.i, %.lr.ph2222.i.preheader ], [ %i.sk, %.lr.ph2222.i.prol ]
  %.311752220.i.unr = phi ptr [ %.21174.lcssa.i, %.lr.ph2222.i.preheader ], [ %i.sj, %.lr.ph2222.i.prol ]
  %.211782219.i.unr = phi i32 [ %.11177.lcssa.i, %.lr.ph2222.i.preheader ], [ %i.sl, %.lr.ph2222.i.prol ]
  %.unr1963 = phi <8 x i32> [ %.lcssa2070.i, %.lr.ph2222.i.preheader ], [ %i.si, %.lr.ph2222.i.prol ]
  %i.sm = icmp eq i32 %8, %.neg2078
  br i1 %i.sm, label %._crit_edge2223.i, label %.lr.ph2222.i

.lr.ph2214.i:                                     ; preds = %._crit_edge2205.i, %.lr.ph2214.i
  %.1411382212.i = phi ptr [ %i.sx, %.lr.ph2214.i ], [ %.131137.lcssa3149.i, %._crit_edge2205.i ] ; 2 uses
  %.211742211.i = phi ptr [ %i.sw, %.lr.ph2214.i ], [ %.11173.i, %._crit_edge2205.i ] ; 2 uses
  %.111772210.i = phi i32 [ %i.sy, %.lr.ph2214.i ], [ %.01176.lcssa3146.i, %._crit_edge2205.i ]
  %i.sn = phi <8 x i32> [ %i.sv, %.lr.ph2214.i ], [ %i.rv, %._crit_edge2205.i ]
  %i.so = load <16 x i8>, ptr %.211742211.i, align 1, !tbaa !17
  %i.sp = load float, ptr %.1411382212.i, align 1, !tbaa !17
  %i.sq = insertelement <4 x float> poison, float %i.sp, i64 0
  %i.sr = sext <16 x i8> %i.so to <16 x i16>
  %i.ss = bitcast <4 x float> %i.sq to <16 x i8>
  %i.st = shufflevector <16 x i8> %i.ss, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.su = sext <16 x i8> %i.st to <16 x i16>
  %i.sv = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.sn, <16 x i16> %i.sr, <16 x i16> %i.su) ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.211742211.i, i64 16 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.1411382212.i, i64 2 ; 2 uses
  %i.sy = add nuw nsw i32 %.111772210.i, 2        ; 3 uses
  %i.sz = or disjoint i32 %i.sy, 1
  %i.ta = icmp slt i32 %i.sz, %8
  br i1 %i.ta, label %.lr.ph2214.i, label %.preheader1969.i, !llvm.loop !330

.lr.ph2222.i:                                     ; preds = %.lr.ph2222.i.prol.loopexit, %.lr.ph2222.i
  %.1511392221.i = phi ptr [ %i.tx, %.lr.ph2222.i ], [ %.1511392221.i.unr, %.lr.ph2222.i.prol.loopexit ] ; 3 uses
  %.311752220.i = phi ptr [ %i.tw, %.lr.ph2222.i ], [ %.311752220.i.unr, %.lr.ph2222.i.prol.loopexit ] ; 3 uses
  %.211782219.i = phi i32 [ %i.ty, %.lr.ph2222.i ], [ %.211782219.i.unr, %.lr.ph2222.i.prol.loopexit ]
  %i.tb = phi <8 x i32> [ %i.tv, %.lr.ph2222.i ], [ %.unr1963, %.lr.ph2222.i.prol.loopexit ]
  %i.tc = load <8 x i8>, ptr %.311752220.i, align 1, !tbaa !17
  %i.td = load i8, ptr %.1511392221.i, align 1, !tbaa !17
  %i.te = sext i8 %i.td to i16
  %i.tf = insertelement <8 x i16> poison, i16 %i.te, i64 0
  %i.tg = shufflevector <8 x i16> %i.tf, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.th = sext <8 x i8> %i.tc to <8 x i16>
  %i.ti = mul <8 x i16> %i.tg, %i.th
  %i.tj = sext <8 x i16> %i.ti to <8 x i32>
  %i.tk = add <8 x i32> %i.tb, %i.tj
  %i.tl = getelementptr inbounds nuw i8, ptr %.311752220.i, i64 8
  %i.tm = getelementptr inbounds nuw i8, ptr %.1511392221.i, i64 1
  %i.tn = load <8 x i8>, ptr %i.tl, align 1, !tbaa !17
  %i.to = load i8, ptr %i.tm, align 1, !tbaa !17
  %i.tp = sext i8 %i.to to i16
  %i.tq = insertelement <8 x i16> poison, i16 %i.tp, i64 0
  %i.tr = shufflevector <8 x i16> %i.tq, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ts = sext <8 x i8> %i.tn to <8 x i16>
  %i.tt = mul <8 x i16> %i.tr, %i.ts
  %i.tu = sext <8 x i16> %i.tt to <8 x i32>
  %i.tv = add <8 x i32> %i.tk, %i.tu              ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.311752220.i, i64 16
  %i.tx = getelementptr inbounds nuw i8, ptr %.1511392221.i, i64 2 ; 2 uses
  %i.ty = add nuw nsw i32 %.211782219.i, 2        ; 2 uses
  %exitcond3032.not.i.1 = icmp eq i32 %i.ty, %8
  br i1 %exitcond3032.not.i.1, label %._crit_edge2223.i, label %.lr.ph2222.i, !llvm.loop !331

._crit_edge2223.i:                                ; preds = %.lr.ph2222.i.prol.loopexit, %.lr.ph2222.i, %.preheader1969.i
  %.lcssa2071.i = phi <8 x i32> [ %.lcssa2070.i, %.preheader1969.i ], [ %.lcssa1941.unr, %.lr.ph2222.i.prol.loopexit ], [ %i.tv, %.lr.ph2222.i ]
  %.151139.lcssa.i = phi ptr [ %.141138.lcssa.i, %.preheader1969.i ], [ %.lcssa1940.unr, %.lr.ph2222.i.prol.loopexit ], [ %i.tx, %.lr.ph2222.i ]
  store <8 x i32> %.lcssa2071.i, ptr %.410972228.i, align 32, !tbaa !17
  %i.tz = getelementptr inbounds nuw i8, ptr %.410972228.i, i64 32 ; 2 uses
  %i.ua = add nuw nsw i32 %.311432226.i, 1        ; 2 uses
  %exitcond3033.not.i = icmp eq i32 %i.ua, %6
  br i1 %exitcond3033.not.i, label %._crit_edge2230.i, label %.lr.ph2229.i, !llvm.loop !332

._crit_edge2230.i:                                ; preds = %._crit_edge2223.i, %.preheader1973.i
  %.41097.lcssa.i = phi ptr [ %.31096.lcssa.i, %.preheader1973.i ], [ %i.tz, %._crit_edge2223.i ] ; 2 uses
  %i.ub = getelementptr inbounds i8, ptr %.010732234.i, i64 %i.j
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.ub, i64 %spec.select.idx.i ; 2 uses
  %i.uc = add nuw nsw i32 %.011202232.i, 8        ; 2 uses
  %i.ud = or disjoint i32 %i.uc, 7
  %i.ue = icmp slt i32 %i.ud, %4
  %scevgep495 = getelementptr i8, ptr %indvars.iv, i64 %i.v
  %scevgep498 = getelementptr i8, ptr %indvars.iv497, i64 %i.v
  br i1 %i.ue, label %.preheader1976.i, label %.preheader1968.loopexit.i, !llvm.loop !333

.preheader1967.i:                                 ; preds = %._crit_edge2388.i, %.preheader1967.lr.ph.i
  %indvars.iv501 = phi ptr [ %scevgep502, %._crit_edge2388.i ], [ %scevgep500, %.preheader1967.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep3038.i, %._crit_edge2388.i ], [ %scevgep3037.i, %.preheader1967.lr.ph.i ] ; 6 uses
  %.22392.i = phi ptr [ %spec.select1374.i, %._crit_edge2388.i ], [ %.01073.lcssa.i, %.preheader1967.lr.ph.i ] ; 12 uses
  %.510982391.i = phi ptr [ %.9.lcssa.i, %._crit_edge2388.i ], [ %.01093.lcssa.i, %.preheader1967.lr.ph.i ] ; 2 uses
  %.111212390.i = phi i32 [ %i.ame, %._crit_edge2388.i ], [ %.01120.lcssa.i, %.preheader1967.lr.ph.i ]
  br i1 %i.ae, label %.lr.ph2276.i, label %.preheader1966.i

.preheader1959.i:                                 ; preds = %._crit_edge2388.i, %.preheader1968.i
  %.11121.lcssa.i = phi i32 [ %.01120.lcssa.i, %.preheader1968.i ], [ %i.ame, %._crit_edge2388.i ] ; 3 uses
  %.51098.lcssa.i = phi ptr [ %.01093.lcssa.i, %.preheader1968.i ], [ %.9.lcssa.i, %._crit_edge2388.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.01073.lcssa.i, %.preheader1968.i ], [ %spec.select1374.i, %._crit_edge2388.i ] ; 4 uses
  %i.uf = or disjoint i32 %.11121.lcssa.i, 1
  %i.ug = icmp slt i32 %i.uf, %4
  br i1 %i.ug, label %.preheader1958.lr.ph.i, label %.preheader1950.i

.preheader1958.lr.ph.i:                           ; preds = %.preheader1959.i
  %i.uh = icmp sgt i32 %6, 7
  %i.ui = icmp eq i32 %7, 0                       ; 4 uses
  %i.uj = icmp sgt i32 %8, 3                      ; 5 uses
  %i.uk = shl i32 %8, 1
  %i.ul = sext i32 %i.uk to i64                   ; 3 uses
  %spec.select1375.idx.i = select i1 %i.uj, i64 8, i64 0 ; 3 uses
  %i.um = add i32 %8, -4                          ; 5 uses
  %i.un = and i32 %i.um, -4
  %i.uo = add i32 %i.un, 4                        ; 4 uses
  %i.up = and i32 %6, -8
  %i.uq = zext i32 %i.um to i64                   ; 2 uses
  %i.ur = lshr i64 %i.uq, 2                       ; 4 uses
  %i.us = shl nuw nsw i64 %i.ur, 4
  %i.ut = shl nuw nsw i64 %i.ur, 3                ; 2 uses
  %i.uu = add nuw nsw i64 %i.ut, 8                ; 2 uses
  %scevgep3049.i = getelementptr i8, ptr %.2.lcssa.i, i64 %i.uu
  %i.uv = and i64 %i.uq, 4294967292
  %i.uw = shl nuw nsw i64 %i.ur, 5
  %scevgep504 = getelementptr i8, ptr %.2.lcssa.i, i64 %i.ut
  %i.ux = add i32 %8, -2
  %i.uy = add nuw nsw i64 %i.ur, 1                ; 7 uses
  %i.uz = add i32 %8, -4                          ; 3 uses
  %i.va = lshr i32 %i.uz, 2                       ; 3 uses
  %i.vb = add nuw nsw i32 %i.va, 1                ; 4 uses
  %i.vc = icmp eq i32 %i.va, 0
  %unroll_iter2026 = and i32 %i.vb, 2147483646
  %i.vd = and i32 %i.uz, 4
  %lcmp.mod2019.not.not = icmp eq i32 %i.vd, 0
  %lcmp.mod2025 = trunc i32 %i.vb to i1
  %i.ve = icmp eq i32 %i.va, 0
  %unroll_iter2045 = and i32 %i.vb, 2147483646
  %i.vf = and i32 %i.uz, 4
  %lcmp.mod2039.not.not = icmp eq i32 %i.vf, 0
  %lcmp.mod2044 = trunc i32 %i.vb to i1
  %min.iters.check1240 = icmp ult i32 %i.um, 28
  %n.vec1242 = and i64 %i.uy, 2147483640          ; 4 uses
  %i.vg = trunc nuw nsw i64 %n.vec1242 to i32
  %i.vh = shl i32 %i.vg, 2
  %i.vi = shl nuw nsw i64 %n.vec1242, 3           ; 2 uses
  %cmp.n1267 = icmp eq i64 %i.uy, %n.vec1242
  %i.vj = add i32 %8, -2
  %min.iters.check1104 = icmp ult i32 %i.um, 12
  %min.iters.check1106 = icmp ult i32 %i.um, 60
  %i.vk = and i64 %i.uy, 12
  %n.vec1108 = and i64 %i.uy, 2147483632          ; 6 uses
  %i.vl = trunc nuw nsw i64 %n.vec1108 to i32
  %i.vm = shl i32 %i.vl, 2
  %i.vn = shl nuw nsw i64 %n.vec1108, 3
  %i.vo = shl nuw nsw i64 %n.vec1108, 2
  %cmp.n1147 = icmp eq i64 %i.uy, %n.vec1108
  %min.epilog.iters.check1156 = icmp eq i64 %i.vk, 0
  %n.vec1158 = and i64 %i.uy, 2147483644          ; 5 uses
  %i.vp = trunc nuw nsw i64 %n.vec1158 to i32
  %i.vq = shl i32 %i.vp, 2
  %i.vr = shl nuw nsw i64 %n.vec1158, 3
  %i.vs = shl nuw nsw i64 %n.vec1158, 2
  %cmp.n1175 = icmp eq i64 %i.uy, %n.vec1158
  br label %.preheader1958.i

.preheader1966.i:                                 ; preds = %._crit_edge2267.i, %.preheader1967.i
  %.01195.lcssa.i = phi i32 [ 0, %.preheader1967.i ], [ %i.am, %._crit_edge2267.i ] ; 3 uses
  %.01179.lcssa.i = phi ptr [ %i.c, %.preheader1967.i ], [ %.31182.lcssa.i, %._crit_edge2267.i ] ; 2 uses
  %.61099.lcssa.i = phi ptr [ %.510982391.i, %.preheader1967.i ], [ %i.zr, %._crit_edge2267.i ] ; 2 uses
  %i.vt = or disjoint i32 %.01195.lcssa.i, 3
  %i.vu = icmp slt i32 %i.vt, %6
  br i1 %i.vu, label %.lr.ph2318.i.preheader, label %.preheader1965.i

.lr.ph2318.i.preheader:                           ; preds = %.preheader1966.i
  %i.vv = getelementptr inbounds nuw i8, ptr %indvars.iv501, i64 32
  br label %.lr.ph2318.i

.lr.ph2276.i:                                     ; preds = %.preheader1967.i, %._crit_edge2267.i
  %.610992275.i = phi ptr [ %i.zr, %._crit_edge2267.i ], [ %.510982391.i, %.preheader1967.i ] ; 9 uses
  %.011792274.i = phi ptr [ %.31182.lcssa.i, %._crit_edge2267.i ], [ %i.c, %.preheader1967.i ] ; 3 uses
  %.011952273.i = phi i32 [ %i.zs, %._crit_edge2267.i ], [ 0, %.preheader1967.i ]
  br i1 %i.af, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph2276.i
  %i.vw = load <8 x i32>, ptr %.610992275.i, align 32, !tbaa !17
  %i.vx = getelementptr inbounds nuw i8, ptr %.610992275.i, i64 32
  %i.vy = load <8 x i32>, ptr %i.vx, align 32, !tbaa !17
  %i.vz = getelementptr inbounds nuw i8, ptr %.610992275.i, i64 64
  %i.wa = load <8 x i32>, ptr %i.vz, align 32, !tbaa !17
  %i.wb = getelementptr inbounds nuw i8, ptr %.610992275.i, i64 96
  %i.wc = load <8 x i32>, ptr %i.wb, align 32, !tbaa !17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph2276.i
  %i.wd = phi <8 x i32> [ %i.wa, %bb.o ], [ zeroinitializer, %.lr.ph2276.i ] ; 2 uses
  %i.we = phi <8 x i32> [ %i.vy, %bb.o ], [ zeroinitializer, %.lr.ph2276.i ] ; 2 uses
  %i.wf = phi <8 x i32> [ %i.vw, %bb.o ], [ zeroinitializer, %.lr.ph2276.i ] ; 2 uses
  %i.wg = phi <8 x i32> [ %i.wc, %bb.o ], [ zeroinitializer, %.lr.ph2276.i ] ; 2 uses
  br i1 %i.ag, label %.lr.ph2242.i, label %._crit_edge2243.i

.lr.ph2242.i:                                     ; preds = %bb.p, %.lr.ph2242.i
  %.111802240.i = phi ptr [ %i.wu, %.lr.ph2242.i ], [ %.011792274.i, %bb.p ] ; 2 uses
  %.012272239.i = phi ptr [ %i.wt, %.lr.ph2242.i ], [ %.22392.i, %bb.p ] ; 3 uses
  %.012312238.i = phi i32 [ %i.wv, %.lr.ph2242.i ], [ 0, %bb.p ]
  %i.wh = phi <8 x i32> [ %i.wp, %.lr.ph2242.i ], [ %i.wf, %bb.p ]
  %i.wi = phi <8 x i32> [ %i.wq, %.lr.ph2242.i ], [ %i.we, %bb.p ]
  %i.wj = phi <8 x i32> [ %i.wr, %.lr.ph2242.i ], [ %i.wd, %bb.p ]
  %i.wk = phi <8 x i32> [ %i.ws, %.lr.ph2242.i ], [ %i.wg, %bb.p ]
  %i.wl = load <16 x i8>, ptr %.012272239.i, align 1, !tbaa !17 ; 2 uses
  %i.wm = load <32 x i8>, ptr %.111802240.i, align 1, !tbaa !17 ; 3 uses
  %.cast1361.i = shufflevector <16 x i8> %i.wl, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.wn = shufflevector <16 x i8> %i.wl, <16 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.wo = shufflevector <32 x i8> %i.wm, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19> ; 2 uses
  %i.wp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.wh, <32 x i8> %i.wm, <32 x i8> %.cast1361.i) ; 2 uses
  %i.wq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.wi, <32 x i8> %i.wm, <32 x i8> %i.wn) ; 2 uses
  %i.wr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.wj, <32 x i8> %i.wo, <32 x i8> %.cast1361.i) ; 2 uses
  %i.ws = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.wk, <32 x i8> %i.wo, <32 x i8> %i.wn) ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.012272239.i, i64 16 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.111802240.i, i64 32
  %i.wv = add nuw nsw i32 %.012312238.i, 4        ; 2 uses
  %i.ww = or disjoint i32 %i.wv, 3
  %i.wx = icmp slt i32 %i.ww, %8
  br i1 %i.wx, label %.lr.ph2242.i, label %bb.q, !llvm.loop !334

bb.q:                                             ; preds = %.lr.ph2242.i
  %i.wy = getelementptr i8, ptr %.011792274.i, i64 %i.at
  %scevgep499 = getelementptr i8, ptr %i.wy, i64 32
  %i.wz = load <2 x i64>, ptr %i.wt, align 1, !tbaa !17
  %i.xa = shufflevector <2 x i64> %i.wz, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.xb = bitcast <4 x i64> %i.xa to <8 x i32>    ; 2 uses
  %i.xc = sub <8 x i32> %i.wp, %i.xb
  %i.xd = bitcast <4 x i64> %i.xa to <8 x i32>
  %i.xe = shufflevector <8 x i32> %i.xd, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.xf = sub <8 x i32> %i.wq, %i.xe
  %i.xg = sub <8 x i32> %i.wr, %i.xb
  %i.xh = sub <8 x i32> %i.ws, %i.xe
  %i.xi = getelementptr inbounds nuw i8, ptr %.012272239.i, i64 32
  br label %._crit_edge2243.i

._crit_edge2243.i:                                ; preds = %bb.q, %bb.p
  %.11180.lcssa3165.i = phi ptr [ %scevgep499, %bb.q ], [ %.011792274.i, %bb.p ] ; 2 uses
  %.01231.lcssa3162.i = phi i32 [ %i.al, %bb.q ], [ 0, %bb.p ] ; 3 uses
  %i.xj = phi <8 x i32> [ %i.xh, %bb.q ], [ %i.wg, %bb.p ] ; 2 uses
  %i.xk = phi <8 x i32> [ %i.xg, %bb.q ], [ %i.wd, %bb.p ] ; 2 uses
  %i.xl = phi <8 x i32> [ %i.xf, %bb.q ], [ %i.we, %bb.p ] ; 2 uses
  %i.xm = phi <8 x i32> [ %i.xc, %bb.q ], [ %i.wf, %bb.p ] ; 2 uses
  %.11228.i = phi ptr [ %i.xi, %bb.q ], [ %.22392.i, %bb.p ] ; 2 uses
  %i.xn = or disjoint i32 %.01231.lcssa3162.i, 1
  %i.xo = icmp slt i32 %i.xn, %8
  br i1 %i.xo, label %.lr.ph2255.i, label %.preheader1963.i

.preheader1963.i:                                 ; preds = %.lr.ph2255.i, %._crit_edge2243.i
  %.lcssa2001.i = phi <8 x i32> [ %i.xj, %._crit_edge2243.i ], [ %i.yg, %.lr.ph2255.i ] ; 2 uses
  %.lcssa2000.i = phi <8 x i32> [ %i.xk, %._crit_edge2243.i ], [ %i.yf, %.lr.ph2255.i ] ; 2 uses
  %.lcssa1999.i = phi <8 x i32> [ %i.xl, %._crit_edge2243.i ], [ %i.yd, %.lr.ph2255.i ] ; 2 uses
  %.lcssa1998.i = phi <8 x i32> [ %i.xm, %._crit_edge2243.i ], [ %i.yb, %.lr.ph2255.i ] ; 2 uses
  %.11232.lcssa.i = phi i32 [ %.01231.lcssa3162.i, %._crit_edge2243.i ], [ %i.yj, %.lr.ph2255.i ] ; 2 uses
  %.21229.lcssa.i = phi ptr [ %.11228.i, %._crit_edge2243.i ], [ %i.yh, %.lr.ph2255.i ]
  %.21181.lcssa.i = phi ptr [ %.11180.lcssa3165.i, %._crit_edge2243.i ], [ %i.yi, %.lr.ph2255.i ] ; 2 uses
  %i.xp = icmp slt i32 %.11232.lcssa.i, %8
  br i1 %i.xp, label %.lr.ph2266.i, label %._crit_edge2267.i

.lr.ph2255.i:                                     ; preds = %._crit_edge2243.i, %.lr.ph2255.i
  %.211812253.i = phi ptr [ %i.yi, %.lr.ph2255.i ], [ %.11180.lcssa3165.i, %._crit_edge2243.i ] ; 2 uses
  %.212292252.i = phi ptr [ %i.yh, %.lr.ph2255.i ], [ %.11228.i, %._crit_edge2243.i ] ; 2 uses
  %.112322251.i = phi i32 [ %i.yj, %.lr.ph2255.i ], [ %.01231.lcssa3162.i, %._crit_edge2243.i ]
  %i.xq = phi <8 x i32> [ %i.yb, %.lr.ph2255.i ], [ %i.xm, %._crit_edge2243.i ]
  %i.xr = phi <8 x i32> [ %i.yd, %.lr.ph2255.i ], [ %i.xl, %._crit_edge2243.i ]
  %i.xs = phi <8 x i32> [ %i.yf, %.lr.ph2255.i ], [ %i.xk, %._crit_edge2243.i ]
  %i.xt = phi <8 x i32> [ %i.yg, %.lr.ph2255.i ], [ %i.xj, %._crit_edge2243.i ]
  %i.xu = load double, ptr %.212292252.i, align 1, !tbaa !17
  %i.xv = insertelement <2 x double> poison, double %i.xu, i64 0
  %i.xw = load <16 x i8>, ptr %.211812253.i, align 1, !tbaa !17
  %i.xx = bitcast <2 x double> %i.xv to <16 x i8>
  %i.xy = shufflevector <16 x i8> %i.xx, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.xz = sext <16 x i8> %i.xy to <16 x i16>      ; 3 uses
  %i.ya = sext <16 x i8> %i.xw to <16 x i16>      ; 3 uses
  %i.yb = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.xq, <16 x i16> %i.xz, <16 x i16> %i.ya) ; 2 uses
  %i.yc = shufflevector <16 x i16> %i.xz, <16 x i16> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.yd = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.xr, <16 x i16> %i.yc, <16 x i16> %i.ya) ; 2 uses
  %i.ye = shufflevector <16 x i16> %i.ya, <16 x i16> poison, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9> ; 2 uses
  %i.yf = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.xs, <16 x i16> %i.xz, <16 x i16> %i.ye) ; 2 uses
  %i.yg = tail call <8 x i32> @llvm.x86.avx512.vpdpwssd.256(<8 x i32> %i.xt, <16 x i16> %i.yc, <16 x i16> %i.ye) ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.212292252.i, i64 8 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.211812253.i, i64 16 ; 2 uses
  %i.yj = add nuw nsw i32 %.112322251.i, 2        ; 3 uses
  %i.yk = or disjoint i32 %i.yj, 1
  %i.yl = icmp slt i32 %i.yk, %8
  br i1 %i.yl, label %.lr.ph2255.i, label %.preheader1963.i, !llvm.loop !335

.lr.ph2266.i:                                     ; preds = %.preheader1963.i, %.lr.ph2266.i
  %.311822265.i = phi ptr [ %i.zm, %.lr.ph2266.i ], [ %.21181.lcssa.i, %.preheader1963.i ] ; 2 uses
  %.312302264.i = phi ptr [ %i.zl, %.lr.ph2266.i ], [ %.21229.lcssa.i, %.preheader1963.i ] ; 2 uses
  %.212332263.i = phi i32 [ %i.zn, %.lr.ph2266.i ], [ %.11232.lcssa.i, %.preheader1963.i ]
  %i.ym = phi <8 x i32> [ %i.zh, %.lr.ph2266.i ], [ %.lcssa1998.i, %.preheader1963.i ]
  %i.yn = phi <8 x i32> [ %i.zi, %.lr.ph2266.i ], [ %.lcssa1999.i, %.preheader1963.i ]
  %i.yo = phi <8 x i32> [ %i.zj, %.lr.ph2266.i ], [ %.lcssa2000.i, %.preheader1963.i ]
  %i.yp = phi <8 x i32> [ %i.zk, %.lr.ph2266.i ], [ %.lcssa2001.i, %.preheader1963.i ]
  %i.yq = load float, ptr %.312302264.i, align 1, !tbaa !17
  %i.yr = insertelement <4 x float> poison, float %i.yq, i64 0
  %i.ys = load <8 x i8>, ptr %.311822265.i, align 1, !tbaa !17
  %i.yt = bitcast <4 x float> %i.yr to <16 x i8>
  %i.yu = shufflevector <16 x i8> %i.yt, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yv = sext <8 x i8> %i.yu to <8 x i16>        ; 3 uses
  %i.yw = sext <8 x i8> %i.ys to <8 x i16>        ; 3 uses
  %i.yx = shufflevector <8 x i16> %i.yw, <8 x i16> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.yy = mul nsw <8 x i16> %i.yv, %i.yw
  %i.yz = sext <8 x i16> %i.yy to <8 x i32>
  %i.za = shufflevector <8 x i16> %i.yv, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.zb = mul nsw <8 x i16> %i.za, %i.yw
  %i.zc = sext <8 x i16> %i.zb to <8 x i32>
  %i.zd = mul nsw <8 x i16> %i.yx, %i.yv
  %i.ze = sext <8 x i16> %i.zd to <8 x i32>
  %i.zf = mul nsw <8 x i16> %i.yx, %i.za
  %i.zg = sext <8 x i16> %i.zf to <8 x i32>
end_hunk_6
begin_hunk_7_@_ZN4ncnn36gemm_transB_packed_tile_int8_avxvnniERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.aiv = getelementptr inbounds nuw i8, ptr %.012922359.i, i64 48
  %i.aiw = getelementptr inbounds nuw i8, ptr %.1311922360.i, i64 12
  %i.aix = load <16 x i8>, ptr %i.aiv, align 1, !tbaa !17
  %i.aiy = load float, ptr %i.aiw, align 1, !tbaa !17
  %i.aiz = insertelement <4 x float> poison, float %i.aiy, i64 0
  %i.aja = bitcast <4 x float> %i.aiz to <16 x i8>
  %i.ajb = shufflevector <16 x i8> %i.aja, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ajc = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.aiu, <16 x i8> %i.ajb, <16 x i8> %i.aix) ; 3 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %.012922359.i, i64 64 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %.1311922360.i, i64 16 ; 2 uses
  %niter2008.next.3 = add nuw nsw i32 %niter2008, 4 ; 2 uses
  %niter2008.ncmp.3.not = icmp eq i32 %niter2008.next.3, %unroll_iter2007
  br i1 %niter2008.ncmp.3.not, label %.unr-lcssa1998, label %.lr.ph2362.i, !llvm.loop !346

.unr-lcssa1998:                                   ; preds = %.lr.ph2362.i
  br i1 %lcmp.mod2003.not, label %.epilog-lcssa2004, label %.lr.ph2362.i.epil.preheader

.lr.ph2362.i.epil.preheader:                      ; preds = %.unr-lcssa1998, %.lr.ph2362.i.preheader
  %.1311922360.i.epil.init = phi ptr [ %.1211912385.i, %.lr.ph2362.i.preheader ], [ %i.aje, %.unr-lcssa1998 ]
  %.012922359.i.epil.init = phi ptr [ %.22392.i, %.lr.ph2362.i.preheader ], [ %i.ajd, %.unr-lcssa1998 ]
  %.epil.init2002 = phi <4 x i32> [ %i.ahx, %.lr.ph2362.i.preheader ], [ %i.ajc, %.unr-lcssa1998 ]
  tail call void @llvm.assume(i1 %lcmp.mod2006)
  br label %.lr.ph2362.i.epil

.lr.ph2362.i.epil:                                ; preds = %.lr.ph2362.i.epil, %.lr.ph2362.i.epil.preheader
  %.1311922360.i.epil = phi ptr [ %i.ajn, %.lr.ph2362.i.epil ], [ %.1311922360.i.epil.init, %.lr.ph2362.i.epil.preheader ] ; 2 uses
  %.012922359.i.epil = phi ptr [ %i.ajm, %.lr.ph2362.i.epil ], [ %.012922359.i.epil.init, %.lr.ph2362.i.epil.preheader ] ; 2 uses
  %i.ajf = phi <4 x i32> [ %i.ajl, %.lr.ph2362.i.epil ], [ %.epil.init2002, %.lr.ph2362.i.epil.preheader ]
  %epil.iter2000 = phi i32 [ %epil.iter2000.next, %.lr.ph2362.i.epil ], [ 0, %.lr.ph2362.i.epil.preheader ]
  %i.ajg = load <16 x i8>, ptr %.012922359.i.epil, align 1, !tbaa !17
  %i.ajh = load float, ptr %.1311922360.i.epil, align 1, !tbaa !17
  %i.aji = insertelement <4 x float> poison, float %i.ajh, i64 0
  %i.ajj = bitcast <4 x float> %i.aji to <16 x i8>
  %i.ajk = shufflevector <16 x i8> %i.ajj, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ajl = tail call <4 x i32> @llvm.x86.avx512.vpdpbusd.128(<4 x i32> %i.ajf, <16 x i8> %i.ajk, <16 x i8> %i.ajg) ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %.012922359.i.epil, i64 16
  %i.ajn = getelementptr inbounds nuw i8, ptr %.1311922360.i.epil, i64 4
  %epil.iter2000.next = add i32 %epil.iter2000, 1 ; 2 uses
  %epil.iter2000.cmp.not = icmp eq i32 %epil.iter2000.next, %xtraiter1999
  br i1 %epil.iter2000.cmp.not, label %.epilog-lcssa2004, label %.lr.ph2362.i.epil, !llvm.loop !347

.epilog-lcssa2004:                                ; preds = %.lr.ph2362.i.epil, %.unr-lcssa1998
  %.lcssa1866 = phi <4 x i32> [ %i.ajc, %.unr-lcssa1998 ], [ %i.ajl, %.lr.ph2362.i.epil ]
  %i.ajo = getelementptr i8, ptr %.1211912385.i, i64 %i.as
  %scevgep3041.i = getelementptr i8, ptr %i.ajo, i64 4
  %i.ajp = load <4 x i32>, ptr %indvars.iv.i, align 1, !tbaa !17
  %i.ajq = sub <4 x i32> %.lcssa1866, %i.ajp
  br label %._crit_edge2363.i

._crit_edge2363.i:                                ; preds = %.epilog-lcssa2004, %bb.y
  %.131192.lcssa3203.i = phi ptr [ %scevgep3041.i, %.epilog-lcssa2004 ], [ %.1211912385.i, %bb.y ] ; 2 uses
  %.01296.lcssa3200.i = phi i32 [ %i.al, %.epilog-lcssa2004 ], [ 0, %bb.y ] ; 3 uses
  %i.ajr = phi <4 x i32> [ %i.ajq, %.epilog-lcssa2004 ], [ %i.ahx, %bb.y ] ; 2 uses
  %.11293.i = phi ptr [ %i.aen, %.epilog-lcssa2004 ], [ %.22392.i, %bb.y ] ; 2 uses
  %i.ajs = or disjoint i32 %.01296.lcssa3200.i, 1
  %i.ajt = icmp slt i32 %i.ajs, %8
  br i1 %i.ajt, label %.lr.ph2372.i, label %.preheader1960.i

.preheader1960.i:                                 ; preds = %.lr.ph2372.i, %._crit_edge2363.i
  %.lcssa2025.i = phi <4 x i32> [ %i.ajr, %._crit_edge2363.i ], [ %i.akt, %.lr.ph2372.i ] ; 3 uses
  %.11297.lcssa.i = phi i32 [ %.01296.lcssa3200.i, %._crit_edge2363.i ], [ %i.akw, %.lr.ph2372.i ] ; 5 uses
  %.21294.lcssa.i = phi ptr [ %.11293.i, %._crit_edge2363.i ], [ %i.aku, %.lr.ph2372.i ] ; 3 uses
  %.141193.lcssa.i = phi ptr [ %.131192.lcssa3203.i, %._crit_edge2363.i ], [ %i.akv, %.lr.ph2372.i ] ; 4 uses
  %i.aju = icmp slt i32 %.11297.lcssa.i, %8
  br i1 %i.aju, label %.lr.ph2380.i.preheader, label %._crit_edge2381.i

.lr.ph2380.i.preheader:                           ; preds = %.preheader1960.i
  %i.ajv = sub i32 %8, %.11297.lcssa.i
  %.neg2079 = add i32 %.11297.lcssa.i, 1
  %xtraiter2009 = and i32 %i.ajv, 1
  %lcmp.mod2010.not = icmp eq i32 %xtraiter2009, 0
  br i1 %lcmp.mod2010.not, label %.lr.ph2380.i.prol.loopexit, label %.lr.ph2380.i.prol

.lr.ph2380.i.prol:                                ; preds = %.lr.ph2380.i.preheader
  %i.ajw = load <8 x i8>, ptr %.21294.lcssa.i, align 1, !tbaa !17
  %i.ajx = load i8, ptr %.141193.lcssa.i, align 1, !tbaa !17
  %i.ajy = sext i8 %i.ajx to i16
  %i.ajz = insertelement <8 x i16> poison, i16 %i.ajy, i64 0
  %i.aka = shufflevector <8 x i16> %i.ajz, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.akb = sext <8 x i8> %i.ajw to <8 x i16>      ; 2 uses
  %i.akc = mul <8 x i16> %i.aka, %i.akb
  %i.akd = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.akb, <8 x i16> %i.aka)
  %i.ake = shufflevector <8 x i16> %i.akc, <8 x i16> %i.akd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.akf = bitcast <8 x i16> %i.ake to <4 x i32>
  %i.akg = add <4 x i32> %.lcssa2025.i, %i.akf    ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %.21294.lcssa.i, i64 4
  %i.aki = getelementptr inbounds nuw i8, ptr %.141193.lcssa.i, i64 1 ; 2 uses
  %i.akj = add nuw nsw i32 %.11297.lcssa.i, 1
  br label %.lr.ph2380.i.prol.loopexit

.lr.ph2380.i.prol.loopexit:                       ; preds = %.lr.ph2380.i.prol, %.lr.ph2380.i.preheader
  %.lcssa1872.unr = phi <4 x i32> [ poison, %.lr.ph2380.i.preheader ], [ %i.akg, %.lr.ph2380.i.prol ]
  %.lcssa1871.unr = phi ptr [ poison, %.lr.ph2380.i.preheader ], [ %i.aki, %.lr.ph2380.i.prol ]
  %.1511942379.i.unr = phi ptr [ %.141193.lcssa.i, %.lr.ph2380.i.preheader ], [ %i.aki, %.lr.ph2380.i.prol ]
  %.312952378.i.unr = phi ptr [ %.21294.lcssa.i, %.lr.ph2380.i.preheader ], [ %i.akh, %.lr.ph2380.i.prol ]
  %.212982377.i.unr = phi i32 [ %.11297.lcssa.i, %.lr.ph2380.i.preheader ], [ %i.akj, %.lr.ph2380.i.prol ]
  %.unr2011 = phi <4 x i32> [ %.lcssa2025.i, %.lr.ph2380.i.preheader ], [ %i.akg, %.lr.ph2380.i.prol ]
  %i.akk = icmp eq i32 %8, %.neg2079
  br i1 %i.akk, label %._crit_edge2381.i, label %.lr.ph2380.i

.lr.ph2372.i:                                     ; preds = %._crit_edge2363.i, %.lr.ph2372.i
  %.1411932370.i = phi ptr [ %i.akv, %.lr.ph2372.i ], [ %.131192.lcssa3203.i, %._crit_edge2363.i ] ; 2 uses
  %.212942369.i = phi ptr [ %i.aku, %.lr.ph2372.i ], [ %.11293.i, %._crit_edge2363.i ] ; 2 uses
  %.112972368.i = phi i32 [ %i.akw, %.lr.ph2372.i ], [ %.01296.lcssa3200.i, %._crit_edge2363.i ]
  %i.akl = phi <4 x i32> [ %i.akt, %.lr.ph2372.i ], [ %i.ajr, %._crit_edge2363.i ]
  %i.akm = load <8 x i8>, ptr %.212942369.i, align 1, !tbaa !17
  %i.akn = load i16, ptr %.1411932370.i, align 2, !tbaa !323
  %i.ako = insertelement <8 x i16> poison, i16 %i.akn, i64 0
  %i.akp = sext <8 x i8> %i.akm to <8 x i16>
  %i.akq = bitcast <8 x i16> %i.ako to <16 x i8>
  %i.akr = shufflevector <16 x i8> %i.akq, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aks = sext <8 x i8> %i.akr to <8 x i16>
  %i.akt = tail call <4 x i32> @llvm.x86.avx512.vpdpwssd.128(<4 x i32> %i.akl, <8 x i16> %i.akp, <8 x i16> %i.aks) ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %.212942369.i, i64 8 ; 2 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %.1411932370.i, i64 2 ; 2 uses
  %i.akw = add nuw nsw i32 %.112972368.i, 2       ; 3 uses
  %i.akx = or disjoint i32 %i.akw, 1
  %i.aky = icmp slt i32 %i.akx, %8
  br i1 %i.aky, label %.lr.ph2372.i, label %.preheader1960.i, !llvm.loop !348

.lr.ph2380.i:                                     ; preds = %.lr.ph2380.i.prol.loopexit, %.lr.ph2380.i
  %.1511942379.i = phi ptr [ %i.alz, %.lr.ph2380.i ], [ %.1511942379.i.unr, %.lr.ph2380.i.prol.loopexit ] ; 3 uses
  %.312952378.i = phi ptr [ %i.aly, %.lr.ph2380.i ], [ %.312952378.i.unr, %.lr.ph2380.i.prol.loopexit ] ; 3 uses
  %.212982377.i = phi i32 [ %i.ama, %.lr.ph2380.i ], [ %.212982377.i.unr, %.lr.ph2380.i.prol.loopexit ]
  %i.akz = phi <4 x i32> [ %i.alx, %.lr.ph2380.i ], [ %.unr2011, %.lr.ph2380.i.prol.loopexit ]
  %i.ala = load <8 x i8>, ptr %.312952378.i, align 1, !tbaa !17
  %i.alb = load i8, ptr %.1511942379.i, align 1, !tbaa !17
  %i.alc = sext i8 %i.alb to i16
  %i.ald = insertelement <8 x i16> poison, i16 %i.alc, i64 0
  %i.ale = shufflevector <8 x i16> %i.ald, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.alf = sext <8 x i8> %i.ala to <8 x i16>      ; 2 uses
  %i.alg = mul <8 x i16> %i.ale, %i.alf
  %i.alh = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.alf, <8 x i16> %i.ale)
  %i.ali = shufflevector <8 x i16> %i.alg, <8 x i16> %i.alh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.alj = bitcast <8 x i16> %i.ali to <4 x i32>
  %i.alk = add <4 x i32> %i.akz, %i.alj
  %i.all = getelementptr inbounds nuw i8, ptr %.312952378.i, i64 4
  %i.alm = getelementptr inbounds nuw i8, ptr %.1511942379.i, i64 1
  %i.aln = load <8 x i8>, ptr %i.all, align 1, !tbaa !17
  %i.alo = load i8, ptr %i.alm, align 1, !tbaa !17
  %i.alp = sext i8 %i.alo to i16
  %i.alq = insertelement <8 x i16> poison, i16 %i.alp, i64 0
  %i.alr = shufflevector <8 x i16> %i.alq, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.als = sext <8 x i8> %i.aln to <8 x i16>      ; 2 uses
  %i.alt = mul <8 x i16> %i.alr, %i.als
  %i.alu = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.als, <8 x i16> %i.alr)
  %i.alv = shufflevector <8 x i16> %i.alt, <8 x i16> %i.alu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.alw = bitcast <8 x i16> %i.alv to <4 x i32>
  %i.alx = add <4 x i32> %i.alk, %i.alw           ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.312952378.i, i64 8
  %i.alz = getelementptr inbounds nuw i8, ptr %.1511942379.i, i64 2 ; 2 uses
  %i.ama = add nuw nsw i32 %.212982377.i, 2       ; 2 uses
  %exitcond3042.not.i.1 = icmp eq i32 %i.ama, %8
  br i1 %exitcond3042.not.i.1, label %._crit_edge2381.i, label %.lr.ph2380.i, !llvm.loop !349

._crit_edge2381.i:                                ; preds = %.lr.ph2380.i.prol.loopexit, %.lr.ph2380.i, %.preheader1960.i
  %.lcssa2026.i = phi <4 x i32> [ %.lcssa2025.i, %.preheader1960.i ], [ %.lcssa1872.unr, %.lr.ph2380.i.prol.loopexit ], [ %i.alx, %.lr.ph2380.i ]
  %.151194.lcssa.i = phi ptr [ %.141193.lcssa.i, %.preheader1960.i ], [ %.lcssa1871.unr, %.lr.ph2380.i.prol.loopexit ], [ %i.alz, %.lr.ph2380.i ]
  store <4 x i32> %.lcssa2026.i, ptr %.92386.i, align 16, !tbaa !17
  %i.amb = getelementptr inbounds nuw i8, ptr %.92386.i, i64 16 ; 2 uses
  %i.amc = add nuw nsw i32 %.311982384.i, 1       ; 2 uses
  %exitcond3043.not.i = icmp eq i32 %i.amc, %6
  br i1 %exitcond3043.not.i, label %._crit_edge2388.i, label %.lr.ph2387.i, !llvm.loop !350

._crit_edge2388.i:                                ; preds = %._crit_edge2381.i, %.preheader1964.i
  %.9.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader1964.i ], [ %i.amb, %._crit_edge2381.i ] ; 2 uses
  %i.amd = getelementptr inbounds i8, ptr %.22392.i, i64 %i.ai
  %spec.select1374.i = getelementptr inbounds nuw i8, ptr %i.amd, i64 %spec.select1374.idx.i ; 2 uses
  %i.ame = add nuw nsw i32 %.111212390.i, 4       ; 3 uses
  %i.amf = or disjoint i32 %i.ame, 3
  %i.amg = icmp slt i32 %i.amf, %4
  %i.amh = getelementptr i8, ptr %indvars.iv.i, i64 %spec.select1374.idx.i
  %scevgep3038.i = getelementptr i8, ptr %i.amh, i64 %i.ai
  %i.ami = getelementptr i8, ptr %indvars.iv501, i64 %spec.select1374.idx.i
  %scevgep502 = getelementptr i8, ptr %i.ami, i64 %i.ai
  br i1 %i.amg, label %.preheader1967.i, label %.preheader1959.i, !llvm.loop !351

.preheader1958.i:                                 ; preds = %._crit_edge2561.i, %.preheader1958.lr.ph.i
  %indvars.iv505 = phi ptr [ %scevgep506, %._crit_edge2561.i ], [ %scevgep504, %.preheader1958.lr.ph.i ] ; 3 uses
  %indvars.iv3050.i = phi ptr [ %scevgep3051.i, %._crit_edge2561.i ], [ %scevgep3049.i, %.preheader1958.lr.ph.i ] ; 5 uses
  %.42565.i = phi ptr [ %spec.select1375.i, %._crit_edge2561.i ], [ %.2.lcssa.i, %.preheader1958.lr.ph.i ] ; 42 uses
  %.102564.i = phi ptr [ %.14.lcssa.i, %._crit_edge2561.i ], [ %.51098.lcssa.i, %.preheader1958.lr.ph.i ] ; 2 uses
  %.211222563.i = phi i32 [ %i.czc, %._crit_edge2561.i ], [ %.11121.lcssa.i, %.preheader1958.lr.ph.i ]
  br i1 %i.uh, label %.lr.ph2428.i, label %.preheader1957.i

.preheader1950.i:                                 ; preds = %._crit_edge2561.i, %.preheader1959.i
  %.21122.lcssa.i = phi i32 [ %.11121.lcssa.i, %.preheader1959.i ], [ %i.czc, %._crit_edge2561.i ] ; 2 uses
  %.10.lcssa.i = phi ptr [ %.51098.lcssa.i, %.preheader1959.i ], [ %.14.lcssa.i, %._crit_edge2561.i ]
  %.4.lcssa.i = phi ptr [ %.2.lcssa.i, %.preheader1959.i ], [ %spec.select1375.i, %._crit_edge2561.i ] ; 3 uses
  %i.amj = icmp slt i32 %.21122.lcssa.i, %4
  br i1 %i.amj, label %.preheader1949.lr.ph.i, label %_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiii.exit

.preheader1949.lr.ph.i:                           ; preds = %.preheader1950.i
  %i.amk = icmp sgt i32 %6, 7
  %i.aml = icmp eq i32 %7, 0                      ; 4 uses
  %i.amm = icmp sgt i32 %8, 3                     ; 5 uses
  %i.amn = sext i32 %8 to i64                     ; 2 uses
  %spec.select1376.idx.i = select i1 %i.amm, i64 4, i64 0 ; 2 uses
  %i.amo = add i32 %8, -4                         ; 5 uses
  %i.amp = and i32 %i.amo, -4
  %i.amq = add i32 %i.amp, 4                      ; 4 uses
  %i.amr = and i32 %6, -8
  %i.ams = zext i32 %i.amo to i64                 ; 4 uses
  %i.amt = lshr i64 %i.ams, 2                     ; 4 uses
  %i.amu = shl nuw nsw i64 %i.amt, 4
  %i.amv = shl nuw nsw i64 %i.amt, 3
  %i.amw = and i64 %i.ams, 4294967292
  %i.amx = shl nuw nsw i64 %i.amt, 5
  %i.amy = and i64 %i.ams, 4294967292             ; 2 uses
  %scevgep508 = getelementptr i8, ptr %.4.lcssa.i, i64 %i.amy
  %i.amz = add nsw i64 %spec.select1376.idx.i, %i.amn ; 2 uses
  %i.ana = getelementptr i8, ptr %.4.lcssa.i, i64 %i.amy
  %scevgep511 = getelementptr i8, ptr %i.ana, i64 4
  %i.anb = add i32 %8, -2
  %i.anc = add nuw nsw i64 %i.amt, 1              ; 5 uses
  %i.and = add i32 %8, -4                         ; 3 uses
  %i.ane = lshr i32 %i.and, 2
  %i.anf = add nuw nsw i32 %i.ane, 1              ; 4 uses
  %xtraiter2048 = and i32 %i.anf, 3               ; 3 uses
  %i.ang = icmp ult i32 %i.and, 12
  %unroll_iter2058 = and i32 %i.anf, 2147483644
  %lcmp.mod2052.not = icmp eq i32 %xtraiter2048, 0
  %lcmp.mod2057 = icmp ne i32 %xtraiter2048, 0
  %xtraiter2064 = and i32 %i.anf, 3               ; 3 uses
  %i.anh = icmp ult i32 %i.and, 12
  %unroll_iter2073 = and i32 %i.anf, 2147483644
  %lcmp.mod2068.not = icmp eq i32 %xtraiter2064, 0
  %lcmp.mod2072 = icmp ne i32 %xtraiter2064, 0
  %min.iters.check1558 = icmp ult i32 %i.amo, 12
  %min.iters.check1560 = icmp ult i32 %i.amo, 60
  %i.ani = and i64 %i.anc, 12
  %n.vec1562 = and i64 %i.anc, 2147483632         ; 6 uses
  %i.anj = trunc nuw nsw i64 %n.vec1562 to i32
  %i.ank = shl i32 %i.anj, 2
  %i.anl = shl nuw nsw i64 %n.vec1562, 2
  %i.anm = shl nuw nsw i64 %n.vec1562, 3
  %cmp.n1601 = icmp eq i64 %i.anc, %n.vec1562
  %min.epilog.iters.check1611 = icmp eq i64 %i.ani, 0
  %n.vec1613 = and i64 %i.anc, 2147483644         ; 5 uses
  %i.ann = trunc nuw nsw i64 %n.vec1613 to i32
  %i.ano = shl i32 %i.ann, 2
  %i.anp = shl nuw nsw i64 %n.vec1613, 2
  %i.anq = shl nuw nsw i64 %n.vec1613, 3
  %cmp.n1630 = icmp eq i64 %i.anc, %n.vec1613
  %i.anr = lshr i64 %i.ams, 2
  %i.ans = add nuw nsw i64 %i.anr, 1              ; 2 uses
  %min.iters.check1361 = icmp ult i32 %i.amo, 28
  %n.vec1363 = and i64 %i.ans, 2147483640         ; 4 uses
  %i.ant = trunc nuw nsw i64 %n.vec1363 to i32
  %i.anu = shl i32 %i.ant, 2
  %i.anv = shl nuw nsw i64 %n.vec1363, 2          ; 2 uses
  %cmp.n1381 = icmp eq i64 %i.ans, %n.vec1363
  br label %.preheader1949.i

.preheader1957.i:                                 ; preds = %._crit_edge2421.i, %.preheader1958.i
  %.01315.lcssa.i = phi i32 [ 0, %.preheader1958.i ], [ %i.up, %._crit_edge2421.i ] ; 3 uses
  %.01299.lcssa.i = phi ptr [ %i.c, %.preheader1958.i ], [ %.31302.lcssa.i, %._crit_edge2421.i ] ; 2 uses
  %.11.lcssa.i = phi ptr [ %.102564.i, %.preheader1958.i ], [ %i.asu, %._crit_edge2421.i ] ; 2 uses
  %i.anw = or disjoint i32 %.01315.lcssa.i, 3
  %i.anx = icmp slt i32 %i.anw, %6
  br i1 %i.anx, label %.lr.ph2464.i.preheader, label %.preheader1956.i

.lr.ph2464.i.preheader:                           ; preds = %.preheader1957.i
  %i.any = getelementptr inbounds nuw i8, ptr %indvars.iv505, i64 16
  br label %.lr.ph2464.i

.lr.ph2428.i:                                     ; preds = %.preheader1958.i, %._crit_edge2421.i
  %.112427.i = phi ptr [ %i.asu, %._crit_edge2421.i ], [ %.102564.i, %.preheader1958.i ] ; 5 uses
  %.012992426.i = phi ptr [ %.31302.lcssa.i, %._crit_edge2421.i ], [ %i.c, %.preheader1958.i ] ; 4 uses
  %.013152425.i = phi i32 [ %i.asv, %._crit_edge2421.i ], [ 0, %.preheader1958.i ]
  br i1 %i.ui, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph2428.i
  %i.anz = load <8 x i32>, ptr %.112427.i, align 1, !tbaa !17
  %i.aoa = getelementptr inbounds nuw i8, ptr %.112427.i, i64 32
  %i.aob = load <8 x i32>, ptr %i.aoa, align 1, !tbaa !17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph2428.i
  %i.aoc = phi <8 x i32> [ %i.anz, %bb.z ], [ zeroinitializer, %.lr.ph2428.i ] ; 3 uses
  %i.aod = phi <8 x i32> [ %i.aob, %bb.z ], [ zeroinitializer, %.lr.ph2428.i ] ; 3 uses
  br i1 %i.uj, label %.lr.ph2400.i.preheader, label %._crit_edge2401.i

.lr.ph2400.i.preheader:                           ; preds = %bb.aa
  br i1 %i.vc, label %.lr.ph2400.i.epil.preheader, label %.lr.ph2400.i

.lr.ph2400.i:                                     ; preds = %.lr.ph2400.i.preheader, %.lr.ph2400.i
  %.113002398.i = phi ptr [ %i.aoz, %.lr.ph2400.i ], [ %.012992426.i, %.lr.ph2400.i.preheader ] ; 3 uses
  %.013192397.i = phi ptr [ %i.aoy, %.lr.ph2400.i ], [ %.42565.i, %.lr.ph2400.i.preheader ] ; 4 uses
  %i.aoe = phi <8 x i32> [ %i.aox, %.lr.ph2400.i ], [ %i.aod, %.lr.ph2400.i.preheader ]
  %i.aof = phi <8 x i32> [ %i.aow, %.lr.ph2400.i ], [ %i.aoc, %.lr.ph2400.i.preheader ]
  %niter2027 = phi i32 [ %niter2027.next.1, %.lr.ph2400.i ], [ 0, %.lr.ph2400.i.preheader ]
  %i.aog = load double, ptr %.013192397.i, align 1, !tbaa !17
  %i.aoh = insertelement <4 x double> poison, double %i.aog, i64 0
  %i.aoi = bitcast <4 x double> %i.aoh to <4 x i64>
  %i.aoj = shufflevector <4 x i64> %i.aoi, <4 x i64> poison, <4 x i32> zeroinitializer
  %.cast1352.i = bitcast <4 x i64> %i.aoj to <32 x i8> ; 2 uses
  %i.aok = shufflevector <32 x i8> %.cast1352.i, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.aol = load <32 x i8>, ptr %.113002398.i, align 1, !tbaa !17 ; 2 uses
  %i.aom = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aof, <32 x i8> %i.aol, <32 x i8> %.cast1352.i)
  %i.aon = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aoe, <32 x i8> %i.aol, <32 x i8> %i.aok)
  %i.aoo = getelementptr inbounds nuw i8, ptr %.013192397.i, i64 8
  %i.aop = getelementptr inbounds nuw i8, ptr %.113002398.i, i64 32
  %i.aoq = load double, ptr %i.aoo, align 1, !tbaa !17
  %i.aor = insertelement <4 x double> poison, double %i.aoq, i64 0
  %i.aos = bitcast <4 x double> %i.aor to <4 x i64>
  %i.aot = shufflevector <4 x i64> %i.aos, <4 x i64> poison, <4 x i32> zeroinitializer
  %.cast1352.i.1 = bitcast <4 x i64> %i.aot to <32 x i8> ; 2 uses
  %i.aou = shufflevector <32 x i8> %.cast1352.i.1, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.aov = load <32 x i8>, ptr %i.aop, align 1, !tbaa !17 ; 2 uses
  %i.aow = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aom, <32 x i8> %i.aov, <32 x i8> %.cast1352.i.1) ; 3 uses
  %i.aox = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aon, <32 x i8> %i.aov, <32 x i8> %i.aou) ; 3 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %.013192397.i, i64 16 ; 3 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %.113002398.i, i64 64 ; 2 uses
  %niter2027.next.1 = add i32 %niter2027, 2       ; 2 uses
  %niter2027.ncmp.1.not = icmp eq i32 %niter2027.next.1, %unroll_iter2026
  br i1 %niter2027.ncmp.1.not, label %.unr-lcssa2012, label %.lr.ph2400.i, !llvm.loop !352

.unr-lcssa2012:                                   ; preds = %.lr.ph2400.i
  %i.apa = getelementptr inbounds nuw i8, ptr %.013192397.i, i64 8
  br i1 %lcmp.mod2019.not.not, label %.lr.ph2400.i.epil.preheader, label %bb.ab

.lr.ph2400.i.epil.preheader:                      ; preds = %.unr-lcssa2012, %.lr.ph2400.i.preheader
  %.113002398.i.epil.init = phi ptr [ %.012992426.i, %.lr.ph2400.i.preheader ], [ %i.aoz, %.unr-lcssa2012 ]
  %.013192397.i.epil.init = phi ptr [ %.42565.i, %.lr.ph2400.i.preheader ], [ %i.aoy, %.unr-lcssa2012 ] ; 3 uses
  %.epil.init2016 = phi <8 x i32> [ %i.aod, %.lr.ph2400.i.preheader ], [ %i.aox, %.unr-lcssa2012 ]
  %.epil.init2018 = phi <8 x i32> [ %i.aoc, %.lr.ph2400.i.preheader ], [ %i.aow, %.unr-lcssa2012 ]
  tail call void @llvm.assume(i1 %lcmp.mod2025)
  %i.apb = load double, ptr %.013192397.i.epil.init, align 1, !tbaa !17
  %i.apc = insertelement <4 x double> poison, double %i.apb, i64 0
  %i.apd = bitcast <4 x double> %i.apc to <4 x i64>
  %i.ape = shufflevector <4 x i64> %i.apd, <4 x i64> poison, <4 x i32> zeroinitializer
  %.cast1352.i.epil = bitcast <4 x i64> %i.ape to <32 x i8> ; 2 uses
  %i.apf = shufflevector <32 x i8> %.cast1352.i.epil, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19>
  %i.apg = load <32 x i8>, ptr %.113002398.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.aph = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.epil.init2018, <32 x i8> %i.apg, <32 x i8> %.cast1352.i.epil)
  %i.api = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.epil.init2016, <32 x i8> %i.apg, <32 x i8> %i.apf)
  %i.apj = getelementptr inbounds nuw i8, ptr %.013192397.i.epil.init, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.unr-lcssa2012, %.lr.ph2400.i.epil.preheader
  %.013192397.i.lcssa = phi ptr [ %i.apa, %.unr-lcssa2012 ], [ %.013192397.i.epil.init, %.lr.ph2400.i.epil.preheader ]
  %.lcssa1740 = phi <8 x i32> [ %i.aow, %.unr-lcssa2012 ], [ %i.aph, %.lr.ph2400.i.epil.preheader ]
  %.lcssa1739 = phi <8 x i32> [ %i.aox, %.unr-lcssa2012 ], [ %i.api, %.lr.ph2400.i.epil.preheader ]
  %.lcssa1738 = phi ptr [ %i.aoy, %.unr-lcssa2012 ], [ %i.apj, %.lr.ph2400.i.epil.preheader ]
  %i.apk = getelementptr i8, ptr %.012992426.i, i64 %i.uw
  %scevgep503 = getelementptr i8, ptr %i.apk, i64 32
  %i.apl = load double, ptr %.lcssa1738, align 1, !tbaa !17
  %i.apm = insertelement <4 x double> poison, double %i.apl, i64 0
  %i.apn = bitcast <4 x double> %i.apm to <4 x i64>
  %i.apo = shufflevector <4 x i64> %i.apn, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.app = bitcast <4 x i64> %i.apo to <8 x i32>
  %i.apq = sub <8 x i32> %.lcssa1740, %i.app
  %i.apr = bitcast <4 x i64> %i.apo to <8 x i32>
  %i.aps = shufflevector <8 x i32> %i.apr, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.apt = sub <8 x i32> %.lcssa1739, %i.aps
  %i.apu = getelementptr inbounds nuw i8, ptr %.013192397.i.lcssa, i64 16
  br label %._crit_edge2401.i

._crit_edge2401.i:                                ; preds = %bb.ab, %bb.aa
  %.11300.lcssa3215.i = phi ptr [ %scevgep503, %bb.ab ], [ %.012992426.i, %bb.aa ] ; 2 uses
  %.01323.lcssa3212.i = phi i32 [ %i.uo, %bb.ab ], [ 0, %bb.aa ] ; 3 uses
  %i.apv = phi <8 x i32> [ %i.apq, %bb.ab ], [ %i.aoc, %bb.aa ] ; 2 uses
  %i.apw = phi <8 x i32> [ %i.apt, %bb.ab ], [ %i.aod, %bb.aa ] ; 2 uses
  %.11320.i = phi ptr [ %i.apu, %bb.ab ], [ %.42565.i, %bb.aa ] ; 2 uses
  %i.apx = or disjoint i32 %.01323.lcssa3212.i, 1
  %i.apy = icmp slt i32 %i.apx, %8
  br i1 %i.apy, label %.lr.ph2411.i, label %.preheader1954.i

.preheader1954.i:                                 ; preds = %.lr.ph2411.i, %._crit_edge2401.i
  %.lcssa1985.i = phi <8 x i32> [ %i.apv, %._crit_edge2401.i ], [ %i.arc, %.lr.ph2411.i ] ; 3 uses
  %.lcssa1984.i = phi <8 x i32> [ %i.apw, %._crit_edge2401.i ], [ %i.are, %.lr.ph2411.i ] ; 3 uses
  %.11324.lcssa.i = phi i32 [ %.01323.lcssa3212.i, %._crit_edge2401.i ], [ %i.arh, %.lr.ph2411.i ] ; 5 uses
  %.21321.lcssa.i = phi ptr [ %.11320.i, %._crit_edge2401.i ], [ %i.arf, %.lr.ph2411.i ] ; 3 uses
  %.21301.lcssa.i = phi ptr [ %.11300.lcssa3215.i, %._crit_edge2401.i ], [ %i.arg, %.lr.ph2411.i ] ; 4 uses
  %i.apz = icmp slt i32 %.11324.lcssa.i, %8
  br i1 %i.apz, label %.lr.ph2420.i.preheader, label %._crit_edge2421.i

.lr.ph2420.i.preheader:                           ; preds = %.preheader1954.i
  %i.aqa = sub i32 %8, %.11324.lcssa.i
  %.neg2080 = add i32 %.11324.lcssa.i, 1
  %xtraiter2028 = and i32 %i.aqa, 1
  %lcmp.mod2029.not = icmp eq i32 %xtraiter2028, 0
  br i1 %lcmp.mod2029.not, label %.lr.ph2420.i.prol.loopexit, label %.lr.ph2420.i.prol

.lr.ph2420.i.prol:                                ; preds = %.lr.ph2420.i.preheader
  %i.aqb = load i16, ptr %.21321.lcssa.i, align 2, !tbaa !323
  %i.aqc = insertelement <8 x i16> poison, i16 %i.aqb, i64 0
  %i.aqd = load <8 x i8>, ptr %.21301.lcssa.i, align 1, !tbaa !17
  %i.aqe = bitcast <8 x i16> %i.aqc to <16 x i8>
  %i.aqf = shufflevector <16 x i8> %i.aqe, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aqg = sext <8 x i8> %i.aqf to <8 x i16>      ; 2 uses
  %i.aqh = sext <8 x i8> %i.aqd to <8 x i16>      ; 2 uses
  %i.aqi = shufflevector <8 x i16> %i.aqg, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.aqj = mul nsw <8 x i16> %i.aqg, %i.aqh
  %i.aqk = sext <8 x i16> %i.aqj to <8 x i32>
  %i.aql = mul nsw <8 x i16> %i.aqi, %i.aqh
  %i.aqm = sext <8 x i16> %i.aql to <8 x i32>
  %i.aqn = add <8 x i32> %.lcssa1985.i, %i.aqk    ; 2 uses
  %i.aqo = add <8 x i32> %.lcssa1984.i, %i.aqm    ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %.21321.lcssa.i, i64 2
end_hunk_7
