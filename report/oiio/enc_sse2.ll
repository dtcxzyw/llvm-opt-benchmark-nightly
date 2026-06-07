inline.NumInlined: 114
inline.NumDeleted: 46
begin_hunk_0_@CollectHistogram_SSE2:bb.a
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !3
  %.sroa.0.6.vec.extract = extractelement <8 x i16> %i.dr, i64 3
  %i.ef = sext i16 %.sroa.0.6.vec.extract to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = add nsw i32 %i.eh, 1
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !3
  %.sroa.0.8.vec.extract = extractelement <8 x i16> %i.dr, i64 4
  %i.ej = sext i16 %.sroa.0.8.vec.extract to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ej ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !3
  %.sroa.0.10.vec.extract = extractelement <8 x i16> %i.dr, i64 5
  %i.en = sext i16 %.sroa.0.10.vec.extract to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !3
  %.sroa.0.12.vec.extract = extractelement <8 x i16> %i.dr, i64 6
  %i.er = sext i16 %.sroa.0.12.vec.extract to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.er ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !3
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !3
  %.sroa.0.14.vec.extract = extractelement <8 x i16> %i.dr, i64 7
  %i.ev = sext i16 %.sroa.0.14.vec.extract to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ev ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !3
  %i.ey = add nsw i32 %i.ex, 1
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !3
  %.sroa.12.16.vec.extract = extractelement <8 x i16> %i.ds, i64 0
  %i.ez = sext i16 %.sroa.12.16.vec.extract to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ez ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3
  %i.fc = add nsw i32 %i.fb, 1
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !3
  %.sroa.12.18.vec.extract = extractelement <8 x i16> %i.ds, i64 1
  %i.fd = sext i16 %.sroa.12.18.vec.extract to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fd ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3
  %i.fg = add nsw i32 %i.ff, 1
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !3
  %.sroa.12.20.vec.extract = extractelement <8 x i16> %i.ds, i64 2
  %i.fh = sext i16 %.sroa.12.20.vec.extract to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !3
  %.sroa.12.22.vec.extract = extractelement <8 x i16> %i.ds, i64 3
  %i.fl = sext i16 %.sroa.12.22.vec.extract to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fl ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = add nsw i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !3
  %.sroa.12.24.vec.extract = extractelement <8 x i16> %i.ds, i64 4
  %i.fp = sext i16 %.sroa.12.24.vec.extract to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fp ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3
  %i.fs = add nsw i32 %i.fr, 1
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !3
  %.sroa.12.26.vec.extract = extractelement <8 x i16> %i.ds, i64 5
  %i.ft = sext i16 %.sroa.12.26.vec.extract to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !3
  %.sroa.12.28.vec.extract = extractelement <8 x i16> %i.ds, i64 6
  %i.fx = sext i16 %.sroa.12.28.vec.extract to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !3
  %i.ga = add nsw i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !3
  %.sroa.12.30.vec.extract = extractelement <8 x i16> %i.ds, i64 7
  %i.gb = sext i16 %.sroa.12.30.vec.extract to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gb ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !3
  %i.ge = add nsw i32 %i.gd, 1
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !3
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @VP8SetHistogramData(ptr noundef nonnull %i.a, ptr noundef %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @Intra16Preds_SSE2(ptr noalias nofree noundef writeonly initializes((0, 1024)) %0, ptr noalias nofree noundef readonly captures(address_is_null) %1, ptr noalias nofree noundef readonly captures(address_is_null) %2) #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %.not.i = icmp eq ptr %2, null                  ; 4 uses
  %.not12.i = icmp eq ptr %1, null                ; 3 uses
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val17.i = load <16 x i8>, ptr %1, align 16, !tbaa !14, !alias.scope !23, !noalias !27
  %.val1418.i = load <16 x i8>, ptr %2, align 16, !tbaa !14, !alias.scope !25, !noalias !28
  %i.a = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.val1418.i, <16 x i8> zeroinitializer)
  %i.b = bitcast <2 x i64> %i.a to <4 x i32>      ; 2 uses
  %i.c = shufflevector <4 x i32> %i.b, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.d = add <4 x i32> %i.c, %i.b
  %i.e = extractelement <4 x i32> %i.d, i64 0
  %i.f = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.val17.i, <16 x i8> zeroinitializer)
  %i.g = bitcast <2 x i64> %i.f to <4 x i32>      ; 2 uses
  %i.h = shufflevector <4 x i32> %i.g, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.i = add <4 x i32> %i.h, %i.g
  %i.j = extractelement <4 x i32> %i.i, i64 0
  %i.k = add i32 %i.e, 16
  %i.l = add i32 %i.k, %i.j
  %i.m = lshr i32 %i.l, 5
  %i.n = trunc i32 %i.m to i8
  %i.o = insertelement <16 x i8> poison, i8 %i.n, i64 0
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %DC16Mode_SSE2.exit

bb.d:                                             ; preds = %bb.b
  %.val1519.i = load <16 x i8>, ptr %2, align 16, !tbaa !14, !alias.scope !25, !noalias !28
  %i.q = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.val1519.i, <16 x i8> zeroinitializer)
  %i.r = bitcast <2 x i64> %i.q to <4 x i32>      ; 2 uses
  %i.s = shufflevector <4 x i32> %i.r, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.t = add <4 x i32> %i.s, %i.r
  %i.u = extractelement <4 x i32> %i.t, i64 0
  %i.v = add nsw i32 %i.u, 8
  %i.w = lshr i32 %i.v, 4
  %i.x = trunc i32 %i.w to i8
  %i.y = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %DC16Mode_SSE2.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not12.i, label %DC16Mode_SSE2.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1620.i = load <16 x i8>, ptr %1, align 16, !tbaa !14, !alias.scope !23, !noalias !27
  %i.aa = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.val1620.i, <16 x i8> zeroinitializer)
  %i.ab = bitcast <2 x i64> %i.aa to <4 x i32>    ; 2 uses
  %i.ac = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.ad = add <4 x i32> %i.ac, %i.ab
  %i.ae = extractelement <4 x i32> %i.ad, i64 0
  %i.af = add nsw i32 %i.ae, 8
  %i.ag = lshr i32 %i.af, 4
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = insertelement <16 x i8> poison, i8 %i.ah, i64 0
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %DC16Mode_SSE2.exit

DC16Mode_SSE2.exit:                               ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sink51.i = phi <16 x i8> [ %i.aj, %bb.f ], [ %i.z, %bb.d ], [ %i.p, %bb.c ], [ splat (i8 -128), %bb.e ] ; 16 uses
  store <16 x i8> %.sink51.i, ptr %0, align 16, !tbaa !14, !alias.scope !20, !noalias !29
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <16 x i8> %.sink51.i, ptr %i.ak, align 16, !tbaa !14, !alias.scope !20, !noalias !29
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <16 x i8> %.sink51.i, ptr %i.al, align 16, !tbaa !14, !alias.scope !20, !noalias !29
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <16 x i8> %.sink51.i, ptr %i.am, align 16, !tbaa !14, !alias.scope !20, !noalias !29
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <16 x i8> %.sink51.i, ptr %i.an, align 16, !tbaa !14, !alias.scope !20, !noalias !29
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <16 x i8> %.sink51.i, ptr %i.ao, align 16, !tbaa !14, !alias.scope !20, !noalias !29
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <16 x i8> %.sink51.i, ptr %i.ap, align 16, !tbaa !14, !alias.scope !20, !noalias !29
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <16 x i8> %.sink51.i, ptr %i.aq, align 16, !tbaa !14, !alias.scope !20, !noalias !29
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <16 x i8> %.sink51.i, ptr %i.ar, align 16, !tbaa !14, !alias.scope !20, !noalias !29
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <16 x i8> %.sink51.i, ptr %i.as, align 16, !tbaa !14, !alias.scope !20, !noalias !29
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <16 x i8> %.sink51.i, ptr %i.at, align 16, !tbaa !14, !alias.scope !20, !noalias !29
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <16 x i8> %.sink51.i, ptr %i.au, align 16, !tbaa !14, !alias.scope !20, !noalias !29
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <16 x i8> %.sink51.i, ptr %i.av, align 16, !tbaa !14, !alias.scope !20, !noalias !29
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 416
  store <16 x i8> %.sink51.i, ptr %i.aw, align 16, !tbaa !14, !alias.scope !20, !noalias !29
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <16 x i8> %.sink51.i, ptr %i.ax, align 16, !tbaa !14, !alias.scope !20, !noalias !29
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 480
  store <16 x i8> %.sink51.i, ptr %i.ay, align 16, !tbaa !14, !alias.scope !20, !noalias !29
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 736
  br i1 %.not.i, label %VerticalPred_SSE2.exit, label %bb.g

bb.g:                                             ; preds = %DC16Mode_SSE2.exit
  %.val7.i = load <2 x i64>, ptr %2, align 16, !tbaa !14, !alias.scope !33, !noalias !30 ; 2 uses
  br label %VerticalPred_SSE2.exit

VerticalPred_SSE2.exit:                           ; preds = %DC16Mode_SSE2.exit, %bb.g
  %storemerge = phi <2 x i64> [ %.val7.i, %bb.g ], [ splat (i64 9187201950435737471), %DC16Mode_SSE2.exit ] ; 7 uses
  %.val7.i.sink20 = phi <2 x i64> [ %.val7.i, %bb.g ], [ bitcast (<16 x i8> splat (i8 127) to <2 x i64>), %DC16Mode_SSE2.exit ] ; 9 uses
  store <2 x i64> %storemerge, ptr %i.az, align 16, !tbaa !14, !alias.scope !30, !noalias !33
  store <2 x i64> %storemerge, ptr %i.ba, align 16, !tbaa !14, !alias.scope !30, !noalias !33
  store <2 x i64> %storemerge, ptr %i.bb, align 16, !tbaa !14, !alias.scope !30, !noalias !33
  store <2 x i64> %storemerge, ptr %i.bc, align 16, !tbaa !14, !alias.scope !30, !noalias !33
  store <2 x i64> %storemerge, ptr %i.bd, align 16, !tbaa !14, !alias.scope !30, !noalias !33
  store <2 x i64> %storemerge, ptr %i.be, align 16, !tbaa !14, !alias.scope !30, !noalias !33
  store <2 x i64> %storemerge, ptr %i.bf, align 16, !tbaa !14, !alias.scope !30, !noalias !33
  store <2 x i64> %.val7.i.sink20, ptr %i.bg, align 16, !tbaa !14, !alias.scope !30, !noalias !33
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 768
  store <2 x i64> %.val7.i.sink20, ptr %i.bh, align 16, !tbaa !14, !alias.scope !30, !noalias !33
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 800
  store <2 x i64> %.val7.i.sink20, ptr %i.bi, align 16, !tbaa !14, !alias.scope !30, !noalias !33
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 832
  store <2 x i64> %.val7.i.sink20, ptr %i.bj, align 16, !tbaa !14, !alias.scope !30, !noalias !33
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 864
  store <2 x i64> %.val7.i.sink20, ptr %i.bk, align 16, !tbaa !14, !alias.scope !30, !noalias !33
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 896
  store <2 x i64> %.val7.i.sink20, ptr %i.bl, align 16, !tbaa !14, !alias.scope !30, !noalias !33
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 928
  store <2 x i64> %.val7.i.sink20, ptr %i.bm, align 16, !tbaa !14, !alias.scope !30, !noalias !33
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 960
  store <2 x i64> %.val7.i.sink20, ptr %i.bn, align 16, !tbaa !14, !alias.scope !30, !noalias !33
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 992
  store <2 x i64> %.val7.i.sink20, ptr %i.bo, align 16, !tbaa !14, !alias.scope !30, !noalias !33
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  br i1 %.not12.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %VerticalPred_SSE2.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.bq = load i8, ptr %1, align 1, !tbaa !14, !alias.scope !45, !noalias !46 ; 2 uses
  %i.br = insertelement <16 x i8> poison, i8 %i.bq, i64 0
  %i.bs = shufflevector <16 x i8> %i.br, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.bs, ptr %i.bp, align 16, !tbaa !14, !alias.scope !46, !noalias !45
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !14, !alias.scope !45, !noalias !46 ; 2 uses
  %i.bw = insertelement <16 x i8> poison, i8 %i.bv, i64 0
  %i.bx = shufflevector <16 x i8> %i.bw, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.bx, ptr %i.bt, align 16, !tbaa !14, !alias.scope !46, !noalias !45
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !14, !alias.scope !45, !noalias !46 ; 2 uses
  %i.cb = insertelement <16 x i8> poison, i8 %i.ca, i64 0
  %i.cc = shufflevector <16 x i8> %i.cb, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.cc, ptr %i.by, align 16, !tbaa !14, !alias.scope !46, !noalias !45
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !14, !alias.scope !45, !noalias !46 ; 2 uses
  %i.cg = insertelement <16 x i8> poison, i8 %i.cf, i64 0
  %i.ch = shufflevector <16 x i8> %i.cg, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.ch, ptr %i.cd, align 16, !tbaa !14, !alias.scope !46, !noalias !45
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !14, !alias.scope !45, !noalias !46 ; 2 uses
  %i.cl = insertelement <16 x i8> poison, i8 %i.ck, i64 0
  %i.cm = shufflevector <16 x i8> %i.cl, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.cm, ptr %i.ci, align 16, !tbaa !14, !alias.scope !46, !noalias !45
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !14, !alias.scope !45, !noalias !46 ; 2 uses
  %i.cq = insertelement <16 x i8> poison, i8 %i.cp, i64 0
  %i.cr = shufflevector <16 x i8> %i.cq, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.cr, ptr %i.cn, align 16, !tbaa !14, !alias.scope !46, !noalias !45
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !14, !alias.scope !45, !noalias !46 ; 2 uses
  %i.cv = insertelement <16 x i8> poison, i8 %i.cu, i64 0
  %i.cw = shufflevector <16 x i8> %i.cv, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.cw, ptr %i.cs, align 16, !tbaa !14, !alias.scope !46, !noalias !45
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !14, !alias.scope !45, !noalias !46 ; 2 uses
  %i.da = insertelement <16 x i8> poison, i8 %i.cz, i64 0
  %i.db = shufflevector <16 x i8> %i.da, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.db, ptr %i.cx, align 16, !tbaa !14, !alias.scope !46, !noalias !45
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !14, !alias.scope !45, !noalias !46 ; 2 uses
  %i.df = insertelement <16 x i8> poison, i8 %i.de, i64 0
  %i.dg = shufflevector <16 x i8> %i.df, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.dg, ptr %i.dc, align 16, !tbaa !14, !alias.scope !46, !noalias !45
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !14, !alias.scope !45, !noalias !46 ; 2 uses
  %i.dk = insertelement <16 x i8> poison, i8 %i.dj, i64 0
  %i.dl = shufflevector <16 x i8> %i.dk, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.dl, ptr %i.dh, align 16, !tbaa !14, !alias.scope !46, !noalias !45
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !14, !alias.scope !45, !noalias !46
  %i.dp = insertelement <16 x i8> poison, i8 %i.do, i64 0
  %i.dq = shufflevector <16 x i8> %i.dp, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.dq, ptr %i.dm, align 16, !tbaa !14, !alias.scope !46, !noalias !45
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !14, !alias.scope !45, !noalias !46
  %i.du = insertelement <16 x i8> poison, i8 %i.dt, i64 0
  %i.dv = shufflevector <16 x i8> %i.du, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.dv, ptr %i.dr, align 16, !tbaa !14, !alias.scope !46, !noalias !45
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !14, !alias.scope !45, !noalias !46
  %i.dz = insertelement <16 x i8> poison, i8 %i.dy, i64 0
  %i.ea = shufflevector <16 x i8> %i.dz, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.ea, ptr %i.dw, align 16, !tbaa !14, !alias.scope !46, !noalias !45
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !14, !alias.scope !45, !noalias !46
  %i.ee = insertelement <16 x i8> poison, i8 %i.ed, i64 0
  %i.ef = shufflevector <16 x i8> %i.ee, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.ef, ptr %i.eb, align 16, !tbaa !14, !alias.scope !46, !noalias !45
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !14, !alias.scope !45, !noalias !46
  %i.ej = insertelement <16 x i8> poison, i8 %i.ei, i64 0
  %i.ek = shufflevector <16 x i8> %i.ej, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.ek, ptr %i.eg, align 16, !tbaa !14, !alias.scope !46, !noalias !45
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 15 ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !14, !alias.scope !45, !noalias !46
  %i.eo = insertelement <16 x i8> poison, i8 %i.en, i64 0
  %i.ep = shufflevector <16 x i8> %i.eo, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.ep, ptr %i.el, align 16, !tbaa !14, !alias.scope !46, !noalias !45
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.er = zext i8 %i.bq to i16
  %i.es = load <16 x i8>, ptr %2, align 16, !tbaa !14, !alias.scope !61, !noalias !62 ; 2 uses
  %i.et = shufflevector <16 x i8> %i.es, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.eu = shufflevector <16 x i8> %i.es, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ev = getelementptr inbounds i8, ptr %1, i64 -1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !14, !alias.scope !63, !noalias !64
  %i.ex = zext i8 %i.ew to i16                    ; 16 uses
  %i.ey = bitcast <16 x i8> %i.et to <8 x i16>    ; 16 uses
  %i.ez = bitcast <16 x i8> %i.eu to <8 x i16>    ; 16 uses
  %i.fa = sub nsw i16 %i.er, %i.ex
  %i.fb = insertelement <8 x i16> poison, i16 %i.fa, i64 0
  %i.fc = shufflevector <8 x i16> %i.fb, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.fd = add <8 x i16> %i.fc, %i.ey
  %i.fe = add <8 x i16> %i.fc, %i.ez
  %i.ff = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fd, <8 x i16> %i.fe)
  store <16 x i8> %i.ff, ptr %i.eq, align 16, !tbaa !14, !alias.scope !65, !noalias !66
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fh = zext i8 %i.bv to i16
  %i.fi = sub nsw i16 %i.fh, %i.ex
  %i.fj = insertelement <8 x i16> poison, i16 %i.fi, i64 0
  %i.fk = shufflevector <8 x i16> %i.fj, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.fl = add <8 x i16> %i.fk, %i.ey
  %i.fm = add <8 x i16> %i.fk, %i.ez
  %i.fn = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fl, <8 x i16> %i.fm)
  store <16 x i8> %i.fn, ptr %i.fg, align 16, !tbaa !14, !alias.scope !65, !noalias !66
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fp = zext i8 %i.ca to i16
  %i.fq = sub nsw i16 %i.fp, %i.ex
  %i.fr = insertelement <8 x i16> poison, i16 %i.fq, i64 0
  %i.fs = shufflevector <8 x i16> %i.fr, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ft = add <8 x i16> %i.fs, %i.ey
  %i.fu = add <8 x i16> %i.fs, %i.ez
  %i.fv = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ft, <8 x i16> %i.fu)
  store <16 x i8> %i.fv, ptr %i.fo, align 16, !tbaa !14, !alias.scope !65, !noalias !66
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fx = zext i8 %i.cf to i16
  %i.fy = sub nsw i16 %i.fx, %i.ex
  %i.fz = insertelement <8 x i16> poison, i16 %i.fy, i64 0
  %i.ga = shufflevector <8 x i16> %i.fz, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.gb = add <8 x i16> %i.ga, %i.ey
  %i.gc = add <8 x i16> %i.ga, %i.ez
  %i.gd = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gb, <8 x i16> %i.gc)
  store <16 x i8> %i.gd, ptr %i.fw, align 16, !tbaa !14, !alias.scope !65, !noalias !66
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.gf = zext i8 %i.ck to i16
  %i.gg = sub nsw i16 %i.gf, %i.ex
  %i.gh = insertelement <8 x i16> poison, i16 %i.gg, i64 0
  %i.gi = shufflevector <8 x i16> %i.gh, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.gj = add <8 x i16> %i.gi, %i.ey
  %i.gk = add <8 x i16> %i.gi, %i.ez
  %i.gl = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gj, <8 x i16> %i.gk)
  store <16 x i8> %i.gl, ptr %i.ge, align 16, !tbaa !14, !alias.scope !65, !noalias !66
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gn = zext i8 %i.cp to i16
  %i.go = sub nsw i16 %i.gn, %i.ex
  %i.gp = insertelement <8 x i16> poison, i16 %i.go, i64 0
  %i.gq = shufflevector <8 x i16> %i.gp, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.gr = add <8 x i16> %i.gq, %i.ey
  %i.gs = add <8 x i16> %i.gq, %i.ez
  %i.gt = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gr, <8 x i16> %i.gs)
  store <16 x i8> %i.gt, ptr %i.gm, align 16, !tbaa !14, !alias.scope !65, !noalias !66
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gv = zext i8 %i.cu to i16
  %i.gw = sub nsw i16 %i.gv, %i.ex
  %i.gx = insertelement <8 x i16> poison, i16 %i.gw, i64 0
  %i.gy = shufflevector <8 x i16> %i.gx, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.gz = add <8 x i16> %i.gy, %i.ey
  %i.ha = add <8 x i16> %i.gy, %i.ez
  %i.hb = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gz, <8 x i16> %i.ha)
  store <16 x i8> %i.hb, ptr %i.gu, align 16, !tbaa !14, !alias.scope !65, !noalias !66
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.hd = zext i8 %i.cz to i16
  %i.he = sub nsw i16 %i.hd, %i.ex
  %i.hf = insertelement <8 x i16> poison, i16 %i.he, i64 0
  %i.hg = shufflevector <8 x i16> %i.hf, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.hh = add <8 x i16> %i.hg, %i.ey
  %i.hi = add <8 x i16> %i.hg, %i.ez
  %i.hj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hh, <8 x i16> %i.hi)
  store <16 x i8> %i.hj, ptr %i.hc, align 16, !tbaa !14, !alias.scope !65, !noalias !66
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.hl = zext i8 %i.de to i16
  %i.hm = sub nsw i16 %i.hl, %i.ex
  %i.hn = insertelement <8 x i16> poison, i16 %i.hm, i64 0
  %i.ho = shufflevector <8 x i16> %i.hn, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.hp = add <8 x i16> %i.ho, %i.ey
  %i.hq = add <8 x i16> %i.ho, %i.ez
  %i.hr = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hp, <8 x i16> %i.hq)
  store <16 x i8> %i.hr, ptr %i.hk, align 16, !tbaa !14, !alias.scope !65, !noalias !66
end_hunk_0
