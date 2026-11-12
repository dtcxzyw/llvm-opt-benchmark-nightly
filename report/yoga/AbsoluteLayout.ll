Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/AbsoluteLayout?download=true
inline.NumInlined: 733
inline.NumDeleted: 181
begin_hunk_0_@_ZN8facebook4yoga19layoutAbsoluteChildEPKNS0_4NodeES3_PS1_ffNS0_10SizingModeENS0_9DirectionERNS0_10LayoutDataEjj:bb.a
  %i.ty = tail call float @llvm.fmuladd.f32(float %i.tx, float %.sroa.05.0.i.i181, float %i.ao)
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466

bb.bv:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread
  br i1 %i.se, label %bb.ca, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466

.thread519:                                       ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread.thread
  br i1 %i.se, label %bb.bw, label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466

bb.bw:                                            ; preds = %.thread519
  %i.tz = lshr i16 %.sroa.0.0.copyload.i, 4
  %i.ua = zext nneg i16 %i.tz to i64              ; 2 uses
  %i.ub = icmp ult i16 %.sroa.0.0.copyload.i, 64
  br i1 %i.ub, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.uc = getelementptr inbounds nuw i8, ptr %2, i64 300
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.ua
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i188

bb.by:                                            ; preds = %bb.bw
  %i.ue = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !17 ; 2 uses
  %i.ug = add nsw i64 %i.ua, -4                   ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !20
  %i.uj = load ptr, ptr %i.uf, align 8, !tbaa !21 ; 2 uses
  %i.uk = ptrtoint ptr %i.ui to i64
  %i.ul = ptrtoint ptr %i.uj to i64
  %i.um = sub i64 %i.uk, %i.ul
  %i.un = ashr exact i64 %i.um, 2                 ; 2 uses
  %.not.i.i.i.i.i186 = icmp ult i64 %i.ug, %i.un
  br i1 %.not.i.i.i.i.i186, label %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i187, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.ug, i64 noundef %i.un) #10
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i187:          ; preds = %bb.by
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.ug
  br label %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i188

_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i188: ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i187, %bb.bx
  %.0.in.i.i.i189 = phi ptr [ %i.ud, %bb.bx ], [ %i.uo, %_ZNSt6vectorIjSaIjEE2atEm.exit.i.i.i187 ]
  %.0.i7.i.i190 = load float, ptr %.0.in.i.i.i189, align 4, !tbaa !22
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit193

bb.ca:                                            ; preds = %bb.bv
  %i.up = lshr i16 %.sroa.0.0.copyload.i, 4
  %i.uq = and i16 %i.up, 2047
  %i.ur = zext nneg i16 %i.uq to i32              ; 2 uses
  %i.us = sub nsw i32 0, %i.ur
  %.not.i6.i.i192 = icmp slt i16 %.sroa.0.0.copyload.i, 0
  %i.ut = select i1 %.not.i6.i.i192, i32 %i.us, i32 %i.ur
  %i.uu = sitofp i32 %i.ut to float
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit193

_ZNK8facebook4yoga5Style11aspectRatioEv.exit193:  ; preds = %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i188, %bb.ca
  %.sroa.05.0.i.i191 = phi float [ %i.uu, %bb.ca ], [ %.0.i7.i.i190, %_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et.exit.i.i188 ]
  %i.uv = fsub float %.0141, %i.ao
  %i.uw = fdiv float %i.uv, %.sroa.05.0.i.i191
  %i.ux = fadd float %i.bf, %i.uw
  br label %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466

_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466: ; preds = %.thread519, %bb.bk, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit, %bb.bv, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit193, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit183, %bb.bj
  %.1142 = phi float [ %i.ty, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit183 ], [ %.0141, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit193 ], [ %.0141, %bb.bv ], [ %.0141, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit ], [ %.0141, %bb.bj ], [ %.0141, %bb.bk ], [ %.0141, %.thread519 ] ; 4 uses
  %.1 = phi float [ %.0140464, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit183 ], [ %i.ux, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit193 ], [ %.0140464, %bb.bv ], [ %.0140464, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit ], [ %.0140, %bb.bj ], [ %.0140464, %bb.bk ], [ %.0140464, %.thread519 ] ; 4 uses
  %i.uy = fcmp uno float %.1142, 0.000000e+00
  br i1 %i.uy, label %.thread468, label %bb.cb

bb.cb:                                            ; preds = %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466
  %i.uz = fcmp uno float %.1, 0.000000e+00
  br i1 %i.uz, label %.thread468, label %bb.cg

.thread468:                                       ; preds = %.thr_comm463, %bb.cb, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466
  %i.va = phi i1 [ true, %.thr_comm463 ], [ false, %bb.cb ], [ true, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466 ] ; 2 uses
  %.1474 = phi float [ +qnan, %.thr_comm463 ], [ %.1, %bb.cb ], [ %.1, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466 ] ; 2 uses
  %.1142472 = phi float [ %.0141, %.thr_comm463 ], [ %.1142, %bb.cb ], [ %.1142, %_ZNK8facebook4yoga5Style11aspectRatioEv.exit.thread466 ]
  %i.vb = zext i1 %i.va to i32
  %i.vc = fcmp uno float %.1474, 0.000000e+00
  %i.vd = zext i1 %i.vc to i32
  %i.ve = icmp ne i32 %5, 1
  %i.vf = and i1 %i.ve, %i.o
  %i.vg = fcmp ogt float %3, 0.000000e+00
  %i.vh = and i1 %i.vg, %i.vf
  %or.cond484 = and i1 %i.vh, %i.va               ; 2 uses
  %.2143 = select i1 %or.cond484, float %3, float %.1142472
  %.0 = select i1 %or.cond484, i32 2, i32 %i.vb
  %i.vi = tail call noundef zeroext i1 @_ZN8facebook4yoga23calculateLayoutInternalEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj(ptr noundef nonnull %2, float noundef %.2143, float noundef %.1474, i8 noundef zeroext %6, i32 noundef %.0, i32 noundef %i.vd, float noundef %3, float noundef %4, i1 noundef zeroext false, i32 noundef 6, ptr noundef nonnull align 4 dereferenceable(60) %7, i32 noundef %8, i32 noundef %9) ; 0 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !14
  %i.vl = load i16, ptr %i.r, align 1, !tbaa !11  ; 2 uses
  %i.vm = and i16 %i.vl, 7
  %.not14.i.i347 = icmp eq i16 %i.vm, 0
  br i1 %.not14.i.i347, label %bb.cc, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit353

bb.cc:                                            ; preds = %.thread468
  %i.vn = load i16, ptr %i.q, align 1, !tbaa !11  ; 2 uses
  %i.vo = and i16 %i.vn, 7
  %.not15.i.i349 = icmp eq i16 %i.vo, 0
  br i1 %.not15.i.i349, label %bb.cd, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit353

bb.cd:                                            ; preds = %bb.cc
  %i.vp = getelementptr inbounds nuw i8, ptr %2, i64 81
  %i.vq = load i16, ptr %i.vp, align 1, !tbaa !11 ; 2 uses
  %i.vr = and i16 %i.vq, 7
  %.not16.i.i350 = icmp eq i16 %i.vr, 0
  %.val.i.i351 = load i16, ptr %i.av, align 1
  %.sroa.0.0.pre.i.i352 = select i1 %.not16.i.i350, i16 %.val.i.i351, i16 %i.vq
  br label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit353

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit353: ; preds = %.thread468, %bb.cc, %bb.cd
  %.sroa.0.0.i348 = phi i16 [ %.sroa.0.0.pre.i.i352, %bb.cd ], [ %i.vl, %.thread468 ], [ %i.vn, %bb.cc ]
  %i.vs = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i348, float noundef %3) ; 2 uses
  %.inv.i.i194 = fcmp ord float %i.vs, 0.000000e+00
  %i.vt = select i1 %.inv.i.i194, float %i.vs, float 0.000000e+00
  %i.vu = load i16, ptr %i.ac, align 1, !tbaa !11 ; 2 uses
  %i.vv = and i16 %i.vu, 7
  %.not14.i11.i340 = icmp eq i16 %i.vv, 0
  br i1 %.not14.i11.i340, label %bb.ce, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit346

bb.ce:                                            ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit353
  %i.vw = getelementptr inbounds nuw i8, ptr %2, i64 73
  %i.vx = load i16, ptr %i.vw, align 1, !tbaa !11 ; 2 uses
  %i.vy = and i16 %i.vx, 7
  %.not15.i7.i342 = icmp eq i16 %i.vy, 0
  br i1 %.not15.i7.i342, label %bb.cf, label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit346

bb.cf:                                            ; preds = %bb.ce
  %i.vz = getelementptr inbounds nuw i8, ptr %2, i64 81
  %i.wa = load i16, ptr %i.vz, align 1, !tbaa !11 ; 2 uses
  %i.wb = and i16 %i.wa, 7
  %.not16.i8.i343 = icmp eq i16 %i.wb, 0
  %.val.i9.i344 = load i16, ptr %i.av, align 1
  %.sroa.0.0.pre.i10.i345 = select i1 %.not16.i8.i343, i16 %.val.i9.i344, i16 %i.wa
  br label %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit346

_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit346: ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit353, %bb.ce, %bb.cf
  %.sroa.0.0.i341 = phi i16 [ %.sroa.0.0.pre.i10.i345, %bb.cf ], [ %i.vu, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit353 ], [ %i.vx, %bb.ce ]
  %i.wc = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i341, float noundef %3) ; 2 uses
  %.inv.i5.i195 = fcmp ord float %i.wc, 0.000000e+00
  %i.wd = select i1 %.inv.i5.i195, float %i.wc, float 0.000000e+00
  %i.we = fadd float %i.vt, %i.wd
  %i.wf = fadd float %i.vk, %i.we
  %i.wg = getelementptr inbounds nuw i8, ptr %2, i64 596
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !14
  %i.wi = load i16, ptr %i.ap, align 1, !tbaa !11
  %i.wj = and i16 %i.wi, 7
  %.not.i3.i360 = icmp eq i16 %i.wj, 0
  %i.wk = load i16, ptr %i.as, align 1
  %i.wl = and i16 %i.wk, 7
  %.not7.i.i361 = icmp eq i16 %i.wl, 0
  %spec.select.i.i362 = select i1 %.not7.i.i361, ptr %i.av, ptr %i.as
  %.sroa.0.0.in.i.i363 = select i1 %.not.i3.i360, ptr %spec.select.i.i362, ptr %i.ap
  %.sroa.0.0.i4.i364 = load i16, ptr %.sroa.0.0.in.i.i363, align 1, !tbaa !12
  %i.wm = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i4.i364, float noundef %3) ; 2 uses
  %.inv.i.i196 = fcmp ord float %i.wm, 0.000000e+00
  %i.wn = select i1 %.inv.i.i196, float %i.wm, float 0.000000e+00
  %i.wo = load i16, ptr %i.ay, align 1, !tbaa !11
  %i.wp = and i16 %i.wo, 7
  %.not.i12.i354 = icmp eq i16 %i.wp, 0
  %i.wq = load i16, ptr %i.as, align 1
  %i.wr = and i16 %i.wq, 7
  %.not7.i13.i355 = icmp eq i16 %i.wr, 0
  %spec.select.i14.i356 = select i1 %.not7.i13.i355, ptr %i.av, ptr %i.as
  %.sroa.0.0.in.i15.i357 = select i1 %.not.i12.i354, ptr %spec.select.i14.i356, ptr %i.ay
  %.sroa.0.0.i16.i358 = load i16, ptr %.sroa.0.0.in.i15.i357, align 1, !tbaa !12
  %i.ws = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.p, i16 %.sroa.0.0.i16.i358, float noundef %3) ; 2 uses
  %.inv.i5.i197 = fcmp ord float %i.ws, 0.000000e+00
  %i.wt = select i1 %.inv.i5.i197, float %i.ws, float 0.000000e+00
  %i.wu = fadd float %i.wn, %i.wt
  %i.wv = fadd float %i.wh, %i.wu
  br label %bb.cg

bb.cg:                                            ; preds = %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit346, %bb.cb
  %.3 = phi float [ %i.wf, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit346 ], [ %.1142, %bb.cb ]
  %.2 = phi float [ %i.wv, %_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE.exit346 ], [ %.1, %bb.cb ]
  %i.ww = tail call noundef zeroext i1 @_ZN8facebook4yoga23calculateLayoutInternalEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj(ptr noundef nonnull %2, float noundef %.3, float noundef %.2, i8 noundef zeroext %6, i32 noundef 0, i32 noundef 0, float noundef %3, float noundef %4, i1 noundef zeroext true, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(60) %7, i32 noundef %8, i32 noundef %9) ; 0 uses
  tail call fastcc void @_ZN8facebook4yogaL21positionAbsoluteChildEPKNS0_4NodeES3_PS1_NS0_9DirectionENS0_13FlexDirectionEbff(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext %6, i8 noundef zeroext %i.m, i1 noundef zeroext true, float noundef %3, float noundef %4)
  tail call fastcc void @_ZN8facebook4yogaL21positionAbsoluteChildEPKNS0_4NodeES3_PS1_NS0_9DirectionENS0_13FlexDirectionEbff(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext %6, i8 noundef zeroext %i.n, i1 noundef zeroext false, float noundef %3, float noundef %4)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

declare noundef zeroext i1 @_ZN8facebook4yoga23calculateLayoutInternalEPNS0_4NodeEffNS0_9DirectionENS0_10SizingModeES4_ffbNS0_16LayoutPassReasonERNS0_10LayoutDataEjj(ptr noundef, float noundef, float noundef, i8 noundef zeroext, i32 noundef, i32 noundef, float noundef, float noundef, i1 noundef zeroext, i32 noundef, ptr noundef nonnull align 4 dereferenceable(60), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook4yogaL21positionAbsoluteChildEPKNS0_4NodeES3_PS1_NS0_9DirectionENS0_13FlexDirectionEbff(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i1 noundef zeroext %5, float noundef %6, float noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = and i8 %4, -2
  %i.b = icmp eq i8 %i.a, 2                       ; 3 uses
  %i.c = select i1 %i.b, float %6, float %7       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 13 uses
  %i.e = icmp eq i8 %3, 2                         ; 2 uses
  %i.f = select i1 %i.e, i32 2, i32 0
  %.0.i.i = select i1 %i.b, i32 %i.f, i32 1       ; 7 uses
  %i.g = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i, i8 noundef zeroext %3)
  %i.h = and i16 %i.g, 7
  %.not117 = icmp eq i16 %i.h, 0
  br i1 %.not117, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i, i8 noundef zeroext %3)
  %i.j = and i16 %i.i, 7
  %i.k = icmp eq i16 %i.j, 4
  br i1 %i.k, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i, i8 noundef zeroext %3)
  %i.m = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i16 %i.l, float noundef %i.c) ; 2 uses
  %.inv.i = fcmp ord float %i.m, 0.000000e+00
  %i.n = select i1 %.inv.i, float %i.m, float 0.000000e+00
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = tail call i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.o, i32 noundef %.0.i.i, i8 noundef zeroext %3)
  %i.q = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.o, i16 %i.p, float noundef 0.000000e+00) ; 2 uses
  %.sink.i.inv.i = fcmp oge float %i.q, 0.000000e+00
  %i.r = select i1 %.sink.i.inv.i, float %i.q, float 0.000000e+00
  %i.s = fadd float %i.n, %i.r
  %i.t = tail call i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i, i8 noundef zeroext %3)
  %i.u = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i16 %i.t, float noundef %i.c) ; 2 uses
  %.inv.i79 = fcmp ord float %i.u, 0.000000e+00
  %i.v = select i1 %.inv.i79, float %i.u, float 0.000000e+00
  %i.w = fadd float %i.s, %i.v                    ; 2 uses
  switch i8 %4, label %bb.f [
    i8 0, label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit
    i8 1, label %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit

bb.e:                                             ; preds = %bb.c
  br label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit

bb.f:                                             ; preds = %bb.c
  tail call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.2) #10
  unreachable

_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.0.i80 = phi i32 [ 2, %bb.e ], [ 1, %bb.c ], [ 0, %bb.d ]
  %.not = icmp eq i32 %.0.i.i, %.0.i80
  br i1 %.not, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit
  %switch = icmp samesign ult i8 %4, 2
  %spec.select = zext i1 %switch to i64
  br label %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit

_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit: ; preds = %bb.c, %bb.g
  %.0.i.i81 = phi i64 [ %spec.select, %bb.g ], [ 1, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0.i.i81
  %i.z = load float, ptr %i.y, align 4, !tbaa !14
  %switch.i = icmp samesign ult i8 %4, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.ab = zext i1 %switch.i to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !14
  %i.ae = fsub float %i.z, %i.ad
  %i.af = fsub float %i.ae, %i.w
  br label %switch.lookup

switch.lookup:                                    ; preds = %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit
  %i.ag = phi float [ %i.af, %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit ], [ %i.w, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit ]
  %i.ah = zext nneg i8 %4 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.12, i64 %i.ah
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  tail call void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744) %2, float noundef %i.ag, i32 noundef %switch.ext)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.ai = select i1 %i.e, i32 0, i32 2
  %.0.i.i84 = select i1 %i.b, i32 %i.ai, i32 3    ; 5 uses
  %i.aj = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i84, i8 noundef zeroext %3)
  %i.ak = and i16 %i.aj, 7
  %.not118 = icmp eq i16 %i.ak, 0
  br i1 %.not118, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i84, i8 noundef zeroext %3)
  %i.am = and i16 %i.al, 7
  %i.an = icmp eq i16 %i.am, 4
  br i1 %i.an, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = icmp ult i8 %4, 4
  br i1 %i.ao, label %switch.lookup120, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN8facebook4yoga16fatalWithMessageEPKc(ptr noundef nonnull @.str.2) #10
  unreachable

switch.lookup120:                                 ; preds = %bb.j
  %i.ap = zext nneg i8 %4 to i64
  %switch.gep121 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf, i64 %i.ap
  %switch.load122 = load i8, ptr %switch.gep121, align 1
  %switch.ext123 = zext i8 %switch.load122 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %switch.ext123
  %i.as = load float, ptr %i.ar, align 4, !tbaa !14
  %switch113 = icmp samesign ult i8 %4, 2
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.au = zext i1 %switch113 to i64               ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !14
  %i.ax = fsub float %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.az = tail call i16 @_ZNK8facebook4yoga5Style13computeBorderENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.ay, i32 noundef %.0.i.i84, i8 noundef zeroext %3)
  %i.ba = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.ay, i16 %i.az, float noundef 0.000000e+00) ; 2 uses
  %.sink.i.inv.i90 = fcmp oge float %i.ba, 0.000000e+00
  %i.bb = select i1 %.sink.i.inv.i90, float %i.ba, float 0.000000e+00
  %i.bc = fsub float %i.ax, %i.bb
  %i.bd = tail call i16 @_ZNK8facebook4yoga5Style13computeMarginENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i84, i8 noundef zeroext %3)
  %i.be = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i16 %i.bd, float noundef %i.c) ; 2 uses
  %.inv.i92 = fcmp ord float %i.be, 0.000000e+00
  %i.bf = select i1 %.inv.i92, float %i.be, float 0.000000e+00
  %i.bg = fsub float %i.bc, %i.bf
  %i.bh = tail call i16 @_ZNK8facebook4yoga5Style15computePositionENS0_12PhysicalEdgeENS0_9DirectionE(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i32 noundef %.0.i.i84, i8 noundef zeroext %3)
  %i.bi = tail call float @_ZNK8facebook4yoga5Style7resolveENS0_16StyleValueHandleEf(ptr noundef nonnull align 8 dereferenceable(280) %i.d, i16 %i.bh, float noundef %i.c) ; 2 uses
  %.inv.i94 = fcmp ord float %i.bi, 0.000000e+00
  %i.bj = select i1 %.inv.i94, float %i.bi, float 0.000000e+00
  %i.bk = fsub float %i.bg, %i.bj                 ; 2 uses
  switch i8 %4, label %default.unreachable108 [
    i8 0, label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97
    i8 1, label %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit100
    i8 2, label %bb.l
    i8 3, label %bb.m
  ]

bb.l:                                             ; preds = %switch.lookup120
  br label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97

bb.m:                                             ; preds = %switch.lookup120
  br label %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97

default.unreachable108:                           ; preds = %switch.lookup120
  unreachable

_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97: ; preds = %switch.lookup120, %bb.l, %bb.m
  %.0.i96 = phi i32 [ 2, %bb.m ], [ 1, %switch.lookup120 ], [ 0, %bb.l ]
  %.not74 = icmp eq i32 %.0.i.i, %.0.i96
  br i1 %.not74, label %switch.lookup124, label %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit100

_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit100: ; preds = %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97, %switch.lookup120
  %.0.i.i98 = phi i64 [ 1, %switch.lookup120 ], [ %i.au, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97 ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.0.i.i98
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !14
  %i.bn = load float, ptr %i.av, align 4, !tbaa !14
  %i.bo = fsub float %i.bm, %i.bn
  %i.bp = fsub float %i.bo, %i.bk
  br label %switch.lookup124

switch.lookup124:                                 ; preds = %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit100, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97
  %i.bq = phi float [ %i.bp, %_ZN8facebook4yoga25getPositionOfOppositeEdgeEfNS0_13FlexDirectionEPKNS0_4NodeES4_.exit100 ], [ %i.bk, %_ZN8facebook4yoga13flexStartEdgeENS0_13FlexDirectionE.exit97 ]
  %i.br = zext nneg i8 %4 to i64
  %switch.gep125 = getelementptr inbounds nuw i8, ptr @switch.table._ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.12, i64 %i.br
  %switch.load126 = load i8, ptr %switch.gep125, align 1
  %switch.ext127 = zext i8 %switch.load126 to i32
  tail call void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744) %2, float noundef %i.bq, i32 noundef %switch.ext127)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

bb.n:                                             ; preds = %bb.i, %bb.h
  br i1 %5, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bu = load i8, ptr %i.bt, align 4
  %i.bv = and i8 %i.bu, 12
  %i.bw = icmp eq i8 %i.bv, 12
  br i1 %i.bw, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bx = load i32, ptr %i.d, align 8
  %i.by = lshr i32 %i.bx, 12
  %i.bz = trunc i32 %i.by to i8
  %i.ca = and i8 %i.bz, 15                        ; 2 uses
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.q, label %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cc = load i32, ptr %i.bs, align 8
  %i.cd = lshr i32 %i.cc, 8
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = and i8 %i.ce, 15
  br label %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i

bb.r:                                             ; preds = %bb.o
  %i.cg = load i32, ptr %i.bs, align 8
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = lshr i8 %i.ch, 4
  br label %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i

_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.cj = phi i8 [ %i.ci, %bb.r ], [ %i.cf, %bb.q ], [ %i.ca, %bb.p ]
  switch i8 %i.cj, label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit [
    i8 8, label %bb.s
    i8 0, label %bb.s
    i8 7, label %bb.s
    i8 1, label %bb.s
    i8 4, label %bb.s
    i8 9, label %bb.t
    i8 3, label %bb.t
    i8 2, label %bb.u
    i8 5, label %bb.u
    i8 6, label %bb.u
  ]

bb.s:                                             ; preds = %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i
  tail call fastcc void @_ZN8facebook4yogaL26setFlexStartLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr noundef nonnull readonly %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %6)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

bb.t:                                             ; preds = %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i
  tail call fastcc void @_ZN8facebook4yogaL24setFlexEndLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr noundef nonnull readonly %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %6)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

bb.u:                                             ; preds = %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i
  tail call fastcc void @_ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr noundef nonnull readonly %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %6)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

._crit_edge:                                      ; preds = %bb.n
  %8 = getelementptr i8, ptr %2, i64 59
  %9 = load i8, ptr %8, align 1
  %i.ck = and i8 %9, 15                           ; 2 uses
  %i.cl = icmp eq i8 %i.ck, 0
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cn = load i32, ptr %i.cm, align 8            ; 3 uses
  %i.co = lshr i32 %i.cn, 20
  %i.cp = trunc i32 %i.co to i8
  %i.cq = and i8 %i.cp, 15
  %i.cr = select i1 %i.cl, i8 %i.cq, i8 %i.ck
  %.fr.i = freeze i8 %i.cr                        ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ct = load i8, ptr %i.cs, align 4
  %i.cu = and i8 %i.ct, 12
  %i.cv = icmp eq i8 %i.cu, 0
  %i.cw = icmp eq i8 %.fr.i, 5
  %or.cond.i.i = and i1 %i.cw, %i.cv
  %i.cx = and i32 %i.cn, 8
  %.not.not.i.i = icmp eq i32 %i.cx, 0
  %or.cond.i = select i1 %or.cond.i.i, i1 %.not.not.i.i, i1 false
  %i.cy = icmp slt i32 %i.cn, -1073741824         ; 2 uses
  br i1 %or.cond.i, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread.i, label %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i: ; preds = %._crit_edge
  br i1 %i.cy, label %bb.v, label %bb.w

_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread.i: ; preds = %._crit_edge
  br i1 %i.cy, label %.thread33.i, label %.thread30.i

bb.v:                                             ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i
  switch i8 %.fr.i, label %.thread33.i [
    i8 3, label %.thread30.i
    i8 2, label %.thread35.i
  ]

bb.w:                                             ; preds = %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.i
  switch i8 %.fr.i, label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit [
    i8 9, label %.thread30.i
    i8 0, label %.thread30.i
    i8 1, label %.thread30.i
    i8 5, label %.thread30.i
    i8 7, label %.thread30.i
    i8 6, label %.thread30.i
    i8 4, label %.thread30.i
    i8 8, label %.thread30.i
    i8 10, label %.thread33.i
    i8 3, label %.thread33.i
    i8 2, label %.thread35.i
  ]

.thread30.i:                                      ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.v, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread.i
  tail call fastcc void @_ZN8facebook4yogaL26setFlexStartLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr noundef nonnull readonly %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %6)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

.thread33.i:                                      ; preds = %bb.w, %bb.w, %bb.v, %_ZN8facebook4yoga21resolveChildAlignmentEPKNS0_4NodeES3_.exit.thread.i
  tail call fastcc void @_ZN8facebook4yogaL24setFlexEndLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr noundef nonnull readonly %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %6)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

.thread35.i:                                      ; preds = %bb.w, %bb.v
  tail call fastcc void @_ZN8facebook4yogaL23setCenterLayoutPositionEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf(ptr noundef nonnull readonly %1, ptr noundef nonnull %2, i8 noundef zeroext %3, i8 noundef zeroext %4, float noundef %6)
  br label %_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit

_ZN8facebook4yogaL20justifyAbsoluteChildEPKNS0_4NodeEPS1_NS0_9DirectionENS0_13FlexDirectionEf.exit: ; preds = %.thread35.i, %.thread33.i, %.thread30.i, %bb.w, %bb.u, %bb.t, %bb.s, %_ZN8facebook4yoga25resolveChildJustificationEPKNS0_4NodeES3_.exit.i, %switch.lookup124, %switch.lookup
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN8facebook4yoga25layoutAbsoluteDescendantsEPNS0_4NodeES2_NS0_10SizingModeENS0_9DirectionERNS0_10LayoutDataEjjffff(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(60) %4, i32 noundef %5, i32 noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"struct.facebook::yoga::LayoutableChildren<facebook::yoga::Node>::Iterator", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26, !noalias !97
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !27, !noalias !97 ; 2 uses
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %11, align 8, !tbaa !36, !alias.scope !97
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !alias.scope !97
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !37, !noalias !97
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.i = load i8, ptr %i.h, align 4, !noalias !97
  %i.j = and i8 %i.i, 12
  %i.k = icmp eq i8 %i.j, 8
  br i1 %i.k, label %bb.c, label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread, !prof !38

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8Iterator17skipContentsNodesEv(ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge unwind label %bb.d

._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %11, align 8, !tbaa !36
  %.pre274 = load i64, ptr %i.e, align 8
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !39, !alias.scope !97 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not12.i.i.i.i, label %common.resume, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.o = load ptr, ptr %.013.i.i.i.i, align 8, !tbaa !39 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i.i, i64 noundef 24) #12
  %.not.i.i.i3.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i3.i, label %common.resume, label %.lr.ph.i.i.i.i, !llvm.loop !96

common.resume:                                    ; preds = %.lr.ph.i.i.i.i, %bb.d, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit175
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp302, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit175 ], [ %i.m, %bb.d ], [ %i.m, %.lr.ph.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false), !alias.scope !97
  br label %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit

_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit: ; preds = %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge, %bb.e
  %i.p = phi i64 [ %.pre274, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge ], [ 0, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.pre, %._ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit_crit_edge ], [ null, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.not.i112264 = icmp ne ptr %i.q, null
  %i.s = icmp ne i64 %i.p, 0
  %i.t = select i1 %.not.i112264, i1 true, i1 %i.s
  br i1 %i.t, label %.lr.ph, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit

.lr.ph:                                           ; preds = %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %i.u = phi ptr [ %i.l, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.r, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ] ; 5 uses
  %i.v = phi ptr [ %1, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.q, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ]
  %i.w = phi i64 [ 0, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit.thread ], [ %i.p, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ]
  %i.x = add i32 %5, 1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 123
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 135 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 139 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 127
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 596
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 125 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 137 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = icmp eq i8 %3, 2
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 596
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.ap = insertelement <2 x float> poison, float %7, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %8, i64 1
  br label %bb.f

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.loopexit: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit
  %i.ar = trunc i8 %.2100 to i1
  br label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit: ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.loopexit, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit
  %.098.lcssa = phi i1 [ false, %_ZNK8facebook4yoga18LayoutableChildrenINS0_4NodeEE5beginEv.exit ], [ %i.ar, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %.not12.i.i.i113 = icmp eq ptr %i.at, null
  br i1 %.not12.i.i.i113, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit117, label %.lr.ph.i.i.i114

.lr.ph.i.i.i114:                                  ; preds = %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit, %.lr.ph.i.i.i114
  %.013.i.i.i115 = phi ptr [ %i.au, %.lr.ph.i.i.i114 ], [ %i.at, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit ] ; 2 uses
  %i.au = load ptr, ptr %.013.i.i.i115, align 8, !tbaa !39 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i115, i64 noundef 24) #12
  %.not.i.i.i116 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i116, label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit117, label %.lr.ph.i.i.i114, !llvm.loop !96

_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit117: ; preds = %.lr.ph.i.i.i114, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  ret i1 %.098.lcssa

bb.f:                                             ; preds = %.lr.ph, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit
  %i.av = phi i64 [ %i.w, %.lr.ph ], [ %i.kv, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 3 uses
  %i.aw = phi ptr [ %i.v, %.lr.ph ], [ %i.kw, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 2 uses
  %.098265 = phi i8 [ 0, %.lr.ph ], [ %.2100, %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorppEv.exit ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 696
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 704
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !26
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3                 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.av, %i.be
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.av, i64 noundef %i.be) #10
          to label %.noexc unwind label %_ZN8facebook4yoga18LayoutableChildrenINS0_4NodeEE8IteratorD2Ev.exit170.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
end_hunk_0
