Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/box_filters?download=true
inline.NumInlined: 200
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 61
begin_hunk_0_@dt_box_min:bb.a
  br i1 %exitcond.not.i.us.i, label %_ZL11_box_min_1diPKfPfi.exit.loopexit.us.i, label %_ZL11_window_minPKfi.exit.i.us.i, !llvm.loop !878

_ZL11_box_min_1diPKfPfi.exit.loopexit.us.i:       ; preds = %bb.f
  %i.dv = add nuw i64 %.062171.us.i, 1            ; 2 uses
  %exitcond240.not.i = icmp eq i64 %i.dv, %1
  br i1 %exitcond240.not.i, label %.preheader126.i, label %.lr.ph.split.us.i, !llvm.loop !879

.preheader126.i.loopexit396.unr-lcssa:            ; preds = %_ZL11_window_minPKfi.exit.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader126.i, label %_ZL11_window_minPKfi.exit.i.i.epil.preheader

_ZL11_window_minPKfi.exit.i.i.epil.preheader:     ; preds = %.preheader126.i.loopexit396.unr-lcssa, %_ZL11_window_minPKfi.exit.i.i.preheader
  %.062171.i.epil.init = phi i64 [ 0, %_ZL11_window_minPKfi.exit.i.i.preheader ], [ %i.fg, %.preheader126.i.loopexit396.unr-lcssa ]
  %lcmp.mod398 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod398)
  br label %_ZL11_window_minPKfi.exit.i.i.epil

_ZL11_window_minPKfi.exit.i.i.epil:               ; preds = %_ZL11_window_minPKfi.exit.i.i.epil, %_ZL11_window_minPKfi.exit.i.i.epil.preheader
  %.062171.i.epil = phi i64 [ %i.dy, %_ZL11_window_minPKfi.exit.i.i.epil ], [ %.062171.i.epil.init, %_ZL11_window_minPKfi.exit.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZL11_window_minPKfi.exit.i.i.epil ], [ 0, %_ZL11_window_minPKfi.exit.i.i.epil.preheader ]
  %i.dw = mul i64 %.062171.i.epil, %2
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.dx, i64 %i.q, i1 false)
  %i.dy = add nuw i64 %.062171.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader126.i, label %_ZL11_window_minPKfi.exit.i.i.epil, !llvm.loop !880

.preheader126.i:                                  ; preds = %.preheader126.i.loopexit396.unr-lcssa, %_ZL11_window_minPKfi.exit.i.i.epil, %_ZL11_box_min_1diPKfPfi.exit.loopexit.us.i, %.preheader127.i
  %i.dz = and i64 %2, -16                         ; 5 uses
  %.not191.i = icmp eq i64 %i.dz, 0
  br i1 %.not191.i, label %.preheader125.i, label %.lr.ph183.i

.lr.ph183.i:                                      ; preds = %.preheader126.i
  %i.ea = trunc i64 %1 to i32                     ; 2 uses
  %i.eb = add nsw i64 %i.i, -1                    ; 6 uses
  %i.ec = add i32 %i.b, 1
  %i.ed = tail call i32 @llvm.umin.i32(i32 %i.ec, i32 %i.ea) ; 4 uses
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %sext124.i = shl i64 %2, 32
  %i.ef = ashr exact i64 %sext124.i, 32           ; 9 uses
  %i.eg = and i64 %1, 4294967295                  ; 4 uses
  %.not212.i.i = icmp eq i32 %i.ea, 0
  %i.eh = add nuw nsw i64 %i.c, 1                 ; 2 uses
  %xtraiter413 = and i64 %i.ee, 1
  %i.ei = icmp eq i32 %i.ed, 1                    ; 0 uses
  %unroll_iter418 = and i64 %i.ee, 4294967294
  %lcmp.mod415.not = icmp eq i64 %xtraiter413, 0
  %lcmp.mod417 = trunc i32 %i.ed to i1
  %invariant.op = sub i64 1, %i.c
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.eb, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %bb.g

_ZL11_window_minPKfi.exit.i.i:                    ; preds = %_ZL11_window_minPKfi.exit.i.i, %_ZL11_window_minPKfi.exit.i.i.preheader.new
  %.062171.i = phi i64 [ 0, %_ZL11_window_minPKfi.exit.i.i.preheader.new ], [ %i.fg, %_ZL11_window_minPKfi.exit.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %_ZL11_window_minPKfi.exit.i.i.preheader.new ], [ %niter.next.7, %_ZL11_window_minPKfi.exit.i.i ]
  %i.ej = mul i64 %.062171.i, %2
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ej
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.ek, i64 %i.q, i1 false)
  %i.el = or disjoint i64 %.062171.i, 1
  %i.em = mul i64 %i.el, %2
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.em
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.en, i64 %i.q, i1 false)
  %i.eo = or disjoint i64 %.062171.i, 2
  %i.ep = mul i64 %i.eo, %2
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ep
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.eq, i64 %i.q, i1 false)
  %i.er = or disjoint i64 %.062171.i, 3
  %i.es = mul i64 %i.er, %2
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.es
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.et, i64 %i.q, i1 false)
  %i.eu = or disjoint i64 %.062171.i, 4
  %i.ev = mul i64 %i.eu, %2
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ev
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.ew, i64 %i.q, i1 false)
  %i.ex = or disjoint i64 %.062171.i, 5
  %i.ey = mul i64 %i.ex, %2
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.ez, i64 %i.q, i1 false)
  %i.fa = or disjoint i64 %.062171.i, 6
  %i.fb = mul i64 %i.fa, %2
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.fc, i64 %i.q, i1 false)
  %i.fd = or disjoint i64 %.062171.i, 7
  %i.fe = mul i64 %i.fd, %2
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fe
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.ff, i64 %i.q, i1 false)
  %i.fg = add nuw i64 %.062171.i, 8               ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader126.i.loopexit396.unr-lcssa, label %_ZL11_window_minPKfi.exit.i.i, !llvm.loop !879

.preheader125.i:                                  ; preds = %_ZL13_box_min_vertILm16EEvjPfS0_ijm.exit.i, %.preheader126.i
  %i.fh = and i64 %2, -4                          ; 2 uses
  %i.fi = icmp ult i64 %i.dz, %i.fh
  br i1 %i.fi, label %.lr.ph186.i, label %.preheader.i

.lr.ph186.i:                                      ; preds = %.preheader125.i
  %i.fj = trunc i64 %1 to i32                     ; 2 uses
  %i.fk = add nsw i64 %i.i, -1                    ; 6 uses
  %i.fl = add i32 %i.b, 1
  %i.fm = tail call i32 @llvm.umin.i32(i32 %i.fl, i32 %i.fj) ; 4 uses
  %i.fn = zext i32 %i.fm to i64                   ; 2 uses
  %sext123.i = shl i64 %2, 32
  %i.fo = ashr exact i64 %sext123.i, 32           ; 9 uses
  %i.fp = and i64 %1, 4294967295                  ; 4 uses
  %.not104.i.i = icmp eq i32 %i.fj, 0
  %i.fq = add nuw nsw i64 %i.c, 1                 ; 2 uses
  %xtraiter420 = and i64 %i.fn, 1
  %i.fr = icmp eq i32 %i.fm, 1                    ; 0 uses
  %unroll_iter427 = and i64 %i.fn, 4294967294
  %lcmp.mod424.not = icmp eq i64 %xtraiter420, 0
  %lcmp.mod426 = trunc i32 %i.fm to i1
  %invariant.op480 = sub i64 1, %i.c
  %broadcast.splatinsert274 = insertelement <8 x i64> poison, i64 %i.fk, i64 0
  %broadcast.splat275 = shufflevector <8 x i64> %broadcast.splatinsert274, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %bb.k

bb.g:                                             ; preds = %_ZL13_box_min_vertILm16EEvjPfS0_ijm.exit.i, %.lr.ph183.i
  %.061182.i = phi i64 [ 0, %.lr.ph183.i ], [ %i.mt, %_ZL13_box_min_vertILm16EEvjPfS0_ijm.exit.i ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.061182.i ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  switch i32 %i.ed, label %.lr.ph.i70.i [
    i32 0, label %.preheader.i.i
    i32 1, label %.lr.ph.i70.i.epil.preheader
  ]

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i70.i
  br i1 %lcmp.mod415.not, label %.preheader.i.i, label %.lr.ph.i70.i.epil.preheader

.lr.ph.i70.i.epil.preheader:                      ; preds = %bb.g, %.preheader.i.i.loopexit.unr-lcssa
  %.05262.i.i.epil.init = phi i64 [ 0, %bb.g ], [ %i.gy, %.preheader.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init = phi <16 x float> [ splat (float f0x7F7FFFFF), %bb.g ], [ %i.gx, %.preheader.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod417)
  %i.ft = add nuw nsw i64 %.05262.i.i.epil.init, 24
  %i.fu = mul i64 %i.ft, %i.ef
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fu
  tail call void @llvm.prefetch.p0(ptr %i.fv, i32 0, i32 0, i32 1), !noalias !946
  %i.fw = and i64 %.05262.i.i.epil.init, %i.eb
  %.idx59.i.i.epil = shl nuw nsw i64 %i.fw, 6
  %i.fx = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i.i.epil
  %i.fy = mul nsw i64 %.05262.i.i.epil.init, %i.ef
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fy ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.fx, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.fz, i64 64, i1 false), !tbaa !14, !alias.scope !949
  %i.ga = load <16 x float>, ptr %i.fz, align 4, !tbaa !14, !alias.scope !950, !noalias !951
  %i.gb = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %.epil.init, <16 x float> %i.ga)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i70.i.epil.preheader, %.preheader.i.i.loopexit.unr-lcssa, %bb.g
  %i.gc = phi <16 x float> [ splat (float f0x7F7FFFFF), %bb.g ], [ %i.gx, %.preheader.i.i.loopexit.unr-lcssa ], [ %i.gb, %.lr.ph.i70.i.epil.preheader ] ; 2 uses
  br i1 %.not212.i.i, label %_ZL13_box_min_vertILm16EEvjPfS0_ijm.exit.i, label %.lr.ph135.i.i.preheader

.lr.ph135.i.i.preheader:                          ; preds = %.preheader.i.i
  %i.gd = shufflevector <16 x float> %i.gc, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %.lr.ph135.i.i

.lr.ph.i70.i:                                     ; preds = %bb.g, %.lr.ph.i70.i
  %.05262.i.i = phi i64 [ %i.gy, %.lr.ph.i70.i ], [ 0, %bb.g ] ; 6 uses
  %i.ge = phi <16 x float> [ %i.gx, %.lr.ph.i70.i ], [ splat (float f0x7F7FFFFF), %bb.g ]
  %niter419 = phi i64 [ %niter419.next.1, %.lr.ph.i70.i ], [ 0, %bb.g ]
  %i.gf = add nuw nsw i64 %.05262.i.i, 24
  %i.gg = mul i64 %i.gf, %i.ef
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.gg
  tail call void @llvm.prefetch.p0(ptr %i.gh, i32 0, i32 0, i32 1), !noalias !946
  %i.gi = and i64 %.05262.i.i, %i.eb
  %.idx59.i.i = shl nuw nsw i64 %i.gi, 6
  %i.gj = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i.i
  %i.gk = mul nsw i64 %.05262.i.i, %i.ef
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.gk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.gj, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.gl, i64 64, i1 false), !tbaa !14, !alias.scope !949
  %i.gm = load <16 x float>, ptr %i.gl, align 4, !tbaa !14, !alias.scope !950, !noalias !951
  %i.gn = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.ge, <16 x float> %i.gm)
  %i.go = or disjoint i64 %.05262.i.i, 1          ; 2 uses
  %i.gp = add nuw nsw i64 %.05262.i.i, 25
  %i.gq = mul i64 %i.gp, %i.ef
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.gq
  tail call void @llvm.prefetch.p0(ptr %i.gr, i32 0, i32 0, i32 1), !noalias !946
  %i.gs = and i64 %i.go, %i.eb
  %.idx59.i.i.1 = shl nuw nsw i64 %i.gs, 6
  %i.gt = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i.i.1
  %i.gu = mul nsw i64 %i.go, %i.ef
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.gu ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !952)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.gt, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.gv, i64 64, i1 false), !tbaa !14, !alias.scope !953
  %i.gw = load <16 x float>, ptr %i.gv, align 4, !tbaa !14, !alias.scope !950, !noalias !954
  %i.gx = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.gn, <16 x float> %i.gw) ; 3 uses
  %i.gy = add nuw nsw i64 %.05262.i.i, 2          ; 2 uses
  %niter419.next.1 = add i64 %niter419, 2         ; 2 uses
  %niter419.ncmp.1 = icmp eq i64 %niter419.next.1, %unroll_iter418
  br i1 %niter419.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph.i70.i, !llvm.loop !888

.lr.ph135.i.i:                                    ; preds = %.lr.ph135.i.i.preheader, %bb.j
  %indvars.iv.i72.i = phi i64 [ %indvars.iv.next.i75.i, %bb.j ], [ %i.eh, %.lr.ph135.i.i.preheader ] ; 2 uses
  %.051134.i.i = phi i64 [ %i.mr, %bb.j ], [ 0, %.lr.ph135.i.i.preheader ] ; 7 uses
  %i.gz = phi <16 x float> [ %i.ms, %bb.j ], [ %i.gc, %.lr.ph135.i.i.preheader ]
  %i.ha = phi <32 x float> [ %i.mq, %bb.j ], [ %i.gd, %.lr.ph135.i.i.preheader ] ; 3 uses
  %umin.i.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i72.i, i64 %i.eg) ; 2 uses
  %i.hb = add nuw nsw i64 %.051134.i.i, 24
  %i.hc = mul i64 %i.hb, %i.ef
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.hc
  tail call void @llvm.prefetch.p0(ptr %i.hd, i32 0, i32 0, i32 1), !noalias !946
  %i.he = mul nsw i64 %.051134.i.i, %i.ef
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.he ; 2 uses
  %i.hg = shufflevector <32 x float> %i.ha, <32 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.hg, ptr %i.hf, align 4, !tbaa !14, !alias.scope !955, !noalias !946
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 32
  %i.hh = shufflevector <32 x float> %i.ha, <32 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.hh, ptr %.sroa.59.0..sroa_idx.i.i, align 4, !tbaa !14, !alias.scope !955, !noalias !946
  %.not.i73.i = icmp samesign ult i64 %.051134.i.i, %i.c
  %.pre.i.i = add nuw nsw i64 %.051134.i.i, %i.eh ; 4 uses
  br i1 %.not.i73.i, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph135.i.i
  %..i74.i = tail call i64 @llvm.umin.i64(i64 %.pre.i.i, i64 %i.eg)
  %.0109.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.051134.i.i, %invariant.op ; 4 uses
  %i.hi = icmp samesign ult i64 %.0109.reass.reass.i.reass.reass.i.reass.reass.reass, %..i74.i
  br i1 %i.hi, label %.lr.ph111.i.i.preheader, label %.loopexit.i.i

.lr.ph111.i.i.preheader:                          ; preds = %bb.h
  %5 = xor i64 %.051134.i.i, -1
  %6 = add nsw i64 %i.c, %5
  %i.hj = add i64 %umin.i.i, %6                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.hj, 8
  br i1 %min.iters.check, label %.lr.ph111.i.i.preheader374, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph111.i.i.preheader
  %n.vec = and i64 %i.hj, -8                      ; 3 uses
  %broadcast.splatinsert208 = insertelement <8 x i64> poison, i64 %.0109.reass.reass.i.reass.reass.i.reass.reass.reass, i64 0
  %broadcast.splat209 = shufflevector <8 x i64> %broadcast.splatinsert208, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat209, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.hn, %vector.body ] ; 2 uses
  %vec.phi210 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.hp, %vector.body ] ; 2 uses
  %vec.phi211 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.hr, %vector.body ] ; 2 uses
  %vec.phi212 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ht, %vector.body ] ; 2 uses
  %vec.phi213 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.hv, %vector.body ] ; 2 uses
  %vec.phi214 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.hx, %vector.body ] ; 2 uses
  %vec.phi215 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.hz, %vector.body ] ; 2 uses
  %vec.phi216 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ib, %vector.body ] ; 2 uses
  %vec.phi217 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.id, %vector.body ] ; 2 uses
  %vec.phi218 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.if, %vector.body ] ; 2 uses
  %vec.phi219 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ih, %vector.body ] ; 2 uses
  %vec.phi220 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ij, %vector.body ] ; 2 uses
  %vec.phi221 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.il, %vector.body ] ; 2 uses
  %vec.phi222 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.in, %vector.body ] ; 2 uses
  %vec.phi223 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ip, %vector.body ] ; 2 uses
  %vec.phi224 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ir, %vector.body ] ; 2 uses
  %i.hk = and <8 x i64> %vec.ind, %broadcast.splat
  %i.hl = shl <8 x i64> %i.hk, splat (i64 6)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.o, <8 x i64> %i.hl ; 16 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !956, !noalias !947
  %i.hm = freeze <8 x float> %wide.masked.gather  ; 2 uses
  %i.hn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi, <8 x float> %i.hm) ; 2 uses
  %wide.gep225 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather226 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep225, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !956, !noalias !947
  %i.ho = freeze <8 x float> %wide.masked.gather226 ; 2 uses
  %i.hp = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi210, <8 x float> %i.ho) ; 2 uses
  %wide.gep227 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather228 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep227, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !956, !noalias !947
  %i.hq = freeze <8 x float> %wide.masked.gather228 ; 2 uses
  %i.hr = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi211, <8 x float> %i.hq) ; 2 uses
  %wide.gep229 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather230 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep229, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !956, !noalias !947
  %i.hs = freeze <8 x float> %wide.masked.gather230 ; 2 uses
  %i.ht = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi212, <8 x float> %i.hs) ; 2 uses
  %wide.gep231 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  %wide.masked.gather232 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep231, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !956, !noalias !947
  %i.hu = freeze <8 x float> %wide.masked.gather232 ; 2 uses
  %i.hv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi213, <8 x float> %i.hu) ; 2 uses
  %wide.gep233 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  %wide.masked.gather234 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep233, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !956, !noalias !947
  %i.hw = freeze <8 x float> %wide.masked.gather234 ; 2 uses
  %i.hx = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi214, <8 x float> %i.hw) ; 2 uses
  %wide.gep235 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  %wide.masked.gather236 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep235, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !956, !noalias !947
  %i.hy = freeze <8 x float> %wide.masked.gather236 ; 2 uses
  %i.hz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi215, <8 x float> %i.hy) ; 2 uses
  %wide.gep237 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  %wide.masked.gather238 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep237, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !956, !noalias !947
  %i.ia = freeze <8 x float> %wide.masked.gather238 ; 2 uses
  %i.ib = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi216, <8 x float> %i.ia) ; 2 uses
  %wide.gep239 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  %wide.masked.gather240 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep239, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !956, !noalias !947
  %i.ic = freeze <8 x float> %wide.masked.gather240 ; 2 uses
  %i.id = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi217, <8 x float> %i.ic) ; 2 uses
  %wide.gep241 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 36
  %wide.masked.gather242 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep241, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !956, !noalias !947
  %i.ie = freeze <8 x float> %wide.masked.gather242 ; 2 uses
  %i.if = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi218, <8 x float> %i.ie) ; 2 uses
  %wide.gep243 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 40
  %wide.masked.gather244 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep243, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !956, !noalias !947
  %i.ig = freeze <8 x float> %wide.masked.gather244 ; 2 uses
  %i.ih = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi219, <8 x float> %i.ig) ; 2 uses
  %wide.gep245 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 44
  %wide.masked.gather246 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep245, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !956, !noalias !947
  %i.ii = freeze <8 x float> %wide.masked.gather246 ; 2 uses
  %i.ij = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi220, <8 x float> %i.ii) ; 2 uses
  %wide.gep247 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 48
  %wide.masked.gather248 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep247, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !956, !noalias !947
  %i.ik = freeze <8 x float> %wide.masked.gather248 ; 2 uses
  %i.il = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi221, <8 x float> %i.ik) ; 2 uses
  %wide.gep249 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 52
  %wide.masked.gather250 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep249, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !956, !noalias !947
  %i.im = freeze <8 x float> %wide.masked.gather250 ; 2 uses
  %i.in = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi222, <8 x float> %i.im) ; 2 uses
  %wide.gep251 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 56
  %wide.masked.gather252 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep251, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !956, !noalias !947
  %i.io = freeze <8 x float> %wide.masked.gather252 ; 2 uses
  %i.ip = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi223, <8 x float> %i.io) ; 2 uses
  %wide.gep253 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 60
  %wide.masked.gather254 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep253, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !956, !noalias !947
  %i.iq = freeze <8 x float> %wide.masked.gather254 ; 2 uses
  %i.ir = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi224, <8 x float> %i.iq) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.is = fcmp uno <8 x float> %i.hm, %i.ho
  %i.it = fcmp uno <8 x float> %i.hs, %i.hq
  %i.iu = or <8 x i1> %i.is, %i.it
  %i.iv = fcmp uno <8 x float> %i.hw, %i.hu
  %i.iw = or <8 x i1> %i.iu, %i.iv
  %i.ix = fcmp uno <8 x float> %i.ia, %i.hy
  %i.iy = or <8 x i1> %i.iw, %i.ix
  %i.iz = fcmp uno <8 x float> %i.ie, %i.ic
  %i.ja = or <8 x i1> %i.iy, %i.iz
  %i.jb = fcmp uno <8 x float> %i.ii, %i.ig
  %i.jc = or <8 x i1> %i.ja, %i.jb
  %i.jd = fcmp uno <8 x float> %i.im, %i.ik
  %i.je = or <8 x i1> %i.jc, %i.jd
  %i.jf = fcmp uno <8 x float> %i.iq, %i.io
  %i.jg = or <8 x i1> %i.je, %i.jf
  %i.jh = bitcast <8 x i1> %i.jg to i8
  %i.ji = icmp ne i8 %i.jh, 0                     ; 19 uses
  %i.jj = icmp eq i64 %index.next, %n.vec
  %i.jk = or i1 %i.ji, %i.jj
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  br i1 %i.jk, label %middle.block, label %vector.body, !llvm.loop !894

middle.block:                                     ; preds = %vector.body
  %i.jl = select i1 %i.ji, <8 x float> %vec.phi, <8 x float> %i.hn
  %i.jm = select i1 %i.ji, <8 x float> %vec.phi210, <8 x float> %i.hp
  %i.jn = select i1 %i.ji, <8 x float> %vec.phi211, <8 x float> %i.hr
  %i.jo = select i1 %i.ji, <8 x float> %vec.phi212, <8 x float> %i.ht
  %i.jp = select i1 %i.ji, <8 x float> %vec.phi213, <8 x float> %i.hv
  %i.jq = select i1 %i.ji, <8 x float> %vec.phi214, <8 x float> %i.hx
  %i.jr = select i1 %i.ji, <8 x float> %vec.phi215, <8 x float> %i.hz
  %i.js = select i1 %i.ji, <8 x float> %vec.phi216, <8 x float> %i.ib
  %i.jt = select i1 %i.ji, <8 x float> %vec.phi217, <8 x float> %i.id
  %i.ju = select i1 %i.ji, <8 x float> %vec.phi218, <8 x float> %i.if
  %i.jv = select i1 %i.ji, <8 x float> %vec.phi219, <8 x float> %i.ih
  %i.jw = select i1 %i.ji, <8 x float> %vec.phi220, <8 x float> %i.ij
  %i.jx = select i1 %i.ji, <8 x float> %vec.phi221, <8 x float> %i.il
  %i.jy = select i1 %i.ji, <8 x float> %vec.phi222, <8 x float> %i.in
  %i.jz = select i1 %i.ji, <8 x float> %vec.phi223, <8 x float> %i.ip
  %i.ka = select i1 %i.ji, <8 x float> %vec.phi224, <8 x float> %i.ir
  %i.kb = select i1 %i.ji, i64 %index, i64 %n.vec
  %i.kc = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jl) ; 2 uses
  %i.kd = add i64 %.0109.reass.reass.i.reass.reass.i.reass.reass.reass, %i.kb
  %i.ke = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jm) ; 2 uses
  %i.kf = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jn) ; 2 uses
  %i.kg = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jo) ; 2 uses
  %i.kh = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jp) ; 2 uses
  %i.ki = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jq) ; 2 uses
  %i.kj = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jr) ; 2 uses
  %i.kk = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.js) ; 2 uses
  %i.kl = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jt) ; 2 uses
  %i.km = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.ju) ; 2 uses
  %i.kn = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jv) ; 2 uses
  %i.ko = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jw) ; 2 uses
  %i.kp = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jx) ; 2 uses
  %i.kq = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jy) ; 2 uses
  %i.kr = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.jz) ; 2 uses
  %i.ks = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %i.ka) ; 2 uses
  %cmp.n = icmp ne i64 %i.hj, %n.vec
  %.not = or i1 %cmp.n, %i.ji
  %i.kt = insertelement <16 x float> poison, float %i.kc, i64 0
  %i.ku = insertelement <16 x float> %i.kt, float %i.ke, i64 1
  %i.kv = insertelement <16 x float> %i.ku, float %i.kf, i64 2
  %i.kw = insertelement <16 x float> %i.kv, float %i.kg, i64 3
  %i.kx = insertelement <16 x float> %i.kw, float %i.kh, i64 4
  %i.ky = insertelement <16 x float> %i.kx, float %i.ki, i64 5
  %i.kz = insertelement <16 x float> %i.ky, float %i.kj, i64 6
  %i.la = insertelement <16 x float> %i.kz, float %i.kk, i64 7
  %i.lb = insertelement <16 x float> %i.la, float %i.kl, i64 8
  %i.lc = insertelement <16 x float> %i.lb, float %i.km, i64 9
  %i.ld = insertelement <16 x float> %i.lc, float %i.kn, i64 10
  %i.le = insertelement <16 x float> %i.ld, float %i.ko, i64 11
  %i.lf = insertelement <16 x float> %i.le, float %i.kp, i64 12
  %i.lg = insertelement <16 x float> %i.lf, float %i.kq, i64 13
  %i.lh = insertelement <16 x float> %i.lg, float %i.kr, i64 14
  %i.li = insertelement <16 x float> %i.lh, float %i.ks, i64 15 ; 2 uses
  %i.lj = insertelement <32 x float> poison, float %i.ks, i64 0
  %i.lk = insertelement <32 x float> %i.lj, float %i.kr, i64 1
  %i.ll = insertelement <32 x float> %i.lk, float %i.kq, i64 2
  %i.lm = insertelement <32 x float> %i.ll, float %i.kp, i64 3
  %i.ln = insertelement <32 x float> %i.lm, float %i.ko, i64 4
  %i.lo = insertelement <32 x float> %i.ln, float %i.kn, i64 5
  %i.lp = insertelement <32 x float> %i.lo, float %i.km, i64 6
  %i.lq = insertelement <32 x float> %i.lp, float %i.kl, i64 7
  %i.lr = insertelement <32 x float> %i.lq, float %i.kk, i64 8
  %i.ls = insertelement <32 x float> %i.lr, float %i.kj, i64 9
  %i.lt = insertelement <32 x float> %i.ls, float %i.ki, i64 10
  %i.lu = insertelement <32 x float> %i.lt, float %i.kh, i64 11
  %i.lv = insertelement <32 x float> %i.lu, float %i.kg, i64 12
  %i.lw = insertelement <32 x float> %i.lv, float %i.kf, i64 13
  %i.lx = insertelement <32 x float> %i.lw, float %i.ke, i64 14
  %i.ly = insertelement <32 x float> %i.lx, float %i.kc, i64 15
  %i.lz = shufflevector <32 x float> %i.ly, <32 x float> poison, <32 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  br i1 %.not, label %.lr.ph111.i.i.preheader374, label %.loopexit.i.i

.lr.ph111.i.i.preheader374:                       ; preds = %.lr.ph111.i.i.preheader, %middle.block
  %.0110.i.i.ph = phi i64 [ %.0109.reass.reass.i.reass.reass.i.reass.reass.reass, %.lr.ph111.i.i.preheader ], [ %i.kd, %middle.block ]
  %.ph375 = phi <16 x float> [ splat (float f0x7F7FFFFF), %.lr.ph111.i.i.preheader ], [ %i.li, %middle.block ]
  br label %.lr.ph111.i.i

.lr.ph111.i.i:                                    ; preds = %.lr.ph111.i.i.preheader374, %.lr.ph111.i.i
  %.0110.i.i = phi i64 [ %.0.i.i, %.lr.ph111.i.i ], [ %.0110.i.i.ph, %.lr.ph111.i.i.preheader374 ] ; 2 uses
  %i.ma = phi <16 x float> [ %i.me, %.lr.ph111.i.i ], [ %.ph375, %.lr.ph111.i.i.preheader374 ]
  %i.mb = and i64 %.0110.i.i, %i.eb
  %.idx58.i.i = shl i64 %i.mb, 6
  %i.mc = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx58.i.i
  %i.md = load <16 x float>, ptr %i.mc, align 64, !tbaa !14, !alias.scope !956, !noalias !947
  %i.me = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.ma, <16 x float> %i.md) ; 3 uses
  %.0.i.i = add nuw nsw i64 %.0110.i.i, 1         ; 2 uses
  %exitcond244.not.i.i = icmp eq i64 %.0.i.i, %umin.i.i
  br i1 %exitcond244.not.i.i, label %.loopexit.i.i.loopexit, label %.lr.ph111.i.i, !llvm.loop !895

.loopexit.i.i.loopexit:                           ; preds = %.lr.ph111.i.i
  %i.mf = shufflevector <16 x float> %i.me, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit, %middle.block, %bb.h, %.lr.ph135.i.i
  %i.mg = phi <16 x float> [ %i.gz, %.lr.ph135.i.i ], [ splat (float f0x7F7FFFFF), %bb.h ], [ %i.li, %middle.block ], [ %i.me, %.loopexit.i.i.loopexit ]
  %i.mh = phi <32 x float> [ %i.ha, %.lr.ph135.i.i ], [ splat (float f0x7F7FFFFF), %bb.h ], [ %i.lz, %middle.block ], [ %i.mf, %.loopexit.i.i.loopexit ]
  %i.mi = icmp samesign ult i64 %.pre.i.i, %i.eg
  br i1 %i.mi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.mj = and i64 %.pre.i.i, %i.eb
  %.idx.i.i = shl nuw nsw i64 %i.mj, 6
  %i.mk = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i
  %i.ml = mul nsw i64 %.pre.i.i, %i.ef
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.ml ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.mk, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.mm, i64 64, i1 false), !tbaa !14, !alias.scope !958
  %i.mn = load <16 x float>, ptr %i.mm, align 4, !tbaa !14, !alias.scope !959, !noalias !960
  %i.mo = tail call reassoc nsz arcp contract afn <16 x float> @llvm.minnum.v16f32(<16 x float> %i.mg, <16 x float> %i.mn)
  %i.mp = shufflevector <16 x float> %i.mo, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit.i.i
  %i.mq = phi <32 x float> [ %i.mp, %bb.i ], [ %i.mh, %.loopexit.i.i ] ; 2 uses
  %i.mr = add nuw nsw i64 %.051134.i.i, 1         ; 2 uses
  %indvars.iv.next.i75.i = add nuw nsw i64 %indvars.iv.i72.i, 1
  %exitcond245.not.i.i = icmp eq i64 %i.mr, %i.eg
  %i.ms = shufflevector <32 x float> %i.mq, <32 x float> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br i1 %exitcond245.not.i.i, label %_ZL13_box_min_vertILm16EEvjPfS0_ijm.exit.i, label %.lr.ph135.i.i, !llvm.loop !899

_ZL13_box_min_vertILm16EEvjPfS0_ijm.exit.i:       ; preds = %bb.j, %.preheader.i.i
  %i.mt = add nuw i64 %.061182.i, 16              ; 2 uses
  %i.mu = icmp ult i64 %i.mt, %i.dz
  br i1 %i.mu, label %bb.g, label %.preheader125.i, !llvm.loop !900

.preheader.i:                                     ; preds = %_ZL13_box_min_vertILm4EEvjPfS0_ijm.exit.i, %.preheader125.i
  %.0.lcssa.i = phi i64 [ %i.dz, %.preheader125.i ], [ %i.ri, %_ZL13_box_min_vertILm4EEvjPfS0_ijm.exit.i ] ; 2 uses
  %i.mv = icmp ult i64 %.0.lcssa.i, %2
  br i1 %i.mv, label %.lr.ph190.i, label %._crit_edge.i

.lr.ph190.i:                                      ; preds = %.preheader.i
  %i.mw = trunc i64 %1 to i32                     ; 2 uses
  %i.mx = add nsw i64 %i.i, -1                    ; 8 uses
  %i.my = add i32 %i.b, 1
  %i.mz = tail call i32 @llvm.umin.i32(i32 %i.my, i32 %i.mw) ; 3 uses
  %i.na = zext i32 %i.mz to i64                   ; 2 uses
  %.not71.i.i = icmp eq i32 %i.mz, 0
  %sext.i = shl i64 %2, 32
  %i.nb = ashr exact i64 %sext.i, 32              ; 13 uses
  %i.nc = and i64 %1, 4294967295                  ; 4 uses
  %.not72.i.i = icmp eq i32 %i.mw, 0
  %i.nd = add nuw nsw i64 %i.c, 1                 ; 2 uses
  %xtraiter429 = and i64 %i.na, 3                 ; 3 uses
  %i.ne = icmp ult i32 %i.mz, 4
  %unroll_iter434 = and i64 %i.na, 4294967292
  %lcmp.mod431.not = icmp eq i64 %xtraiter429, 0
  %lcmp.mod433 = icmp ne i64 %xtraiter429, 0
  %invariant.op481 = sub i64 1, %i.c
  %broadcast.splatinsert322 = insertelement <8 x i64> poison, i64 %i.mx, i64 0
  %broadcast.splat323 = shufflevector <8 x i64> %broadcast.splatinsert322, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %bb.o

bb.k:                                             ; preds = %_ZL13_box_min_vertILm4EEvjPfS0_ijm.exit.i, %.lr.ph186.i
  %.0185.i = phi i64 [ %i.dz, %.lr.ph186.i ], [ %i.ri, %_ZL13_box_min_vertILm4EEvjPfS0_ijm.exit.i ] ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0185.i ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  switch i32 %i.fm, label %.lr.ph.i76.i [
    i32 0, label %.preheader.i80.i
    i32 1, label %.lr.ph.i76.i.epil.preheader
  ]

.preheader.i80.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i76.i
  br i1 %lcmp.mod424.not, label %.preheader.i80.i, label %.lr.ph.i76.i.epil.preheader

.lr.ph.i76.i.epil.preheader:                      ; preds = %bb.k, %.preheader.i80.i.loopexit.unr-lcssa
  %.05262.i77.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.ok, %.preheader.i80.i.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init423 = phi <4 x float> [ splat (float f0x7F7FFFFF), %bb.k ], [ %i.oj, %.preheader.i80.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod426)
  %i.ng = add nuw nsw i64 %.05262.i77.i.epil.init, 24
  %i.nh = mul i64 %i.ng, %i.fo
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.nh
  tail call void @llvm.prefetch.p0(ptr %i.ni, i32 0, i32 0, i32 1), !noalias !961
  %i.nj = and i64 %.05262.i77.i.epil.init, %i.fk
  %.idx59.i78.i.epil = shl nuw nsw i64 %i.nj, 4
  %i.nk = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i78.i.epil
  %i.nl = mul nsw i64 %.05262.i77.i.epil.init, %i.fo
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.nl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.nk, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.nm, i64 16, i1 false), !tbaa !14, !alias.scope !964
  %i.nn = load <4 x float>, ptr %i.nm, align 4, !tbaa !14, !alias.scope !965, !noalias !966
  %i.no = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %.epil.init423, <4 x float> %i.nn)
  br label %.preheader.i80.i

.preheader.i80.i:                                 ; preds = %.lr.ph.i76.i.epil.preheader, %.preheader.i80.i.loopexit.unr-lcssa, %bb.k
  %i.np = phi <4 x float> [ splat (float f0x7F7FFFFF), %bb.k ], [ %i.oj, %.preheader.i80.i.loopexit.unr-lcssa ], [ %i.no, %.lr.ph.i76.i.epil.preheader ] ; 2 uses
  br i1 %.not104.i.i, label %_ZL13_box_min_vertILm4EEvjPfS0_ijm.exit.i, label %.lr.ph90.i.i

.lr.ph.i76.i:                                     ; preds = %bb.k, %.lr.ph.i76.i
  %.05262.i77.i = phi i64 [ %i.ok, %.lr.ph.i76.i ], [ 0, %bb.k ] ; 6 uses
  %i.nq = phi <4 x float> [ %i.oj, %.lr.ph.i76.i ], [ splat (float f0x7F7FFFFF), %bb.k ]
  %niter428 = phi i64 [ %niter428.next.1, %.lr.ph.i76.i ], [ 0, %bb.k ]
  %i.nr = add nuw nsw i64 %.05262.i77.i, 24
  %i.ns = mul i64 %i.nr, %i.fo
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.ns
  tail call void @llvm.prefetch.p0(ptr %i.nt, i32 0, i32 0, i32 1), !noalias !961
  %i.nu = and i64 %.05262.i77.i, %i.fk
  %.idx59.i78.i = shl nuw nsw i64 %i.nu, 4
  %i.nv = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i78.i
  %i.nw = mul nsw i64 %.05262.i77.i, %i.fo
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.nw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(16) %i.nv, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.nx, i64 16, i1 false), !tbaa !14, !alias.scope !964
  %i.ny = load <4 x float>, ptr %i.nx, align 4, !tbaa !14, !alias.scope !965, !noalias !966
  %i.nz = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %i.nq, <4 x float> %i.ny)
  %i.oa = or disjoint i64 %.05262.i77.i, 1        ; 2 uses
  %i.ob = add nuw nsw i64 %.05262.i77.i, 25
  %i.oc = mul i64 %i.ob, %i.fo
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.oc
  tail call void @llvm.prefetch.p0(ptr %i.od, i32 0, i32 0, i32 1), !noalias !961
  %i.oe = and i64 %i.oa, %i.fk
  %.idx59.i78.i.1 = shl nuw nsw i64 %i.oe, 4
  %i.of = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i78.i.1
  %i.og = mul nsw i64 %i.oa, %i.fo
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.og ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.of, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.oh, i64 16, i1 false), !tbaa !14, !alias.scope !968
  %i.oi = load <4 x float>, ptr %i.oh, align 4, !tbaa !14, !alias.scope !965, !noalias !969
  %i.oj = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %i.nz, <4 x float> %i.oi) ; 3 uses
  %i.ok = add nuw nsw i64 %.05262.i77.i, 2        ; 2 uses
  %niter428.next.1 = add i64 %niter428, 2         ; 2 uses
  %niter428.ncmp.1 = icmp eq i64 %niter428.next.1, %unroll_iter427
  br i1 %niter428.ncmp.1, label %.preheader.i80.i.loopexit.unr-lcssa, label %.lr.ph.i76.i, !llvm.loop !908

.lr.ph90.i.i:                                     ; preds = %.preheader.i80.i, %bb.n
  %indvars.iv.i88.i = phi i64 [ %indvars.iv.next.i106.i, %bb.n ], [ %i.fq, %.preheader.i80.i ] ; 2 uses
  %.05189.i.i = phi i64 [ %i.rh, %bb.n ], [ 0, %.preheader.i80.i ] ; 7 uses
  %i.ol = phi <4 x float> [ %i.rg, %bb.n ], [ %i.np, %.preheader.i80.i ]
  %i.om = phi <4 x float> [ %i.rf, %bb.n ], [ %i.np, %.preheader.i80.i ] ; 2 uses
  %umin.i89.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i88.i, i64 %i.fp) ; 2 uses
  %i.on = add nuw nsw i64 %.05189.i.i, 24
  %i.oo = mul i64 %i.on, %i.fo
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.oo
  tail call void @llvm.prefetch.p0(ptr %i.op, i32 0, i32 0, i32 1), !noalias !961
  %i.oq = mul nsw i64 %.05189.i.i, %i.fo
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.oq
  store <4 x float> %i.om, ptr %i.or, align 4, !tbaa !14, !alias.scope !970, !noalias !961
  %.not.i93.i = icmp samesign ult i64 %.05189.i.i, %i.c
  %.pre.i94.i = add nuw nsw i64 %.05189.i.i, %i.fq ; 4 uses
  br i1 %.not.i93.i, label %.loopexit.i97.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph90.i.i
  %..i95.i = tail call i64 @llvm.umin.i64(i64 %.pre.i94.i, i64 %i.fp)
  %.077.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.05189.i.i, %invariant.op480 ; 4 uses
  %i.os = icmp samesign ult i64 %.077.reass.reass.i.reass.reass.i.reass.reass.reass, %..i95.i
  br i1 %i.os, label %.lr.ph79.i.i.preheader, label %.loopexit.i97.i

.lr.ph79.i.i.preheader:                           ; preds = %bb.l
  %7 = xor i64 %.05189.i.i, -1
  %8 = add nsw i64 %i.c, %7
  %i.ot = add i64 %umin.i89.i, %8                 ; 3 uses
  %min.iters.check271 = icmp ult i64 %i.ot, 16
  br i1 %min.iters.check271, label %.lr.ph79.i.i.preheader361, label %vector.ph272

vector.ph272:                                     ; preds = %.lr.ph79.i.i.preheader
  %n.vec273 = and i64 %i.ot, -16                  ; 3 uses
  %broadcast.splatinsert276 = insertelement <8 x i64> poison, i64 %.077.reass.reass.i.reass.reass.i.reass.reass.reass, i64 0
  %broadcast.splat277 = shufflevector <8 x i64> %broadcast.splatinsert276, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction278 = add nuw nsw <8 x i64> %broadcast.splat277, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body279

vector.body279:                                   ; preds = %vector.body279, %vector.ph272
  %index280 = phi i64 [ 0, %vector.ph272 ], [ %index.next306, %vector.body279 ] ; 2 uses
  %vec.ind281 = phi <8 x i64> [ %induction278, %vector.ph272 ], [ %vec.ind.next307, %vector.body279 ] ; 3 uses
  %vec.phi282 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph272 ], [ %i.pa, %vector.body279 ] ; 2 uses
  %vec.phi283 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph272 ], [ %i.pb, %vector.body279 ] ; 2 uses
  %vec.phi284 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph272 ], [ %i.pe, %vector.body279 ] ; 2 uses
  %vec.phi285 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph272 ], [ %i.pf, %vector.body279 ] ; 2 uses
  %vec.phi286 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph272 ], [ %i.pi, %vector.body279 ] ; 2 uses
  %vec.phi287 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph272 ], [ %i.pj, %vector.body279 ] ; 2 uses
  %vec.phi288 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph272 ], [ %i.pm, %vector.body279 ] ; 2 uses
  %vec.phi289 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph272 ], [ %i.pn, %vector.body279 ] ; 2 uses
  %step.add = add nuw nsw <8 x i64> %vec.ind281, splat (i64 8)
  %i.ou = and <8 x i64> %vec.ind281, %broadcast.splat275
  %i.ov = and <8 x i64> %step.add, %broadcast.splat275
  %i.ow = shl <8 x i64> %i.ou, splat (i64 4)
  %i.ox = shl <8 x i64> %i.ov, splat (i64 4)
  %wide.gep290 = getelementptr inbounds nuw i8, ptr %i.o, <8 x i64> %i.ow ; 4 uses
  %wide.gep291 = getelementptr inbounds nuw i8, ptr %i.o, <8 x i64> %i.ox ; 4 uses
  %wide.masked.gather292 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep290, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !971, !noalias !962
  %wide.masked.gather293 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep291, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !971, !noalias !962
  %i.oy = freeze <8 x float> %wide.masked.gather292 ; 2 uses
  %i.oz = freeze <8 x float> %wide.masked.gather293 ; 2 uses
  %i.pa = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi282, <8 x float> %i.oy) ; 2 uses
  %i.pb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi283, <8 x float> %i.oz) ; 2 uses
  %wide.gep294 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep290, i64 4
  %wide.gep295 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep291, i64 4
  %wide.masked.gather296 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep294, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !971, !noalias !962
  %wide.masked.gather297 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep295, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !971, !noalias !962
  %i.pc = freeze <8 x float> %wide.masked.gather296 ; 2 uses
  %i.pd = freeze <8 x float> %wide.masked.gather297 ; 2 uses
  %i.pe = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi284, <8 x float> %i.pc) ; 2 uses
  %i.pf = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi285, <8 x float> %i.pd) ; 2 uses
  %wide.gep298 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep290, i64 8
  %wide.gep299 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep291, i64 8
  %wide.masked.gather300 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep298, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !971, !noalias !962
  %wide.masked.gather301 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep299, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !971, !noalias !962
  %i.pg = freeze <8 x float> %wide.masked.gather300 ; 2 uses
  %i.ph = freeze <8 x float> %wide.masked.gather301 ; 2 uses
  %i.pi = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi286, <8 x float> %i.pg) ; 2 uses
  %i.pj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi287, <8 x float> %i.ph) ; 2 uses
  %wide.gep302 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep290, i64 12
  %wide.gep303 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep291, i64 12
  %wide.masked.gather304 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep302, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !971, !noalias !962
  %wide.masked.gather305 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep303, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !971, !noalias !962
  %i.pk = freeze <8 x float> %wide.masked.gather304 ; 2 uses
  %i.pl = freeze <8 x float> %wide.masked.gather305 ; 2 uses
  %i.pm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi288, <8 x float> %i.pk) ; 2 uses
  %i.pn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi289, <8 x float> %i.pl) ; 2 uses
  %index.next306 = add nuw i64 %index280, 16      ; 2 uses
  %i.po = fcmp uno <8 x float> %i.oy, %i.pc
  %i.pp = fcmp uno <8 x float> %i.oz, %i.pd
  %i.pq = fcmp uno <8 x float> %i.pk, %i.pg
  %i.pr = or <8 x i1> %i.po, %i.pq
  %i.ps = fcmp uno <8 x float> %i.pl, %i.ph
  %i.pt = or <8 x i1> %i.pp, %i.ps
  %i.pu = or <8 x i1> %i.pr, %i.pt
  %i.pv = bitcast <8 x i1> %i.pu to i8
  %i.pw = icmp ne i8 %i.pv, 0                     ; 11 uses
  %i.px = icmp eq i64 %index.next306, %n.vec273
  %i.py = or i1 %i.pw, %i.px
  %vec.ind.next307 = add nuw nsw <8 x i64> %vec.ind281, splat (i64 16)
  br i1 %i.py, label %middle.block308, label %vector.body279, !llvm.loop !914

middle.block308:                                  ; preds = %vector.body279
  %i.pz = select i1 %i.pw, <8 x float> %vec.phi282, <8 x float> %i.pa
  %i.qa = select i1 %i.pw, <8 x float> %vec.phi283, <8 x float> %i.pb
  %i.qb = select i1 %i.pw, <8 x float> %vec.phi284, <8 x float> %i.pe
  %i.qc = select i1 %i.pw, <8 x float> %vec.phi285, <8 x float> %i.pf
  %i.qd = select i1 %i.pw, <8 x float> %vec.phi286, <8 x float> %i.pi
  %i.qe = select i1 %i.pw, <8 x float> %vec.phi287, <8 x float> %i.pj
  %i.qf = select i1 %i.pw, <8 x float> %vec.phi288, <8 x float> %i.pm
  %i.qg = select i1 %i.pw, <8 x float> %vec.phi289, <8 x float> %i.pn
  %i.qh = select i1 %i.pw, i64 %index280, i64 %n.vec273
  %rdx.minmax = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.pz, <8 x float> %i.qa)
  %i.qi = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax)
  %i.qj = add i64 %.077.reass.reass.i.reass.reass.i.reass.reass.reass, %i.qh
  %rdx.minmax309 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.qb, <8 x float> %i.qc)
  %i.qk = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax309)
  %rdx.minmax310 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.qd, <8 x float> %i.qe)
  %i.ql = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax310)
  %rdx.minmax311 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.qf, <8 x float> %i.qg)
  %i.qm = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax311)
  %cmp.n312 = icmp ne i64 %i.ot, %n.vec273
  %.not352 = or i1 %cmp.n312, %i.pw
  %i.qn = insertelement <4 x float> poison, float %i.qi, i64 0
  %i.qo = insertelement <4 x float> %i.qn, float %i.qk, i64 1
  %i.qp = insertelement <4 x float> %i.qo, float %i.ql, i64 2
  %i.qq = insertelement <4 x float> %i.qp, float %i.qm, i64 3 ; 3 uses
  br i1 %.not352, label %.lr.ph79.i.i.preheader361, label %.loopexit.i97.i

.lr.ph79.i.i.preheader361:                        ; preds = %.lr.ph79.i.i.preheader, %middle.block308
  %.078.i.i.ph = phi i64 [ %.077.reass.reass.i.reass.reass.i.reass.reass.reass, %.lr.ph79.i.i.preheader ], [ %i.qj, %middle.block308 ]
  %.ph = phi <4 x float> [ splat (float f0x7F7FFFFF), %.lr.ph79.i.i.preheader ], [ %i.qq, %middle.block308 ]
  br label %.lr.ph79.i.i

.lr.ph79.i.i:                                     ; preds = %.lr.ph79.i.i.preheader361, %.lr.ph79.i.i
  %.078.i.i = phi i64 [ %.0.i109.i, %.lr.ph79.i.i ], [ %.078.i.i.ph, %.lr.ph79.i.i.preheader361 ] ; 2 uses
  %i.qr = phi <4 x float> [ %i.qv, %.lr.ph79.i.i ], [ %.ph, %.lr.ph79.i.i.preheader361 ]
  %i.qs = and i64 %.078.i.i, %i.fk
  %.idx58.i108.i = shl i64 %i.qs, 4
  %i.qt = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx58.i108.i
  %i.qu = load <4 x float>, ptr %i.qt, align 16, !tbaa !14, !alias.scope !971, !noalias !962
  %i.qv = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %i.qr, <4 x float> %i.qu) ; 3 uses
  %.0.i109.i = add nuw nsw i64 %.078.i.i, 1       ; 2 uses
  %exitcond113.not.i.i = icmp eq i64 %.0.i109.i, %umin.i89.i
  br i1 %exitcond113.not.i.i, label %.loopexit.i97.i, label %.lr.ph79.i.i, !llvm.loop !915

.loopexit.i97.i:                                  ; preds = %.lr.ph79.i.i, %middle.block308, %bb.l, %.lr.ph90.i.i
  %i.qw = phi <4 x float> [ %i.ol, %.lr.ph90.i.i ], [ splat (float f0x7F7FFFFF), %bb.l ], [ %i.qq, %middle.block308 ], [ %i.qv, %.lr.ph79.i.i ] ; 2 uses
  %i.qx = phi <4 x float> [ %i.om, %.lr.ph90.i.i ], [ splat (float f0x7F7FFFFF), %bb.l ], [ %i.qq, %middle.block308 ], [ %i.qv, %.lr.ph79.i.i ]
  %i.qy = icmp samesign ult i64 %.pre.i94.i, %i.fp
  br i1 %i.qy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit.i97.i
  %i.qz = and i64 %.pre.i94.i, %i.fk
  %.idx.i107.i = shl nuw nsw i64 %i.qz, 4
  %i.ra = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i107.i
  %i.rb = mul nsw i64 %.pre.i94.i, %i.fo
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.rb ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ra, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.rc, i64 16, i1 false), !tbaa !14, !alias.scope !973
  %i.rd = load <4 x float>, ptr %i.rc, align 4, !tbaa !14, !alias.scope !974, !noalias !975
  %i.re = tail call reassoc nsz arcp contract afn <4 x float> @llvm.minnum.v4f32(<4 x float> %i.qw, <4 x float> %i.rd) ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit.i97.i
  %i.rf = phi <4 x float> [ %i.re, %bb.m ], [ %i.qx, %.loopexit.i97.i ]
  %i.rg = phi <4 x float> [ %i.re, %bb.m ], [ %i.qw, %.loopexit.i97.i ]
  %i.rh = add nuw nsw i64 %.05189.i.i, 1          ; 2 uses
  %indvars.iv.next.i106.i = add nuw nsw i64 %indvars.iv.i88.i, 1
  %exitcond114.not.i.i = icmp eq i64 %i.rh, %i.fp
  br i1 %exitcond114.not.i.i, label %_ZL13_box_min_vertILm4EEvjPfS0_ijm.exit.i, label %.lr.ph90.i.i, !llvm.loop !919

_ZL13_box_min_vertILm4EEvjPfS0_ijm.exit.i:        ; preds = %bb.n, %.preheader.i80.i
  %i.ri = add nuw i64 %.0185.i, 4                 ; 3 uses
  %i.rj = icmp ult i64 %i.ri, %i.fh
  br i1 %i.rj, label %bb.k, label %.preheader.i, !llvm.loop !920

bb.o:                                             ; preds = %_ZL13_box_min_vertILm1EEvjPfS0_ijm.exit.i, %.lr.ph190.i
  %.1189.i = phi i64 [ %.0.lcssa.i, %.lr.ph190.i ], [ %i.vc, %_ZL13_box_min_vertILm1EEvjPfS0_ijm.exit.i ] ; 2 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.1189.i ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  br i1 %.not71.i.i, label %.preheader.i113.i, label %.lr.ph.i110.i.preheader

.lr.ph.i110.i.preheader:                          ; preds = %bb.o
  br i1 %i.ne, label %.lr.ph.i110.i.epil.preheader, label %.lr.ph.i110.i

.preheader.i113.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i110.i
  br i1 %lcmp.mod431.not, label %.preheader.i113.i, label %.lr.ph.i110.i.epil.preheader

.lr.ph.i110.i.epil.preheader:                     ; preds = %.preheader.i113.i.loopexit.unr-lcssa, %.lr.ph.i110.i.preheader
  %.05262.i111.i.epil.init = phi i64 [ 0, %.lr.ph.i110.i.preheader ], [ %i.ti, %.preheader.i113.i.loopexit.unr-lcssa ]
  %.sroa.0.161.i.i.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.i110.i.preheader ], [ %i.th, %.preheader.i113.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod433)
  br label %.lr.ph.i110.i.epil

.lr.ph.i110.i.epil:                               ; preds = %.lr.ph.i110.i.epil, %.lr.ph.i110.i.epil.preheader
  %.05262.i111.i.epil = phi i64 [ %i.ru, %.lr.ph.i110.i.epil ], [ %.05262.i111.i.epil.init, %.lr.ph.i110.i.epil.preheader ] ; 4 uses
  %.sroa.0.161.i.i.epil = phi float [ %i.rt, %.lr.ph.i110.i.epil ], [ %.sroa.0.161.i.i.epil.init, %.lr.ph.i110.i.epil.preheader ]
  %epil.iter430 = phi i64 [ %epil.iter430.next, %.lr.ph.i110.i.epil ], [ 0, %.lr.ph.i110.i.epil.preheader ]
  %i.rl = add nuw nsw i64 %.05262.i111.i.epil, 24
  %i.rm = mul i64 %i.rl, %i.nb
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.rm
  tail call void @llvm.prefetch.p0(ptr %i.rn, i32 0, i32 0, i32 1), !noalias !976
  %i.ro = and i64 %.05262.i111.i.epil, %i.mx
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ro
  %i.rq = mul nsw i64 %.05262.i111.i.epil, %i.nb
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.rq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979)
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !14, !alias.scope !980, !noalias !981 ; 2 uses
  store float %i.rs, ptr %i.rp, align 4, !tbaa !14, !alias.scope !981, !noalias !980
  %i.rt = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.0.161.i.i.epil, float %i.rs) ; 2 uses
  %i.ru = add nuw nsw i64 %.05262.i111.i.epil, 1
  %epil.iter430.next = add i64 %epil.iter430, 1   ; 2 uses
  %epil.iter430.cmp.not = icmp eq i64 %epil.iter430.next, %xtraiter429
  br i1 %epil.iter430.cmp.not, label %.preheader.i113.i, label %.lr.ph.i110.i.epil, !llvm.loop !927

.preheader.i113.i:                                ; preds = %.preheader.i113.i.loopexit.unr-lcssa, %.lr.ph.i110.i.epil, %bb.o
  %.sroa.0.1.lcssa.i.i = phi float [ f0x7F7FFFFF, %bb.o ], [ %i.th, %.preheader.i113.i.loopexit.unr-lcssa ], [ %i.rt, %.lr.ph.i110.i.epil ]
  br i1 %.not72.i.i, label %_ZL13_box_min_vertILm1EEvjPfS0_ijm.exit.i, label %.lr.ph70.i.i

.lr.ph.i110.i:                                    ; preds = %.lr.ph.i110.i.preheader, %.lr.ph.i110.i
  %.05262.i111.i = phi i64 [ %i.ti, %.lr.ph.i110.i ], [ 0, %.lr.ph.i110.i.preheader ] ; 10 uses
  %.sroa.0.161.i.i = phi float [ %i.th, %.lr.ph.i110.i ], [ f0x7F7FFFFF, %.lr.ph.i110.i.preheader ]
  %niter435 = phi i64 [ %niter435.next.3, %.lr.ph.i110.i ], [ 0, %.lr.ph.i110.i.preheader ]
  %i.rv = add nuw nsw i64 %.05262.i111.i, 24
  %i.rw = mul i64 %i.rv, %i.nb
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.rw
  tail call void @llvm.prefetch.p0(ptr %i.rx, i32 0, i32 0, i32 1), !noalias !976
  %i.ry = and i64 %.05262.i111.i, %i.mx
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ry
  %i.sa = mul nsw i64 %.05262.i111.i, %i.nb
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.sa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979)
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !14, !alias.scope !980, !noalias !981 ; 2 uses
  store float %i.sc, ptr %i.rz, align 16, !tbaa !14, !alias.scope !981, !noalias !980
  %i.sd = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.0.161.i.i, float %i.sc)
  %i.se = or disjoint i64 %.05262.i111.i, 1       ; 2 uses
  %i.sf = add nuw nsw i64 %.05262.i111.i, 25
  %i.sg = mul i64 %i.sf, %i.nb
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.sg
  tail call void @llvm.prefetch.p0(ptr %i.sh, i32 0, i32 0, i32 1), !noalias !976
  %i.si = and i64 %i.se, %i.mx
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.si
  %i.sk = mul nsw i64 %i.se, %i.nb
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.sk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !14, !alias.scope !984, !noalias !985 ; 2 uses
  store float %i.sm, ptr %i.sj, align 4, !tbaa !14, !alias.scope !985, !noalias !984
  %i.sn = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.sd, float %i.sm)
  %i.so = or disjoint i64 %.05262.i111.i, 2       ; 2 uses
  %i.sp = add nuw nsw i64 %.05262.i111.i, 26
  %i.sq = mul i64 %i.sp, %i.nb
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.sq
  tail call void @llvm.prefetch.p0(ptr %i.sr, i32 0, i32 0, i32 1), !noalias !976
  %i.ss = and i64 %i.so, %i.mx
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ss
  %i.su = mul nsw i64 %i.so, %i.nb
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.su
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !14, !alias.scope !988, !noalias !989 ; 2 uses
  store float %i.sw, ptr %i.st, align 8, !tbaa !14, !alias.scope !989, !noalias !988
  %i.sx = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.sn, float %i.sw)
  %i.sy = or disjoint i64 %.05262.i111.i, 3       ; 2 uses
  %i.sz = add nuw nsw i64 %.05262.i111.i, 27
  %i.ta = mul i64 %i.sz, %i.nb
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.ta
  tail call void @llvm.prefetch.p0(ptr %i.tb, i32 0, i32 0, i32 1), !noalias !976
  %i.tc = and i64 %i.sy, %i.mx
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.tc
  %i.te = mul nsw i64 %i.sy, %i.nb
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.te
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991)
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !14, !alias.scope !992, !noalias !993 ; 2 uses
  store float %i.tg, ptr %i.td, align 4, !tbaa !14, !alias.scope !993, !noalias !992
  %i.th = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.sx, float %i.tg) ; 3 uses
  %i.ti = add nuw nsw i64 %.05262.i111.i, 4       ; 2 uses
  %niter435.next.3 = add i64 %niter435, 4         ; 2 uses
  %niter435.ncmp.3 = icmp eq i64 %niter435.next.3, %unroll_iter434
  br i1 %niter435.ncmp.3, label %.preheader.i113.i.loopexit.unr-lcssa, label %.lr.ph.i110.i, !llvm.loop !934

.lr.ph70.i.i:                                     ; preds = %.preheader.i113.i, %bb.r
  %indvars.iv.i114.i = phi i64 [ %indvars.iv.next.i121.i, %bb.r ], [ %i.nd, %.preheader.i113.i ] ; 2 uses
  %.05169.i.i = phi i64 [ %i.vb, %bb.r ], [ 0, %.preheader.i113.i ] ; 7 uses
  %.sroa.0.268.i.i = phi float [ %.sroa.0.5.i.i, %bb.r ], [ %.sroa.0.1.lcssa.i.i, %.preheader.i113.i ] ; 2 uses
  %umin.i115.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i114.i, i64 %i.nc) ; 2 uses
  %i.tj = add nuw nsw i64 %.05169.i.i, 24
  %i.tk = mul i64 %i.tj, %i.nb
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.tk
  tail call void @llvm.prefetch.p0(ptr %i.tl, i32 0, i32 0, i32 1), !noalias !976
  %i.tm = mul nsw i64 %.05169.i.i, %i.nb
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.tm
  store float %.sroa.0.268.i.i, ptr %i.tn, align 4, !tbaa !14, !alias.scope !994, !noalias !976
  %.not.i116.i = icmp samesign ult i64 %.05169.i.i, %i.c
  %.pre.i117.i = add nuw nsw i64 %.05169.i.i, %i.nd ; 4 uses
  br i1 %.not.i116.i, label %.loopexit.i120.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph70.i.i
  %..i118.i = tail call i64 @llvm.umin.i64(i64 %.pre.i117.i, i64 %i.nc)
  %.063.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.05169.i.i, %invariant.op481 ; 4 uses
  %i.to = icmp samesign ult i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %..i118.i
  br i1 %i.to, label %.lr.ph66.i.i.preheader, label %.loopexit.i120.i

.lr.ph66.i.i.preheader:                           ; preds = %bb.p
  %9 = xor i64 %.05169.i.i, -1
  %10 = add nsw i64 %i.c, %9
  %i.tp = add i64 %umin.i115.i, %10               ; 3 uses
  %min.iters.check319 = icmp ult i64 %i.tp, 32
  br i1 %min.iters.check319, label %.lr.ph66.i.i.preheader354, label %vector.ph320

vector.ph320:                                     ; preds = %.lr.ph66.i.i.preheader
  %n.vec321 = and i64 %i.tp, -32                  ; 3 uses
  %broadcast.splatinsert324 = insertelement <8 x i64> poison, i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, i64 0
  %broadcast.splat325 = shufflevector <8 x i64> %broadcast.splatinsert324, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction326 = add nuw nsw <8 x i64> %broadcast.splat325, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body327

vector.body327:                                   ; preds = %vector.body327, %vector.ph320
  %index328 = phi i64 [ 0, %vector.ph320 ], [ %index.next343, %vector.body327 ] ; 2 uses
  %vec.ind329 = phi <8 x i64> [ %induction326, %vector.ph320 ], [ %vec.ind.next344, %vector.body327 ] ; 5 uses
  %vec.phi330 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph320 ], [ %i.ty, %vector.body327 ] ; 2 uses
  %vec.phi331 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph320 ], [ %i.tz, %vector.body327 ] ; 2 uses
  %vec.phi332 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph320 ], [ %i.ua, %vector.body327 ] ; 2 uses
  %vec.phi333 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph320 ], [ %i.ub, %vector.body327 ] ; 2 uses
  %step.add334 = add nuw nsw <8 x i64> %vec.ind329, splat (i64 8)
  %step.add.2 = add nuw nsw <8 x i64> %vec.ind329, splat (i64 16)
  %step.add.3 = add nuw nsw <8 x i64> %vec.ind329, splat (i64 24)
  %i.tq = and <8 x i64> %vec.ind329, %broadcast.splat323
  %i.tr = and <8 x i64> %step.add334, %broadcast.splat323
  %i.ts = and <8 x i64> %step.add.2, %broadcast.splat323
  %i.tt = and <8 x i64> %step.add.3, %broadcast.splat323
  %wide.gep335 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.tq
  %wide.gep336 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.tr
  %wide.gep337 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.ts
  %wide.gep338 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.tt
  %wide.masked.gather339 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep335, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !995, !noalias !977
  %wide.masked.gather340 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep336, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !995, !noalias !977
  %wide.masked.gather341 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep337, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !995, !noalias !977
  %wide.masked.gather342 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep338, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !995, !noalias !977
  %i.tu = freeze <8 x float> %wide.masked.gather339 ; 2 uses
  %i.tv = freeze <8 x float> %wide.masked.gather340 ; 2 uses
  %i.tw = freeze <8 x float> %wide.masked.gather341 ; 2 uses
  %i.tx = freeze <8 x float> %wide.masked.gather342 ; 2 uses
  %i.ty = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi330, <8 x float> %i.tu) ; 2 uses
  %i.tz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi331, <8 x float> %i.tv) ; 2 uses
  %i.ua = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi332, <8 x float> %i.tw) ; 2 uses
  %i.ub = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi333, <8 x float> %i.tx) ; 2 uses
  %index.next343 = add nuw i64 %index328, 32      ; 2 uses
  %i.uc = fcmp uno <8 x float> %i.tu, %i.tv
  %i.ud = fcmp uno <8 x float> %i.tw, %i.tx
  %i.ue = or <8 x i1> %i.uc, %i.ud
  %i.uf = bitcast <8 x i1> %i.ue to i8
  %i.ug = icmp ne i8 %i.uf, 0                     ; 7 uses
  %i.uh = icmp eq i64 %index.next343, %n.vec321
  %i.ui = or i1 %i.ug, %i.uh
  %vec.ind.next344 = add nuw nsw <8 x i64> %vec.ind329, splat (i64 32)
  br i1 %i.ui, label %middle.block345, label %vector.body327, !llvm.loop !939

middle.block345:                                  ; preds = %vector.body327
  %i.uj = select i1 %i.ug, <8 x float> %vec.phi330, <8 x float> %i.ty
  %i.uk = select i1 %i.ug, <8 x float> %vec.phi331, <8 x float> %i.tz
  %i.ul = select i1 %i.ug, <8 x float> %vec.phi332, <8 x float> %i.ua
  %i.um = select i1 %i.ug, <8 x float> %vec.phi333, <8 x float> %i.ub
  %i.un = select i1 %i.ug, i64 %index328, i64 %n.vec321
  %rdx.minmax346 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.uj, <8 x float> %i.uk)
  %rdx.minmax347 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax346, <8 x float> %i.ul)
  %rdx.minmax348 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax347, <8 x float> %i.um)
  %i.uo = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax348) ; 2 uses
  %i.up = add i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %i.un
  %cmp.n349 = icmp ne i64 %i.tp, %n.vec321
  %.not353 = or i1 %cmp.n349, %i.ug
  br i1 %.not353, label %.lr.ph66.i.i.preheader354, label %.loopexit.i120.i

.lr.ph66.i.i.preheader354:                        ; preds = %.lr.ph66.i.i.preheader, %middle.block345
  %.065.i.i.ph = phi i64 [ %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %.lr.ph66.i.i.preheader ], [ %i.up, %middle.block345 ]
  %.sroa.0.364.i.i.ph = phi float [ f0x7F7FFFFF, %.lr.ph66.i.i.preheader ], [ %i.uo, %middle.block345 ]
  br label %.lr.ph66.i.i

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i.preheader354, %.lr.ph66.i.i
  %.065.i.i = phi i64 [ %.0.i122.i, %.lr.ph66.i.i ], [ %.065.i.i.ph, %.lr.ph66.i.i.preheader354 ] ; 2 uses
  %.sroa.0.364.i.i = phi float [ %i.ut, %.lr.ph66.i.i ], [ %.sroa.0.364.i.i.ph, %.lr.ph66.i.i.preheader354 ]
  %i.uq = and i64 %.065.i.i, %i.mx
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.uq
  %i.us = load float, ptr %i.ur, align 4, !tbaa !14, !alias.scope !995, !noalias !977
  %i.ut = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.0.364.i.i, float %i.us) ; 2 uses
  %.0.i122.i = add nuw nsw i64 %.065.i.i, 1       ; 2 uses
  %exitcond74.not.i.i = icmp eq i64 %.0.i122.i, %umin.i115.i
  br i1 %exitcond74.not.i.i, label %.loopexit.i120.i, label %.lr.ph66.i.i, !llvm.loop !940

.loopexit.i120.i:                                 ; preds = %.lr.ph66.i.i, %middle.block345, %bb.p, %.lr.ph70.i.i
  %.sroa.0.4.i.i = phi nsz float [ %.sroa.0.268.i.i, %.lr.ph70.i.i ], [ f0x7F7FFFFF, %bb.p ], [ %i.uo, %middle.block345 ], [ %i.ut, %.lr.ph66.i.i ] ; 2 uses
  %i.uu = icmp samesign ult i64 %.pre.i117.i, %i.nc
  br i1 %i.uu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit.i120.i
  %i.uv = and i64 %.pre.i117.i, %i.mx
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.uv
  %i.ux = mul nsw i64 %.pre.i117.i, %i.nb
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.ux
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !14, !alias.scope !998, !noalias !999 ; 2 uses
  store float %i.uz, ptr %i.uw, align 4, !tbaa !14, !alias.scope !999, !noalias !998
  %i.va = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.0.4.i.i, float %i.uz)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit.i120.i
  %.sroa.0.5.i.i = phi nsz float [ %i.va, %bb.q ], [ %.sroa.0.4.i.i, %.loopexit.i120.i ]
  %i.vb = add nuw nsw i64 %.05169.i.i, 1          ; 2 uses
  %indvars.iv.next.i121.i = add nuw nsw i64 %indvars.iv.i114.i, 1
  %exitcond75.not.i.i = icmp eq i64 %i.vb, %i.nc
  br i1 %exitcond75.not.i.i, label %_ZL13_box_min_vertILm1EEvjPfS0_ijm.exit.i, label %.lr.ph70.i.i, !llvm.loop !944

_ZL13_box_min_vertILm1EEvjPfS0_ijm.exit.i:        ; preds = %bb.r, %.preheader.i113.i
  %i.vc = add nuw i64 %.1189.i, 1                 ; 2 uses
  %exitcond241.not.i = icmp eq i64 %i.vc, %2
  br i1 %exitcond241.not.i, label %._crit_edge.i, label %bb.o, !llvm.loop !945

._crit_edge.i:                                    ; preds = %_ZL13_box_min_vertILm1EEvjPfS0_ijm.exit.i, %.preheader.i
  tail call void @free(ptr noundef %i.o) #11
  br label %_ZL12_box_min_1chPfmmj.exit

bb.s:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 701, ptr noundef nonnull @__FUNCTION__.dt_box_min)
  unreachable

_ZL12_box_min_1chPfmmj.exit:                      ; preds = %._crit_edge.i, %_ZL25_compute_effective_heightmm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @dt_box_max(ptr nofree noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %4 to i32                      ; 6 uses
  %i.c = and i64 %4, 4294967295                   ; 13 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZL25_compute_effective_heightmm.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.d = shl nuw nsw i64 %i.c, 1
  %i.e = or disjoint i64 %i.d, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.011.i.i = phi i64 [ %i.g, %.lr.ph.i.i ], [ %i.e, %.lr.ph.preheader.i.i ] ; 2 uses
  %.0910.i.i = phi i64 [ %i.f, %.lr.ph.i.i ], [ 2, %.lr.ph.preheader.i.i ]
  %i.f = shl nuw nsw i64 %.0910.i.i, 1            ; 2 uses
  %i.g = lshr i64 %.011.i.i, 1
  %i.h = icmp samesign ugt i64 %.011.i.i, 3
  br i1 %i.h, label %.lr.ph.i.i, label %_ZL25_compute_effective_heightmm.exit.i, !llvm.loop !0

_ZL25_compute_effective_heightmm.exit.i:          ; preds = %.lr.ph.i.i, %bb.b
  %.09.lcssa.i.i = phi i64 [ 2, %bb.b ], [ %i.f, %.lr.ph.i.i ]
  %i.i = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 %.09.lcssa.i.i, i64 %1) ; 4 uses
  %i.j = shl i64 %i.i, 4
  %i.k = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %..i = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.k)
  %i.l = shl i64 %..i, 2
  %i.m = add i64 %i.l, 60
  %i.n = and i64 %i.m, -64
  %i.o = tail call noundef ptr @dt_alloc_aligned(i64 noundef %i.n) ; 49 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64) ]
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZL12_box_max_1chPfmmj.exit, label %.preheader125.i

.preheader125.i:                                  ; preds = %_ZL25_compute_effective_heightmm.exit.i
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.preheader124.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader125.i
  %i.q = shl i64 %2, 2                            ; 10 uses
  %i.r = trunc i64 %2 to i32                      ; 5 uses
  %i.s = add i32 %i.b, 1                          ; 2 uses
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.r) ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  %wide.trip.count.i.i.i = zext i32 %i.t to i64   ; 2 uses
  %i.v = icmp sgt i32 %i.r, 0
  %i.w = add i32 %i.b, 2
  %sext = shl i64 %4, 32
  %i.x = ashr exact i64 %sext, 32
  %wide.trip.count.i.i = and i64 %2, 2147483647
  br i1 %i.v, label %.lr.ph.split.us.i.preheader, label %_ZL11_window_maxPKfi.exit.i.i.preheader

_ZL11_window_maxPKfi.exit.i.i.preheader:          ; preds = %.lr.ph.i
  %xtraiter = and i64 %1, 7                       ; 3 uses
  %i.y = icmp ult i64 %1, 8
  br i1 %i.y, label %_ZL11_window_maxPKfi.exit.i.i.epil.preheader, label %_ZL11_window_maxPKfi.exit.i.i.preheader.new

_ZL11_window_maxPKfi.exit.i.i.preheader.new:      ; preds = %_ZL11_window_maxPKfi.exit.i.i.preheader
  %unroll_iter = and i64 %1, -8
  br label %_ZL11_window_maxPKfi.exit.i.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %i.z = add i64 %4, 2
  %i.aa = add i64 %4, 4294967295
  %xtraiter399 = and i64 %wide.trip.count.i.i.i, 7 ; 3 uses
  %i.ab = icmp ult i32 %i.t, 8
  %unroll_iter404 = and i64 %wide.trip.count.i.i.i, 2147483640
  %lcmp.mod401.not = icmp eq i64 %xtraiter399, 0
  %lcmp.mod403 = icmp ne i64 %xtraiter399, 0
  br label %.lr.ph.split.us.i

end_hunk_0
begin_hunk_1_@dt_box_max:bb.a
  br i1 %exitcond.not.i.us.i, label %_ZL10box_max_1diPKfPfi.exit.loopexit.us.i, label %_ZL11_window_maxPKfi.exit.i.us.i, !llvm.loop !1006

_ZL10box_max_1diPKfPfi.exit.loopexit.us.i:        ; preds = %bb.f
  %i.dv = add nuw i64 %.062169.us.i, 1            ; 2 uses
  %exitcond238.not.i = icmp eq i64 %i.dv, %1
  br i1 %exitcond238.not.i, label %.preheader124.i, label %.lr.ph.split.us.i, !llvm.loop !1007

.preheader124.i.loopexit396.unr-lcssa:            ; preds = %_ZL11_window_maxPKfi.exit.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader124.i, label %_ZL11_window_maxPKfi.exit.i.i.epil.preheader

_ZL11_window_maxPKfi.exit.i.i.epil.preheader:     ; preds = %.preheader124.i.loopexit396.unr-lcssa, %_ZL11_window_maxPKfi.exit.i.i.preheader
  %.062169.i.epil.init = phi i64 [ 0, %_ZL11_window_maxPKfi.exit.i.i.preheader ], [ %i.ff, %.preheader124.i.loopexit396.unr-lcssa ]
  %lcmp.mod398 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod398)
  br label %_ZL11_window_maxPKfi.exit.i.i.epil

_ZL11_window_maxPKfi.exit.i.i.epil:               ; preds = %_ZL11_window_maxPKfi.exit.i.i.epil, %_ZL11_window_maxPKfi.exit.i.i.epil.preheader
  %.062169.i.epil = phi i64 [ %i.dy, %_ZL11_window_maxPKfi.exit.i.i.epil ], [ %.062169.i.epil.init, %_ZL11_window_maxPKfi.exit.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZL11_window_maxPKfi.exit.i.i.epil ], [ 0, %_ZL11_window_maxPKfi.exit.i.i.epil.preheader ]
  %i.dw = mul i64 %.062169.i.epil, %2
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.dx, i64 %i.q, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %i.dy = add nuw i64 %.062169.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader124.i, label %_ZL11_window_maxPKfi.exit.i.i.epil, !llvm.loop !1008

.preheader124.i:                                  ; preds = %.preheader124.i.loopexit396.unr-lcssa, %_ZL11_window_maxPKfi.exit.i.i.epil, %_ZL10box_max_1diPKfPfi.exit.loopexit.us.i, %.preheader125.i
  %i.dz = and i64 %2, -16                         ; 5 uses
  %.not189.i = icmp eq i64 %i.dz, 0
  br i1 %.not189.i, label %.preheader123.i, label %.lr.ph181.i

.lr.ph181.i:                                      ; preds = %.preheader124.i
  %i.ea = trunc i64 %1 to i32                     ; 2 uses
  %i.eb = add nsw i64 %i.i, -1                    ; 6 uses
  %i.ec = add i32 %i.b, 1
  %i.ed = tail call i32 @llvm.umin.i32(i32 %i.ec, i32 %i.ea) ; 4 uses
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = and i64 %1, 4294967295                  ; 4 uses
  %.not212.i.i = icmp eq i32 %i.ea, 0
  %i.eg = add nuw nsw i64 %i.c, 1                 ; 2 uses
  %xtraiter413 = and i64 %i.ee, 1
  %i.eh = icmp eq i32 %i.ed, 1                    ; 0 uses
  %unroll_iter418 = and i64 %i.ee, 4294967294
  %lcmp.mod415.not = icmp eq i64 %xtraiter413, 0
  %lcmp.mod417 = trunc i32 %i.ed to i1
  %invariant.op = sub i64 1, %i.c
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.eb, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %bb.g

_ZL11_window_maxPKfi.exit.i.i:                    ; preds = %_ZL11_window_maxPKfi.exit.i.i, %_ZL11_window_maxPKfi.exit.i.i.preheader.new
  %.062169.i = phi i64 [ 0, %_ZL11_window_maxPKfi.exit.i.i.preheader.new ], [ %i.ff, %_ZL11_window_maxPKfi.exit.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %_ZL11_window_maxPKfi.exit.i.i.preheader.new ], [ %niter.next.7, %_ZL11_window_maxPKfi.exit.i.i ]
  %i.ei = mul i64 %.062169.i, %2
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ei
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.ej, i64 %i.q, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %i.ek = or disjoint i64 %.062169.i, 1
  %i.el = mul i64 %i.ek, %2
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.el
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.em, i64 %i.q, i1 false)
  %i.en = or disjoint i64 %.062169.i, 2
  %i.eo = mul i64 %i.en, %2
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eo
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.ep, i64 %i.q, i1 false)
  %i.eq = or disjoint i64 %.062169.i, 3
  %i.er = mul i64 %i.eq, %2
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.er
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.es, i64 %i.q, i1 false)
  %i.et = or disjoint i64 %.062169.i, 4
  %i.eu = mul i64 %i.et, %2
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eu
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.ev, i64 %i.q, i1 false)
  %i.ew = or disjoint i64 %.062169.i, 5
  %i.ex = mul i64 %i.ew, %2
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ex
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.ey, i64 %i.q, i1 false)
  %i.ez = or disjoint i64 %.062169.i, 6
  %i.fa = mul i64 %i.ez, %2
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.fb, i64 %i.q, i1 false)
  %i.fc = or disjoint i64 %.062169.i, 7
  %i.fd = mul i64 %i.fc, %2
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.fe, i64 %i.q, i1 false)
  %i.ff = add nuw i64 %.062169.i, 8               ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader124.i.loopexit396.unr-lcssa, label %_ZL11_window_maxPKfi.exit.i.i, !llvm.loop !1007

.preheader123.i:                                  ; preds = %_ZL13_box_max_vertILm16EEvjPfS0_mjm.exit.i, %.preheader124.i
  %i.fg = and i64 %2, -4                          ; 2 uses
  %i.fh = icmp ult i64 %i.dz, %i.fg
  br i1 %i.fh, label %.lr.ph184.i, label %.preheader.i

.lr.ph184.i:                                      ; preds = %.preheader123.i
  %i.fi = trunc i64 %1 to i32                     ; 2 uses
  %i.fj = add nsw i64 %i.i, -1                    ; 6 uses
  %i.fk = add i32 %i.b, 1
  %i.fl = tail call i32 @llvm.umin.i32(i32 %i.fk, i32 %i.fi) ; 4 uses
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = and i64 %1, 4294967295                  ; 4 uses
  %.not104.i.i = icmp eq i32 %i.fi, 0
  %i.fo = add nuw nsw i64 %i.c, 1                 ; 2 uses
  %xtraiter420 = and i64 %i.fm, 1
  %i.fp = icmp eq i32 %i.fl, 1                    ; 0 uses
  %unroll_iter427 = and i64 %i.fm, 4294967294
  %lcmp.mod424.not = icmp eq i64 %xtraiter420, 0
  %lcmp.mod426 = trunc i32 %i.fl to i1
  %invariant.op480 = sub i64 1, %i.c
  %broadcast.splatinsert274 = insertelement <8 x i64> poison, i64 %i.fj, i64 0
  %broadcast.splat275 = shufflevector <8 x i64> %broadcast.splatinsert274, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %bb.k

bb.g:                                             ; preds = %_ZL13_box_max_vertILm16EEvjPfS0_mjm.exit.i, %.lr.ph181.i
  %.061180.i = phi i64 [ 0, %.lr.ph181.i ], [ %i.mr, %_ZL13_box_max_vertILm16EEvjPfS0_mjm.exit.i ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.061180.i ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  switch i32 %i.ed, label %.lr.ph.i70.i [
    i32 0, label %.preheader.i.i
    i32 1, label %.lr.ph.i70.i.epil.preheader
  ]

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i70.i
  br i1 %lcmp.mod415.not, label %.preheader.i.i, label %.lr.ph.i70.i.epil.preheader

.lr.ph.i70.i.epil.preheader:                      ; preds = %bb.g, %.preheader.i.i.loopexit.unr-lcssa
  %.05262.i.i.epil.init = phi i64 [ 0, %bb.g ], [ %i.gw, %.preheader.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init = phi <16 x float> [ splat (float f0xFF7FFFFF), %bb.g ], [ %i.gv, %.preheader.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod417)
  %i.fr = add nuw nsw i64 %.05262.i.i.epil.init, 24
  %i.fs = mul i64 %i.fr, %2
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fs
  tail call void @llvm.prefetch.p0(ptr %i.ft, i32 0, i32 0, i32 1), !noalias !1076
  %i.fu = and i64 %.05262.i.i.epil.init, %i.eb
  %.idx59.i.i.epil = shl nuw nsw i64 %i.fu, 6
  %i.fv = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i.i.epil
  %i.fw = mul i64 %.05262.i.i.epil.init, %2
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.fv, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.fx, i64 64, i1 false), !tbaa !14, !alias.scope !1079
  %i.fy = load <16 x float>, ptr %i.fx, align 4, !tbaa !14, !alias.scope !1080, !noalias !1081
  %i.fz = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %.epil.init, <16 x float> %i.fy)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i70.i.epil.preheader, %.preheader.i.i.loopexit.unr-lcssa, %bb.g
  %i.ga = phi <16 x float> [ splat (float f0xFF7FFFFF), %bb.g ], [ %i.gv, %.preheader.i.i.loopexit.unr-lcssa ], [ %i.fz, %.lr.ph.i70.i.epil.preheader ] ; 2 uses
  br i1 %.not212.i.i, label %_ZL13_box_max_vertILm16EEvjPfS0_mjm.exit.i, label %.lr.ph135.i.i.preheader

.lr.ph135.i.i.preheader:                          ; preds = %.preheader.i.i
  %i.gb = shufflevector <16 x float> %i.ga, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %.lr.ph135.i.i

.lr.ph.i70.i:                                     ; preds = %bb.g, %.lr.ph.i70.i
  %.05262.i.i = phi i64 [ %i.gw, %.lr.ph.i70.i ], [ 0, %bb.g ] ; 6 uses
  %i.gc = phi <16 x float> [ %i.gv, %.lr.ph.i70.i ], [ splat (float f0xFF7FFFFF), %bb.g ]
  %niter419 = phi i64 [ %niter419.next.1, %.lr.ph.i70.i ], [ 0, %bb.g ]
  %i.gd = add nuw nsw i64 %.05262.i.i, 24
  %i.ge = mul i64 %i.gd, %2
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.ge
  tail call void @llvm.prefetch.p0(ptr %i.gf, i32 0, i32 0, i32 1), !noalias !1076
  %i.gg = and i64 %.05262.i.i, %i.eb
  %.idx59.i.i = shl nuw nsw i64 %i.gg, 6
  %i.gh = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i.i
  %i.gi = mul i64 %.05262.i.i, %2
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.gi ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.gh, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.gj, i64 64, i1 false), !tbaa !14, !alias.scope !1079
  %i.gk = load <16 x float>, ptr %i.gj, align 4, !tbaa !14, !alias.scope !1080, !noalias !1081
  %i.gl = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.gc, <16 x float> %i.gk)
  %i.gm = or disjoint i64 %.05262.i.i, 1          ; 2 uses
  %i.gn = add nuw nsw i64 %.05262.i.i, 25
  %i.go = mul i64 %i.gn, %2
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.go
  tail call void @llvm.prefetch.p0(ptr %i.gp, i32 0, i32 0, i32 1), !noalias !1076
  %i.gq = and i64 %i.gm, %i.eb
  %.idx59.i.i.1 = shl nuw nsw i64 %i.gq, 6
  %i.gr = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i.i.1
  %i.gs = mul i64 %i.gm, %2
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.gs ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1082)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.gr, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.gt, i64 64, i1 false), !tbaa !14, !alias.scope !1083
  %i.gu = load <16 x float>, ptr %i.gt, align 4, !tbaa !14, !alias.scope !1080, !noalias !1084
  %i.gv = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.gl, <16 x float> %i.gu) ; 3 uses
  %i.gw = add nuw nsw i64 %.05262.i.i, 2          ; 2 uses
  %niter419.next.1 = add i64 %niter419, 2         ; 2 uses
  %niter419.ncmp.1 = icmp eq i64 %niter419.next.1, %unroll_iter418
  br i1 %niter419.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph.i70.i, !llvm.loop !1016

.lr.ph135.i.i:                                    ; preds = %.lr.ph135.i.i.preheader, %bb.j
  %indvars.iv.i72.i = phi i64 [ %indvars.iv.next.i75.i, %bb.j ], [ %i.eg, %.lr.ph135.i.i.preheader ] ; 2 uses
  %.051134.i.i = phi i64 [ %i.mp, %bb.j ], [ 0, %.lr.ph135.i.i.preheader ] ; 7 uses
  %i.gx = phi <16 x float> [ %i.mq, %bb.j ], [ %i.ga, %.lr.ph135.i.i.preheader ]
  %i.gy = phi <32 x float> [ %i.mo, %bb.j ], [ %i.gb, %.lr.ph135.i.i.preheader ] ; 3 uses
  %umin.i.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i72.i, i64 %i.ef) ; 2 uses
  %i.gz = add nuw nsw i64 %.051134.i.i, 24
  %i.ha = mul i64 %i.gz, %2
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.ha
  tail call void @llvm.prefetch.p0(ptr %i.hb, i32 0, i32 0, i32 1), !noalias !1076
  %i.hc = mul i64 %.051134.i.i, %2
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.hc ; 2 uses
  %i.he = shufflevector <32 x float> %i.gy, <32 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.he, ptr %i.hd, align 4, !tbaa !14, !alias.scope !1085, !noalias !1076
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = shufflevector <32 x float> %i.gy, <32 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.hf, ptr %.sroa.59.0..sroa_idx.i.i, align 4, !tbaa !14, !alias.scope !1085, !noalias !1076
  %.not.i73.i = icmp samesign ult i64 %.051134.i.i, %i.c
  %.pre.i.i = add nuw nsw i64 %.051134.i.i, %i.eg ; 4 uses
  br i1 %.not.i73.i, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph135.i.i
  %..i74.i = tail call i64 @llvm.umin.i64(i64 %.pre.i.i, i64 %i.ef)
  %.0109.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.051134.i.i, %invariant.op ; 4 uses
  %i.hg = icmp samesign ult i64 %.0109.reass.reass.i.reass.reass.i.reass.reass.reass, %..i74.i
  br i1 %i.hg, label %.lr.ph111.i.i.preheader, label %.loopexit.i.i

.lr.ph111.i.i.preheader:                          ; preds = %bb.h
  %5 = xor i64 %.051134.i.i, -1
  %6 = add nsw i64 %i.c, %5
  %i.hh = add i64 %umin.i.i, %6                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.hh, 8
  br i1 %min.iters.check, label %.lr.ph111.i.i.preheader374, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph111.i.i.preheader
  %n.vec = and i64 %i.hh, -8                      ; 3 uses
  %broadcast.splatinsert208 = insertelement <8 x i64> poison, i64 %.0109.reass.reass.i.reass.reass.i.reass.reass.reass, i64 0
  %broadcast.splat209 = shufflevector <8 x i64> %broadcast.splatinsert208, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat209, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hl, %vector.body ] ; 2 uses
  %vec.phi210 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hn, %vector.body ] ; 2 uses
  %vec.phi211 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hp, %vector.body ] ; 2 uses
  %vec.phi212 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hr, %vector.body ] ; 2 uses
  %vec.phi213 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.ht, %vector.body ] ; 2 uses
  %vec.phi214 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hv, %vector.body ] ; 2 uses
  %vec.phi215 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hx, %vector.body ] ; 2 uses
  %vec.phi216 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.hz, %vector.body ] ; 2 uses
  %vec.phi217 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.ib, %vector.body ] ; 2 uses
  %vec.phi218 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.id, %vector.body ] ; 2 uses
  %vec.phi219 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.if, %vector.body ] ; 2 uses
  %vec.phi220 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.ih, %vector.body ] ; 2 uses
  %vec.phi221 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.ij, %vector.body ] ; 2 uses
  %vec.phi222 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.il, %vector.body ] ; 2 uses
  %vec.phi223 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.in, %vector.body ] ; 2 uses
  %vec.phi224 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph ], [ %i.ip, %vector.body ] ; 2 uses
  %i.hi = and <8 x i64> %vec.ind, %broadcast.splat
  %i.hj = shl <8 x i64> %i.hi, splat (i64 6)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.o, <8 x i64> %i.hj ; 16 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1086, !noalias !1077
  %i.hk = freeze <8 x float> %wide.masked.gather  ; 2 uses
  %i.hl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi, <8 x float> %i.hk) ; 2 uses
  %wide.gep225 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather226 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep225, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1086, !noalias !1077
  %i.hm = freeze <8 x float> %wide.masked.gather226 ; 2 uses
  %i.hn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi210, <8 x float> %i.hm) ; 2 uses
  %wide.gep227 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather228 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep227, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1086, !noalias !1077
  %i.ho = freeze <8 x float> %wide.masked.gather228 ; 2 uses
  %i.hp = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi211, <8 x float> %i.ho) ; 2 uses
  %wide.gep229 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather230 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep229, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1086, !noalias !1077
  %i.hq = freeze <8 x float> %wide.masked.gather230 ; 2 uses
  %i.hr = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi212, <8 x float> %i.hq) ; 2 uses
  %wide.gep231 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  %wide.masked.gather232 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep231, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1086, !noalias !1077
  %i.hs = freeze <8 x float> %wide.masked.gather232 ; 2 uses
  %i.ht = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi213, <8 x float> %i.hs) ; 2 uses
  %wide.gep233 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  %wide.masked.gather234 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep233, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1086, !noalias !1077
  %i.hu = freeze <8 x float> %wide.masked.gather234 ; 2 uses
  %i.hv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi214, <8 x float> %i.hu) ; 2 uses
  %wide.gep235 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  %wide.masked.gather236 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep235, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1086, !noalias !1077
  %i.hw = freeze <8 x float> %wide.masked.gather236 ; 2 uses
  %i.hx = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi215, <8 x float> %i.hw) ; 2 uses
  %wide.gep237 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  %wide.masked.gather238 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep237, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1086, !noalias !1077
  %i.hy = freeze <8 x float> %wide.masked.gather238 ; 2 uses
  %i.hz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi216, <8 x float> %i.hy) ; 2 uses
  %wide.gep239 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  %wide.masked.gather240 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep239, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1086, !noalias !1077
  %i.ia = freeze <8 x float> %wide.masked.gather240 ; 2 uses
  %i.ib = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi217, <8 x float> %i.ia) ; 2 uses
  %wide.gep241 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 36
  %wide.masked.gather242 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep241, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1086, !noalias !1077
  %i.ic = freeze <8 x float> %wide.masked.gather242 ; 2 uses
  %i.id = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi218, <8 x float> %i.ic) ; 2 uses
  %wide.gep243 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 40
  %wide.masked.gather244 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep243, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1086, !noalias !1077
  %i.ie = freeze <8 x float> %wide.masked.gather244 ; 2 uses
  %i.if = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi219, <8 x float> %i.ie) ; 2 uses
  %wide.gep245 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 44
  %wide.masked.gather246 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep245, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1086, !noalias !1077
  %i.ig = freeze <8 x float> %wide.masked.gather246 ; 2 uses
  %i.ih = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi220, <8 x float> %i.ig) ; 2 uses
  %wide.gep247 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 48
  %wide.masked.gather248 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep247, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1086, !noalias !1077
  %i.ii = freeze <8 x float> %wide.masked.gather248 ; 2 uses
  %i.ij = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi221, <8 x float> %i.ii) ; 2 uses
  %wide.gep249 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 52
  %wide.masked.gather250 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep249, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1086, !noalias !1077
  %i.ik = freeze <8 x float> %wide.masked.gather250 ; 2 uses
  %i.il = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi222, <8 x float> %i.ik) ; 2 uses
  %wide.gep251 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 56
  %wide.masked.gather252 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep251, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1086, !noalias !1077
  %i.im = freeze <8 x float> %wide.masked.gather252 ; 2 uses
  %i.in = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi223, <8 x float> %i.im) ; 2 uses
  %wide.gep253 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 60
  %wide.masked.gather254 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep253, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1086, !noalias !1077
  %i.io = freeze <8 x float> %wide.masked.gather254 ; 2 uses
  %i.ip = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi224, <8 x float> %i.io) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iq = fcmp uno <8 x float> %i.hk, %i.hm
  %i.ir = fcmp uno <8 x float> %i.hq, %i.ho
  %i.is = or <8 x i1> %i.iq, %i.ir
  %i.it = fcmp uno <8 x float> %i.hu, %i.hs
  %i.iu = or <8 x i1> %i.is, %i.it
  %i.iv = fcmp uno <8 x float> %i.hy, %i.hw
  %i.iw = or <8 x i1> %i.iu, %i.iv
  %i.ix = fcmp uno <8 x float> %i.ic, %i.ia
  %i.iy = or <8 x i1> %i.iw, %i.ix
  %i.iz = fcmp uno <8 x float> %i.ig, %i.ie
  %i.ja = or <8 x i1> %i.iy, %i.iz
  %i.jb = fcmp uno <8 x float> %i.ik, %i.ii
  %i.jc = or <8 x i1> %i.ja, %i.jb
  %i.jd = fcmp uno <8 x float> %i.io, %i.im
  %i.je = or <8 x i1> %i.jc, %i.jd
  %i.jf = bitcast <8 x i1> %i.je to i8
  %i.jg = icmp ne i8 %i.jf, 0                     ; 19 uses
  %i.jh = icmp eq i64 %index.next, %n.vec
  %i.ji = or i1 %i.jg, %i.jh
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  br i1 %i.ji, label %middle.block, label %vector.body, !llvm.loop !1022

middle.block:                                     ; preds = %vector.body
  %i.jj = select i1 %i.jg, <8 x float> %vec.phi, <8 x float> %i.hl
  %i.jk = select i1 %i.jg, <8 x float> %vec.phi210, <8 x float> %i.hn
  %i.jl = select i1 %i.jg, <8 x float> %vec.phi211, <8 x float> %i.hp
  %i.jm = select i1 %i.jg, <8 x float> %vec.phi212, <8 x float> %i.hr
  %i.jn = select i1 %i.jg, <8 x float> %vec.phi213, <8 x float> %i.ht
  %i.jo = select i1 %i.jg, <8 x float> %vec.phi214, <8 x float> %i.hv
  %i.jp = select i1 %i.jg, <8 x float> %vec.phi215, <8 x float> %i.hx
  %i.jq = select i1 %i.jg, <8 x float> %vec.phi216, <8 x float> %i.hz
  %i.jr = select i1 %i.jg, <8 x float> %vec.phi217, <8 x float> %i.ib
  %i.js = select i1 %i.jg, <8 x float> %vec.phi218, <8 x float> %i.id
  %i.jt = select i1 %i.jg, <8 x float> %vec.phi219, <8 x float> %i.if
  %i.ju = select i1 %i.jg, <8 x float> %vec.phi220, <8 x float> %i.ih
  %i.jv = select i1 %i.jg, <8 x float> %vec.phi221, <8 x float> %i.ij
  %i.jw = select i1 %i.jg, <8 x float> %vec.phi222, <8 x float> %i.il
  %i.jx = select i1 %i.jg, <8 x float> %vec.phi223, <8 x float> %i.in
  %i.jy = select i1 %i.jg, <8 x float> %vec.phi224, <8 x float> %i.ip
  %i.jz = select i1 %i.jg, i64 %index, i64 %n.vec
  %i.ka = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jj) ; 2 uses
  %i.kb = add i64 %.0109.reass.reass.i.reass.reass.i.reass.reass.reass, %i.jz
  %i.kc = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jk) ; 2 uses
  %i.kd = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jl) ; 2 uses
  %i.ke = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jm) ; 2 uses
  %i.kf = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jn) ; 2 uses
  %i.kg = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jo) ; 2 uses
  %i.kh = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jp) ; 2 uses
  %i.ki = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jq) ; 2 uses
  %i.kj = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jr) ; 2 uses
  %i.kk = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.js) ; 2 uses
  %i.kl = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jt) ; 2 uses
  %i.km = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.ju) ; 2 uses
  %i.kn = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jv) ; 2 uses
  %i.ko = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jw) ; 2 uses
  %i.kp = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jx) ; 2 uses
  %i.kq = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %i.jy) ; 2 uses
  %cmp.n = icmp ne i64 %i.hh, %n.vec
  %.not = or i1 %cmp.n, %i.jg
  %i.kr = insertelement <16 x float> poison, float %i.ka, i64 0
  %i.ks = insertelement <16 x float> %i.kr, float %i.kc, i64 1
  %i.kt = insertelement <16 x float> %i.ks, float %i.kd, i64 2
  %i.ku = insertelement <16 x float> %i.kt, float %i.ke, i64 3
  %i.kv = insertelement <16 x float> %i.ku, float %i.kf, i64 4
  %i.kw = insertelement <16 x float> %i.kv, float %i.kg, i64 5
  %i.kx = insertelement <16 x float> %i.kw, float %i.kh, i64 6
  %i.ky = insertelement <16 x float> %i.kx, float %i.ki, i64 7
  %i.kz = insertelement <16 x float> %i.ky, float %i.kj, i64 8
  %i.la = insertelement <16 x float> %i.kz, float %i.kk, i64 9
  %i.lb = insertelement <16 x float> %i.la, float %i.kl, i64 10
  %i.lc = insertelement <16 x float> %i.lb, float %i.km, i64 11
  %i.ld = insertelement <16 x float> %i.lc, float %i.kn, i64 12
  %i.le = insertelement <16 x float> %i.ld, float %i.ko, i64 13
  %i.lf = insertelement <16 x float> %i.le, float %i.kp, i64 14
  %i.lg = insertelement <16 x float> %i.lf, float %i.kq, i64 15 ; 2 uses
  %i.lh = insertelement <32 x float> poison, float %i.kq, i64 0
  %i.li = insertelement <32 x float> %i.lh, float %i.kp, i64 1
  %i.lj = insertelement <32 x float> %i.li, float %i.ko, i64 2
  %i.lk = insertelement <32 x float> %i.lj, float %i.kn, i64 3
  %i.ll = insertelement <32 x float> %i.lk, float %i.km, i64 4
  %i.lm = insertelement <32 x float> %i.ll, float %i.kl, i64 5
  %i.ln = insertelement <32 x float> %i.lm, float %i.kk, i64 6
  %i.lo = insertelement <32 x float> %i.ln, float %i.kj, i64 7
  %i.lp = insertelement <32 x float> %i.lo, float %i.ki, i64 8
  %i.lq = insertelement <32 x float> %i.lp, float %i.kh, i64 9
  %i.lr = insertelement <32 x float> %i.lq, float %i.kg, i64 10
  %i.ls = insertelement <32 x float> %i.lr, float %i.kf, i64 11
  %i.lt = insertelement <32 x float> %i.ls, float %i.ke, i64 12
  %i.lu = insertelement <32 x float> %i.lt, float %i.kd, i64 13
  %i.lv = insertelement <32 x float> %i.lu, float %i.kc, i64 14
  %i.lw = insertelement <32 x float> %i.lv, float %i.ka, i64 15
  %i.lx = shufflevector <32 x float> %i.lw, <32 x float> poison, <32 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  br i1 %.not, label %.lr.ph111.i.i.preheader374, label %.loopexit.i.i

.lr.ph111.i.i.preheader374:                       ; preds = %.lr.ph111.i.i.preheader, %middle.block
  %.0110.i.i.ph = phi i64 [ %.0109.reass.reass.i.reass.reass.i.reass.reass.reass, %.lr.ph111.i.i.preheader ], [ %i.kb, %middle.block ]
  %.ph375 = phi <16 x float> [ splat (float f0xFF7FFFFF), %.lr.ph111.i.i.preheader ], [ %i.lg, %middle.block ]
  br label %.lr.ph111.i.i

.lr.ph111.i.i:                                    ; preds = %.lr.ph111.i.i.preheader374, %.lr.ph111.i.i
  %.0110.i.i = phi i64 [ %.0.i.i, %.lr.ph111.i.i ], [ %.0110.i.i.ph, %.lr.ph111.i.i.preheader374 ] ; 2 uses
  %i.ly = phi <16 x float> [ %i.mc, %.lr.ph111.i.i ], [ %.ph375, %.lr.ph111.i.i.preheader374 ]
  %i.lz = and i64 %.0110.i.i, %i.eb
  %.idx58.i.i = shl i64 %i.lz, 6
  %i.ma = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx58.i.i
  %i.mb = load <16 x float>, ptr %i.ma, align 64, !tbaa !14, !alias.scope !1086, !noalias !1077
  %i.mc = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ly, <16 x float> %i.mb) ; 3 uses
  %.0.i.i = add nuw nsw i64 %.0110.i.i, 1         ; 2 uses
  %exitcond244.not.i.i = icmp eq i64 %.0.i.i, %umin.i.i
  br i1 %exitcond244.not.i.i, label %.loopexit.i.i.loopexit, label %.lr.ph111.i.i, !llvm.loop !1023

.loopexit.i.i.loopexit:                           ; preds = %.lr.ph111.i.i
  %i.md = shufflevector <16 x float> %i.mc, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit, %middle.block, %bb.h, %.lr.ph135.i.i
  %i.me = phi <16 x float> [ %i.gx, %.lr.ph135.i.i ], [ splat (float f0xFF7FFFFF), %bb.h ], [ %i.lg, %middle.block ], [ %i.mc, %.loopexit.i.i.loopexit ]
  %i.mf = phi <32 x float> [ %i.gy, %.lr.ph135.i.i ], [ splat (float f0xFF7FFFFF), %bb.h ], [ %i.lx, %middle.block ], [ %i.md, %.loopexit.i.i.loopexit ]
  %i.mg = icmp samesign ult i64 %.pre.i.i, %i.ef
  br i1 %i.mg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.mh = and i64 %.pre.i.i, %i.eb
  %.idx.i.i = shl nuw nsw i64 %i.mh, 6
  %i.mi = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i
  %i.mj = mul i64 %.pre.i.i, %2
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.mj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.mi, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.mk, i64 64, i1 false), !tbaa !14, !alias.scope !1088
  %i.ml = load <16 x float>, ptr %i.mk, align 4, !tbaa !14, !alias.scope !1089, !noalias !1090
  %i.mm = tail call reassoc nsz arcp contract afn <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.me, <16 x float> %i.ml)
  %i.mn = shufflevector <16 x float> %i.mm, <16 x float> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit.i.i
  %i.mo = phi <32 x float> [ %i.mn, %bb.i ], [ %i.mf, %.loopexit.i.i ] ; 2 uses
  %i.mp = add nuw nsw i64 %.051134.i.i, 1         ; 2 uses
  %indvars.iv.next.i75.i = add nuw nsw i64 %indvars.iv.i72.i, 1
  %exitcond245.not.i.i = icmp eq i64 %i.mp, %i.ef
  %i.mq = shufflevector <32 x float> %i.mo, <32 x float> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br i1 %exitcond245.not.i.i, label %_ZL13_box_max_vertILm16EEvjPfS0_mjm.exit.i, label %.lr.ph135.i.i, !llvm.loop !1027

_ZL13_box_max_vertILm16EEvjPfS0_mjm.exit.i:       ; preds = %bb.j, %.preheader.i.i
  %i.mr = add nuw i64 %.061180.i, 16              ; 2 uses
  %i.ms = icmp ult i64 %i.mr, %i.dz
  br i1 %i.ms, label %bb.g, label %.preheader123.i, !llvm.loop !1028

.preheader.i:                                     ; preds = %_ZL13_box_max_vertILm4EEvjPfS0_mjm.exit.i, %.preheader123.i
  %.0.lcssa.i = phi i64 [ %i.dz, %.preheader123.i ], [ %i.rf, %_ZL13_box_max_vertILm4EEvjPfS0_mjm.exit.i ] ; 2 uses
  %i.mt = icmp ult i64 %.0.lcssa.i, %2
  br i1 %i.mt, label %.lr.ph188.i, label %._crit_edge.i

.lr.ph188.i:                                      ; preds = %.preheader.i
  %i.mu = trunc i64 %1 to i32                     ; 2 uses
  %i.mv = add nsw i64 %i.i, -1                    ; 8 uses
  %i.mw = add i32 %i.b, 1
  %i.mx = tail call i32 @llvm.umin.i32(i32 %i.mw, i32 %i.mu) ; 3 uses
  %i.my = zext i32 %i.mx to i64                   ; 2 uses
  %.not71.i.i = icmp eq i32 %i.mx, 0
  %i.mz = and i64 %1, 4294967295                  ; 4 uses
  %.not72.i.i = icmp eq i32 %i.mu, 0
  %i.na = add nuw nsw i64 %i.c, 1                 ; 2 uses
  %xtraiter429 = and i64 %i.my, 3                 ; 3 uses
  %i.nb = icmp ult i32 %i.mx, 4
  %unroll_iter434 = and i64 %i.my, 4294967292
  %lcmp.mod431.not = icmp eq i64 %xtraiter429, 0
  %lcmp.mod433 = icmp ne i64 %xtraiter429, 0
  %invariant.op481 = sub i64 1, %i.c
  %broadcast.splatinsert322 = insertelement <8 x i64> poison, i64 %i.mv, i64 0
  %broadcast.splat323 = shufflevector <8 x i64> %broadcast.splatinsert322, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %bb.o

bb.k:                                             ; preds = %_ZL13_box_max_vertILm4EEvjPfS0_mjm.exit.i, %.lr.ph184.i
  %.0183.i = phi i64 [ %i.dz, %.lr.ph184.i ], [ %i.rf, %_ZL13_box_max_vertILm4EEvjPfS0_mjm.exit.i ] ; 2 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0183.i ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  switch i32 %i.fl, label %.lr.ph.i76.i [
    i32 0, label %.preheader.i80.i
    i32 1, label %.lr.ph.i76.i.epil.preheader
  ]

.preheader.i80.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i76.i
  br i1 %lcmp.mod424.not, label %.preheader.i80.i, label %.lr.ph.i76.i.epil.preheader

.lr.ph.i76.i.epil.preheader:                      ; preds = %bb.k, %.preheader.i80.i.loopexit.unr-lcssa
  %.05262.i77.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.oh, %.preheader.i80.i.loopexit.unr-lcssa ] ; 3 uses
  %.epil.init423 = phi <4 x float> [ splat (float f0xFF7FFFFF), %bb.k ], [ %i.og, %.preheader.i80.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod426)
  %i.nd = add nuw nsw i64 %.05262.i77.i.epil.init, 24
  %i.ne = mul i64 %i.nd, %2
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.ne
  tail call void @llvm.prefetch.p0(ptr %i.nf, i32 0, i32 0, i32 1), !noalias !1091
  %i.ng = and i64 %.05262.i77.i.epil.init, %i.fj
  %.idx59.i78.i.epil = shl nuw nsw i64 %i.ng, 4
  %i.nh = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i78.i.epil
  %i.ni = mul i64 %.05262.i77.i.epil.init, %2
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.ni ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.nh, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.nj, i64 16, i1 false), !tbaa !14, !alias.scope !1094
  %i.nk = load <4 x float>, ptr %i.nj, align 4, !tbaa !14, !alias.scope !1095, !noalias !1096
  %i.nl = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %.epil.init423, <4 x float> %i.nk)
  br label %.preheader.i80.i

.preheader.i80.i:                                 ; preds = %.lr.ph.i76.i.epil.preheader, %.preheader.i80.i.loopexit.unr-lcssa, %bb.k
  %i.nm = phi <4 x float> [ splat (float f0xFF7FFFFF), %bb.k ], [ %i.og, %.preheader.i80.i.loopexit.unr-lcssa ], [ %i.nl, %.lr.ph.i76.i.epil.preheader ] ; 2 uses
  br i1 %.not104.i.i, label %_ZL13_box_max_vertILm4EEvjPfS0_mjm.exit.i, label %.lr.ph90.i.i

.lr.ph.i76.i:                                     ; preds = %bb.k, %.lr.ph.i76.i
  %.05262.i77.i = phi i64 [ %i.oh, %.lr.ph.i76.i ], [ 0, %bb.k ] ; 6 uses
  %i.nn = phi <4 x float> [ %i.og, %.lr.ph.i76.i ], [ splat (float f0xFF7FFFFF), %bb.k ]
  %niter428 = phi i64 [ %niter428.next.1, %.lr.ph.i76.i ], [ 0, %bb.k ]
  %i.no = add nuw nsw i64 %.05262.i77.i, 24
  %i.np = mul i64 %i.no, %2
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.np
  tail call void @llvm.prefetch.p0(ptr %i.nq, i32 0, i32 0, i32 1), !noalias !1091
  %i.nr = and i64 %.05262.i77.i, %i.fj
  %.idx59.i78.i = shl nuw nsw i64 %i.nr, 4
  %i.ns = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i78.i
  %i.nt = mul i64 %.05262.i77.i, %2
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.nt ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(16) %i.ns, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.nu, i64 16, i1 false), !tbaa !14, !alias.scope !1094
  %i.nv = load <4 x float>, ptr %i.nu, align 4, !tbaa !14, !alias.scope !1095, !noalias !1096
  %i.nw = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.nn, <4 x float> %i.nv)
  %i.nx = or disjoint i64 %.05262.i77.i, 1        ; 2 uses
  %i.ny = add nuw nsw i64 %.05262.i77.i, 25
  %i.nz = mul i64 %i.ny, %2
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.nz
  tail call void @llvm.prefetch.p0(ptr %i.oa, i32 0, i32 0, i32 1), !noalias !1091
  %i.ob = and i64 %i.nx, %i.fj
  %.idx59.i78.i.1 = shl nuw nsw i64 %i.ob, 4
  %i.oc = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx59.i78.i.1
  %i.od = mul i64 %i.nx, %2
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.od ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.oc, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.oe, i64 16, i1 false), !tbaa !14, !alias.scope !1098
  %i.of = load <4 x float>, ptr %i.oe, align 4, !tbaa !14, !alias.scope !1095, !noalias !1099
  %i.og = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.nw, <4 x float> %i.of) ; 3 uses
  %i.oh = add nuw nsw i64 %.05262.i77.i, 2        ; 2 uses
  %niter428.next.1 = add i64 %niter428, 2         ; 2 uses
  %niter428.ncmp.1 = icmp eq i64 %niter428.next.1, %unroll_iter427
  br i1 %niter428.ncmp.1, label %.preheader.i80.i.loopexit.unr-lcssa, label %.lr.ph.i76.i, !llvm.loop !1036

.lr.ph90.i.i:                                     ; preds = %.preheader.i80.i, %bb.n
  %indvars.iv.i88.i = phi i64 [ %indvars.iv.next.i106.i, %bb.n ], [ %i.fo, %.preheader.i80.i ] ; 2 uses
  %.05189.i.i = phi i64 [ %i.re, %bb.n ], [ 0, %.preheader.i80.i ] ; 7 uses
  %i.oi = phi <4 x float> [ %i.rd, %bb.n ], [ %i.nm, %.preheader.i80.i ]
  %i.oj = phi <4 x float> [ %i.rc, %bb.n ], [ %i.nm, %.preheader.i80.i ] ; 2 uses
  %umin.i89.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i88.i, i64 %i.fn) ; 2 uses
  %i.ok = add nuw nsw i64 %.05189.i.i, 24
  %i.ol = mul i64 %i.ok, %2
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.ol
  tail call void @llvm.prefetch.p0(ptr %i.om, i32 0, i32 0, i32 1), !noalias !1091
  %i.on = mul i64 %.05189.i.i, %2
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.on
  store <4 x float> %i.oj, ptr %i.oo, align 4, !tbaa !14, !alias.scope !1100, !noalias !1091
  %.not.i93.i = icmp samesign ult i64 %.05189.i.i, %i.c
  %.pre.i94.i = add nuw nsw i64 %.05189.i.i, %i.fo ; 4 uses
  br i1 %.not.i93.i, label %.loopexit.i97.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph90.i.i
  %..i95.i = tail call i64 @llvm.umin.i64(i64 %.pre.i94.i, i64 %i.fn)
  %.077.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.05189.i.i, %invariant.op480 ; 4 uses
  %i.op = icmp samesign ult i64 %.077.reass.reass.i.reass.reass.i.reass.reass.reass, %..i95.i
  br i1 %i.op, label %.lr.ph79.i.i.preheader, label %.loopexit.i97.i

.lr.ph79.i.i.preheader:                           ; preds = %bb.l
  %7 = xor i64 %.05189.i.i, -1
  %8 = add nsw i64 %i.c, %7
  %i.oq = add i64 %umin.i89.i, %8                 ; 3 uses
  %min.iters.check271 = icmp ult i64 %i.oq, 16
  br i1 %min.iters.check271, label %.lr.ph79.i.i.preheader361, label %vector.ph272

vector.ph272:                                     ; preds = %.lr.ph79.i.i.preheader
  %n.vec273 = and i64 %i.oq, -16                  ; 3 uses
  %broadcast.splatinsert276 = insertelement <8 x i64> poison, i64 %.077.reass.reass.i.reass.reass.i.reass.reass.reass, i64 0
  %broadcast.splat277 = shufflevector <8 x i64> %broadcast.splatinsert276, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction278 = add nuw nsw <8 x i64> %broadcast.splat277, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body279

vector.body279:                                   ; preds = %vector.body279, %vector.ph272
  %index280 = phi i64 [ 0, %vector.ph272 ], [ %index.next306, %vector.body279 ] ; 2 uses
  %vec.ind281 = phi <8 x i64> [ %induction278, %vector.ph272 ], [ %vec.ind.next307, %vector.body279 ] ; 3 uses
  %vec.phi282 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph272 ], [ %i.ox, %vector.body279 ] ; 2 uses
  %vec.phi283 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph272 ], [ %i.oy, %vector.body279 ] ; 2 uses
  %vec.phi284 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph272 ], [ %i.pb, %vector.body279 ] ; 2 uses
  %vec.phi285 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph272 ], [ %i.pc, %vector.body279 ] ; 2 uses
  %vec.phi286 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph272 ], [ %i.pf, %vector.body279 ] ; 2 uses
  %vec.phi287 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph272 ], [ %i.pg, %vector.body279 ] ; 2 uses
  %vec.phi288 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph272 ], [ %i.pj, %vector.body279 ] ; 2 uses
  %vec.phi289 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph272 ], [ %i.pk, %vector.body279 ] ; 2 uses
  %step.add = add nuw nsw <8 x i64> %vec.ind281, splat (i64 8)
  %i.or = and <8 x i64> %vec.ind281, %broadcast.splat275
  %i.os = and <8 x i64> %step.add, %broadcast.splat275
  %i.ot = shl <8 x i64> %i.or, splat (i64 4)
  %i.ou = shl <8 x i64> %i.os, splat (i64 4)
  %wide.gep290 = getelementptr inbounds nuw i8, ptr %i.o, <8 x i64> %i.ot ; 4 uses
  %wide.gep291 = getelementptr inbounds nuw i8, ptr %i.o, <8 x i64> %i.ou ; 4 uses
  %wide.masked.gather292 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep290, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1101, !noalias !1092
  %wide.masked.gather293 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep291, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1101, !noalias !1092
  %i.ov = freeze <8 x float> %wide.masked.gather292 ; 2 uses
  %i.ow = freeze <8 x float> %wide.masked.gather293 ; 2 uses
  %i.ox = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi282, <8 x float> %i.ov) ; 2 uses
  %i.oy = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi283, <8 x float> %i.ow) ; 2 uses
  %wide.gep294 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep290, i64 4
  %wide.gep295 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep291, i64 4
  %wide.masked.gather296 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep294, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1101, !noalias !1092
  %wide.masked.gather297 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep295, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1101, !noalias !1092
  %i.oz = freeze <8 x float> %wide.masked.gather296 ; 2 uses
  %i.pa = freeze <8 x float> %wide.masked.gather297 ; 2 uses
  %i.pb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi284, <8 x float> %i.oz) ; 2 uses
  %i.pc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi285, <8 x float> %i.pa) ; 2 uses
  %wide.gep298 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep290, i64 8
  %wide.gep299 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep291, i64 8
  %wide.masked.gather300 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep298, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1101, !noalias !1092
  %wide.masked.gather301 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep299, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1101, !noalias !1092
  %i.pd = freeze <8 x float> %wide.masked.gather300 ; 2 uses
  %i.pe = freeze <8 x float> %wide.masked.gather301 ; 2 uses
  %i.pf = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi286, <8 x float> %i.pd) ; 2 uses
  %i.pg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi287, <8 x float> %i.pe) ; 2 uses
  %wide.gep302 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep290, i64 12
  %wide.gep303 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep291, i64 12
  %wide.masked.gather304 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep302, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1101, !noalias !1092
  %wide.masked.gather305 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep303, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1101, !noalias !1092
  %i.ph = freeze <8 x float> %wide.masked.gather304 ; 2 uses
  %i.pi = freeze <8 x float> %wide.masked.gather305 ; 2 uses
  %i.pj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi288, <8 x float> %i.ph) ; 2 uses
  %i.pk = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi289, <8 x float> %i.pi) ; 2 uses
  %index.next306 = add nuw i64 %index280, 16      ; 2 uses
  %i.pl = fcmp uno <8 x float> %i.ov, %i.oz
  %i.pm = fcmp uno <8 x float> %i.ow, %i.pa
  %i.pn = fcmp uno <8 x float> %i.ph, %i.pd
  %i.po = or <8 x i1> %i.pl, %i.pn
  %i.pp = fcmp uno <8 x float> %i.pi, %i.pe
  %i.pq = or <8 x i1> %i.pm, %i.pp
  %i.pr = or <8 x i1> %i.po, %i.pq
  %i.ps = bitcast <8 x i1> %i.pr to i8
  %i.pt = icmp ne i8 %i.ps, 0                     ; 11 uses
  %i.pu = icmp eq i64 %index.next306, %n.vec273
  %i.pv = or i1 %i.pt, %i.pu
  %vec.ind.next307 = add nuw nsw <8 x i64> %vec.ind281, splat (i64 16)
  br i1 %i.pv, label %middle.block308, label %vector.body279, !llvm.loop !1042

middle.block308:                                  ; preds = %vector.body279
  %i.pw = select i1 %i.pt, <8 x float> %vec.phi282, <8 x float> %i.ox
  %i.px = select i1 %i.pt, <8 x float> %vec.phi283, <8 x float> %i.oy
  %i.py = select i1 %i.pt, <8 x float> %vec.phi284, <8 x float> %i.pb
  %i.pz = select i1 %i.pt, <8 x float> %vec.phi285, <8 x float> %i.pc
  %i.qa = select i1 %i.pt, <8 x float> %vec.phi286, <8 x float> %i.pf
  %i.qb = select i1 %i.pt, <8 x float> %vec.phi287, <8 x float> %i.pg
  %i.qc = select i1 %i.pt, <8 x float> %vec.phi288, <8 x float> %i.pj
  %i.qd = select i1 %i.pt, <8 x float> %vec.phi289, <8 x float> %i.pk
  %i.qe = select i1 %i.pt, i64 %index280, i64 %n.vec273
  %rdx.minmax = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pw, <8 x float> %i.px)
  %i.qf = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax)
  %i.qg = add i64 %.077.reass.reass.i.reass.reass.i.reass.reass.reass, %i.qe
  %rdx.minmax309 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.py, <8 x float> %i.pz)
  %i.qh = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax309)
  %rdx.minmax310 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.qa, <8 x float> %i.qb)
  %i.qi = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax310)
  %rdx.minmax311 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.qc, <8 x float> %i.qd)
  %i.qj = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax311)
  %cmp.n312 = icmp ne i64 %i.oq, %n.vec273
  %.not352 = or i1 %cmp.n312, %i.pt
  %i.qk = insertelement <4 x float> poison, float %i.qf, i64 0
  %i.ql = insertelement <4 x float> %i.qk, float %i.qh, i64 1
  %i.qm = insertelement <4 x float> %i.ql, float %i.qi, i64 2
  %i.qn = insertelement <4 x float> %i.qm, float %i.qj, i64 3 ; 3 uses
  br i1 %.not352, label %.lr.ph79.i.i.preheader361, label %.loopexit.i97.i

.lr.ph79.i.i.preheader361:                        ; preds = %.lr.ph79.i.i.preheader, %middle.block308
  %.078.i.i.ph = phi i64 [ %.077.reass.reass.i.reass.reass.i.reass.reass.reass, %.lr.ph79.i.i.preheader ], [ %i.qg, %middle.block308 ]
  %.ph = phi <4 x float> [ splat (float f0xFF7FFFFF), %.lr.ph79.i.i.preheader ], [ %i.qn, %middle.block308 ]
  br label %.lr.ph79.i.i

.lr.ph79.i.i:                                     ; preds = %.lr.ph79.i.i.preheader361, %.lr.ph79.i.i
  %.078.i.i = phi i64 [ %.0.i109.i, %.lr.ph79.i.i ], [ %.078.i.i.ph, %.lr.ph79.i.i.preheader361 ] ; 2 uses
  %i.qo = phi <4 x float> [ %i.qs, %.lr.ph79.i.i ], [ %.ph, %.lr.ph79.i.i.preheader361 ]
  %i.qp = and i64 %.078.i.i, %i.fj
  %.idx58.i108.i = shl i64 %i.qp, 4
  %i.qq = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx58.i108.i
  %i.qr = load <4 x float>, ptr %i.qq, align 16, !tbaa !14, !alias.scope !1101, !noalias !1092
  %i.qs = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.qo, <4 x float> %i.qr) ; 3 uses
  %.0.i109.i = add nuw nsw i64 %.078.i.i, 1       ; 2 uses
  %exitcond113.not.i.i = icmp eq i64 %.0.i109.i, %umin.i89.i
  br i1 %exitcond113.not.i.i, label %.loopexit.i97.i, label %.lr.ph79.i.i, !llvm.loop !1043

.loopexit.i97.i:                                  ; preds = %.lr.ph79.i.i, %middle.block308, %bb.l, %.lr.ph90.i.i
  %i.qt = phi <4 x float> [ %i.oi, %.lr.ph90.i.i ], [ splat (float f0xFF7FFFFF), %bb.l ], [ %i.qn, %middle.block308 ], [ %i.qs, %.lr.ph79.i.i ] ; 2 uses
  %i.qu = phi <4 x float> [ %i.oj, %.lr.ph90.i.i ], [ splat (float f0xFF7FFFFF), %bb.l ], [ %i.qn, %middle.block308 ], [ %i.qs, %.lr.ph79.i.i ]
  %i.qv = icmp samesign ult i64 %.pre.i94.i, %i.fn
  br i1 %i.qv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.loopexit.i97.i
  %i.qw = and i64 %.pre.i94.i, %i.fj
  %.idx.i107.i = shl nuw nsw i64 %i.qw, 4
  %i.qx = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i107.i
  %i.qy = mul i64 %.pre.i94.i, %2
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.qy ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.qx, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.qz, i64 16, i1 false), !tbaa !14, !alias.scope !1103
  %i.ra = load <4 x float>, ptr %i.qz, align 4, !tbaa !14, !alias.scope !1104, !noalias !1105
  %i.rb = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.qt, <4 x float> %i.ra) ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit.i97.i
  %i.rc = phi <4 x float> [ %i.rb, %bb.m ], [ %i.qu, %.loopexit.i97.i ]
  %i.rd = phi <4 x float> [ %i.rb, %bb.m ], [ %i.qt, %.loopexit.i97.i ]
  %i.re = add nuw nsw i64 %.05189.i.i, 1          ; 2 uses
  %indvars.iv.next.i106.i = add nuw nsw i64 %indvars.iv.i88.i, 1
  %exitcond114.not.i.i = icmp eq i64 %i.re, %i.fn
  br i1 %exitcond114.not.i.i, label %_ZL13_box_max_vertILm4EEvjPfS0_mjm.exit.i, label %.lr.ph90.i.i, !llvm.loop !1047

_ZL13_box_max_vertILm4EEvjPfS0_mjm.exit.i:        ; preds = %bb.n, %.preheader.i80.i
  %i.rf = add nuw i64 %.0183.i, 4                 ; 3 uses
  %i.rg = icmp ult i64 %i.rf, %i.fg
  br i1 %i.rg, label %bb.k, label %.preheader.i, !llvm.loop !1048

bb.o:                                             ; preds = %_ZL13_box_max_vertILm1EEvjPfS0_mjm.exit.i, %.lr.ph188.i
  %.1187.i = phi i64 [ %.0.lcssa.i, %.lr.ph188.i ], [ %i.uz, %_ZL13_box_max_vertILm1EEvjPfS0_mjm.exit.i ] ; 2 uses
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.1187.i ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  br i1 %.not71.i.i, label %.preheader.i113.i, label %.lr.ph.i110.i.preheader

.lr.ph.i110.i.preheader:                          ; preds = %bb.o
  br i1 %i.nb, label %.lr.ph.i110.i.epil.preheader, label %.lr.ph.i110.i

.preheader.i113.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i110.i
  br i1 %lcmp.mod431.not, label %.preheader.i113.i, label %.lr.ph.i110.i.epil.preheader

.lr.ph.i110.i.epil.preheader:                     ; preds = %.preheader.i113.i.loopexit.unr-lcssa, %.lr.ph.i110.i.preheader
  %.05262.i111.i.epil.init = phi i64 [ 0, %.lr.ph.i110.i.preheader ], [ %i.tf, %.preheader.i113.i.loopexit.unr-lcssa ]
  %.sroa.0.161.i.i.epil.init = phi float [ f0xFF7FFFFF, %.lr.ph.i110.i.preheader ], [ %i.te, %.preheader.i113.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod433)
  br label %.lr.ph.i110.i.epil

.lr.ph.i110.i.epil:                               ; preds = %.lr.ph.i110.i.epil, %.lr.ph.i110.i.epil.preheader
  %.05262.i111.i.epil = phi i64 [ %i.rr, %.lr.ph.i110.i.epil ], [ %.05262.i111.i.epil.init, %.lr.ph.i110.i.epil.preheader ] ; 4 uses
  %.sroa.0.161.i.i.epil = phi float [ %i.rq, %.lr.ph.i110.i.epil ], [ %.sroa.0.161.i.i.epil.init, %.lr.ph.i110.i.epil.preheader ]
  %epil.iter430 = phi i64 [ %epil.iter430.next, %.lr.ph.i110.i.epil ], [ 0, %.lr.ph.i110.i.epil.preheader ]
  %i.ri = add nuw nsw i64 %.05262.i111.i.epil, 24
  %i.rj = mul i64 %i.ri, %2
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.rj
  tail call void @llvm.prefetch.p0(ptr %i.rk, i32 0, i32 0, i32 1), !noalias !1106
  %i.rl = and i64 %.05262.i111.i.epil, %i.mv
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.rl
  %i.rn = mul i64 %.05262.i111.i.epil, %2
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.rn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !14, !alias.scope !1110, !noalias !1111 ; 2 uses
  store float %i.rp, ptr %i.rm, align 4, !tbaa !14, !alias.scope !1111, !noalias !1110
  %i.rq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.0.161.i.i.epil, float %i.rp) ; 2 uses
  %i.rr = add nuw nsw i64 %.05262.i111.i.epil, 1
  %epil.iter430.next = add i64 %epil.iter430, 1   ; 2 uses
  %epil.iter430.cmp.not = icmp eq i64 %epil.iter430.next, %xtraiter429
  br i1 %epil.iter430.cmp.not, label %.preheader.i113.i, label %.lr.ph.i110.i.epil, !llvm.loop !1055

.preheader.i113.i:                                ; preds = %.preheader.i113.i.loopexit.unr-lcssa, %.lr.ph.i110.i.epil, %bb.o
  %.sroa.0.1.lcssa.i.i = phi float [ f0xFF7FFFFF, %bb.o ], [ %i.te, %.preheader.i113.i.loopexit.unr-lcssa ], [ %i.rq, %.lr.ph.i110.i.epil ]
  br i1 %.not72.i.i, label %_ZL13_box_max_vertILm1EEvjPfS0_mjm.exit.i, label %.lr.ph70.i.i

.lr.ph.i110.i:                                    ; preds = %.lr.ph.i110.i.preheader, %.lr.ph.i110.i
  %.05262.i111.i = phi i64 [ %i.tf, %.lr.ph.i110.i ], [ 0, %.lr.ph.i110.i.preheader ] ; 10 uses
  %.sroa.0.161.i.i = phi float [ %i.te, %.lr.ph.i110.i ], [ f0xFF7FFFFF, %.lr.ph.i110.i.preheader ]
  %niter435 = phi i64 [ %niter435.next.3, %.lr.ph.i110.i ], [ 0, %.lr.ph.i110.i.preheader ]
  %i.rs = add nuw nsw i64 %.05262.i111.i, 24
  %i.rt = mul i64 %i.rs, %2
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.rt
  tail call void @llvm.prefetch.p0(ptr %i.ru, i32 0, i32 0, i32 1), !noalias !1106
  %i.rv = and i64 %.05262.i111.i, %i.mv
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.rv
  %i.rx = mul i64 %.05262.i111.i, %2
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.rx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !14, !alias.scope !1110, !noalias !1111 ; 2 uses
  store float %i.rz, ptr %i.rw, align 16, !tbaa !14, !alias.scope !1111, !noalias !1110
  %i.sa = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.0.161.i.i, float %i.rz)
  %i.sb = or disjoint i64 %.05262.i111.i, 1       ; 2 uses
  %i.sc = add nuw nsw i64 %.05262.i111.i, 25
  %i.sd = mul i64 %i.sc, %2
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.sd
  tail call void @llvm.prefetch.p0(ptr %i.se, i32 0, i32 0, i32 1), !noalias !1106
  %i.sf = and i64 %i.sb, %i.mv
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.sf
  %i.sh = mul i64 %i.sb, %2
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.sh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  %i.sj = load float, ptr %i.si, align 4, !tbaa !14, !alias.scope !1114, !noalias !1115 ; 2 uses
  store float %i.sj, ptr %i.sg, align 4, !tbaa !14, !alias.scope !1115, !noalias !1114
  %i.sk = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sa, float %i.sj)
  %i.sl = or disjoint i64 %.05262.i111.i, 2       ; 2 uses
  %i.sm = add nuw nsw i64 %.05262.i111.i, 26
  %i.sn = mul i64 %i.sm, %2
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.sn
  tail call void @llvm.prefetch.p0(ptr %i.so, i32 0, i32 0, i32 1), !noalias !1106
  %i.sp = and i64 %i.sl, %i.mv
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.sp
  %i.sr = mul i64 %i.sl, %2
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.sr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  %i.st = load float, ptr %i.ss, align 4, !tbaa !14, !alias.scope !1118, !noalias !1119 ; 2 uses
  store float %i.st, ptr %i.sq, align 8, !tbaa !14, !alias.scope !1119, !noalias !1118
  %i.su = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sk, float %i.st)
  %i.sv = or disjoint i64 %.05262.i111.i, 3       ; 2 uses
  %i.sw = add nuw nsw i64 %.05262.i111.i, 27
  %i.sx = mul i64 %i.sw, %2
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.sx
  tail call void @llvm.prefetch.p0(ptr %i.sy, i32 0, i32 0, i32 1), !noalias !1106
  %i.sz = and i64 %i.sv, %i.mv
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.sz
  %i.tb = mul i64 %i.sv, %2
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.tb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.td = load float, ptr %i.tc, align 4, !tbaa !14, !alias.scope !1122, !noalias !1123 ; 2 uses
  store float %i.td, ptr %i.ta, align 4, !tbaa !14, !alias.scope !1123, !noalias !1122
  %i.te = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.su, float %i.td) ; 3 uses
  %i.tf = add nuw nsw i64 %.05262.i111.i, 4       ; 2 uses
  %niter435.next.3 = add i64 %niter435, 4         ; 2 uses
  %niter435.ncmp.3 = icmp eq i64 %niter435.next.3, %unroll_iter434
  br i1 %niter435.ncmp.3, label %.preheader.i113.i.loopexit.unr-lcssa, label %.lr.ph.i110.i, !llvm.loop !1062

.lr.ph70.i.i:                                     ; preds = %.preheader.i113.i, %bb.r
  %indvars.iv.i114.i = phi i64 [ %indvars.iv.next.i121.i, %bb.r ], [ %i.na, %.preheader.i113.i ] ; 2 uses
  %.05169.i.i = phi i64 [ %i.uy, %bb.r ], [ 0, %.preheader.i113.i ] ; 7 uses
  %.sroa.0.268.i.i = phi float [ %.sroa.0.5.i.i, %bb.r ], [ %.sroa.0.1.lcssa.i.i, %.preheader.i113.i ] ; 2 uses
  %umin.i115.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i114.i, i64 %i.mz) ; 2 uses
  %i.tg = add nuw nsw i64 %.05169.i.i, 24
  %i.th = mul i64 %i.tg, %2
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.th
  tail call void @llvm.prefetch.p0(ptr %i.ti, i32 0, i32 0, i32 1), !noalias !1106
  %i.tj = mul i64 %.05169.i.i, %2
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.tj
  store float %.sroa.0.268.i.i, ptr %i.tk, align 4, !tbaa !14, !alias.scope !1124, !noalias !1106
  %.not.i116.i = icmp samesign ult i64 %.05169.i.i, %i.c
  %.pre.i117.i = add nuw nsw i64 %.05169.i.i, %i.na ; 4 uses
  br i1 %.not.i116.i, label %.loopexit.i120.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph70.i.i
  %..i118.i = tail call i64 @llvm.umin.i64(i64 %.pre.i117.i, i64 %i.mz)
  %.063.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.05169.i.i, %invariant.op481 ; 4 uses
  %i.tl = icmp samesign ult i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %..i118.i
  br i1 %i.tl, label %.lr.ph66.i.i.preheader, label %.loopexit.i120.i

.lr.ph66.i.i.preheader:                           ; preds = %bb.p
  %9 = xor i64 %.05169.i.i, -1
  %10 = add nsw i64 %i.c, %9
  %i.tm = add i64 %umin.i115.i, %10               ; 3 uses
  %min.iters.check319 = icmp ult i64 %i.tm, 32
  br i1 %min.iters.check319, label %.lr.ph66.i.i.preheader354, label %vector.ph320

vector.ph320:                                     ; preds = %.lr.ph66.i.i.preheader
  %n.vec321 = and i64 %i.tm, -32                  ; 3 uses
  %broadcast.splatinsert324 = insertelement <8 x i64> poison, i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, i64 0
  %broadcast.splat325 = shufflevector <8 x i64> %broadcast.splatinsert324, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction326 = add nuw nsw <8 x i64> %broadcast.splat325, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body327

vector.body327:                                   ; preds = %vector.body327, %vector.ph320
  %index328 = phi i64 [ 0, %vector.ph320 ], [ %index.next343, %vector.body327 ] ; 2 uses
  %vec.ind329 = phi <8 x i64> [ %induction326, %vector.ph320 ], [ %vec.ind.next344, %vector.body327 ] ; 5 uses
  %vec.phi330 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph320 ], [ %i.tv, %vector.body327 ] ; 2 uses
  %vec.phi331 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph320 ], [ %i.tw, %vector.body327 ] ; 2 uses
  %vec.phi332 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph320 ], [ %i.tx, %vector.body327 ] ; 2 uses
  %vec.phi333 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph320 ], [ %i.ty, %vector.body327 ] ; 2 uses
  %step.add334 = add nuw nsw <8 x i64> %vec.ind329, splat (i64 8)
  %step.add.2 = add nuw nsw <8 x i64> %vec.ind329, splat (i64 16)
  %step.add.3 = add nuw nsw <8 x i64> %vec.ind329, splat (i64 24)
  %i.tn = and <8 x i64> %vec.ind329, %broadcast.splat323
  %i.to = and <8 x i64> %step.add334, %broadcast.splat323
  %i.tp = and <8 x i64> %step.add.2, %broadcast.splat323
  %i.tq = and <8 x i64> %step.add.3, %broadcast.splat323
  %wide.gep335 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.tn
  %wide.gep336 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.to
  %wide.gep337 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.tp
  %wide.gep338 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.tq
  %wide.masked.gather339 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep335, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1125, !noalias !1107
  %wide.masked.gather340 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep336, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1125, !noalias !1107
  %wide.masked.gather341 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep337, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1125, !noalias !1107
  %wide.masked.gather342 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep338, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !14, !alias.scope !1125, !noalias !1107
  %i.tr = freeze <8 x float> %wide.masked.gather339 ; 2 uses
  %i.ts = freeze <8 x float> %wide.masked.gather340 ; 2 uses
  %i.tt = freeze <8 x float> %wide.masked.gather341 ; 2 uses
  %i.tu = freeze <8 x float> %wide.masked.gather342 ; 2 uses
  %i.tv = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi330, <8 x float> %i.tr) ; 2 uses
  %i.tw = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi331, <8 x float> %i.ts) ; 2 uses
  %i.tx = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi332, <8 x float> %i.tt) ; 2 uses
  %i.ty = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi333, <8 x float> %i.tu) ; 2 uses
  %index.next343 = add nuw i64 %index328, 32      ; 2 uses
  %i.tz = fcmp uno <8 x float> %i.tr, %i.ts
  %i.ua = fcmp uno <8 x float> %i.tt, %i.tu
  %i.ub = or <8 x i1> %i.tz, %i.ua
  %i.uc = bitcast <8 x i1> %i.ub to i8
  %i.ud = icmp ne i8 %i.uc, 0                     ; 7 uses
  %i.ue = icmp eq i64 %index.next343, %n.vec321
  %i.uf = or i1 %i.ud, %i.ue
  %vec.ind.next344 = add nuw nsw <8 x i64> %vec.ind329, splat (i64 32)
  br i1 %i.uf, label %middle.block345, label %vector.body327, !llvm.loop !1067

middle.block345:                                  ; preds = %vector.body327
  %i.ug = select i1 %i.ud, <8 x float> %vec.phi330, <8 x float> %i.tv
  %i.uh = select i1 %i.ud, <8 x float> %vec.phi331, <8 x float> %i.tw
  %i.ui = select i1 %i.ud, <8 x float> %vec.phi332, <8 x float> %i.tx
  %i.uj = select i1 %i.ud, <8 x float> %vec.phi333, <8 x float> %i.ty
  %i.uk = select i1 %i.ud, i64 %index328, i64 %n.vec321
  %rdx.minmax346 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ug, <8 x float> %i.uh)
  %rdx.minmax347 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax346, <8 x float> %i.ui)
  %rdx.minmax348 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax347, <8 x float> %i.uj)
  %i.ul = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax348) ; 2 uses
  %i.um = add i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %i.uk
  %cmp.n349 = icmp ne i64 %i.tm, %n.vec321
  %.not353 = or i1 %cmp.n349, %i.ud
  br i1 %.not353, label %.lr.ph66.i.i.preheader354, label %.loopexit.i120.i

.lr.ph66.i.i.preheader354:                        ; preds = %.lr.ph66.i.i.preheader, %middle.block345
  %.065.i.i.ph = phi i64 [ %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %.lr.ph66.i.i.preheader ], [ %i.um, %middle.block345 ]
  %.sroa.0.364.i.i.ph = phi float [ f0xFF7FFFFF, %.lr.ph66.i.i.preheader ], [ %i.ul, %middle.block345 ]
  br label %.lr.ph66.i.i

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i.preheader354, %.lr.ph66.i.i
  %.065.i.i = phi i64 [ %.0.i122.i, %.lr.ph66.i.i ], [ %.065.i.i.ph, %.lr.ph66.i.i.preheader354 ] ; 2 uses
  %.sroa.0.364.i.i = phi float [ %i.uq, %.lr.ph66.i.i ], [ %.sroa.0.364.i.i.ph, %.lr.ph66.i.i.preheader354 ]
  %i.un = and i64 %.065.i.i, %i.mv
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.un
  %i.up = load float, ptr %i.uo, align 4, !tbaa !14, !alias.scope !1125, !noalias !1107
  %i.uq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.0.364.i.i, float %i.up) ; 2 uses
  %.0.i122.i = add nuw nsw i64 %.065.i.i, 1       ; 2 uses
  %exitcond74.not.i.i = icmp eq i64 %.0.i122.i, %umin.i115.i
  br i1 %exitcond74.not.i.i, label %.loopexit.i120.i, label %.lr.ph66.i.i, !llvm.loop !1068

.loopexit.i120.i:                                 ; preds = %.lr.ph66.i.i, %middle.block345, %bb.p, %.lr.ph70.i.i
  %.sroa.0.4.i.i = phi nsz float [ %.sroa.0.268.i.i, %.lr.ph70.i.i ], [ f0xFF7FFFFF, %bb.p ], [ %i.ul, %middle.block345 ], [ %i.uq, %.lr.ph66.i.i ] ; 2 uses
  %i.ur = icmp samesign ult i64 %.pre.i117.i, %i.mz
  br i1 %i.ur, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit.i120.i
  %i.us = and i64 %.pre.i117.i, %i.mv
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.us
  %i.uu = mul i64 %.pre.i117.i, %2
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.uu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !14, !alias.scope !1128, !noalias !1129 ; 2 uses
  store float %i.uw, ptr %i.ut, align 4, !tbaa !14, !alias.scope !1129, !noalias !1128
  %i.ux = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.0.4.i.i, float %i.uw)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit.i120.i
  %.sroa.0.5.i.i = phi nsz float [ %i.ux, %bb.q ], [ %.sroa.0.4.i.i, %.loopexit.i120.i ]
  %i.uy = add nuw nsw i64 %.05169.i.i, 1          ; 2 uses
  %indvars.iv.next.i121.i = add nuw nsw i64 %indvars.iv.i114.i, 1
  %exitcond75.not.i.i = icmp eq i64 %i.uy, %i.mz
  br i1 %exitcond75.not.i.i, label %_ZL13_box_max_vertILm1EEvjPfS0_mjm.exit.i, label %.lr.ph70.i.i, !llvm.loop !1072

_ZL13_box_max_vertILm1EEvjPfS0_mjm.exit.i:        ; preds = %bb.r, %.preheader.i113.i
  %i.uz = add nuw i64 %.1187.i, 1                 ; 2 uses
  %exitcond239.not.i = icmp eq i64 %i.uz, %2
  br i1 %exitcond239.not.i, label %._crit_edge.i, label %bb.o, !llvm.loop !1073

._crit_edge.i:                                    ; preds = %_ZL13_box_max_vertILm1EEvjPfS0_mjm.exit.i, %.preheader.i
  tail call void @free(ptr noundef %i.o) #11
  br label %_ZL12_box_max_1chPfmmj.exit

bb.s:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 715, ptr noundef nonnull @__FUNCTION__.dt_box_max)
  unreachable

_ZL12_box_max_1chPfmmj.exit:                      ; preds = %._crit_edge.i, %_ZL25_compute_effective_heightmm.exit.i
  ret void
}

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZL18_blur_vertical_1chILb0EEvPfmmmS0_m(ptr noalias nofree noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull captures(none) %4) unnamed_addr #2 {
bb.a:
  %.not123 = icmp eq i64 %2, 0
  br i1 %.not123, label %._crit_edge, label %.lr.ph122

.lr.ph122:                                        ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ]
  %i.a = shl i64 %3, 1                            ; 2 uses
  %.not228.i = icmp eq i64 %i.a, 0                ; 3 uses
  %i.b = or disjoint i64 %i.a, 1                  ; 3 uses
  %i.c = tail call i64 @llvm.umin.i64(i64 %3, i64 %1) ; 20 uses
  %.not229.i = icmp eq i64 %i.c, 0                ; 3 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %3) ; 9 uses
  %i.e = xor i64 %3, -1                           ; 8 uses
  %i.f = sub i64 %1, %3                           ; 8 uses
  %i.g = and i64 %2, -4                           ; 2 uses
  %i.h = xor i64 %3, -1
  %i.i = add i64 %1, %i.h
  %i.j = xor i64 %3, -1
  %i.k = add i64 %1, %i.j
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.l = icmp ult i64 %i.c, 4
  %unroll_iter = and i64 %i.c, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod236 = icmp ne i64 %xtraiter, 0
  %exitcond281.not.i50.not = icmp ugt i64 %1, %3
  %xtraiter237 = and i64 %i.c, 3                  ; 3 uses
  %i.m = icmp ult i64 %i.c, 4
  %unroll_iter244 = and i64 %i.c, -4
  %lcmp.mod241.not = icmp eq i64 %xtraiter237, 0
  %lcmp.mod243 = icmp ne i64 %xtraiter237, 0
  %exitcond166.not.i106.not = icmp ugt i64 %1, %3
  %min.iters.check145 = icmp ugt i64 %i.c, 3
  %ident.check144.not = icmp eq i64 %2, 1
  %or.cond = and i1 %min.iters.check145, %ident.check144.not
  %min.iters.check147 = icmp ult i64 %i.c, 32
  %i.n = and i64 %i.c, 28
  %n.vec149 = and i64 %i.c, -32                   ; 4 uses
  %cmp.n167 = icmp eq i64 %i.c, %n.vec149
  %min.epilog.iters.check172 = icmp eq i64 %i.n, 0
  %n.vec174 = and i64 %i.c, -4                    ; 3 uses
  %cmp.n188 = icmp eq i64 %i.c, %n.vec174
  %xtraiter250 = and i64 %i.c, 3                  ; 2 uses
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  %exitcond134.not.i123.not = icmp ugt i64 %1, %3
  %ident.check.not = icmp eq i64 %2, 1
  br label %bb.b

._crit_edge:                                      ; preds = %_ZL14_blur_verticalILm16ELb0EEvPfmmmS0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph122, %_ZL14_blur_verticalILm16ELb0EEvPfmmmS0_.exit
  %.031121 = phi i64 [ 0, %.lr.ph122 ], [ %i.o, %_ZL14_blur_verticalILm16ELb0EEvPfmmmS0_.exit ] ; 5 uses
  %i.o = add i64 %.031121, 16                     ; 3 uses
  %.not = icmp ugt i64 %i.o, %2
  br i1 %.not, label %.preheader69, label %bb.c

.preheader69:                                     ; preds = %bb.b
end_hunk_1
