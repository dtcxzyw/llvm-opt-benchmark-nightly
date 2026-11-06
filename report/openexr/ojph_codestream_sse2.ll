Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_codestream_sse2?download=true
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @_ZN4ojph5local19sse2_find_max_val32EPj(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 1, !tbaa !8 ; 2 uses
  %i.b = shufflevector <2 x i64> %i.a, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.c = or <2 x i64> %i.a, %i.b                  ; 2 uses
  %i.d = bitcast <2 x i64> %i.c to <4 x i32>
  %i.e = shufflevector <4 x i32> %i.d, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.f = bitcast <4 x i32> %i.e to <2 x i64>
  %i.g = or <2 x i64> %i.c, %i.f                  ; 2 uses
  store <2 x i64> %i.g, ptr %0, align 1, !tbaa !8
  %bc = bitcast <2 x i64> %i.g to <4 x i32>
  %i.h = extractelement <4 x i32> %bc, i64 0
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZN4ojph5local19sse2_find_max_val64EPm(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load <2 x i64>, ptr %0, align 1, !tbaa !8 ; 2 uses
  %i.b = shufflevector <2 x i64> %i.a, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.c = or <2 x i64> %i.a, %i.b                  ; 2 uses
  store <2 x i64> %i.c, ptr %0, align 1, !tbaa !8
  %i.d = extractelement <2 x i64> %i.c, i64 0
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ojph5local19sse2_rev_tx_to_cb32EPKvPjjfjS3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, float noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = sub i32 31, %2                           ; 4 uses
  %i.b = load <2 x i64>, ptr %5, align 1, !tbaa !8 ; 3 uses
  %i.c = icmp ugt i32 %4, 3
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add i32 %4, -4                           ; 2 uses
  %i.e = and i32 %i.d, 4
  %lcmp.mod.not.not = icmp eq i32 %i.e, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.f = load <2 x i64>, ptr %0, align 1, !tbaa !8 ; 2 uses
  %i.g = bitcast <2 x i64> %i.f to <4 x i32>      ; 2 uses
  %.lobit55.prol = ashr <4 x i32> %i.g, splat (i32 31) ; 2 uses
  %i.h = bitcast <2 x i64> %i.f to <4 x i32>
  %i.i = xor <4 x i32> %.lobit55.prol, %i.h
  %i.j = lshr <4 x i32> %i.g, splat (i32 31)
  %i.k = add <4 x i32> %i.j, %i.i
  %.inner.prol = and <4 x i32> %.lobit55.prol, splat (i32 -2147483648)
  %i.l = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.k, i32 %i.a) ; 2 uses
  %i.m = bitcast <4 x i32> %i.l to <2 x i64>
  %i.n = or <2 x i64> %i.b, %i.m                  ; 2 uses
  %.inner74.prol = or <4 x i32> %.inner.prol, %i.l
  store <4 x i32> %.inner74.prol, ptr %1, align 1, !tbaa !8
  %i.o = add i32 %4, -4                           ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.059.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.05258.unr = phi i32 [ %4, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %.05357.unr = phi <2 x i64> [ %i.b, %.lr.ph.preheader ], [ %i.n, %.lr.ph.prol ]
  %.05456.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %.lcssa79.unr = phi <2 x i64> [ poison, %.lr.ph.preheader ], [ %i.n, %.lr.ph.prol ]
  %.lcssa78.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %.lcssa77.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %i.r = icmp ult i32 %i.d, 4
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.059 = phi ptr [ %i.ao, %.lr.ph ], [ %.059.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.05258 = phi i32 [ %i.am, %.lr.ph ], [ %.05258.unr, %.lr.ph.prol.loopexit ]
  %.05357 = phi <2 x i64> [ %i.al, %.lr.ph ], [ %.05357.unr, %.lr.ph.prol.loopexit ]
  %.05456 = phi ptr [ %i.an, %.lr.ph ], [ %.05456.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.s = load <2 x i64>, ptr %.05456, align 1, !tbaa !8 ; 2 uses
  %i.t = bitcast <2 x i64> %i.s to <4 x i32>      ; 2 uses
  %.lobit55 = ashr <4 x i32> %i.t, splat (i32 31) ; 2 uses
  %i.u = bitcast <2 x i64> %i.s to <4 x i32>
  %i.v = xor <4 x i32> %.lobit55, %i.u
  %i.w = lshr <4 x i32> %i.t, splat (i32 31)
  %i.x = add <4 x i32> %i.w, %i.v
  %.inner = and <4 x i32> %.lobit55, splat (i32 -2147483648)
  %i.y = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.x, i32 %i.a) ; 2 uses
  %i.z = bitcast <4 x i32> %i.y to <2 x i64>
  %i.aa = or <2 x i64> %.05357, %i.z
  %.inner74 = or <4 x i32> %.inner, %i.y
  store <4 x i32> %.inner74, ptr %.059, align 1, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %.05456, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.059, i64 16
  %i.ad = load <2 x i64>, ptr %i.ab, align 1, !tbaa !8 ; 2 uses
  %i.ae = bitcast <2 x i64> %i.ad to <4 x i32>    ; 2 uses
  %.lobit55.1 = ashr <4 x i32> %i.ae, splat (i32 31) ; 2 uses
  %i.af = bitcast <2 x i64> %i.ad to <4 x i32>
  %i.ag = xor <4 x i32> %.lobit55.1, %i.af
  %i.ah = lshr <4 x i32> %i.ae, splat (i32 31)
  %i.ai = add <4 x i32> %i.ah, %i.ag
  %.inner.1 = and <4 x i32> %.lobit55.1, splat (i32 -2147483648)
  %i.aj = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.ai, i32 %i.a) ; 2 uses
  %i.ak = bitcast <4 x i32> %i.aj to <2 x i64>
  %i.al = or <2 x i64> %i.aa, %i.ak               ; 2 uses
  %.inner74.1 = or <4 x i32> %.inner.1, %i.aj
  store <4 x i32> %.inner74.1, ptr %i.ac, align 1, !tbaa !8
  %i.am = add i32 %.05258, -8                     ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05456, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.059, i64 32 ; 2 uses
  %i.ap = icmp ugt i32 %i.am, 3
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.054.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa77.unr, %.lr.ph.prol.loopexit ], [ %i.an, %.lr.ph ]
  %.053.lcssa = phi <2 x i64> [ %i.b, %bb.a ], [ %.lcssa79.unr, %.lr.ph.prol.loopexit ], [ %i.al, %.lr.ph ] ; 2 uses
  %.052.lcssa = phi i32 [ %4, %bb.a ], [ %.lcssa78.unr, %.lr.ph.prol.loopexit ], [ %i.am, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ao, %.lr.ph ]
  %.not = icmp eq i32 %.052.lcssa, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.aq = load <2 x i64>, ptr %.054.lcssa, align 1, !tbaa !8 ; 2 uses
  %i.ar = bitcast <2 x i64> %i.aq to <4 x i32>    ; 2 uses
  %.lobit = ashr <4 x i32> %i.ar, splat (i32 31)  ; 2 uses
  %i.as = bitcast <2 x i64> %i.aq to <4 x i32>
  %i.at = xor <4 x i32> %.lobit, %i.as
  %i.au = lshr <4 x i32> %i.ar, splat (i32 31)
  %i.av = add <4 x i32> %i.au, %i.at
  %.inner75 = and <4 x i32> %.lobit, splat (i32 -2147483648)
  %i.aw = tail call <4 x i32> @llvm.x86.sse2.pslli.d(<4 x i32> %i.av, i32 %i.a) ; 2 uses
  %i.ax = insertelement <4 x i32> poison, i32 %.052.lcssa, i64 0
  %i.ay = shufflevector <4 x i32> %i.ax, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.az = icmp samesign ugt <4 x i32> %i.ay, <i32 0, i32 1, i32 2, i32 3>
  %i.ba = select <4 x i1> %i.az, <4 x i32> %i.aw, <4 x i32> zeroinitializer
  %i.bb = bitcast <4 x i32> %i.ba to <2 x i64>
  %i.bc = or <2 x i64> %.053.lcssa, %i.bb
  %.inner76 = or <4 x i32> %.inner75, %i.aw
  store <4 x i32> %.inner76, ptr %.0.lcssa, align 1, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1 = phi <2 x i64> [ %i.bc, %bb.b ], [ %.053.lcssa, %._crit_edge ]
  store <2 x i64> %.1, ptr %5, align 1, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ojph5local19sse2_irv_tx_to_cb32EPKvPjjfjS3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, float noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = insertelement <4 x float> poison, float %3, i64 0
  %i.b = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.c = load <2 x i64>, ptr %5, align 1, !tbaa !8 ; 3 uses
  %i.d = icmp ugt i32 %4, 3
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = add i32 %4, -4                           ; 2 uses
  %i.f = and i32 %i.e, 4
  %lcmp.mod.not.not = icmp eq i32 %i.f, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.g = load <4 x float>, ptr %0, align 1, !tbaa !8
  %i.h = fmul <4 x float> %i.b, %i.g
  %i.i = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.h) ; 4 uses
  %.lobit55.prol = ashr <4 x i32> %i.i, splat (i32 31)
  %i.j = xor <4 x i32> %.lobit55.prol, %i.i
  %i.k = lshr <4 x i32> %i.i, splat (i32 31)
  %i.l = add <4 x i32> %i.j, %i.k                 ; 2 uses
  %i.m = bitcast <4 x i32> %i.l to <2 x i64>
  %i.n = or <2 x i64> %i.c, %i.m                  ; 2 uses
  %.inner.prol = and <4 x i32> %i.i, splat (i32 -2147483648)
  %.inner74.prol = or <4 x i32> %.inner.prol, %i.l
  store <4 x i32> %.inner74.prol, ptr %1, align 1, !tbaa !8
  %i.o = add i32 %4, -4                           ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.059.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.05258.unr = phi i32 [ %4, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %.05357.unr = phi <2 x i64> [ %i.c, %.lr.ph.preheader ], [ %i.n, %.lr.ph.prol ]
  %.05456.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %.lcssa79.unr = phi <2 x i64> [ poison, %.lr.ph.preheader ], [ %i.n, %.lr.ph.prol ]
  %.lcssa78.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %.lcssa77.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %i.r = icmp ult i32 %i.e, 4
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.059 = phi ptr [ %i.am, %.lr.ph ], [ %.059.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.05258 = phi i32 [ %i.ak, %.lr.ph ], [ %.05258.unr, %.lr.ph.prol.loopexit ]
  %.05357 = phi <2 x i64> [ %i.aj, %.lr.ph ], [ %.05357.unr, %.lr.ph.prol.loopexit ]
  %.05456 = phi ptr [ %i.al, %.lr.ph ], [ %.05456.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.s = load <4 x float>, ptr %.05456, align 1, !tbaa !8
  %i.t = fmul <4 x float> %i.b, %i.s
  %i.u = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.t) ; 4 uses
  %.lobit55 = ashr <4 x i32> %i.u, splat (i32 31)
  %i.v = xor <4 x i32> %.lobit55, %i.u
  %i.w = lshr <4 x i32> %i.u, splat (i32 31)
  %i.x = add <4 x i32> %i.v, %i.w                 ; 2 uses
  %i.y = bitcast <4 x i32> %i.x to <2 x i64>
  %i.z = or <2 x i64> %.05357, %i.y
  %.inner = and <4 x i32> %i.u, splat (i32 -2147483648)
  %.inner74 = or <4 x i32> %.inner, %i.x
  store <4 x i32> %.inner74, ptr %.059, align 1, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %.05456, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.059, i64 16
  %i.ac = load <4 x float>, ptr %i.aa, align 1, !tbaa !8
  %i.ad = fmul <4 x float> %i.b, %i.ac
  %i.ae = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ad) ; 4 uses
  %.lobit55.1 = ashr <4 x i32> %i.ae, splat (i32 31)
  %i.af = xor <4 x i32> %.lobit55.1, %i.ae
  %i.ag = lshr <4 x i32> %i.ae, splat (i32 31)
  %i.ah = add <4 x i32> %i.af, %i.ag              ; 2 uses
  %i.ai = bitcast <4 x i32> %i.ah to <2 x i64>
  %i.aj = or <2 x i64> %i.z, %i.ai                ; 2 uses
  %.inner.1 = and <4 x i32> %i.ae, splat (i32 -2147483648)
  %.inner74.1 = or <4 x i32> %.inner.1, %i.ah
  store <4 x i32> %.inner74.1, ptr %i.ab, align 1, !tbaa !8
  %i.ak = add i32 %.05258, -8                     ; 3 uses
end_hunk_0
