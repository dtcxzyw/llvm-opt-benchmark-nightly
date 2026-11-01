Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/enc_sse2?download=true
inline.NumInlined: 114
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@CollectHistogram_SSE2:bb.a
  %.sroa.12.18.vec.extract = extractelement <8 x i16> %i.ds, i64 1
  %i.fd = sext i16 %.sroa.12.18.vec.extract to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fd ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !8
  %i.fg = add nsw i32 %i.ff, 1
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !8
  %.sroa.12.20.vec.extract = extractelement <8 x i16> %i.ds, i64 2
  %i.fh = sext i16 %.sroa.12.20.vec.extract to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !8
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !8
  %.sroa.12.22.vec.extract = extractelement <8 x i16> %i.ds, i64 3
  %i.fl = sext i16 %.sroa.12.22.vec.extract to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fl ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !8
  %i.fo = add nsw i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !8
  %.sroa.12.24.vec.extract = extractelement <8 x i16> %i.ds, i64 4
  %i.fp = sext i16 %.sroa.12.24.vec.extract to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fp ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !8
  %i.fs = add nsw i32 %i.fr, 1
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !8
  %.sroa.12.26.vec.extract = extractelement <8 x i16> %i.ds, i64 5
  %i.ft = sext i16 %.sroa.12.26.vec.extract to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !8
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !8
  %.sroa.12.28.vec.extract = extractelement <8 x i16> %i.ds, i64 6
  %i.fx = sext i16 %.sroa.12.28.vec.extract to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !8
  %i.ga = add nsw i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !8
  %.sroa.12.30.vec.extract = extractelement <8 x i16> %i.ds, i64 7
  %i.gb = sext i16 %.sroa.12.30.vec.extract to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gb ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !8
  %i.ge = add nsw i32 %i.gd, 1
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !8
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %.not.i = icmp eq ptr %2, null                  ; 4 uses
  %.not12.i = icmp eq ptr %1, null                ; 3 uses
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val17.i = load <16 x i8>, ptr %1, align 16, !tbaa !9, !alias.scope !52
  %.val1418.i = load <16 x i8>, ptr %2, align 16, !tbaa !9, !alias.scope !53
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
  %.val1519.i = load <16 x i8>, ptr %2, align 16, !tbaa !9, !alias.scope !53
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
  %.val1620.i = load <16 x i8>, ptr %1, align 16, !tbaa !9, !alias.scope !52
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
  store <16 x i8> %.sink51.i, ptr %0, align 16, !tbaa !9, !alias.scope !51
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <16 x i8> %.sink51.i, ptr %i.ak, align 16, !tbaa !9, !alias.scope !51
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <16 x i8> %.sink51.i, ptr %i.al, align 16, !tbaa !9, !alias.scope !51
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <16 x i8> %.sink51.i, ptr %i.am, align 16, !tbaa !9, !alias.scope !51
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <16 x i8> %.sink51.i, ptr %i.an, align 16, !tbaa !9, !alias.scope !51
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160
  store <16 x i8> %.sink51.i, ptr %i.ao, align 16, !tbaa !9, !alias.scope !51
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <16 x i8> %.sink51.i, ptr %i.ap, align 16, !tbaa !9, !alias.scope !51
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <16 x i8> %.sink51.i, ptr %i.aq, align 16, !tbaa !9, !alias.scope !51
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <16 x i8> %.sink51.i, ptr %i.ar, align 16, !tbaa !9, !alias.scope !51
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <16 x i8> %.sink51.i, ptr %i.as, align 16, !tbaa !9, !alias.scope !51
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <16 x i8> %.sink51.i, ptr %i.at, align 16, !tbaa !9, !alias.scope !51
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <16 x i8> %.sink51.i, ptr %i.au, align 16, !tbaa !9, !alias.scope !51
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <16 x i8> %.sink51.i, ptr %i.av, align 16, !tbaa !9, !alias.scope !51
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 416
  store <16 x i8> %.sink51.i, ptr %i.aw, align 16, !tbaa !9, !alias.scope !51
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 448
  store <16 x i8> %.sink51.i, ptr %i.ax, align 16, !tbaa !9, !alias.scope !51
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 480
  store <16 x i8> %.sink51.i, ptr %i.ay, align 16, !tbaa !9, !alias.scope !51
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 736
  br i1 %.not.i, label %VerticalPred_SSE2.exit, label %bb.g

bb.g:                                             ; preds = %DC16Mode_SSE2.exit
  %.val7.i = load <2 x i64>, ptr %2, align 16, !tbaa !9, !alias.scope !55
  br label %VerticalPred_SSE2.exit

VerticalPred_SSE2.exit:                           ; preds = %DC16Mode_SSE2.exit, %bb.g
  %storemerge = phi <2 x i64> [ %.val7.i, %bb.g ], [ splat (i64 9187201950435737471), %DC16Mode_SSE2.exit ] ; 16 uses
  store <2 x i64> %storemerge, ptr %i.az, align 16, !tbaa !9, !alias.scope !54
  store <2 x i64> %storemerge, ptr %i.ba, align 16, !tbaa !9, !alias.scope !54
  store <2 x i64> %storemerge, ptr %i.bb, align 16, !tbaa !9, !alias.scope !54
  store <2 x i64> %storemerge, ptr %i.bc, align 16, !tbaa !9, !alias.scope !54
  store <2 x i64> %storemerge, ptr %i.bd, align 16, !tbaa !9, !alias.scope !54
  store <2 x i64> %storemerge, ptr %i.be, align 16, !tbaa !9, !alias.scope !54
  store <2 x i64> %storemerge, ptr %i.bf, align 16, !tbaa !9, !alias.scope !54
  store <2 x i64> %storemerge, ptr %i.bg, align 16, !tbaa !9, !alias.scope !54
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 768
  store <2 x i64> %storemerge, ptr %i.bh, align 16, !tbaa !9, !alias.scope !54
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 800
  store <2 x i64> %storemerge, ptr %i.bi, align 16, !tbaa !9, !alias.scope !54
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 832
  store <2 x i64> %storemerge, ptr %i.bj, align 16, !tbaa !9, !alias.scope !54
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 864
  store <2 x i64> %storemerge, ptr %i.bk, align 16, !tbaa !9, !alias.scope !54
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 896
  store <2 x i64> %storemerge, ptr %i.bl, align 16, !tbaa !9, !alias.scope !54
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 928
  store <2 x i64> %storemerge, ptr %i.bm, align 16, !tbaa !9, !alias.scope !54
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 960
  store <2 x i64> %storemerge, ptr %i.bn, align 16, !tbaa !9, !alias.scope !54
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 992
  store <2 x i64> %storemerge, ptr %i.bo, align 16, !tbaa !9, !alias.scope !54
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  br i1 %.not12.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %VerticalPred_SSE2.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %3 = load i8, ptr %1, align 1, !tbaa !9, !alias.scope !60
  %4 = insertelement <16 x i8> poison, i8 %3, i64 0
  %5 = shufflevector <16 x i8> %4, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %5, ptr %i.bp, align 16, !tbaa !9, !alias.scope !61
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 560
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !9, !alias.scope !60
  %8 = insertelement <16 x i8> poison, i8 %7, i64 0
  %9 = shufflevector <16 x i8> %8, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %9, ptr %i.bq, align 16, !tbaa !9, !alias.scope !61
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 592
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !9, !alias.scope !60
  %12 = insertelement <16 x i8> poison, i8 %11, i64 0
  %13 = shufflevector <16 x i8> %12, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %13, ptr %i.br, align 16, !tbaa !9, !alias.scope !61
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 3
  %14 = load i8, ptr %i.bt, align 1, !tbaa !9, !alias.scope !60
  %15 = insertelement <16 x i8> poison, i8 %14, i64 0
  %16 = shufflevector <16 x i8> %15, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %16, ptr %i.bs, align 16, !tbaa !9, !alias.scope !61
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %17 = load i8, ptr %i.bv, align 1, !tbaa !9, !alias.scope !60
  %18 = insertelement <16 x i8> poison, i8 %17, i64 0
  %i.bw = shufflevector <16 x i8> %18, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.bw, ptr %i.bu, align 16, !tbaa !9, !alias.scope !61
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 688
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %21 = load i8, ptr %20, align 1, !tbaa !9, !alias.scope !60
  %22 = insertelement <16 x i8> poison, i8 %21, i64 0
  %23 = shufflevector <16 x i8> %22, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %23, ptr %19, align 16, !tbaa !9, !alias.scope !61
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 720
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %26 = load i8, ptr %25, align 1, !tbaa !9, !alias.scope !60
  %27 = insertelement <16 x i8> poison, i8 %26, i64 0
  %28 = shufflevector <16 x i8> %27, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %28, ptr %24, align 16, !tbaa !9, !alias.scope !61
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 752
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %31 = load i8, ptr %30, align 1, !tbaa !9, !alias.scope !60
  %32 = insertelement <16 x i8> poison, i8 %31, i64 0
  %33 = shufflevector <16 x i8> %32, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %33, ptr %29, align 16, !tbaa !9, !alias.scope !61
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %34 = load i8, ptr %i.by, align 1, !tbaa !9, !alias.scope !60
  %35 = insertelement <16 x i8> poison, i8 %34, i64 0
  %36 = shufflevector <16 x i8> %35, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %36, ptr %i.bx, align 16, !tbaa !9, !alias.scope !61
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 816
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %38 = load i8, ptr %37, align 1, !tbaa !9, !alias.scope !60
  %39 = insertelement <16 x i8> poison, i8 %38, i64 0
  %40 = shufflevector <16 x i8> %39, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %40, ptr %i.bz, align 16, !tbaa !9, !alias.scope !61
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9, !alias.scope !60
  %i.cd = insertelement <16 x i8> poison, i8 %i.cc, i64 0
  %i.ce = shufflevector <16 x i8> %i.cd, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.ce, ptr %i.ca, align 16, !tbaa !9, !alias.scope !61
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !9, !alias.scope !60
  %i.ci = insertelement <16 x i8> poison, i8 %i.ch, i64 0
  %i.cj = shufflevector <16 x i8> %i.ci, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.cj, ptr %i.cf, align 16, !tbaa !9, !alias.scope !61
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !9, !alias.scope !60
  %i.cn = insertelement <16 x i8> poison, i8 %i.cm, i64 0
  %i.co = shufflevector <16 x i8> %i.cn, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.co, ptr %i.ck, align 16, !tbaa !9, !alias.scope !61
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !9, !alias.scope !60
  %i.cs = insertelement <16 x i8> poison, i8 %i.cr, i64 0
  %i.ct = shufflevector <16 x i8> %i.cs, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.ct, ptr %i.cp, align 16, !tbaa !9, !alias.scope !61
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !9, !alias.scope !60
  %i.cx = insertelement <16 x i8> poison, i8 %i.cw, i64 0
  %i.cy = shufflevector <16 x i8> %i.cx, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.cy, ptr %i.cu, align 16, !tbaa !9, !alias.scope !61
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.db = load i8, ptr %i.da, align 1, !tbaa !9, !alias.scope !60
  %i.dc = insertelement <16 x i8> poison, i8 %i.db, i64 0
  %i.dd = shufflevector <16 x i8> %i.dc, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  store <16 x i8> %i.dd, ptr %i.cz, align 16, !tbaa !9, !alias.scope !61
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.df = load <16 x i8>, ptr %2, align 16, !tbaa !9, !alias.scope !68 ; 2 uses
  %i.dg = shufflevector <16 x i8> %i.df, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dh = shufflevector <16 x i8> %i.df, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.di = getelementptr inbounds i8, ptr %1, i64 -1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !9, !alias.scope !69
  %i.dk = zext i8 %i.dj to i16
  %i.dl = bitcast <16 x i8> %i.dg to <8 x i16>    ; 16 uses
  %i.dm = bitcast <16 x i8> %i.dh to <8 x i16>    ; 16 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 496
  %41 = load <16 x i8>, ptr %1, align 1, !tbaa !9
  %i.ec = zext <16 x i8> %41 to <16 x i16>
  %i.ed = insertelement <16 x i16> poison, i16 %i.dk, i64 0
  %i.ee = shufflevector <16 x i16> %i.ed, <16 x i16> poison, <16 x i32> zeroinitializer
  %i.ef = sub nsw <16 x i16> %i.ec, %i.ee         ; 16 uses
  %i.eg = shufflevector <16 x i16> %i.ef, <16 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.eh = add nsw <8 x i16> %i.eg, %i.dl
  %i.ei = add nsw <8 x i16> %i.eg, %i.dm
  %i.ej = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.eh, <8 x i16> %i.ei)
  store <16 x i8> %i.ej, ptr %i.de, align 16, !tbaa !9, !alias.scope !70
  %i.ek = shufflevector <16 x i16> %i.ef, <16 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.el = add nsw <8 x i16> %i.ek, %i.dl
  %i.em = add nsw <8 x i16> %i.ek, %i.dm
  %i.en = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.el, <8 x i16> %i.em)
  store <16 x i8> %i.en, ptr %i.dn, align 16, !tbaa !9, !alias.scope !70
  %i.eo = shufflevector <16 x i16> %i.ef, <16 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.ep = add nsw <8 x i16> %i.eo, %i.dl
  %i.eq = add nsw <8 x i16> %i.eo, %i.dm
  %i.er = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ep, <8 x i16> %i.eq)
  store <16 x i8> %i.er, ptr %i.do, align 16, !tbaa !9, !alias.scope !70
  %i.es = shufflevector <16 x i16> %i.ef, <16 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.et = add nsw <8 x i16> %i.es, %i.dl
  %i.eu = add nsw <8 x i16> %i.es, %i.dm
  %i.ev = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.et, <8 x i16> %i.eu)
  store <16 x i8> %i.ev, ptr %i.dp, align 16, !tbaa !9, !alias.scope !70
  %i.ew = shufflevector <16 x i16> %i.ef, <16 x i16> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4> ; 2 uses
  %i.ex = add nsw <8 x i16> %i.ew, %i.dl
  %i.ey = add nsw <8 x i16> %i.ew, %i.dm
  %i.ez = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ex, <8 x i16> %i.ey)
  store <16 x i8> %i.ez, ptr %i.dq, align 16, !tbaa !9, !alias.scope !70
  %i.fa = shufflevector <16 x i16> %i.ef, <16 x i16> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5> ; 2 uses
  %i.fb = add nsw <8 x i16> %i.fa, %i.dl
  %i.fc = add nsw <8 x i16> %i.fa, %i.dm
  %i.fd = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fb, <8 x i16> %i.fc)
  store <16 x i8> %i.fd, ptr %i.dr, align 16, !tbaa !9, !alias.scope !70
  %i.fe = shufflevector <16 x i16> %i.ef, <16 x i16> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6> ; 2 uses
  %i.ff = add nsw <8 x i16> %i.fe, %i.dl
  %i.fg = add nsw <8 x i16> %i.fe, %i.dm
  %i.fh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ff, <8 x i16> %i.fg)
  store <16 x i8> %i.fh, ptr %i.ds, align 16, !tbaa !9, !alias.scope !70
  %i.fi = shufflevector <16 x i16> %i.ef, <16 x i16> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7> ; 2 uses
  %i.fj = add nsw <8 x i16> %i.fi, %i.dl
  %i.fk = add nsw <8 x i16> %i.fi, %i.dm
  %i.fl = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fj, <8 x i16> %i.fk)
  store <16 x i8> %i.fl, ptr %i.dt, align 16, !tbaa !9, !alias.scope !70
  %i.fm = shufflevector <16 x i16> %i.ef, <16 x i16> poison, <8 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8> ; 2 uses
  %i.fn = add nsw <8 x i16> %i.fm, %i.dl
  %i.fo = add nsw <8 x i16> %i.fm, %i.dm
  %i.fp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fn, <8 x i16> %i.fo)
  store <16 x i8> %i.fp, ptr %i.du, align 16, !tbaa !9, !alias.scope !70
  %i.fq = shufflevector <16 x i16> %i.ef, <16 x i16> poison, <8 x i32> <i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9> ; 2 uses
  %i.fr = add nsw <8 x i16> %i.fq, %i.dl
  %i.fs = add nsw <8 x i16> %i.fq, %i.dm
  %i.ft = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fr, <8 x i16> %i.fs)
  store <16 x i8> %i.ft, ptr %i.dv, align 16, !tbaa !9, !alias.scope !70
  %i.fu = shufflevector <16 x i16> %i.ef, <16 x i16> poison, <8 x i32> <i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10> ; 2 uses
  %i.fv = add nsw <8 x i16> %i.fu, %i.dl
  %i.fw = add nsw <8 x i16> %i.fu, %i.dm
  %i.fx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fv, <8 x i16> %i.fw)
  store <16 x i8> %i.fx, ptr %i.dw, align 16, !tbaa !9, !alias.scope !70
  %i.fy = shufflevector <16 x i16> %i.ef, <16 x i16> poison, <8 x i32> <i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11> ; 2 uses
  %i.fz = add nsw <8 x i16> %i.fy, %i.dl
  %i.ga = add nsw <8 x i16> %i.fy, %i.dm
  %i.gb = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fz, <8 x i16> %i.ga)
  store <16 x i8> %i.gb, ptr %i.dx, align 16, !tbaa !9, !alias.scope !70
  %i.gc = shufflevector <16 x i16> %i.ef, <16 x i16> poison, <8 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12> ; 2 uses
  %i.gd = add nsw <8 x i16> %i.gc, %i.dl
  %i.ge = add nsw <8 x i16> %i.gc, %i.dm
  %i.gf = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gd, <8 x i16> %i.ge)
  store <16 x i8> %i.gf, ptr %i.dy, align 16, !tbaa !9, !alias.scope !70
  %i.gg = shufflevector <16 x i16> %i.ef, <16 x i16> poison, <8 x i32> <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13> ; 2 uses
  %i.gh = add nsw <8 x i16> %i.gg, %i.dl
  %i.gi = add nsw <8 x i16> %i.gg, %i.dm
  %i.gj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gh, <8 x i16> %i.gi)
  store <16 x i8> %i.gj, ptr %i.dz, align 16, !tbaa !9, !alias.scope !70
  %i.gk = shufflevector <16 x i16> %i.ef, <16 x i16> poison, <8 x i32> <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14> ; 2 uses
  %i.gl = add nsw <8 x i16> %i.gk, %i.dl
  %i.gm = add nsw <8 x i16> %i.gk, %i.dm
  %i.gn = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gl, <8 x i16> %i.gm)
  store <16 x i8> %i.gn, ptr %i.ea, align 16, !tbaa !9, !alias.scope !70
  %i.go = shufflevector <16 x i16> %i.ef, <16 x i16> poison, <8 x i32> <i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15> ; 2 uses
  %i.gp = add nsw <8 x i16> %i.go, %i.dl
  %i.gq = add nsw <8 x i16> %i.go, %i.dm
  %i.gr = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gp, <8 x i16> %i.gq)
  store <16 x i8> %i.gr, ptr %i.eb, align 16, !tbaa !9, !alias.scope !70
  br label %TrueMotion_SSE2.exit

bb.j:                                             ; preds = %bb.h
  store <16 x i8> %5, ptr %i.de, align 16, !tbaa !9, !alias.scope !71
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i8> %9, ptr %i.gs, align 16, !tbaa !9, !alias.scope !71
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <16 x i8> %13, ptr %i.gt, align 16, !tbaa !9, !alias.scope !71
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <16 x i8> %16, ptr %i.gu, align 16, !tbaa !9, !alias.scope !71
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <16 x i8> %i.bw, ptr %i.gv, align 16, !tbaa !9, !alias.scope !71
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <16 x i8> %23, ptr %i.gw, align 16, !tbaa !9, !alias.scope !71
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <16 x i8> %28, ptr %i.gx, align 16, !tbaa !9, !alias.scope !71
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <16 x i8> %33, ptr %i.gy, align 16, !tbaa !9, !alias.scope !71
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <16 x i8> %36, ptr %i.gz, align 16, !tbaa !9, !alias.scope !71
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <16 x i8> %40, ptr %i.ha, align 16, !tbaa !9, !alias.scope !71
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <16 x i8> %i.ce, ptr %i.hb, align 16, !tbaa !9, !alias.scope !71
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 368
  store <16 x i8> %i.cj, ptr %i.hc, align 16, !tbaa !9, !alias.scope !71
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 400
  store <16 x i8> %i.co, ptr %i.hd, align 16, !tbaa !9, !alias.scope !71
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 432
  store <16 x i8> %i.ct, ptr %i.he, align 16, !tbaa !9, !alias.scope !71
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 464
  store <16 x i8> %i.cy, ptr %i.hf, align 16, !tbaa !9, !alias.scope !71
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 496
  store <16 x i8> %i.dd, ptr %i.hg, align 16, !tbaa !9, !alias.scope !71
  br label %TrueMotion_SSE2.exit

bb.k:                                             ; preds = %VerticalPred_SSE2.exit
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 752
  store <16 x i8> splat (i8 -127), ptr %i.bp, align 16, !tbaa !9, !alias.scope !56
  store <16 x i8> splat (i8 -127), ptr %i.hh, align 16, !tbaa !9, !alias.scope !56
  store <16 x i8> splat (i8 -127), ptr %i.hi, align 16, !tbaa !9, !alias.scope !56
  store <16 x i8> splat (i8 -127), ptr %i.hj, align 16, !tbaa !9, !alias.scope !56
  store <16 x i8> splat (i8 -127), ptr %i.hk, align 16, !tbaa !9, !alias.scope !56
  store <16 x i8> splat (i8 -127), ptr %i.hl, align 16, !tbaa !9, !alias.scope !56
  store <16 x i8> splat (i8 -127), ptr %i.hm, align 16, !tbaa !9, !alias.scope !56
  store <16 x i8> splat (i8 -127), ptr %i.hn, align 16, !tbaa !9, !alias.scope !56
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 784
  store <16 x i8> splat (i8 -127), ptr %i.ho, align 16, !tbaa !9, !alias.scope !56
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 816
  store <16 x i8> splat (i8 -127), ptr %i.hp, align 16, !tbaa !9, !alias.scope !56
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 848
  store <16 x i8> splat (i8 -127), ptr %i.hq, align 16, !tbaa !9, !alias.scope !56
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 880
  store <16 x i8> splat (i8 -127), ptr %i.hr, align 16, !tbaa !9, !alias.scope !56
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 912
  store <16 x i8> splat (i8 -127), ptr %i.hs, align 16, !tbaa !9, !alias.scope !56
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 944
  store <16 x i8> splat (i8 -127), ptr %i.ht, align 16, !tbaa !9, !alias.scope !56
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 976
  store <16 x i8> splat (i8 -127), ptr %i.hu, align 16, !tbaa !9, !alias.scope !56
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store <16 x i8> splat (i8 -127), ptr %i.hv, align 16, !tbaa !9, !alias.scope !56
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val7.i.i = load <2 x i64>, ptr %2, align 16, !tbaa !9, !alias.scope !74 ; 16 uses
  store <2 x i64> %.val7.i.i, ptr %i.hw, align 16, !tbaa !9, !alias.scope !75
  store <2 x i64> %.val7.i.i, ptr %i.hx, align 16, !tbaa !9, !alias.scope !75
  store <2 x i64> %.val7.i.i, ptr %i.hy, align 16, !tbaa !9, !alias.scope !75
  store <2 x i64> %.val7.i.i, ptr %i.hz, align 16, !tbaa !9, !alias.scope !75
  store <2 x i64> %.val7.i.i, ptr %i.ia, align 16, !tbaa !9, !alias.scope !75
  store <2 x i64> %.val7.i.i, ptr %i.ib, align 16, !tbaa !9, !alias.scope !75
  store <2 x i64> %.val7.i.i, ptr %i.ic, align 16, !tbaa !9, !alias.scope !75
  store <2 x i64> %.val7.i.i, ptr %i.id, align 16, !tbaa !9, !alias.scope !75
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <2 x i64> %.val7.i.i, ptr %i.ie, align 16, !tbaa !9, !alias.scope !75
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <2 x i64> %.val7.i.i, ptr %i.if, align 16, !tbaa !9, !alias.scope !75
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <2 x i64> %.val7.i.i, ptr %i.ig, align 16, !tbaa !9, !alias.scope !75
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 368
  store <2 x i64> %.val7.i.i, ptr %i.ih, align 16, !tbaa !9, !alias.scope !75
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 400
  store <2 x i64> %.val7.i.i, ptr %i.ii, align 16, !tbaa !9, !alias.scope !75
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 432
  store <2 x i64> %.val7.i.i, ptr %i.ij, align 16, !tbaa !9, !alias.scope !75
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 464
  store <2 x i64> %.val7.i.i, ptr %i.ik, align 16, !tbaa !9, !alias.scope !75
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 496
  store <2 x i64> %.val7.i.i, ptr %i.il, align 16, !tbaa !9, !alias.scope !75
  br label %TrueMotion_SSE2.exit

bb.m:                                             ; preds = %bb.k
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <16 x i8> splat (i8 -127), ptr %i.hw, align 16, !tbaa !9, !alias.scope !62
  store <16 x i8> splat (i8 -127), ptr %i.im, align 16, !tbaa !9, !alias.scope !62
  store <16 x i8> splat (i8 -127), ptr %i.in, align 16, !tbaa !9, !alias.scope !62
  store <16 x i8> splat (i8 -127), ptr %i.io, align 16, !tbaa !9, !alias.scope !62
  store <16 x i8> splat (i8 -127), ptr %i.ip, align 16, !tbaa !9, !alias.scope !62
  store <16 x i8> splat (i8 -127), ptr %i.iq, align 16, !tbaa !9, !alias.scope !62
  store <16 x i8> splat (i8 -127), ptr %i.ir, align 16, !tbaa !9, !alias.scope !62
  store <16 x i8> splat (i8 -127), ptr %i.is, align 16, !tbaa !9, !alias.scope !62
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <16 x i8> splat (i8 -127), ptr %i.it, align 16, !tbaa !9, !alias.scope !62
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <16 x i8> splat (i8 -127), ptr %i.iu, align 16, !tbaa !9, !alias.scope !62
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <16 x i8> splat (i8 -127), ptr %i.iv, align 16, !tbaa !9, !alias.scope !62
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 368
  store <16 x i8> splat (i8 -127), ptr %i.iw, align 16, !tbaa !9, !alias.scope !62
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 400
  store <16 x i8> splat (i8 -127), ptr %i.ix, align 16, !tbaa !9, !alias.scope !62
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 432
  store <16 x i8> splat (i8 -127), ptr %i.iy, align 16, !tbaa !9, !alias.scope !62
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 464
  store <16 x i8> splat (i8 -127), ptr %i.iz, align 16, !tbaa !9, !alias.scope !62
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 496
  store <16 x i8> splat (i8 -127), ptr %i.ja, align 16, !tbaa !9, !alias.scope !62
  br label %TrueMotion_SSE2.exit

TrueMotion_SSE2.exit:                             ; preds = %bb.i, %bb.j, %bb.l, %bb.m
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @IntraChromaPreds_SSE2(ptr noalias nofree noundef writeonly initializes((1024, 1536)) %0, ptr noalias nofree noundef readonly captures(address_is_null) %1, ptr noalias nofree noundef readonly captures(address_is_null) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %.not.i = icmp eq ptr %2, null                  ; 7 uses
  %.not12.i = icmp eq ptr %1, null                ; 4 uses
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not12.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %1, align 1, !tbaa !9, !alias.scope !137
  %.val14.i = load i64, ptr %2, align 1, !tbaa !9, !alias.scope !138
  %i.b = insertelement <2 x i64> poison, i64 %.val14.i, i64 0
  %i.c = insertelement <2 x i64> %i.b, i64 %.val.i, i64 1
  %i.d = bitcast <2 x i64> %i.c to <16 x i8>
  %i.e = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.d, <16 x i8> zeroinitializer)
  %i.f = bitcast <2 x i64> %i.e to <4 x i32>      ; 2 uses
  %i.g = shufflevector <4 x i32> %i.f, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.h = add <4 x i32> %i.g, %i.f
  %i.i = extractelement <4 x i32> %i.h, i64 0
  %i.j = add nsw i32 %i.i, 8
  %i.k = lshr i32 %i.j, 4
  %i.l = trunc i32 %i.k to i8
  %i.m = insertelement <16 x i8> poison, i8 %i.l, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.o = bitcast <16 x i8> %i.n to <2 x i64>
  %i.p = extractelement <2 x i64> %i.o, i64 0
  br label %DC8uvMode_SSE2.exit

bb.d:                                             ; preds = %bb.b
  %.val15.i = load i64, ptr %2, align 1, !tbaa !9, !alias.scope !138
  %i.q = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.val15.i, i64 0
  %i.r = bitcast <2 x i64> %i.q to <16 x i8>
  %i.s = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.r, <16 x i8> zeroinitializer)
  %i.t = bitcast <2 x i64> %i.s to <4 x i32>
  %i.u = extractelement <4 x i32> %i.t, i64 0
  %i.v = add nsw i32 %i.u, 4
  %i.w = lshr i32 %i.v, 3
  %i.x = trunc i32 %i.w to i8
  %i.y = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %i.z = shufflevector <16 x i8> %i.y, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aa = bitcast <16 x i8> %i.z to <2 x i64>
  %i.ab = extractelement <2 x i64> %i.aa, i64 0
  br label %DC8uvMode_SSE2.exit

bb.e:                                             ; preds = %bb.a
  br i1 %.not12.i, label %DC8uvMode_SSE2.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val16.i = load i64, ptr %1, align 1, !tbaa !9, !alias.scope !137
  %i.ac = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.val16.i, i64 0
  %i.ad = bitcast <2 x i64> %i.ac to <16 x i8>
  %i.ae = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ad, <16 x i8> zeroinitializer)
  %i.af = bitcast <2 x i64> %i.ae to <4 x i32>
  %i.ag = extractelement <4 x i32> %i.af, i64 0
  %i.ah = add nsw i32 %i.ag, 4
  %i.ai = lshr i32 %i.ah, 3
  %i.aj = trunc i32 %i.ai to i8
  %i.ak = insertelement <16 x i8> poison, i8 %i.aj, i64 0
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.am = bitcast <16 x i8> %i.al to <2 x i64>
  %i.an = extractelement <2 x i64> %i.am, i64 0
  br label %DC8uvMode_SSE2.exit

DC8uvMode_SSE2.exit:                              ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sink31.i = phi i64 [ %i.an, %bb.f ], [ %i.ab, %bb.d ], [ %i.p, %bb.c ], [ -9187201950435737472, %bb.e ] ; 8 uses
  store i64 %.sink31.i, ptr %i.a, align 1, !tbaa !9, !alias.scope !136
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store i64 %.sink31.i, ptr %i.ao, align 1, !tbaa !9, !alias.scope !136
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store i64 %.sink31.i, ptr %i.ap, align 1, !tbaa !9, !alias.scope !136
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 %.sink31.i, ptr %i.aq, align 1, !tbaa !9, !alias.scope !136
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i64 %.sink31.i, ptr %i.ar, align 1, !tbaa !9, !alias.scope !136
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i64 %.sink31.i, ptr %i.as, align 1, !tbaa !9, !alias.scope !136
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1216
  store i64 %.sink31.i, ptr %i.at, align 1, !tbaa !9, !alias.scope !136
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store i64 %.sink31.i, ptr %i.au, align 1, !tbaa !9, !alias.scope !136
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1280
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1504
  br i1 %.not.i, label %VerticalPred_SSE2.exit, label %bb.g

bb.g:                                             ; preds = %DC8uvMode_SSE2.exit
  %.val.i31 = load i64, ptr %2, align 1, !tbaa !9, !alias.scope !140
  br label %VerticalPred_SSE2.exit

VerticalPred_SSE2.exit:                           ; preds = %DC8uvMode_SSE2.exit, %bb.g
  %storemerge = phi i64 [ %.val.i31, %bb.g ], [ 9187201950435737471, %DC8uvMode_SSE2.exit ] ; 8 uses
  store i64 %storemerge, ptr %i.av, align 1, !tbaa !9, !alias.scope !139
  store i64 %storemerge, ptr %i.aw, align 1, !tbaa !9, !alias.scope !139
  store i64 %storemerge, ptr %i.ax, align 1, !tbaa !9, !alias.scope !139
  store i64 %storemerge, ptr %i.ay, align 1, !tbaa !9, !alias.scope !139
  store i64 %storemerge, ptr %i.az, align 1, !tbaa !9, !alias.scope !139
  store i64 %storemerge, ptr %i.ba, align 1, !tbaa !9, !alias.scope !139
  store i64 %storemerge, ptr %i.bb, align 1, !tbaa !9, !alias.scope !139
  store i64 %storemerge, ptr %i.bc, align 1, !tbaa !9, !alias.scope !139
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  br i1 %.not12.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %VerticalPred_SSE2.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.bl = load <8 x i8>, ptr %1, align 1, !tbaa !9, !alias.scope !145 ; 9 uses
  %i.bm = shufflevector <8 x i8> %i.bl, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bn = bitcast <16 x i8> %i.bm to <2 x i64>
  %i.bo = extractelement <2 x i64> %i.bn, i64 0   ; 2 uses
  store i64 %i.bo, ptr %i.bd, align 1, !tbaa !9, !alias.scope !146
  %i.bp = shufflevector <8 x i8> %i.bl, <8 x i8> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bq = bitcast <16 x i8> %i.bp to <2 x i64>
  %i.br = extractelement <2 x i64> %i.bq, i64 0   ; 2 uses
  store i64 %i.br, ptr %i.be, align 1, !tbaa !9, !alias.scope !146
  %i.bs = shufflevector <8 x i8> %i.bl, <8 x i8> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bt = bitcast <16 x i8> %i.bs to <2 x i64>
  %i.bu = extractelement <2 x i64> %i.bt, i64 0   ; 2 uses
  store i64 %i.bu, ptr %i.bf, align 1, !tbaa !9, !alias.scope !146
  %i.bv = shufflevector <8 x i8> %i.bl, <8 x i8> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bw = bitcast <16 x i8> %i.bv to <2 x i64>
  %i.bx = extractelement <2 x i64> %i.bw, i64 0   ; 2 uses
  store i64 %i.bx, ptr %i.bg, align 1, !tbaa !9, !alias.scope !146
  %i.by = shufflevector <8 x i8> %i.bl, <8 x i8> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bz = bitcast <16 x i8> %i.by to <2 x i64>
  %i.ca = extractelement <2 x i64> %i.bz, i64 0   ; 2 uses
  store i64 %i.ca, ptr %i.bh, align 1, !tbaa !9, !alias.scope !146
  %i.cb = shufflevector <8 x i8> %i.bl, <8 x i8> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cc = bitcast <16 x i8> %i.cb to <2 x i64>
  %i.cd = extractelement <2 x i64> %i.cc, i64 0   ; 2 uses
  store i64 %i.cd, ptr %i.bi, align 1, !tbaa !9, !alias.scope !146
  %i.ce = shufflevector <8 x i8> %i.bl, <8 x i8> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cf = bitcast <16 x i8> %i.ce to <2 x i64>
  %i.cg = extractelement <2 x i64> %i.cf, i64 0   ; 2 uses
  store i64 %i.cg, ptr %i.bj, align 1, !tbaa !9, !alias.scope !146
  %i.ch = shufflevector <8 x i8> %i.bl, <8 x i8> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ci = bitcast <16 x i8> %i.ch to <2 x i64>
  %i.cj = extractelement <2 x i64> %i.ci, i64 0   ; 2 uses
  store i64 %i.cj, ptr %i.bk, align 1, !tbaa !9, !alias.scope !146
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  br i1 %.not.i, label %bb.l, label %bb.j

bb.i:                                             ; preds = %VerticalPred_SSE2.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1520
  store i64 -9114861777597660799, ptr %i.bd, align 1, !tbaa !9, !alias.scope !141
  store i64 -9114861777597660799, ptr %i.cl, align 1, !tbaa !9, !alias.scope !141
  store i64 -9114861777597660799, ptr %i.cm, align 1, !tbaa !9, !alias.scope !141
  store i64 -9114861777597660799, ptr %i.cn, align 1, !tbaa !9, !alias.scope !141
  store i64 -9114861777597660799, ptr %i.co, align 1, !tbaa !9, !alias.scope !141
  store i64 -9114861777597660799, ptr %i.cp, align 1, !tbaa !9, !alias.scope !141
  store i64 -9114861777597660799, ptr %i.cq, align 1, !tbaa !9, !alias.scope !141
  store i64 -9114861777597660799, ptr %i.cr, align 1, !tbaa !9, !alias.scope !141
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  br i1 %.not.i, label %.thread61, label %bb.k

.thread61:                                        ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1264
  store i64 -9114861777597660799, ptr %i.cs, align 1, !tbaa !9, !alias.scope !147
  store i64 -9114861777597660799, ptr %i.ct, align 1, !tbaa !9, !alias.scope !147
  store i64 -9114861777597660799, ptr %i.cu, align 1, !tbaa !9, !alias.scope !147
  store i64 -9114861777597660799, ptr %i.cv, align 1, !tbaa !9, !alias.scope !147
  store i64 -9114861777597660799, ptr %i.cw, align 1, !tbaa !9, !alias.scope !147
  store i64 -9114861777597660799, ptr %i.cx, align 1, !tbaa !9, !alias.scope !147
  store i64 -9114861777597660799, ptr %i.cy, align 1, !tbaa !9, !alias.scope !147
  store i64 -9114861777597660799, ptr %i.cz, align 1, !tbaa !9, !alias.scope !147
  br label %DC8uvMode_SSE2.exit41

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %3 = zext <8 x i8> %i.bl to <8 x i16>
  %i.da = load i64, ptr %2, align 1, !tbaa !9, !alias.scope !153
  %i.db = insertelement <2 x i64> poison, i64 %i.da, i64 0
  %i.dc = bitcast <2 x i64> %i.db to <16 x i8>
  %i.dd = shufflevector <16 x i8> %i.dc, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.de = getelementptr inbounds i8, ptr %1, i64 -1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !9, !alias.scope !154
  %i.dg = zext i8 %i.df to i16
  %i.dh = bitcast <16 x i8> %i.dd to <8 x i16>    ; 8 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.dp = insertelement <8 x i16> poison, i16 %i.dg, i64 0
  %i.dq = shufflevector <8 x i16> %i.dp, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.dr = sub nsw <8 x i16> %3, %i.dq             ; 8 uses
  %i.ds = shufflevector <8 x i16> %i.dr, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.dt = add nsw <8 x i16> %i.ds, %i.dh
  %i.du = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dt, <8 x i16> poison)
  %i.dv = bitcast <16 x i8> %i.du to <2 x i64>
  %i.dw = extractelement <2 x i64> %i.dv, i64 0
  store i64 %i.dw, ptr %i.ck, align 1, !tbaa !9, !alias.scope !155
  %i.dx = shufflevector <8 x i16> %i.dr, <8 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.dy = add nsw <8 x i16> %i.dx, %i.dh
  %i.dz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dy, <8 x i16> poison)
  %i.ea = bitcast <16 x i8> %i.dz to <2 x i64>
  %i.eb = extractelement <2 x i64> %i.ea, i64 0
  store i64 %i.eb, ptr %i.di, align 1, !tbaa !9, !alias.scope !155
  %i.ec = shufflevector <8 x i16> %i.dr, <8 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ed = add nsw <8 x i16> %i.ec, %i.dh
  %i.ee = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ed, <8 x i16> poison)
  %i.ef = bitcast <16 x i8> %i.ee to <2 x i64>
  %i.eg = extractelement <2 x i64> %i.ef, i64 0
  store i64 %i.eg, ptr %i.dj, align 1, !tbaa !9, !alias.scope !155
  %i.eh = shufflevector <8 x i16> %i.dr, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ei = add nsw <8 x i16> %i.eh, %i.dh
  %i.ej = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ei, <8 x i16> poison)
  %i.ek = bitcast <16 x i8> %i.ej to <2 x i64>
  %i.el = extractelement <2 x i64> %i.ek, i64 0
  store i64 %i.el, ptr %i.dk, align 1, !tbaa !9, !alias.scope !155
  %i.em = shufflevector <8 x i16> %i.dr, <8 x i16> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.en = add nsw <8 x i16> %i.em, %i.dh
  %i.eo = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.en, <8 x i16> poison)
  %i.ep = bitcast <16 x i8> %i.eo to <2 x i64>
  %i.eq = extractelement <2 x i64> %i.ep, i64 0
  store i64 %i.eq, ptr %i.dl, align 1, !tbaa !9, !alias.scope !155
  %i.er = shufflevector <8 x i16> %i.dr, <8 x i16> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.es = add nsw <8 x i16> %i.er, %i.dh
  %i.et = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.es, <8 x i16> poison)
  %i.eu = bitcast <16 x i8> %i.et to <2 x i64>
  %i.ev = extractelement <2 x i64> %i.eu, i64 0
  store i64 %i.ev, ptr %i.dm, align 1, !tbaa !9, !alias.scope !155
  %i.ew = shufflevector <8 x i16> %i.dr, <8 x i16> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.ex = add nsw <8 x i16> %i.ew, %i.dh
  %i.ey = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ex, <8 x i16> poison)
  %i.ez = bitcast <16 x i8> %i.ey to <2 x i64>
  %i.fa = extractelement <2 x i64> %i.ez, i64 0
  store i64 %i.fa, ptr %i.dn, align 1, !tbaa !9, !alias.scope !155
  %i.fb = shufflevector <8 x i16> %i.dr, <8 x i16> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.fc = add nsw <8 x i16> %i.fb, %i.dh
  %i.fd = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fc, <8 x i16> poison)
  %i.fe = bitcast <16 x i8> %i.fd to <2 x i64>
  %i.ff = extractelement <2 x i64> %i.fe, i64 0
  store i64 %i.ff, ptr %i.do, align 1, !tbaa !9, !alias.scope !155
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %.val.i36 = load i64, ptr %i.fh, align 1, !tbaa !9, !alias.scope !157
  %.val14.i37 = load i64, ptr %i.fg, align 1, !tbaa !9, !alias.scope !158
  %i.fi = insertelement <2 x i64> poison, i64 %.val14.i37, i64 0
  %i.fj = insertelement <2 x i64> %i.fi, i64 %.val.i36, i64 1
  %i.fk = bitcast <2 x i64> %i.fj to <16 x i8>
  %i.fl = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.fk, <16 x i8> zeroinitializer)
  %i.fm = bitcast <2 x i64> %i.fl to <4 x i32>    ; 2 uses
  %i.fn = shufflevector <4 x i32> %i.fm, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.fo = add <4 x i32> %i.fn, %i.fm
  %i.fp = extractelement <4 x i32> %i.fo, i64 0
  %i.fq = add nsw i32 %i.fp, 8
  %i.fr = lshr i32 %i.fq, 4
  %i.fs = trunc i32 %i.fr to i8
  %i.ft = insertelement <16 x i8> poison, i8 %i.fs, i64 0
  %i.fu = shufflevector <16 x i8> %i.ft, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fv = bitcast <16 x i8> %i.fu to <2 x i64>
  %i.fw = extractelement <2 x i64> %i.fv, i64 0
  br label %DC8uvMode_SSE2.exit41

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %.val.i.i = load i64, ptr %2, align 1, !tbaa !9, !alias.scope !161 ; 8 uses
  store i64 %.val.i.i, ptr %i.cs, align 1, !tbaa !9, !alias.scope !162
  store i64 %.val.i.i, ptr %i.fx, align 1, !tbaa !9, !alias.scope !162
  store i64 %.val.i.i, ptr %i.fy, align 1, !tbaa !9, !alias.scope !162
  store i64 %.val.i.i, ptr %i.fz, align 1, !tbaa !9, !alias.scope !162
  store i64 %.val.i.i, ptr %i.ga, align 1, !tbaa !9, !alias.scope !162
  store i64 %.val.i.i, ptr %i.gb, align 1, !tbaa !9, !alias.scope !162
  store i64 %.val.i.i, ptr %i.gc, align 1, !tbaa !9, !alias.scope !162
  store i64 %.val.i.i, ptr %i.gd, align 1, !tbaa !9, !alias.scope !162
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val15.i39 = load i64, ptr %i.ge, align 1, !tbaa !9, !alias.scope !158
  %i.gf = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.val15.i39, i64 0
  %i.gg = bitcast <2 x i64> %i.gf to <16 x i8>
  %i.gh = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.gg, <16 x i8> zeroinitializer)
  %i.gi = bitcast <2 x i64> %i.gh to <4 x i32>
  %i.gj = extractelement <4 x i32> %i.gi, i64 0
  %i.gk = add nsw i32 %i.gj, 4
  %i.gl = lshr i32 %i.gk, 3
  %i.gm = trunc i32 %i.gl to i8
  %i.gn = insertelement <16 x i8> poison, i8 %i.gm, i64 0
  %i.go = shufflevector <16 x i8> %i.gn, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gp = bitcast <16 x i8> %i.go to <2 x i64>
  %i.gq = extractelement <2 x i64> %i.gp, i64 0
  br label %DC8uvMode_SSE2.exit41

bb.l:                                             ; preds = %bb.h
  store i64 %i.bo, ptr %i.ck, align 1, !tbaa !9, !alias.scope !163
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 %i.br, ptr %i.gr, align 1, !tbaa !9, !alias.scope !163
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store i64 %i.bu, ptr %i.gs, align 1, !tbaa !9, !alias.scope !163
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store i64 %i.bx, ptr %i.gt, align 1, !tbaa !9, !alias.scope !163
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store i64 %i.ca, ptr %i.gu, align 1, !tbaa !9, !alias.scope !163
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store i64 %i.cd, ptr %i.gv, align 1, !tbaa !9, !alias.scope !163
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 1232
  store i64 %i.cg, ptr %i.gw, align 1, !tbaa !9, !alias.scope !163
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 1264
  store i64 %i.cj, ptr %i.gx, align 1, !tbaa !9, !alias.scope !163
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val16.i40 = load i64, ptr %i.gy, align 1, !tbaa !9, !alias.scope !157
  %i.gz = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.val16.i40, i64 0
  %i.ha = bitcast <2 x i64> %i.gz to <16 x i8>
  %i.hb = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ha, <16 x i8> zeroinitializer)
  %i.hc = bitcast <2 x i64> %i.hb to <4 x i32>
  %i.hd = extractelement <4 x i32> %i.hc, i64 0
  %i.he = add nsw i32 %i.hd, 4
  %i.hf = lshr i32 %i.he, 3
  %i.hg = trunc i32 %i.hf to i8
  %i.hh = insertelement <16 x i8> poison, i8 %i.hg, i64 0
  %i.hi = shufflevector <16 x i8> %i.hh, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hj = bitcast <16 x i8> %i.hi to <2 x i64>
  %i.hk = extractelement <2 x i64> %i.hj, i64 0
  br label %DC8uvMode_SSE2.exit41

DC8uvMode_SSE2.exit41:                            ; preds = %.thread61, %bb.j, %bb.k, %bb.l
  %.02556 = phi ptr [ %i.gy, %bb.l ], [ null, %bb.k ], [ %i.fh, %bb.j ], [ null, %.thread61 ] ; 2 uses
  %spec.select53 = phi ptr [ null, %bb.l ], [ %i.ge, %bb.k ], [ %i.fg, %bb.j ], [ null, %.thread61 ] ; 3 uses
  %.sink31.i38 = phi i64 [ %i.hk, %bb.l ], [ %i.gq, %bb.k ], [ %i.fw, %bb.j ], [ -9187201950435737472, %.thread61 ] ; 8 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store i64 %.sink31.i38, ptr %i.hl, align 1, !tbaa !9, !alias.scope !156
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store i64 %.sink31.i38, ptr %i.hm, align 1, !tbaa !9, !alias.scope !156
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store i64 %.sink31.i38, ptr %i.hn, align 1, !tbaa !9, !alias.scope !156
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store i64 %.sink31.i38, ptr %i.ho, align 1, !tbaa !9, !alias.scope !156
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i64 %.sink31.i38, ptr %i.hp, align 1, !tbaa !9, !alias.scope !156
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 1192
  store i64 %.sink31.i38, ptr %i.hq, align 1, !tbaa !9, !alias.scope !156
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store i64 %.sink31.i38, ptr %i.hr, align 1, !tbaa !9, !alias.scope !156
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 1256
  store i64 %.sink31.i38, ptr %i.hs, align 1, !tbaa !9, !alias.scope !156
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 1288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 1512
  br i1 %.not.i, label %VerticalPred_SSE2.exit44, label %bb.m

bb.m:                                             ; preds = %DC8uvMode_SSE2.exit41
  %.val.i43 = load i64, ptr %spec.select53, align 1, !tbaa !9, !alias.scope !165
  br label %VerticalPred_SSE2.exit44

VerticalPred_SSE2.exit44:                         ; preds = %DC8uvMode_SSE2.exit41, %bb.m
  %storemerge71 = phi i64 [ %.val.i43, %bb.m ], [ 9187201950435737471, %DC8uvMode_SSE2.exit41 ] ; 8 uses
  store i64 %storemerge71, ptr %i.ht, align 1, !tbaa !9, !alias.scope !164
  store i64 %storemerge71, ptr %i.hu, align 1, !tbaa !9, !alias.scope !164
  store i64 %storemerge71, ptr %i.hv, align 1, !tbaa !9, !alias.scope !164
  store i64 %storemerge71, ptr %i.hw, align 1, !tbaa !9, !alias.scope !164
  store i64 %storemerge71, ptr %i.hx, align 1, !tbaa !9, !alias.scope !164
  store i64 %storemerge71, ptr %i.hy, align 1, !tbaa !9, !alias.scope !164
  store i64 %storemerge71, ptr %i.hz, align 1, !tbaa !9, !alias.scope !164
  store i64 %storemerge71, ptr %i.ia, align 1, !tbaa !9, !alias.scope !164
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  br i1 %.not12.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %VerticalPred_SSE2.exit44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.ij = load <8 x i8>, ptr %.02556, align 1, !tbaa !9, !alias.scope !170 ; 9 uses
  %i.ik = shufflevector <8 x i8> %i.ij, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.il = bitcast <16 x i8> %i.ik to <2 x i64>
  %i.im = extractelement <2 x i64> %i.il, i64 0   ; 2 uses
  store i64 %i.im, ptr %i.ib, align 1, !tbaa !9, !alias.scope !171
  %i.in = shufflevector <8 x i8> %i.ij, <8 x i8> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.io = bitcast <16 x i8> %i.in to <2 x i64>
  %i.ip = extractelement <2 x i64> %i.io, i64 0   ; 2 uses
  store i64 %i.ip, ptr %i.ic, align 1, !tbaa !9, !alias.scope !171
  %i.iq = shufflevector <8 x i8> %i.ij, <8 x i8> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ir = bitcast <16 x i8> %i.iq to <2 x i64>
  %i.is = extractelement <2 x i64> %i.ir, i64 0   ; 2 uses
  store i64 %i.is, ptr %i.id, align 1, !tbaa !9, !alias.scope !171
  %i.it = shufflevector <8 x i8> %i.ij, <8 x i8> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iu = bitcast <16 x i8> %i.it to <2 x i64>
  %i.iv = extractelement <2 x i64> %i.iu, i64 0   ; 2 uses
  store i64 %i.iv, ptr %i.ie, align 1, !tbaa !9, !alias.scope !171
  %i.iw = shufflevector <8 x i8> %i.ij, <8 x i8> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ix = bitcast <16 x i8> %i.iw to <2 x i64>
  %i.iy = extractelement <2 x i64> %i.ix, i64 0   ; 2 uses
  store i64 %i.iy, ptr %i.if, align 1, !tbaa !9, !alias.scope !171
  %i.iz = shufflevector <8 x i8> %i.ij, <8 x i8> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ja = bitcast <16 x i8> %i.iz to <2 x i64>
  %i.jb = extractelement <2 x i64> %i.ja, i64 0   ; 2 uses
  store i64 %i.jb, ptr %i.ig, align 1, !tbaa !9, !alias.scope !171
  %i.jc = shufflevector <8 x i8> %i.ij, <8 x i8> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jd = bitcast <16 x i8> %i.jc to <2 x i64>
  %i.je = extractelement <2 x i64> %i.jd, i64 0   ; 2 uses
  store i64 %i.je, ptr %i.ih, align 1, !tbaa !9, !alias.scope !171
  %i.jf = shufflevector <8 x i8> %i.ij, <8 x i8> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jg = bitcast <16 x i8> %i.jf to <2 x i64>
  %i.jh = extractelement <2 x i64> %i.jg, i64 0   ; 2 uses
  store i64 %i.jh, ptr %i.ii, align 1, !tbaa !9, !alias.scope !171
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %4 = zext <8 x i8> %i.ij to <8 x i16>
  %i.jj = load i64, ptr %spec.select53, align 1, !tbaa !9, !alias.scope !178
  %i.jk = insertelement <2 x i64> poison, i64 %i.jj, i64 0
  %i.jl = bitcast <2 x i64> %i.jk to <16 x i8>
  %i.jm = shufflevector <16 x i8> %i.jl, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.jn = getelementptr inbounds i8, ptr %.02556, i64 -1
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !9, !alias.scope !179
  %i.jp = zext i8 %i.jo to i16
  %i.jq = bitcast <16 x i8> %i.jm to <8 x i16>    ; 8 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.jy = insertelement <8 x i16> poison, i16 %i.jp, i64 0
  %i.jz = shufflevector <8 x i16> %i.jy, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ka = sub nsw <8 x i16> %4, %i.jz             ; 8 uses
  %i.kb = shufflevector <8 x i16> %i.ka, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kc = add nsw <8 x i16> %i.kb, %i.jq
  %i.kd = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.kc, <8 x i16> poison)
  %i.ke = bitcast <16 x i8> %i.kd to <2 x i64>
  %i.kf = extractelement <2 x i64> %i.ke, i64 0
  store i64 %i.kf, ptr %i.ji, align 1, !tbaa !9, !alias.scope !180
  %i.kg = shufflevector <8 x i16> %i.ka, <8 x i16> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.kh = add nsw <8 x i16> %i.kg, %i.jq
  %i.ki = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.kh, <8 x i16> poison)
  %i.kj = bitcast <16 x i8> %i.ki to <2 x i64>
  %i.kk = extractelement <2 x i64> %i.kj, i64 0
  store i64 %i.kk, ptr %i.jr, align 1, !tbaa !9, !alias.scope !180
  %i.kl = shufflevector <8 x i16> %i.ka, <8 x i16> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.km = add nsw <8 x i16> %i.kl, %i.jq
  %i.kn = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.km, <8 x i16> poison)
  %i.ko = bitcast <16 x i8> %i.kn to <2 x i64>
  %i.kp = extractelement <2 x i64> %i.ko, i64 0
  store i64 %i.kp, ptr %i.js, align 1, !tbaa !9, !alias.scope !180
  %i.kq = shufflevector <8 x i16> %i.ka, <8 x i16> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.kr = add nsw <8 x i16> %i.kq, %i.jq
  %i.ks = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.kr, <8 x i16> poison)
  %i.kt = bitcast <16 x i8> %i.ks to <2 x i64>
  %i.ku = extractelement <2 x i64> %i.kt, i64 0
  store i64 %i.ku, ptr %i.jt, align 1, !tbaa !9, !alias.scope !180
  %i.kv = shufflevector <8 x i16> %i.ka, <8 x i16> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.kw = add nsw <8 x i16> %i.kv, %i.jq
  %i.kx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.kw, <8 x i16> poison)
  %i.ky = bitcast <16 x i8> %i.kx to <2 x i64>
  %i.kz = extractelement <2 x i64> %i.ky, i64 0
  store i64 %i.kz, ptr %i.ju, align 1, !tbaa !9, !alias.scope !180
  %i.la = shufflevector <8 x i16> %i.ka, <8 x i16> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.lb = add nsw <8 x i16> %i.la, %i.jq
  %i.lc = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.lb, <8 x i16> poison)
  %i.ld = bitcast <16 x i8> %i.lc to <2 x i64>
  %i.le = extractelement <2 x i64> %i.ld, i64 0
  store i64 %i.le, ptr %i.jv, align 1, !tbaa !9, !alias.scope !180
  %i.lf = shufflevector <8 x i16> %i.ka, <8 x i16> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.lg = add nsw <8 x i16> %i.lf, %i.jq
  %i.lh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.lg, <8 x i16> poison)
  %i.li = bitcast <16 x i8> %i.lh to <2 x i64>
  %i.lj = extractelement <2 x i64> %i.li, i64 0
  store i64 %i.lj, ptr %i.jw, align 1, !tbaa !9, !alias.scope !180
  %i.lk = shufflevector <8 x i16> %i.ka, <8 x i16> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.ll = add nsw <8 x i16> %i.lk, %i.jq
  %i.lm = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ll, <8 x i16> poison)
  %i.ln = bitcast <16 x i8> %i.lm to <2 x i64>
  %i.lo = extractelement <2 x i64> %i.ln, i64 0
  store i64 %i.lo, ptr %i.jx, align 1, !tbaa !9, !alias.scope !180
  br label %TrueMotion_SSE2.exit50

bb.p:                                             ; preds = %bb.n
  store i64 %i.im, ptr %i.ji, align 1, !tbaa !9, !alias.scope !181
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i64 %i.ip, ptr %i.lp, align 1, !tbaa !9, !alias.scope !181
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i64 %i.is, ptr %i.lq, align 1, !tbaa !9, !alias.scope !181
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store i64 %i.iv, ptr %i.lr, align 1, !tbaa !9, !alias.scope !181
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store i64 %i.iy, ptr %i.ls, align 1, !tbaa !9, !alias.scope !181
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 1208
  store i64 %i.jb, ptr %i.lt, align 1, !tbaa !9, !alias.scope !181
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store i64 %i.je, ptr %i.lu, align 1, !tbaa !9, !alias.scope !181
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store i64 %i.jh, ptr %i.lv, align 1, !tbaa !9, !alias.scope !181
  br label %TrueMotion_SSE2.exit50

bb.q:                                             ; preds = %VerticalPred_SSE2.exit44
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i64 -9114861777597660799, ptr %i.ib, align 1, !tbaa !9, !alias.scope !166
  store i64 -9114861777597660799, ptr %i.lw, align 1, !tbaa !9, !alias.scope !166
  store i64 -9114861777597660799, ptr %i.lx, align 1, !tbaa !9, !alias.scope !166
  store i64 -9114861777597660799, ptr %i.ly, align 1, !tbaa !9, !alias.scope !166
  store i64 -9114861777597660799, ptr %i.lz, align 1, !tbaa !9, !alias.scope !166
  store i64 -9114861777597660799, ptr %i.ma, align 1, !tbaa !9, !alias.scope !166
  store i64 -9114861777597660799, ptr %i.mb, align 1, !tbaa !9, !alias.scope !166
  store i64 -9114861777597660799, ptr %i.mc, align 1, !tbaa !9, !alias.scope !166
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %.val.i.i49 = load i64, ptr %spec.select53, align 1, !tbaa !9, !alias.scope !184 ; 8 uses
  store i64 %.val.i.i49, ptr %i.md, align 1, !tbaa !9, !alias.scope !185
  store i64 %.val.i.i49, ptr %i.me, align 1, !tbaa !9, !alias.scope !185
  store i64 %.val.i.i49, ptr %i.mf, align 1, !tbaa !9, !alias.scope !185
  store i64 %.val.i.i49, ptr %i.mg, align 1, !tbaa !9, !alias.scope !185
  store i64 %.val.i.i49, ptr %i.mh, align 1, !tbaa !9, !alias.scope !185
  store i64 %.val.i.i49, ptr %i.mi, align 1, !tbaa !9, !alias.scope !185
  store i64 %.val.i.i49, ptr %i.mj, align 1, !tbaa !9, !alias.scope !185
  store i64 %.val.i.i49, ptr %i.mk, align 1, !tbaa !9, !alias.scope !185
  br label %TrueMotion_SSE2.exit50

bb.s:                                             ; preds = %bb.q
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store i64 -9114861777597660799, ptr %i.md, align 1, !tbaa !9, !alias.scope !172
  store i64 -9114861777597660799, ptr %i.ml, align 1, !tbaa !9, !alias.scope !172
  store i64 -9114861777597660799, ptr %i.mm, align 1, !tbaa !9, !alias.scope !172
  store i64 -9114861777597660799, ptr %i.mn, align 1, !tbaa !9, !alias.scope !172
  store i64 -9114861777597660799, ptr %i.mo, align 1, !tbaa !9, !alias.scope !172
  store i64 -9114861777597660799, ptr %i.mp, align 1, !tbaa !9, !alias.scope !172
  store i64 -9114861777597660799, ptr %i.mq, align 1, !tbaa !9, !alias.scope !172
  store i64 -9114861777597660799, ptr %i.mr, align 1, !tbaa !9, !alias.scope !172
  br label %TrueMotion_SSE2.exit50

TrueMotion_SSE2.exit50:                           ; preds = %bb.o, %bb.p, %bb.r, %bb.s
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @Intra4Preds_SSE2(ptr noalias nofree noundef writeonly captures(none) initializes((1536, 1672), (1696, 1704), (1728, 1736), (1760, 1768)) %0, ptr noalias nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1536
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.b = load i8, ptr %1, align 1, !tbaa !9, !alias.scope !208
  %i.c = zext i8 %i.b to i16
  %i.d = getelementptr i8, ptr %1, i64 -5         ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9, !alias.scope !208 ; 2 uses
  %i.f = zext i8 %i.e to i16                      ; 2 uses
  %i.g = add nuw nsw i16 %i.c, 4
  %i.h = add nuw nsw i16 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9, !alias.scope !208 ; 2 uses
  %i.k = zext i8 %i.j to i16
  %i.l = getelementptr i8, ptr %1, i64 -4
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9, !alias.scope !208 ; 2 uses
  %i.n = zext i8 %i.m to i16                      ; 2 uses
  %i.o = add nuw nsw i16 %i.h, %i.k
  %i.p = add nuw nsw i16 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9, !alias.scope !208 ; 2 uses
  %i.s = zext i8 %i.r to i16
  %i.t = getelementptr i8, ptr %1, i64 -3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9, !alias.scope !208 ; 2 uses
  %i.v = zext i8 %i.u to i16                      ; 2 uses
  %i.w = add nuw nsw i16 %i.p, %i.s
  %i.x = add nuw nsw i16 %i.w, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9, !alias.scope !208
  %i.aa = zext i8 %i.z to i16                     ; 2 uses
  %i.ab = getelementptr i8, ptr %1, i64 -2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9, !alias.scope !208 ; 2 uses
  %i.ad = zext i8 %i.ac to i16                    ; 2 uses
  %i.ae = add nuw nsw i16 %i.x, %i.aa
  %i.af = add nuw nsw i16 %i.ae, %i.ad
  %i.ag = lshr i16 %i.af, 3
  %i.ah = trunc nuw i16 %i.ag to i8               ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.a, i8 %i.ah, i64 4, i1 false), !alias.scope !207
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.ai, i8 %i.ah, i64 4, i1 false), !alias.scope !207
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1600
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.aj, i8 %i.ah, i64 4, i1 false), !alias.scope !207
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.ak, i8 %i.ah, i64 4, i1 false), !alias.scope !207
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1540
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %.val.i = load i32, ptr %1, align 1, !alias.scope !210
  %i.am = insertelement <4 x i32> poison, i32 %.val.i, i64 0
  %i.an = bitcast <4 x i32> %i.am to <16 x i8>
  %i.ao = shufflevector <16 x i8> %i.an, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ap = getelementptr inbounds i8, ptr %1, i64 -1 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9, !alias.scope !210
  %i.ar = zext i8 %i.aq to i16                    ; 4 uses
  %i.as = bitcast <16 x i8> %i.ao to <8 x i16>    ; 4 uses
  %i.at = sub nsw i16 %i.ad, %i.ar
  %i.au = insertelement <8 x i16> poison, i16 %i.at, i64 0
  %i.av = shufflevector <8 x i16> %i.au, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aw = add <8 x i16> %i.av, %i.as
  %i.ax = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.aw, <8 x i16> poison)
  %i.ay = bitcast <16 x i8> %i.ax to <4 x i32>
  %i.az = extractelement <4 x i32> %i.ay, i64 0
  store i32 %i.az, ptr %i.al, align 1, !alias.scope !209
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1572
  %i.bb = sub nsw i16 %i.v, %i.ar
end_hunk_0
