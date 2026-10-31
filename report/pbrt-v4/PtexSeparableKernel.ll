Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexSeparableKernel?download=true
inline.NumInlined: 343
inline.NumDeleted: 83
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4Ptex4v2_412_GLOBAL__N_16ApplyNINS0_8PtexHalfEEEvRNS0_19PtexSeparableKernelEPfPvii:bb.a
.lr.ph.i.us:                                      ; preds = %.lr.ph.preheader.i.us, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.1, %.lr.ph.i.us ], [ 0, %.lr.ph.preheader.i.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.us ], [ 0, %.lr.ph.preheader.i.us ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.04063.us, i64 %indvars.iv.i.us
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !30
  %i.am = zext i16 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !31
  %i.ap = fmul float %i.aj, %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.us
  store float %i.ap, ptr %i.aq, align 8, !tbaa !21
  %indvars.iv.next.i.us = or disjoint i64 %indvars.iv.i.us, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.04063.us, i64 %indvars.iv.next.i.us
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !30
  %i.at = zext i16 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !31
  %i.aw = fmul float %i.aj, %i.av
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i.us
  store float %i.aw, ptr %i.ax, align 4, !tbaa !21
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4Ptex4v2_49PtexUtils8VecMultNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !59

_ZN4Ptex4v2_49PtexUtils8VecMultNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us.unr-lcssa: ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod.not, label %_ZN4Ptex4v2_49PtexUtils8VecMultNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %_ZN4Ptex4v2_49PtexUtils8VecMultNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us.unr-lcssa, %.lr.ph.preheader.i.us
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us.1, %_ZN4Ptex4v2_49PtexUtils8VecMultNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.04063.us, i64 %indvars.iv.i.us.epil.init
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !30
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !31
  %i.bd = fmul float %i.aj, %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.us.epil.init
  store float %i.bd, ptr %i.be, align 4, !tbaa !21
  br label %_ZN4Ptex4v2_49PtexUtils8VecMultNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us

_ZN4Ptex4v2_49PtexUtils8VecMultNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us: ; preds = %_ZN4Ptex4v2_49PtexUtils8VecMultNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us.unr-lcssa, %.lr.ph.i.us.epil.preheader
  %i.bf = getelementptr inbounds [2 x i8], ptr %.04063.us, i64 %i.aa
  br i1 %.not4258.us, label %.lr.ph.preheader.i49.us, label %.lr.ph.preheader.i43.us.us.preheader

.lr.ph.preheader.i43.us.us.preheader:             ; preds = %_ZN4Ptex4v2_49PtexUtils8VecMultNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us
  %.157.us = getelementptr inbounds [2 x i8], ptr %.04063.us, i64 %i.ac
  br label %.lr.ph.preheader.i43.us.us

.lr.ph.preheader.i43.us.us:                       ; preds = %.lr.ph.preheader.i43.us.us.preheader, %_ZN4Ptex4v2_49PtexUtils9VecAccumNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us.us
  %.160.us.us = phi ptr [ %.1.us.us, %_ZN4Ptex4v2_49PtexUtils9VecAccumNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us.us ], [ %.157.us, %.lr.ph.preheader.i43.us.us.preheader ] ; 5 uses
  %.pn59.us.us = phi ptr [ %.0.us.us, %_ZN4Ptex4v2_49PtexUtils9VecAccumNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us.us ], [ %i.z, %.lr.ph.preheader.i43.us.us.preheader ]
  %.0.us.us = getelementptr inbounds nuw i8, ptr %.pn59.us.us, i64 4 ; 2 uses
  %i.bg = load float, ptr %.0.us.us, align 4, !tbaa !21 ; 3 uses
  br i1 %i.ai, label %.lr.ph.i45.us.us.epil.preheader, label %.lr.ph.i45.us.us

.lr.ph.i45.us.us:                                 ; preds = %.lr.ph.preheader.i43.us.us, %.lr.ph.i45.us.us
  %indvars.iv.i46.us.us = phi i64 [ %indvars.iv.next.i47.us.us.1, %.lr.ph.i45.us.us ], [ 0, %.lr.ph.preheader.i43.us.us ] ; 4 uses
  %niter76 = phi i64 [ %niter76.next.1, %.lr.ph.i45.us.us ], [ 0, %.lr.ph.preheader.i43.us.us ]
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.160.us.us, i64 %indvars.iv.i46.us.us
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !30
  %i.bj = zext i16 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !31
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i46.us.us ; 2 uses
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !21
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bg, float %i.bn)
  store float %i.bo, ptr %i.bm, align 8, !tbaa !21
  %indvars.iv.next.i47.us.us = or disjoint i64 %indvars.iv.i46.us.us, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.160.us.us, i64 %indvars.iv.next.i47.us.us
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !30
  %i.br = zext i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.br
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !31
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i47.us.us ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !21
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bg, float %i.bv)
  store float %i.bw, ptr %i.bu, align 4, !tbaa !21
  %indvars.iv.next.i47.us.us.1 = add nuw nsw i64 %indvars.iv.i46.us.us, 2 ; 2 uses
  %niter76.next.1 = add i64 %niter76, 2           ; 2 uses
  %niter76.ncmp.1 = icmp eq i64 %niter76.next.1, %unroll_iter75
  br i1 %niter76.ncmp.1, label %_ZN4Ptex4v2_49PtexUtils9VecAccumNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us.us.unr-lcssa, label %.lr.ph.i45.us.us, !llvm.loop !60

_ZN4Ptex4v2_49PtexUtils9VecAccumNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us.us.unr-lcssa: ; preds = %.lr.ph.i45.us.us
  br i1 %lcmp.mod73.not, label %_ZN4Ptex4v2_49PtexUtils9VecAccumNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us.us, label %.lr.ph.i45.us.us.epil.preheader

.lr.ph.i45.us.us.epil.preheader:                  ; preds = %_ZN4Ptex4v2_49PtexUtils9VecAccumNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us.us.unr-lcssa, %.lr.ph.preheader.i43.us.us
  %indvars.iv.i46.us.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i43.us.us ], [ %indvars.iv.next.i47.us.us.1, %_ZN4Ptex4v2_49PtexUtils9VecAccumNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.160.us.us, i64 %indvars.iv.i46.us.us.epil.init
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !30
  %i.bz = zext i16 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @_ZN4Ptex4v2_48PtexHalf8h2fTableE, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !31
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i46.us.us.epil.init ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !21
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.bg, float %i.cd)
  store float %i.ce, ptr %i.cc, align 4, !tbaa !21
  br label %_ZN4Ptex4v2_49PtexUtils9VecAccumNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us.us

_ZN4Ptex4v2_49PtexUtils9VecAccumNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us.us: ; preds = %_ZN4Ptex4v2_49PtexUtils9VecAccumNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us.us.unr-lcssa, %.lr.ph.i45.us.us.epil.preheader
  %.1.us.us = getelementptr inbounds [2 x i8], ptr %.160.us.us, i64 %i.ac ; 2 uses
  %.not42.us.us = icmp eq ptr %.1.us.us, %i.bf
  br i1 %.not42.us.us, label %.lr.ph.preheader.i49.us, label %.lr.ph.preheader.i43.us.us, !llvm.loop !61

.lr.ph.preheader.i49.us:                          ; preds = %_ZN4Ptex4v2_49PtexUtils9VecAccumNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us.us, %_ZN4Ptex4v2_49PtexUtils8VecMultNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us
  %i.cf = phi ptr [ %.04063.us, %_ZN4Ptex4v2_49PtexUtils8VecMultNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us ], [ %.160.us.us, %_ZN4Ptex4v2_49PtexUtils9VecAccumNINS0_8PtexHalfEEclEPfPKS3_if.exit.loopexit.us.us ]
  %i.cg = load float, ptr %.04162.us, align 4, !tbaa !21 ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i51.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i49.us
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cg, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load = load <4 x float>, ptr %i.ch, align 16, !tbaa !21
  %wide.load68 = load <4 x float>, ptr %i.ci, align 16, !tbaa !21
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %wide.load69 = load <4 x float>, ptr %i.cj, align 4, !tbaa !21
  %wide.load70 = load <4 x float>, ptr %i.ck, align 4, !tbaa !21
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load69)
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load68, <4 x float> %broadcast.splat, <4 x float> %wide.load70)
  store <4 x float> %i.cl, ptr %i.cj, align 4, !tbaa !21
  store <4 x float> %i.cm, ptr %i.ck, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit.loopexit.us, label %.lr.ph.i51.us.preheader

.lr.ph.i51.us.preheader:                          ; preds = %.lr.ph.preheader.i49.us, %middle.block
  %indvars.iv.i52.us.ph = phi i64 [ 0, %.lr.ph.preheader.i49.us ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i51.us

.lr.ph.i51.us:                                    ; preds = %.lr.ph.i51.us.preheader, %.lr.ph.i51.us
  %indvars.iv.i52.us = phi i64 [ %indvars.iv.next.i53.us, %.lr.ph.i51.us ], [ %indvars.iv.i52.us.ph, %.lr.ph.i51.us.preheader ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i52.us
  %i.cp = load float, ptr %i.co, align 4, !tbaa !21
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i52.us ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !21
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cg, float %i.cr)
  store float %i.cs, ptr %i.cq, align 4, !tbaa !21
  %indvars.iv.next.i53.us = add nuw nsw i64 %indvars.iv.i52.us, 1 ; 2 uses
  %exitcond.not.i54.us = icmp eq i64 %indvars.iv.next.i53.us, %wide.trip.count.i
  br i1 %exitcond.not.i54.us, label %_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit.loopexit.us, label %.lr.ph.i51.us, !llvm.loop !63

_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit.loopexit.us: ; preds = %.lr.ph.i51.us, %middle.block
  %i.ct = getelementptr inbounds nuw i8, ptr %.04162.us, i64 4
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.cf, i64 %i.ac
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.cu, i64 %i.ad ; 2 uses
  %.not.us = icmp eq ptr %i.cv, %i.t
  br i1 %.not.us, label %._crit_edge66, label %.lr.ph.preheader.i.us, !llvm.loop !64

._crit_edge66:                                    ; preds = %_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit.loopexit.us, %.lr.ph65, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN4Ptex4v2_412_GLOBAL__N_16ApplyNIfEEvRNS0_19PtexSeparableKernelEPfPvii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(124) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = shl nsw i64 %i.a, 2
  %i.c = alloca i8, i64 %i.b, align 16            ; 15 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = load i8, ptr %0, align 8, !tbaa !10
  %i.f = zext nneg i8 %i.e to i32                 ; 2 uses
  %i.g = shl i32 %4, %i.f                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !14
  %i.j = shl i32 %i.i, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !15
  %i.m = add nsw i32 %i.j, %i.l
  %i.n = mul nsw i32 %i.m, %4
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !16
  %i.s = mul nsw i32 %i.r, %i.g                   ; 2 uses
  %i.t = sext i32 %i.s to i64
  %.idx = shl nsw i64 %i.t, 2
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %.idx
  %.not62 = icmp eq i32 %i.s, 0
  br i1 %.not62, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !17
  %i.x = mul nsw i32 %i.w, %4                     ; 3 uses
  %i.y = sub nsw i32 %i.g, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.ab = sext i32 %i.x to i64
  %i.ac = icmp sgt i32 %3, 0
  %wide.trip.count.i = zext i32 %3 to i64         ; 14 uses
  %i.ad = sext i32 %4 to i64                      ; 4 uses
  %i.ae = sext i32 %i.y to i64
  br i1 %i.ac, label %.lr.ph.preheader.i.us.preheader, label %._crit_edge67

.lr.ph.preheader.i.us.preheader:                  ; preds = %.lr.ph66
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !19
  %.not4259.us = icmp eq i32 %4, %i.x
  %i.ah = shl nsw i64 %i.ad, 2                    ; 2 uses
  %i.ai = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.ai
  %min.iters.check92 = icmp ult i32 %3, 8
  %n.vec94 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n103 = icmp eq i64 %n.vec94, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check74 = icmp ult i32 %3, 8
  %n.vec76 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n87 = icmp eq i64 %n.vec76, %wide.trip.count.i
  %xtraiter105 = and i64 %wide.trip.count.i, 1
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  %i.aj = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %.lr.ph.preheader.i.us.preheader, %_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit55.loopexit.us
  %.04064.us = phi ptr [ %i.dg, %_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit55.loopexit.us ], [ %i.p, %.lr.ph.preheader.i.us.preheader ] ; 11 uses
  %.04163.us = phi ptr [ %i.de, %_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit55.loopexit.us ], [ %i.ag, %.lr.ph.preheader.i.us.preheader ] ; 2 uses
  %i.ak = load float, ptr %i.aa, align 4, !tbaa !21 ; 6 uses
  %.04064.us90 = ptrtoaddr ptr %.04064.us to i64
  %i.al = sub i64 %.04064.us90, %i.d
  %diff.check = icmp ugt i64 %i.al, -32
  %or.cond = select i1 %min.iters.check92, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.us.preheader, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph.preheader.i.us
  %broadcast.splatinsert95 = insertelement <4 x float> poison, float %i.ak, i64 0
  %broadcast.splat96 = shufflevector <4 x float> %broadcast.splatinsert95, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph93
  %index98 = phi i64 [ 0, %vector.ph93 ], [ %index.next101, %vector.body97 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.04064.us, i64 %index98 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load99 = load <4 x float>, ptr %i.am, align 4, !tbaa !21
  %wide.load100 = load <4 x float>, ptr %i.an, align 4, !tbaa !21
  %i.ao = fmul <4 x float> %broadcast.splat96, %wide.load99
  %i.ap = fmul <4 x float> %broadcast.splat96, %wide.load100
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index98 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <4 x float> %i.ao, ptr %i.aq, align 16, !tbaa !21
  store <4 x float> %i.ap, ptr %i.ar, align 16, !tbaa !21
  %index.next101 = add nuw i64 %index98, 8        ; 2 uses
  %i.as = icmp eq i64 %index.next101, %n.vec94
  br i1 %i.as, label %middle.block102, label %vector.body97, !llvm.loop !65

middle.block102:                                  ; preds = %vector.body97
  br i1 %cmp.n103, label %_ZN4Ptex4v2_49PtexUtils8VecMultNIfEclEPfPKfif.exit.loopexit.us, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.preheader.i.us, %middle.block102
  %indvars.iv.i.us.ph = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %n.vec94, %middle.block102 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.us.prol.loopexit, label %.lr.ph.i.us.prol

.lr.ph.i.us.prol:                                 ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us.prol
  %indvars.iv.i.us.prol = phi i64 [ %indvars.iv.next.i.us.prol, %.lr.ph.i.us.prol ], [ %indvars.iv.i.us.ph, %.lr.ph.i.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.us.prol ], [ 0, %.lr.ph.i.us.preheader ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.04064.us, i64 %indvars.iv.i.us.prol
  %i.au = load float, ptr %i.at, align 4, !tbaa !21
  %i.av = fmul float %i.ak, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.us.prol
  store float %i.av, ptr %i.aw, align 4, !tbaa !21
  %indvars.iv.next.i.us.prol = add nuw nsw i64 %indvars.iv.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.us.prol.loopexit, label %.lr.ph.i.us.prol, !llvm.loop !66

.lr.ph.i.us.prol.loopexit:                        ; preds = %.lr.ph.i.us.prol, %.lr.ph.i.us.preheader
  %indvars.iv.i.us.unr = phi i64 [ %indvars.iv.i.us.ph, %.lr.ph.i.us.preheader ], [ %indvars.iv.next.i.us.prol, %.lr.ph.i.us.prol ]
  %i.ax = sub nsw i64 %indvars.iv.i.us.ph, %wide.trip.count.i
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %_ZN4Ptex4v2_49PtexUtils8VecMultNIfEclEPfPKfif.exit.loopexit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.prol.loopexit, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.3, %.lr.ph.i.us ], [ %indvars.iv.i.us.unr, %.lr.ph.i.us.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.04064.us, i64 %indvars.iv.i.us
  %i.ba = load float, ptr %i.az, align 4, !tbaa !21
  %i.bb = fmul float %i.ak, %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.us
  store float %i.bb, ptr %i.bc, align 4, !tbaa !21
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.04064.us, i64 %indvars.iv.next.i.us
  %i.be = load float, ptr %i.bd, align 4, !tbaa !21
  %i.bf = fmul float %i.ak, %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i.us
  store float %i.bf, ptr %i.bg, align 4, !tbaa !21
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.04064.us, i64 %indvars.iv.next.i.us.1
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !21
  %i.bj = fmul float %i.ak, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i.us.1
  store float %i.bj, ptr %i.bk, align 4, !tbaa !21
  %indvars.iv.next.i.us.2 = add nuw nsw i64 %indvars.iv.i.us, 3 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.04064.us, i64 %indvars.iv.next.i.us.2
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !21
  %i.bn = fmul float %i.ak, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i.us.2
  store float %i.bn, ptr %i.bo, align 4, !tbaa !21
  %indvars.iv.next.i.us.3 = add nuw nsw i64 %indvars.iv.i.us, 4 ; 2 uses
  %exitcond.not.i.us.3 = icmp eq i64 %indvars.iv.next.i.us.3, %wide.trip.count.i
  br i1 %exitcond.not.i.us.3, label %_ZN4Ptex4v2_49PtexUtils8VecMultNIfEclEPfPKfif.exit.loopexit.us, label %.lr.ph.i.us, !llvm.loop !67

_ZN4Ptex4v2_49PtexUtils8VecMultNIfEclEPfPKfif.exit.loopexit.us: ; preds = %.lr.ph.i.us.prol.loopexit, %.lr.ph.i.us, %middle.block102
  %i.bp = getelementptr inbounds [4 x i8], ptr %.04064.us, i64 %i.ab
  br i1 %.not4259.us, label %.lr.ph.preheader.i49.us, label %.lr.ph.preheader.i43.us.us.preheader

.lr.ph.preheader.i43.us.us.preheader:             ; preds = %_ZN4Ptex4v2_49PtexUtils8VecMultNIfEclEPfPKfif.exit.loopexit.us
  %.158.us = getelementptr inbounds [4 x i8], ptr %.04064.us, i64 %i.ad
  %5 = getelementptr i8, ptr %.04064.us, i64 %i.ah
  %i.bq = getelementptr i8, ptr %5, i64 %i.ai
  br label %.lr.ph.preheader.i43.us.us

.lr.ph.preheader.i43.us.us:                       ; preds = %.lr.ph.preheader.i43.us.us.preheader, %_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit.loopexit.us.us
  %indvar = phi i64 [ 0, %.lr.ph.preheader.i43.us.us.preheader ], [ %indvar.next, %_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit.loopexit.us.us ] ; 2 uses
  %.161.us.us = phi ptr [ %.158.us, %.lr.ph.preheader.i43.us.us.preheader ], [ %.1.us.us, %_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit.loopexit.us.us ] ; 7 uses
  %.pn60.us.us = phi ptr [ %i.aa, %.lr.ph.preheader.i43.us.us.preheader ], [ %.0.us.us, %_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit.loopexit.us.us ]
  %.0.us.us = getelementptr inbounds nuw i8, ptr %.pn60.us.us, i64 4 ; 2 uses
  %i.br = load float, ptr %.0.us.us, align 4, !tbaa !21 ; 4 uses
  br i1 %min.iters.check74, label %.lr.ph.i45.us.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i43.us.us
  %i.bs = mul i64 %indvar, %i.ah
  %scevgep72 = getelementptr i8, ptr %i.bq, i64 %i.bs
  %bound0 = icmp ult ptr %i.c, %scevgep72
  %bound1 = icmp ult ptr %.161.us.us, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i45.us.us.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert77 = insertelement <4 x float> poison, float %i.br, i64 0
  %broadcast.splat78 = shufflevector <4 x float> %broadcast.splatinsert77, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph75
  %index80 = phi i64 [ 0, %vector.ph75 ], [ %index.next85, %vector.body79 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.161.us.us, i64 %index80 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load81 = load <4 x float>, ptr %i.bt, align 4, !tbaa !21, !alias.scope !77
  %wide.load82 = load <4 x float>, ptr %i.bu, align 4, !tbaa !21, !alias.scope !77
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index80 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %wide.load83 = load <4 x float>, ptr %i.bv, align 16, !tbaa !21, !alias.scope !78, !noalias !77
  %wide.load84 = load <4 x float>, ptr %i.bw, align 16, !tbaa !21, !alias.scope !78, !noalias !77
  %i.bx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load81, <4 x float> %broadcast.splat78, <4 x float> %wide.load83)
  %i.by = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load82, <4 x float> %broadcast.splat78, <4 x float> %wide.load84)
  store <4 x float> %i.bx, ptr %i.bv, align 16, !tbaa !21, !alias.scope !78, !noalias !77
  store <4 x float> %i.by, ptr %i.bw, align 16, !tbaa !21, !alias.scope !78, !noalias !77
  %index.next85 = add nuw i64 %index80, 8         ; 2 uses
  %i.bz = icmp eq i64 %index.next85, %n.vec76
  br i1 %i.bz, label %middle.block86, label %vector.body79, !llvm.loop !71

middle.block86:                                   ; preds = %vector.body79
  br i1 %cmp.n87, label %_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit.loopexit.us.us, label %.lr.ph.i45.us.us.preheader

.lr.ph.i45.us.us.preheader:                       ; preds = %vector.memcheck, %.lr.ph.preheader.i43.us.us, %middle.block86
  %indvars.iv.i46.us.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i43.us.us ], [ %n.vec76, %middle.block86 ] ; 5 uses
  br i1 %lcmp.mod106.not, label %.lr.ph.i45.us.us.prol.loopexit, label %.lr.ph.i45.us.us.prol

.lr.ph.i45.us.us.prol:                            ; preds = %.lr.ph.i45.us.us.preheader
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.161.us.us, i64 %indvars.iv.i46.us.us.ph
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !21
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i46.us.us.ph ; 2 uses
  %i.cd = load float, ptr %i.cc, align 16, !tbaa !21
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.br, float %i.cd)
  store float %i.ce, ptr %i.cc, align 16, !tbaa !21
  %indvars.iv.next.i47.us.us.prol = or disjoint i64 %indvars.iv.i46.us.us.ph, 1
  br label %.lr.ph.i45.us.us.prol.loopexit

.lr.ph.i45.us.us.prol.loopexit:                   ; preds = %.lr.ph.i45.us.us.prol, %.lr.ph.i45.us.us.preheader
  %indvars.iv.i46.us.us.unr = phi i64 [ %indvars.iv.i46.us.us.ph, %.lr.ph.i45.us.us.preheader ], [ %indvars.iv.next.i47.us.us.prol, %.lr.ph.i45.us.us.prol ]
  %i.cf = icmp eq i64 %indvars.iv.i46.us.us.ph, %i.aj
  br i1 %i.cf, label %_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit.loopexit.us.us, label %.lr.ph.i45.us.us

.lr.ph.i45.us.us:                                 ; preds = %.lr.ph.i45.us.us.prol.loopexit, %.lr.ph.i45.us.us
  %indvars.iv.i46.us.us = phi i64 [ %indvars.iv.next.i47.us.us.1, %.lr.ph.i45.us.us ], [ %indvars.iv.i46.us.us.unr, %.lr.ph.i45.us.us.prol.loopexit ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.161.us.us, i64 %indvars.iv.i46.us.us
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !21
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i46.us.us ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !21
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.br, float %i.cj)
  store float %i.ck, ptr %i.ci, align 4, !tbaa !21
  %indvars.iv.next.i47.us.us = add nuw nsw i64 %indvars.iv.i46.us.us, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.161.us.us, i64 %indvars.iv.next.i47.us.us
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !21
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i47.us.us ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !21
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.br, float %i.co)
  store float %i.cp, ptr %i.cn, align 4, !tbaa !21
  %indvars.iv.next.i47.us.us.1 = add nuw nsw i64 %indvars.iv.i46.us.us, 2 ; 2 uses
  %exitcond.not.i48.us.us.1 = icmp eq i64 %indvars.iv.next.i47.us.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i48.us.us.1, label %_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit.loopexit.us.us, label %.lr.ph.i45.us.us, !llvm.loop !72

_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit.loopexit.us.us: ; preds = %.lr.ph.i45.us.us.prol.loopexit, %.lr.ph.i45.us.us, %middle.block86
  %.1.us.us = getelementptr inbounds [4 x i8], ptr %.161.us.us, i64 %i.ad ; 2 uses
  %.not42.us.us = icmp eq ptr %.1.us.us, %i.bp
  %indvar.next = add i64 %indvar, 1
  br i1 %.not42.us.us, label %.lr.ph.preheader.i49.us, label %.lr.ph.preheader.i43.us.us, !llvm.loop !73

.lr.ph.preheader.i49.us:                          ; preds = %_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit.loopexit.us.us, %_ZN4Ptex4v2_49PtexUtils8VecMultNIfEclEPfPKfif.exit.loopexit.us
  %i.cq = phi ptr [ %.04064.us, %_ZN4Ptex4v2_49PtexUtils8VecMultNIfEclEPfPKfif.exit.loopexit.us ], [ %.161.us.us, %_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit.loopexit.us.us ]
  %i.cr = load float, ptr %.04163.us, align 4, !tbaa !21 ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i51.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i49.us
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cr, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load = load <4 x float>, ptr %i.cs, align 16, !tbaa !21
  %wide.load69 = load <4 x float>, ptr %i.ct, align 16, !tbaa !21
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %wide.load70 = load <4 x float>, ptr %i.cu, align 4, !tbaa !21
  %wide.load71 = load <4 x float>, ptr %i.cv, align 4, !tbaa !21
  %i.cw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load70)
  %i.cx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load69, <4 x float> %broadcast.splat, <4 x float> %wide.load71)
  store <4 x float> %i.cw, ptr %i.cu, align 4, !tbaa !21
  store <4 x float> %i.cx, ptr %i.cv, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit55.loopexit.us, label %.lr.ph.i51.us.preheader

.lr.ph.i51.us.preheader:                          ; preds = %.lr.ph.preheader.i49.us, %middle.block
  %indvars.iv.i52.us.ph = phi i64 [ 0, %.lr.ph.preheader.i49.us ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i51.us

.lr.ph.i51.us:                                    ; preds = %.lr.ph.i51.us.preheader, %.lr.ph.i51.us
  %indvars.iv.i52.us = phi i64 [ %indvars.iv.next.i53.us, %.lr.ph.i51.us ], [ %indvars.iv.i52.us.ph, %.lr.ph.i51.us.preheader ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i52.us
  %i.da = load float, ptr %i.cz, align 4, !tbaa !21
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i52.us ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !21
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.da, float %i.cr, float %i.dc)
  store float %i.dd, ptr %i.db, align 4, !tbaa !21
  %indvars.iv.next.i53.us = add nuw nsw i64 %indvars.iv.i52.us, 1 ; 2 uses
  %exitcond.not.i54.us = icmp eq i64 %indvars.iv.next.i53.us, %wide.trip.count.i
  br i1 %exitcond.not.i54.us, label %_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit55.loopexit.us, label %.lr.ph.i51.us, !llvm.loop !75

_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit55.loopexit.us: ; preds = %.lr.ph.i51.us, %middle.block
  %i.de = getelementptr inbounds nuw i8, ptr %.04163.us, i64 4
  %i.df = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.ad
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.ae ; 2 uses
  %.not.us = icmp eq ptr %i.dg, %i.u
  br i1 %.not.us, label %._crit_edge67, label %.lr.ph.preheader.i.us, !llvm.loop !76

._crit_edge67:                                    ; preds = %_ZN4Ptex4v2_49PtexUtils9VecAccumNIfEclEPfPKfif.exit55.loopexit.us, %.lr.ph66, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN4Ptex4v2_412_GLOBAL__N_15ApplyIhLi1EEEvRNS0_19PtexSeparableKernelEPfPvii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(124) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address) %2, i32 %3, i32 %4) #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !10
  %i.b = zext nneg i8 %i.a to i32                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !14
  %i.e = shl i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15
  %i.h = add nsw i32 %i.e, %i.g
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !16
  %i.m = shl i32 %i.l, %i.b                       ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %i.j, i64 %i.n
  %.not44 = icmp eq i32 %i.m, 0
  br i1 %.not44, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.r = shl nuw i32 1, %i.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17   ; 3 uses
  %i.u = sub nsw i32 %i.r, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 3 uses
  %i.x = sext i32 %i.t to i64                     ; 4 uses
  %i.y = sext i32 %i.u to i64
  %.not3339 = icmp eq i32 %i.t, 1
  %i.z = add nsw i64 %i.x, 3
  %i.aa = add nsw i64 %i.x, -2
  %xtraiter = and i64 %i.z, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ab = icmp ult i64 %i.aa, 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph48, %._crit_edge
  %.03146 = phi ptr [ %i.j, %.lr.ph48 ], [ %i.bi, %._crit_edge ] ; 5 uses
  %.03245 = phi ptr [ %i.q, %.lr.ph48 ], [ %i.be, %._crit_edge ] ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.03146, i64 %i.x
  %i.ad = load float, ptr %i.w, align 4, !tbaa !21
  %i.ae = load i8, ptr %.03146, align 1, !tbaa !22
  %i.af = uitofp i8 %i.ae to float
  %i.ag = fmul float %i.ad, %i.af                 ; 3 uses
  br i1 %.not3339, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.138 = getelementptr inbounds nuw i8, ptr %.03146, i64 1 ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.142.prol = phi ptr [ %.1.prol, %.lr.ph.prol ], [ %.138, %.lr.ph.preheader ] ; 2 uses
  %.pn41.prol = phi ptr [ %.0.prol, %.lr.ph.prol ], [ %i.w, %.lr.ph.preheader ]
  %.sroa.0.040.prol = phi float [ %i.ak, %.lr.ph.prol ], [ %i.ag, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.0.prol = getelementptr inbounds nuw i8, ptr %.pn41.prol, i64 4 ; 3 uses
  %i.ah = load float, ptr %.0.prol, align 4, !tbaa !21
  %i.ai = load i8, ptr %.142.prol, align 1, !tbaa !22
  %i.aj = uitofp i8 %i.ai to float
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ah, float %.sroa.0.040.prol) ; 3 uses
  %.1.prol = getelementptr inbounds nuw i8, ptr %.142.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
end_hunk_0
