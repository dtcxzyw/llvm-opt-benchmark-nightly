Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9dsp_8bpp?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 126
begin_hunk_0_@diag_downright_16x16_c:bb.a
  %i.s = add nuw nsw i16 %i.e, 2
  %i.t = add nuw nsw i16 %i.s, %i.o
  %i.u = add nuw nsw i16 %i.t, %i.r
  %i.v = lshr i16 %i.u, 2
  %i.w = trunc nuw i16 %i.v to i8                 ; 13 uses
  %i.x = shl nuw nsw i16 %i.r, 1
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.z = load i8, ptr %i.y, align 1, !tbaa !26
  %i.aa = zext i8 %i.z to i16                     ; 2 uses
  %i.ab = add nuw nsw i16 %i.i, 2
  %i.ac = add nuw nsw i16 %i.ab, %i.x
  %i.ad = add nuw nsw i16 %i.ac, %i.aa
  %i.ae = lshr i16 %i.ad, 2
  %i.af = trunc nuw i16 %i.ae to i8               ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 15
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !26
  %i.am = getelementptr inbounds i8, ptr %3, i64 -1
  %i.an = load i8, ptr %i.c, align 1, !tbaa !26
  %.sroa.34.15..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.35.15..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.36.15..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.37.15..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.38.15..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.sroa.39.15..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.40.15..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  %.sroa.48.15..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %1 ; 9 uses
  %.sroa.32.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %.sroa.34.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %.sroa.35.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %.sroa.36.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.sroa.37.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %.sroa.38.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 6
  %.sroa.39.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 7
  %.sroa.40.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ap = shl nsw i64 %1, 1
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap ; 13 uses
  %.sroa.30.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %.sroa.32.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %.sroa.34.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %.sroa.35.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.sroa.36.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 5
  %.sroa.37.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 6
  %.sroa.38.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 7
  %.sroa.39.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.40.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  %.sroa.41.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 10
  %.sroa.45.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  %.sroa.46.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 15
  %i.ar = mul nsw i64 %1, 3
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar ; 13 uses
  %.sroa.28.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %.sroa.30.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %.sroa.32.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %.sroa.34.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.sroa.35.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 5
  %.sroa.36.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 6
  %.sroa.37.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 7
  %.sroa.38.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.39.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 9
  %.sroa.40.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 10
  %.sroa.41.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 11
  %.sroa.42.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.at = shl nsw i64 %1, 2
  %i.au = getelementptr inbounds i8, ptr %0, i64 %i.at ; 16 uses
  %.sroa.26.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %.sroa.28.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %.sroa.30.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  %.sroa.32.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %.sroa.34.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 5
  %.sroa.35.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 6
  %.sroa.36.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 7
  %.sroa.37.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.38.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 9
  %.sroa.39.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 10
  %.sroa.40.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 11
  %.sroa.41.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %.sroa.42.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 13
  %.sroa.43.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 14
  %.sroa.44.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 15
  %i.av = mul nsw i64 %1, 5
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av ; 16 uses
  %.sroa.24.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %.sroa.26.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %.sroa.28.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 3
  %.sroa.30.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %.sroa.32.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 5
  %.sroa.34.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  %.sroa.35.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 7
  %.sroa.36.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.37.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 9
  %.sroa.38.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 10
  %.sroa.39.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 11
  %.sroa.40.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %.sroa.41.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 13
  %.sroa.42.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  %.sroa.43.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 15
  %i.ax = mul nsw i64 %1, 6
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %i.ax ; 16 uses
  %.sroa.22.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %.sroa.24.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %.sroa.26.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 3
  %.sroa.28.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %.sroa.30.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 5
  %.sroa.32.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  %.sroa.34.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 7
  %.sroa.35.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.36.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 9
  %.sroa.37.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 10
  %.sroa.38.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 11
  %.sroa.39.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %.sroa.40.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 13
  %.sroa.41.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 14
  %.sroa.42.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 15
  %i.az = mul nsw i64 %1, 7
  %i.ba = getelementptr inbounds i8, ptr %0, i64 %i.az ; 9 uses
  %.sroa.34.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.35.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 9
  %.sroa.36.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 10
  %.sroa.37.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 11
  %.sroa.38.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %.sroa.39.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 13
  %.sroa.40.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 14
  %.sroa.41.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 15
  %i.bb = shl nsw i64 %1, 3
  %i.bc = getelementptr inbounds i8, ptr %0, i64 %i.bb ; 9 uses
  %.sroa.32.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.34.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %.sroa.35.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 10
  %.sroa.36.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 11
  %.sroa.37.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %.sroa.38.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 13
  %.sroa.39.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %.sroa.40.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 15
  %i.bd = mul nsw i64 %1, 9
  %i.be = getelementptr inbounds i8, ptr %0, i64 %i.bd ; 9 uses
  %.sroa.30.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.32.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 9
  %.sroa.34.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  %.sroa.35.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 11
  %.sroa.36.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %.sroa.37.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 13
  %.sroa.38.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 14
  %.sroa.39.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 15
  %i.bf = mul nsw i64 %1, 10
  %i.bg = getelementptr inbounds i8, ptr %0, i64 %i.bf ; 9 uses
  %.sroa.28.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.30.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 9
  %.sroa.32.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %.sroa.34.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 11
  %.sroa.35.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %.sroa.36.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 13
  %.sroa.37.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 14
  %.sroa.38.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 15
  %i.bh = mul nsw i64 %1, 11
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bh ; 9 uses
  %.sroa.26.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.28.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 9
  %.sroa.30.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %.sroa.32.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 11
  %.sroa.34.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %.sroa.35.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 13
  %.sroa.36.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 14
  %.sroa.37.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 15
  %i.bj = mul nsw i64 %1, 12
  %i.bk = getelementptr inbounds i8, ptr %0, i64 %i.bj ; 9 uses
  %.sroa.24.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.26.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 9
  %.sroa.28.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 10
  %.sroa.30.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 11
  %.sroa.32.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %.sroa.34.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 13
  %.sroa.35.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %.sroa.36.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 15
  %i.bl = mul nsw i64 %1, 13
  %i.bm = getelementptr inbounds i8, ptr %0, i64 %i.bl ; 9 uses
  %.sroa.22.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.24.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 9
  %.sroa.26.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 10
  %.sroa.28.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 11
  %.sroa.30.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %.sroa.32.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 13
  %.sroa.34.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 14
  %.sroa.35.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 15
  %i.bn = mul nsw i64 %1, 14
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.bn ; 9 uses
  %.sroa.20.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.22.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 9
  %.sroa.24.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 10
  %.sroa.26.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 11
  %.sroa.28.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %.sroa.30.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 13
  %.sroa.32.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 14
  %.sroa.34.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 15
  %i.bp = mul nsw i64 %1, 15
  %i.bq = getelementptr inbounds i8, ptr %0, i64 %i.bp
  %i.br = load <8 x i8>, ptr %2, align 1, !tbaa !26 ; 2 uses
  %i.bs = load <8 x i8>, ptr %i.aj, align 1, !tbaa !26 ; 3 uses
  %i.bt = load <2 x i8>, ptr %i.am, align 1, !tbaa !26
  %i.bu = load i8, ptr %3, align 1, !tbaa !26     ; 2 uses
  %i.bv = shufflevector <2 x i8> %i.bt, <2 x i8> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bw = shufflevector <8 x i8> %i.bs, <8 x i8> %i.bv, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 7>
  %i.bx = shufflevector <8 x i8> %i.br, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.by = shufflevector <16 x i8> %i.bx, <16 x i8> %i.bw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.bz = zext <16 x i8> %i.by to <16 x i16>
  %i.ca = shufflevector <8 x i8> %i.bs, <8 x i8> poison, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cb = shufflevector <16 x i8> %i.by, <16 x i8> %i.ca, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 22, i32 22, i32 14>
  %i.cc = zext <16 x i8> %i.cb to <16 x i16>
  %i.cd = zext i8 %i.bu to i16
  %4 = shufflevector <8 x i8> %i.br, <8 x i8> %i.bs, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 15, i32 poison>
  %i.ce = insertelement <16 x i8> %4, i8 %i.bu, i64 15
  %i.cf = zext <16 x i8> %i.ce to <16 x i16>
  %i.cg = shl nuw nsw <16 x i16> %i.cc, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 0, i16 1>
  %i.ch = shl nuw nsw <16 x i16> %i.cf, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 0>
  %i.ci = add nuw nsw <16 x i16> %i.bz, splat (i16 2) ; 2 uses
  %i.cj = add nuw nsw <16 x i16> %i.ci, %i.cg
  %i.ck = add nuw nsw <16 x i16> %i.cj, %i.ch
  %i.cl = lshr <16 x i16> %i.ck, splat (i16 2)    ; 8 uses
  %i.cm = trunc <16 x i16> %i.cl to <16 x i8>     ; 9 uses
  %i.cn = extractelement <16 x i8> %i.cm, i64 15  ; 14 uses
  %i.co = extractelement <16 x i8> %i.cm, i64 14  ; 12 uses
  %i.cp = load <8 x i8>, ptr %i.ag, align 1, !tbaa !26
  %i.cq = load <8 x i8>, ptr %i.ah, align 1, !tbaa !26
  %i.cr = load <8 x i8>, ptr %i.ai, align 1, !tbaa !26
  %i.cs = zext <8 x i8> %i.cp to <8 x i16>        ; 3 uses
  %i.ct = zext <8 x i8> %i.cq to <8 x i16>        ; 2 uses
  %i.cu = zext <8 x i8> %i.cr to <8 x i16>        ; 2 uses
  %i.cv = shl nuw nsw <8 x i16> %i.ct, splat (i16 1)
  %i.cw = add nuw nsw <8 x i16> %i.cs, splat (i16 2)
  %i.cx = add nuw nsw <8 x i16> %i.cw, %i.cv
  %i.cy = add nuw nsw <8 x i16> %i.cx, %i.cu
  %i.cz = lshr <8 x i16> %i.cy, splat (i16 2)     ; 3 uses
  %i.da = trunc <8 x i16> %i.cz to <8 x i8>       ; 9 uses
  %i.db = add nuw nsw i16 %i.r, 2
  %i.dc = zext i8 %i.al to i16
  %i.dd = zext i8 %i.an to i16
  %i.de = shufflevector <8 x i16> %i.cs, <8 x i16> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.df = shufflevector <16 x i16> %i.ci, <16 x i16> %i.de, <4 x i32> <i32 14, i32 poison, i32 16, i32 poison>
  %i.dg = insertelement <4 x i16> %i.df, i16 %i.db, i64 1
  %i.dh = shufflevector <8 x i16> %i.cu, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 7>
  %i.di = shufflevector <4 x i16> %i.dg, <4 x i16> %i.dh, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.dj = shl nuw nsw <4 x i16> %i.di, <i16 0, i16 0, i16 1, i16 1>
  %i.dk = shufflevector <8 x i16> %i.ct, <8 x i16> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 7>
  %i.dl = insertelement <4 x i16> %i.dk, i16 %i.cd, i64 0
  %i.dm = insertelement <4 x i16> %i.dl, i16 %i.aa, i64 1 ; 2 uses
  %i.dn = shufflevector <4 x i16> %i.dm, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.do = shufflevector <4 x i16> %i.dm, <4 x i16> <i16 poison, i16 poison, i16 2, i16 2>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dp = add nuw nsw <4 x i16> %i.dn, %i.do
  %i.dq = add nuw nsw <4 x i16> %i.dj, %i.dp
  %i.dr = shufflevector <8 x i16> %i.cs, <8 x i16> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ds = insertelement <4 x i16> %i.dr, i16 %i.dd, i64 0
  %i.dt = insertelement <4 x i16> %i.ds, i16 %i.dc, i64 3
  %i.du = add nuw nsw <4 x i16> %i.dq, %i.dt
  %i.dv = lshr <4 x i16> %i.du, splat (i16 2)     ; 4 uses
  %i.dw = bitcast <4 x i16> %i.dv to <8 x i8>
  %i.dx = extractelement <8 x i8> %i.dw, i64 0    ; 15 uses
  %i.dy = bitcast <4 x i16> %i.dv to <8 x i8>
  %i.dz = extractelement <8 x i8> %i.dy, i64 2    ; 11 uses
  %i.ea = bitcast <4 x i16> %i.dv to <8 x i8>
  %i.eb = extractelement <8 x i8> %i.ea, i64 4    ; 10 uses
  %i.ec = bitcast <4 x i16> %i.dv to <8 x i8>
  %i.ed = extractelement <8 x i8> %i.ec, i64 6
  store i8 %i.cn, ptr %0, align 1
  store i8 %i.dx, ptr %.sroa.34.15..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.15..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.15..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.15..sroa_idx, align 1
  store i8 %i.dz, ptr %.sroa.38.15..sroa_idx, align 1
  store i8 %i.eb, ptr %.sroa.39.15..sroa_idx, align 1
  %i.ee = extractelement <8 x i8> %i.da, i64 0    ; 7 uses
  %i.ef = extractelement <8 x i8> %i.da, i64 1    ; 5 uses
  %i.eg = extractelement <8 x i8> %i.da, i64 2    ; 3 uses
  store <8 x i8> %i.da, ptr %.sroa.40.15..sroa_idx, align 1
  store i8 %i.ed, ptr %.sroa.48.15..sroa_idx, align 1
  store i8 %i.co, ptr %i.ao, align 1
  store i8 %i.cn, ptr %.sroa.32.14..sroa_idx, align 1
  store i8 %i.dx, ptr %.sroa.34.14..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.14..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.14..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.14..sroa_idx, align 1
  store i8 %i.dz, ptr %.sroa.38.14..sroa_idx, align 1
  store i8 %i.eb, ptr %.sroa.39.14..sroa_idx, align 1
  store <8 x i8> %i.da, ptr %.sroa.40.14..sroa_idx, align 1
  %i.eh = extractelement <16 x i8> %i.cm, i64 13  ; 10 uses
  store i8 %i.eh, ptr %i.aq, align 1
  store i8 %i.co, ptr %.sroa.30.13..sroa_idx, align 1
  store i8 %i.cn, ptr %.sroa.32.13..sroa_idx, align 1
  store i8 %i.dx, ptr %.sroa.34.13..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.13..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.13..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.13..sroa_idx, align 1
  store i8 %i.dz, ptr %.sroa.38.13..sroa_idx, align 1
  store i8 %i.eb, ptr %.sroa.39.13..sroa_idx, align 1
  store i8 %i.ee, ptr %.sroa.40.13..sroa_idx, align 1
  %i.ei = extractelement <8 x i8> %i.da, i64 3    ; 2 uses
  %i.ej = extractelement <8 x i8> %i.da, i64 4
  %i.ek = shufflevector <8 x i16> %i.cz, <8 x i16> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.el = trunc <4 x i16> %i.ek to <4 x i8>
  store <4 x i8> %i.el, ptr %.sroa.41.13..sroa_idx, align 1
  %i.em = extractelement <8 x i8> %i.da, i64 5
  store i8 %i.em, ptr %.sroa.45.13..sroa_idx, align 1
  %i.en = extractelement <8 x i8> %i.da, i64 6
  store i8 %i.en, ptr %.sroa.46.13..sroa_idx, align 1
  %i.eo = extractelement <16 x i8> %i.cm, i64 12  ; 8 uses
  store i8 %i.eo, ptr %i.as, align 1
  store i8 %i.eh, ptr %.sroa.28.12..sroa_idx, align 1
  store i8 %i.co, ptr %.sroa.30.12..sroa_idx, align 1
  store i8 %i.cn, ptr %.sroa.32.12..sroa_idx, align 1
  store i8 %i.dx, ptr %.sroa.34.12..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.12..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.12..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.12..sroa_idx, align 1
  store i8 %i.dz, ptr %.sroa.38.12..sroa_idx, align 1
  store i8 %i.eb, ptr %.sroa.39.12..sroa_idx, align 1
  store i8 %i.ee, ptr %.sroa.40.12..sroa_idx, align 1
  store i8 %i.ef, ptr %.sroa.41.12..sroa_idx, align 1
  %i.ep = shufflevector <8 x i16> %i.cz, <8 x i16> poison, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.eq = trunc <4 x i16> %i.ep to <4 x i8>
  store <4 x i8> %i.eq, ptr %.sroa.42.12..sroa_idx, align 1
  %i.er = extractelement <16 x i8> %i.cm, i64 11  ; 6 uses
  store i8 %i.er, ptr %i.au, align 1
  store i8 %i.eo, ptr %.sroa.26.11..sroa_idx, align 1
  store i8 %i.eh, ptr %.sroa.28.11..sroa_idx, align 1
  store i8 %i.co, ptr %.sroa.30.11..sroa_idx, align 1
  store i8 %i.cn, ptr %.sroa.32.11..sroa_idx, align 1
  store i8 %i.dx, ptr %.sroa.34.11..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.11..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.11..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.11..sroa_idx, align 1
  store i8 %i.dz, ptr %.sroa.38.11..sroa_idx, align 1
  store i8 %i.eb, ptr %.sroa.39.11..sroa_idx, align 1
  store i8 %i.ee, ptr %.sroa.40.11..sroa_idx, align 1
  store i8 %i.ef, ptr %.sroa.41.11..sroa_idx, align 1
  store i8 %i.eg, ptr %.sroa.42.11..sroa_idx, align 1
  store i8 %i.ei, ptr %.sroa.43.11..sroa_idx, align 1
  store i8 %i.ej, ptr %.sroa.44.11..sroa_idx, align 1
  %i.es = extractelement <16 x i8> %i.cm, i64 10  ; 4 uses
  store i8 %i.es, ptr %i.aw, align 1
  store i8 %i.er, ptr %.sroa.24.10..sroa_idx, align 1
  store i8 %i.eo, ptr %.sroa.26.10..sroa_idx, align 1
  store i8 %i.eh, ptr %.sroa.28.10..sroa_idx, align 1
  store i8 %i.co, ptr %.sroa.30.10..sroa_idx, align 1
  store i8 %i.cn, ptr %.sroa.32.10..sroa_idx, align 1
  store i8 %i.dx, ptr %.sroa.34.10..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.10..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.10..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.10..sroa_idx, align 1
  store i8 %i.dz, ptr %.sroa.38.10..sroa_idx, align 1
  store i8 %i.eb, ptr %.sroa.39.10..sroa_idx, align 1
  store i8 %i.ee, ptr %.sroa.40.10..sroa_idx, align 1
  store i8 %i.ef, ptr %.sroa.41.10..sroa_idx, align 1
  store i8 %i.eg, ptr %.sroa.42.10..sroa_idx, align 1
  store i8 %i.ei, ptr %.sroa.43.10..sroa_idx, align 1
  %i.et = extractelement <16 x i8> %i.cm, i64 9   ; 2 uses
  store i8 %i.et, ptr %i.ay, align 1
  store i8 %i.es, ptr %.sroa.22.9..sroa_idx, align 1
  store i8 %i.er, ptr %.sroa.24.9..sroa_idx, align 1
  store i8 %i.eo, ptr %.sroa.26.9..sroa_idx, align 1
  store i8 %i.eh, ptr %.sroa.28.9..sroa_idx, align 1
  store i8 %i.co, ptr %.sroa.30.9..sroa_idx, align 1
  store i8 %i.cn, ptr %.sroa.32.9..sroa_idx, align 1
  store i8 %i.dx, ptr %.sroa.34.9..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.9..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.9..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.9..sroa_idx, align 1
  store i8 %i.dz, ptr %.sroa.38.9..sroa_idx, align 1
  store i8 %i.eb, ptr %.sroa.39.9..sroa_idx, align 1
  store i8 %i.ee, ptr %.sroa.40.9..sroa_idx, align 1
  store i8 %i.ef, ptr %.sroa.41.9..sroa_idx, align 1
  store i8 %i.eg, ptr %.sroa.42.9..sroa_idx, align 1
  %i.eu = shufflevector <16 x i8> %i.cm, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i8> %i.eu, ptr %i.ba, align 1
  store i8 %i.dx, ptr %.sroa.34.8..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.8..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.8..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.8..sroa_idx, align 1
  store i8 %i.dz, ptr %.sroa.38.8..sroa_idx, align 1
  store i8 %i.eb, ptr %.sroa.39.8..sroa_idx, align 1
  store i8 %i.ee, ptr %.sroa.40.8..sroa_idx, align 1
  store i8 %i.ef, ptr %.sroa.41.8..sroa_idx, align 1
  %i.ev = shufflevector <16 x i16> %i.cl, <16 x i16> poison, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ew = trunc <8 x i16> %i.ev to <8 x i8>
  store <8 x i8> %i.ew, ptr %i.bc, align 1
  store i8 %i.cn, ptr %.sroa.32.7..sroa_idx, align 1
  store i8 %i.dx, ptr %.sroa.34.7..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.7..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.7..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.7..sroa_idx, align 1
  store i8 %i.dz, ptr %.sroa.38.7..sroa_idx, align 1
  store i8 %i.eb, ptr %.sroa.39.7..sroa_idx, align 1
  store i8 %i.ee, ptr %.sroa.40.7..sroa_idx, align 1
  %i.ex = shufflevector <16 x i16> %i.cl, <16 x i16> poison, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.ey = trunc <8 x i16> %i.ex to <8 x i8>
  store <8 x i8> %i.ey, ptr %i.be, align 1
  store i8 %i.co, ptr %.sroa.30.6..sroa_idx, align 1
  store i8 %i.cn, ptr %.sroa.32.6..sroa_idx, align 1
  store i8 %i.dx, ptr %.sroa.34.6..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.6..sroa_idx, align 1
  store i8 %i.w, ptr %.sroa.36.6..sroa_idx, align 1
  store i8 %i.af, ptr %.sroa.37.6..sroa_idx, align 1
  store i8 %i.dz, ptr %.sroa.38.6..sroa_idx, align 1
  store i8 %i.eb, ptr %.sroa.39.6..sroa_idx, align 1
  %i.ez = shufflevector <16 x i16> %i.cl, <16 x i16> poison, <8 x i32> <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  %i.fa = trunc <8 x i16> %i.ez to <8 x i8>
  store <8 x i8> %i.fa, ptr %i.bg, align 1
  store i8 %i.eh, ptr %.sroa.28.5..sroa_idx, align 1
  store i8 %i.co, ptr %.sroa.30.5..sroa_idx, align 1
  store i8 %i.cn, ptr %.sroa.32.5..sroa_idx, align 1
  store i8 %i.dx, ptr %.sroa.34.5..sroa_idx, align 1
  store i8 %i.n, ptr %.sroa.35.5..sroa_idx, align 1
end_hunk_0
