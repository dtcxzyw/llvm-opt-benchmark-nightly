inline.NumInlined: 220
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 93
begin_hunk_0_@legacy_params:bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 324
  store <8 x float> %wide.vec284, ptr %i.ej, align 4, !tbaa !16
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 36
  %wide.vec.1 = load <8 x float>, ptr %i.ek, align 4, !tbaa !16
  store <8 x float> %wide.vec.1, ptr %i.el, align 4, !tbaa !16
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 196
  %wide.vec280.1 = load <8 x float>, ptr %i.em, align 4, !tbaa !16
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 196
  store <8 x float> %wide.vec280.1, ptr %i.en, align 4, !tbaa !16
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 356
  %wide.vec284.1 = load <8 x float>, ptr %i.eo, align 4, !tbaa !16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ec, i64 356
  store <8 x float> %wide.vec284.1, ptr %i.ep, align 4, !tbaa !16
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.er = getelementptr inbounds nuw i8, ptr %i.ec, i64 68
  %wide.vec.2 = load <8 x float>, ptr %i.eq, align 4, !tbaa !16
  store <8 x float> %wide.vec.2, ptr %i.er, align 4, !tbaa !16
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 228
  %wide.vec280.2 = load <8 x float>, ptr %i.es, align 4, !tbaa !16
  %i.et = getelementptr inbounds nuw i8, ptr %i.ec, i64 228
  store <8 x float> %wide.vec280.2, ptr %i.et, align 4, !tbaa !16
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 388
  %wide.vec284.2 = load <8 x float>, ptr %i.eu, align 4, !tbaa !16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ec, i64 388
  store <8 x float> %wide.vec284.2, ptr %i.ev, align 4, !tbaa !16
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ec, i64 100
  %wide.vec.3 = load <8 x float>, ptr %i.ew, align 4, !tbaa !16
  store <8 x float> %wide.vec.3, ptr %i.ex, align 4, !tbaa !16
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 260
  %wide.vec280.3 = load <8 x float>, ptr %i.ey, align 4, !tbaa !16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ec, i64 260
  store <8 x float> %wide.vec280.3, ptr %i.ez, align 4, !tbaa !16
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 420
  %wide.vec284.3 = load <8 x float>, ptr %i.fa, align 4, !tbaa !16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ec, i64 420
  store <8 x float> %wide.vec284.3, ptr %i.fb, align 4, !tbaa !16
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ec, i64 132
  %wide.vec.4 = load <8 x float>, ptr %i.fc, align 4, !tbaa !16
  store <8 x float> %wide.vec.4, ptr %i.fd, align 4, !tbaa !16
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 292
  %wide.vec280.4 = load <8 x float>, ptr %i.fe, align 4, !tbaa !16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ec, i64 292
  store <8 x float> %wide.vec280.4, ptr %i.ff, align 4, !tbaa !16
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 452
  %wide.vec284.4 = load <8 x float>, ptr %i.fg, align 4, !tbaa !16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ec, i64 452
  store <8 x float> %wide.vec284.4, ptr %i.fh, align 4, !tbaa !16
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 484
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ec, i64 484
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ec, i64 496
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fj, ptr noundef nonnull align 4 dereferenceable(12) %i.fi, i64 12, i1 false), !tbaa !20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fl, ptr noundef nonnull align 4 dereferenceable(12) %i.fk, i64 12, i1 false), !tbaa !20
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 508
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !29
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ec, i64 508
  store float %i.fn, ptr %i.fo, align 4, !tbaa !21
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !30
  br label %.sink.split

.sink.split:                                      ; preds = %.preheader188.preheader, %.preheader192, %.preheader194, %vector.ph
  %.sink278 = phi ptr [ %i.ec, %vector.ph ], [ %i.dg, %.preheader194 ], [ %i.cm, %.preheader192 ], [ %i.a, %.preheader188.preheader ] ; 3 uses
  %.sink276 = phi i32 [ %i.fq, %vector.ph ], [ 0, %.preheader194 ], [ 0, %.preheader192 ], [ 0, %.preheader188.preheader ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.sink278, i64 512
  store i32 %.sink276, ptr %i.fr, align 4, !tbaa !31
  %i.fs = getelementptr inbounds nuw i8, ptr %.sink278, i64 516
  store i32 0, ptr %i.fs, align 4, !tbaa !32
  store ptr %.sink278, ptr %3, align 8, !tbaa !33
  store i32 520, ptr %4, align 4, !tbaa !20
  store i32 5, ptr %5, align 4, !tbaa !20
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %.0175 = phi i32 [ 1, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0175
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind uwtable
define hidden void @process_display(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !35  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.f = load i32, ptr %i.e, align 4, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.h = load i32, ptr %i.g, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !71
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !72
  %i.n = sext i32 %i.m to i64
  %i.o = sext i32 %i.f to i64                     ; 2 uses
  %i.p = mul nsw i64 %i.k, %i.o
  %i.q = mul i64 %i.p, %i.n
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.q) #30
  %i.r = load i32, ptr %i.i, align 4, !tbaa !71
  %i.s = sext i32 %i.r to i64
  %i.t = load i32, ptr %i.l, align 4, !tbaa !72
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %i.u, %i.s                   ; 2 uses
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.z = zext i32 %i.h to i64
  %i.aa = getelementptr inbounds nuw [262144 x i8], ptr %i.y, i64 %i.z ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !75 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 628
  store i32 1, ptr %i.ad, align 4, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 632
  store i32 1, ptr %i.ae, align 8, !tbaa !91
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.03335 = phi i64 [ 0, %.lr.ph ], [ %i.bx, %bb.g ] ; 2 uses
  %i.af = mul i64 %.03335, %i.o                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.af ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !16 ; 2 uses
  %i.am = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.aj, float %i.al) ; 3 uses
  %i.an = fcmp reassoc nsz arcp contract afn ogt float %i.am, 0.000000e+00
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ao = fmul reassoc nnan nsz arcp contract afn float %i.am, f0x3E22F983
  br label %dt_Lab_2_LCH.exit

bb.d:                                             ; preds = %bb.b
  %i.ap = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.am)
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, f0x3E22F983
  %i.ar = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aq
  br label %dt_Lab_2_LCH.exit

dt_Lab_2_LCH.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi nsz float [ %i.ao, %bb.c ], [ %i.ar, %bb.d ]
  switch i32 %i.x, label %bb.g [
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %dt_Lab_2_LCH.exit
  %i.as = load float, ptr %i.ag, align 4, !tbaa !16
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, f0x3C23D70A
  br label %bb.g

bb.f:                                             ; preds = %dt_Lab_2_LCH.exit
  %i.au = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.al, float noundef %i.aj) #32
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, f0x3BB504F3
  br label %bb.g

bb.g:                                             ; preds = %dt_Lab_2_LCH.exit, %bb.f, %bb.e
  %.0 = phi nsz float [ %i.av, %bb.f ], [ %i.at, %bb.e ], [ %.0.i, %dt_Lab_2_LCH.exit ] ; 3 uses
  %i.aw = fcmp reassoc nsz arcp contract afn ogt float %.0, 1.000000e+00
  %i.ax = fcmp reassoc nsz arcp contract afn olt float %.0, 0.000000e+00
  %i.ay = select reassoc nsz arcp contract afn i1 %i.ax, float 0.000000e+00, float %.0
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, 6.553600e+04
  %i.ba = select i1 %i.aw, float 6.553600e+04, float %i.az ; 2 uses
  %i.bb = fptosi float %i.ba to i32               ; 3 uses
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 0)
  %i.bd = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 65535) ; 2 uses
  %i.be = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 -1)
  %i.bf = add nsw i32 %i.be, 1
  %.inv.i = icmp slt i32 %i.bb, 65535
  %narrow.i = select i1 %.inv.i, i32 %i.bf, i32 65535
  %i.bg = zext nneg i32 %narrow.i to i64
  %i.bh = uitofp nneg i32 %i.bd to float
  %i.bi = fsub reassoc nsz arcp contract afn float %i.ba, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bg
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !16
  %i.bl = zext nneg i32 %i.bd to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bl
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !16 ; 2 uses
  %i.bo = fsub reassoc nsz arcp contract afn float %i.bk, %i.bn
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bi, %i.bo
  %i.bq = fadd reassoc nsz arcp contract afn float %i.bn, %i.bp
  %i.br = fadd reassoc nsz arcp contract afn float %i.bq, -5.000000e-01
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.br)
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, 4.000000e+00 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.bv = fcmp reassoc nsz arcp contract afn ogt float %i.bt, 1.000000e+00
  %i.bw = select reassoc nsz arcp contract afn i1 %i.bv, float 1.000000e+00, float %i.bt
  store float %i.bw, ptr %i.bu, align 4, !tbaa !16
  %i.bx = add nuw i64 %.03335, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bx, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @process_v1(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !71
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !72
  %i.f = sext i32 %i.e to i64
  %i.g = mul nsw i64 %i.f, %i.c                   ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.i = load i32, ptr %i.h, align 4, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !35  ; 4 uses
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 52 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 262196 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 524340 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.02538 = phi i64 [ 0, %.lr.ph ], [ %i.cg, %bb.g ] ; 2 uses
  %i.r = mul i64 %.02538, %i.l                    ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.r ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !16 ; 2 uses
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.v, float %i.x) ; 3 uses
  %i.z = fcmp reassoc nsz arcp contract afn ogt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = fmul reassoc nnan nsz arcp contract afn float %i.y, f0x3E22F983
  br label %dt_Lab_2_LCH.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.y)
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, f0x3E22F983
  %i.ad = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ac
  br label %dt_Lab_2_LCH.exit

dt_Lab_2_LCH.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi nsz float [ %i.aa, %bb.c ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ae = load float, ptr %i.s, align 4, !tbaa !16 ; 2 uses
  %i.af = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.x, float noundef %i.v) #32 ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %dt_Lab_2_LCH.exit
  %i.ag = fmul reassoc nsz arcp contract afn float %i.ae, f0x3C23D70A
  br label %bb.g

bb.f:                                             ; preds = %dt_Lab_2_LCH.exit
  %i.ah = fmul reassoc nsz arcp contract afn float %i.af, f0x3BB504F3
  br label %bb.g

bb.g:                                             ; preds = %dt_Lab_2_LCH.exit, %bb.f, %bb.e
  %.0 = phi nsz float [ %i.ah, %bb.f ], [ %i.ag, %bb.e ], [ %.0.i, %dt_Lab_2_LCH.exit ] ; 3 uses
  %i.ai = fcmp reassoc nsz arcp contract afn ogt float %.0, 1.000000e+00
  %i.aj = fcmp reassoc nsz arcp contract afn olt float %.0, 0.000000e+00
  %i.ak = select reassoc nsz arcp contract afn i1 %i.aj, float 0.000000e+00, float %.0
  %i.al = fmul reassoc nsz arcp contract afn float %i.ak, 6.553600e+04
  %i.am = select i1 %i.ai, float 6.553600e+04, float %i.al ; 2 uses
  %i.an = fptosi float %i.am to i32               ; 3 uses
  %i.ao = tail call i32 @llvm.smax.i32(i32 %i.an, i32 0)
  %i.ap = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 65535) ; 2 uses
  %i.aq = tail call i32 @llvm.smax.i32(i32 %i.an, i32 -1)
  %i.ar = add nsw i32 %i.aq, 1
  %.inv.i = icmp slt i32 %i.an, 65535
  %narrow.i = select i1 %.inv.i, i32 %i.ar, i32 65535
  %i.as = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.at = uitofp nneg i32 %i.ap to float
  %i.au = fsub reassoc nsz arcp contract afn float %i.am, %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.as
  %i.aw = load float, ptr %i.av, align 4, !tbaa !16
  %i.ax = zext nneg i32 %i.ap to i64              ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ax
  %i.az = load float, ptr %i.ay, align 4, !tbaa !16 ; 2 uses
  %i.ba = fsub reassoc nsz arcp contract afn float %i.aw, %i.az
  %i.bb = fmul reassoc nsz arcp contract afn float %i.au, %i.ba
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, %i.az
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, 4.000000e+00
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, -2.000000e+00
  %exp2 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.be)
  %i.bf = fmul reassoc nsz arcp contract afn float %exp2, %i.ae
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.as
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !16
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ax
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !16 ; 2 uses
  %i.bk = fsub reassoc nsz arcp contract afn float %i.bh, %i.bj
  %i.bl = fmul reassoc nsz arcp contract afn float %i.au, %i.bk
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bl, %i.bj
  %i.bn = fmul reassoc nsz arcp contract afn float %i.af, 2.000000e+00
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bm ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.as
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !16
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ax
  %i.bs = load float, ptr %i.br, align 4, !tbaa !16 ; 2 uses
  %i.bt = fsub reassoc nsz arcp contract afn float %i.bq, %i.bs
  %i.bu = fmul reassoc nsz arcp contract afn float %i.au, %i.bt
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bs, %i.bu
  %i.bw = fadd reassoc nsz arcp contract afn float %.0.i, -5.000000e-01
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, %i.bv
  store float %i.bf, ptr %i.t, align 4, !tbaa !16
  %i.by = fmul reassoc nsz arcp contract afn float %i.bx, f0x40C90FDB
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.by) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.bz = fmul reassoc nsz arcp contract afn float %cos, %i.bo
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store float %i.bz, ptr %i.ca, align 4, !tbaa !16
  %i.cb = fmul reassoc nsz arcp contract afn float %sin, %i.bo
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store float %i.cb, ptr %i.cc, align 4, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store float %i.ce, ptr %i.cf, align 4, !tbaa !16
  %i.cg = add nuw i64 %.02538, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cg, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @process_v3(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !71
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !72
  %i.f = sext i32 %i.e to i64
  %i.g = mul nsw i64 %i.f, %i.c                   ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.i = load i32, ptr %i.h, align 4, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !35  ; 4 uses
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.n = load i32, ptr %i.m, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 52 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 524340 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 262196 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.056 = phi i64 [ 0, %.lr.ph ], [ %i.cl, %bb.f ] ; 2 uses
  %i.r = mul i64 %.056, %i.l                      ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.r ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.r ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !16 ; 2 uses
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.x, float %i.v)
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, f0x40C90FDB
  %i.aa = frem reassoc nsz arcp contract afn float %i.z, f0x40C90FDB
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, f0x3E22F983 ; 2 uses
  %i.ac = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.x, float noundef %i.v) #32 ; 3 uses
  switch i32 %i.n, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.ad = load float, ptr %i.s, align 4, !tbaa !16
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, f0x3C23D70A
  %i.af = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ae, float 1.000000e+00)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ag = fmul reassoc nsz arcp contract afn float %i.ac, 7.812500e-03
  %i.ah = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ag, float 1.000000e+00)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ac, 7.812500e-03
  %i.aj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ai ; 2 uses
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.aj
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.051 = phi nsz float [ %i.ak, %bb.e ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %.050 = phi nsz float [ %i.ab, %bb.e ], [ %i.af, %bb.c ], [ %i.ah, %bb.d ]
  %i.al = fmul reassoc nsz arcp contract afn float %.051, 5.000000e-01 ; 2 uses
  %i.am = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.051 ; 2 uses
  %i.an = fmul reassoc nsz arcp contract afn float %.050, 6.553600e+04 ; 2 uses
  %i.ao = fptosi float %i.an to i32               ; 3 uses
  %i.ap = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 0)
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 65535) ; 2 uses
  %i.ar = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 -1)
  %i.as = add nsw i32 %i.ar, 1
  %.inv.i = icmp slt i32 %i.ao, 65535
  %narrow.i = select i1 %.inv.i, i32 %i.as, i32 65535
  %i.at = zext nneg i32 %narrow.i to i64          ; 3 uses
  %i.au = uitofp nneg i32 %i.aq to float
  %i.av = fsub reassoc nsz arcp contract afn float %i.an, %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.at
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !16
  %i.ay = zext nneg i32 %i.aq to i64              ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !16 ; 2 uses
  %i.bb = fsub reassoc nsz arcp contract afn float %i.ax, %i.ba
  %i.bc = fmul reassoc nsz arcp contract afn float %i.av, %i.bb
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.ba
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.am
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %i.al
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.at
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !16
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ay
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !16 ; 2 uses
  %i.bk = fsub reassoc nsz arcp contract afn float %i.bh, %i.bj
  %i.bl = fmul reassoc nsz arcp contract afn float %i.av, %i.bk
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bl, %i.bj
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, %i.am
  %6 = fadd reassoc nsz arcp contract afn float %i.al, %i.bn
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.at
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !16
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ay
  %i.br = load float, ptr %i.bq, align 4, !tbaa !16 ; 2 uses
  %i.bs = fsub reassoc nsz arcp contract afn float %i.bp, %i.br
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.av
  %i.bu = fadd reassoc nsz arcp contract afn float %i.bt, %i.br
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, 2.000000e+00
  %i.bw = load float, ptr %i.s, align 4, !tbaa !16
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bf, 4.000000e+00
  %i.by = fadd reassoc nsz arcp contract afn float %i.bx, -2.000000e+00
  %exp2 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.by)
  %i.bz = fmul reassoc nsz arcp contract afn float %exp2, %i.bw
  store float %i.bz, ptr %i.t, align 4, !tbaa !16
  %i.ca = fadd reassoc nsz arcp contract afn float %i.ab, -5.000000e-01
  %i.cb = fadd reassoc nsz arcp contract afn float %i.ca, %6
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, f0x40C90FDB
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.cc) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.cd = fmul reassoc nsz arcp contract afn float %i.bv, %i.ac ; 2 uses
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, %cos
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store float %i.ce, ptr %i.cf, align 4, !tbaa !16
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cd, %sin
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store float %i.cg, ptr %i.ch, align 4, !tbaa !16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store float %i.cj, ptr %i.ck, align 4, !tbaa !16
  %i.cl = add nuw i64 %.056, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #7

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !52  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.g = getelementptr i8, ptr %i.f, i64 644
  %.val = load i32, ptr %i.g, align 4, !tbaa !92
  %i.h = and i32 %.val, 2
  %i.i = icmp ne i32 %i.h, 0
  %i.j = icmp ne ptr %i.d, null
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 5316
  %i.l = load i32, ptr %i.k, align 4, !tbaa !93
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 @dt_iop_has_focus(ptr noundef nonnull %0) #30
  %.not28 = icmp eq i32 %i.m, 0
  br i1 %.not28, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2760
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !95
  %i.s = icmp eq ptr %i.n, %i.r
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @process_display(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr poison, ptr noundef %5)
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 786484
  %i.u = load i32, ptr %i.t, align 4, !tbaa !112
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @process_v3(ptr nonnull poison, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr poison, ptr noundef %5)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @process_v1(ptr nonnull poison, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr poison, ptr noundef %5)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  ret void
}

declare i32 @dt_iop_has_focus(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef %0) local_unnamed_addr #1 {
.preheader116.preheader:
  %1 = alloca %struct.dt_iop_colorzones_params_t, align 4 ; 72 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(456) %i.b, i8 0, i64 456, i1 false)
  store i32 1, ptr %i.a, align 4, !tbaa !113
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !115
  tail call void @dt_database_start_transaction(ptr noundef %i.c) #30
  store i32 2, ptr %1, align 4, !tbaa !153
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 164 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 324 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store float 5.000000e-01, ptr %i.g, align 4, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 3 uses
  store float 5.000000e-01, ptr %i.i, align 4, !tbaa !19
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !17
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !17
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 172 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  store float 0.000000e+00, ptr %i.m, align 4, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 332 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 340
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 344
  store float f0x3E924925, ptr %i.r, align 4, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 348
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 196 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 356 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  store <8 x float> <float f0x3E124925, float 5.000000e-01, float f0x3E924925, float 5.000000e-01, float f0x3EDB6DB8, float 5.000000e-01, float f0x3F124925, float 5.000000e-01>, ptr %i.j, align 4, !tbaa !16
  store <8 x float> <float f0x3E124925, float 5.000000e-01, float f0x3E924925, float 5.000000e-01, float f0x3EDB6DB8, float 5.000000e-01, float f0x3F124925, float 5.000000e-01>, ptr %i.n, align 4, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store float 5.000000e-01, ptr %i.af, align 4, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 204 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 364 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 4 uses
  store float 5.000000e-01, ptr %i.aj, align 4, !tbaa !19
  store float f0x3F36DB6E, ptr %i.ae, align 4, !tbaa !17
  store float f0x3F36DB6E, ptr %i.ai, align 4, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  store float 5.000000e-01, ptr %i.al, align 4, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 372 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 4 uses
  store float 5.000000e-01, ptr %i.ap, align 4, !tbaa !19
  store float f0x3F5B6DB8, ptr %i.ak, align 4, !tbaa !17
  store float f0x3F5B6DB8, ptr %i.ao, align 4, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 224
  store float 6.500000e-01, ptr %i.aq, align 4, !tbaa !19
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 168
  store float 6.500000e-01, ptr %i.ar, align 4, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 172
  store float 1.875000e-01, ptr %i.as, align 4, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 188
  store <8 x float> <float 5.000000e-01, float 0.000000e+00, float 5.100000e-01, float 0.000000e+00, float f0x3F36DB6E, float 0.000000e+00, float 9.375000e-01, float 0.000000e+00>, ptr %i.at, align 4, !tbaa !16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 484 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 500 ; 6 uses
  store i32 1, ptr %i.av, align 4, !tbaa !20
  store <4 x i32> <i32 7, i32 7, i32 7, i32 1>, ptr %i.au, align 4, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 6 uses
  store i32 1, ptr %i.aw, align 4, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 6 uses
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.ax, i32 noundef 5, ptr noundef nonnull %1, i32 noundef 520, i32 noundef 1, i32 noundef 3) #30
  store i32 2, ptr %1, align 4, !tbaa !153
  store float 5.000000e-01, ptr %i.g, align 4, !tbaa !19
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !17
  store <8 x float> <float 0.000000e+00, float 5.000000e-01, float f0x3E124925, float 5.000000e-01, float f0x3E924925, float 5.000000e-01, float f0x3EDB6DB8, float 5.000000e-01>, ptr %i.f, align 4, !tbaa !16
  store float 0.000000e+00, ptr %i.ab, align 4, !tbaa !19
  store float 5.000000e-01, ptr %i.ad, align 4, !tbaa !19
  store <8 x float> <float f0x3E124925, float 5.000000e-01, float f0x3E924925, float 5.000000e-01, float f0x3EDB6DB8, float 5.000000e-01, float f0x3F124925, float 5.000000e-01>, ptr %i.j, align 4, !tbaa !16
  store float f0x3F124925, ptr %i.aa, align 4, !tbaa !17
  store float f0x3F124925, ptr %i.ac, align 4, !tbaa !17
  store float 5.000000e-01, ptr %i.af, align 4, !tbaa !19
  store float 0.000000e+00, ptr %i.ah, align 4, !tbaa !19
  store float 5.000000e-01, ptr %i.aj, align 4, !tbaa !19
  store float f0x3F36DB6E, ptr %i.ae, align 4, !tbaa !17
  store float f0x3F36DB6E, ptr %i.ag, align 4, !tbaa !17
  store float f0x3F36DB6E, ptr %i.ai, align 4, !tbaa !17
  store float 5.000000e-01, ptr %i.al, align 4, !tbaa !19
  store float 0.000000e+00, ptr %i.an, align 4, !tbaa !19
  store float 5.000000e-01, ptr %i.ap, align 4, !tbaa !19
  store float f0x3F5B6DB8, ptr %i.ak, align 4, !tbaa !17
  store float f0x3F5B6DB8, ptr %i.am, align 4, !tbaa !17
  store float f0x3F5B6DB8, ptr %i.ao, align 4, !tbaa !17
  store <8 x float> <float 0.000000e+00, float 5.000000e-01, float 1.600000e-01, float 3.000000e-01, float 2.500000e-01, float 0.000000e+00, float f0x3EDB6DB8, float 0.000000e+00>, ptr %i.e, align 4, !tbaa !16
  store i32 1, ptr %i.av, align 4, !tbaa !20
  store <4 x i32> <i32 7, i32 7, i32 7, i32 1>, ptr %i.au, align 4, !tbaa !20
  store i32 1, ptr %i.aw, align 4, !tbaa !20
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.ax, i32 noundef 5, ptr noundef nonnull %1, i32 noundef 520, i32 noundef 1, i32 noundef 3) #30
  store i32 1, ptr %1, align 4, !tbaa !153
  store float 5.000000e-01, ptr %i.g, align 4, !tbaa !19
end_hunk_0
