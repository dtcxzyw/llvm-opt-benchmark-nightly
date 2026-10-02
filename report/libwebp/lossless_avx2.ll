Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/lossless_avx2?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@PredictorAdd12_AVX2:bb.a
  %i.aa = tail call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.z, <16 x i16> %i.z)
  %i.ab = bitcast <4 x i64> %i.h to <32 x i8>     ; 4 uses
  %i.ac = add <32 x i8> %i.aa, %i.ab              ; 2 uses
  %i.ad = bitcast <32 x i8> %i.ac to <8 x i32>
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv147 ; 2 uses
  %i.af = shufflevector <32 x i8> %i.ac, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.ag = shufflevector <32 x i8> %i.ab, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51>
  %i.ah = bitcast <32 x i8> %i.af to <16 x i16>
  %i.ai = shufflevector <16 x i16> %i.s, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27>
  %i.aj = add nsw <16 x i16> %i.ai, %i.ah         ; 2 uses
  %i.ak = tail call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.aj, <16 x i16> %i.aj)
  %i.al = add <32 x i8> %i.ak, %i.ag              ; 2 uses
  %i.am = bitcast <32 x i8> %i.al to <8 x i32>
  %i.an = shufflevector <32 x i8> %i.al, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.ao = shufflevector <32 x i8> %i.ab, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 32, i32 33, i32 34, i32 35, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 48, i32 49, i32 50, i32 51>
  %i.ap = bitcast <32 x i8> %i.an to <16 x i16>
  %i.aq = add nsw <16 x i16> %i.w, %i.ap          ; 2 uses
  %i.ar = tail call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.aq, <16 x i16> %i.aq)
  %i.as = add <32 x i8> %i.ar, %i.ao              ; 2 uses
  %i.at = bitcast <32 x i8> %i.as to <8 x i32>
  %i.au = shufflevector <32 x i8> %i.as, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.av = shufflevector <32 x i8> %i.ab, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 32, i32 33, i32 34, i32 35, i32 32, i32 33, i32 34, i32 35, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 48, i32 49, i32 50, i32 51, i32 48, i32 49, i32 50, i32 51>
  %i.aw = bitcast <32 x i8> %i.au to <16 x i16>
  %i.ax = shufflevector <16 x i16> %i.w, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27>
  %i.ay = add nsw <16 x i16> %i.ax, %i.aw         ; 2 uses
  %i.az = tail call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.ay, <16 x i16> %i.ay)
  %i.ba = add <32 x i8> %i.az, %i.av              ; 2 uses
  %i.bb = bitcast <32 x i8> %i.ba to <8 x i32>
  %i.bc = shufflevector <8 x i32> %i.ad, <8 x i32> %i.am, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.bd = shufflevector <8 x i32> %i.at, <8 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.be = shufflevector <4 x i32> %i.bc, <4 x i32> %i.bd, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.bf = shufflevector <8 x i32> %i.bb, <8 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x i32> %i.be, <4 x i32> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i32> %i.bg, ptr %i.ae, align 4, !tbaa !12
  %i.bh = shufflevector <32 x i8> %i.ba, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.bi = shufflevector <4 x i64> %i.t, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.bj = shufflevector <4 x i64> %i.x, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.bk = shufflevector <4 x i64> %i.h, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bl = bitcast <32 x i8> %i.bh to <16 x i16>
  %i.bm = bitcast <4 x i64> %i.bi to <16 x i16>
  %i.bn = add <16 x i16> %i.bl, %i.bm             ; 2 uses
  %i.bo = tail call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.bn, <16 x i16> %i.bn)
  %i.bp = bitcast <4 x i64> %i.bk to <32 x i8>    ; 4 uses
  %i.bq = add <32 x i8> %i.bo, %i.bp              ; 2 uses
  %i.br = bitcast <32 x i8> %i.bq to <8 x i32>
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bt = shufflevector <32 x i8> %i.bq, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.bu = bitcast <4 x i64> %i.bi to <32 x i8>
  %i.bv = shufflevector <32 x i8> %i.bu, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %i.bw = shufflevector <32 x i8> %i.bp, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51>
  %i.bx = bitcast <32 x i8> %i.bt to <16 x i16>
  %i.by = bitcast <32 x i8> %i.bv to <16 x i16>
  %i.bz = add <16 x i16> %i.bx, %i.by             ; 2 uses
  %i.ca = tail call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.bz, <16 x i16> %i.bz)
  %i.cb = add <32 x i8> %i.ca, %i.bw              ; 2 uses
  %i.cc = bitcast <32 x i8> %i.cb to <8 x i32>
  %i.cd = shufflevector <32 x i8> %i.cb, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.ce = shufflevector <32 x i8> %i.bp, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 32, i32 33, i32 34, i32 35, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 48, i32 49, i32 50, i32 51>
  %i.cf = bitcast <32 x i8> %i.cd to <16 x i16>
  %i.cg = bitcast <4 x i64> %i.bj to <16 x i16>
  %i.ch = add <16 x i16> %i.cf, %i.cg             ; 2 uses
  %i.ci = tail call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.ch, <16 x i16> %i.ch)
  %i.cj = add <32 x i8> %i.ci, %i.ce              ; 2 uses
  %i.ck = bitcast <32 x i8> %i.cj to <8 x i32>
  %i.cl = shufflevector <32 x i8> %i.cj, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.cm = bitcast <4 x i64> %i.bj to <32 x i8>
  %i.cn = shufflevector <32 x i8> %i.cm, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %i.co = shufflevector <32 x i8> %i.bp, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 32, i32 33, i32 34, i32 35, i32 32, i32 33, i32 34, i32 35, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 48, i32 49, i32 50, i32 51, i32 48, i32 49, i32 50, i32 51>
  %i.cp = bitcast <32 x i8> %i.cl to <16 x i16>
  %i.cq = bitcast <32 x i8> %i.cn to <16 x i16>
  %i.cr = add <16 x i16> %i.cp, %i.cq             ; 2 uses
  %i.cs = tail call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.cr, <16 x i16> %i.cr)
  %i.ct = add <32 x i8> %i.cs, %i.co              ; 2 uses
  %i.cu = bitcast <32 x i8> %i.ct to <8 x i32>
  %i.cv = shufflevector <8 x i32> %i.br, <8 x i32> %i.cc, <4 x i32> <i32 0, i32 8, i32 poison, i32 poison>
  %i.cw = shufflevector <8 x i32> %i.ck, <8 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cx = shufflevector <4 x i32> %i.cv, <4 x i32> %i.cw, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cy = shufflevector <8 x i32> %i.cu, <8 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cz = shufflevector <4 x i32> %i.cx, <4 x i32> %i.cy, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i32> %i.cz, ptr %i.bs, align 4, !tbaa !12
  %i.da = shufflevector <32 x i8> %i.ct, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.f
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !22

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.db = add nuw i32 %2, 2147483640
  %i.dc = and i32 %i.db, 2147483640
  %narrow = add nuw i32 %i.dc, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not143 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not143, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @VP8LPredictorsAdd_SSE, i64 96), align 16, !tbaa !9
  %i.de = zext nneg i32 %.0.lcssa to i64          ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  %i.dh = sub nsw i32 %2, %.0.lcssa
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.de
  tail call void %i.dd(ptr noundef %i.df, ptr noundef %i.dg, i32 noundef %i.dh, ptr noundef %i.di) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @AddGreenToBlueAndRed_AVX2(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
bb.a:
  %.not22 = icmp slt i32 %1, 8
  br i1 %.not22, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv24 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next25, %.lr.ph ] ; 3 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv24
  %i.c = load <32 x i8>, ptr %i.b, align 1, !tbaa !10 ; 2 uses
  %i.d = shufflevector <32 x i8> %i.c, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 1, i32 32, i32 1, i32 32, i32 5, i32 32, i32 5, i32 32, i32 9, i32 32, i32 9, i32 32, i32 13, i32 32, i32 13, i32 32, i32 17, i32 48, i32 17, i32 48, i32 21, i32 48, i32 21, i32 48, i32 25, i32 48, i32 25, i32 48, i32 29, i32 48, i32 29, i32 48>
  %i.e = add <32 x i8> %i.d, %i.c
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24
  store <32 x i8> %i.e, ptr %i.f, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !23

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.g = add nuw i32 %1, 2147483640
  %i.h = and i32 %i.g, 2147483640
  %narrow = add nuw i32 %i.h, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not21 = icmp eq i32 %.0.lcssa, %1
  br i1 %.not21, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.i = load ptr, ptr @VP8LAddGreenToBlueAndRed_SSE, align 8, !tbaa !9
  %i.j = zext nneg i32 %.0.lcssa to i64           ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = sub nsw i32 %1, %.0.lcssa
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  tail call void %i.i(ptr noundef %i.k, i32 noundef %i.l, ptr noundef %i.m) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @TransformColorInverse_AVX2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
bb.a:
  %.not37 = icmp slt i32 %2, 8
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26
  %i.c = load i8, ptr %0, align 1, !tbaa !27
  %i.d = zext i8 %i.b to i16
  %i.e = zext i8 %i.c to i16
  %i.f = insertelement <2 x i16> poison, i16 %i.d, i64 0
  %i.g = insertelement <2 x i16> %i.f, i16 %i.e, i64 1
  %i.h = shl nuw <2 x i16> %i.g, splat (i16 8)
  %i.i = ashr exact <2 x i16> %i.h, splat (i16 5)
  %i.j = sext <2 x i16> %i.i to <2 x i32>         ; 2 uses
  %i.k = extractelement <2 x i32> %i.j, i64 1
  %i.l = shl nsw i32 %i.k, 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28
  %i.o = zext i8 %i.n to i16
  %i.p = shl nuw i16 %i.o, 8
  %i.q = ashr exact i16 %i.p, 5
  %i.r = zext i16 %i.q to i32
  %i.s = or disjoint i32 %i.l, %i.r
  %i.t = insertelement <8 x i32> poison, i32 %i.s, i64 0
  %i.u = shufflevector <8 x i32> %i.t, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.v = bitcast <8 x i32> %i.u to <16 x i16>
  %i.w = bitcast <2 x i32> %i.j to <4 x i16>
  %i.x = shufflevector <4 x i16> %i.w, <4 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.y = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv39 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next40, %bb.b ] ; 3 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv39
  %i.aa = load <32 x i8>, ptr %i.z, align 1, !tbaa !10 ; 3 uses
  %i.ab = shufflevector <32 x i8> %i.aa, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 1, i32 32, i32 1, i32 32, i32 5, i32 32, i32 5, i32 32, i32 9, i32 32, i32 9, i32 32, i32 13, i32 32, i32 13, i32 48, i32 17, i32 48, i32 17, i32 48, i32 21, i32 48, i32 21, i32 48, i32 25, i32 48, i32 25, i32 48, i32 29, i32 48, i32 29>
  %i.ac = bitcast <32 x i8> %i.ab to <16 x i16>
  %4 = call <16 x i16> @llvm.smulh.v16i16(<16 x i16> %i.ac, <16 x i16> %i.v)
  %i.ad = bitcast <16 x i16> %4 to <32 x i8>
  %i.ae = add <32 x i8> %i.aa, %i.ad              ; 2 uses
  %i.af = shufflevector <32 x i8> %i.ae, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 32, i32 2, i32 32, i32 32, i32 32, i32 6, i32 32, i32 32, i32 32, i32 10, i32 32, i32 32, i32 32, i32 14, i32 32, i32 32, i32 48, i32 18, i32 48, i32 48, i32 48, i32 22, i32 48, i32 48, i32 48, i32 26, i32 48, i32 48, i32 48, i32 30, i32 48, i32 48>
  %i.ag = bitcast <32 x i8> %i.af to <16 x i16>
  %5 = call <16 x i16> @llvm.smulh.v16i16(<16 x i16> %i.ag, <16 x i16> %i.x)
  %i.ah = bitcast <16 x i16> %5 to <32 x i8>
  %i.ai = add <32 x i8> %i.ae, %i.ah
  %i.aj = shufflevector <32 x i8> %i.ai, <32 x i8> %i.aa, <32 x i32> <i32 0, i32 33, i32 2, i32 35, i32 4, i32 37, i32 6, i32 39, i32 8, i32 41, i32 10, i32 43, i32 12, i32 45, i32 14, i32 47, i32 16, i32 49, i32 18, i32 51, i32 20, i32 53, i32 22, i32 55, i32 24, i32 57, i32 26, i32 59, i32 28, i32 61, i32 30, i32 63>
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv39
  store <32 x i8> %i.aj, ptr %i.ak, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.y
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 8
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !24

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.al = add nuw i32 %2, 2147483640
  %i.am = and i32 %i.al, 2147483640
  %narrow = add nuw i32 %i.am, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %narrow, %._crit_edge.loopexit ] ; 3 uses
  %.not36 = icmp eq i32 %.0.lcssa, %2
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.an = load ptr, ptr @VP8LTransformColorInverse_SSE, align 8, !tbaa !9
  %i.ao = zext nneg i32 %.0.lcssa to i64          ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ao
  %i.aq = sub nsw i32 %2, %.0.lcssa
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ao
  tail call void %i.an(ptr noundef nonnull %0, ptr noundef %i.ap, i32 noundef %i.aq, ptr noundef %i.ar) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ConvertBGRAToRGBA_AVX2(ptr noalias noundef %0, i32 noundef %1, ptr noalias noundef %2) #1 {
bb.a:
  %i.a = icmp sgt i32 %1, 7
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = add nsw i32 %1, -8                       ; 2 uses
  %i.c = lshr i32 %i.b, 3
  %i.d = add nuw nsw i32 %i.c, 1
  %xtraiter = and i32 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.015.prol = phi i32 [ %i.i, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ]
  %.01114.prol = phi ptr [ %i.e, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.01213.prol = phi ptr [ %i.h, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.e = getelementptr inbounds nuw i8, ptr %.01114.prol, i64 32 ; 3 uses
  %i.f = load <32 x i8>, ptr %.01114.prol, align 1, !tbaa !10
  %i.g = shufflevector <32 x i8> %i.f, <32 x i8> poison, <32 x i32> <i32 2, i32 1, i32 0, i32 3, i32 6, i32 5, i32 4, i32 7, i32 10, i32 9, i32 8, i32 11, i32 14, i32 13, i32 12, i32 15, i32 18, i32 17, i32 16, i32 19, i32 22, i32 21, i32 20, i32 23, i32 26, i32 25, i32 24, i32 27, i32 30, i32 29, i32 28, i32 31>
  %i.h = getelementptr inbounds nuw i8, ptr %.01213.prol, i64 32 ; 3 uses
  store <32 x i8> %i.g, ptr %.01213.prol, align 1, !tbaa !10
  %i.i = add nsw i32 %.015.prol, -8               ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !29

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.015.unr = phi i32 [ %1, %.lr.ph.preheader ], [ %i.i, %.lr.ph.prol ]
  %.01114.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %.01213.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %.lcssa25.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %.lcssa24.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.i, %.lr.ph.prol ]
  %i.j = icmp ult i32 %i.b, 24
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.015 = phi i32 [ %i.aa, %.lr.ph ], [ %.015.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.01114 = phi ptr [ %i.w, %.lr.ph ], [ %.01114.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.01213 = phi ptr [ %i.z, %.lr.ph ], [ %.01213.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01114, i64 32
  %i.l = load <32 x i8>, ptr %.01114, align 1, !tbaa !10
  %i.m = shufflevector <32 x i8> %i.l, <32 x i8> poison, <32 x i32> <i32 2, i32 1, i32 0, i32 3, i32 6, i32 5, i32 4, i32 7, i32 10, i32 9, i32 8, i32 11, i32 14, i32 13, i32 12, i32 15, i32 18, i32 17, i32 16, i32 19, i32 22, i32 21, i32 20, i32 23, i32 26, i32 25, i32 24, i32 27, i32 30, i32 29, i32 28, i32 31>
  %i.n = getelementptr inbounds nuw i8, ptr %.01213, i64 32
  store <32 x i8> %i.m, ptr %.01213, align 1, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %.01114, i64 64
  %i.p = load <32 x i8>, ptr %i.k, align 1, !tbaa !10
  %i.q = shufflevector <32 x i8> %i.p, <32 x i8> poison, <32 x i32> <i32 2, i32 1, i32 0, i32 3, i32 6, i32 5, i32 4, i32 7, i32 10, i32 9, i32 8, i32 11, i32 14, i32 13, i32 12, i32 15, i32 18, i32 17, i32 16, i32 19, i32 22, i32 21, i32 20, i32 23, i32 26, i32 25, i32 24, i32 27, i32 30, i32 29, i32 28, i32 31>
  %i.r = getelementptr inbounds nuw i8, ptr %.01213, i64 64
  store <32 x i8> %i.q, ptr %i.n, align 1, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %.01114, i64 96
  %i.t = load <32 x i8>, ptr %i.o, align 1, !tbaa !10
  %i.u = shufflevector <32 x i8> %i.t, <32 x i8> poison, <32 x i32> <i32 2, i32 1, i32 0, i32 3, i32 6, i32 5, i32 4, i32 7, i32 10, i32 9, i32 8, i32 11, i32 14, i32 13, i32 12, i32 15, i32 18, i32 17, i32 16, i32 19, i32 22, i32 21, i32 20, i32 23, i32 26, i32 25, i32 24, i32 27, i32 30, i32 29, i32 28, i32 31>
  %i.v = getelementptr inbounds nuw i8, ptr %.01213, i64 96
  store <32 x i8> %i.u, ptr %i.r, align 1, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %.01114, i64 128 ; 2 uses
  %i.x = load <32 x i8>, ptr %i.s, align 1, !tbaa !10
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> poison, <32 x i32> <i32 2, i32 1, i32 0, i32 3, i32 6, i32 5, i32 4, i32 7, i32 10, i32 9, i32 8, i32 11, i32 14, i32 13, i32 12, i32 15, i32 18, i32 17, i32 16, i32 19, i32 22, i32 21, i32 20, i32 23, i32 26, i32 25, i32 24, i32 27, i32 30, i32 29, i32 28, i32 31>
  %i.z = getelementptr inbounds nuw i8, ptr %.01213, i64 128 ; 2 uses
  store <32 x i8> %i.y, ptr %i.v, align 1, !tbaa !10
  %i.aa = add nsw i32 %.015, -32                  ; 2 uses
  %i.ab = icmp sgt i32 %.015, 39
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.012.lcssa = phi ptr [ %2, %bb.a ], [ %.lcssa24.unr, %.lr.ph.prol.loopexit ], [ %i.z, %.lr.ph ]
  %.011.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa25.unr, %.lr.ph.prol.loopexit ], [ %i.w, %.lr.ph ]
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.aa, %.lr.ph ] ; 2 uses
  %i.ac = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.ad = load ptr, ptr @VP8LConvertBGRAToRGBA_SSE, align 8, !tbaa !9
  tail call void %i.ad(ptr noundef %.011.lcssa, i32 noundef %.0.lcssa, ptr noundef %.012.lcssa) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.pavg.b(<32 x i8>, <32 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8>, <32 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packssdw(<8 x i32>, <8 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16>, <16 x i16>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.smulh.v16i16(<16 x i16>, <16 x i16>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!5, !5, i64 0}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!26 = !{!25, !4, i64 2}
!27 = !{!25, !4, i64 0}
!28 = !{!25, !4, i64 1}
!29 = distinct !{!29, !31}
!30 = distinct !{!30, !11}
!31 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
