loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN4ojph5local19avx2_find_max_val32EPj(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 1, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <2 x i64>, ptr %i.b, align 1, !tbaa !8
  %i.d = or <2 x i64> %i.c, %i.a                  ; 2 uses
  %1 = bitcast <2 x i64> %i.d to <4 x i32>
  %2 = shufflevector <4 x i32> %1, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.e = bitcast <2 x i64> %i.d to <4 x i32>
  %3 = or <4 x i32> %2, %i.e                      ; 2 uses
  %4 = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %5 = or <4 x i32> %4, %3
  %6 = extractelement <4 x i32> %5, i64 0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZN4ojph5local19avx2_find_max_val64EPm(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 1, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <2 x i64>, ptr %i.b, align 1, !tbaa !8
  %i.d = or <2 x i64> %i.c, %i.a
  %i.e = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.d)
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ojph5local19avx2_rev_tx_to_cb32EPKvPjjfjS3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, float noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = sub i32 31, %2                           ; 4 uses
  %i.b = load <4 x i64>, ptr %5, align 1, !tbaa !8 ; 3 uses
  %i.c = icmp ugt i32 %4, 7
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add i32 %4, -8                           ; 2 uses
  %i.e = and i32 %i.d, 8
  %lcmp.mod.not.not = icmp eq i32 %i.e, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.f = load <4 x i64>, ptr %0, align 1, !tbaa !8 ; 2 uses
  %i.g = and <4 x i64> %i.f, splat (i64 -9223372034707292160)
  %i.h = bitcast <4 x i64> %i.f to <8 x i32>
  %i.i = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.h, i1 false)
  %i.j = tail call <8 x i32> @llvm.x86.avx2.pslli.d(<8 x i32> %i.i, i32 %i.a)
  %i.k = bitcast <8 x i32> %i.j to <4 x i64>      ; 2 uses
  %i.l = or <4 x i64> %i.b, %i.k                  ; 2 uses
  %i.m = or <4 x i64> %i.g, %i.k
  store <4 x i64> %i.m, ptr %1, align 1, !tbaa !8
  %i.n = add i32 %4, -8                           ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.044.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %.03843.unr = phi i32 [ %4, %.lr.ph.preheader ], [ %i.n, %.lr.ph.prol ]
  %.03942.unr = phi <4 x i64> [ %i.b, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %.04041.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %.lcssa61.unr = phi <4 x i64> [ poison, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %.lcssa60.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.n, %.lr.ph.prol ]
  %.lcssa59.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %i.q = icmp ult i32 %i.d, 8
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.044 = phi ptr [ %i.al, %.lr.ph ], [ %.044.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.03843 = phi i32 [ %i.aj, %.lr.ph ], [ %.03843.unr, %.lr.ph.prol.loopexit ]
  %.03942 = phi <4 x i64> [ %i.ah, %.lr.ph ], [ %.03942.unr, %.lr.ph.prol.loopexit ]
  %.04041 = phi ptr [ %i.ak, %.lr.ph ], [ %.04041.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.r = load <4 x i64>, ptr %.04041, align 1, !tbaa !8 ; 2 uses
  %i.s = and <4 x i64> %i.r, splat (i64 -9223372034707292160)
  %i.t = bitcast <4 x i64> %i.r to <8 x i32>
  %i.u = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.t, i1 false)
  %i.v = tail call <8 x i32> @llvm.x86.avx2.pslli.d(<8 x i32> %i.u, i32 %i.a)
  %i.w = bitcast <8 x i32> %i.v to <4 x i64>      ; 2 uses
  %i.x = or <4 x i64> %.03942, %i.w
  %i.y = or <4 x i64> %i.s, %i.w
  store <4 x i64> %i.y, ptr %.044, align 1, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %.04041, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.044, i64 32
  %i.ab = load <4 x i64>, ptr %i.z, align 1, !tbaa !8 ; 2 uses
  %i.ac = and <4 x i64> %i.ab, splat (i64 -9223372034707292160)
  %i.ad = bitcast <4 x i64> %i.ab to <8 x i32>
  %i.ae = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.ad, i1 false)
  %i.af = tail call <8 x i32> @llvm.x86.avx2.pslli.d(<8 x i32> %i.ae, i32 %i.a)
  %i.ag = bitcast <8 x i32> %i.af to <4 x i64>    ; 2 uses
  %i.ah = or <4 x i64> %i.x, %i.ag                ; 2 uses
  %i.ai = or <4 x i64> %i.ac, %i.ag
  store <4 x i64> %i.ai, ptr %i.aa, align 1, !tbaa !8
  %i.aj = add i32 %.03843, -16                    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.04041, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.044, i64 64 ; 2 uses
  %i.am = icmp ugt i32 %i.aj, 7
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.040.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa59.unr, %.lr.ph.prol.loopexit ], [ %i.ak, %.lr.ph ]
  %.039.lcssa = phi <4 x i64> [ %i.b, %bb.a ], [ %.lcssa61.unr, %.lr.ph.prol.loopexit ], [ %i.ah, %.lr.ph ] ; 2 uses
  %.038.lcssa = phi i32 [ %4, %bb.a ], [ %.lcssa60.unr, %.lr.ph.prol.loopexit ], [ %i.aj, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.al, %.lr.ph ]
  %.not = icmp eq i32 %.038.lcssa, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.an = load <4 x i64>, ptr %.040.lcssa, align 1, !tbaa !8 ; 2 uses
  %i.ao = and <4 x i64> %i.an, splat (i64 -9223372034707292160)
  %i.ap = bitcast <4 x i64> %i.an to <8 x i32>
  %i.aq = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.ap, i1 false)
  %i.ar = tail call <8 x i32> @llvm.x86.avx2.pslli.d(<8 x i32> %i.aq, i32 %i.a) ; 2 uses
  %i.as = bitcast <8 x i32> %i.ar to <4 x i64>
  %i.at = insertelement <8 x i32> poison, i32 %.038.lcssa, i64 0
  %i.au = shufflevector <8 x i32> %i.at, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.av = icmp samesign ugt <8 x i32> %i.au, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aw = select <8 x i1> %i.av, <8 x i32> %i.ar, <8 x i32> zeroinitializer
  %i.ax = bitcast <8 x i32> %i.aw to <4 x i64>
  %i.ay = or <4 x i64> %.039.lcssa, %i.ax
  %i.az = or <4 x i64> %i.ao, %i.as
  store <4 x i64> %i.az, ptr %.0.lcssa, align 1, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1 = phi <4 x i64> [ %i.ay, %bb.b ], [ %.039.lcssa, %._crit_edge ]
  store <4 x i64> %.1, ptr %5, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ojph5local19avx2_irv_tx_to_cb32EPKvPjjfjS3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, float noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = insertelement <8 x float> poison, float %3, i64 0
  %i.b = shufflevector <8 x float> %i.a, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.c = load <4 x i64>, ptr %5, align 1, !tbaa !8 ; 3 uses
  %i.d = icmp ugt i32 %4, 7
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = add i32 %4, -8                           ; 2 uses
  %i.f = and i32 %i.e, 8
  %lcmp.mod.not.not = icmp eq i32 %i.f, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.g = load <8 x float>, ptr %0, align 1, !tbaa !8
  %i.h = fmul <8 x float> %i.b, %i.g
  %i.i = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.h) ; 2 uses
  %.inner.prol = and <8 x i32> %i.i, splat (i32 -2147483648)
  %i.j = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.i, i1 false) ; 2 uses
  %i.k = bitcast <8 x i32> %i.j to <4 x i64>
  %i.l = or <4 x i64> %i.c, %i.k                  ; 2 uses
  %.inner61.prol = or <8 x i32> %.inner.prol, %i.j
  store <8 x i32> %.inner61.prol, ptr %1, align 1, !tbaa !8
  %i.m = add i32 %4, -8                           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.046.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %.04045.unr = phi i32 [ %4, %.lr.ph.preheader ], [ %i.m, %.lr.ph.prol ]
  %.04144.unr = phi <4 x i64> [ %i.c, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %.04243.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.n, %.lr.ph.prol ]
  %.lcssa66.unr = phi <4 x i64> [ poison, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %.lcssa65.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.m, %.lr.ph.prol ]
  %.lcssa64.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.n, %.lr.ph.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %i.p = icmp ult i32 %i.e, 8
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.046 = phi ptr [ %i.ag, %.lr.ph ], [ %.046.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.04045 = phi i32 [ %i.ae, %.lr.ph ], [ %.04045.unr, %.lr.ph.prol.loopexit ]
  %.04144 = phi <4 x i64> [ %i.ad, %.lr.ph ], [ %.04144.unr, %.lr.ph.prol.loopexit ]
  %.04243 = phi ptr [ %i.af, %.lr.ph ], [ %.04243.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.q = load <8 x float>, ptr %.04243, align 1, !tbaa !8
  %i.r = fmul <8 x float> %i.b, %i.q
  %i.s = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.r) ; 2 uses
  %.inner = and <8 x i32> %i.s, splat (i32 -2147483648)
  %i.t = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.s, i1 false) ; 2 uses
  %i.u = bitcast <8 x i32> %i.t to <4 x i64>
  %i.v = or <4 x i64> %.04144, %i.u
  %.inner61 = or <8 x i32> %.inner, %i.t
  store <8 x i32> %.inner61, ptr %.046, align 1, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %.04243, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.046, i64 32
  %i.y = load <8 x float>, ptr %i.w, align 1, !tbaa !8
  %i.z = fmul <8 x float> %i.b, %i.y
  %i.aa = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> %i.z) ; 2 uses
  %.inner.1 = and <8 x i32> %i.aa, splat (i32 -2147483648)
  %i.ab = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.aa, i1 false) ; 2 uses
  %i.ac = bitcast <8 x i32> %i.ab to <4 x i64>
  %i.ad = or <4 x i64> %i.v, %i.ac                ; 2 uses
  %.inner61.1 = or <8 x i32> %.inner.1, %i.ab
  store <8 x i32> %.inner61.1, ptr %i.x, align 1, !tbaa !8
  %i.ae = add i32 %.04045, -16                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.04243, i64 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.046, i64 64 ; 2 uses
  %i.ah = icmp ugt i32 %i.ae, 7
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.042.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa64.unr, %.lr.ph.prol.loopexit ], [ %i.af, %.lr.ph ]
  %.041.lcssa = phi <4 x i64> [ %i.c, %bb.a ], [ %.lcssa66.unr, %.lr.ph.prol.loopexit ], [ %i.ad, %.lr.ph ] ; 2 uses
  %.040.lcssa = phi i32 [ %4, %bb.a ], [ %.lcssa65.unr, %.lr.ph.prol.loopexit ], [ %i.ae, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ag, %.lr.ph ]
  %.not = icmp eq i32 %.040.lcssa, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ai = load <8 x float>, ptr %.042.lcssa, align 1, !tbaa !8
  %i.aj = fmul <8 x float> %i.b, %i.ai
end_hunk_0
begin_hunk_1_@_ZN4ojph5local21avx2_irv_tx_from_cb32EPKjPvjfj:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ojph5local19avx2_rev_tx_to_cb64EPKvPmjfjS3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, float noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = sub i32 63, %2                           ; 4 uses
  %i.b = load <4 x i64>, ptr %5, align 1, !tbaa !8 ; 3 uses
  %i.c = icmp ugt i32 %4, 3
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add i32 %4, -4                           ; 2 uses
  %i.e = and i32 %i.d, 4
  %lcmp.mod.not.not = icmp eq i32 %i.e, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.f = load <4 x i64>, ptr %0, align 1, !tbaa !8 ; 3 uses
  %.lobit55.prol = ashr <4 x i64> %i.f, splat (i64 63) ; 2 uses
  %i.g = xor <4 x i64> %.lobit55.prol, %i.f
  %i.h = lshr <4 x i64> %i.f, splat (i64 63)
  %i.i = add <4 x i64> %i.g, %i.h
  %i.j = and <4 x i64> %.lobit55.prol, splat (i64 -9223372036854775808)
  %i.k = tail call noundef <4 x i64> @llvm.x86.avx2.pslli.q(<4 x i64> %i.i, i32 %i.a) ; 2 uses
  %i.l = or <4 x i64> %i.k, %i.b                  ; 2 uses
  %i.m = or <4 x i64> %i.j, %i.k
  store <4 x i64> %i.m, ptr %1, align 1, !tbaa !8
  %i.n = add i32 %4, -4                           ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.059.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %.05258.unr = phi i32 [ %4, %.lr.ph.preheader ], [ %i.n, %.lr.ph.prol ]
  %.05357.unr = phi <4 x i64> [ %i.b, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %.05456.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %.lcssa76.unr = phi <4 x i64> [ poison, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %.lcssa75.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.n, %.lr.ph.prol ]
  %.lcssa74.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %i.q = icmp ult i32 %i.d, 4
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.059 = phi ptr [ %i.al, %.lr.ph ], [ %.059.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.05258 = phi i32 [ %i.aj, %.lr.ph ], [ %.05258.unr, %.lr.ph.prol.loopexit ]
  %.05357 = phi <4 x i64> [ %i.ah, %.lr.ph ], [ %.05357.unr, %.lr.ph.prol.loopexit ]
  %.05456 = phi ptr [ %i.ak, %.lr.ph ], [ %.05456.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.r = load <4 x i64>, ptr %.05456, align 1, !tbaa !8 ; 3 uses
  %.lobit55 = ashr <4 x i64> %i.r, splat (i64 63) ; 2 uses
  %i.s = xor <4 x i64> %.lobit55, %i.r
  %i.t = lshr <4 x i64> %i.r, splat (i64 63)
  %i.u = add <4 x i64> %i.s, %i.t
  %i.v = and <4 x i64> %.lobit55, splat (i64 -9223372036854775808)
  %i.w = tail call noundef <4 x i64> @llvm.x86.avx2.pslli.q(<4 x i64> %i.u, i32 %i.a) ; 2 uses
  %i.x = or <4 x i64> %i.w, %.05357
  %i.y = or <4 x i64> %i.v, %i.w
  store <4 x i64> %i.y, ptr %.059, align 1, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %.05456, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %.059, i64 32
  %i.ab = load <4 x i64>, ptr %i.z, align 1, !tbaa !8 ; 3 uses
  %.lobit55.1 = ashr <4 x i64> %i.ab, splat (i64 63) ; 2 uses
  %i.ac = xor <4 x i64> %.lobit55.1, %i.ab
  %i.ad = lshr <4 x i64> %i.ab, splat (i64 63)
  %i.ae = add <4 x i64> %i.ac, %i.ad
  %i.af = and <4 x i64> %.lobit55.1, splat (i64 -9223372036854775808)
  %i.ag = tail call noundef <4 x i64> @llvm.x86.avx2.pslli.q(<4 x i64> %i.ae, i32 %i.a) ; 2 uses
  %i.ah = or <4 x i64> %i.ag, %i.x                ; 2 uses
  %i.ai = or <4 x i64> %i.af, %i.ag
  store <4 x i64> %i.ai, ptr %i.aa, align 1, !tbaa !8
  %i.aj = add i32 %.05258, -8                     ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05456, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.059, i64 64 ; 2 uses
  %i.am = icmp ugt i32 %i.aj, 3
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.054.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa74.unr, %.lr.ph.prol.loopexit ], [ %i.ak, %.lr.ph ]
  %.053.lcssa = phi <4 x i64> [ %i.b, %bb.a ], [ %.lcssa76.unr, %.lr.ph.prol.loopexit ], [ %i.ah, %.lr.ph ] ; 2 uses
  %.052.lcssa = phi i32 [ %4, %bb.a ], [ %.lcssa75.unr, %.lr.ph.prol.loopexit ], [ %i.aj, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.al, %.lr.ph ]
  %.not = icmp eq i32 %.052.lcssa, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.an = load <4 x i64>, ptr %.054.lcssa, align 1, !tbaa !8 ; 3 uses
  %.lobit = ashr <4 x i64> %i.an, splat (i64 63)  ; 2 uses
  %i.ao = xor <4 x i64> %.lobit, %i.an
  %i.ap = lshr <4 x i64> %i.an, splat (i64 63)
  %i.aq = add <4 x i64> %i.ao, %i.ap
  %i.ar = and <4 x i64> %.lobit, splat (i64 -9223372036854775808)
  %i.as = tail call noundef <4 x i64> @llvm.x86.avx2.pslli.q(<4 x i64> %i.aq, i32 %i.a) ; 2 uses
  %i.at = zext nneg i32 %.052.lcssa to i64
  %i.au = insertelement <4 x i64> poison, i64 %i.at, i64 0
  %i.av = shufflevector <4 x i64> %i.au, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.aw = icmp samesign ugt <4 x i64> %i.av, <i64 0, i64 1, i64 2, i64 3>
  %i.ax = select <4 x i1> %i.aw, <4 x i64> %i.as, <4 x i64> zeroinitializer
  %i.ay = or <4 x i64> %i.ax, %.053.lcssa
  %i.az = or <4 x i64> %i.ar, %i.as
  store <4 x i64> %i.az, ptr %.0.lcssa, align 1, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1 = phi <4 x i64> [ %i.ay, %bb.b ], [ %.053.lcssa, %._crit_edge ]
  store <4 x i64> %.1, ptr %5, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ojph5local21avx2_rev_tx_from_cb64EPKmPvjfj(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = sub i32 63, %2                           ; 3 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add i32 %4, -1                           ; 2 uses
  %i.c = lshr i32 %i.b, 2                         ; 2 uses
  %i.d = add nuw nsw i32 %i.c, 1                  ; 2 uses
  %i.e = icmp eq i32 %i.c, 0
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.d, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.f = and i32 %i.b, 4
  %lcmp.mod.not.not = icmp eq i32 %i.f, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.025.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ]
  %.02124.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.ab, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod26 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.g = load <4 x i64>, ptr %.025.epil.init, align 32, !tbaa !8 ; 3 uses
  %i.h = and <4 x i64> %i.g, splat (i64 9223372036854775807)
  %i.i = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.h, i32 %i.a)
  %.lobit.epil = ashr <4 x i64> %i.g, splat (i64 63)
  %i.j = xor <4 x i64> %i.i, %.lobit.epil
  %i.k = lshr <4 x i64> %i.g, splat (i64 63)
  %i.l = add <4 x i64> %i.j, %i.k
  store <4 x i64> %i.l, ptr %.02124.epil.init, align 1, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.025 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.aa, %.lr.ph ] ; 3 uses
  %.02124 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.ab, %.lr.ph ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.m = load <4 x i64>, ptr %.025, align 32, !tbaa !8 ; 3 uses
  %i.n = and <4 x i64> %i.m, splat (i64 9223372036854775807)
  %i.o = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.n, i32 %i.a)
  %.lobit = ashr <4 x i64> %i.m, splat (i64 63)
  %i.p = xor <4 x i64> %i.o, %.lobit
  %i.q = lshr <4 x i64> %i.m, splat (i64 63)
  %i.r = add <4 x i64> %i.p, %i.q
  store <4 x i64> %i.r, ptr %.02124, align 1, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %.025, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.02124, i64 32
  %i.u = load <4 x i64>, ptr %i.s, align 32, !tbaa !8 ; 3 uses
  %i.v = and <4 x i64> %i.u, splat (i64 9223372036854775807)
  %i.w = tail call noundef <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64> %i.v, i32 %i.a)
  %.lobit.1 = ashr <4 x i64> %i.u, splat (i64 63)
  %i.x = xor <4 x i64> %i.w, %.lobit.1
  %i.y = lshr <4 x i64> %i.u, splat (i64 63)
  %i.z = add <4 x i64> %i.x, %i.y
  store <4 x i64> %i.z, ptr %i.t, align 1, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %.025, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02124, i64 64 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !17
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.abs.v8i32(<8 x i32>, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pslli.d(<8 x i32>, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.psrli.d(<8 x i32>, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.psign.d(<8 x i32>, <8 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.pslli.q(<4 x i64>, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.psrli.q(<4 x i64>, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
end_hunk_1
