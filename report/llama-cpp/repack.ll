Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/repack?download=true
inline.NumInlined: 423
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 70
begin_hunk_0_@llvm.x86.avx2.pshuf.b
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8>, <32 x i8>) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @ggml_gemv_q4_0_8x8_q8_0(i32 noundef %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = freeze <2 x i64> poison                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.b = sdiv i32 %0, 32
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = sext i32 %5 to i64                       ; 13 uses
  %i.e = icmp sgt i32 %5, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = sdiv i32 %6, 8
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp sgt i32 %6, 7
  br i1 %i.h, label %.lr.ph.split.i, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.i = icmp sgt i32 %0, 31
  br i1 %i.i, label %.lr.ph103.us.i, label %.lr.ph103.preheader.i

.lr.ph103.preheader.i:                            ; preds = %.lr.ph.split.i
  %i.j = shl nuw nsw i64 %i.g, 5                  ; 9 uses
  %xtraiter = and i64 %i.d, 7
  %i.k = icmp ult i32 %5, 8
  br i1 %i.k, label %.lr.ph103.i.epil.preheader, label %.lr.ph103.preheader.i.new

.lr.ph103.preheader.i.new:                        ; preds = %.lr.ph103.preheader.i
  %unroll_iter = and i64 %i.d, 2147483640
  br label %.lr.ph103.i

.lr.ph103.us.i:                                   ; preds = %.lr.ph.split.i, %._crit_edge104.split.us.us.i
  %.0105.us.i = phi i64 [ %i.ep, %._crit_edge104.split.us.us.i ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %i.l = mul nuw nsw i64 %.0105.us.i, %i.c
  %i.m = getelementptr inbounds nuw [34 x i8], ptr %4, i64 %i.l
  %i.n = mul nuw nsw i64 %.0105.us.i, %i.d
  %i.o = getelementptr [4 x i8], ptr %1, i64 %i.n
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph103.us.i
  %.095101.us.us.i = phi i64 [ 0, %.lr.ph103.us.i ], [ %i.eo, %._crit_edge.us.us.i ] ; 3 uses
  %i.p = mul nuw nsw i64 %.095101.us.us.i, %i.c
  %i.q = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.p
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us.i
  %.096100.us.us.i = phi <8 x float> [ zeroinitializer, %.lr.ph.us.us.i ], [ %i.ek, %bb.b ]
  %.09799.us.us.i = phi i64 [ 0, %.lr.ph.us.us.i ], [ %i.el, %bb.b ] ; 3 uses
  %i.r = getelementptr inbounds nuw [144 x i8], ptr %i.q, i64 %.09799.us.us.i ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load <4 x i64>, ptr %i.s, align 1, !tbaa !9, !alias.scope !39, !noalias !41 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.v = load <4 x i64>, ptr %i.u, align 1, !tbaa !9, !alias.scope !39, !noalias !41 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.x = load <4 x i64>, ptr %i.w, align 1, !tbaa !9, !alias.scope !39, !noalias !41 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.z = load <4 x i64>, ptr %i.y, align 1, !tbaa !9, !alias.scope !39, !noalias !41 ; 2 uses
  %i.aa = bitcast <4 x i64> %i.t to <32 x i8>
  %i.ab = and <32 x i8> %i.aa, splat (i8 15)
  %i.ac = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.ab)
  %i.ad = bitcast <4 x i64> %i.v to <32 x i8>
  %i.ae = and <32 x i8> %i.ad, splat (i8 15)
  %i.af = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.ae)
  %i.ag = bitcast <4 x i64> %i.x to <32 x i8>
  %i.ah = and <32 x i8> %i.ag, splat (i8 15)
  %i.ai = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.ah)
  %i.aj = bitcast <4 x i64> %i.z to <32 x i8>
  %i.ak = and <32 x i8> %i.aj, splat (i8 15)
  %i.al = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.ak)
  %i.am = bitcast <4 x i64> %i.t to <16 x i16>
  %i.an = lshr <16 x i16> %i.am, splat (i16 4)
  %i.ao = bitcast <16 x i16> %i.an to <32 x i8>
  %i.ap = and <32 x i8> %i.ao, splat (i8 15)
  %i.aq = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.ap)
  %i.ar = bitcast <4 x i64> %i.v to <16 x i16>
  %i.as = lshr <16 x i16> %i.ar, splat (i16 4)
  %i.at = bitcast <16 x i16> %i.as to <32 x i8>
  %i.au = and <32 x i8> %i.at, splat (i8 15)
  %i.av = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.au)
  %i.aw = bitcast <4 x i64> %i.x to <16 x i16>
  %i.ax = lshr <16 x i16> %i.aw, splat (i16 4)
  %i.ay = bitcast <16 x i16> %i.ax to <32 x i8>
  %i.az = and <32 x i8> %i.ay, splat (i8 15)
  %i.ba = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.az)
  %i.bb = bitcast <4 x i64> %i.z to <16 x i16>
  %i.bc = lshr <16 x i16> %i.bb, splat (i16 4)
  %i.bd = bitcast <16 x i16> %i.bc to <32 x i8>
  %i.be = and <32 x i8> %i.bd, splat (i8 15)
  %i.bf = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.be)
  %i.bg = load <8 x half>, ptr %i.r, align 1, !tbaa !9, !alias.scope !39, !noalias !41
  %i.bh = shufflevector <8 x half> %i.bg, <8 x half> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bi = fpext <8 x half> %i.bh to <8 x float>
  %i.bj = getelementptr inbounds nuw [34 x i8], ptr %i.m, i64 %.09799.us.us.i ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !15, !alias.scope !40, !noalias !42
  %i.bl = zext i16 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.bl
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !13, !noalias !43
  %i.bo = insertelement <8 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.br = load <2 x i64>, ptr %i.bq, align 2, !tbaa !9, !alias.scope !40, !noalias !42
  %i.bs = shufflevector <2 x i64> %i.br, <2 x i64> %i.a, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 18
  %i.bu = load <2 x i64>, ptr %i.bt, align 2, !tbaa !9, !alias.scope !40, !noalias !42
  %i.bv = shufflevector <2 x i64> %i.bu, <2 x i64> %i.a, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bw = bitcast <32 x i8> %i.ac to <8 x i32>    ; 2 uses
  %i.bx = bitcast <32 x i8> %i.af to <8 x i32>    ; 2 uses
  %i.by = shufflevector <8 x i32> %i.bw, <8 x i32> %i.bx, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.bz = bitcast <8 x i32> %i.by to <32 x i8>    ; 3 uses
  %i.ca = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.bz, <32 x i8> %i.bz)
  %i.cb = bitcast <4 x i64> %i.bs to <32 x i8>
  %i.cc = shufflevector <32 x i8> %i.cb, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cd = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cc, <32 x i8> %i.bz)
  %i.ce = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ca, <32 x i8> %i.cd)
  %i.cf = shufflevector <8 x i32> %i.bw, <8 x i32> %i.bx, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.cg = bitcast <8 x i32> %i.cf to <32 x i8>    ; 3 uses
  %i.ch = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cg, <32 x i8> %i.cg)
  %i.ci = bitcast <4 x i64> %i.bs to <32 x i8>
  %i.cj = shufflevector <32 x i8> %i.ci, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.ck = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cj, <32 x i8> %i.cg)
  %i.cl = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ce, <32 x i8> %i.ch, <32 x i8> %i.ck)
  %i.cm = bitcast <32 x i8> %i.ai to <8 x i32>    ; 2 uses
  %i.cn = bitcast <32 x i8> %i.al to <8 x i32>    ; 2 uses
  %i.co = shufflevector <8 x i32> %i.cm, <8 x i32> %i.cn, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.cp = bitcast <8 x i32> %i.co to <32 x i8>    ; 3 uses
  %i.cq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cp, <32 x i8> %i.cp)
  %i.cr = bitcast <4 x i64> %i.bs to <32 x i8>
  %i.cs = shufflevector <32 x i8> %i.cr, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.ct = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cs, <32 x i8> %i.cp)
  %i.cu = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cl, <32 x i8> %i.cq, <32 x i8> %i.ct)
  %i.cv = shufflevector <8 x i32> %i.cm, <8 x i32> %i.cn, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.cw = bitcast <8 x i32> %i.cv to <32 x i8>    ; 3 uses
  %i.cx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cw, <32 x i8> %i.cw)
  %i.cy = bitcast <4 x i64> %i.bs to <32 x i8>
  %i.cz = shufflevector <32 x i8> %i.cy, <32 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.da = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cz, <32 x i8> %i.cw)
  %i.db = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cu, <32 x i8> %i.cx, <32 x i8> %i.da)
  %i.dc = bitcast <32 x i8> %i.aq to <8 x i32>    ; 2 uses
  %i.dd = bitcast <32 x i8> %i.av to <8 x i32>    ; 2 uses
  %i.de = shufflevector <8 x i32> %i.dc, <8 x i32> %i.dd, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.df = bitcast <8 x i32> %i.de to <32 x i8>    ; 3 uses
  %i.dg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.df, <32 x i8> %i.df)
  %i.dh = bitcast <4 x i64> %i.bv to <32 x i8>
  %i.di = shufflevector <32 x i8> %i.dh, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dj = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.di, <32 x i8> %i.df)
  %i.dk = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.db, <32 x i8> %i.dg, <32 x i8> %i.dj)
  %i.dl = shufflevector <8 x i32> %i.dc, <8 x i32> %i.dd, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.dm = bitcast <8 x i32> %i.dl to <32 x i8>    ; 3 uses
  %i.dn = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.dm, <32 x i8> %i.dm)
  %i.do = bitcast <4 x i64> %i.bv to <32 x i8>
  %i.dp = shufflevector <32 x i8> %i.do, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.dq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.dp, <32 x i8> %i.dm)
  %i.dr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.dk, <32 x i8> %i.dn, <32 x i8> %i.dq)
  %i.ds = bitcast <32 x i8> %i.ba to <8 x i32>    ; 2 uses
  %i.dt = bitcast <32 x i8> %i.bf to <8 x i32>    ; 2 uses
  %i.du = shufflevector <8 x i32> %i.ds, <8 x i32> %i.dt, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.dv = bitcast <8 x i32> %i.du to <32 x i8>    ; 3 uses
  %i.dw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.dv, <32 x i8> %i.dv)
  %i.dx = bitcast <4 x i64> %i.bv to <32 x i8>
  %i.dy = shufflevector <32 x i8> %i.dx, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.dz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.dy, <32 x i8> %i.dv)
  %i.ea = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.dr, <32 x i8> %i.dw, <32 x i8> %i.dz)
  %i.eb = shufflevector <8 x i32> %i.ds, <8 x i32> %i.dt, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.ec = bitcast <8 x i32> %i.eb to <32 x i8>    ; 3 uses
  %i.ed = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ec, <32 x i8> %i.ec)
  %i.ee = bitcast <4 x i64> %i.bv to <32 x i8>
  %i.ef = shufflevector <32 x i8> %i.ee, <32 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.eg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ef, <32 x i8> %i.ec)
  %i.eh = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ea, <32 x i8> %i.ed, <32 x i8> %i.eg)
  %i.ei = sitofp <8 x i32> %i.eh to <8 x float>
  %i.ej = fmul <8 x float> %i.bp, %i.bi
  %i.ek = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ei, <8 x float> %i.ej, <8 x float> %.096100.us.us.i) ; 2 uses
  %i.el = add nuw nsw i64 %.09799.us.us.i, 1      ; 2 uses
  %exitcond109.not.i = icmp eq i64 %i.el, %i.c
  br i1 %exitcond109.not.i, label %._crit_edge.us.us.i, label %bb.b, !llvm.loop !34

._crit_edge.us.us.i:                              ; preds = %bb.b
  %i.em = shufflevector <8 x float> %i.ek, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %.idx.us.us.i = shl nuw nsw i64 %.095101.us.us.i, 5
  %i.en = getelementptr i8, ptr %i.o, i64 %.idx.us.us.i
  store <8 x float> %i.em, ptr %i.en, align 1, !tbaa !9, !alias.scope !38, !noalias !44
  %i.eo = add nuw nsw i64 %.095101.us.us.i, 1     ; 2 uses
  %exitcond110.not.i = icmp eq i64 %i.eo, %i.g
  br i1 %exitcond110.not.i, label %._crit_edge104.split.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !35

._crit_edge104.split.us.us.i:                     ; preds = %._crit_edge.us.us.i
  %i.ep = add nuw nsw i64 %.0105.us.i, 1          ; 2 uses
  %exitcond111.not.i = icmp eq i64 %i.ep, %i.d
  br i1 %exitcond111.not.i, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit, label %.lr.ph103.us.i, !llvm.loop !36

.lr.ph103.i:                                      ; preds = %.lr.ph103.i, %.lr.ph103.preheader.i.new
  %.0105.i = phi i64 [ 0, %.lr.ph103.preheader.i.new ], [ %i.fn, %.lr.ph103.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph103.preheader.i.new ], [ %niter.next.7, %.lr.ph103.i ]
  %i.eq = mul nuw nsw i64 %.0105.i, %i.d
  %i.er = getelementptr [4 x i8], ptr %1, i64 %i.eq
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.er, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !38, !noalias !44
  %i.es = or disjoint i64 %.0105.i, 1
  %i.et = mul nuw nsw i64 %i.es, %i.d
  %i.eu = getelementptr [4 x i8], ptr %1, i64 %i.et
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.eu, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !38, !noalias !44
  %i.ev = or disjoint i64 %.0105.i, 2
  %i.ew = mul nuw nsw i64 %i.ev, %i.d
  %i.ex = getelementptr [4 x i8], ptr %1, i64 %i.ew
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ex, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !38, !noalias !44
  %i.ey = or disjoint i64 %.0105.i, 3
  %i.ez = mul nuw nsw i64 %i.ey, %i.d
  %i.fa = getelementptr [4 x i8], ptr %1, i64 %i.ez
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fa, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !38, !noalias !44
  %i.fb = or disjoint i64 %.0105.i, 4
  %i.fc = mul nuw nsw i64 %i.fb, %i.d
  %i.fd = getelementptr [4 x i8], ptr %1, i64 %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fd, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !38, !noalias !44
  %i.fe = or disjoint i64 %.0105.i, 5
  %i.ff = mul nuw nsw i64 %i.fe, %i.d
  %i.fg = getelementptr [4 x i8], ptr %1, i64 %i.ff
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fg, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !38, !noalias !44
  %i.fh = or disjoint i64 %.0105.i, 6
  %i.fi = mul nuw nsw i64 %i.fh, %i.d
  %i.fj = getelementptr [4 x i8], ptr %1, i64 %i.fi
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fj, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !38, !noalias !44
  %i.fk = or disjoint i64 %.0105.i, 7
  %i.fl = mul nuw nsw i64 %i.fk, %i.d
  %i.fm = getelementptr [4 x i8], ptr %1, i64 %i.fl
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fm, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !38, !noalias !44
  %i.fn = add nuw nsw i64 %.0105.i, 8             ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit.loopexit20.unr-lcssa, label %.lr.ph103.i, !llvm.loop !36

_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit.loopexit20.unr-lcssa: ; preds = %.lr.ph103.i
  %i.fo = and i32 %5, 7
  %lcmp.mod.not = icmp eq i32 %i.fo, 0
  br i1 %lcmp.mod.not, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit, label %.lr.ph103.i.epil.preheader

.lr.ph103.i.epil.preheader:                       ; preds = %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit.loopexit20.unr-lcssa, %.lr.ph103.preheader.i
  %.0105.i.epil.init = phi i64 [ 0, %.lr.ph103.preheader.i ], [ %i.fn, %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit.loopexit20.unr-lcssa ]
  %i.fp = and i32 %5, 7
  %lcmp.mod21 = icmp ne i32 %i.fp, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph103.i.epil

.lr.ph103.i.epil:                                 ; preds = %.lr.ph103.i.epil, %.lr.ph103.i.epil.preheader
  %.0105.i.epil = phi i64 [ %i.fs, %.lr.ph103.i.epil ], [ %.0105.i.epil.init, %.lr.ph103.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph103.i.epil ], [ 0, %.lr.ph103.i.epil.preheader ]
  %i.fq = mul nuw nsw i64 %.0105.i.epil, %i.d
  %i.fr = getelementptr [4 x i8], ptr %1, i64 %i.fq
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fr, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !38, !noalias !44
  %i.fs = add nuw nsw i64 %.0105.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit, label %.lr.ph103.i.epil, !llvm.loop !37

_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit: ; preds = %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI5blockILi4ELi8EEEviPfmPKvS4_iiDv4_x.exit.loopexit20.unr-lcssa, %.lr.ph103.i.epil, %._crit_edge104.split.us.us.i, %bb.a, %.lr.ph.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8>, <32 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32>, <32 x i8>, <32 x i8>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ggml_gemv_q4_K_8x8_q8_K(i32 noundef %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %0, 256
  %i.b = freeze <2 x i64> poison                  ; 4 uses
  %i.c = sext i32 %i.a to i64                     ; 3 uses
  %i.d = sext i32 %5 to i64                       ; 13 uses
  %i.e = icmp sgt i32 %5, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %bb.a
  %i.f = sdiv i32 %6, 8
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp sgt i32 %6, 7
  br i1 %i.h, label %.lr.ph.split, label %._crit_edge.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.i = icmp sgt i32 %0, 255
  br i1 %i.i, label %.lr.ph233.us, label %.lr.ph233.preheader

.lr.ph233.preheader:                              ; preds = %.lr.ph.split
  %i.j = shl nuw nsw i64 %i.g, 5                  ; 9 uses
  %xtraiter = and i64 %i.d, 7
  %i.k = icmp ult i32 %5, 8
  br i1 %i.k, label %.lr.ph233.epil.preheader, label %.lr.ph233.preheader.new

.lr.ph233.preheader.new:                          ; preds = %.lr.ph233.preheader
  %unroll_iter = and i64 %i.d, 2147483640
  br label %.lr.ph233

.lr.ph233.us:                                     ; preds = %.lr.ph.split, %._crit_edge234.split.us.us
  %.0235.us = phi i64 [ %i.jn, %._crit_edge234.split.us.us ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.l = mul nuw nsw i64 %.0235.us, %i.c
  %i.m = getelementptr inbounds nuw [292 x i8], ptr %4, i64 %i.l
  %i.n = mul nuw nsw i64 %.0235.us, %i.d
  %i.o = getelementptr [4 x i8], ptr %1, i64 %i.n
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph233.us
  %.0215231.us.us = phi i64 [ 0, %.lr.ph233.us ], [ %i.jm, %._crit_edge.us.us ] ; 3 uses
  %i.p = mul nuw nsw i64 %.0215231.us.us, %i.c
  %i.q = getelementptr inbounds nuw [1152 x i8], ptr %3, i64 %i.p
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.us.us
  %.0216229.us.us = phi <8 x float> [ zeroinitializer, %.lr.ph.us.us ], [ %i.je, %bb.d ]
  %.0217228.us.us = phi <8 x float> [ zeroinitializer, %.lr.ph.us.us ], [ %i.jh, %bb.d ]
  %.0218227.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %i.ji, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw [292 x i8], ptr %i.m, i64 %.0218227.us.us ; 6 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !18
  %i.t = getelementptr inbounds nuw [1152 x i8], ptr %i.q, i64 %.0218227.us.us ; 11 uses
  %i.u = load <8 x half>, ptr %i.t, align 1, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load <8 x half>, ptr %i.v, align 1, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 260
  %i.y = load <4 x i64>, ptr %i.x, align 4, !tbaa !9 ; 2 uses
  %i.z = bitcast <4 x i64> %i.y to <16 x i16>
  %i.aa = shufflevector <16 x i16> %i.z, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ab = bitcast <4 x i64> %i.y to <16 x i16>
  %i.ac = shufflevector <16 x i16> %i.ab, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ad = tail call <8 x i16> @llvm.x86.ssse3.phadd.w.128(<8 x i16> %i.aa, <8 x i16> %i.ac)
  %i.ae = bitcast <8 x i16> %i.ad to <2 x i64>
  %i.af = shufflevector <2 x i64> %i.ae, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 320
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 352
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.at = phi <8 x i32> [ %i.iv, %bb.c ], [ zeroinitializer, %bb.b ]
  %i.au = phi <8 x i32> [ %i.iw, %bb.c ], [ zeroinitializer, %bb.b ]
  %.0221226.us.us = phi <4 x i64> [ %i.it, %bb.c ], [ %i.af, %bb.b ] ; 2 uses
  %i.av = shl nuw nsw i64 %indvars.iv, 8          ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.av
  %i.ax = load <4 x i64>, ptr %i.aw, align 1, !tbaa !9 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.av
  %i.az = load <4 x i64>, ptr %i.ay, align 1, !tbaa !9 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.av
  %i.bb = load <4 x i64>, ptr %i.ba, align 1, !tbaa !9 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.av
  %i.bd = load <4 x i64>, ptr %i.bc, align 1, !tbaa !9 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.av
  %i.bf = load <4 x i64>, ptr %i.be, align 1, !tbaa !9 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.av
  %i.bh = load <4 x i64>, ptr %i.bg, align 1, !tbaa !9 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.av
  %i.bj = load <4 x i64>, ptr %i.bi, align 1, !tbaa !9 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.av
  %i.bl = load <4 x i64>, ptr %i.bk, align 1, !tbaa !9 ; 2 uses
  %i.bm = bitcast <4 x i64> %i.ax to <16 x i16>
  %i.bn = lshr <16 x i16> %i.bm, splat (i16 4)
  %i.bo = bitcast <4 x i64> %i.az to <16 x i16>
  %i.bp = lshr <16 x i16> %i.bo, splat (i16 4)
  %i.bq = bitcast <4 x i64> %i.bb to <16 x i16>
  %i.br = lshr <16 x i16> %i.bq, splat (i16 4)
  %i.bs = bitcast <4 x i64> %i.bd to <16 x i16>
  %i.bt = lshr <16 x i16> %i.bs, splat (i16 4)
  %i.bu = bitcast <4 x i64> %i.bf to <16 x i16>
  %i.bv = lshr <16 x i16> %i.bu, splat (i16 4)
  %i.bw = bitcast <4 x i64> %i.bh to <16 x i16>
  %i.bx = lshr <16 x i16> %i.bw, splat (i16 4)
  %i.by = bitcast <4 x i64> %i.bj to <16 x i16>
  %i.bz = lshr <16 x i16> %i.by, splat (i16 4)
  %i.ca = bitcast <4 x i64> %i.bl to <16 x i16>
  %i.cb = lshr <16 x i16> %i.ca, splat (i16 4)
  %i.cc = mul nuw nsw i64 %indvars.iv, 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cc ; 2 uses
  %.sroa.1166.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ce = tail call <5 x i32> @llvm.masked.load.v5i32.p0(ptr nonnull align 1 %i.cd, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x i32> poison) ; 2 uses
  %i.cf = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr nonnull align 1 %.sroa.1166.0..sroa_idx.us.us, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i32> poison)
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.ch = lshr <4 x i32> %i.cg, <i32 4, i32 0, i32 4, i32 0>
  %i.ci = and <4 x i32> %i.ch, splat (i32 252645135)
  %i.cj = shufflevector <5 x i32> %i.ce, <5 x i32> poison, <4 x i32> <i32 1, i32 0, i32 4, i32 3>
  %i.ck = lshr <5 x i32> %i.ce, <i32 2, i32 2, i32 poison, i32 2, i32 2>
  %i.cl = shufflevector <5 x i32> %i.ck, <5 x i32> poison, <8 x i32> <i32 1, i32 0, i32 4, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cm = shufflevector <8 x i32> %i.cl, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 -1, i32 -1, i32 -1, i32 -1>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.cn = and <8 x i32> %i.cm, <i32 808464432, i32 808464432, i32 808464432, i32 808464432, i32 1061109567, i32 1061109567, i32 1061109567, i32 1061109567> ; 2 uses
  %i.co = shufflevector <4 x i32> %i.cj, <4 x i32> %i.ci, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cp = or disjoint <8 x i32> %i.co, %i.cn
  %i.cq = and <8 x i32> %i.co, %i.cn
  %i.cr = shufflevector <8 x i32> %i.cp, <8 x i32> %i.cq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.cs = bitcast <8 x i32> %i.cr to <32 x i8>
  %i.ct = shufflevector <32 x i8> %i.cs, <32 x i8> poison, <16 x i32> <i32 20, i32 20, i32 4, i32 4, i32 21, i32 21, i32 5, i32 5, i32 22, i32 22, i32 6, i32 6, i32 23, i32 23, i32 7, i32 7>
  %i.cu = zext nneg <16 x i8> %i.ct to <16 x i16>
  %i.cv = bitcast <8 x i32> %i.cr to <32 x i8>
  %i.cw = shufflevector <32 x i8> %i.cv, <32 x i8> poison, <16 x i32> <i32 28, i32 28, i32 12, i32 12, i32 29, i32 29, i32 13, i32 13, i32 30, i32 30, i32 14, i32 14, i32 31, i32 31, i32 15, i32 15>
  %i.cx = zext nneg <16 x i8> %i.cw to <16 x i16>
  %i.cy = bitcast <8 x i32> %i.cr to <32 x i8>
  %i.cz = bitcast <8 x i32> %i.cr to <32 x i8>
  %i.da = shufflevector <32 x i8> %i.cy, <32 x i8> %i.cz, <16 x i32> <i32 16, i32 56, i32 17, i32 57, i32 18, i32 58, i32 19, i32 59, i32 0, i32 40, i32 1, i32 41, i32 2, i32 42, i32 3, i32 43>
  %i.db = zext nneg <16 x i8> %i.da to <16 x i16>
  %i.dc = shl nuw nsw i64 %indvars.iv, 6          ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.dc
  %i.de = load <2 x i64>, ptr %i.dd, align 1, !tbaa !9
  %i.df = shufflevector <2 x i64> %i.de, <2 x i64> %i.b, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.dc
  %i.dh = load <2 x i64>, ptr %i.dg, align 1, !tbaa !9
  %i.di = shufflevector <2 x i64> %i.dh, <2 x i64> %i.b, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.dc
  %i.dk = load <2 x i64>, ptr %i.dj, align 1, !tbaa !9
  %i.dl = shufflevector <2 x i64> %i.dk, <2 x i64> %i.b, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dc
  %i.dn = load <2 x i64>, ptr %i.dm, align 1, !tbaa !9
  %i.do = shufflevector <2 x i64> %i.dn, <2 x i64> %i.b, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.dp = bitcast <4 x i64> %i.ax to <8 x i32>
  %i.dq = and <8 x i32> %i.dp, splat (i32 252645135) ; 2 uses
  %i.dr = bitcast <4 x i64> %i.az to <8 x i32>
  %i.ds = and <8 x i32> %i.dr, splat (i32 252645135) ; 2 uses
  %i.dt = shufflevector <8 x i32> %i.dq, <8 x i32> %i.ds, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.du = bitcast <8 x i32> %i.dt to <32 x i8>
  %i.dv = bitcast <4 x i64> %i.df to <32 x i8>
  %i.dw = shufflevector <32 x i8> %i.dv, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dx = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.du, <32 x i8> %i.dw)
  %i.dy = shufflevector <8 x i32> %i.dq, <8 x i32> %i.ds, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.dz = bitcast <8 x i32> %i.dy to <32 x i8>
  %i.ea = bitcast <4 x i64> %i.df to <32 x i8>
  %i.eb = shufflevector <32 x i8> %i.ea, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.ec = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.dz, <32 x i8> %i.eb)
  %i.ed = add <16 x i16> %i.ec, %i.dx
  %i.ee = bitcast <4 x i64> %i.bb to <8 x i32>
  %i.ef = and <8 x i32> %i.ee, splat (i32 252645135) ; 2 uses
  %i.eg = bitcast <4 x i64> %i.bd to <8 x i32>
  %i.eh = and <8 x i32> %i.eg, splat (i32 252645135) ; 2 uses
  %i.ei = shufflevector <8 x i32> %i.ef, <8 x i32> %i.eh, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.ej = bitcast <8 x i32> %i.ei to <32 x i8>
  %i.ek = bitcast <4 x i64> %i.df to <32 x i8>
  %i.el = shufflevector <32 x i8> %i.ek, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.em = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.ej, <32 x i8> %i.el)
  %i.en = add <16 x i16> %i.ed, %i.em
  %i.eo = shufflevector <8 x i32> %i.ef, <8 x i32> %i.eh, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.ep = bitcast <8 x i32> %i.eo to <32 x i8>
  %i.eq = bitcast <4 x i64> %i.df to <32 x i8>
  %i.er = shufflevector <32 x i8> %i.eq, <32 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.es = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.ep, <32 x i8> %i.er)
  %i.et = add <16 x i16> %i.en, %i.es
  %i.eu = bitcast <4 x i64> %i.bf to <8 x i32>
  %i.ev = and <8 x i32> %i.eu, splat (i32 252645135) ; 2 uses
  %i.ew = bitcast <4 x i64> %i.bh to <8 x i32>
  %i.ex = and <8 x i32> %i.ew, splat (i32 252645135) ; 2 uses
  %i.ey = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ex, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.ez = bitcast <8 x i32> %i.ey to <32 x i8>
  %i.fa = bitcast <4 x i64> %i.di to <32 x i8>
  %i.fb = shufflevector <32 x i8> %i.fa, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fc = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.ez, <32 x i8> %i.fb)
  %i.fd = add <16 x i16> %i.et, %i.fc
  %i.fe = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ex, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.ff = bitcast <8 x i32> %i.fe to <32 x i8>
  %i.fg = bitcast <4 x i64> %i.di to <32 x i8>
  %i.fh = shufflevector <32 x i8> %i.fg, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.fi = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.ff, <32 x i8> %i.fh)
  %i.fj = add <16 x i16> %i.fd, %i.fi
  %i.fk = bitcast <4 x i64> %i.bj to <8 x i32>
  %i.fl = and <8 x i32> %i.fk, splat (i32 252645135) ; 2 uses
  %i.fm = bitcast <4 x i64> %i.bl to <8 x i32>
  %i.fn = and <8 x i32> %i.fm, splat (i32 252645135) ; 2 uses
  %i.fo = shufflevector <8 x i32> %i.fl, <8 x i32> %i.fn, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.fp = bitcast <8 x i32> %i.fo to <32 x i8>
  %i.fq = bitcast <4 x i64> %i.di to <32 x i8>
  %i.fr = shufflevector <32 x i8> %i.fq, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.fs = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.fp, <32 x i8> %i.fr)
  %i.ft = add <16 x i16> %i.fj, %i.fs
  %i.fu = shufflevector <8 x i32> %i.fl, <8 x i32> %i.fn, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.fv = bitcast <8 x i32> %i.fu to <32 x i8>
  %i.fw = bitcast <4 x i64> %i.di to <32 x i8>
  %i.fx = shufflevector <32 x i8> %i.fw, <32 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.fy = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.fv, <32 x i8> %i.fx)
  %i.fz = add <16 x i16> %i.ft, %i.fy
  %i.ga = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.fz, <16 x i16> %i.cu)
  %i.gb = bitcast <16 x i16> %i.bn to <8 x i32>
  %i.gc = and <8 x i32> %i.gb, splat (i32 252645135) ; 2 uses
  %i.gd = bitcast <16 x i16> %i.bp to <8 x i32>
  %i.ge = and <8 x i32> %i.gd, splat (i32 252645135) ; 2 uses
  %i.gf = shufflevector <8 x i32> %i.gc, <8 x i32> %i.ge, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.gg = bitcast <8 x i32> %i.gf to <32 x i8>
  %i.gh = bitcast <4 x i64> %i.dl to <32 x i8>
  %i.gi = shufflevector <32 x i8> %i.gh, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gj = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.gg, <32 x i8> %i.gi)
  %i.gk = shufflevector <8 x i32> %i.gc, <8 x i32> %i.ge, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.gl = bitcast <8 x i32> %i.gk to <32 x i8>
  %i.gm = bitcast <4 x i64> %i.dl to <32 x i8>
  %i.gn = shufflevector <32 x i8> %i.gm, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.go = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.gl, <32 x i8> %i.gn)
  %i.gp = add <16 x i16> %i.go, %i.gj
  %i.gq = bitcast <16 x i16> %i.br to <8 x i32>
  %i.gr = and <8 x i32> %i.gq, splat (i32 252645135) ; 2 uses
  %i.gs = bitcast <16 x i16> %i.bt to <8 x i32>
  %i.gt = and <8 x i32> %i.gs, splat (i32 252645135) ; 2 uses
  %i.gu = shufflevector <8 x i32> %i.gr, <8 x i32> %i.gt, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.gv = bitcast <8 x i32> %i.gu to <32 x i8>
  %i.gw = bitcast <4 x i64> %i.dl to <32 x i8>
  %i.gx = shufflevector <32 x i8> %i.gw, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.gy = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.gv, <32 x i8> %i.gx)
  %i.gz = add <16 x i16> %i.gp, %i.gy
  %i.ha = shufflevector <8 x i32> %i.gr, <8 x i32> %i.gt, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.hb = bitcast <8 x i32> %i.ha to <32 x i8>
  %i.hc = bitcast <4 x i64> %i.dl to <32 x i8>
  %i.hd = shufflevector <32 x i8> %i.hc, <32 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.he = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.hb, <32 x i8> %i.hd)
  %i.hf = add <16 x i16> %i.gz, %i.he
  %i.hg = bitcast <16 x i16> %i.bv to <8 x i32>
  %i.hh = and <8 x i32> %i.hg, splat (i32 252645135) ; 2 uses
  %i.hi = bitcast <16 x i16> %i.bx to <8 x i32>
  %i.hj = and <8 x i32> %i.hi, splat (i32 252645135) ; 2 uses
  %i.hk = shufflevector <8 x i32> %i.hh, <8 x i32> %i.hj, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.hl = bitcast <8 x i32> %i.hk to <32 x i8>
  %i.hm = bitcast <4 x i64> %i.do to <32 x i8>
  %i.hn = shufflevector <32 x i8> %i.hm, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ho = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.hl, <32 x i8> %i.hn)
  %i.hp = add <16 x i16> %i.hf, %i.ho
  %i.hq = shufflevector <8 x i32> %i.hh, <8 x i32> %i.hj, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.hr = bitcast <8 x i32> %i.hq to <32 x i8>
  %i.hs = bitcast <4 x i64> %i.do to <32 x i8>
  %i.ht = shufflevector <32 x i8> %i.hs, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.hu = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.hr, <32 x i8> %i.ht)
  %i.hv = add <16 x i16> %i.hp, %i.hu
  %i.hw = bitcast <16 x i16> %i.bz to <8 x i32>
  %i.hx = and <8 x i32> %i.hw, splat (i32 252645135) ; 2 uses
  %i.hy = bitcast <16 x i16> %i.cb to <8 x i32>
  %i.hz = and <8 x i32> %i.hy, splat (i32 252645135) ; 2 uses
  %i.ia = shufflevector <8 x i32> %i.hx, <8 x i32> %i.hz, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.ib = bitcast <8 x i32> %i.ia to <32 x i8>
  %i.ic = bitcast <4 x i64> %i.do to <32 x i8>
  %i.id = shufflevector <32 x i8> %i.ic, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.ie = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.ib, <32 x i8> %i.id)
  %i.if = add <16 x i16> %i.hv, %i.ie
  %i.ig = shufflevector <8 x i32> %i.hx, <8 x i32> %i.hz, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.ih = bitcast <8 x i32> %i.ig to <32 x i8>
  %i.ii = bitcast <4 x i64> %i.do to <32 x i8>
  %i.ij = shufflevector <32 x i8> %i.ii, <32 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.ik = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.ih, <32 x i8> %i.ij)
  %i.il = add <16 x i16> %i.if, %i.ik
  %i.im = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.il, <16 x i16> %i.cx)
  %i.in = bitcast <4 x i64> %.0221226.us.us to <8 x i32>
  %i.io = shufflevector <8 x i32> %i.in, <8 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.ip = bitcast <8 x i32> %i.io to <16 x i16>
  %i.iq = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ip, <16 x i16> %i.db)
  %i.ir = bitcast <4 x i64> %.0221226.us.us to <32 x i8>
  %i.is = shufflevector <32 x i8> %i.ir, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51>
  %i.it = bitcast <32 x i8> %i.is to <4 x i64>
  %i.iu = add <8 x i32> %i.ga, %i.at
  %i.iv = add <8 x i32> %i.iu, %i.im              ; 2 uses
  %i.iw = add <8 x i32> %i.iq, %i.au              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond243.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond243.not, label %bb.d, label %bb.c, !llvm.loop !45

bb.d:                                             ; preds = %bb.c
  %i.ix = insertelement <8 x float> poison, float %i.s, i64 0
  %i.iy = shufflevector <8 x float> %i.ix, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.iz = shufflevector <8 x half> %i.u, <8 x half> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ja = fpext <8 x half> %i.iz to <8 x float>
  %i.jb = fpext <8 x half> %i.w to <8 x float>
  %i.jc = sitofp <8 x i32> %i.iv to <8 x float>
  %i.jd = fmul <8 x float> %i.iy, %i.ja
  %i.je = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.jc, <8 x float> %i.jd, <8 x float> %.0216229.us.us) ; 2 uses
  %i.jf = sitofp <8 x i32> %i.iw to <8 x float>
  %i.jg = fmul <8 x float> %i.iy, %i.jb
  %i.jh = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.jf, <8 x float> %i.jg, <8 x float> %.0217228.us.us) ; 2 uses
  %i.ji = add nuw nsw i64 %.0218227.us.us, 1      ; 2 uses
  %exitcond244.not = icmp eq i64 %i.ji, %i.c
  br i1 %exitcond244.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !46

._crit_edge.us.us:                                ; preds = %bb.d
  %i.jj = shufflevector <8 x float> %i.je, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %.idx.us.us = shl nuw nsw i64 %.0215231.us.us, 5
  %i.jk = getelementptr i8, ptr %i.o, i64 %.idx.us.us
  %i.jl = fsub <8 x float> %i.jj, %i.jh
  store <8 x float> %i.jl, ptr %i.jk, align 1, !tbaa !9
  %i.jm = add nuw nsw i64 %.0215231.us.us, 1      ; 2 uses
  %exitcond245.not = icmp eq i64 %i.jm, %i.g
  br i1 %exitcond245.not, label %._crit_edge234.split.us.us, label %.lr.ph.us.us, !llvm.loop !47

._crit_edge234.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.jn = add nuw nsw i64 %.0235.us, 1            ; 2 uses
  %exitcond246.not = icmp eq i64 %i.jn, %i.d
  br i1 %exitcond246.not, label %._crit_edge.split, label %.lr.ph233.us, !llvm.loop !48

._crit_edge.split.loopexit275.unr-lcssa:          ; preds = %.lr.ph233
  %i.jo = and i32 %5, 7
  %lcmp.mod.not = icmp eq i32 %i.jo, 0
  br i1 %lcmp.mod.not, label %._crit_edge.split, label %.lr.ph233.epil.preheader

.lr.ph233.epil.preheader:                         ; preds = %._crit_edge.split.loopexit275.unr-lcssa, %.lr.ph233.preheader
  %.0235.epil.init = phi i64 [ 0, %.lr.ph233.preheader ], [ %i.kq, %._crit_edge.split.loopexit275.unr-lcssa ]
  %i.jp = and i32 %5, 7
  %lcmp.mod276 = icmp ne i32 %i.jp, 0
  tail call void @llvm.assume(i1 %lcmp.mod276)
  br label %.lr.ph233.epil

.lr.ph233.epil:                                   ; preds = %.lr.ph233.epil, %.lr.ph233.epil.preheader
  %.0235.epil = phi i64 [ %i.js, %.lr.ph233.epil ], [ %.0235.epil.init, %.lr.ph233.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph233.epil ], [ 0, %.lr.ph233.epil.preheader ]
  %i.jq = mul nuw nsw i64 %.0235.epil, %i.d
  %i.jr = getelementptr [4 x i8], ptr %1, i64 %i.jq
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jr, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9
  %i.js = add nuw nsw i64 %.0235.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split, label %.lr.ph233.epil, !llvm.loop !49

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit275.unr-lcssa, %.lr.ph233.epil, %._crit_edge234.split.us.us, %.lr.ph, %bb.a
  ret void

.lr.ph233:                                        ; preds = %.lr.ph233, %.lr.ph233.preheader.new
  %.0235 = phi i64 [ 0, %.lr.ph233.preheader.new ], [ %i.kq, %.lr.ph233 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph233.preheader.new ], [ %niter.next.7, %.lr.ph233 ]
  %i.jt = mul nuw nsw i64 %.0235, %i.d
  %i.ju = getelementptr [4 x i8], ptr %1, i64 %i.jt
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ju, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9
  %i.jv = or disjoint i64 %.0235, 1
  %i.jw = mul nuw nsw i64 %i.jv, %i.d
  %i.jx = getelementptr [4 x i8], ptr %1, i64 %i.jw
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jx, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9
  %i.jy = or disjoint i64 %.0235, 2
  %i.jz = mul nuw nsw i64 %i.jy, %i.d
  %i.ka = getelementptr [4 x i8], ptr %1, i64 %i.jz
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ka, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9
  %i.kb = or disjoint i64 %.0235, 3
  %i.kc = mul nuw nsw i64 %i.kb, %i.d
  %i.kd = getelementptr [4 x i8], ptr %1, i64 %i.kc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.kd, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9
  %i.ke = or disjoint i64 %.0235, 4
  %i.kf = mul nuw nsw i64 %i.ke, %i.d
  %i.kg = getelementptr [4 x i8], ptr %1, i64 %i.kf
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.kg, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9
  %i.kh = or disjoint i64 %.0235, 5
  %i.ki = mul nuw nsw i64 %i.kh, %i.d
  %i.kj = getelementptr [4 x i8], ptr %1, i64 %i.ki
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.kj, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9
  %i.kk = or disjoint i64 %.0235, 6
  %i.kl = mul nuw nsw i64 %i.kk, %i.d
  %i.km = getelementptr [4 x i8], ptr %1, i64 %i.kl
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.km, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9
  %i.kn = or disjoint i64 %.0235, 7
  %i.ko = mul nuw nsw i64 %i.kn, %i.d
  %i.kp = getelementptr [4 x i8], ptr %1, i64 %i.ko
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.kp, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9
  %i.kq = add nuw nsw i64 %.0235, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.split.loopexit275.unr-lcssa, label %.lr.ph233, !llvm.loop !48
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.ssse3.phadd.w.128(<8 x i16>, <8 x i16>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16>, <16 x i16>) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @ggml_gemv_iq4_nl_8x8_q8_0(i32 noundef %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = freeze <2 x i64> poison                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.b = sdiv i32 %0, 32
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = sext i32 %5 to i64                       ; 13 uses
  %i.e = icmp sgt i32 %5, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = sdiv i32 %6, 8
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp sgt i32 %6, 7
  br i1 %i.h, label %.lr.ph.split.i, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.i = icmp sgt i32 %0, 31
  br i1 %i.i, label %.lr.ph103.us.i, label %.lr.ph103.preheader.i

.lr.ph103.preheader.i:                            ; preds = %.lr.ph.split.i
  %i.j = shl nuw nsw i64 %i.g, 5                  ; 9 uses
  %xtraiter = and i64 %i.d, 7
  %i.k = icmp ult i32 %5, 8
  br i1 %i.k, label %.lr.ph103.i.epil.preheader, label %.lr.ph103.preheader.i.new

.lr.ph103.preheader.i.new:                        ; preds = %.lr.ph103.preheader.i
  %unroll_iter = and i64 %i.d, 2147483640
  br label %.lr.ph103.i

.lr.ph103.us.i:                                   ; preds = %.lr.ph.split.i, %._crit_edge104.split.us.us.i
  %.0105.us.i = phi i64 [ %i.ep, %._crit_edge104.split.us.us.i ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %i.l = mul nuw nsw i64 %.0105.us.i, %i.c
  %i.m = getelementptr inbounds nuw [34 x i8], ptr %4, i64 %i.l
  %i.n = mul nuw nsw i64 %.0105.us.i, %i.d
  %i.o = getelementptr [4 x i8], ptr %1, i64 %i.n
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph103.us.i
  %.095101.us.us.i = phi i64 [ 0, %.lr.ph103.us.i ], [ %i.eo, %._crit_edge.us.us.i ] ; 3 uses
  %i.p = mul nuw nsw i64 %.095101.us.us.i, %i.c
  %i.q = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.p
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us.i
  %.096100.us.us.i = phi <8 x float> [ zeroinitializer, %.lr.ph.us.us.i ], [ %i.ek, %bb.b ]
  %.09799.us.us.i = phi i64 [ 0, %.lr.ph.us.us.i ], [ %i.el, %bb.b ] ; 3 uses
  %i.r = getelementptr inbounds nuw [144 x i8], ptr %i.q, i64 %.09799.us.us.i ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load <4 x i64>, ptr %i.s, align 1, !tbaa !9, !alias.scope !59, !noalias !61 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.v = load <4 x i64>, ptr %i.u, align 1, !tbaa !9, !alias.scope !59, !noalias !61 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.x = load <4 x i64>, ptr %i.w, align 1, !tbaa !9, !alias.scope !59, !noalias !61 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.z = load <4 x i64>, ptr %i.y, align 1, !tbaa !9, !alias.scope !59, !noalias !61 ; 2 uses
  %i.aa = bitcast <4 x i64> %i.t to <32 x i8>
  %i.ab = and <32 x i8> %i.aa, splat (i8 15)
  %i.ac = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.ab)
  %i.ad = bitcast <4 x i64> %i.v to <32 x i8>
  %i.ae = and <32 x i8> %i.ad, splat (i8 15)
  %i.af = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.ae)
  %i.ag = bitcast <4 x i64> %i.x to <32 x i8>
  %i.ah = and <32 x i8> %i.ag, splat (i8 15)
  %i.ai = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.ah)
  %i.aj = bitcast <4 x i64> %i.z to <32 x i8>
  %i.ak = and <32 x i8> %i.aj, splat (i8 15)
  %i.al = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.ak)
  %i.am = bitcast <4 x i64> %i.t to <16 x i16>
  %i.an = lshr <16 x i16> %i.am, splat (i16 4)
  %i.ao = bitcast <16 x i16> %i.an to <32 x i8>
  %i.ap = and <32 x i8> %i.ao, splat (i8 15)
  %i.aq = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.ap)
  %i.ar = bitcast <4 x i64> %i.v to <16 x i16>
  %i.as = lshr <16 x i16> %i.ar, splat (i16 4)
  %i.at = bitcast <16 x i16> %i.as to <32 x i8>
  %i.au = and <32 x i8> %i.at, splat (i8 15)
  %i.av = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.au)
  %i.aw = bitcast <4 x i64> %i.x to <16 x i16>
  %i.ax = lshr <16 x i16> %i.aw, splat (i16 4)
  %i.ay = bitcast <16 x i16> %i.ax to <32 x i8>
  %i.az = and <32 x i8> %i.ay, splat (i8 15)
  %i.ba = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.az)
  %i.bb = bitcast <4 x i64> %i.z to <16 x i16>
  %i.bc = lshr <16 x i16> %i.bb, splat (i16 4)
  %i.bd = bitcast <16 x i16> %i.bc to <32 x i8>
  %i.be = and <32 x i8> %i.bd, splat (i8 15)
  %i.bf = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.be)
  %i.bg = load <8 x half>, ptr %i.r, align 1, !tbaa !9, !alias.scope !59, !noalias !61
  %i.bh = shufflevector <8 x half> %i.bg, <8 x half> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bi = fpext <8 x half> %i.bh to <8 x float>
  %i.bj = getelementptr inbounds nuw [34 x i8], ptr %i.m, i64 %.09799.us.us.i ; 3 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !15, !alias.scope !60, !noalias !62
  %i.bl = zext i16 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.bl
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !13, !noalias !63
  %i.bo = insertelement <8 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.br = load <2 x i64>, ptr %i.bq, align 2, !tbaa !9, !alias.scope !60, !noalias !62
  %i.bs = shufflevector <2 x i64> %i.br, <2 x i64> %i.a, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 18
  %i.bu = load <2 x i64>, ptr %i.bt, align 2, !tbaa !9, !alias.scope !60, !noalias !62
  %i.bv = shufflevector <2 x i64> %i.bu, <2 x i64> %i.a, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bw = bitcast <32 x i8> %i.ac to <8 x i32>    ; 2 uses
  %i.bx = bitcast <32 x i8> %i.af to <8 x i32>    ; 2 uses
  %i.by = shufflevector <8 x i32> %i.bw, <8 x i32> %i.bx, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.bz = bitcast <8 x i32> %i.by to <32 x i8>    ; 3 uses
  %i.ca = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.bz, <32 x i8> %i.bz)
  %i.cb = bitcast <4 x i64> %i.bs to <32 x i8>
  %i.cc = shufflevector <32 x i8> %i.cb, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cd = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cc, <32 x i8> %i.bz)
  %i.ce = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ca, <32 x i8> %i.cd)
  %i.cf = shufflevector <8 x i32> %i.bw, <8 x i32> %i.bx, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.cg = bitcast <8 x i32> %i.cf to <32 x i8>    ; 3 uses
  %i.ch = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cg, <32 x i8> %i.cg)
  %i.ci = bitcast <4 x i64> %i.bs to <32 x i8>
  %i.cj = shufflevector <32 x i8> %i.ci, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.ck = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cj, <32 x i8> %i.cg)
  %i.cl = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ce, <32 x i8> %i.ch, <32 x i8> %i.ck)
  %i.cm = bitcast <32 x i8> %i.ai to <8 x i32>    ; 2 uses
  %i.cn = bitcast <32 x i8> %i.al to <8 x i32>    ; 2 uses
  %i.co = shufflevector <8 x i32> %i.cm, <8 x i32> %i.cn, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.cp = bitcast <8 x i32> %i.co to <32 x i8>    ; 3 uses
  %i.cq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cp, <32 x i8> %i.cp)
  %i.cr = bitcast <4 x i64> %i.bs to <32 x i8>
  %i.cs = shufflevector <32 x i8> %i.cr, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.ct = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cs, <32 x i8> %i.cp)
  %i.cu = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cl, <32 x i8> %i.cq, <32 x i8> %i.ct)
  %i.cv = shufflevector <8 x i32> %i.cm, <8 x i32> %i.cn, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.cw = bitcast <8 x i32> %i.cv to <32 x i8>    ; 3 uses
  %i.cx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cw, <32 x i8> %i.cw)
  %i.cy = bitcast <4 x i64> %i.bs to <32 x i8>
  %i.cz = shufflevector <32 x i8> %i.cy, <32 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.da = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cz, <32 x i8> %i.cw)
  %i.db = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cu, <32 x i8> %i.cx, <32 x i8> %i.da)
  %i.dc = bitcast <32 x i8> %i.aq to <8 x i32>    ; 2 uses
  %i.dd = bitcast <32 x i8> %i.av to <8 x i32>    ; 2 uses
  %i.de = shufflevector <8 x i32> %i.dc, <8 x i32> %i.dd, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.df = bitcast <8 x i32> %i.de to <32 x i8>    ; 3 uses
  %i.dg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.df, <32 x i8> %i.df)
  %i.dh = bitcast <4 x i64> %i.bv to <32 x i8>
  %i.di = shufflevector <32 x i8> %i.dh, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dj = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.di, <32 x i8> %i.df)
  %i.dk = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.db, <32 x i8> %i.dg, <32 x i8> %i.dj)
  %i.dl = shufflevector <8 x i32> %i.dc, <8 x i32> %i.dd, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.dm = bitcast <8 x i32> %i.dl to <32 x i8>    ; 3 uses
  %i.dn = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.dm, <32 x i8> %i.dm)
  %i.do = bitcast <4 x i64> %i.bv to <32 x i8>
  %i.dp = shufflevector <32 x i8> %i.do, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.dq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.dp, <32 x i8> %i.dm)
  %i.dr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.dk, <32 x i8> %i.dn, <32 x i8> %i.dq)
  %i.ds = bitcast <32 x i8> %i.ba to <8 x i32>    ; 2 uses
  %i.dt = bitcast <32 x i8> %i.bf to <8 x i32>    ; 2 uses
  %i.du = shufflevector <8 x i32> %i.ds, <8 x i32> %i.dt, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.dv = bitcast <8 x i32> %i.du to <32 x i8>    ; 3 uses
  %i.dw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.dv, <32 x i8> %i.dv)
  %i.dx = bitcast <4 x i64> %i.bv to <32 x i8>
  %i.dy = shufflevector <32 x i8> %i.dx, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.dz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.dy, <32 x i8> %i.dv)
  %i.ea = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.dr, <32 x i8> %i.dw, <32 x i8> %i.dz)
  %i.eb = shufflevector <8 x i32> %i.ds, <8 x i32> %i.dt, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.ec = bitcast <8 x i32> %i.eb to <32 x i8>    ; 3 uses
  %i.ed = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ec, <32 x i8> %i.ec)
  %i.ee = bitcast <4 x i64> %i.bv to <32 x i8>
  %i.ef = shufflevector <32 x i8> %i.ee, <32 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.eg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ef, <32 x i8> %i.ec)
  %i.eh = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ea, <32 x i8> %i.ed, <32 x i8> %i.eg)
  %i.ei = sitofp <8 x i32> %i.eh to <8 x float>
  %i.ej = fmul <8 x float> %i.bp, %i.bi
  %i.ek = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ei, <8 x float> %i.ej, <8 x float> %.096100.us.us.i) ; 2 uses
  %i.el = add nuw nsw i64 %.09799.us.us.i, 1      ; 2 uses
  %exitcond109.not.i = icmp eq i64 %i.el, %i.c
  br i1 %exitcond109.not.i, label %._crit_edge.us.us.i, label %bb.b, !llvm.loop !54

._crit_edge.us.us.i:                              ; preds = %bb.b
  %i.em = shufflevector <8 x float> %i.ek, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %.idx.us.us.i = shl nuw nsw i64 %.095101.us.us.i, 5
  %i.en = getelementptr i8, ptr %i.o, i64 %.idx.us.us.i
  store <8 x float> %i.em, ptr %i.en, align 1, !tbaa !9, !alias.scope !58, !noalias !64
  %i.eo = add nuw nsw i64 %.095101.us.us.i, 1     ; 2 uses
  %exitcond110.not.i = icmp eq i64 %i.eo, %i.g
  br i1 %exitcond110.not.i, label %._crit_edge104.split.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !55

._crit_edge104.split.us.us.i:                     ; preds = %._crit_edge.us.us.i
  %i.ep = add nuw nsw i64 %.0105.us.i, 1          ; 2 uses
  %exitcond111.not.i = icmp eq i64 %i.ep, %i.d
  br i1 %exitcond111.not.i, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit, label %.lr.ph103.us.i, !llvm.loop !56

.lr.ph103.i:                                      ; preds = %.lr.ph103.i, %.lr.ph103.preheader.i.new
  %.0105.i = phi i64 [ 0, %.lr.ph103.preheader.i.new ], [ %i.fn, %.lr.ph103.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph103.preheader.i.new ], [ %niter.next.7, %.lr.ph103.i ]
  %i.eq = mul nuw nsw i64 %.0105.i, %i.d
  %i.er = getelementptr [4 x i8], ptr %1, i64 %i.eq
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.er, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !58, !noalias !64
  %i.es = or disjoint i64 %.0105.i, 1
  %i.et = mul nuw nsw i64 %i.es, %i.d
  %i.eu = getelementptr [4 x i8], ptr %1, i64 %i.et
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.eu, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !58, !noalias !64
  %i.ev = or disjoint i64 %.0105.i, 2
  %i.ew = mul nuw nsw i64 %i.ev, %i.d
  %i.ex = getelementptr [4 x i8], ptr %1, i64 %i.ew
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ex, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !58, !noalias !64
  %i.ey = or disjoint i64 %.0105.i, 3
  %i.ez = mul nuw nsw i64 %i.ey, %i.d
  %i.fa = getelementptr [4 x i8], ptr %1, i64 %i.ez
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fa, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !58, !noalias !64
  %i.fb = or disjoint i64 %.0105.i, 4
  %i.fc = mul nuw nsw i64 %i.fb, %i.d
  %i.fd = getelementptr [4 x i8], ptr %1, i64 %i.fc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fd, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !58, !noalias !64
  %i.fe = or disjoint i64 %.0105.i, 5
  %i.ff = mul nuw nsw i64 %i.fe, %i.d
  %i.fg = getelementptr [4 x i8], ptr %1, i64 %i.ff
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fg, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !58, !noalias !64
  %i.fh = or disjoint i64 %.0105.i, 6
  %i.fi = mul nuw nsw i64 %i.fh, %i.d
  %i.fj = getelementptr [4 x i8], ptr %1, i64 %i.fi
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fj, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !58, !noalias !64
  %i.fk = or disjoint i64 %.0105.i, 7
  %i.fl = mul nuw nsw i64 %i.fk, %i.d
  %i.fm = getelementptr [4 x i8], ptr %1, i64 %i.fl
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fm, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !58, !noalias !64
  %i.fn = add nuw nsw i64 %.0105.i, 8             ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit.loopexit20.unr-lcssa, label %.lr.ph103.i, !llvm.loop !56

_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit.loopexit20.unr-lcssa: ; preds = %.lr.ph103.i
  %i.fo = and i32 %5, 7
  %lcmp.mod.not = icmp eq i32 %i.fo, 0
  br i1 %lcmp.mod.not, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit, label %.lr.ph103.i.epil.preheader

.lr.ph103.i.epil.preheader:                       ; preds = %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit.loopexit20.unr-lcssa, %.lr.ph103.preheader.i
  %.0105.i.epil.init = phi i64 [ 0, %.lr.ph103.preheader.i ], [ %i.fn, %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit.loopexit20.unr-lcssa ]
  %i.fp = and i32 %5, 7
  %lcmp.mod21 = icmp ne i32 %i.fp, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph103.i.epil

.lr.ph103.i.epil:                                 ; preds = %.lr.ph103.i.epil, %.lr.ph103.i.epil.preheader
  %.0105.i.epil = phi i64 [ %i.fs, %.lr.ph103.i.epil ], [ %.0105.i.epil.init, %.lr.ph103.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph103.i.epil ], [ 0, %.lr.ph103.i.epil.preheader ]
  %i.fq = mul nuw nsw i64 %.0105.i.epil, %i.d
  %i.fr = getelementptr [4 x i8], ptr %1, i64 %i.fq
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fr, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !58, !noalias !64
  %i.fs = add nuw nsw i64 %.0105.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit, label %.lr.ph103.i.epil, !llvm.loop !57

_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit: ; preds = %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit.loopexit20.unr-lcssa, %.lr.ph103.i.epil, %._crit_edge104.split.us.us.i, %bb.a, %.lr.ph.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @ggml_gemv_mxfp4_8x8_q8_0(i32 noundef %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = freeze <2 x i64> poison                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.b = sdiv i32 %0, 32
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = sext i32 %5 to i64                       ; 13 uses
  %i.e = icmp sgt i32 %5, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = sdiv i32 %6, 8
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp sgt i32 %6, 7
  br i1 %i.h, label %.lr.ph.split.i, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.i = icmp sgt i32 %0, 31
  br i1 %i.i, label %.lr.ph117.us.i, label %.lr.ph117.preheader.i

.lr.ph117.preheader.i:                            ; preds = %.lr.ph.split.i
  %i.j = shl nuw nsw i64 %i.g, 5                  ; 9 uses
  %xtraiter = and i64 %i.d, 7
  %i.k = icmp ult i32 %5, 8
  br i1 %i.k, label %.lr.ph117.i.epil.preheader, label %.lr.ph117.preheader.i.new

.lr.ph117.preheader.i.new:                        ; preds = %.lr.ph117.preheader.i
  %unroll_iter = and i64 %i.d, 2147483640
  br label %.lr.ph117.i

.lr.ph117.us.i:                                   ; preds = %.lr.ph.split.i, %._crit_edge118.split.us.us.i
  %.0119.us.i = phi i64 [ %i.er, %._crit_edge118.split.us.us.i ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %i.l = mul nuw nsw i64 %.0119.us.i, %i.c
  %i.m = getelementptr inbounds nuw [34 x i8], ptr %4, i64 %i.l
  %i.n = mul nuw nsw i64 %.0119.us.i, %i.d
  %i.o = getelementptr [4 x i8], ptr %1, i64 %i.n
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph117.us.i
  %.0109115.us.us.i = phi i64 [ 0, %.lr.ph117.us.i ], [ %i.eq, %._crit_edge.us.us.i ] ; 3 uses
  %i.p = mul nuw nsw i64 %.0109115.us.us.i, %i.c
  %i.q = getelementptr inbounds nuw [136 x i8], ptr %3, i64 %i.p
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us.i
  %.0110114.us.us.i = phi <8 x float> [ zeroinitializer, %.lr.ph.us.us.i ], [ %i.em, %bb.b ]
  %.0111113.us.us.i = phi i64 [ 0, %.lr.ph.us.us.i ], [ %i.en, %bb.b ] ; 3 uses
  %i.r = getelementptr inbounds nuw [136 x i8], ptr %i.q, i64 %.0111113.us.us.i ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load <4 x i64>, ptr %i.s, align 1, !tbaa !9, !alias.scope !74, !noalias !76 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.v = load <4 x i64>, ptr %i.u, align 1, !tbaa !9, !alias.scope !74, !noalias !76 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.x = load <4 x i64>, ptr %i.w, align 1, !tbaa !9, !alias.scope !74, !noalias !76 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.z = load <4 x i64>, ptr %i.y, align 1, !tbaa !9, !alias.scope !74, !noalias !76 ; 2 uses
  %i.aa = bitcast <4 x i64> %i.t to <32 x i8>
  %i.ab = and <32 x i8> %i.aa, splat (i8 15)
  %i.ac = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.ab)
  %i.ad = bitcast <4 x i64> %i.v to <32 x i8>
  %i.ae = and <32 x i8> %i.ad, splat (i8 15)
  %i.af = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.ae)
  %i.ag = bitcast <4 x i64> %i.x to <32 x i8>
  %i.ah = and <32 x i8> %i.ag, splat (i8 15)
  %i.ai = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.ah)
  %i.aj = bitcast <4 x i64> %i.z to <32 x i8>
  %i.ak = and <32 x i8> %i.aj, splat (i8 15)
  %i.al = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.ak)
  %i.am = bitcast <4 x i64> %i.t to <16 x i16>
  %i.an = lshr <16 x i16> %i.am, splat (i16 4)
  %i.ao = bitcast <16 x i16> %i.an to <32 x i8>
  %i.ap = and <32 x i8> %i.ao, splat (i8 15)
  %i.aq = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.ap)
  %i.ar = bitcast <4 x i64> %i.v to <16 x i16>
  %i.as = lshr <16 x i16> %i.ar, splat (i16 4)
  %i.at = bitcast <16 x i16> %i.as to <32 x i8>
  %i.au = and <32 x i8> %i.at, splat (i8 15)
  %i.av = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.au)
  %i.aw = bitcast <4 x i64> %i.x to <16 x i16>
  %i.ax = lshr <16 x i16> %i.aw, splat (i16 4)
  %i.ay = bitcast <16 x i16> %i.ax to <32 x i8>
  %i.az = and <32 x i8> %i.ay, splat (i8 15)
  %i.ba = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.az)
  %i.bb = bitcast <4 x i64> %i.z to <16 x i16>
  %i.bc = lshr <16 x i16> %i.bb, splat (i16 4)
  %i.bd = bitcast <16 x i16> %i.bc to <32 x i8>
  %i.be = and <32 x i8> %i.bd, splat (i8 15)
  %i.bf = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.be)
  %i.bg = load <8 x i8>, ptr %i.r, align 1, !tbaa !9, !alias.scope !74, !noalias !76
  %i.bh = zext <8 x i8> %i.bg to <8 x i64>
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_e8m0_half, <8 x i64> %i.bh
  %i.bj = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.bi, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !noalias !77
  %i.bk = shufflevector <8 x float> %i.bj, <8 x float> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bl = getelementptr inbounds nuw [34 x i8], ptr %i.m, i64 %.0111113.us.us.i ; 3 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !15, !alias.scope !75, !noalias !78
  %i.bn = zext i16 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !13, !noalias !77
  %i.bq = insertelement <8 x float> poison, float %i.bp, i64 0
  %i.br = shufflevector <8 x float> %i.bq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bt = load <2 x i64>, ptr %i.bs, align 2, !tbaa !9, !alias.scope !75, !noalias !78
  %i.bu = shufflevector <2 x i64> %i.bt, <2 x i64> %i.a, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 18
  %i.bw = load <2 x i64>, ptr %i.bv, align 2, !tbaa !9, !alias.scope !75, !noalias !78
  %i.bx = shufflevector <2 x i64> %i.bw, <2 x i64> %i.a, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.by = bitcast <32 x i8> %i.ac to <8 x i32>    ; 2 uses
  %i.bz = bitcast <32 x i8> %i.af to <8 x i32>    ; 2 uses
  %i.ca = shufflevector <8 x i32> %i.by, <8 x i32> %i.bz, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.cb = bitcast <8 x i32> %i.ca to <32 x i8>    ; 3 uses
  %i.cc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cb, <32 x i8> %i.cb)
  %i.cd = bitcast <4 x i64> %i.bu to <32 x i8>
  %i.ce = shufflevector <32 x i8> %i.cd, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cf = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ce, <32 x i8> %i.cb)
  %i.cg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.cc, <32 x i8> %i.cf)
  %i.ch = shufflevector <8 x i32> %i.by, <8 x i32> %i.bz, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.ci = bitcast <8 x i32> %i.ch to <32 x i8>    ; 3 uses
  %i.cj = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ci, <32 x i8> %i.ci)
  %i.ck = bitcast <4 x i64> %i.bu to <32 x i8>
  %i.cl = shufflevector <32 x i8> %i.ck, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.cm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cl, <32 x i8> %i.ci)
  %i.cn = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cg, <32 x i8> %i.cj, <32 x i8> %i.cm)
  %i.co = bitcast <32 x i8> %i.ai to <8 x i32>    ; 2 uses
  %i.cp = bitcast <32 x i8> %i.al to <8 x i32>    ; 2 uses
  %i.cq = shufflevector <8 x i32> %i.co, <8 x i32> %i.cp, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.cr = bitcast <8 x i32> %i.cq to <32 x i8>    ; 3 uses
  %i.cs = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cr, <32 x i8> %i.cr)
  %i.ct = bitcast <4 x i64> %i.bu to <32 x i8>
  %i.cu = shufflevector <32 x i8> %i.ct, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.cv = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cu, <32 x i8> %i.cr)
  %i.cw = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cn, <32 x i8> %i.cs, <32 x i8> %i.cv)
  %i.cx = shufflevector <8 x i32> %i.co, <8 x i32> %i.cp, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.cy = bitcast <8 x i32> %i.cx to <32 x i8>    ; 3 uses
  %i.cz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.cy, <32 x i8> %i.cy)
  %i.da = bitcast <4 x i64> %i.bu to <32 x i8>
  %i.db = shufflevector <32 x i8> %i.da, <32 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.dc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.db, <32 x i8> %i.cy)
  %i.dd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cw, <32 x i8> %i.cz, <32 x i8> %i.dc)
  %i.de = bitcast <32 x i8> %i.aq to <8 x i32>    ; 2 uses
  %i.df = bitcast <32 x i8> %i.av to <8 x i32>    ; 2 uses
  %i.dg = shufflevector <8 x i32> %i.de, <8 x i32> %i.df, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.dh = bitcast <8 x i32> %i.dg to <32 x i8>    ; 3 uses
  %i.di = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.dh, <32 x i8> %i.dh)
  %i.dj = bitcast <4 x i64> %i.bx to <32 x i8>
  %i.dk = shufflevector <32 x i8> %i.dj, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dl = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.dk, <32 x i8> %i.dh)
  %i.dm = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.dd, <32 x i8> %i.di, <32 x i8> %i.dl)
  %i.dn = shufflevector <8 x i32> %i.de, <8 x i32> %i.df, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.do = bitcast <8 x i32> %i.dn to <32 x i8>    ; 3 uses
  %i.dp = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.do, <32 x i8> %i.do)
  %i.dq = bitcast <4 x i64> %i.bx to <32 x i8>
  %i.dr = shufflevector <32 x i8> %i.dq, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.ds = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.dr, <32 x i8> %i.do)
  %i.dt = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.dm, <32 x i8> %i.dp, <32 x i8> %i.ds)
  %i.du = bitcast <32 x i8> %i.ba to <8 x i32>    ; 2 uses
  %i.dv = bitcast <32 x i8> %i.bf to <8 x i32>    ; 2 uses
  %i.dw = shufflevector <8 x i32> %i.du, <8 x i32> %i.dv, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.dx = bitcast <8 x i32> %i.dw to <32 x i8>    ; 3 uses
  %i.dy = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.dx, <32 x i8> %i.dx)
  %i.dz = bitcast <4 x i64> %i.bx to <32 x i8>
  %i.ea = shufflevector <32 x i8> %i.dz, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.eb = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ea, <32 x i8> %i.dx)
  %i.ec = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.dt, <32 x i8> %i.dy, <32 x i8> %i.eb)
  %i.ed = shufflevector <8 x i32> %i.du, <8 x i32> %i.dv, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.ee = bitcast <8 x i32> %i.ed to <32 x i8>    ; 3 uses
  %i.ef = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ee, <32 x i8> %i.ee)
  %i.eg = bitcast <4 x i64> %i.bx to <32 x i8>
  %i.eh = shufflevector <32 x i8> %i.eg, <32 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.ei = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.eh, <32 x i8> %i.ee)
  %i.ej = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ec, <32 x i8> %i.ef, <32 x i8> %i.ei)
  %i.ek = sitofp <8 x i32> %i.ej to <8 x float>
  %i.el = fmul <8 x float> %i.br, %i.bk
  %i.em = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ek, <8 x float> %i.el, <8 x float> %.0110114.us.us.i) ; 2 uses
  %i.en = add nuw nsw i64 %.0111113.us.us.i, 1    ; 2 uses
  %exitcond123.not.i = icmp eq i64 %i.en, %i.c
  br i1 %exitcond123.not.i, label %._crit_edge.us.us.i, label %bb.b, !llvm.loop !69

._crit_edge.us.us.i:                              ; preds = %bb.b
  %i.eo = shufflevector <8 x float> %i.em, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %.idx.us.us.i = shl nuw nsw i64 %.0109115.us.us.i, 5
  %i.ep = getelementptr i8, ptr %i.o, i64 %.idx.us.us.i
  store <8 x float> %i.eo, ptr %i.ep, align 1, !tbaa !9, !alias.scope !73, !noalias !79
  %i.eq = add nuw nsw i64 %.0109115.us.us.i, 1    ; 2 uses
  %exitcond124.not.i = icmp eq i64 %i.eq, %i.g
  br i1 %exitcond124.not.i, label %._crit_edge118.split.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !70

._crit_edge118.split.us.us.i:                     ; preds = %._crit_edge.us.us.i
  %i.er = add nuw nsw i64 %.0119.us.i, 1          ; 2 uses
  %exitcond125.not.i = icmp eq i64 %i.er, %i.d
  br i1 %exitcond125.not.i, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit, label %.lr.ph117.us.i, !llvm.loop !71

.lr.ph117.i:                                      ; preds = %.lr.ph117.i, %.lr.ph117.preheader.i.new
  %.0119.i = phi i64 [ 0, %.lr.ph117.preheader.i.new ], [ %i.fp, %.lr.ph117.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph117.preheader.i.new ], [ %niter.next.7, %.lr.ph117.i ]
  %i.es = mul nuw nsw i64 %.0119.i, %i.d
  %i.et = getelementptr [4 x i8], ptr %1, i64 %i.es
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.et, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !73, !noalias !79
  %i.eu = or disjoint i64 %.0119.i, 1
  %i.ev = mul nuw nsw i64 %i.eu, %i.d
  %i.ew = getelementptr [4 x i8], ptr %1, i64 %i.ev
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ew, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !73, !noalias !79
  %i.ex = or disjoint i64 %.0119.i, 2
  %i.ey = mul nuw nsw i64 %i.ex, %i.d
  %i.ez = getelementptr [4 x i8], ptr %1, i64 %i.ey
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ez, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !73, !noalias !79
  %i.fa = or disjoint i64 %.0119.i, 3
  %i.fb = mul nuw nsw i64 %i.fa, %i.d
  %i.fc = getelementptr [4 x i8], ptr %1, i64 %i.fb
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fc, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !73, !noalias !79
  %i.fd = or disjoint i64 %.0119.i, 4
  %i.fe = mul nuw nsw i64 %i.fd, %i.d
  %i.ff = getelementptr [4 x i8], ptr %1, i64 %i.fe
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ff, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !73, !noalias !79
  %i.fg = or disjoint i64 %.0119.i, 5
  %i.fh = mul nuw nsw i64 %i.fg, %i.d
  %i.fi = getelementptr [4 x i8], ptr %1, i64 %i.fh
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fi, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !73, !noalias !79
  %i.fj = or disjoint i64 %.0119.i, 6
  %i.fk = mul nuw nsw i64 %i.fj, %i.d
  %i.fl = getelementptr [4 x i8], ptr %1, i64 %i.fk
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fl, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !73, !noalias !79
  %i.fm = or disjoint i64 %.0119.i, 7
  %i.fn = mul nuw nsw i64 %i.fm, %i.d
  %i.fo = getelementptr [4 x i8], ptr %1, i64 %i.fn
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fo, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !73, !noalias !79
  %i.fp = add nuw nsw i64 %.0119.i, 8             ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit.loopexit20.unr-lcssa, label %.lr.ph117.i, !llvm.loop !71

_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit.loopexit20.unr-lcssa: ; preds = %.lr.ph117.i
  %i.fq = and i32 %5, 7
  %lcmp.mod.not = icmp eq i32 %i.fq, 0
  br i1 %lcmp.mod.not, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit, label %.lr.ph117.i.epil.preheader

.lr.ph117.i.epil.preheader:                       ; preds = %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit.loopexit20.unr-lcssa, %.lr.ph117.preheader.i
  %.0119.i.epil.init = phi i64 [ 0, %.lr.ph117.preheader.i ], [ %i.fp, %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit.loopexit20.unr-lcssa ]
  %i.fr = and i32 %5, 7
  %lcmp.mod21 = icmp ne i32 %i.fr, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph117.i.epil

.lr.ph117.i.epil:                                 ; preds = %.lr.ph117.i.epil, %.lr.ph117.i.epil.preheader
  %.0119.i.epil = phi i64 [ %i.fu, %.lr.ph117.i.epil ], [ %.0119.i.epil.init, %.lr.ph117.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph117.i.epil ], [ 0, %.lr.ph117.i.epil.preheader ]
  %i.fs = mul nuw nsw i64 %.0119.i.epil, %i.d
  %i.ft = getelementptr [4 x i8], ptr %1, i64 %i.fs
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ft, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9, !alias.scope !73, !noalias !79
  %i.fu = add nuw nsw i64 %.0119.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit, label %.lr.ph117.i.epil, !llvm.loop !72

_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit: ; preds = %_ZL28gemv_q4_b32_8x8_q8_0_lut_avxI13block_mxfp4x8EviPfmPKvS3_iiDv4_x.exit.loopexit20.unr-lcssa, %.lr.ph117.i.epil, %._crit_edge118.split.us.us.i, %bb.a, %.lr.ph.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ggml_gemv_q2_K_8x8_q8_K(i32 noundef %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %0, 256
  %i.b = freeze <2 x i64> poison                  ; 9 uses
  %i.c = sext i32 %i.a to i64                     ; 3 uses
  %i.d = sext i32 %5 to i64                       ; 13 uses
  %i.e = icmp sgt i32 %5, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %bb.a
  %i.f = sdiv i32 %6, 8
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp sgt i32 %6, 7
  br i1 %i.h, label %.lr.ph.split, label %._crit_edge.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.i = icmp sgt i32 %0, 255
  br i1 %i.i, label %.lr.ph365.us, label %.lr.ph365.preheader

.lr.ph365.preheader:                              ; preds = %.lr.ph.split
  %i.j = shl nuw nsw i64 %i.g, 5                  ; 9 uses
  %xtraiter = and i64 %i.d, 7
  %i.k = icmp ult i32 %5, 8
  br i1 %i.k, label %.lr.ph365.epil.preheader, label %.lr.ph365.preheader.new

.lr.ph365.preheader.new:                          ; preds = %.lr.ph365.preheader
  %unroll_iter = and i64 %i.d, 2147483640
  br label %.lr.ph365

.lr.ph365.us:                                     ; preds = %.lr.ph.split, %._crit_edge366.split.us.us
  %.0367.us = phi i64 [ %i.rg, %._crit_edge366.split.us.us ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.l = mul nuw nsw i64 %.0367.us, %i.c
  %i.m = getelementptr inbounds nuw [292 x i8], ptr %4, i64 %i.l
  %i.n = mul nuw nsw i64 %.0367.us, %i.d
  %i.o = getelementptr [4 x i8], ptr %1, i64 %i.n
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph365.us
  %.0349363.us.us = phi i64 [ 0, %.lr.ph365.us ], [ %i.rf, %._crit_edge.us.us ] ; 3 uses
  %i.p = mul nuw nsw i64 %.0349363.us.us, %i.c
  %i.q = getelementptr inbounds nuw [672 x i8], ptr %3, i64 %i.p
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.us.us
  %.0350361.us.us = phi <8 x float> [ zeroinitializer, %.lr.ph.us.us ], [ %i.qx, %bb.d ]
  %.0351360.us.us = phi <8 x float> [ zeroinitializer, %.lr.ph.us.us ], [ %i.ra, %bb.d ]
  %.0352359.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %i.rb, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw [292 x i8], ptr %i.m, i64 %.0352359.us.us ; 10 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !18
  %i.t = getelementptr inbounds nuw [672 x i8], ptr %i.q, i64 %.0352359.us.us ; 14 uses
  %i.u = load <8 x half>, ptr %i.t, align 1, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load <8 x half>, ptr %i.v, align 1, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 320
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 352
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 384
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 68
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 84
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 100
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 116
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 260
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.as = phi i1 [ false, %bb.c ], [ true, %bb.b ]
  %indvars.iv = phi i64 [ 1, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.at = phi <8 x i32> [ %i.ql, %bb.c ], [ zeroinitializer, %bb.b ]
  %i.au = phi <8 x i32> [ %i.qp, %bb.c ], [ zeroinitializer, %bb.b ]
  %i.av = shl nuw nsw i64 %indvars.iv, 8          ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.av
  %i.ax = load <4 x i64>, ptr %i.aw, align 1, !tbaa !9 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.av
  %i.az = load <4 x i64>, ptr %i.ay, align 1, !tbaa !9 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.av
  %i.bb = load <4 x i64>, ptr %i.ba, align 1, !tbaa !9 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.av
  %i.bd = load <4 x i64>, ptr %i.bc, align 1, !tbaa !9 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.av
  %i.bf = load <4 x i64>, ptr %i.be, align 1, !tbaa !9 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.av
  %i.bh = load <4 x i64>, ptr %i.bg, align 1, !tbaa !9 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.av
  %i.bj = load <4 x i64>, ptr %i.bi, align 1, !tbaa !9 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.av
  %i.bl = load <4 x i64>, ptr %i.bk, align 1, !tbaa !9 ; 2 uses
  %i.bm = bitcast <4 x i64> %i.ax to <16 x i16>   ; 3 uses
  %i.bn = lshr <16 x i16> %i.bm, splat (i16 2)
  %i.bo = lshr <16 x i16> %i.bm, splat (i16 4)
  %i.bp = lshr <16 x i16> %i.bm, splat (i16 6)
  %i.bq = bitcast <4 x i64> %i.az to <16 x i16>   ; 3 uses
  %i.br = lshr <16 x i16> %i.bq, splat (i16 2)
  %i.bs = lshr <16 x i16> %i.bq, splat (i16 4)
  %i.bt = lshr <16 x i16> %i.bq, splat (i16 6)
  %i.bu = bitcast <4 x i64> %i.bb to <16 x i16>   ; 3 uses
  %i.bv = lshr <16 x i16> %i.bu, splat (i16 2)
  %i.bw = lshr <16 x i16> %i.bu, splat (i16 4)
  %i.bx = lshr <16 x i16> %i.bu, splat (i16 6)
  %i.by = bitcast <4 x i64> %i.bd to <16 x i16>   ; 3 uses
  %i.bz = lshr <16 x i16> %i.by, splat (i16 2)
  %i.ca = lshr <16 x i16> %i.by, splat (i16 4)
  %i.cb = lshr <16 x i16> %i.by, splat (i16 6)
  %i.cc = bitcast <4 x i64> %i.bf to <16 x i16>   ; 3 uses
  %i.cd = lshr <16 x i16> %i.cc, splat (i16 2)
  %i.ce = lshr <16 x i16> %i.cc, splat (i16 4)
  %i.cf = lshr <16 x i16> %i.cc, splat (i16 6)
  %i.cg = bitcast <4 x i64> %i.bh to <16 x i16>   ; 3 uses
  %i.ch = lshr <16 x i16> %i.cg, splat (i16 2)
  %i.ci = lshr <16 x i16> %i.cg, splat (i16 4)
  %i.cj = lshr <16 x i16> %i.cg, splat (i16 6)
  %i.ck = bitcast <4 x i64> %i.bj to <16 x i16>   ; 3 uses
  %i.cl = lshr <16 x i16> %i.ck, splat (i16 2)
  %i.cm = lshr <16 x i16> %i.ck, splat (i16 4)
  %i.cn = lshr <16 x i16> %i.ck, splat (i16 6)
  %i.co = bitcast <4 x i64> %i.bl to <16 x i16>   ; 3 uses
  %i.cp = lshr <16 x i16> %i.co, splat (i16 2)
  %i.cq = lshr <16 x i16> %i.co, splat (i16 4)
  %i.cr = lshr <16 x i16> %i.co, splat (i16 6)
  %i.cs = shl nuw nsw i64 %indvars.iv, 6          ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.cs
  %i.cu = load <2 x i64>, ptr %i.ct, align 1, !tbaa !9 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.cs
  %i.cw = load <2 x i64>, ptr %i.cv, align 1, !tbaa !9 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.cs
  %i.cy = load <2 x i64>, ptr %i.cx, align 1, !tbaa !9 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.cs
  %i.da = load <2 x i64>, ptr %i.cz, align 1, !tbaa !9 ; 2 uses
  %i.db = bitcast <2 x i64> %i.cu to <8 x i16>
  %i.dc = lshr <8 x i16> %i.db, splat (i16 4)
  %i.dd = bitcast <8 x i16> %i.dc to <16 x i8>
  %i.de = and <16 x i8> %i.dd, splat (i8 15)
  %i.df = zext nneg <16 x i8> %i.de to <16 x i16>
  %i.dg = bitcast <2 x i64> %i.cw to <8 x i16>
  %i.dh = lshr <8 x i16> %i.dg, splat (i16 4)
  %i.di = bitcast <8 x i16> %i.dh to <16 x i8>
  %i.dj = and <16 x i8> %i.di, splat (i8 15)
  %i.dk = zext nneg <16 x i8> %i.dj to <16 x i16>
  %i.dl = bitcast <2 x i64> %i.cy to <8 x i16>
  %i.dm = lshr <8 x i16> %i.dl, splat (i16 4)
  %i.dn = bitcast <8 x i16> %i.dm to <16 x i8>
  %i.do = and <16 x i8> %i.dn, splat (i8 15)
  %i.dp = zext nneg <16 x i8> %i.do to <16 x i16>
  %i.dq = bitcast <2 x i64> %i.da to <8 x i16>
  %i.dr = lshr <8 x i16> %i.dq, splat (i16 4)
  %i.ds = bitcast <8 x i16> %i.dr to <16 x i8>
  %i.dt = and <16 x i8> %i.ds, splat (i8 15)
  %i.du = zext nneg <16 x i8> %i.dt to <16 x i16>
  %i.dv = bitcast <2 x i64> %i.cu to <16 x i8>
  %i.dw = and <16 x i8> %i.dv, splat (i8 15)      ; 2 uses
  %i.dx = shufflevector <16 x i8> %i.dw, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 8, i32 8, i32 2, i32 2, i32 10, i32 10, i32 4, i32 4, i32 12, i32 12, i32 6, i32 6, i32 14, i32 14>
  %i.dy = zext nneg <16 x i8> %i.dx to <16 x i16>
  %i.dz = shufflevector <16 x i8> %i.dw, <16 x i8> poison, <16 x i32> <i32 1, i32 1, i32 9, i32 9, i32 3, i32 3, i32 11, i32 11, i32 5, i32 5, i32 13, i32 13, i32 7, i32 7, i32 15, i32 15>
  %i.ea = zext nneg <16 x i8> %i.dz to <16 x i16>
  %i.eb = bitcast <2 x i64> %i.cw to <16 x i8>
  %i.ec = and <16 x i8> %i.eb, splat (i8 15)      ; 2 uses
  %i.ed = shufflevector <16 x i8> %i.ec, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 8, i32 8, i32 2, i32 2, i32 10, i32 10, i32 4, i32 4, i32 12, i32 12, i32 6, i32 6, i32 14, i32 14>
  %i.ee = zext nneg <16 x i8> %i.ed to <16 x i16>
  %i.ef = shufflevector <16 x i8> %i.ec, <16 x i8> poison, <16 x i32> <i32 1, i32 1, i32 9, i32 9, i32 3, i32 3, i32 11, i32 11, i32 5, i32 5, i32 13, i32 13, i32 7, i32 7, i32 15, i32 15>
  %i.eg = zext nneg <16 x i8> %i.ef to <16 x i16>
  %i.eh = bitcast <2 x i64> %i.cy to <16 x i8>
  %i.ei = and <16 x i8> %i.eh, splat (i8 15)      ; 2 uses
  %i.ej = shufflevector <16 x i8> %i.ei, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 8, i32 8, i32 2, i32 2, i32 10, i32 10, i32 4, i32 4, i32 12, i32 12, i32 6, i32 6, i32 14, i32 14>
  %i.ek = zext nneg <16 x i8> %i.ej to <16 x i16>
  %i.el = shufflevector <16 x i8> %i.ei, <16 x i8> poison, <16 x i32> <i32 1, i32 1, i32 9, i32 9, i32 3, i32 3, i32 11, i32 11, i32 5, i32 5, i32 13, i32 13, i32 7, i32 7, i32 15, i32 15>
  %i.em = zext nneg <16 x i8> %i.el to <16 x i16>
  %i.en = bitcast <2 x i64> %i.da to <16 x i8>
  %i.eo = and <16 x i8> %i.en, splat (i8 15)      ; 2 uses
  %i.ep = shufflevector <16 x i8> %i.eo, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 8, i32 8, i32 2, i32 2, i32 10, i32 10, i32 4, i32 4, i32 12, i32 12, i32 6, i32 6, i32 14, i32 14>
  %i.eq = zext nneg <16 x i8> %i.ep to <16 x i16>
  %i.er = shufflevector <16 x i8> %i.eo, <16 x i8> poison, <16 x i32> <i32 1, i32 1, i32 9, i32 9, i32 3, i32 3, i32 11, i32 11, i32 5, i32 5, i32 13, i32 13, i32 7, i32 7, i32 15, i32 15>
  %i.es = zext nneg <16 x i8> %i.er to <16 x i16>
  %i.et = shl nuw nsw i64 %indvars.iv, 7          ; 8 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.et
  %i.ev = load <2 x i64>, ptr %i.eu, align 1, !tbaa !9
  %i.ew = shufflevector <2 x i64> %i.ev, <2 x i64> %i.b, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.et
  %i.ey = load <2 x i64>, ptr %i.ex, align 1, !tbaa !9
  %i.ez = shufflevector <2 x i64> %i.ey, <2 x i64> %i.b, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 4 uses
end_hunk_0
begin_hunk_1_@ggml_gemv_q2_K_8x8_q8_K:bb.a
  %i.kx = shufflevector <32 x i8> %i.kw, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ky = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.kv, <32 x i8> %i.kx)
  %i.kz = shufflevector <8 x i32> %i.kr, <8 x i32> %i.kt, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.la = bitcast <8 x i32> %i.kz to <32 x i8>
  %i.lb = bitcast <4 x i64> %i.fi to <32 x i8>
  %i.lc = shufflevector <32 x i8> %i.lb, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.ld = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.la, <32 x i8> %i.lc)
  %i.le = add <16 x i16> %i.ld, %i.ky
  %i.lf = bitcast <16 x i16> %i.bw to <8 x i32>
  %i.lg = and <8 x i32> %i.lf, splat (i32 50529027) ; 2 uses
  %i.lh = bitcast <16 x i16> %i.ca to <8 x i32>
  %i.li = and <8 x i32> %i.lh, splat (i32 50529027) ; 2 uses
  %i.lj = shufflevector <8 x i32> %i.lg, <8 x i32> %i.li, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.lk = bitcast <8 x i32> %i.lj to <32 x i8>
  %i.ll = bitcast <4 x i64> %i.fi to <32 x i8>
  %i.lm = shufflevector <32 x i8> %i.ll, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.ln = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.lk, <32 x i8> %i.lm)
  %i.lo = add <16 x i16> %i.le, %i.ln
  %i.lp = shufflevector <8 x i32> %i.lg, <8 x i32> %i.li, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.lq = bitcast <8 x i32> %i.lp to <32 x i8>
  %i.lr = bitcast <4 x i64> %i.fi to <32 x i8>
  %i.ls = shufflevector <32 x i8> %i.lr, <32 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.lt = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.lq, <32 x i8> %i.ls)
  %i.lu = add <16 x i16> %i.lo, %i.lt
  %i.lv = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.lu, <16 x i16> %i.ek)
  %i.lw = bitcast <16 x i16> %i.ce to <8 x i32>
  %i.lx = and <8 x i32> %i.lw, splat (i32 50529027) ; 2 uses
  %i.ly = bitcast <16 x i16> %i.ci to <8 x i32>
  %i.lz = and <8 x i32> %i.ly, splat (i32 50529027) ; 2 uses
  %i.ma = shufflevector <8 x i32> %i.lx, <8 x i32> %i.lz, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.mb = bitcast <8 x i32> %i.ma to <32 x i8>
  %i.mc = bitcast <4 x i64> %i.fl to <32 x i8>
  %i.md = shufflevector <32 x i8> %i.mc, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.me = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.mb, <32 x i8> %i.md)
  %i.mf = shufflevector <8 x i32> %i.lx, <8 x i32> %i.lz, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.mg = bitcast <8 x i32> %i.mf to <32 x i8>
  %i.mh = bitcast <4 x i64> %i.fl to <32 x i8>
  %i.mi = shufflevector <32 x i8> %i.mh, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.mj = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.mg, <32 x i8> %i.mi)
  %i.mk = add <16 x i16> %i.mj, %i.me
  %i.ml = bitcast <16 x i16> %i.cm to <8 x i32>
  %i.mm = and <8 x i32> %i.ml, splat (i32 50529027) ; 2 uses
  %i.mn = bitcast <16 x i16> %i.cq to <8 x i32>
  %i.mo = and <8 x i32> %i.mn, splat (i32 50529027) ; 2 uses
  %i.mp = shufflevector <8 x i32> %i.mm, <8 x i32> %i.mo, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.mq = bitcast <8 x i32> %i.mp to <32 x i8>
  %i.mr = bitcast <4 x i64> %i.fl to <32 x i8>
  %i.ms = shufflevector <32 x i8> %i.mr, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.mt = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.mq, <32 x i8> %i.ms)
  %i.mu = add <16 x i16> %i.mk, %i.mt
  %i.mv = shufflevector <8 x i32> %i.mm, <8 x i32> %i.mo, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.mw = bitcast <8 x i32> %i.mv to <32 x i8>
  %i.mx = bitcast <4 x i64> %i.fl to <32 x i8>
  %i.my = shufflevector <32 x i8> %i.mx, <32 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.mz = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.mw, <32 x i8> %i.my)
  %i.na = add <16 x i16> %i.mu, %i.mz
  %i.nb = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.na, <16 x i16> %i.em)
  %i.nc = bitcast <16 x i16> %i.bp to <8 x i32>
  %i.nd = and <8 x i32> %i.nc, splat (i32 50529027) ; 2 uses
  %i.ne = bitcast <16 x i16> %i.bt to <8 x i32>
  %i.nf = and <8 x i32> %i.ne, splat (i32 50529027) ; 2 uses
  %i.ng = shufflevector <8 x i32> %i.nd, <8 x i32> %i.nf, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.nh = bitcast <8 x i32> %i.ng to <32 x i8>
  %i.ni = bitcast <4 x i64> %i.fo to <32 x i8>
  %i.nj = shufflevector <32 x i8> %i.ni, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.nk = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.nh, <32 x i8> %i.nj)
  %i.nl = shufflevector <8 x i32> %i.nd, <8 x i32> %i.nf, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.nm = bitcast <8 x i32> %i.nl to <32 x i8>
  %i.nn = bitcast <4 x i64> %i.fo to <32 x i8>
  %i.no = shufflevector <32 x i8> %i.nn, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.np = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.nm, <32 x i8> %i.no)
  %i.nq = add <16 x i16> %i.np, %i.nk
  %i.nr = bitcast <16 x i16> %i.bx to <8 x i32>
  %i.ns = and <8 x i32> %i.nr, splat (i32 50529027) ; 2 uses
  %i.nt = bitcast <16 x i16> %i.cb to <8 x i32>
  %i.nu = and <8 x i32> %i.nt, splat (i32 50529027) ; 2 uses
  %i.nv = shufflevector <8 x i32> %i.ns, <8 x i32> %i.nu, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.nw = bitcast <8 x i32> %i.nv to <32 x i8>
  %i.nx = bitcast <4 x i64> %i.fo to <32 x i8>
  %i.ny = shufflevector <32 x i8> %i.nx, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.nz = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.nw, <32 x i8> %i.ny)
  %i.oa = add <16 x i16> %i.nq, %i.nz
  %i.ob = shufflevector <8 x i32> %i.ns, <8 x i32> %i.nu, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.oc = bitcast <8 x i32> %i.ob to <32 x i8>
  %i.od = bitcast <4 x i64> %i.fo to <32 x i8>
  %i.oe = shufflevector <32 x i8> %i.od, <32 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.of = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.oc, <32 x i8> %i.oe)
  %i.og = add <16 x i16> %i.oa, %i.of
  %i.oh = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.og, <16 x i16> %i.eq)
  %i.oi = bitcast <16 x i16> %i.cf to <8 x i32>
  %i.oj = and <8 x i32> %i.oi, splat (i32 50529027) ; 2 uses
  %i.ok = bitcast <16 x i16> %i.cj to <8 x i32>
  %i.ol = and <8 x i32> %i.ok, splat (i32 50529027) ; 2 uses
  %i.om = shufflevector <8 x i32> %i.oj, <8 x i32> %i.ol, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.on = bitcast <8 x i32> %i.om to <32 x i8>
  %i.oo = bitcast <4 x i64> %i.fr to <32 x i8>
  %i.op = shufflevector <32 x i8> %i.oo, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.oq = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.on, <32 x i8> %i.op)
  %i.or = shufflevector <8 x i32> %i.oj, <8 x i32> %i.ol, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.os = bitcast <8 x i32> %i.or to <32 x i8>
  %i.ot = bitcast <4 x i64> %i.fr to <32 x i8>
  %i.ou = shufflevector <32 x i8> %i.ot, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.ov = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.os, <32 x i8> %i.ou)
  %i.ow = add <16 x i16> %i.ov, %i.oq
  %i.ox = bitcast <16 x i16> %i.cn to <8 x i32>
  %i.oy = and <8 x i32> %i.ox, splat (i32 50529027) ; 2 uses
  %i.oz = bitcast <16 x i16> %i.cr to <8 x i32>
  %i.pa = and <8 x i32> %i.oz, splat (i32 50529027) ; 2 uses
  %i.pb = shufflevector <8 x i32> %i.oy, <8 x i32> %i.pa, <8 x i32> <i32 0, i32 8, i32 2, i32 10, i32 4, i32 12, i32 6, i32 14>
  %i.pc = bitcast <8 x i32> %i.pb to <32 x i8>
  %i.pd = bitcast <4 x i64> %i.fr to <32 x i8>
  %i.pe = shufflevector <32 x i8> %i.pd, <32 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.pf = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pc, <32 x i8> %i.pe)
  %i.pg = add <16 x i16> %i.ow, %i.pf
  %i.ph = shufflevector <8 x i32> %i.oy, <8 x i32> %i.pa, <8 x i32> <i32 1, i32 9, i32 3, i32 11, i32 5, i32 13, i32 7, i32 15>
  %i.pi = bitcast <8 x i32> %i.ph to <32 x i8>
  %i.pj = bitcast <4 x i64> %i.fr to <32 x i8>
  %i.pk = shufflevector <32 x i8> %i.pj, <32 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.pl = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.pi, <32 x i8> %i.pk)
  %i.pm = add <16 x i16> %i.pg, %i.pl
  %i.pn = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pm, <16 x i16> %i.es)
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.po = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx
  %i.pp = load <2 x i64>, ptr %i.po, align 1, !tbaa !9
  %i.pq = shufflevector <2 x i64> %i.pp, <2 x i64> %i.b, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.pr = bitcast <4 x i64> %i.pq to <8 x i32>    ; 4 uses
  %i.ps = shufflevector <8 x i32> %i.pr, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.pt = bitcast <8 x i32> %i.ps to <16 x i16>
  %i.pu = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pt, <16 x i16> %i.df)
  %i.pv = shufflevector <8 x i32> %i.pr, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.pw = bitcast <8 x i32> %i.pv to <16 x i16>
  %i.px = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pw, <16 x i16> %i.dk)
  %i.py = shufflevector <8 x i32> %i.pr, <8 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.pz = bitcast <8 x i32> %i.py to <16 x i16>
  %i.qa = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.pz, <16 x i16> %i.dp)
  %i.qb = shufflevector <8 x i32> %i.pr, <8 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.qc = bitcast <8 x i32> %i.qb to <16 x i16>
  %i.qd = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.qc, <16 x i16> %i.du)
  %i.qe = add <8 x i32> %i.gx, %i.at
  %i.qf = add <8 x i32> %i.qe, %i.id
  %i.qg = add <8 x i32> %i.qf, %i.jj
  %i.qh = add <8 x i32> %i.qg, %i.kp
  %i.qi = add <8 x i32> %i.qh, %i.lv
  %i.qj = add <8 x i32> %i.qi, %i.nb
  %i.qk = add <8 x i32> %i.qj, %i.oh
  %i.ql = add <8 x i32> %i.qk, %i.pn              ; 2 uses
  %i.qm = add <8 x i32> %i.pu, %i.au
  %i.qn = add <8 x i32> %i.qm, %i.px
  %i.qo = add <8 x i32> %i.qn, %i.qa
  %i.qp = add <8 x i32> %i.qo, %i.qd              ; 2 uses
  br i1 %i.as, label %bb.c, label %bb.d, !llvm.loop !80

bb.d:                                             ; preds = %bb.c
  %i.qq = insertelement <8 x float> poison, float %i.s, i64 0
  %i.qr = shufflevector <8 x float> %i.qq, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.qs = shufflevector <8 x half> %i.u, <8 x half> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.qt = fpext <8 x half> %i.qs to <8 x float>
  %i.qu = fpext <8 x half> %i.w to <8 x float>
  %i.qv = sitofp <8 x i32> %i.ql to <8 x float>
  %i.qw = fmul <8 x float> %i.qr, %i.qt
  %i.qx = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.qv, <8 x float> %i.qw, <8 x float> %.0350361.us.us) ; 2 uses
  %i.qy = sitofp <8 x i32> %i.qp to <8 x float>
  %i.qz = fmul <8 x float> %i.qr, %i.qu
  %i.ra = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.qy, <8 x float> %i.qz, <8 x float> %.0351360.us.us) ; 2 uses
  %i.rb = add nuw nsw i64 %.0352359.us.us, 1      ; 2 uses
  %exitcond375.not = icmp eq i64 %i.rb, %i.c
  br i1 %exitcond375.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !81

._crit_edge.us.us:                                ; preds = %bb.d
  %i.rc = shufflevector <8 x float> %i.qx, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %.idx.us.us = shl nuw nsw i64 %.0349363.us.us, 5
  %i.rd = getelementptr i8, ptr %i.o, i64 %.idx.us.us
  %i.re = fsub <8 x float> %i.rc, %i.ra
  store <8 x float> %i.re, ptr %i.rd, align 1, !tbaa !9
  %i.rf = add nuw nsw i64 %.0349363.us.us, 1      ; 2 uses
  %exitcond376.not = icmp eq i64 %i.rf, %i.g
  br i1 %exitcond376.not, label %._crit_edge366.split.us.us, label %.lr.ph.us.us, !llvm.loop !82

._crit_edge366.split.us.us:                       ; preds = %._crit_edge.us.us
  %i.rg = add nuw nsw i64 %.0367.us, 1            ; 2 uses
  %exitcond377.not = icmp eq i64 %i.rg, %i.d
  br i1 %exitcond377.not, label %._crit_edge.split, label %.lr.ph365.us, !llvm.loop !83

._crit_edge.split.loopexit430.unr-lcssa:          ; preds = %.lr.ph365
  %i.rh = and i32 %5, 7
  %lcmp.mod.not = icmp eq i32 %i.rh, 0
  br i1 %lcmp.mod.not, label %._crit_edge.split, label %.lr.ph365.epil.preheader

.lr.ph365.epil.preheader:                         ; preds = %._crit_edge.split.loopexit430.unr-lcssa, %.lr.ph365.preheader
  %.0367.epil.init = phi i64 [ 0, %.lr.ph365.preheader ], [ %i.sj, %._crit_edge.split.loopexit430.unr-lcssa ]
  %i.ri = and i32 %5, 7
  %lcmp.mod431 = icmp ne i32 %i.ri, 0
  tail call void @llvm.assume(i1 %lcmp.mod431)
  br label %.lr.ph365.epil

.lr.ph365.epil:                                   ; preds = %.lr.ph365.epil, %.lr.ph365.epil.preheader
  %.0367.epil = phi i64 [ %i.rl, %.lr.ph365.epil ], [ %.0367.epil.init, %.lr.ph365.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph365.epil ], [ 0, %.lr.ph365.epil.preheader ]
  %i.rj = mul nuw nsw i64 %.0367.epil, %i.d
  %i.rk = getelementptr [4 x i8], ptr %1, i64 %i.rj
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rk, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9
  %i.rl = add nuw nsw i64 %.0367.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.split, label %.lr.ph365.epil, !llvm.loop !84

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit430.unr-lcssa, %.lr.ph365.epil, %._crit_edge366.split.us.us, %.lr.ph, %bb.a
  ret void

.lr.ph365:                                        ; preds = %.lr.ph365, %.lr.ph365.preheader.new
  %.0367 = phi i64 [ 0, %.lr.ph365.preheader.new ], [ %i.sj, %.lr.ph365 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph365.preheader.new ], [ %niter.next.7, %.lr.ph365 ]
  %i.rm = mul nuw nsw i64 %.0367, %i.d
  %i.rn = getelementptr [4 x i8], ptr %1, i64 %i.rm
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rn, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9
  %i.ro = or disjoint i64 %.0367, 1
  %i.rp = mul nuw nsw i64 %i.ro, %i.d
  %i.rq = getelementptr [4 x i8], ptr %1, i64 %i.rp
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rq, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9
  %i.rr = or disjoint i64 %.0367, 2
  %i.rs = mul nuw nsw i64 %i.rr, %i.d
  %i.rt = getelementptr [4 x i8], ptr %1, i64 %i.rs
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rt, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9
  %i.ru = or disjoint i64 %.0367, 3
  %i.rv = mul nuw nsw i64 %i.ru, %i.d
  %i.rw = getelementptr [4 x i8], ptr %1, i64 %i.rv
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rw, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9
  %i.rx = or disjoint i64 %.0367, 4
  %i.ry = mul nuw nsw i64 %i.rx, %i.d
  %i.rz = getelementptr [4 x i8], ptr %1, i64 %i.ry
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rz, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9
  %i.sa = or disjoint i64 %.0367, 5
  %i.sb = mul nuw nsw i64 %i.sa, %i.d
  %i.sc = getelementptr [4 x i8], ptr %1, i64 %i.sb
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.sc, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9
  %i.sd = or disjoint i64 %.0367, 6
  %i.se = mul nuw nsw i64 %i.sd, %i.d
  %i.sf = getelementptr [4 x i8], ptr %1, i64 %i.se
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.sf, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9
  %i.sg = or disjoint i64 %.0367, 7
  %i.sh = mul nuw nsw i64 %i.sg, %i.d
  %i.si = getelementptr [4 x i8], ptr %1, i64 %i.sh
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.si, i8 0, i64 range(i64 0, 8589934561) %i.j, i1 false), !tbaa !9
  %i.sj = add nuw nsw i64 %.0367, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.split.loopexit430.unr-lcssa, label %.lr.ph365, !llvm.loop !83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @ggml_gemm_q4_0_8x8_q8_0(i32 noundef %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 7 uses
  %i.b = alloca [16 x <16 x float>], align 64     ; 20 uses
  %i.c = alloca [4 x ptr], align 16               ; 7 uses
  %i.d = alloca [16 x <8 x float>], align 32      ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.e = sdiv i32 %0, 32
  %i.f = sext i32 %i.e to i64                     ; 20 uses
  %i.g = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.h = insertelement <2 x i32> %i.g, i32 %6, i64 1
  %i.i = srem <2 x i32> %i.h, splat (i32 16)      ; 2 uses
  %i.j = extractelement <2 x i32> %i.i, i64 0
  %i.k = sub nsw i32 %5, %i.j                     ; 2 uses
  %i.l = extractelement <2 x i32> %i.i, i64 1     ; 2 uses
  %i.m = sub nsw i32 %6, %i.l                     ; 5 uses
  %i.n = sdiv i32 %i.k, 4
  %i.o = sext i32 %i.n to i64                     ; 5 uses
  %i.p = icmp sgt i32 %i.k, 3
  br i1 %i.p, label %.lr.ph1033.i, label %.preheader1019.i

.lr.ph1033.i:                                     ; preds = %bb.a
  %i.q = sdiv i32 %i.m, 8
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = icmp sgt i32 %i.m, 7
  %i.t = icmp sgt i32 %0, 31
  br i1 %i.s, label %.lr.ph1033.split.us.preheader.i, label %.lr.ph1033.split.i.preheader

.lr.ph1033.split.i.preheader:                     ; preds = %.lr.ph1033.i
  %smax = tail call i64 @llvm.smax.i64(i64 %i.o, i64 4)
  %i.u = add nsw i64 %smax, -1
  %i.v = and i64 %i.u, -4
  %i.w = add nuw nsw i64 %i.v, 4
  br label %.preheader1019.i

.lr.ph1033.split.us.preheader.i:                  ; preds = %.lr.ph1033.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.phi.trans.insert1223.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.phi.trans.insert1225.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.phi.trans.insert1227.i = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %.phi.trans.insert1229.i = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %.phi.trans.insert1231.i = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %.phi.trans.insert1233.i = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %.phi.trans.insert1235.i = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.phi.trans.insert1237.i = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %.phi.trans.insert1239.i = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %.phi.trans.insert1241.i = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %.phi.trans.insert1243.i = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %.phi.trans.insert1245.i = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %.phi.trans.insert1247.i = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %.phi.trans.insert1249.i = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  %i.aa = shl i64 %2, 6
  %i.ab = shl nuw nsw i64 %i.r, 5
  %i.ac = add nsw i64 %i.ab, -32
  %i.ad = and i64 %i.ac, -64
  %i.ae = add nsw i64 %i.ad, 64                   ; 16 uses
  %i.af = shl i64 %2, 2
  %i.ag = shl i64 %2, 3
  %i.ah = mul i64 %2, 12
  %i.ai = shl i64 %2, 4
  %i.aj = mul i64 %2, 20
  %i.ak = mul i64 %2, 24
  %i.al = mul i64 %2, 28
  %i.am = shl i64 %2, 5
  %i.an = mul i64 %2, 36
  %i.ao = mul i64 %2, 40
  %i.ap = mul i64 %2, 44
  %i.aq = mul i64 %2, 48
  %i.ar = mul i64 %2, 52
  %i.as = mul i64 %2, 56
  %i.at = mul i64 %2, 60
  %smax55 = tail call i64 @llvm.smax.i64(i64 %i.o, i64 4)
  %i.au = add nsw i64 %smax55, -1
  %i.av = lshr i64 %i.au, 2
  %i.aw = getelementptr i8, ptr %1, i64 %i.af
  %i.ax = getelementptr i8, ptr %1, i64 %i.ag
  %i.ay = getelementptr i8, ptr %1, i64 %i.ah
  %i.az = getelementptr i8, ptr %1, i64 %i.ai
  %i.ba = getelementptr i8, ptr %1, i64 %i.aj
  %i.bb = getelementptr i8, ptr %1, i64 %i.ak
  %i.bc = getelementptr i8, ptr %1, i64 %i.al
  %i.bd = getelementptr i8, ptr %1, i64 %i.am
  %i.be = getelementptr i8, ptr %1, i64 %i.an
  %i.bf = getelementptr i8, ptr %1, i64 %i.ao
  %i.bg = getelementptr i8, ptr %1, i64 %i.ap
  %i.bh = getelementptr i8, ptr %1, i64 %i.aq
  %i.bi = getelementptr i8, ptr %1, i64 %i.ar
  %i.bj = getelementptr i8, ptr %1, i64 %i.as
  %i.bk = getelementptr i8, ptr %1, i64 %i.at
  br label %.lr.ph1033.split.us.i

.lr.ph1033.split.us.i:                            ; preds = %._crit_edge.us.i, %.lr.ph1033.split.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i ], [ 0, %.lr.ph1033.split.us.preheader.i ] ; 3 uses
  %.09861031.us.i = phi i64 [ %i.nd, %._crit_edge.us.i ], [ 0, %.lr.ph1033.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !108
  %i.bl = mul nsw i64 %.09861031.us.i, %i.f
  %i.bm = getelementptr inbounds [136 x i8], ptr %4, i64 %i.bl ; 2 uses
  store ptr %i.bm, ptr %i.a, align 16, !tbaa !21, !noalias !108
  %i.bn = getelementptr inbounds [136 x i8], ptr %i.bm, i64 %i.f ; 2 uses
  store ptr %i.bn, ptr %i.x, align 8, !tbaa !21, !noalias !108
  %i.bo = getelementptr inbounds [136 x i8], ptr %i.bn, i64 %i.f ; 2 uses
  store ptr %i.bo, ptr %i.y, align 16, !tbaa !21, !noalias !108
  %i.bp = getelementptr inbounds [136 x i8], ptr %i.bo, i64 %i.f
  store ptr %i.bp, ptr %i.z, align 8, !tbaa !21, !noalias !108
  %i.bq = shl nuw nsw i64 %.09861031.us.i, 2      ; 16 uses
  %i.br = mul i64 %i.bq, %2
  %i.bs = or disjoint i64 %i.bq, 1
  %i.bt = mul i64 %i.bs, %2
  %i.bu = or disjoint i64 %i.bq, 2
  %i.bv = mul i64 %i.bu, %2
  %i.bw = or disjoint i64 %i.bq, 3
  %i.bx = mul i64 %i.bw, %2
  %i.by = or disjoint i64 %i.bq, 4
  %i.bz = mul i64 %i.by, %2
  %i.ca = or disjoint i64 %i.bq, 5
  %i.cb = mul i64 %i.ca, %2
  %i.cc = or disjoint i64 %i.bq, 6
  %i.cd = mul i64 %i.cc, %2
  %i.ce = or disjoint i64 %i.bq, 7
  %i.cf = mul i64 %i.ce, %2
  %i.cg = or disjoint i64 %i.bq, 8
  %i.ch = mul i64 %i.cg, %2
  %i.ci = or disjoint i64 %i.bq, 9
  %i.cj = mul i64 %i.ci, %2
  %i.ck = or disjoint i64 %i.bq, 10
  %i.cl = mul i64 %i.ck, %2
  %i.cm = or disjoint i64 %i.bq, 11
  %i.cn = mul i64 %i.cm, %2
  %i.co = or disjoint i64 %i.bq, 12
  %i.cp = mul i64 %i.co, %2
  %i.cq = or disjoint i64 %i.bq, 13
  %i.cr = mul i64 %i.cq, %2
  %i.cs = or disjoint i64 %i.bq, 14
  %i.ct = mul i64 %i.cs, %2
  %i.cu = or disjoint i64 %i.bq, 15
  %i.cv = mul i64 %i.cu, %2
  br i1 %i.t, label %.preheader1021.us.i.us, label %.preheader1021.us.i.preheader

.preheader1021.us.i.preheader:                    ; preds = %.lr.ph1033.split.us.i
  %i.cw = mul i64 %i.aa, %indvar                  ; 16 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.cw
  %scevgep40 = getelementptr i8, ptr %i.aw, i64 %i.cw
  %scevgep41 = getelementptr i8, ptr %i.ax, i64 %i.cw
  %scevgep42 = getelementptr i8, ptr %i.ay, i64 %i.cw
  %scevgep43 = getelementptr i8, ptr %i.az, i64 %i.cw
  %scevgep44 = getelementptr i8, ptr %i.ba, i64 %i.cw
  %scevgep45 = getelementptr i8, ptr %i.bb, i64 %i.cw
  %scevgep46 = getelementptr i8, ptr %i.bc, i64 %i.cw
  %scevgep47 = getelementptr i8, ptr %i.bd, i64 %i.cw
  %scevgep48 = getelementptr i8, ptr %i.be, i64 %i.cw
  %scevgep49 = getelementptr i8, ptr %i.bf, i64 %i.cw
  %scevgep50 = getelementptr i8, ptr %i.bg, i64 %i.cw
  %scevgep51 = getelementptr i8, ptr %i.bh, i64 %i.cw
  %scevgep52 = getelementptr i8, ptr %i.bi, i64 %i.cw
  %scevgep53 = getelementptr i8, ptr %i.bj, i64 %i.cw
  %scevgep54 = getelementptr i8, ptr %i.bk, i64 %i.cw
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep40, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep41, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep42, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep43, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep44, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep45, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep46, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep47, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep48, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep49, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep50, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep51, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep52, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep54, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  br label %._crit_edge.us.i

.preheader1021.us.i.us:                           ; preds = %.lr.ph1033.split.us.i, %.preheader1020.us.loopexit.i.us
  %.09891029.us.i.us = phi i64 [ %i.nb, %.preheader1020.us.loopexit.i.us ], [ 0, %.lr.ph1033.split.us.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false), !tbaa !9, !noalias !108
  %i.cx = mul nuw nsw i64 %.09891029.us.i.us, %i.f
  %i.cy = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.cx
  %i.cz = or disjoint i64 %.09891029.us.i.us, 1
  %i.da = mul nuw nsw i64 %i.cz, %i.f
  %i.db = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.da
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %.preheader1021.us.i.us, %bb.c
  %.09911027.us.i.us = phi i64 [ %i.na, %bb.c ], [ 0, %.preheader1021.us.i.us ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [144 x i8], ptr %i.cy, i64 %.09911027.us.i.us ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load <16 x i32>, ptr %i.dd, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %i.dg = load <16 x i32>, ptr %i.df, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.dh = getelementptr inbounds nuw [144 x i8], ptr %i.db, i64 %.09911027.us.i.us ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load <16 x i32>, ptr %i.di, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  %i.dl = load <16 x i32>, ptr %i.dk, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.dm = shufflevector <16 x i32> %i.de, <16 x i32> %i.dj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dn = shufflevector <16 x i32> %i.de, <16 x i32> %i.dj, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.do = shufflevector <16 x i32> %i.dg, <16 x i32> %i.dl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dp = shufflevector <16 x i32> %i.dg, <16 x i32> %i.dl, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.dq = bitcast <16 x i32> %i.dm to <64 x i8>
  %i.dr = and <64 x i8> %i.dq, splat (i8 15)
  %i.ds = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.dr) ; 2 uses
  %i.dt = bitcast <16 x i32> %i.dn to <64 x i8>
  %i.du = and <64 x i8> %i.dt, splat (i8 15)
  %i.dv = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.du) ; 2 uses
  %i.dw = bitcast <16 x i32> %i.do to <64 x i8>
  %i.dx = and <64 x i8> %i.dw, splat (i8 15)
  %i.dy = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.dx) ; 2 uses
  %i.dz = bitcast <16 x i32> %i.dp to <64 x i8>
  %i.ea = and <64 x i8> %i.dz, splat (i8 15)
  %i.eb = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.ea) ; 2 uses
  %i.ec = bitcast <16 x i32> %i.dm to <32 x i16>
  %i.ed = lshr <32 x i16> %i.ec, splat (i16 4)
  %i.ee = bitcast <32 x i16> %i.ed to <64 x i8>
  %i.ef = and <64 x i8> %i.ee, splat (i8 15)
  %i.eg = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.ef) ; 2 uses
  %i.eh = bitcast <16 x i32> %i.dn to <32 x i16>
  %i.ei = lshr <32 x i16> %i.eh, splat (i16 4)
  %i.ej = bitcast <32 x i16> %i.ei to <64 x i8>
  %i.ek = and <64 x i8> %i.ej, splat (i8 15)
  %i.el = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.ek) ; 2 uses
  %i.em = bitcast <16 x i32> %i.do to <32 x i16>
  %i.en = lshr <32 x i16> %i.em, splat (i16 4)
  %i.eo = bitcast <32 x i16> %i.en to <64 x i8>
  %i.ep = and <64 x i8> %i.eo, splat (i8 15)
  %i.eq = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.ep) ; 2 uses
  %i.er = bitcast <16 x i32> %i.dp to <32 x i16>
  %i.es = lshr <32 x i16> %i.er, splat (i16 4)
  %i.et = bitcast <32 x i16> %i.es to <64 x i8>
  %i.eu = and <64 x i8> %i.et, splat (i8 15)
  %i.ev = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <64 x i8> %i.eu) ; 2 uses
  %i.ew = load <2 x i64>, ptr %i.dh, align 1, !tbaa !9, !alias.scope !106, !noalias !110
  %i.ex = load <2 x i64>, ptr %i.dc, align 1, !tbaa !9, !alias.scope !106, !noalias !110
  %i.ey = shufflevector <2 x i64> %i.ex, <2 x i64> %i.ew, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ez = bitcast <4 x i64> %i.ey to <16 x half>
  %i.fa = fpext <16 x half> %i.ez to <16 x float> ; 4 uses
  %i.fb = shufflevector <64 x i8> %i.eq, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fc = sub <64 x i8> zeroinitializer, %i.fb    ; 2 uses
  %i.fd = shufflevector <64 x i8> %i.eg, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fe = sub <64 x i8> zeroinitializer, %i.fd    ; 2 uses
  %i.ff = shufflevector <64 x i8> %i.dy, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fg = sub <64 x i8> zeroinitializer, %i.ff    ; 2 uses
  %i.fh = shufflevector <64 x i8> %i.ds, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fi = sub <64 x i8> zeroinitializer, %i.fh    ; 2 uses
  %i.fj = shufflevector <64 x i8> %i.ev, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fk = sub <64 x i8> zeroinitializer, %i.fj    ; 2 uses
  %i.fl = shufflevector <64 x i8> %i.el, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fm = sub <64 x i8> zeroinitializer, %i.fl    ; 2 uses
  %i.fn = shufflevector <64 x i8> %i.eb, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fo = sub <64 x i8> zeroinitializer, %i.fn    ; 2 uses
  %i.fp = shufflevector <64 x i8> %i.dv, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fq = sub <64 x i8> zeroinitializer, %i.fp    ; 2 uses
  %i.fr = shufflevector <64 x i8> %i.eq, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fs = sub <64 x i8> zeroinitializer, %i.fr    ; 2 uses
  %i.ft = shufflevector <64 x i8> %i.eg, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fu = sub <64 x i8> zeroinitializer, %i.ft    ; 2 uses
  %i.fv = shufflevector <64 x i8> %i.dy, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fw = sub <64 x i8> zeroinitializer, %i.fv    ; 2 uses
  %i.fx = shufflevector <64 x i8> %i.ds, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fy = sub <64 x i8> zeroinitializer, %i.fx    ; 2 uses
  %i.fz = shufflevector <64 x i8> %i.ev, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.ga = sub <64 x i8> zeroinitializer, %i.fz    ; 2 uses
  %i.gb = shufflevector <64 x i8> %i.el, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.gc = sub <64 x i8> zeroinitializer, %i.gb    ; 2 uses
  %i.gd = shufflevector <64 x i8> %i.eb, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.ge = sub <64 x i8> zeroinitializer, %i.gd    ; 2 uses
  %i.gf = shufflevector <64 x i8> %i.dv, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.gg = sub <64 x i8> zeroinitializer, %i.gf    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.b ], [ 0, %.lr.ph.us.i.us ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !21, !noalias !108
  %i.gj = getelementptr inbounds nuw [136 x i8], ptr %i.gi, i64 %.09911027.us.i.us ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load <8 x i32>, ptr %i.gk, align 1, !tbaa !9, !noalias !111 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  %i.gn = load <8 x i32>, ptr %i.gm, align 1, !tbaa !9, !noalias !111 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 72
  %i.gp = load <8 x i32>, ptr %i.go, align 1, !tbaa !9, !noalias !111 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 104
  %i.gr = load <8 x i32>, ptr %i.gq, align 1, !tbaa !9, !noalias !111 ; 4 uses
  %i.gs = bitcast <8 x i32> %i.gr to <32 x i8>
  %i.gt = shufflevector <32 x i8> %i.gs, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gu = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.gt, i1 false) ; 2 uses
  %i.gv = icmp slt <64 x i8> %i.gt, zeroinitializer ; 2 uses
  %i.gw = select <64 x i1> %i.gv, <64 x i8> %i.fc, <64 x i8> %i.fb
  %i.gx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.gu, <64 x i8> %i.gw)
  %i.gy = bitcast <8 x i32> %i.gp to <32 x i8>
  %i.gz = shufflevector <32 x i8> %i.gy, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ha = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.gz, i1 false) ; 2 uses
  %i.hb = icmp slt <64 x i8> %i.gz, zeroinitializer ; 2 uses
  %i.hc = select <64 x i1> %i.hb, <64 x i8> %i.fe, <64 x i8> %i.fd
  %i.hd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gx, <64 x i8> %i.ha, <64 x i8> %i.hc)
  %i.he = bitcast <8 x i32> %i.gn to <32 x i8>
  %i.hf = shufflevector <32 x i8> %i.he, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.hg = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.hf, i1 false) ; 2 uses
  %i.hh = icmp slt <64 x i8> %i.hf, zeroinitializer ; 2 uses
  %i.hi = select <64 x i1> %i.hh, <64 x i8> %i.fg, <64 x i8> %i.ff
  %i.hj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hd, <64 x i8> %i.hg, <64 x i8> %i.hi)
  %i.hk = bitcast <8 x i32> %i.gl to <32 x i8>
  %i.hl = shufflevector <32 x i8> %i.hk, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.hm = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.hl, i1 false) ; 2 uses
  %i.hn = icmp slt <64 x i8> %i.hl, zeroinitializer ; 2 uses
  %i.ho = select <64 x i1> %i.hn, <64 x i8> %i.fi, <64 x i8> %i.fh
  %i.hp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hj, <64 x i8> %i.hm, <64 x i8> %i.ho)
  %i.hq = select <64 x i1> %i.gv, <64 x i8> %i.fk, <64 x i8> %i.fj
  %i.hr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.gu, <64 x i8> %i.hq)
  %i.hs = select <64 x i1> %i.hb, <64 x i8> %i.fm, <64 x i8> %i.fl
  %i.ht = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hr, <64 x i8> %i.ha, <64 x i8> %i.hs)
  %i.hu = select <64 x i1> %i.hh, <64 x i8> %i.fo, <64 x i8> %i.fn
  %i.hv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ht, <64 x i8> %i.hg, <64 x i8> %i.hu)
  %i.hw = select <64 x i1> %i.hn, <64 x i8> %i.fq, <64 x i8> %i.fp
  %i.hx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hv, <64 x i8> %i.hm, <64 x i8> %i.hw)
  %i.hy = bitcast <8 x i32> %i.gr to <32 x i8>
  %i.hz = shufflevector <32 x i8> %i.hy, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ia = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.hz, i1 false) ; 2 uses
  %i.ib = icmp slt <64 x i8> %i.hz, zeroinitializer ; 2 uses
  %i.ic = select <64 x i1> %i.ib, <64 x i8> %i.fc, <64 x i8> %i.fb
  %i.id = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ia, <64 x i8> %i.ic)
  %i.ie = bitcast <8 x i32> %i.gp to <32 x i8>
  %i.if = shufflevector <32 x i8> %i.ie, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ig = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.if, i1 false) ; 2 uses
  %i.ih = icmp slt <64 x i8> %i.if, zeroinitializer ; 2 uses
  %i.ii = select <64 x i1> %i.ih, <64 x i8> %i.fe, <64 x i8> %i.fd
  %i.ij = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.id, <64 x i8> %i.ig, <64 x i8> %i.ii)
  %i.ik = bitcast <8 x i32> %i.gn to <32 x i8>
  %i.il = shufflevector <32 x i8> %i.ik, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.im = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.il, i1 false) ; 2 uses
  %i.in = icmp slt <64 x i8> %i.il, zeroinitializer ; 2 uses
  %i.io = select <64 x i1> %i.in, <64 x i8> %i.fg, <64 x i8> %i.ff
  %i.ip = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ij, <64 x i8> %i.im, <64 x i8> %i.io)
  %i.iq = bitcast <8 x i32> %i.gl to <32 x i8>
  %i.ir = shufflevector <32 x i8> %i.iq, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.is = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ir, i1 false) ; 2 uses
  %i.it = icmp slt <64 x i8> %i.ir, zeroinitializer ; 2 uses
  %i.iu = select <64 x i1> %i.it, <64 x i8> %i.fi, <64 x i8> %i.fh
  %i.iv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ip, <64 x i8> %i.is, <64 x i8> %i.iu)
  %i.iw = select <64 x i1> %i.ib, <64 x i8> %i.fk, <64 x i8> %i.fj
  %i.ix = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ia, <64 x i8> %i.iw)
  %i.iy = select <64 x i1> %i.ih, <64 x i8> %i.fm, <64 x i8> %i.fl
  %i.iz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ix, <64 x i8> %i.ig, <64 x i8> %i.iy)
  %i.ja = select <64 x i1> %i.in, <64 x i8> %i.fo, <64 x i8> %i.fn
  %i.jb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.iz, <64 x i8> %i.im, <64 x i8> %i.ja)
  %i.jc = select <64 x i1> %i.it, <64 x i8> %i.fq, <64 x i8> %i.fp
  %i.jd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jb, <64 x i8> %i.is, <64 x i8> %i.jc)
  %i.je = bitcast <8 x i32> %i.gr to <32 x i8>
  %i.jf = shufflevector <32 x i8> %i.je, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.jg = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jf, i1 false) ; 2 uses
  %i.jh = icmp slt <64 x i8> %i.jf, zeroinitializer ; 2 uses
  %i.ji = select <64 x i1> %i.jh, <64 x i8> %i.fs, <64 x i8> %i.fr
  %i.jj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.jg, <64 x i8> %i.ji)
  %i.jk = bitcast <8 x i32> %i.gp to <32 x i8>
  %i.jl = shufflevector <32 x i8> %i.jk, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.jm = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jl, i1 false) ; 2 uses
  %i.jn = icmp slt <64 x i8> %i.jl, zeroinitializer ; 2 uses
  %i.jo = select <64 x i1> %i.jn, <64 x i8> %i.fu, <64 x i8> %i.ft
  %i.jp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jj, <64 x i8> %i.jm, <64 x i8> %i.jo)
  %i.jq = bitcast <8 x i32> %i.gn to <32 x i8>
  %i.jr = shufflevector <32 x i8> %i.jq, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.js = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jr, i1 false) ; 2 uses
  %i.jt = icmp slt <64 x i8> %i.jr, zeroinitializer ; 2 uses
  %i.ju = select <64 x i1> %i.jt, <64 x i8> %i.fw, <64 x i8> %i.fv
  %i.jv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jp, <64 x i8> %i.js, <64 x i8> %i.ju)
  %i.jw = bitcast <8 x i32> %i.gl to <32 x i8>
  %i.jx = shufflevector <32 x i8> %i.jw, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.jy = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jx, i1 false) ; 2 uses
  %i.jz = icmp slt <64 x i8> %i.jx, zeroinitializer ; 2 uses
  %i.ka = select <64 x i1> %i.jz, <64 x i8> %i.fy, <64 x i8> %i.fx
end_hunk_1
begin_hunk_2_@ggml_gemm_q4_0_8x8_q8_0:bb.a
  %i.se = shufflevector <64 x i8> %i.py, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sf = sub <64 x i8> zeroinitializer, %i.se    ; 2 uses
  %i.sg = select <64 x i1> %i.sd, <64 x i8> %i.sf, <64 x i8> %i.se
  %i.sh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.rz, <64 x i8> %i.sc, <64 x i8> %i.sg)
  %i.si = bitcast <8 x i32> %i.rd to <32 x i8>
  %i.sj = shufflevector <32 x i8> %i.si, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.sk = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.sj, i1 false) ; 2 uses
  %i.sl = icmp slt <64 x i8> %i.sj, zeroinitializer ; 2 uses
  %i.sm = shufflevector <64 x i8> %i.ps, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sn = sub <64 x i8> zeroinitializer, %i.sm    ; 2 uses
  %i.so = select <64 x i1> %i.sl, <64 x i8> %i.sn, <64 x i8> %i.sm
  %i.sp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sh, <64 x i8> %i.sk, <64 x i8> %i.so)
  %i.sq = shufflevector <64 x i8> %i.qv, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sr = sub <64 x i8> zeroinitializer, %i.sq    ; 2 uses
  %i.ss = select <64 x i1> %i.rn, <64 x i8> %i.sr, <64 x i8> %i.sq
  %i.st = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.rm, <64 x i8> %i.ss)
  %i.su = shufflevector <64 x i8> %i.ql, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sv = sub <64 x i8> zeroinitializer, %i.su    ; 2 uses
  %i.sw = select <64 x i1> %i.rv, <64 x i8> %i.sv, <64 x i8> %i.su
  %i.sx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.st, <64 x i8> %i.ru, <64 x i8> %i.sw)
  %i.sy = shufflevector <64 x i8> %i.qb, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sz = sub <64 x i8> zeroinitializer, %i.sy    ; 2 uses
  %i.ta = select <64 x i1> %i.sd, <64 x i8> %i.sz, <64 x i8> %i.sy
  %i.tb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sx, <64 x i8> %i.sc, <64 x i8> %i.ta)
  %i.tc = shufflevector <64 x i8> %i.pv, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.td = sub <64 x i8> zeroinitializer, %i.tc    ; 2 uses
  %i.te = select <64 x i1> %i.sl, <64 x i8> %i.td, <64 x i8> %i.tc
  %i.tf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tb, <64 x i8> %i.sk, <64 x i8> %i.te)
  %i.tg = bitcast <8 x i32> %i.rj to <32 x i8>
  %i.th = shufflevector <32 x i8> %i.tg, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ti = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.th, i1 false) ; 2 uses
  %i.tj = icmp slt <64 x i8> %i.th, zeroinitializer ; 2 uses
  %i.tk = select <64 x i1> %i.tj, <64 x i8> %i.rp, <64 x i8> %i.ro
  %i.tl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ti, <64 x i8> %i.tk)
  %i.tm = bitcast <8 x i32> %i.rh to <32 x i8>
  %i.tn = shufflevector <32 x i8> %i.tm, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.to = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tn, i1 false) ; 2 uses
  %i.tp = icmp slt <64 x i8> %i.tn, zeroinitializer ; 2 uses
  %i.tq = select <64 x i1> %i.tp, <64 x i8> %i.rx, <64 x i8> %i.rw
  %i.tr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tl, <64 x i8> %i.to, <64 x i8> %i.tq)
  %i.ts = bitcast <8 x i32> %i.rf to <32 x i8>
  %i.tt = shufflevector <32 x i8> %i.ts, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.tu = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tt, i1 false) ; 2 uses
  %i.tv = icmp slt <64 x i8> %i.tt, zeroinitializer ; 2 uses
  %i.tw = select <64 x i1> %i.tv, <64 x i8> %i.sf, <64 x i8> %i.se
  %i.tx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tr, <64 x i8> %i.tu, <64 x i8> %i.tw)
  %i.ty = bitcast <8 x i32> %i.rd to <32 x i8>
  %i.tz = shufflevector <32 x i8> %i.ty, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ua = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tz, i1 false) ; 2 uses
  %i.ub = icmp slt <64 x i8> %i.tz, zeroinitializer ; 2 uses
  %i.uc = select <64 x i1> %i.ub, <64 x i8> %i.sn, <64 x i8> %i.sm
  %i.ud = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tx, <64 x i8> %i.ua, <64 x i8> %i.uc)
  %i.ue = select <64 x i1> %i.tj, <64 x i8> %i.sr, <64 x i8> %i.sq
  %i.uf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ti, <64 x i8> %i.ue)
  %i.ug = select <64 x i1> %i.tp, <64 x i8> %i.sv, <64 x i8> %i.su
  %i.uh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.uf, <64 x i8> %i.to, <64 x i8> %i.ug)
  %i.ui = select <64 x i1> %i.tv, <64 x i8> %i.sz, <64 x i8> %i.sy
  %i.uj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.uh, <64 x i8> %i.tu, <64 x i8> %i.ui)
  %i.uk = select <64 x i1> %i.ub, <64 x i8> %i.td, <64 x i8> %i.tc
  %i.ul = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.uj, <64 x i8> %i.ua, <64 x i8> %i.uk)
  %i.um = bitcast <8 x i32> %i.rj to <32 x i8>
  %i.un = shufflevector <32 x i8> %i.um, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.uo = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.un, i1 false) ; 2 uses
  %i.up = icmp slt <64 x i8> %i.un, zeroinitializer ; 2 uses
  %i.uq = shufflevector <64 x i8> %i.qq, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.ur = sub <64 x i8> zeroinitializer, %i.uq    ; 2 uses
  %i.us = select <64 x i1> %i.up, <64 x i8> %i.ur, <64 x i8> %i.uq
  %i.ut = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.uo, <64 x i8> %i.us)
  %i.uu = bitcast <8 x i32> %i.rh to <32 x i8>
  %i.uv = shufflevector <32 x i8> %i.uu, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.uw = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.uv, i1 false) ; 2 uses
  %i.ux = icmp slt <64 x i8> %i.uv, zeroinitializer ; 2 uses
  %i.uy = shufflevector <64 x i8> %i.qg, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.uz = sub <64 x i8> zeroinitializer, %i.uy    ; 2 uses
  %i.va = select <64 x i1> %i.ux, <64 x i8> %i.uz, <64 x i8> %i.uy
  %i.vb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ut, <64 x i8> %i.uw, <64 x i8> %i.va)
  %i.vc = bitcast <8 x i32> %i.rf to <32 x i8>
  %i.vd = shufflevector <32 x i8> %i.vc, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ve = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.vd, i1 false) ; 2 uses
  %i.vf = icmp slt <64 x i8> %i.vd, zeroinitializer ; 2 uses
  %i.vg = shufflevector <64 x i8> %i.py, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vh = sub <64 x i8> zeroinitializer, %i.vg    ; 2 uses
  %i.vi = select <64 x i1> %i.vf, <64 x i8> %i.vh, <64 x i8> %i.vg
  %i.vj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vb, <64 x i8> %i.ve, <64 x i8> %i.vi)
  %i.vk = bitcast <8 x i32> %i.rd to <32 x i8>
  %i.vl = shufflevector <32 x i8> %i.vk, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.vm = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.vl, i1 false) ; 2 uses
  %i.vn = icmp slt <64 x i8> %i.vl, zeroinitializer ; 2 uses
  %i.vo = shufflevector <64 x i8> %i.ps, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vp = sub <64 x i8> zeroinitializer, %i.vo    ; 2 uses
  %i.vq = select <64 x i1> %i.vn, <64 x i8> %i.vp, <64 x i8> %i.vo
  %i.vr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vj, <64 x i8> %i.vm, <64 x i8> %i.vq)
  %i.vs = shufflevector <64 x i8> %i.qv, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vt = sub <64 x i8> zeroinitializer, %i.vs    ; 2 uses
  %i.vu = select <64 x i1> %i.up, <64 x i8> %i.vt, <64 x i8> %i.vs
  %i.vv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.uo, <64 x i8> %i.vu)
  %i.vw = shufflevector <64 x i8> %i.ql, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vx = sub <64 x i8> zeroinitializer, %i.vw    ; 2 uses
  %i.vy = select <64 x i1> %i.ux, <64 x i8> %i.vx, <64 x i8> %i.vw
  %i.vz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vv, <64 x i8> %i.uw, <64 x i8> %i.vy)
  %i.wa = shufflevector <64 x i8> %i.qb, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.wb = sub <64 x i8> zeroinitializer, %i.wa    ; 2 uses
  %i.wc = select <64 x i1> %i.vf, <64 x i8> %i.wb, <64 x i8> %i.wa
  %i.wd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vz, <64 x i8> %i.ve, <64 x i8> %i.wc)
  %i.we = shufflevector <64 x i8> %i.pv, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.wf = sub <64 x i8> zeroinitializer, %i.we    ; 2 uses
  %i.wg = select <64 x i1> %i.vn, <64 x i8> %i.wf, <64 x i8> %i.we
  %i.wh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wd, <64 x i8> %i.vm, <64 x i8> %i.wg)
  %i.wi = bitcast <8 x i32> %i.rj to <32 x i8>
  %i.wj = shufflevector <32 x i8> %i.wi, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.wk = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wj, i1 false) ; 2 uses
  %i.wl = icmp slt <64 x i8> %i.wj, zeroinitializer ; 2 uses
  %i.wm = select <64 x i1> %i.wl, <64 x i8> %i.ur, <64 x i8> %i.uq
  %i.wn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.wk, <64 x i8> %i.wm)
  %i.wo = bitcast <8 x i32> %i.rh to <32 x i8>
  %i.wp = shufflevector <32 x i8> %i.wo, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.wq = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wp, i1 false) ; 2 uses
  %i.wr = icmp slt <64 x i8> %i.wp, zeroinitializer ; 2 uses
  %i.ws = select <64 x i1> %i.wr, <64 x i8> %i.uz, <64 x i8> %i.uy
  %i.wt = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wn, <64 x i8> %i.wq, <64 x i8> %i.ws)
  %i.wu = bitcast <8 x i32> %i.rf to <32 x i8>
  %i.wv = shufflevector <32 x i8> %i.wu, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ww = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wv, i1 false) ; 2 uses
  %i.wx = icmp slt <64 x i8> %i.wv, zeroinitializer ; 2 uses
  %i.wy = select <64 x i1> %i.wx, <64 x i8> %i.vh, <64 x i8> %i.vg
  %i.wz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wt, <64 x i8> %i.ww, <64 x i8> %i.wy)
  %i.xa = bitcast <8 x i32> %i.rd to <32 x i8>
  %i.xb = shufflevector <32 x i8> %i.xa, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.xc = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.xb, i1 false) ; 2 uses
  %i.xd = icmp slt <64 x i8> %i.xb, zeroinitializer ; 2 uses
  %i.xe = select <64 x i1> %i.xd, <64 x i8> %i.vp, <64 x i8> %i.vo
  %i.xf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wz, <64 x i8> %i.xc, <64 x i8> %i.xe)
  %i.xg = select <64 x i1> %i.wl, <64 x i8> %i.vt, <64 x i8> %i.vs
  %i.xh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.wk, <64 x i8> %i.xg)
  %i.xi = select <64 x i1> %i.wr, <64 x i8> %i.vx, <64 x i8> %i.vw
  %i.xj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xh, <64 x i8> %i.wq, <64 x i8> %i.xi)
  %i.xk = select <64 x i1> %i.wx, <64 x i8> %i.wb, <64 x i8> %i.wa
  %i.xl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xj, <64 x i8> %i.ww, <64 x i8> %i.xk)
  %i.xm = select <64 x i1> %i.xd, <64 x i8> %i.wf, <64 x i8> %i.we
  %i.xn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xl, <64 x i8> %i.xc, <64 x i8> %i.xm)
  %i.xo = add <16 x i32> %i.vr, %i.sp             ; 2 uses
  %i.xp = add <16 x i32> %i.wh, %i.tf             ; 2 uses
  %i.xq = add <16 x i32> %i.xf, %i.ud             ; 2 uses
  %i.xr = add <16 x i32> %i.xn, %i.ul             ; 2 uses
  %i.xs = shufflevector <16 x i32> %i.xo, <16 x i32> %i.xp, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.xt = shufflevector <16 x i32> %i.xo, <16 x i32> %i.xp, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.xu = shufflevector <16 x i32> %i.xq, <16 x i32> %i.xr, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.xv = shufflevector <16 x i32> %i.xq, <16 x i32> %i.xr, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.xw = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.rb, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !alias.scope !107, !noalias !111
  %i.xx = bitcast <4 x i32> %i.xw to <8 x half>
  %i.xy = shufflevector <8 x half> %i.xx, <8 x half> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.xz = fpext <16 x half> %i.xy to <16 x float> ; 4 uses
  %i.ya = sitofp <16 x i32> %i.xs to <16 x float>
  %i.yb = shufflevector <16 x float> %i.xz, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.yc = fmul <16 x float> %i.yb, %i.ra
  %i.yd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ya, <16 x float> %i.yc, <16 x float> %i.pb) ; 2 uses
  %i.ye = sitofp <16 x i32> %i.xt to <16 x float>
  %i.yf = shufflevector <16 x float> %i.xz, <16 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 13, i32 13, i32 13, i32 13>
  %i.yg = fmul <16 x float> %i.yf, %i.ra
  %i.yh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ye, <16 x float> %i.yg, <16 x float> %i.pa) ; 2 uses
  %i.yi = sitofp <16 x i32> %i.xu to <16 x float>
  %i.yj = shufflevector <16 x float> %i.xz, <16 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.yk = fmul <16 x float> %i.yj, %i.ra
  %i.yl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.yi, <16 x float> %i.yk, <16 x float> %i.oz) ; 2 uses
  %i.ym = sitofp <16 x i32> %i.xv to <16 x float>
  %i.yn = shufflevector <16 x float> %i.xz, <16 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 11, i32 11, i32 11, i32 11, i32 15, i32 15, i32 15, i32 15>
  %i.yo = fmul <16 x float> %i.yn, %i.ra
  %i.yp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ym, <16 x float> %i.yo, <16 x float> %i.oy) ; 2 uses
  %i.yq = add nuw nsw i64 %.09961038.us.us.us.i, 1 ; 2 uses
  %exitcond1148.not.i = icmp eq i64 %i.yq, %i.f
  br i1 %exitcond1148.not.i, label %..preheader1017_crit_edge.us.us.us.i, label %bb.d, !llvm.loop !93

..preheader1017_crit_edge.us.us.us.i:             ; preds = %bb.d
  %.idx1010.us.us.us.i = shl nuw nsw i64 %.09941047.us.us.us.i, 5
  %invariant.gep.us1049.us.us.i = getelementptr i8, ptr %1, i64 %.idx1010.us.us.us.i ; 4 uses
  %gep.us1050.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us1049.us.us.i, i64 %i.om
  store <16 x float> %i.yd, ptr %gep.us1050.us.us.i, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us1050.us.us.1.i = getelementptr [4 x i8], ptr %invariant.gep.us1049.us.us.i, i64 %i.oo
  store <16 x float> %i.yh, ptr %gep.us1050.us.us.1.i, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us1050.us.us.2.i = getelementptr [4 x i8], ptr %invariant.gep.us1049.us.us.i, i64 %i.oq
  store <16 x float> %i.yl, ptr %gep.us1050.us.us.2.i, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %gep.us1050.us.us.3.i = getelementptr [4 x i8], ptr %invariant.gep.us1049.us.us.i, i64 %i.os
  store <16 x float> %i.yp, ptr %gep.us1050.us.us.3.i, align 1, !tbaa !9, !alias.scope !105, !noalias !109
  %i.yr = add nuw nsw i64 %.09941047.us.us.us.i, 2 ; 2 uses
  %i.ys = icmp slt i64 %i.yr, %i.ni
  br i1 %i.ys, label %.preheader1018.us.us.us.i, label %._crit_edge.split.us.us.us.i, !llvm.loop !94

._crit_edge.split.us.us.us.i:                     ; preds = %..preheader1017_crit_edge.us.us.us.i
  %i.yt = add nuw nsw i64 %.11052.us.us.i, 1      ; 2 uses
  %exitcond1153.not.i = icmp eq i64 %i.yt, %i.nf
  br i1 %exitcond1153.not.i, label %._crit_edge1053.i, label %.lr.ph1048.us.us.i, !llvm.loop !95

.lr.ph1048.us.i:                                  ; preds = %.lr.ph1048.us.i, %.lr.ph1048.us.i.preheader.new
  %indvar56 = phi i64 [ 0, %.lr.ph1048.us.i.preheader.new ], [ %indvar.next57.3, %.lr.ph1048.us.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph1048.us.i.preheader.new ], [ %niter.next.3, %.lr.ph1048.us.i ]
  %i.yu = mul i64 %i.nn, %indvar56                ; 4 uses
  %scevgep61 = getelementptr i8, ptr %i.oc, i64 %i.yu
  %scevgep60 = getelementptr i8, ptr %i.od, i64 %i.yu
  %scevgep59 = getelementptr i8, ptr %i.oe, i64 %i.yu
  %scevgep58 = getelementptr i8, ptr %i.of, i64 %i.yu
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  %indvar.next57 = or disjoint i64 %indvar56, 1
  %i.yv = mul i64 %i.nn, %indvar.next57           ; 4 uses
  %scevgep61.1 = getelementptr i8, ptr %i.oc, i64 %i.yv
  %scevgep60.1 = getelementptr i8, ptr %i.od, i64 %i.yv
  %scevgep59.1 = getelementptr i8, ptr %i.oe, i64 %i.yv
  %scevgep58.1 = getelementptr i8, ptr %i.of, i64 %i.yv
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.1, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.1, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.1, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.1, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  %indvar.next57.1 = or disjoint i64 %indvar56, 2
  %i.yw = mul i64 %i.nn, %indvar.next57.1         ; 4 uses
  %scevgep61.2 = getelementptr i8, ptr %i.oc, i64 %i.yw
  %scevgep60.2 = getelementptr i8, ptr %i.od, i64 %i.yw
  %scevgep59.2 = getelementptr i8, ptr %i.oe, i64 %i.yw
  %scevgep58.2 = getelementptr i8, ptr %i.of, i64 %i.yw
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.2, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.2, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.2, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.2, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  %indvar.next57.2 = or disjoint i64 %indvar56, 3
  %i.yx = mul i64 %i.nn, %indvar.next57.2         ; 4 uses
  %scevgep61.3 = getelementptr i8, ptr %i.oc, i64 %i.yx
  %scevgep60.3 = getelementptr i8, ptr %i.od, i64 %i.yx
  %scevgep59.3 = getelementptr i8, ptr %i.oe, i64 %i.yx
  %scevgep58.3 = getelementptr i8, ptr %i.of, i64 %i.yx
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.3, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.3, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.3, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.3, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  %indvar.next57.3 = add nuw i64 %indvar56, 4     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1053.i.loopexit164.unr-lcssa, label %.lr.ph1048.us.i, !llvm.loop !95

._crit_edge1053.i.loopexit164.unr-lcssa:          ; preds = %.lr.ph1048.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge1053.i, label %.lr.ph1048.us.i.epil.preheader

.lr.ph1048.us.i.epil.preheader:                   ; preds = %._crit_edge1053.i.loopexit164.unr-lcssa, %.lr.ph1048.us.i.preheader
  %indvar56.epil.init = phi i64 [ 0, %.lr.ph1048.us.i.preheader ], [ %indvar.next57.3, %._crit_edge1053.i.loopexit164.unr-lcssa ]
  %lcmp.mod166 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %.lr.ph1048.us.i.epil

.lr.ph1048.us.i.epil:                             ; preds = %.lr.ph1048.us.i.epil, %.lr.ph1048.us.i.epil.preheader
  %indvar56.epil = phi i64 [ %indvar56.epil.init, %.lr.ph1048.us.i.epil.preheader ], [ %indvar.next57.epil, %.lr.ph1048.us.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1048.us.i.epil.preheader ], [ %epil.iter.next, %.lr.ph1048.us.i.epil ]
  %i.yy = mul i64 %i.nn, %indvar56.epil           ; 4 uses
  %scevgep61.epil = getelementptr i8, ptr %i.oc, i64 %i.yy
  %scevgep60.epil = getelementptr i8, ptr %i.od, i64 %i.yy
  %scevgep59.epil = getelementptr i8, ptr %i.oe, i64 %i.yy
  %scevgep58.epil = getelementptr i8, ptr %i.of, i64 %i.yy
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.epil, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.epil, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.epil, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.epil, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  %indvar.next57.epil = add nuw i64 %indvar56.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1053.i, label %.lr.ph1048.us.i.epil, !llvm.loop !96

._crit_edge1053.i:                                ; preds = %._crit_edge1053.i.loopexit164.unr-lcssa, %.lr.ph1048.us.i.epil, %._crit_edge.split.us.us.us.i, %.lr.ph.i, %.preheader1019.i
  %.1.lcssa.i = phi i64 [ %.0986.lcssa.i, %.preheader1019.i ], [ %i.nf, %.lr.ph.i ], [ %i.nf, %._crit_edge.split.us.us.us.i ], [ %i.nf, %.lr.ph1048.us.i.epil ], [ %i.nf, %._crit_edge1053.i.loopexit164.unr-lcssa ]
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge1053.i
  %i.yz = sdiv i32 %i.m, 8
  %i.za = sext i32 %i.yz to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge1053.i
  %.0987.i = phi i64 [ %i.za, %bb.e ], [ 0, %._crit_edge1053.i ] ; 8 uses
  %.2.i = phi i64 [ 0, %bb.e ], [ %.1.lcssa.i, %._crit_edge1053.i ] ; 8 uses
  %i.zb = icmp slt i64 %.2.i, %i.o
  br i1 %i.zb, label %.lr.ph1081.i, label %.preheader1013.i

.lr.ph1081.i:                                     ; preds = %bb.f
  %i.zc = sdiv i32 %6, 8
  %i.zd = sext i32 %i.zc to i64                   ; 3 uses
  %i.ze = icmp slt i64 %.0987.i, %i.zd
  %i.zf = icmp sgt i32 %0, 31
  br i1 %i.ze, label %.lr.ph1081.split.us.preheader.i, label %.lr.ph1081.split.i.preheader

.lr.ph1081.split.i.preheader:                     ; preds = %.lr.ph1081.i
  %i.zg = xor i64 %.2.i, -1
  %i.zh = add i64 %i.zg, %i.o
  %i.zi = and i64 %i.zh, -4
  %i.zj = add i64 %.2.i, %i.zi
  %i.zk = add i64 %i.zj, 4
  br label %.preheader1013.i

.lr.ph1081.split.us.preheader.i:                  ; preds = %.lr.ph1081.i
  %i.zl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.zm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.zn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.phi.trans.insert1252.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.phi.trans.insert1254.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.phi.trans.insert1256.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.phi.trans.insert1258.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %.phi.trans.insert1260.i = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %.phi.trans.insert1262.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %.phi.trans.insert1264.i = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.phi.trans.insert1266.i = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %.phi.trans.insert1268.i = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %.phi.trans.insert1270.i = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %.phi.trans.insert1272.i = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %.phi.trans.insert1274.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %.phi.trans.insert1276.i = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %.phi.trans.insert1278.i = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %.phi.trans.insert1280.i = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.zo = mul i64 %.2.i, %2
  %i.zp = shl i64 %i.zo, 4
  %i.zq = shl nsw i64 %.0987.i, 5                 ; 16 uses
  %i.zr = shl i64 %2, 6
  %i.zs = sub nsw i64 %i.zd, %.0987.i
  %i.zt = shl nsw i64 %i.zs, 5                    ; 16 uses
  %i.zu = shl nsw i64 %.2.i, 2                    ; 15 uses
  %i.zv = or disjoint i64 %i.zu, 1
  %i.zw = mul i64 %2, %i.zv
  %i.zx = shl i64 %i.zw, 2
  %i.zy = or disjoint i64 %i.zu, 2
  %i.zz = mul i64 %2, %i.zy
  %i.aaa = shl i64 %i.zz, 2
  %i.aab = or disjoint i64 %i.zu, 3
  %i.aac = mul i64 %2, %i.aab
  %i.aad = shl i64 %i.aac, 2
  %i.aae = add i64 %i.zu, 4
  %i.aaf = mul i64 %2, %i.aae
  %i.aag = shl i64 %i.aaf, 2
  %i.aah = add i64 %i.zu, 5
  %i.aai = mul i64 %2, %i.aah
  %i.aaj = shl i64 %i.aai, 2
  %i.aak = add i64 %i.zu, 6
  %i.aal = mul i64 %2, %i.aak
  %i.aam = shl i64 %i.aal, 2
  %i.aan = add i64 %i.zu, 7
  %i.aao = mul i64 %2, %i.aan
  %i.aap = shl i64 %i.aao, 2
  %i.aaq = add i64 %i.zu, 8
  %i.aar = mul i64 %2, %i.aaq
  %i.aas = shl i64 %i.aar, 2
  %i.aat = add i64 %i.zu, 9
  %i.aau = mul i64 %2, %i.aat
  %i.aav = shl i64 %i.aau, 2
  %i.aaw = add i64 %i.zu, 10
  %i.aax = mul i64 %2, %i.aaw
  %i.aay = shl i64 %i.aax, 2
  %i.aaz = add i64 %i.zu, 11
  %i.aba = mul i64 %2, %i.aaz
  %i.abb = shl i64 %i.aba, 2
  %i.abc = add i64 %i.zu, 12
  %i.abd = mul i64 %2, %i.abc
  %i.abe = shl i64 %i.abd, 2
  %i.abf = add i64 %i.zu, 13
  %i.abg = mul i64 %2, %i.abf
  %i.abh = shl i64 %i.abg, 2
  %i.abi = add i64 %i.zu, 14
  %i.abj = mul i64 %2, %i.abi
  %i.abk = shl i64 %i.abj, 2
  %i.abl = add i64 %i.zu, 15
  %i.abm = mul i64 %2, %i.abl
  %i.abn = shl i64 %i.abm, 2
  %i.abo = xor i64 %.2.i, -1
  %i.abp = add i64 %i.abo, %i.o
  %i.abq = lshr i64 %i.abp, 2
  %i.abr = getelementptr i8, ptr %1, i64 %i.zp
  %i.abs = getelementptr i8, ptr %i.abr, i64 %i.zq
  %i.abt = getelementptr i8, ptr %1, i64 %i.zx
  %i.abu = getelementptr i8, ptr %i.abt, i64 %i.zq
  %i.abv = getelementptr i8, ptr %1, i64 %i.aaa
  %i.abw = getelementptr i8, ptr %i.abv, i64 %i.zq
  %i.abx = getelementptr i8, ptr %1, i64 %i.aad
  %i.aby = getelementptr i8, ptr %i.abx, i64 %i.zq
  %i.abz = getelementptr i8, ptr %1, i64 %i.aag
  %i.aca = getelementptr i8, ptr %i.abz, i64 %i.zq
  %i.acb = getelementptr i8, ptr %1, i64 %i.aaj
  %i.acc = getelementptr i8, ptr %i.acb, i64 %i.zq
  %i.acd = getelementptr i8, ptr %1, i64 %i.aam
  %i.ace = getelementptr i8, ptr %i.acd, i64 %i.zq
  %i.acf = getelementptr i8, ptr %1, i64 %i.aap
  %i.acg = getelementptr i8, ptr %i.acf, i64 %i.zq
  %i.ach = getelementptr i8, ptr %1, i64 %i.aas
  %i.aci = getelementptr i8, ptr %i.ach, i64 %i.zq
  %i.acj = getelementptr i8, ptr %1, i64 %i.aav
  %i.ack = getelementptr i8, ptr %i.acj, i64 %i.zq
  %i.acl = getelementptr i8, ptr %1, i64 %i.aay
  %i.acm = getelementptr i8, ptr %i.acl, i64 %i.zq
  %i.acn = getelementptr i8, ptr %1, i64 %i.abb
  %i.aco = getelementptr i8, ptr %i.acn, i64 %i.zq
  %i.acp = getelementptr i8, ptr %1, i64 %i.abe
  %i.acq = getelementptr i8, ptr %i.acp, i64 %i.zq
  %i.acr = getelementptr i8, ptr %1, i64 %i.abh
  %i.acs = getelementptr i8, ptr %i.acr, i64 %i.zq
  %i.act = getelementptr i8, ptr %1, i64 %i.abk
  %i.acu = getelementptr i8, ptr %i.act, i64 %i.zq
  %i.acv = getelementptr i8, ptr %1, i64 %i.abn
  %i.acw = getelementptr i8, ptr %i.acv, i64 %i.zq
  br label %.lr.ph1081.split.us.i

.lr.ph1081.split.us.i:                            ; preds = %._crit_edge.us1085.i, %.lr.ph1081.split.us.preheader.i
  %indvar62 = phi i64 [ %indvar.next63, %._crit_edge.us1085.i ], [ 0, %.lr.ph1081.split.us.preheader.i ] ; 3 uses
  %.31079.us.i = phi i64 [ %i.amx, %._crit_edge.us1085.i ], [ %.2.i, %.lr.ph1081.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13, !noalias !108
  %i.acx = mul nsw i64 %.31079.us.i, %i.f
  %i.acy = getelementptr inbounds [136 x i8], ptr %4, i64 %i.acx ; 2 uses
  store ptr %i.acy, ptr %i.c, align 16, !tbaa !21, !noalias !108
  %i.acz = getelementptr inbounds [136 x i8], ptr %i.acy, i64 %i.f ; 2 uses
  store ptr %i.acz, ptr %i.zl, align 8, !tbaa !21, !noalias !108
  %i.ada = getelementptr inbounds [136 x i8], ptr %i.acz, i64 %i.f ; 2 uses
  store ptr %i.ada, ptr %i.zm, align 16, !tbaa !21, !noalias !108
  %i.adb = getelementptr inbounds [136 x i8], ptr %i.ada, i64 %i.f
  store ptr %i.adb, ptr %i.zn, align 8, !tbaa !21, !noalias !108
  %i.adc = shl nsw i64 %.31079.us.i, 2            ; 16 uses
  %i.add = mul i64 %i.adc, %2
  %i.ade = or disjoint i64 %i.adc, 1
  %i.adf = mul i64 %i.ade, %2
  %i.adg = or disjoint i64 %i.adc, 2
  %i.adh = mul i64 %i.adg, %2
  %i.adi = or disjoint i64 %i.adc, 3
  %i.adj = mul i64 %i.adi, %2
  %i.adk = add nsw i64 %i.adc, 4
  %i.adl = mul i64 %i.adk, %2
  %i.adm = add nsw i64 %i.adc, 5
  %i.adn = mul i64 %i.adm, %2
  %i.ado = add nsw i64 %i.adc, 6
  %i.adp = mul i64 %i.ado, %2
  %i.adq = add nsw i64 %i.adc, 7
  %i.adr = mul i64 %i.adq, %2
  %i.ads = add nsw i64 %i.adc, 8
  %i.adt = mul i64 %i.ads, %2
  %i.adu = add nsw i64 %i.adc, 9
  %i.adv = mul i64 %i.adu, %2
  %i.adw = add nsw i64 %i.adc, 10
  %i.adx = mul i64 %i.adw, %2
  %i.ady = add nsw i64 %i.adc, 11
  %i.adz = mul i64 %i.ady, %2
  %i.aea = add nsw i64 %i.adc, 12
  %i.aeb = mul i64 %i.aea, %2
  %i.aec = add nsw i64 %i.adc, 13
  %i.aed = mul i64 %i.aec, %2
  %i.aee = add nsw i64 %i.adc, 14
  %i.aef = mul i64 %i.aee, %2
  %i.aeg = add nsw i64 %i.adc, 15
  %i.aeh = mul i64 %i.aeg, %2
  br i1 %i.zf, label %.preheader1015.us.i.us, label %.preheader1015.us.i.preheader

.preheader1015.us.i.preheader:                    ; preds = %.lr.ph1081.split.us.i
  %i.aei = mul i64 %i.zr, %indvar62               ; 16 uses
  %scevgep64 = getelementptr i8, ptr %i.abs, i64 %i.aei
  %scevgep65 = getelementptr i8, ptr %i.abu, i64 %i.aei
  %scevgep66 = getelementptr i8, ptr %i.abw, i64 %i.aei
  %scevgep67 = getelementptr i8, ptr %i.aby, i64 %i.aei
  %scevgep68 = getelementptr i8, ptr %i.aca, i64 %i.aei
  %scevgep69 = getelementptr i8, ptr %i.acc, i64 %i.aei
  %scevgep70 = getelementptr i8, ptr %i.ace, i64 %i.aei
end_hunk_2
begin_hunk_3_@ggml_gemm_q4_K_8x8_q8_K:bb.a
  %gep.3.1 = getelementptr [4 x i8], ptr %invariant.gep.1, i64 %i.che
  store <8 x float> zeroinitializer, ptr %gep.3.1, align 1, !tbaa !9
  %i.chj = shl i64 %.022542411, 5
  %i.chk = getelementptr i8, ptr %1, i64 %i.chj
  %invariant.gep.2 = getelementptr i8, ptr %i.chk, i64 64 ; 4 uses
  %gep.22823 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.cgy
  store <8 x float> zeroinitializer, ptr %gep.22823, align 1, !tbaa !9
  %gep.1.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.cha
  store <8 x float> zeroinitializer, ptr %gep.1.2, align 1, !tbaa !9
  %gep.2.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.chc
  store <8 x float> zeroinitializer, ptr %gep.2.2, align 1, !tbaa !9
  %gep.3.2 = getelementptr [4 x i8], ptr %invariant.gep.2, i64 %i.che
  store <8 x float> zeroinitializer, ptr %gep.3.2, align 1, !tbaa !9
  %i.chl = shl i64 %.022542411, 5
  %i.chm = getelementptr i8, ptr %1, i64 %i.chl
  %invariant.gep.3 = getelementptr i8, ptr %i.chm, i64 96 ; 4 uses
  %gep.32824 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.cgy
  store <8 x float> zeroinitializer, ptr %gep.32824, align 1, !tbaa !9
  %gep.1.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.cha
  store <8 x float> zeroinitializer, ptr %gep.1.3, align 1, !tbaa !9
  %gep.2.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.chc
  store <8 x float> zeroinitializer, ptr %gep.2.3, align 1, !tbaa !9
  %gep.3.3 = getelementptr [4 x i8], ptr %invariant.gep.3, i64 %i.che
  store <8 x float> zeroinitializer, ptr %gep.3.3, align 1, !tbaa !9
  %i.chn = add nsw i64 %.022542411, 4             ; 2 uses
  %exitcond2527.not.3 = icmp eq i64 %i.chn, %i.bpe
  br i1 %exitcond2527.not.3, label %._crit_edge.split, label %.preheader2262, !llvm.loop !129

._crit_edge2417.split:                            ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.lr.ph2416, %.preheader2263
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i16> @llvm.x86.avx512.pmaddubs.w.512(<64 x i8>, <64 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16>, <32 x i16>) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @ggml_gemm_iq4_nl_8x8_q8_0(i32 noundef %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 7 uses
  %i.b = alloca [16 x <16 x float>], align 64     ; 20 uses
  %i.c = alloca [4 x ptr], align 16               ; 7 uses
  %i.d = alloca [16 x <8 x float>], align 32      ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.e = sdiv i32 %0, 32
  %i.f = sext i32 %i.e to i64                     ; 20 uses
  %i.g = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.h = insertelement <2 x i32> %i.g, i32 %6, i64 1
  %i.i = srem <2 x i32> %i.h, splat (i32 16)      ; 2 uses
  %i.j = extractelement <2 x i32> %i.i, i64 0
  %i.k = sub nsw i32 %5, %i.j                     ; 2 uses
  %i.l = extractelement <2 x i32> %i.i, i64 1     ; 2 uses
  %i.m = sub nsw i32 %6, %i.l                     ; 5 uses
  %i.n = sdiv i32 %i.k, 4
  %i.o = sext i32 %i.n to i64                     ; 5 uses
  %i.p = icmp sgt i32 %i.k, 3
  br i1 %i.p, label %.lr.ph1033.i, label %.preheader1019.i

.lr.ph1033.i:                                     ; preds = %bb.a
  %i.q = sdiv i32 %i.m, 8
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = icmp sgt i32 %i.m, 7
  %i.t = icmp sgt i32 %0, 31
  br i1 %i.s, label %.lr.ph1033.split.us.preheader.i, label %.lr.ph1033.split.i.preheader

.lr.ph1033.split.i.preheader:                     ; preds = %.lr.ph1033.i
  %smax = tail call i64 @llvm.smax.i64(i64 %i.o, i64 4)
  %i.u = add nsw i64 %smax, -1
  %i.v = and i64 %i.u, -4
  %i.w = add nuw nsw i64 %i.v, 4
  br label %.preheader1019.i

.lr.ph1033.split.us.preheader.i:                  ; preds = %.lr.ph1033.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.phi.trans.insert1223.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.phi.trans.insert1225.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.phi.trans.insert1227.i = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %.phi.trans.insert1229.i = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %.phi.trans.insert1231.i = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %.phi.trans.insert1233.i = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %.phi.trans.insert1235.i = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.phi.trans.insert1237.i = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %.phi.trans.insert1239.i = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %.phi.trans.insert1241.i = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %.phi.trans.insert1243.i = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %.phi.trans.insert1245.i = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %.phi.trans.insert1247.i = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %.phi.trans.insert1249.i = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  %i.aa = shl i64 %2, 6
  %i.ab = shl nuw nsw i64 %i.r, 5
  %i.ac = add nsw i64 %i.ab, -32
  %i.ad = and i64 %i.ac, -64
  %i.ae = add nsw i64 %i.ad, 64                   ; 16 uses
  %i.af = shl i64 %2, 2
  %i.ag = shl i64 %2, 3
  %i.ah = mul i64 %2, 12
  %i.ai = shl i64 %2, 4
  %i.aj = mul i64 %2, 20
  %i.ak = mul i64 %2, 24
  %i.al = mul i64 %2, 28
  %i.am = shl i64 %2, 5
  %i.an = mul i64 %2, 36
  %i.ao = mul i64 %2, 40
  %i.ap = mul i64 %2, 44
  %i.aq = mul i64 %2, 48
  %i.ar = mul i64 %2, 52
  %i.as = mul i64 %2, 56
  %i.at = mul i64 %2, 60
  %smax55 = tail call i64 @llvm.smax.i64(i64 %i.o, i64 4)
  %i.au = add nsw i64 %smax55, -1
  %i.av = lshr i64 %i.au, 2
  %i.aw = getelementptr i8, ptr %1, i64 %i.af
  %i.ax = getelementptr i8, ptr %1, i64 %i.ag
  %i.ay = getelementptr i8, ptr %1, i64 %i.ah
  %i.az = getelementptr i8, ptr %1, i64 %i.ai
  %i.ba = getelementptr i8, ptr %1, i64 %i.aj
  %i.bb = getelementptr i8, ptr %1, i64 %i.ak
  %i.bc = getelementptr i8, ptr %1, i64 %i.al
  %i.bd = getelementptr i8, ptr %1, i64 %i.am
  %i.be = getelementptr i8, ptr %1, i64 %i.an
  %i.bf = getelementptr i8, ptr %1, i64 %i.ao
  %i.bg = getelementptr i8, ptr %1, i64 %i.ap
  %i.bh = getelementptr i8, ptr %1, i64 %i.aq
  %i.bi = getelementptr i8, ptr %1, i64 %i.ar
  %i.bj = getelementptr i8, ptr %1, i64 %i.as
  %i.bk = getelementptr i8, ptr %1, i64 %i.at
  br label %.lr.ph1033.split.us.i

.lr.ph1033.split.us.i:                            ; preds = %._crit_edge.us.i, %.lr.ph1033.split.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i ], [ 0, %.lr.ph1033.split.us.preheader.i ] ; 3 uses
  %.09861031.us.i = phi i64 [ %i.nd, %._crit_edge.us.i ], [ 0, %.lr.ph1033.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !155
  %i.bl = mul nsw i64 %.09861031.us.i, %i.f
  %i.bm = getelementptr inbounds [136 x i8], ptr %4, i64 %i.bl ; 2 uses
  store ptr %i.bm, ptr %i.a, align 16, !tbaa !21, !noalias !155
  %i.bn = getelementptr inbounds [136 x i8], ptr %i.bm, i64 %i.f ; 2 uses
  store ptr %i.bn, ptr %i.x, align 8, !tbaa !21, !noalias !155
  %i.bo = getelementptr inbounds [136 x i8], ptr %i.bn, i64 %i.f ; 2 uses
  store ptr %i.bo, ptr %i.y, align 16, !tbaa !21, !noalias !155
  %i.bp = getelementptr inbounds [136 x i8], ptr %i.bo, i64 %i.f
  store ptr %i.bp, ptr %i.z, align 8, !tbaa !21, !noalias !155
  %i.bq = shl nuw nsw i64 %.09861031.us.i, 2      ; 16 uses
  %i.br = mul i64 %i.bq, %2
  %i.bs = or disjoint i64 %i.bq, 1
  %i.bt = mul i64 %i.bs, %2
  %i.bu = or disjoint i64 %i.bq, 2
  %i.bv = mul i64 %i.bu, %2
  %i.bw = or disjoint i64 %i.bq, 3
  %i.bx = mul i64 %i.bw, %2
  %i.by = or disjoint i64 %i.bq, 4
  %i.bz = mul i64 %i.by, %2
  %i.ca = or disjoint i64 %i.bq, 5
  %i.cb = mul i64 %i.ca, %2
  %i.cc = or disjoint i64 %i.bq, 6
  %i.cd = mul i64 %i.cc, %2
  %i.ce = or disjoint i64 %i.bq, 7
  %i.cf = mul i64 %i.ce, %2
  %i.cg = or disjoint i64 %i.bq, 8
  %i.ch = mul i64 %i.cg, %2
  %i.ci = or disjoint i64 %i.bq, 9
  %i.cj = mul i64 %i.ci, %2
  %i.ck = or disjoint i64 %i.bq, 10
  %i.cl = mul i64 %i.ck, %2
  %i.cm = or disjoint i64 %i.bq, 11
  %i.cn = mul i64 %i.cm, %2
  %i.co = or disjoint i64 %i.bq, 12
  %i.cp = mul i64 %i.co, %2
  %i.cq = or disjoint i64 %i.bq, 13
  %i.cr = mul i64 %i.cq, %2
  %i.cs = or disjoint i64 %i.bq, 14
  %i.ct = mul i64 %i.cs, %2
  %i.cu = or disjoint i64 %i.bq, 15
  %i.cv = mul i64 %i.cu, %2
  br i1 %i.t, label %.preheader1021.us.i.us, label %.preheader1021.us.i.preheader

.preheader1021.us.i.preheader:                    ; preds = %.lr.ph1033.split.us.i
  %i.cw = mul i64 %i.aa, %indvar                  ; 16 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.cw
  %scevgep40 = getelementptr i8, ptr %i.aw, i64 %i.cw
  %scevgep41 = getelementptr i8, ptr %i.ax, i64 %i.cw
  %scevgep42 = getelementptr i8, ptr %i.ay, i64 %i.cw
  %scevgep43 = getelementptr i8, ptr %i.az, i64 %i.cw
  %scevgep44 = getelementptr i8, ptr %i.ba, i64 %i.cw
  %scevgep45 = getelementptr i8, ptr %i.bb, i64 %i.cw
  %scevgep46 = getelementptr i8, ptr %i.bc, i64 %i.cw
  %scevgep47 = getelementptr i8, ptr %i.bd, i64 %i.cw
  %scevgep48 = getelementptr i8, ptr %i.be, i64 %i.cw
  %scevgep49 = getelementptr i8, ptr %i.bf, i64 %i.cw
  %scevgep50 = getelementptr i8, ptr %i.bg, i64 %i.cw
  %scevgep51 = getelementptr i8, ptr %i.bh, i64 %i.cw
  %scevgep52 = getelementptr i8, ptr %i.bi, i64 %i.cw
  %scevgep53 = getelementptr i8, ptr %i.bj, i64 %i.cw
  %scevgep54 = getelementptr i8, ptr %i.bk, i64 %i.cw
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep40, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep41, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep42, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep43, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep44, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep45, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep46, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep47, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep48, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep49, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep50, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep51, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep52, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep54, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  br label %._crit_edge.us.i

.preheader1021.us.i.us:                           ; preds = %.lr.ph1033.split.us.i, %.preheader1020.us.loopexit.i.us
  %.09891029.us.i.us = phi i64 [ %i.nb, %.preheader1020.us.loopexit.i.us ], [ 0, %.lr.ph1033.split.us.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !155
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false), !tbaa !9, !noalias !155
  %i.cx = mul nuw nsw i64 %.09891029.us.i.us, %i.f
  %i.cy = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.cx
  %i.cz = or disjoint i64 %.09891029.us.i.us, 1
  %i.da = mul nuw nsw i64 %i.cz, %i.f
  %i.db = getelementptr inbounds nuw [144 x i8], ptr %3, i64 %i.da
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %.preheader1021.us.i.us, %bb.c
  %.09911027.us.i.us = phi i64 [ %i.na, %bb.c ], [ 0, %.preheader1021.us.i.us ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [144 x i8], ptr %i.cy, i64 %.09911027.us.i.us ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load <16 x i32>, ptr %i.dd, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %i.dg = load <16 x i32>, ptr %i.df, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.dh = getelementptr inbounds nuw [144 x i8], ptr %i.db, i64 %.09911027.us.i.us ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load <16 x i32>, ptr %i.di, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  %i.dl = load <16 x i32>, ptr %i.dk, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.dm = shufflevector <16 x i32> %i.de, <16 x i32> %i.dj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dn = shufflevector <16 x i32> %i.de, <16 x i32> %i.dj, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.do = shufflevector <16 x i32> %i.dg, <16 x i32> %i.dl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dp = shufflevector <16 x i32> %i.dg, <16 x i32> %i.dl, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.dq = bitcast <16 x i32> %i.dm to <64 x i8>
  %i.dr = and <64 x i8> %i.dq, splat (i8 15)
  %i.ds = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.dr) ; 2 uses
  %i.dt = bitcast <16 x i32> %i.dn to <64 x i8>
  %i.du = and <64 x i8> %i.dt, splat (i8 15)
  %i.dv = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.du) ; 2 uses
  %i.dw = bitcast <16 x i32> %i.do to <64 x i8>
  %i.dx = and <64 x i8> %i.dw, splat (i8 15)
  %i.dy = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.dx) ; 2 uses
  %i.dz = bitcast <16 x i32> %i.dp to <64 x i8>
  %i.ea = and <64 x i8> %i.dz, splat (i8 15)
  %i.eb = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.ea) ; 2 uses
  %i.ec = bitcast <16 x i32> %i.dm to <32 x i16>
  %i.ed = lshr <32 x i16> %i.ec, splat (i16 4)
  %i.ee = bitcast <32 x i16> %i.ed to <64 x i8>
  %i.ef = and <64 x i8> %i.ee, splat (i8 15)
  %i.eg = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.ef) ; 2 uses
  %i.eh = bitcast <16 x i32> %i.dn to <32 x i16>
  %i.ei = lshr <32 x i16> %i.eh, splat (i16 4)
  %i.ej = bitcast <32 x i16> %i.ei to <64 x i8>
  %i.ek = and <64 x i8> %i.ej, splat (i8 15)
  %i.el = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.ek) ; 2 uses
  %i.em = bitcast <16 x i32> %i.do to <32 x i16>
  %i.en = lshr <32 x i16> %i.em, splat (i16 4)
  %i.eo = bitcast <32 x i16> %i.en to <64 x i8>
  %i.ep = and <64 x i8> %i.eo, splat (i8 15)
  %i.eq = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.ep) ; 2 uses
  %i.er = bitcast <16 x i32> %i.dp to <32 x i16>
  %i.es = lshr <32 x i16> %i.er, splat (i16 4)
  %i.et = bitcast <32 x i16> %i.es to <64 x i8>
  %i.eu = and <64 x i8> %i.et, splat (i8 15)
  %i.ev = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <64 x i8> %i.eu) ; 2 uses
  %i.ew = load <2 x i64>, ptr %i.dh, align 1, !tbaa !9, !alias.scope !153, !noalias !157
  %i.ex = load <2 x i64>, ptr %i.dc, align 1, !tbaa !9, !alias.scope !153, !noalias !157
  %i.ey = shufflevector <2 x i64> %i.ex, <2 x i64> %i.ew, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ez = bitcast <4 x i64> %i.ey to <16 x half>
  %i.fa = fpext <16 x half> %i.ez to <16 x float> ; 4 uses
  %i.fb = shufflevector <64 x i8> %i.eq, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fc = sub <64 x i8> zeroinitializer, %i.fb    ; 2 uses
  %i.fd = shufflevector <64 x i8> %i.eg, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fe = sub <64 x i8> zeroinitializer, %i.fd    ; 2 uses
  %i.ff = shufflevector <64 x i8> %i.dy, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fg = sub <64 x i8> zeroinitializer, %i.ff    ; 2 uses
  %i.fh = shufflevector <64 x i8> %i.ds, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fi = sub <64 x i8> zeroinitializer, %i.fh    ; 2 uses
  %i.fj = shufflevector <64 x i8> %i.ev, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fk = sub <64 x i8> zeroinitializer, %i.fj    ; 2 uses
  %i.fl = shufflevector <64 x i8> %i.el, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fm = sub <64 x i8> zeroinitializer, %i.fl    ; 2 uses
  %i.fn = shufflevector <64 x i8> %i.eb, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fo = sub <64 x i8> zeroinitializer, %i.fn    ; 2 uses
  %i.fp = shufflevector <64 x i8> %i.dv, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fq = sub <64 x i8> zeroinitializer, %i.fp    ; 2 uses
  %i.fr = shufflevector <64 x i8> %i.eq, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fs = sub <64 x i8> zeroinitializer, %i.fr    ; 2 uses
  %i.ft = shufflevector <64 x i8> %i.eg, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fu = sub <64 x i8> zeroinitializer, %i.ft    ; 2 uses
  %i.fv = shufflevector <64 x i8> %i.dy, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fw = sub <64 x i8> zeroinitializer, %i.fv    ; 2 uses
  %i.fx = shufflevector <64 x i8> %i.ds, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fy = sub <64 x i8> zeroinitializer, %i.fx    ; 2 uses
  %i.fz = shufflevector <64 x i8> %i.ev, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.ga = sub <64 x i8> zeroinitializer, %i.fz    ; 2 uses
  %i.gb = shufflevector <64 x i8> %i.el, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.gc = sub <64 x i8> zeroinitializer, %i.gb    ; 2 uses
  %i.gd = shufflevector <64 x i8> %i.eb, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.ge = sub <64 x i8> zeroinitializer, %i.gd    ; 2 uses
  %i.gf = shufflevector <64 x i8> %i.dv, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.gg = sub <64 x i8> zeroinitializer, %i.gf    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.b ], [ 0, %.lr.ph.us.i.us ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !21, !noalias !155
  %i.gj = getelementptr inbounds nuw [136 x i8], ptr %i.gi, i64 %.09911027.us.i.us ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load <8 x i32>, ptr %i.gk, align 1, !tbaa !9, !noalias !158 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  %i.gn = load <8 x i32>, ptr %i.gm, align 1, !tbaa !9, !noalias !158 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 72
  %i.gp = load <8 x i32>, ptr %i.go, align 1, !tbaa !9, !noalias !158 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 104
  %i.gr = load <8 x i32>, ptr %i.gq, align 1, !tbaa !9, !noalias !158 ; 4 uses
  %i.gs = bitcast <8 x i32> %i.gr to <32 x i8>
  %i.gt = shufflevector <32 x i8> %i.gs, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gu = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.gt, i1 false) ; 2 uses
  %i.gv = icmp slt <64 x i8> %i.gt, zeroinitializer ; 2 uses
  %i.gw = select <64 x i1> %i.gv, <64 x i8> %i.fc, <64 x i8> %i.fb
  %i.gx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.gu, <64 x i8> %i.gw)
  %i.gy = bitcast <8 x i32> %i.gp to <32 x i8>
  %i.gz = shufflevector <32 x i8> %i.gy, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ha = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.gz, i1 false) ; 2 uses
  %i.hb = icmp slt <64 x i8> %i.gz, zeroinitializer ; 2 uses
  %i.hc = select <64 x i1> %i.hb, <64 x i8> %i.fe, <64 x i8> %i.fd
  %i.hd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gx, <64 x i8> %i.ha, <64 x i8> %i.hc)
  %i.he = bitcast <8 x i32> %i.gn to <32 x i8>
  %i.hf = shufflevector <32 x i8> %i.he, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.hg = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.hf, i1 false) ; 2 uses
  %i.hh = icmp slt <64 x i8> %i.hf, zeroinitializer ; 2 uses
  %i.hi = select <64 x i1> %i.hh, <64 x i8> %i.fg, <64 x i8> %i.ff
  %i.hj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hd, <64 x i8> %i.hg, <64 x i8> %i.hi)
  %i.hk = bitcast <8 x i32> %i.gl to <32 x i8>
  %i.hl = shufflevector <32 x i8> %i.hk, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.hm = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.hl, i1 false) ; 2 uses
  %i.hn = icmp slt <64 x i8> %i.hl, zeroinitializer ; 2 uses
  %i.ho = select <64 x i1> %i.hn, <64 x i8> %i.fi, <64 x i8> %i.fh
  %i.hp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hj, <64 x i8> %i.hm, <64 x i8> %i.ho)
  %i.hq = select <64 x i1> %i.gv, <64 x i8> %i.fk, <64 x i8> %i.fj
  %i.hr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.gu, <64 x i8> %i.hq)
  %i.hs = select <64 x i1> %i.hb, <64 x i8> %i.fm, <64 x i8> %i.fl
  %i.ht = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hr, <64 x i8> %i.ha, <64 x i8> %i.hs)
  %i.hu = select <64 x i1> %i.hh, <64 x i8> %i.fo, <64 x i8> %i.fn
  %i.hv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ht, <64 x i8> %i.hg, <64 x i8> %i.hu)
  %i.hw = select <64 x i1> %i.hn, <64 x i8> %i.fq, <64 x i8> %i.fp
  %i.hx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hv, <64 x i8> %i.hm, <64 x i8> %i.hw)
  %i.hy = bitcast <8 x i32> %i.gr to <32 x i8>
  %i.hz = shufflevector <32 x i8> %i.hy, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ia = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.hz, i1 false) ; 2 uses
  %i.ib = icmp slt <64 x i8> %i.hz, zeroinitializer ; 2 uses
  %i.ic = select <64 x i1> %i.ib, <64 x i8> %i.fc, <64 x i8> %i.fb
  %i.id = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ia, <64 x i8> %i.ic)
  %i.ie = bitcast <8 x i32> %i.gp to <32 x i8>
  %i.if = shufflevector <32 x i8> %i.ie, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ig = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.if, i1 false) ; 2 uses
  %i.ih = icmp slt <64 x i8> %i.if, zeroinitializer ; 2 uses
  %i.ii = select <64 x i1> %i.ih, <64 x i8> %i.fe, <64 x i8> %i.fd
  %i.ij = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.id, <64 x i8> %i.ig, <64 x i8> %i.ii)
  %i.ik = bitcast <8 x i32> %i.gn to <32 x i8>
  %i.il = shufflevector <32 x i8> %i.ik, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.im = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.il, i1 false) ; 2 uses
  %i.in = icmp slt <64 x i8> %i.il, zeroinitializer ; 2 uses
  %i.io = select <64 x i1> %i.in, <64 x i8> %i.fg, <64 x i8> %i.ff
  %i.ip = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ij, <64 x i8> %i.im, <64 x i8> %i.io)
  %i.iq = bitcast <8 x i32> %i.gl to <32 x i8>
  %i.ir = shufflevector <32 x i8> %i.iq, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.is = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ir, i1 false) ; 2 uses
  %i.it = icmp slt <64 x i8> %i.ir, zeroinitializer ; 2 uses
  %i.iu = select <64 x i1> %i.it, <64 x i8> %i.fi, <64 x i8> %i.fh
  %i.iv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ip, <64 x i8> %i.is, <64 x i8> %i.iu)
  %i.iw = select <64 x i1> %i.ib, <64 x i8> %i.fk, <64 x i8> %i.fj
  %i.ix = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ia, <64 x i8> %i.iw)
  %i.iy = select <64 x i1> %i.ih, <64 x i8> %i.fm, <64 x i8> %i.fl
  %i.iz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ix, <64 x i8> %i.ig, <64 x i8> %i.iy)
  %i.ja = select <64 x i1> %i.in, <64 x i8> %i.fo, <64 x i8> %i.fn
  %i.jb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.iz, <64 x i8> %i.im, <64 x i8> %i.ja)
  %i.jc = select <64 x i1> %i.it, <64 x i8> %i.fq, <64 x i8> %i.fp
  %i.jd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jb, <64 x i8> %i.is, <64 x i8> %i.jc)
  %i.je = bitcast <8 x i32> %i.gr to <32 x i8>
  %i.jf = shufflevector <32 x i8> %i.je, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.jg = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jf, i1 false) ; 2 uses
  %i.jh = icmp slt <64 x i8> %i.jf, zeroinitializer ; 2 uses
  %i.ji = select <64 x i1> %i.jh, <64 x i8> %i.fs, <64 x i8> %i.fr
  %i.jj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.jg, <64 x i8> %i.ji)
  %i.jk = bitcast <8 x i32> %i.gp to <32 x i8>
  %i.jl = shufflevector <32 x i8> %i.jk, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.jm = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jl, i1 false) ; 2 uses
  %i.jn = icmp slt <64 x i8> %i.jl, zeroinitializer ; 2 uses
  %i.jo = select <64 x i1> %i.jn, <64 x i8> %i.fu, <64 x i8> %i.ft
  %i.jp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jj, <64 x i8> %i.jm, <64 x i8> %i.jo)
  %i.jq = bitcast <8 x i32> %i.gn to <32 x i8>
  %i.jr = shufflevector <32 x i8> %i.jq, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.js = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jr, i1 false) ; 2 uses
  %i.jt = icmp slt <64 x i8> %i.jr, zeroinitializer ; 2 uses
  %i.ju = select <64 x i1> %i.jt, <64 x i8> %i.fw, <64 x i8> %i.fv
  %i.jv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jp, <64 x i8> %i.js, <64 x i8> %i.ju)
  %i.jw = bitcast <8 x i32> %i.gl to <32 x i8>
  %i.jx = shufflevector <32 x i8> %i.jw, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.jy = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jx, i1 false) ; 2 uses
  %i.jz = icmp slt <64 x i8> %i.jx, zeroinitializer ; 2 uses
  %i.ka = select <64 x i1> %i.jz, <64 x i8> %i.fy, <64 x i8> %i.fx
end_hunk_3
begin_hunk_4_@ggml_gemm_iq4_nl_8x8_q8_0:bb.a
  %i.se = shufflevector <64 x i8> %i.py, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sf = sub <64 x i8> zeroinitializer, %i.se    ; 2 uses
  %i.sg = select <64 x i1> %i.sd, <64 x i8> %i.sf, <64 x i8> %i.se
  %i.sh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.rz, <64 x i8> %i.sc, <64 x i8> %i.sg)
  %i.si = bitcast <8 x i32> %i.rd to <32 x i8>
  %i.sj = shufflevector <32 x i8> %i.si, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.sk = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.sj, i1 false) ; 2 uses
  %i.sl = icmp slt <64 x i8> %i.sj, zeroinitializer ; 2 uses
  %i.sm = shufflevector <64 x i8> %i.ps, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sn = sub <64 x i8> zeroinitializer, %i.sm    ; 2 uses
  %i.so = select <64 x i1> %i.sl, <64 x i8> %i.sn, <64 x i8> %i.sm
  %i.sp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sh, <64 x i8> %i.sk, <64 x i8> %i.so)
  %i.sq = shufflevector <64 x i8> %i.qv, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sr = sub <64 x i8> zeroinitializer, %i.sq    ; 2 uses
  %i.ss = select <64 x i1> %i.rn, <64 x i8> %i.sr, <64 x i8> %i.sq
  %i.st = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.rm, <64 x i8> %i.ss)
  %i.su = shufflevector <64 x i8> %i.ql, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sv = sub <64 x i8> zeroinitializer, %i.su    ; 2 uses
  %i.sw = select <64 x i1> %i.rv, <64 x i8> %i.sv, <64 x i8> %i.su
  %i.sx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.st, <64 x i8> %i.ru, <64 x i8> %i.sw)
  %i.sy = shufflevector <64 x i8> %i.qb, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sz = sub <64 x i8> zeroinitializer, %i.sy    ; 2 uses
  %i.ta = select <64 x i1> %i.sd, <64 x i8> %i.sz, <64 x i8> %i.sy
  %i.tb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sx, <64 x i8> %i.sc, <64 x i8> %i.ta)
  %i.tc = shufflevector <64 x i8> %i.pv, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.td = sub <64 x i8> zeroinitializer, %i.tc    ; 2 uses
  %i.te = select <64 x i1> %i.sl, <64 x i8> %i.td, <64 x i8> %i.tc
  %i.tf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tb, <64 x i8> %i.sk, <64 x i8> %i.te)
  %i.tg = bitcast <8 x i32> %i.rj to <32 x i8>
  %i.th = shufflevector <32 x i8> %i.tg, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ti = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.th, i1 false) ; 2 uses
  %i.tj = icmp slt <64 x i8> %i.th, zeroinitializer ; 2 uses
  %i.tk = select <64 x i1> %i.tj, <64 x i8> %i.rp, <64 x i8> %i.ro
  %i.tl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ti, <64 x i8> %i.tk)
  %i.tm = bitcast <8 x i32> %i.rh to <32 x i8>
  %i.tn = shufflevector <32 x i8> %i.tm, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.to = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tn, i1 false) ; 2 uses
  %i.tp = icmp slt <64 x i8> %i.tn, zeroinitializer ; 2 uses
  %i.tq = select <64 x i1> %i.tp, <64 x i8> %i.rx, <64 x i8> %i.rw
  %i.tr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tl, <64 x i8> %i.to, <64 x i8> %i.tq)
  %i.ts = bitcast <8 x i32> %i.rf to <32 x i8>
  %i.tt = shufflevector <32 x i8> %i.ts, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.tu = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tt, i1 false) ; 2 uses
  %i.tv = icmp slt <64 x i8> %i.tt, zeroinitializer ; 2 uses
  %i.tw = select <64 x i1> %i.tv, <64 x i8> %i.sf, <64 x i8> %i.se
  %i.tx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tr, <64 x i8> %i.tu, <64 x i8> %i.tw)
  %i.ty = bitcast <8 x i32> %i.rd to <32 x i8>
  %i.tz = shufflevector <32 x i8> %i.ty, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ua = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tz, i1 false) ; 2 uses
  %i.ub = icmp slt <64 x i8> %i.tz, zeroinitializer ; 2 uses
  %i.uc = select <64 x i1> %i.ub, <64 x i8> %i.sn, <64 x i8> %i.sm
  %i.ud = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tx, <64 x i8> %i.ua, <64 x i8> %i.uc)
  %i.ue = select <64 x i1> %i.tj, <64 x i8> %i.sr, <64 x i8> %i.sq
  %i.uf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ti, <64 x i8> %i.ue)
  %i.ug = select <64 x i1> %i.tp, <64 x i8> %i.sv, <64 x i8> %i.su
  %i.uh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.uf, <64 x i8> %i.to, <64 x i8> %i.ug)
  %i.ui = select <64 x i1> %i.tv, <64 x i8> %i.sz, <64 x i8> %i.sy
  %i.uj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.uh, <64 x i8> %i.tu, <64 x i8> %i.ui)
  %i.uk = select <64 x i1> %i.ub, <64 x i8> %i.td, <64 x i8> %i.tc
  %i.ul = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.uj, <64 x i8> %i.ua, <64 x i8> %i.uk)
  %i.um = bitcast <8 x i32> %i.rj to <32 x i8>
  %i.un = shufflevector <32 x i8> %i.um, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.uo = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.un, i1 false) ; 2 uses
  %i.up = icmp slt <64 x i8> %i.un, zeroinitializer ; 2 uses
  %i.uq = shufflevector <64 x i8> %i.qq, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.ur = sub <64 x i8> zeroinitializer, %i.uq    ; 2 uses
  %i.us = select <64 x i1> %i.up, <64 x i8> %i.ur, <64 x i8> %i.uq
  %i.ut = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.uo, <64 x i8> %i.us)
  %i.uu = bitcast <8 x i32> %i.rh to <32 x i8>
  %i.uv = shufflevector <32 x i8> %i.uu, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.uw = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.uv, i1 false) ; 2 uses
  %i.ux = icmp slt <64 x i8> %i.uv, zeroinitializer ; 2 uses
  %i.uy = shufflevector <64 x i8> %i.qg, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.uz = sub <64 x i8> zeroinitializer, %i.uy    ; 2 uses
  %i.va = select <64 x i1> %i.ux, <64 x i8> %i.uz, <64 x i8> %i.uy
  %i.vb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ut, <64 x i8> %i.uw, <64 x i8> %i.va)
  %i.vc = bitcast <8 x i32> %i.rf to <32 x i8>
  %i.vd = shufflevector <32 x i8> %i.vc, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ve = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.vd, i1 false) ; 2 uses
  %i.vf = icmp slt <64 x i8> %i.vd, zeroinitializer ; 2 uses
  %i.vg = shufflevector <64 x i8> %i.py, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vh = sub <64 x i8> zeroinitializer, %i.vg    ; 2 uses
  %i.vi = select <64 x i1> %i.vf, <64 x i8> %i.vh, <64 x i8> %i.vg
  %i.vj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vb, <64 x i8> %i.ve, <64 x i8> %i.vi)
  %i.vk = bitcast <8 x i32> %i.rd to <32 x i8>
  %i.vl = shufflevector <32 x i8> %i.vk, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.vm = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.vl, i1 false) ; 2 uses
  %i.vn = icmp slt <64 x i8> %i.vl, zeroinitializer ; 2 uses
  %i.vo = shufflevector <64 x i8> %i.ps, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vp = sub <64 x i8> zeroinitializer, %i.vo    ; 2 uses
  %i.vq = select <64 x i1> %i.vn, <64 x i8> %i.vp, <64 x i8> %i.vo
  %i.vr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vj, <64 x i8> %i.vm, <64 x i8> %i.vq)
  %i.vs = shufflevector <64 x i8> %i.qv, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vt = sub <64 x i8> zeroinitializer, %i.vs    ; 2 uses
  %i.vu = select <64 x i1> %i.up, <64 x i8> %i.vt, <64 x i8> %i.vs
  %i.vv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.uo, <64 x i8> %i.vu)
  %i.vw = shufflevector <64 x i8> %i.ql, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vx = sub <64 x i8> zeroinitializer, %i.vw    ; 2 uses
  %i.vy = select <64 x i1> %i.ux, <64 x i8> %i.vx, <64 x i8> %i.vw
  %i.vz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vv, <64 x i8> %i.uw, <64 x i8> %i.vy)
  %i.wa = shufflevector <64 x i8> %i.qb, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.wb = sub <64 x i8> zeroinitializer, %i.wa    ; 2 uses
  %i.wc = select <64 x i1> %i.vf, <64 x i8> %i.wb, <64 x i8> %i.wa
  %i.wd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vz, <64 x i8> %i.ve, <64 x i8> %i.wc)
  %i.we = shufflevector <64 x i8> %i.pv, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.wf = sub <64 x i8> zeroinitializer, %i.we    ; 2 uses
  %i.wg = select <64 x i1> %i.vn, <64 x i8> %i.wf, <64 x i8> %i.we
  %i.wh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wd, <64 x i8> %i.vm, <64 x i8> %i.wg)
  %i.wi = bitcast <8 x i32> %i.rj to <32 x i8>
  %i.wj = shufflevector <32 x i8> %i.wi, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.wk = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wj, i1 false) ; 2 uses
  %i.wl = icmp slt <64 x i8> %i.wj, zeroinitializer ; 2 uses
  %i.wm = select <64 x i1> %i.wl, <64 x i8> %i.ur, <64 x i8> %i.uq
  %i.wn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.wk, <64 x i8> %i.wm)
  %i.wo = bitcast <8 x i32> %i.rh to <32 x i8>
  %i.wp = shufflevector <32 x i8> %i.wo, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.wq = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wp, i1 false) ; 2 uses
  %i.wr = icmp slt <64 x i8> %i.wp, zeroinitializer ; 2 uses
  %i.ws = select <64 x i1> %i.wr, <64 x i8> %i.uz, <64 x i8> %i.uy
  %i.wt = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wn, <64 x i8> %i.wq, <64 x i8> %i.ws)
  %i.wu = bitcast <8 x i32> %i.rf to <32 x i8>
  %i.wv = shufflevector <32 x i8> %i.wu, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ww = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wv, i1 false) ; 2 uses
  %i.wx = icmp slt <64 x i8> %i.wv, zeroinitializer ; 2 uses
  %i.wy = select <64 x i1> %i.wx, <64 x i8> %i.vh, <64 x i8> %i.vg
  %i.wz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wt, <64 x i8> %i.ww, <64 x i8> %i.wy)
  %i.xa = bitcast <8 x i32> %i.rd to <32 x i8>
  %i.xb = shufflevector <32 x i8> %i.xa, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.xc = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.xb, i1 false) ; 2 uses
  %i.xd = icmp slt <64 x i8> %i.xb, zeroinitializer ; 2 uses
  %i.xe = select <64 x i1> %i.xd, <64 x i8> %i.vp, <64 x i8> %i.vo
  %i.xf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wz, <64 x i8> %i.xc, <64 x i8> %i.xe)
  %i.xg = select <64 x i1> %i.wl, <64 x i8> %i.vt, <64 x i8> %i.vs
  %i.xh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.wk, <64 x i8> %i.xg)
  %i.xi = select <64 x i1> %i.wr, <64 x i8> %i.vx, <64 x i8> %i.vw
  %i.xj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xh, <64 x i8> %i.wq, <64 x i8> %i.xi)
  %i.xk = select <64 x i1> %i.wx, <64 x i8> %i.wb, <64 x i8> %i.wa
  %i.xl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xj, <64 x i8> %i.ww, <64 x i8> %i.xk)
  %i.xm = select <64 x i1> %i.xd, <64 x i8> %i.wf, <64 x i8> %i.we
  %i.xn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xl, <64 x i8> %i.xc, <64 x i8> %i.xm)
  %i.xo = add <16 x i32> %i.vr, %i.sp             ; 2 uses
  %i.xp = add <16 x i32> %i.wh, %i.tf             ; 2 uses
  %i.xq = add <16 x i32> %i.xf, %i.ud             ; 2 uses
  %i.xr = add <16 x i32> %i.xn, %i.ul             ; 2 uses
  %i.xs = shufflevector <16 x i32> %i.xo, <16 x i32> %i.xp, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.xt = shufflevector <16 x i32> %i.xo, <16 x i32> %i.xp, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.xu = shufflevector <16 x i32> %i.xq, <16 x i32> %i.xr, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.xv = shufflevector <16 x i32> %i.xq, <16 x i32> %i.xr, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.xw = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.rb, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !alias.scope !154, !noalias !158
  %i.xx = bitcast <4 x i32> %i.xw to <8 x half>
  %i.xy = shufflevector <8 x half> %i.xx, <8 x half> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.xz = fpext <16 x half> %i.xy to <16 x float> ; 4 uses
  %i.ya = sitofp <16 x i32> %i.xs to <16 x float>
  %i.yb = shufflevector <16 x float> %i.xz, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.yc = fmul <16 x float> %i.yb, %i.ra
  %i.yd = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ya, <16 x float> %i.yc, <16 x float> %i.pb) ; 2 uses
  %i.ye = sitofp <16 x i32> %i.xt to <16 x float>
  %i.yf = shufflevector <16 x float> %i.xz, <16 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 13, i32 13, i32 13, i32 13>
  %i.yg = fmul <16 x float> %i.yf, %i.ra
  %i.yh = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ye, <16 x float> %i.yg, <16 x float> %i.pa) ; 2 uses
  %i.yi = sitofp <16 x i32> %i.xu to <16 x float>
  %i.yj = shufflevector <16 x float> %i.xz, <16 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.yk = fmul <16 x float> %i.yj, %i.ra
  %i.yl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.yi, <16 x float> %i.yk, <16 x float> %i.oz) ; 2 uses
  %i.ym = sitofp <16 x i32> %i.xv to <16 x float>
  %i.yn = shufflevector <16 x float> %i.xz, <16 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 11, i32 11, i32 11, i32 11, i32 15, i32 15, i32 15, i32 15>
  %i.yo = fmul <16 x float> %i.yn, %i.ra
  %i.yp = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ym, <16 x float> %i.yo, <16 x float> %i.oy) ; 2 uses
  %i.yq = add nuw nsw i64 %.09961038.us.us.us.i, 1 ; 2 uses
  %exitcond1148.not.i = icmp eq i64 %i.yq, %i.f
  br i1 %exitcond1148.not.i, label %..preheader1017_crit_edge.us.us.us.i, label %bb.d, !llvm.loop !140

..preheader1017_crit_edge.us.us.us.i:             ; preds = %bb.d
  %.idx1010.us.us.us.i = shl nuw nsw i64 %.09941047.us.us.us.i, 5
  %invariant.gep.us1049.us.us.i = getelementptr i8, ptr %1, i64 %.idx1010.us.us.us.i ; 4 uses
  %gep.us1050.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us1049.us.us.i, i64 %i.om
  store <16 x float> %i.yd, ptr %gep.us1050.us.us.i, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us1050.us.us.1.i = getelementptr [4 x i8], ptr %invariant.gep.us1049.us.us.i, i64 %i.oo
  store <16 x float> %i.yh, ptr %gep.us1050.us.us.1.i, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us1050.us.us.2.i = getelementptr [4 x i8], ptr %invariant.gep.us1049.us.us.i, i64 %i.oq
  store <16 x float> %i.yl, ptr %gep.us1050.us.us.2.i, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %gep.us1050.us.us.3.i = getelementptr [4 x i8], ptr %invariant.gep.us1049.us.us.i, i64 %i.os
  store <16 x float> %i.yp, ptr %gep.us1050.us.us.3.i, align 1, !tbaa !9, !alias.scope !152, !noalias !156
  %i.yr = add nuw nsw i64 %.09941047.us.us.us.i, 2 ; 2 uses
  %i.ys = icmp slt i64 %i.yr, %i.ni
  br i1 %i.ys, label %.preheader1018.us.us.us.i, label %._crit_edge.split.us.us.us.i, !llvm.loop !141

._crit_edge.split.us.us.us.i:                     ; preds = %..preheader1017_crit_edge.us.us.us.i
  %i.yt = add nuw nsw i64 %.11052.us.us.i, 1      ; 2 uses
  %exitcond1153.not.i = icmp eq i64 %i.yt, %i.nf
  br i1 %exitcond1153.not.i, label %._crit_edge1053.i, label %.lr.ph1048.us.us.i, !llvm.loop !142

.lr.ph1048.us.i:                                  ; preds = %.lr.ph1048.us.i, %.lr.ph1048.us.i.preheader.new
  %indvar56 = phi i64 [ 0, %.lr.ph1048.us.i.preheader.new ], [ %indvar.next57.3, %.lr.ph1048.us.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph1048.us.i.preheader.new ], [ %niter.next.3, %.lr.ph1048.us.i ]
  %i.yu = mul i64 %i.nn, %indvar56                ; 4 uses
  %scevgep61 = getelementptr i8, ptr %i.oc, i64 %i.yu
  %scevgep60 = getelementptr i8, ptr %i.od, i64 %i.yu
  %scevgep59 = getelementptr i8, ptr %i.oe, i64 %i.yu
  %scevgep58 = getelementptr i8, ptr %i.of, i64 %i.yu
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  %indvar.next57 = or disjoint i64 %indvar56, 1
  %i.yv = mul i64 %i.nn, %indvar.next57           ; 4 uses
  %scevgep61.1 = getelementptr i8, ptr %i.oc, i64 %i.yv
  %scevgep60.1 = getelementptr i8, ptr %i.od, i64 %i.yv
  %scevgep59.1 = getelementptr i8, ptr %i.oe, i64 %i.yv
  %scevgep58.1 = getelementptr i8, ptr %i.of, i64 %i.yv
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.1, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.1, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.1, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.1, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  %indvar.next57.1 = or disjoint i64 %indvar56, 2
  %i.yw = mul i64 %i.nn, %indvar.next57.1         ; 4 uses
  %scevgep61.2 = getelementptr i8, ptr %i.oc, i64 %i.yw
  %scevgep60.2 = getelementptr i8, ptr %i.od, i64 %i.yw
  %scevgep59.2 = getelementptr i8, ptr %i.oe, i64 %i.yw
  %scevgep58.2 = getelementptr i8, ptr %i.of, i64 %i.yw
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.2, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.2, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.2, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.2, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  %indvar.next57.2 = or disjoint i64 %indvar56, 3
  %i.yx = mul i64 %i.nn, %indvar.next57.2         ; 4 uses
  %scevgep61.3 = getelementptr i8, ptr %i.oc, i64 %i.yx
  %scevgep60.3 = getelementptr i8, ptr %i.od, i64 %i.yx
  %scevgep59.3 = getelementptr i8, ptr %i.oe, i64 %i.yx
  %scevgep58.3 = getelementptr i8, ptr %i.of, i64 %i.yx
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.3, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.3, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.3, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.3, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  %indvar.next57.3 = add nuw i64 %indvar56, 4     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1053.i.loopexit164.unr-lcssa, label %.lr.ph1048.us.i, !llvm.loop !142

._crit_edge1053.i.loopexit164.unr-lcssa:          ; preds = %.lr.ph1048.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge1053.i, label %.lr.ph1048.us.i.epil.preheader

.lr.ph1048.us.i.epil.preheader:                   ; preds = %._crit_edge1053.i.loopexit164.unr-lcssa, %.lr.ph1048.us.i.preheader
  %indvar56.epil.init = phi i64 [ 0, %.lr.ph1048.us.i.preheader ], [ %indvar.next57.3, %._crit_edge1053.i.loopexit164.unr-lcssa ]
  %lcmp.mod166 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %.lr.ph1048.us.i.epil

.lr.ph1048.us.i.epil:                             ; preds = %.lr.ph1048.us.i.epil, %.lr.ph1048.us.i.epil.preheader
  %indvar56.epil = phi i64 [ %indvar56.epil.init, %.lr.ph1048.us.i.epil.preheader ], [ %indvar.next57.epil, %.lr.ph1048.us.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1048.us.i.epil.preheader ], [ %epil.iter.next, %.lr.ph1048.us.i.epil ]
  %i.yy = mul i64 %i.nn, %indvar56.epil           ; 4 uses
  %scevgep61.epil = getelementptr i8, ptr %i.oc, i64 %i.yy
  %scevgep60.epil = getelementptr i8, ptr %i.od, i64 %i.yy
  %scevgep59.epil = getelementptr i8, ptr %i.oe, i64 %i.yy
  %scevgep58.epil = getelementptr i8, ptr %i.of, i64 %i.yy
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.epil, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.epil, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.epil, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.epil, i8 0, i64 range(i64 0, 8589934593) %i.nr, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  %indvar.next57.epil = add nuw i64 %indvar56.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1053.i, label %.lr.ph1048.us.i.epil, !llvm.loop !143

._crit_edge1053.i:                                ; preds = %._crit_edge1053.i.loopexit164.unr-lcssa, %.lr.ph1048.us.i.epil, %._crit_edge.split.us.us.us.i, %.lr.ph.i, %.preheader1019.i
  %.1.lcssa.i = phi i64 [ %.0986.lcssa.i, %.preheader1019.i ], [ %i.nf, %.lr.ph.i ], [ %i.nf, %._crit_edge.split.us.us.us.i ], [ %i.nf, %.lr.ph1048.us.i.epil ], [ %i.nf, %._crit_edge1053.i.loopexit164.unr-lcssa ]
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge1053.i
  %i.yz = sdiv i32 %i.m, 8
  %i.za = sext i32 %i.yz to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge1053.i
  %.0987.i = phi i64 [ %i.za, %bb.e ], [ 0, %._crit_edge1053.i ] ; 8 uses
  %.2.i = phi i64 [ 0, %bb.e ], [ %.1.lcssa.i, %._crit_edge1053.i ] ; 8 uses
  %i.zb = icmp slt i64 %.2.i, %i.o
  br i1 %i.zb, label %.lr.ph1081.i, label %.preheader1013.i

.lr.ph1081.i:                                     ; preds = %bb.f
  %i.zc = sdiv i32 %6, 8
  %i.zd = sext i32 %i.zc to i64                   ; 3 uses
  %i.ze = icmp slt i64 %.0987.i, %i.zd
  %i.zf = icmp sgt i32 %0, 31
  br i1 %i.ze, label %.lr.ph1081.split.us.preheader.i, label %.lr.ph1081.split.i.preheader

.lr.ph1081.split.i.preheader:                     ; preds = %.lr.ph1081.i
  %i.zg = xor i64 %.2.i, -1
  %i.zh = add i64 %i.zg, %i.o
  %i.zi = and i64 %i.zh, -4
  %i.zj = add i64 %.2.i, %i.zi
  %i.zk = add i64 %i.zj, 4
  br label %.preheader1013.i

.lr.ph1081.split.us.preheader.i:                  ; preds = %.lr.ph1081.i
  %i.zl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.zm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.zn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.phi.trans.insert1252.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.phi.trans.insert1254.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.phi.trans.insert1256.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.phi.trans.insert1258.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %.phi.trans.insert1260.i = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %.phi.trans.insert1262.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %.phi.trans.insert1264.i = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.phi.trans.insert1266.i = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %.phi.trans.insert1268.i = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %.phi.trans.insert1270.i = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %.phi.trans.insert1272.i = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %.phi.trans.insert1274.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %.phi.trans.insert1276.i = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %.phi.trans.insert1278.i = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %.phi.trans.insert1280.i = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.zo = mul i64 %.2.i, %2
  %i.zp = shl i64 %i.zo, 4
  %i.zq = shl nsw i64 %.0987.i, 5                 ; 16 uses
  %i.zr = shl i64 %2, 6
  %i.zs = sub nsw i64 %i.zd, %.0987.i
  %i.zt = shl nsw i64 %i.zs, 5                    ; 16 uses
  %i.zu = shl nsw i64 %.2.i, 2                    ; 15 uses
  %i.zv = or disjoint i64 %i.zu, 1
  %i.zw = mul i64 %2, %i.zv
  %i.zx = shl i64 %i.zw, 2
  %i.zy = or disjoint i64 %i.zu, 2
  %i.zz = mul i64 %2, %i.zy
  %i.aaa = shl i64 %i.zz, 2
  %i.aab = or disjoint i64 %i.zu, 3
  %i.aac = mul i64 %2, %i.aab
  %i.aad = shl i64 %i.aac, 2
  %i.aae = add i64 %i.zu, 4
  %i.aaf = mul i64 %2, %i.aae
  %i.aag = shl i64 %i.aaf, 2
  %i.aah = add i64 %i.zu, 5
  %i.aai = mul i64 %2, %i.aah
  %i.aaj = shl i64 %i.aai, 2
  %i.aak = add i64 %i.zu, 6
  %i.aal = mul i64 %2, %i.aak
  %i.aam = shl i64 %i.aal, 2
  %i.aan = add i64 %i.zu, 7
  %i.aao = mul i64 %2, %i.aan
  %i.aap = shl i64 %i.aao, 2
  %i.aaq = add i64 %i.zu, 8
  %i.aar = mul i64 %2, %i.aaq
  %i.aas = shl i64 %i.aar, 2
  %i.aat = add i64 %i.zu, 9
  %i.aau = mul i64 %2, %i.aat
  %i.aav = shl i64 %i.aau, 2
  %i.aaw = add i64 %i.zu, 10
  %i.aax = mul i64 %2, %i.aaw
  %i.aay = shl i64 %i.aax, 2
  %i.aaz = add i64 %i.zu, 11
  %i.aba = mul i64 %2, %i.aaz
  %i.abb = shl i64 %i.aba, 2
  %i.abc = add i64 %i.zu, 12
  %i.abd = mul i64 %2, %i.abc
  %i.abe = shl i64 %i.abd, 2
  %i.abf = add i64 %i.zu, 13
  %i.abg = mul i64 %2, %i.abf
  %i.abh = shl i64 %i.abg, 2
  %i.abi = add i64 %i.zu, 14
  %i.abj = mul i64 %2, %i.abi
  %i.abk = shl i64 %i.abj, 2
  %i.abl = add i64 %i.zu, 15
  %i.abm = mul i64 %2, %i.abl
  %i.abn = shl i64 %i.abm, 2
  %i.abo = xor i64 %.2.i, -1
  %i.abp = add i64 %i.abo, %i.o
  %i.abq = lshr i64 %i.abp, 2
  %i.abr = getelementptr i8, ptr %1, i64 %i.zp
  %i.abs = getelementptr i8, ptr %i.abr, i64 %i.zq
  %i.abt = getelementptr i8, ptr %1, i64 %i.zx
  %i.abu = getelementptr i8, ptr %i.abt, i64 %i.zq
  %i.abv = getelementptr i8, ptr %1, i64 %i.aaa
  %i.abw = getelementptr i8, ptr %i.abv, i64 %i.zq
  %i.abx = getelementptr i8, ptr %1, i64 %i.aad
  %i.aby = getelementptr i8, ptr %i.abx, i64 %i.zq
  %i.abz = getelementptr i8, ptr %1, i64 %i.aag
  %i.aca = getelementptr i8, ptr %i.abz, i64 %i.zq
  %i.acb = getelementptr i8, ptr %1, i64 %i.aaj
  %i.acc = getelementptr i8, ptr %i.acb, i64 %i.zq
  %i.acd = getelementptr i8, ptr %1, i64 %i.aam
  %i.ace = getelementptr i8, ptr %i.acd, i64 %i.zq
  %i.acf = getelementptr i8, ptr %1, i64 %i.aap
  %i.acg = getelementptr i8, ptr %i.acf, i64 %i.zq
  %i.ach = getelementptr i8, ptr %1, i64 %i.aas
  %i.aci = getelementptr i8, ptr %i.ach, i64 %i.zq
  %i.acj = getelementptr i8, ptr %1, i64 %i.aav
  %i.ack = getelementptr i8, ptr %i.acj, i64 %i.zq
  %i.acl = getelementptr i8, ptr %1, i64 %i.aay
  %i.acm = getelementptr i8, ptr %i.acl, i64 %i.zq
  %i.acn = getelementptr i8, ptr %1, i64 %i.abb
  %i.aco = getelementptr i8, ptr %i.acn, i64 %i.zq
  %i.acp = getelementptr i8, ptr %1, i64 %i.abe
  %i.acq = getelementptr i8, ptr %i.acp, i64 %i.zq
  %i.acr = getelementptr i8, ptr %1, i64 %i.abh
  %i.acs = getelementptr i8, ptr %i.acr, i64 %i.zq
  %i.act = getelementptr i8, ptr %1, i64 %i.abk
  %i.acu = getelementptr i8, ptr %i.act, i64 %i.zq
  %i.acv = getelementptr i8, ptr %1, i64 %i.abn
  %i.acw = getelementptr i8, ptr %i.acv, i64 %i.zq
  br label %.lr.ph1081.split.us.i

.lr.ph1081.split.us.i:                            ; preds = %._crit_edge.us1085.i, %.lr.ph1081.split.us.preheader.i
  %indvar62 = phi i64 [ %indvar.next63, %._crit_edge.us1085.i ], [ 0, %.lr.ph1081.split.us.preheader.i ] ; 3 uses
  %.31079.us.i = phi i64 [ %i.amx, %._crit_edge.us1085.i ], [ %.2.i, %.lr.ph1081.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13, !noalias !155
  %i.acx = mul nsw i64 %.31079.us.i, %i.f
  %i.acy = getelementptr inbounds [136 x i8], ptr %4, i64 %i.acx ; 2 uses
  store ptr %i.acy, ptr %i.c, align 16, !tbaa !21, !noalias !155
  %i.acz = getelementptr inbounds [136 x i8], ptr %i.acy, i64 %i.f ; 2 uses
  store ptr %i.acz, ptr %i.zl, align 8, !tbaa !21, !noalias !155
  %i.ada = getelementptr inbounds [136 x i8], ptr %i.acz, i64 %i.f ; 2 uses
  store ptr %i.ada, ptr %i.zm, align 16, !tbaa !21, !noalias !155
  %i.adb = getelementptr inbounds [136 x i8], ptr %i.ada, i64 %i.f
  store ptr %i.adb, ptr %i.zn, align 8, !tbaa !21, !noalias !155
  %i.adc = shl nsw i64 %.31079.us.i, 2            ; 16 uses
  %i.add = mul i64 %i.adc, %2
  %i.ade = or disjoint i64 %i.adc, 1
  %i.adf = mul i64 %i.ade, %2
  %i.adg = or disjoint i64 %i.adc, 2
  %i.adh = mul i64 %i.adg, %2
  %i.adi = or disjoint i64 %i.adc, 3
  %i.adj = mul i64 %i.adi, %2
  %i.adk = add nsw i64 %i.adc, 4
  %i.adl = mul i64 %i.adk, %2
  %i.adm = add nsw i64 %i.adc, 5
  %i.adn = mul i64 %i.adm, %2
  %i.ado = add nsw i64 %i.adc, 6
  %i.adp = mul i64 %i.ado, %2
  %i.adq = add nsw i64 %i.adc, 7
  %i.adr = mul i64 %i.adq, %2
  %i.ads = add nsw i64 %i.adc, 8
  %i.adt = mul i64 %i.ads, %2
  %i.adu = add nsw i64 %i.adc, 9
  %i.adv = mul i64 %i.adu, %2
  %i.adw = add nsw i64 %i.adc, 10
  %i.adx = mul i64 %i.adw, %2
  %i.ady = add nsw i64 %i.adc, 11
  %i.adz = mul i64 %i.ady, %2
  %i.aea = add nsw i64 %i.adc, 12
  %i.aeb = mul i64 %i.aea, %2
  %i.aec = add nsw i64 %i.adc, 13
  %i.aed = mul i64 %i.aec, %2
  %i.aee = add nsw i64 %i.adc, 14
  %i.aef = mul i64 %i.aee, %2
  %i.aeg = add nsw i64 %i.adc, 15
  %i.aeh = mul i64 %i.aeg, %2
  br i1 %i.zf, label %.preheader1015.us.i.us, label %.preheader1015.us.i.preheader

.preheader1015.us.i.preheader:                    ; preds = %.lr.ph1081.split.us.i
  %i.aei = mul i64 %i.zr, %indvar62               ; 16 uses
  %scevgep64 = getelementptr i8, ptr %i.abs, i64 %i.aei
  %scevgep65 = getelementptr i8, ptr %i.abu, i64 %i.aei
  %scevgep66 = getelementptr i8, ptr %i.abw, i64 %i.aei
  %scevgep67 = getelementptr i8, ptr %i.aby, i64 %i.aei
  %scevgep68 = getelementptr i8, ptr %i.aca, i64 %i.aei
  %scevgep69 = getelementptr i8, ptr %i.acc, i64 %i.aei
  %scevgep70 = getelementptr i8, ptr %i.ace, i64 %i.aei
end_hunk_4
begin_hunk_5_@ggml_gemm_iq4_nl_8x8_q8_0:bb.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep85.3, i8 0, i64 %i.ani, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep86.3, i8 0, i64 %i.ani, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  %indvar.next82.3 = add nuw i64 %indvar81, 4     ; 2 uses
  %niter172.next.3 = add i64 %niter172, 4         ; 2 uses
  %niter172.ncmp.3 = icmp eq i64 %niter172.next.3, %unroll_iter171
  br i1 %niter172.ncmp.3, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit.loopexit158.unr-lcssa, label %.lr.ph1100.i, !llvm.loop !150

_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit.loopexit158.unr-lcssa: ; preds = %.lr.ph1100.i
  %lcmp.mod169.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod169.not, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit, label %.lr.ph1100.i.epil.preheader

.lr.ph1100.i.epil.preheader:                      ; preds = %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit.loopexit158.unr-lcssa, %.lr.ph1100.i.preheader
  %indvar81.epil.init = phi i64 [ 0, %.lr.ph1100.i.preheader ], [ %indvar.next82.3, %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit.loopexit158.unr-lcssa ]
  %lcmp.mod170 = icmp ne i64 %xtraiter167, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph1100.i.epil

.lr.ph1100.i.epil:                                ; preds = %.lr.ph1100.i.epil, %.lr.ph1100.i.epil.preheader
  %indvar81.epil = phi i64 [ %indvar81.epil.init, %.lr.ph1100.i.epil.preheader ], [ %indvar.next82.epil, %.lr.ph1100.i.epil ] ; 2 uses
  %epil.iter168 = phi i64 [ 0, %.lr.ph1100.i.epil.preheader ], [ %epil.iter168.next, %.lr.ph1100.i.epil ]
  %i.axb = mul i64 %i.ang, %indvar81.epil         ; 4 uses
  %scevgep86.epil = getelementptr i8, ptr %i.anu, i64 %i.axb
  %scevgep85.epil = getelementptr i8, ptr %i.anw, i64 %i.axb
  %scevgep84.epil = getelementptr i8, ptr %i.any, i64 %i.axb
  %scevgep83.epil = getelementptr i8, ptr %i.aoa, i64 %i.axb
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep83.epil, i8 0, i64 %i.ani, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep84.epil, i8 0, i64 %i.ani, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep85.epil, i8 0, i64 %i.ani, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep86.epil, i8 0, i64 %i.ani, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  %indvar.next82.epil = add nuw i64 %indvar81.epil, 1
  %epil.iter168.next = add i64 %epil.iter168, 1   ; 2 uses
  %epil.iter168.cmp.not = icmp eq i64 %epil.iter168.next, %xtraiter167
  br i1 %epil.iter168.cmp.not, label %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit, label %.lr.ph1100.i.epil, !llvm.loop !151

_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit: ; preds = %_ZL28gemm_q4_b32_8x8_q8_0_lut_avxI14block_iq4_nlx8EviPfmPKvS3_iiDv4_x.exit.loopexit158.unr-lcssa, %.lr.ph1100.i.epil, %._crit_edge.split.us.us.i, %.preheader1013.i, %.lr.ph1104.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @ggml_gemm_mxfp4_8x8_q8_0(i32 noundef %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 7 uses
  %i.b = alloca [16 x <16 x float>], align 64     ; 20 uses
  %i.c = alloca [4 x ptr], align 16               ; 7 uses
  %i.d = alloca [16 x <8 x float>], align 32      ; 20 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.e = sdiv i32 %0, 32
  %i.f = sext i32 %i.e to i64                     ; 20 uses
  %i.g = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.h = insertelement <2 x i32> %i.g, i32 %6, i64 1
  %i.i = srem <2 x i32> %i.h, splat (i32 16)      ; 2 uses
  %i.j = extractelement <2 x i32> %i.i, i64 0
  %i.k = sub nsw i32 %5, %i.j                     ; 2 uses
  %i.l = extractelement <2 x i32> %i.i, i64 1     ; 2 uses
  %i.m = sub nsw i32 %6, %i.l                     ; 5 uses
  %i.n = sdiv i32 %i.k, 4
  %i.o = sext i32 %i.n to i64                     ; 5 uses
  %i.p = icmp sgt i32 %i.k, 3
  br i1 %i.p, label %.lr.ph1117.i, label %.preheader1103.i

.lr.ph1117.i:                                     ; preds = %bb.a
  %i.q = sdiv i32 %i.m, 8
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = icmp sgt i32 %i.m, 7
  %i.t = icmp sgt i32 %0, 31
  br i1 %i.s, label %.lr.ph1117.split.us.preheader.i, label %.lr.ph1117.split.i.preheader

.lr.ph1117.split.i.preheader:                     ; preds = %.lr.ph1117.i
  %smax = tail call i64 @llvm.smax.i64(i64 %i.o, i64 4)
  %i.u = add nsw i64 %smax, -1
  %i.v = and i64 %i.u, -4
  %i.w = add nuw nsw i64 %i.v, 4
  br label %.preheader1103.i

.lr.ph1117.split.us.preheader.i:                  ; preds = %.lr.ph1117.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.phi.trans.insert1307.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.phi.trans.insert1309.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.phi.trans.insert1311.i = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %.phi.trans.insert1313.i = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %.phi.trans.insert1315.i = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  %.phi.trans.insert1317.i = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %.phi.trans.insert1319.i = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %.phi.trans.insert1321.i = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %.phi.trans.insert1323.i = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %.phi.trans.insert1325.i = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %.phi.trans.insert1327.i = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %.phi.trans.insert1329.i = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %.phi.trans.insert1331.i = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  %.phi.trans.insert1333.i = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  %i.aa = shl i64 %2, 6
  %i.ab = shl nuw nsw i64 %i.r, 5
  %i.ac = add nsw i64 %i.ab, -32
  %i.ad = and i64 %i.ac, -64
  %i.ae = add nsw i64 %i.ad, 64                   ; 16 uses
  %i.af = shl i64 %2, 2
  %i.ag = shl i64 %2, 3
  %i.ah = mul i64 %2, 12
  %i.ai = shl i64 %2, 4
  %i.aj = mul i64 %2, 20
  %i.ak = mul i64 %2, 24
  %i.al = mul i64 %2, 28
  %i.am = shl i64 %2, 5
  %i.an = mul i64 %2, 36
  %i.ao = mul i64 %2, 40
  %i.ap = mul i64 %2, 44
  %i.aq = mul i64 %2, 48
  %i.ar = mul i64 %2, 52
  %i.as = mul i64 %2, 56
  %i.at = mul i64 %2, 60
  %smax55 = tail call i64 @llvm.smax.i64(i64 %i.o, i64 4)
  %i.au = add nsw i64 %smax55, -1
  %i.av = lshr i64 %i.au, 2
  %i.aw = getelementptr i8, ptr %1, i64 %i.af
  %i.ax = getelementptr i8, ptr %1, i64 %i.ag
  %i.ay = getelementptr i8, ptr %1, i64 %i.ah
  %i.az = getelementptr i8, ptr %1, i64 %i.ai
  %i.ba = getelementptr i8, ptr %1, i64 %i.aj
  %i.bb = getelementptr i8, ptr %1, i64 %i.ak
  %i.bc = getelementptr i8, ptr %1, i64 %i.al
  %i.bd = getelementptr i8, ptr %1, i64 %i.am
  %i.be = getelementptr i8, ptr %1, i64 %i.an
  %i.bf = getelementptr i8, ptr %1, i64 %i.ao
  %i.bg = getelementptr i8, ptr %1, i64 %i.ap
  %i.bh = getelementptr i8, ptr %1, i64 %i.aq
  %i.bi = getelementptr i8, ptr %1, i64 %i.ar
  %i.bj = getelementptr i8, ptr %1, i64 %i.as
  %i.bk = getelementptr i8, ptr %1, i64 %i.at
  br label %.lr.ph1117.split.us.i

.lr.ph1117.split.us.i:                            ; preds = %._crit_edge.us.i, %.lr.ph1117.split.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i ], [ 0, %.lr.ph1117.split.us.preheader.i ] ; 3 uses
  %.010701115.us.i = phi i64 [ %i.ne, %._crit_edge.us.i ], [ 0, %.lr.ph1117.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !182
  %i.bl = mul nsw i64 %.010701115.us.i, %i.f
  %i.bm = getelementptr inbounds [136 x i8], ptr %4, i64 %i.bl ; 2 uses
  store ptr %i.bm, ptr %i.a, align 16, !tbaa !21, !noalias !182
  %i.bn = getelementptr inbounds [136 x i8], ptr %i.bm, i64 %i.f ; 2 uses
  store ptr %i.bn, ptr %i.x, align 8, !tbaa !21, !noalias !182
  %i.bo = getelementptr inbounds [136 x i8], ptr %i.bn, i64 %i.f ; 2 uses
  store ptr %i.bo, ptr %i.y, align 16, !tbaa !21, !noalias !182
  %i.bp = getelementptr inbounds [136 x i8], ptr %i.bo, i64 %i.f
  store ptr %i.bp, ptr %i.z, align 8, !tbaa !21, !noalias !182
  %i.bq = shl nuw nsw i64 %.010701115.us.i, 2     ; 16 uses
  %i.br = mul i64 %i.bq, %2
  %i.bs = or disjoint i64 %i.bq, 1
  %i.bt = mul i64 %i.bs, %2
  %i.bu = or disjoint i64 %i.bq, 2
  %i.bv = mul i64 %i.bu, %2
  %i.bw = or disjoint i64 %i.bq, 3
  %i.bx = mul i64 %i.bw, %2
  %i.by = or disjoint i64 %i.bq, 4
  %i.bz = mul i64 %i.by, %2
  %i.ca = or disjoint i64 %i.bq, 5
  %i.cb = mul i64 %i.ca, %2
  %i.cc = or disjoint i64 %i.bq, 6
  %i.cd = mul i64 %i.cc, %2
  %i.ce = or disjoint i64 %i.bq, 7
  %i.cf = mul i64 %i.ce, %2
  %i.cg = or disjoint i64 %i.bq, 8
  %i.ch = mul i64 %i.cg, %2
  %i.ci = or disjoint i64 %i.bq, 9
  %i.cj = mul i64 %i.ci, %2
  %i.ck = or disjoint i64 %i.bq, 10
  %i.cl = mul i64 %i.ck, %2
  %i.cm = or disjoint i64 %i.bq, 11
  %i.cn = mul i64 %i.cm, %2
  %i.co = or disjoint i64 %i.bq, 12
  %i.cp = mul i64 %i.co, %2
  %i.cq = or disjoint i64 %i.bq, 13
  %i.cr = mul i64 %i.cq, %2
  %i.cs = or disjoint i64 %i.bq, 14
  %i.ct = mul i64 %i.cs, %2
  %i.cu = or disjoint i64 %i.bq, 15
  %i.cv = mul i64 %i.cu, %2
  br i1 %i.t, label %.preheader1105.us.i.us, label %.preheader1105.us.i.preheader

.preheader1105.us.i.preheader:                    ; preds = %.lr.ph1117.split.us.i
  %i.cw = mul i64 %i.aa, %indvar                  ; 16 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.cw
  %scevgep40 = getelementptr i8, ptr %i.aw, i64 %i.cw
  %scevgep41 = getelementptr i8, ptr %i.ax, i64 %i.cw
  %scevgep42 = getelementptr i8, ptr %i.ay, i64 %i.cw
  %scevgep43 = getelementptr i8, ptr %i.az, i64 %i.cw
  %scevgep44 = getelementptr i8, ptr %i.ba, i64 %i.cw
  %scevgep45 = getelementptr i8, ptr %i.bb, i64 %i.cw
  %scevgep46 = getelementptr i8, ptr %i.bc, i64 %i.cw
  %scevgep47 = getelementptr i8, ptr %i.bd, i64 %i.cw
  %scevgep48 = getelementptr i8, ptr %i.be, i64 %i.cw
  %scevgep49 = getelementptr i8, ptr %i.bf, i64 %i.cw
  %scevgep50 = getelementptr i8, ptr %i.bg, i64 %i.cw
  %scevgep51 = getelementptr i8, ptr %i.bh, i64 %i.cw
  %scevgep52 = getelementptr i8, ptr %i.bi, i64 %i.cw
  %scevgep53 = getelementptr i8, ptr %i.bj, i64 %i.cw
  %scevgep54 = getelementptr i8, ptr %i.bk, i64 %i.cw
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep40, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep41, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep42, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep43, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep44, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep45, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep46, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep47, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep48, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep49, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep50, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep51, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep52, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep54, i8 0, i64 range(i64 0, 8589934593) %i.ae, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  br label %._crit_edge.us.i

.preheader1105.us.i.us:                           ; preds = %.lr.ph1117.split.us.i, %.preheader1104.us.loopexit.i.us
  %.010731113.us.i.us = phi i64 [ %i.nc, %.preheader1104.us.loopexit.i.us ], [ 0, %.lr.ph1117.split.us.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13, !noalias !182
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false), !tbaa !9, !noalias !182
  %i.cx = mul nuw nsw i64 %.010731113.us.i.us, %i.f
  %i.cy = getelementptr inbounds nuw [136 x i8], ptr %3, i64 %i.cx
  %i.cz = or disjoint i64 %.010731113.us.i.us, 1
  %i.da = mul nuw nsw i64 %i.cz, %i.f
  %i.db = getelementptr inbounds nuw [136 x i8], ptr %3, i64 %i.da
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %.preheader1105.us.i.us, %bb.c
  %.010751111.us.i.us = phi i64 [ %i.nb, %bb.c ], [ 0, %.preheader1105.us.i.us ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [136 x i8], ptr %i.cy, i64 %.010751111.us.i.us ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load <16 x i32>, ptr %i.dd, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  %i.dg = load <16 x i32>, ptr %i.df, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.dh = getelementptr inbounds nuw [136 x i8], ptr %i.db, i64 %.010751111.us.i.us ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load <16 x i32>, ptr %i.di, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  %i.dl = load <16 x i32>, ptr %i.dk, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.dm = shufflevector <16 x i32> %i.de, <16 x i32> %i.dj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dn = shufflevector <16 x i32> %i.de, <16 x i32> %i.dj, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.do = shufflevector <16 x i32> %i.dg, <16 x i32> %i.dl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.dp = shufflevector <16 x i32> %i.dg, <16 x i32> %i.dl, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.dq = bitcast <16 x i32> %i.dm to <64 x i8>
  %i.dr = and <64 x i8> %i.dq, splat (i8 15)
  %i.ds = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.dr) ; 2 uses
  %i.dt = bitcast <16 x i32> %i.dn to <64 x i8>
  %i.du = and <64 x i8> %i.dt, splat (i8 15)
  %i.dv = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.du) ; 2 uses
  %i.dw = bitcast <16 x i32> %i.do to <64 x i8>
  %i.dx = and <64 x i8> %i.dw, splat (i8 15)
  %i.dy = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.dx) ; 2 uses
  %i.dz = bitcast <16 x i32> %i.dp to <64 x i8>
  %i.ea = and <64 x i8> %i.dz, splat (i8 15)
  %i.eb = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.ea) ; 2 uses
  %i.ec = bitcast <16 x i32> %i.dm to <32 x i16>
  %i.ed = lshr <32 x i16> %i.ec, splat (i16 4)
  %i.ee = bitcast <32 x i16> %i.ed to <64 x i8>
  %i.ef = and <64 x i8> %i.ee, splat (i8 15)
  %i.eg = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.ef) ; 2 uses
  %i.eh = bitcast <16 x i32> %i.dn to <32 x i16>
  %i.ei = lshr <32 x i16> %i.eh, splat (i16 4)
  %i.ej = bitcast <32 x i16> %i.ei to <64 x i8>
  %i.ek = and <64 x i8> %i.ej, splat (i8 15)
  %i.el = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.ek) ; 2 uses
  %i.em = bitcast <16 x i32> %i.do to <32 x i16>
  %i.en = lshr <32 x i16> %i.em, splat (i16 4)
  %i.eo = bitcast <32 x i16> %i.en to <64 x i8>
  %i.ep = and <64 x i8> %i.eo, splat (i8 15)
  %i.eq = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.ep) ; 2 uses
  %i.er = bitcast <16 x i32> %i.dp to <32 x i16>
  %i.es = lshr <32 x i16> %i.er, splat (i16 4)
  %i.et = bitcast <32 x i16> %i.es to <64 x i8>
  %i.eu = and <64 x i8> %i.et, splat (i8 15)
  %i.ev = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <64 x i8> %i.eu) ; 2 uses
  %i.ew = load <8 x i8>, ptr %i.dh, align 1, !tbaa !9, !alias.scope !180, !noalias !184
  %i.ex = load <8 x i8>, ptr %i.dc, align 1, !tbaa !9, !alias.scope !180, !noalias !184
  %i.ey = shufflevector <8 x i8> %i.ex, <8 x i8> %i.ew, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ez = zext <16 x i8> %i.ey to <16 x i64>
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_e8m0_half, <16 x i64> %i.ez
  %i.fb = tail call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %i.fa, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !13, !noalias !182 ; 4 uses
  %i.fc = shufflevector <64 x i8> %i.eq, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fd = sub <64 x i8> zeroinitializer, %i.fc    ; 2 uses
  %i.fe = shufflevector <64 x i8> %i.eg, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.ff = sub <64 x i8> zeroinitializer, %i.fe    ; 2 uses
  %i.fg = shufflevector <64 x i8> %i.dy, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fh = sub <64 x i8> zeroinitializer, %i.fg    ; 2 uses
  %i.fi = shufflevector <64 x i8> %i.ds, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fj = sub <64 x i8> zeroinitializer, %i.fi    ; 2 uses
  %i.fk = shufflevector <64 x i8> %i.ev, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fl = sub <64 x i8> zeroinitializer, %i.fk    ; 2 uses
  %i.fm = shufflevector <64 x i8> %i.el, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fn = sub <64 x i8> zeroinitializer, %i.fm    ; 2 uses
  %i.fo = shufflevector <64 x i8> %i.eb, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fp = sub <64 x i8> zeroinitializer, %i.fo    ; 2 uses
  %i.fq = shufflevector <64 x i8> %i.dv, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.fr = sub <64 x i8> zeroinitializer, %i.fq    ; 2 uses
  %i.fs = shufflevector <64 x i8> %i.eq, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.ft = sub <64 x i8> zeroinitializer, %i.fs    ; 2 uses
  %i.fu = shufflevector <64 x i8> %i.eg, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fv = sub <64 x i8> zeroinitializer, %i.fu    ; 2 uses
  %i.fw = shufflevector <64 x i8> %i.dy, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fx = sub <64 x i8> zeroinitializer, %i.fw    ; 2 uses
  %i.fy = shufflevector <64 x i8> %i.ds, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.fz = sub <64 x i8> zeroinitializer, %i.fy    ; 2 uses
  %i.ga = shufflevector <64 x i8> %i.ev, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.gb = sub <64 x i8> zeroinitializer, %i.ga    ; 2 uses
  %i.gc = shufflevector <64 x i8> %i.el, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.gd = sub <64 x i8> zeroinitializer, %i.gc    ; 2 uses
  %i.ge = shufflevector <64 x i8> %i.eb, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.gf = sub <64 x i8> zeroinitializer, %i.ge    ; 2 uses
  %i.gg = shufflevector <64 x i8> %i.dv, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.gh = sub <64 x i8> zeroinitializer, %i.gg    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.b ], [ 0, %.lr.ph.us.i.us ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !21, !noalias !182
  %i.gk = getelementptr inbounds nuw [136 x i8], ptr %i.gj, i64 %.010751111.us.i.us ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = load <8 x i32>, ptr %i.gl, align 1, !tbaa !9, !noalias !185 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.go = load <8 x i32>, ptr %i.gn, align 1, !tbaa !9, !noalias !185 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 72
  %i.gq = load <8 x i32>, ptr %i.gp, align 1, !tbaa !9, !noalias !185 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 104
  %i.gs = load <8 x i32>, ptr %i.gr, align 1, !tbaa !9, !noalias !185 ; 4 uses
  %i.gt = bitcast <8 x i32> %i.gs to <32 x i8>
  %i.gu = shufflevector <32 x i8> %i.gt, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.gv = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.gu, i1 false) ; 2 uses
  %i.gw = icmp slt <64 x i8> %i.gu, zeroinitializer ; 2 uses
  %i.gx = select <64 x i1> %i.gw, <64 x i8> %i.fd, <64 x i8> %i.fc
  %i.gy = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.gv, <64 x i8> %i.gx)
  %i.gz = bitcast <8 x i32> %i.gq to <32 x i8>
  %i.ha = shufflevector <32 x i8> %i.gz, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.hb = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ha, i1 false) ; 2 uses
  %i.hc = icmp slt <64 x i8> %i.ha, zeroinitializer ; 2 uses
  %i.hd = select <64 x i1> %i.hc, <64 x i8> %i.ff, <64 x i8> %i.fe
  %i.he = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gy, <64 x i8> %i.hb, <64 x i8> %i.hd)
  %i.hf = bitcast <8 x i32> %i.go to <32 x i8>
  %i.hg = shufflevector <32 x i8> %i.hf, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.hh = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.hg, i1 false) ; 2 uses
  %i.hi = icmp slt <64 x i8> %i.hg, zeroinitializer ; 2 uses
  %i.hj = select <64 x i1> %i.hi, <64 x i8> %i.fh, <64 x i8> %i.fg
  %i.hk = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.he, <64 x i8> %i.hh, <64 x i8> %i.hj)
  %i.hl = bitcast <8 x i32> %i.gm to <32 x i8>
  %i.hm = shufflevector <32 x i8> %i.hl, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.hn = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.hm, i1 false) ; 2 uses
  %i.ho = icmp slt <64 x i8> %i.hm, zeroinitializer ; 2 uses
  %i.hp = select <64 x i1> %i.ho, <64 x i8> %i.fj, <64 x i8> %i.fi
  %i.hq = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hk, <64 x i8> %i.hn, <64 x i8> %i.hp)
  %i.hr = select <64 x i1> %i.gw, <64 x i8> %i.fl, <64 x i8> %i.fk
  %i.hs = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.gv, <64 x i8> %i.hr)
  %i.ht = select <64 x i1> %i.hc, <64 x i8> %i.fn, <64 x i8> %i.fm
  %i.hu = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hs, <64 x i8> %i.hb, <64 x i8> %i.ht)
  %i.hv = select <64 x i1> %i.hi, <64 x i8> %i.fp, <64 x i8> %i.fo
  %i.hw = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hu, <64 x i8> %i.hh, <64 x i8> %i.hv)
  %i.hx = select <64 x i1> %i.ho, <64 x i8> %i.fr, <64 x i8> %i.fq
  %i.hy = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hw, <64 x i8> %i.hn, <64 x i8> %i.hx)
  %i.hz = bitcast <8 x i32> %i.gs to <32 x i8>
  %i.ia = shufflevector <32 x i8> %i.hz, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ib = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ia, i1 false) ; 2 uses
  %i.ic = icmp slt <64 x i8> %i.ia, zeroinitializer ; 2 uses
  %i.id = select <64 x i1> %i.ic, <64 x i8> %i.fd, <64 x i8> %i.fc
  %i.ie = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ib, <64 x i8> %i.id)
  %i.if = bitcast <8 x i32> %i.gq to <32 x i8>
  %i.ig = shufflevector <32 x i8> %i.if, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ih = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ig, i1 false) ; 2 uses
  %i.ii = icmp slt <64 x i8> %i.ig, zeroinitializer ; 2 uses
  %i.ij = select <64 x i1> %i.ii, <64 x i8> %i.ff, <64 x i8> %i.fe
  %i.ik = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ie, <64 x i8> %i.ih, <64 x i8> %i.ij)
  %i.il = bitcast <8 x i32> %i.go to <32 x i8>
  %i.im = shufflevector <32 x i8> %i.il, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.in = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.im, i1 false) ; 2 uses
  %i.io = icmp slt <64 x i8> %i.im, zeroinitializer ; 2 uses
  %i.ip = select <64 x i1> %i.io, <64 x i8> %i.fh, <64 x i8> %i.fg
  %i.iq = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ik, <64 x i8> %i.in, <64 x i8> %i.ip)
  %i.ir = bitcast <8 x i32> %i.gm to <32 x i8>
  %i.is = shufflevector <32 x i8> %i.ir, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.it = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.is, i1 false) ; 2 uses
  %i.iu = icmp slt <64 x i8> %i.is, zeroinitializer ; 2 uses
  %i.iv = select <64 x i1> %i.iu, <64 x i8> %i.fj, <64 x i8> %i.fi
  %i.iw = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.iq, <64 x i8> %i.it, <64 x i8> %i.iv)
  %i.ix = select <64 x i1> %i.ic, <64 x i8> %i.fl, <64 x i8> %i.fk
  %i.iy = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ib, <64 x i8> %i.ix)
  %i.iz = select <64 x i1> %i.ii, <64 x i8> %i.fn, <64 x i8> %i.fm
  %i.ja = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.iy, <64 x i8> %i.ih, <64 x i8> %i.iz)
  %i.jb = select <64 x i1> %i.io, <64 x i8> %i.fp, <64 x i8> %i.fo
  %i.jc = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ja, <64 x i8> %i.in, <64 x i8> %i.jb)
  %i.jd = select <64 x i1> %i.iu, <64 x i8> %i.fr, <64 x i8> %i.fq
  %i.je = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jc, <64 x i8> %i.it, <64 x i8> %i.jd)
  %i.jf = bitcast <8 x i32> %i.gs to <32 x i8>
  %i.jg = shufflevector <32 x i8> %i.jf, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.jh = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jg, i1 false) ; 2 uses
  %i.ji = icmp slt <64 x i8> %i.jg, zeroinitializer ; 2 uses
  %i.jj = select <64 x i1> %i.ji, <64 x i8> %i.ft, <64 x i8> %i.fs
  %i.jk = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.jh, <64 x i8> %i.jj)
  %i.jl = bitcast <8 x i32> %i.gq to <32 x i8>
  %i.jm = shufflevector <32 x i8> %i.jl, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.jn = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jm, i1 false) ; 2 uses
  %i.jo = icmp slt <64 x i8> %i.jm, zeroinitializer ; 2 uses
  %i.jp = select <64 x i1> %i.jo, <64 x i8> %i.fv, <64 x i8> %i.fu
  %i.jq = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jk, <64 x i8> %i.jn, <64 x i8> %i.jp)
  %i.jr = bitcast <8 x i32> %i.go to <32 x i8>
  %i.js = shufflevector <32 x i8> %i.jr, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.jt = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.js, i1 false) ; 2 uses
  %i.ju = icmp slt <64 x i8> %i.js, zeroinitializer ; 2 uses
  %i.jv = select <64 x i1> %i.ju, <64 x i8> %i.fx, <64 x i8> %i.fw
  %i.jw = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.jq, <64 x i8> %i.jt, <64 x i8> %i.jv)
  %i.jx = bitcast <8 x i32> %i.gm to <32 x i8>
  %i.jy = shufflevector <32 x i8> %i.jx, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.jz = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.jy, i1 false) ; 2 uses
  %i.ka = icmp slt <64 x i8> %i.jy, zeroinitializer ; 2 uses
end_hunk_5
begin_hunk_6_@ggml_gemm_mxfp4_8x8_q8_0:bb.a
  %i.sg = shufflevector <64 x i8> %i.pz, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sh = sub <64 x i8> zeroinitializer, %i.sg    ; 2 uses
  %i.si = select <64 x i1> %i.sf, <64 x i8> %i.sh, <64 x i8> %i.sg
  %i.sj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sb, <64 x i8> %i.se, <64 x i8> %i.si)
  %i.sk = bitcast <8 x i32> %i.rf to <32 x i8>
  %i.sl = shufflevector <32 x i8> %i.sk, <32 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.sm = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.sl, i1 false) ; 2 uses
  %i.sn = icmp slt <64 x i8> %i.sl, zeroinitializer ; 2 uses
  %i.so = shufflevector <64 x i8> %i.pt, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sp = sub <64 x i8> zeroinitializer, %i.so    ; 2 uses
  %i.sq = select <64 x i1> %i.sn, <64 x i8> %i.sp, <64 x i8> %i.so
  %i.sr = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sj, <64 x i8> %i.sm, <64 x i8> %i.sq)
  %i.ss = shufflevector <64 x i8> %i.qw, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.st = sub <64 x i8> zeroinitializer, %i.ss    ; 2 uses
  %i.su = select <64 x i1> %i.rp, <64 x i8> %i.st, <64 x i8> %i.ss
  %i.sv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.ro, <64 x i8> %i.su)
  %i.sw = shufflevector <64 x i8> %i.qm, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.sx = sub <64 x i8> zeroinitializer, %i.sw    ; 2 uses
  %i.sy = select <64 x i1> %i.rx, <64 x i8> %i.sx, <64 x i8> %i.sw
  %i.sz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sv, <64 x i8> %i.rw, <64 x i8> %i.sy)
  %i.ta = shufflevector <64 x i8> %i.qc, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.tb = sub <64 x i8> zeroinitializer, %i.ta    ; 2 uses
  %i.tc = select <64 x i1> %i.sf, <64 x i8> %i.tb, <64 x i8> %i.ta
  %i.td = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.sz, <64 x i8> %i.se, <64 x i8> %i.tc)
  %i.te = shufflevector <64 x i8> %i.pw, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 32, i32 33, i32 34, i32 35, i32 40, i32 41, i32 42, i32 43, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59, i32 48, i32 49, i32 50, i32 51, i32 56, i32 57, i32 58, i32 59> ; 3 uses
  %i.tf = sub <64 x i8> zeroinitializer, %i.te    ; 2 uses
  %i.tg = select <64 x i1> %i.sn, <64 x i8> %i.tf, <64 x i8> %i.te
  %i.th = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.td, <64 x i8> %i.sm, <64 x i8> %i.tg)
  %i.ti = bitcast <8 x i32> %i.rl to <32 x i8>
  %i.tj = shufflevector <32 x i8> %i.ti, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.tk = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tj, i1 false) ; 2 uses
  %i.tl = icmp slt <64 x i8> %i.tj, zeroinitializer ; 2 uses
  %i.tm = select <64 x i1> %i.tl, <64 x i8> %i.rr, <64 x i8> %i.rq
  %i.tn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.tk, <64 x i8> %i.tm)
  %i.to = bitcast <8 x i32> %i.rj to <32 x i8>
  %i.tp = shufflevector <32 x i8> %i.to, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.tq = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tp, i1 false) ; 2 uses
  %i.tr = icmp slt <64 x i8> %i.tp, zeroinitializer ; 2 uses
  %i.ts = select <64 x i1> %i.tr, <64 x i8> %i.rz, <64 x i8> %i.ry
  %i.tt = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tn, <64 x i8> %i.tq, <64 x i8> %i.ts)
  %i.tu = bitcast <8 x i32> %i.rh to <32 x i8>
  %i.tv = shufflevector <32 x i8> %i.tu, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.tw = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.tv, i1 false) ; 2 uses
  %i.tx = icmp slt <64 x i8> %i.tv, zeroinitializer ; 2 uses
  %i.ty = select <64 x i1> %i.tx, <64 x i8> %i.sh, <64 x i8> %i.sg
  %i.tz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tt, <64 x i8> %i.tw, <64 x i8> %i.ty)
  %i.ua = bitcast <8 x i32> %i.rf to <32 x i8>
  %i.ub = shufflevector <32 x i8> %i.ua, <32 x i8> poison, <64 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.uc = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ub, i1 false) ; 2 uses
  %i.ud = icmp slt <64 x i8> %i.ub, zeroinitializer ; 2 uses
  %i.ue = select <64 x i1> %i.ud, <64 x i8> %i.sp, <64 x i8> %i.so
  %i.uf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.tz, <64 x i8> %i.uc, <64 x i8> %i.ue)
  %i.ug = select <64 x i1> %i.tl, <64 x i8> %i.st, <64 x i8> %i.ss
  %i.uh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.tk, <64 x i8> %i.ug)
  %i.ui = select <64 x i1> %i.tr, <64 x i8> %i.sx, <64 x i8> %i.sw
  %i.uj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.uh, <64 x i8> %i.tq, <64 x i8> %i.ui)
  %i.uk = select <64 x i1> %i.tx, <64 x i8> %i.tb, <64 x i8> %i.ta
  %i.ul = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.uj, <64 x i8> %i.tw, <64 x i8> %i.uk)
  %i.um = select <64 x i1> %i.ud, <64 x i8> %i.tf, <64 x i8> %i.te
  %i.un = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ul, <64 x i8> %i.uc, <64 x i8> %i.um)
  %i.uo = bitcast <8 x i32> %i.rl to <32 x i8>
  %i.up = shufflevector <32 x i8> %i.uo, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.uq = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.up, i1 false) ; 2 uses
  %i.ur = icmp slt <64 x i8> %i.up, zeroinitializer ; 2 uses
  %i.us = shufflevector <64 x i8> %i.qr, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.ut = sub <64 x i8> zeroinitializer, %i.us    ; 2 uses
  %i.uu = select <64 x i1> %i.ur, <64 x i8> %i.ut, <64 x i8> %i.us
  %i.uv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.uq, <64 x i8> %i.uu)
  %i.uw = bitcast <8 x i32> %i.rj to <32 x i8>
  %i.ux = shufflevector <32 x i8> %i.uw, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.uy = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.ux, i1 false) ; 2 uses
  %i.uz = icmp slt <64 x i8> %i.ux, zeroinitializer ; 2 uses
  %i.va = shufflevector <64 x i8> %i.qh, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vb = sub <64 x i8> zeroinitializer, %i.va    ; 2 uses
  %i.vc = select <64 x i1> %i.uz, <64 x i8> %i.vb, <64 x i8> %i.va
  %i.vd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.uv, <64 x i8> %i.uy, <64 x i8> %i.vc)
  %i.ve = bitcast <8 x i32> %i.rh to <32 x i8>
  %i.vf = shufflevector <32 x i8> %i.ve, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.vg = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.vf, i1 false) ; 2 uses
  %i.vh = icmp slt <64 x i8> %i.vf, zeroinitializer ; 2 uses
  %i.vi = shufflevector <64 x i8> %i.pz, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vj = sub <64 x i8> zeroinitializer, %i.vi    ; 2 uses
  %i.vk = select <64 x i1> %i.vh, <64 x i8> %i.vj, <64 x i8> %i.vi
  %i.vl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vd, <64 x i8> %i.vg, <64 x i8> %i.vk)
  %i.vm = bitcast <8 x i32> %i.rf to <32 x i8>
  %i.vn = shufflevector <32 x i8> %i.vm, <32 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.vo = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.vn, i1 false) ; 2 uses
  %i.vp = icmp slt <64 x i8> %i.vn, zeroinitializer ; 2 uses
  %i.vq = shufflevector <64 x i8> %i.pt, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vr = sub <64 x i8> zeroinitializer, %i.vq    ; 2 uses
  %i.vs = select <64 x i1> %i.vp, <64 x i8> %i.vr, <64 x i8> %i.vq
  %i.vt = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vl, <64 x i8> %i.vo, <64 x i8> %i.vs)
  %i.vu = shufflevector <64 x i8> %i.qw, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vv = sub <64 x i8> zeroinitializer, %i.vu    ; 2 uses
  %i.vw = select <64 x i1> %i.ur, <64 x i8> %i.vv, <64 x i8> %i.vu
  %i.vx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.uq, <64 x i8> %i.vw)
  %i.vy = shufflevector <64 x i8> %i.qm, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.vz = sub <64 x i8> zeroinitializer, %i.vy    ; 2 uses
  %i.wa = select <64 x i1> %i.uz, <64 x i8> %i.vz, <64 x i8> %i.vy
  %i.wb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.vx, <64 x i8> %i.uy, <64 x i8> %i.wa)
  %i.wc = shufflevector <64 x i8> %i.qc, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.wd = sub <64 x i8> zeroinitializer, %i.wc    ; 2 uses
  %i.we = select <64 x i1> %i.vh, <64 x i8> %i.wd, <64 x i8> %i.wc
  %i.wf = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wb, <64 x i8> %i.vg, <64 x i8> %i.we)
  %i.wg = shufflevector <64 x i8> %i.pw, <64 x i8> poison, <64 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 36, i32 37, i32 38, i32 39, i32 44, i32 45, i32 46, i32 47, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63, i32 52, i32 53, i32 54, i32 55, i32 60, i32 61, i32 62, i32 63> ; 3 uses
  %i.wh = sub <64 x i8> zeroinitializer, %i.wg    ; 2 uses
  %i.wi = select <64 x i1> %i.vp, <64 x i8> %i.wh, <64 x i8> %i.wg
  %i.wj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wf, <64 x i8> %i.vo, <64 x i8> %i.wi)
  %i.wk = bitcast <8 x i32> %i.rl to <32 x i8>
  %i.wl = shufflevector <32 x i8> %i.wk, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.wm = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wl, i1 false) ; 2 uses
  %i.wn = icmp slt <64 x i8> %i.wl, zeroinitializer ; 2 uses
  %i.wo = select <64 x i1> %i.wn, <64 x i8> %i.ut, <64 x i8> %i.us
  %i.wp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.wm, <64 x i8> %i.wo)
  %i.wq = bitcast <8 x i32> %i.rj to <32 x i8>
  %i.wr = shufflevector <32 x i8> %i.wq, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ws = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wr, i1 false) ; 2 uses
  %i.wt = icmp slt <64 x i8> %i.wr, zeroinitializer ; 2 uses
  %i.wu = select <64 x i1> %i.wt, <64 x i8> %i.vb, <64 x i8> %i.va
  %i.wv = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wp, <64 x i8> %i.ws, <64 x i8> %i.wu)
  %i.ww = bitcast <8 x i32> %i.rh to <32 x i8>
  %i.wx = shufflevector <32 x i8> %i.ww, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.wy = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.wx, i1 false) ; 2 uses
  %i.wz = icmp slt <64 x i8> %i.wx, zeroinitializer ; 2 uses
  %i.xa = select <64 x i1> %i.wz, <64 x i8> %i.vj, <64 x i8> %i.vi
  %i.xb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.wv, <64 x i8> %i.wy, <64 x i8> %i.xa)
  %i.xc = bitcast <8 x i32> %i.rf to <32 x i8>
  %i.xd = shufflevector <32 x i8> %i.xc, <32 x i8> poison, <64 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.xe = tail call <64 x i8> @llvm.abs.v64i8(<64 x i8> %i.xd, i1 false) ; 2 uses
  %i.xf = icmp slt <64 x i8> %i.xd, zeroinitializer ; 2 uses
  %i.xg = select <64 x i1> %i.xf, <64 x i8> %i.vr, <64 x i8> %i.vq
  %i.xh = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xb, <64 x i8> %i.xe, <64 x i8> %i.xg)
  %i.xi = select <64 x i1> %i.wn, <64 x i8> %i.vv, <64 x i8> %i.vu
  %i.xj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> zeroinitializer, <64 x i8> %i.wm, <64 x i8> %i.xi)
  %i.xk = select <64 x i1> %i.wt, <64 x i8> %i.vz, <64 x i8> %i.vy
  %i.xl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xj, <64 x i8> %i.ws, <64 x i8> %i.xk)
  %i.xm = select <64 x i1> %i.wz, <64 x i8> %i.wd, <64 x i8> %i.wc
  %i.xn = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xl, <64 x i8> %i.wy, <64 x i8> %i.xm)
  %i.xo = select <64 x i1> %i.xf, <64 x i8> %i.wh, <64 x i8> %i.wg
  %i.xp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.xn, <64 x i8> %i.xe, <64 x i8> %i.xo)
  %i.xq = add <16 x i32> %i.vt, %i.sr             ; 2 uses
  %i.xr = add <16 x i32> %i.wj, %i.th             ; 2 uses
  %i.xs = add <16 x i32> %i.xh, %i.uf             ; 2 uses
  %i.xt = add <16 x i32> %i.xp, %i.un             ; 2 uses
  %i.xu = shufflevector <16 x i32> %i.xq, <16 x i32> %i.xr, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.xv = shufflevector <16 x i32> %i.xq, <16 x i32> %i.xr, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.xw = shufflevector <16 x i32> %i.xs, <16 x i32> %i.xt, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29>
  %i.xx = shufflevector <16 x i32> %i.xs, <16 x i32> %i.xt, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31>
  %i.xy = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.rd, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !alias.scope !181, !noalias !185
  %i.xz = bitcast <4 x i32> %i.xy to <8 x half>
  %i.ya = shufflevector <8 x half> %i.xz, <8 x half> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yb = fpext <16 x half> %i.ya to <16 x float> ; 4 uses
  %i.yc = sitofp <16 x i32> %i.xu to <16 x float>
  %i.yd = shufflevector <16 x float> %i.yb, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12>
  %i.ye = fmul <16 x float> %i.rc, %i.yd
  %i.yf = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.yc, <16 x float> %i.ye, <16 x float> %i.pc) ; 2 uses
  %i.yg = sitofp <16 x i32> %i.xv to <16 x float>
  %i.yh = shufflevector <16 x float> %i.yb, <16 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 13, i32 13, i32 13, i32 13>
  %i.yi = fmul <16 x float> %i.rc, %i.yh
  %i.yj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.yg, <16 x float> %i.yi, <16 x float> %i.pb) ; 2 uses
  %i.yk = sitofp <16 x i32> %i.xw to <16 x float>
  %i.yl = shufflevector <16 x float> %i.yb, <16 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %i.ym = fmul <16 x float> %i.rc, %i.yl
  %i.yn = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.yk, <16 x float> %i.ym, <16 x float> %i.pa) ; 2 uses
  %i.yo = sitofp <16 x i32> %i.xx to <16 x float>
  %i.yp = shufflevector <16 x float> %i.yb, <16 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 11, i32 11, i32 11, i32 11, i32 15, i32 15, i32 15, i32 15>
  %i.yq = fmul <16 x float> %i.rc, %i.yp
  %i.yr = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.yo, <16 x float> %i.yq, <16 x float> %i.oz) ; 2 uses
  %i.ys = add nuw nsw i64 %.010801122.us.us.us.i, 1 ; 2 uses
  %exitcond1232.not.i = icmp eq i64 %i.ys, %i.f
  br i1 %exitcond1232.not.i, label %..preheader1101_crit_edge.us.us.us.i, label %bb.d, !llvm.loop !167

..preheader1101_crit_edge.us.us.us.i:             ; preds = %bb.d
  %.idx1094.us.us.us.i = shl nuw nsw i64 %.010781131.us.us.us.i, 5
  %invariant.gep.us1133.us.us.i = getelementptr i8, ptr %1, i64 %.idx1094.us.us.us.i ; 4 uses
  %gep.us1134.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us1133.us.us.i, i64 %i.on
  store <16 x float> %i.yf, ptr %gep.us1134.us.us.i, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us1134.us.us.1.i = getelementptr [4 x i8], ptr %invariant.gep.us1133.us.us.i, i64 %i.op
  store <16 x float> %i.yj, ptr %gep.us1134.us.us.1.i, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us1134.us.us.2.i = getelementptr [4 x i8], ptr %invariant.gep.us1133.us.us.i, i64 %i.or
  store <16 x float> %i.yn, ptr %gep.us1134.us.us.2.i, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %gep.us1134.us.us.3.i = getelementptr [4 x i8], ptr %invariant.gep.us1133.us.us.i, i64 %i.ot
  store <16 x float> %i.yr, ptr %gep.us1134.us.us.3.i, align 1, !tbaa !9, !alias.scope !179, !noalias !183
  %i.yt = add nuw nsw i64 %.010781131.us.us.us.i, 2 ; 2 uses
  %i.yu = icmp slt i64 %i.yt, %i.nj
  br i1 %i.yu, label %.preheader1102.us.us.us.i, label %._crit_edge.split.us.us.us.i, !llvm.loop !168

._crit_edge.split.us.us.us.i:                     ; preds = %..preheader1101_crit_edge.us.us.us.i
  %i.yv = add nuw nsw i64 %.11136.us.us.i, 1      ; 2 uses
  %exitcond1237.not.i = icmp eq i64 %i.yv, %i.ng
  br i1 %exitcond1237.not.i, label %._crit_edge1137.i, label %.lr.ph1132.us.us.i, !llvm.loop !169

.lr.ph1132.us.i:                                  ; preds = %.lr.ph1132.us.i, %.lr.ph1132.us.i.preheader.new
  %indvar56 = phi i64 [ 0, %.lr.ph1132.us.i.preheader.new ], [ %indvar.next57.3, %.lr.ph1132.us.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph1132.us.i.preheader.new ], [ %niter.next.3, %.lr.ph1132.us.i ]
  %i.yw = mul i64 %i.no, %indvar56                ; 4 uses
  %scevgep61 = getelementptr i8, ptr %i.od, i64 %i.yw
  %scevgep60 = getelementptr i8, ptr %i.oe, i64 %i.yw
  %scevgep59 = getelementptr i8, ptr %i.of, i64 %i.yw
  %scevgep58 = getelementptr i8, ptr %i.og, i64 %i.yw
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  %indvar.next57 = or disjoint i64 %indvar56, 1
  %i.yx = mul i64 %i.no, %indvar.next57           ; 4 uses
  %scevgep61.1 = getelementptr i8, ptr %i.od, i64 %i.yx
  %scevgep60.1 = getelementptr i8, ptr %i.oe, i64 %i.yx
  %scevgep59.1 = getelementptr i8, ptr %i.of, i64 %i.yx
  %scevgep58.1 = getelementptr i8, ptr %i.og, i64 %i.yx
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.1, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.1, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.1, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.1, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  %indvar.next57.1 = or disjoint i64 %indvar56, 2
  %i.yy = mul i64 %i.no, %indvar.next57.1         ; 4 uses
  %scevgep61.2 = getelementptr i8, ptr %i.od, i64 %i.yy
  %scevgep60.2 = getelementptr i8, ptr %i.oe, i64 %i.yy
  %scevgep59.2 = getelementptr i8, ptr %i.of, i64 %i.yy
  %scevgep58.2 = getelementptr i8, ptr %i.og, i64 %i.yy
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.2, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.2, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.2, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.2, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  %indvar.next57.2 = or disjoint i64 %indvar56, 3
  %i.yz = mul i64 %i.no, %indvar.next57.2         ; 4 uses
  %scevgep61.3 = getelementptr i8, ptr %i.od, i64 %i.yz
  %scevgep60.3 = getelementptr i8, ptr %i.oe, i64 %i.yz
  %scevgep59.3 = getelementptr i8, ptr %i.of, i64 %i.yz
  %scevgep58.3 = getelementptr i8, ptr %i.og, i64 %i.yz
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.3, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.3, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.3, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.3, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  %indvar.next57.3 = add nuw i64 %indvar56, 4     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1137.i.loopexit164.unr-lcssa, label %.lr.ph1132.us.i, !llvm.loop !169

._crit_edge1137.i.loopexit164.unr-lcssa:          ; preds = %.lr.ph1132.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge1137.i, label %.lr.ph1132.us.i.epil.preheader

.lr.ph1132.us.i.epil.preheader:                   ; preds = %._crit_edge1137.i.loopexit164.unr-lcssa, %.lr.ph1132.us.i.preheader
  %indvar56.epil.init = phi i64 [ 0, %.lr.ph1132.us.i.preheader ], [ %indvar.next57.3, %._crit_edge1137.i.loopexit164.unr-lcssa ]
  %lcmp.mod166 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %.lr.ph1132.us.i.epil

.lr.ph1132.us.i.epil:                             ; preds = %.lr.ph1132.us.i.epil, %.lr.ph1132.us.i.epil.preheader
  %indvar56.epil = phi i64 [ %indvar56.epil.init, %.lr.ph1132.us.i.epil.preheader ], [ %indvar.next57.epil, %.lr.ph1132.us.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph1132.us.i.epil.preheader ], [ %epil.iter.next, %.lr.ph1132.us.i.epil ]
  %i.za = mul i64 %i.no, %indvar56.epil           ; 4 uses
  %scevgep61.epil = getelementptr i8, ptr %i.od, i64 %i.za
  %scevgep60.epil = getelementptr i8, ptr %i.oe, i64 %i.za
  %scevgep59.epil = getelementptr i8, ptr %i.of, i64 %i.za
  %scevgep58.epil = getelementptr i8, ptr %i.og, i64 %i.za
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep58.epil, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep59.epil, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep60.epil, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep61.epil, i8 0, i64 range(i64 0, 8589934593) %i.ns, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  %indvar.next57.epil = add nuw i64 %indvar56.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge1137.i, label %.lr.ph1132.us.i.epil, !llvm.loop !170

._crit_edge1137.i:                                ; preds = %._crit_edge1137.i.loopexit164.unr-lcssa, %.lr.ph1132.us.i.epil, %._crit_edge.split.us.us.us.i, %.lr.ph.i, %.preheader1103.i
  %.1.lcssa.i = phi i64 [ %.01070.lcssa.i, %.preheader1103.i ], [ %i.ng, %.lr.ph.i ], [ %i.ng, %._crit_edge.split.us.us.us.i ], [ %i.ng, %.lr.ph1132.us.i.epil ], [ %i.ng, %._crit_edge1137.i.loopexit164.unr-lcssa ]
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge1137.i
  %i.zb = sdiv i32 %i.m, 8
  %i.zc = sext i32 %i.zb to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge1137.i
  %.01071.i = phi i64 [ %i.zc, %bb.e ], [ 0, %._crit_edge1137.i ] ; 8 uses
  %.2.i = phi i64 [ 0, %bb.e ], [ %.1.lcssa.i, %._crit_edge1137.i ] ; 8 uses
  %i.zd = icmp slt i64 %.2.i, %i.o
  br i1 %i.zd, label %.lr.ph1165.i, label %.preheader1097.i

.lr.ph1165.i:                                     ; preds = %bb.f
  %i.ze = sdiv i32 %6, 8
  %i.zf = sext i32 %i.ze to i64                   ; 3 uses
  %i.zg = icmp slt i64 %.01071.i, %i.zf
  %i.zh = icmp sgt i32 %0, 31
  br i1 %i.zg, label %.lr.ph1165.split.us.preheader.i, label %.lr.ph1165.split.i.preheader

.lr.ph1165.split.i.preheader:                     ; preds = %.lr.ph1165.i
  %i.zi = xor i64 %.2.i, -1
  %i.zj = add i64 %i.zi, %i.o
  %i.zk = and i64 %i.zj, -4
  %i.zl = add i64 %.2.i, %i.zk
  %i.zm = add i64 %i.zl, 4
  br label %.preheader1097.i

.lr.ph1165.split.us.preheader.i:                  ; preds = %.lr.ph1165.i
  %i.zn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.zo = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.zp = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.phi.trans.insert1336.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.phi.trans.insert1338.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.phi.trans.insert1340.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.phi.trans.insert1342.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %.phi.trans.insert1344.i = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %.phi.trans.insert1346.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %.phi.trans.insert1348.i = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.phi.trans.insert1350.i = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %.phi.trans.insert1352.i = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %.phi.trans.insert1354.i = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %.phi.trans.insert1356.i = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %.phi.trans.insert1358.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %.phi.trans.insert1360.i = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %.phi.trans.insert1362.i = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %.phi.trans.insert1364.i = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.zq = mul i64 %.2.i, %2
  %i.zr = shl i64 %i.zq, 4
  %i.zs = shl nsw i64 %.01071.i, 5                ; 16 uses
  %i.zt = shl i64 %2, 6
  %i.zu = sub nsw i64 %i.zf, %.01071.i
  %i.zv = shl nsw i64 %i.zu, 5                    ; 16 uses
  %i.zw = shl nsw i64 %.2.i, 2                    ; 15 uses
  %i.zx = or disjoint i64 %i.zw, 1
  %i.zy = mul i64 %2, %i.zx
  %i.zz = shl i64 %i.zy, 2
  %i.aaa = or disjoint i64 %i.zw, 2
  %i.aab = mul i64 %2, %i.aaa
  %i.aac = shl i64 %i.aab, 2
  %i.aad = or disjoint i64 %i.zw, 3
  %i.aae = mul i64 %2, %i.aad
  %i.aaf = shl i64 %i.aae, 2
  %i.aag = add i64 %i.zw, 4
  %i.aah = mul i64 %2, %i.aag
  %i.aai = shl i64 %i.aah, 2
  %i.aaj = add i64 %i.zw, 5
  %i.aak = mul i64 %2, %i.aaj
  %i.aal = shl i64 %i.aak, 2
  %i.aam = add i64 %i.zw, 6
  %i.aan = mul i64 %2, %i.aam
  %i.aao = shl i64 %i.aan, 2
  %i.aap = add i64 %i.zw, 7
  %i.aaq = mul i64 %2, %i.aap
  %i.aar = shl i64 %i.aaq, 2
  %i.aas = add i64 %i.zw, 8
  %i.aat = mul i64 %2, %i.aas
  %i.aau = shl i64 %i.aat, 2
  %i.aav = add i64 %i.zw, 9
  %i.aaw = mul i64 %2, %i.aav
  %i.aax = shl i64 %i.aaw, 2
  %i.aay = add i64 %i.zw, 10
  %i.aaz = mul i64 %2, %i.aay
  %i.aba = shl i64 %i.aaz, 2
  %i.abb = add i64 %i.zw, 11
  %i.abc = mul i64 %2, %i.abb
  %i.abd = shl i64 %i.abc, 2
  %i.abe = add i64 %i.zw, 12
  %i.abf = mul i64 %2, %i.abe
  %i.abg = shl i64 %i.abf, 2
  %i.abh = add i64 %i.zw, 13
  %i.abi = mul i64 %2, %i.abh
  %i.abj = shl i64 %i.abi, 2
  %i.abk = add i64 %i.zw, 14
  %i.abl = mul i64 %2, %i.abk
  %i.abm = shl i64 %i.abl, 2
  %i.abn = add i64 %i.zw, 15
  %i.abo = mul i64 %2, %i.abn
  %i.abp = shl i64 %i.abo, 2
  %i.abq = xor i64 %.2.i, -1
  %i.abr = add i64 %i.abq, %i.o
  %i.abs = lshr i64 %i.abr, 2
  %i.abt = getelementptr i8, ptr %1, i64 %i.zr
  %i.abu = getelementptr i8, ptr %i.abt, i64 %i.zs
  %i.abv = getelementptr i8, ptr %1, i64 %i.zz
  %i.abw = getelementptr i8, ptr %i.abv, i64 %i.zs
  %i.abx = getelementptr i8, ptr %1, i64 %i.aac
  %i.aby = getelementptr i8, ptr %i.abx, i64 %i.zs
  %i.abz = getelementptr i8, ptr %1, i64 %i.aaf
  %i.aca = getelementptr i8, ptr %i.abz, i64 %i.zs
  %i.acb = getelementptr i8, ptr %1, i64 %i.aai
  %i.acc = getelementptr i8, ptr %i.acb, i64 %i.zs
  %i.acd = getelementptr i8, ptr %1, i64 %i.aal
  %i.ace = getelementptr i8, ptr %i.acd, i64 %i.zs
  %i.acf = getelementptr i8, ptr %1, i64 %i.aao
  %i.acg = getelementptr i8, ptr %i.acf, i64 %i.zs
  %i.ach = getelementptr i8, ptr %1, i64 %i.aar
  %i.aci = getelementptr i8, ptr %i.ach, i64 %i.zs
  %i.acj = getelementptr i8, ptr %1, i64 %i.aau
  %i.ack = getelementptr i8, ptr %i.acj, i64 %i.zs
  %i.acl = getelementptr i8, ptr %1, i64 %i.aax
  %i.acm = getelementptr i8, ptr %i.acl, i64 %i.zs
  %i.acn = getelementptr i8, ptr %1, i64 %i.aba
  %i.aco = getelementptr i8, ptr %i.acn, i64 %i.zs
  %i.acp = getelementptr i8, ptr %1, i64 %i.abd
  %i.acq = getelementptr i8, ptr %i.acp, i64 %i.zs
  %i.acr = getelementptr i8, ptr %1, i64 %i.abg
  %i.acs = getelementptr i8, ptr %i.acr, i64 %i.zs
  %i.act = getelementptr i8, ptr %1, i64 %i.abj
  %i.acu = getelementptr i8, ptr %i.act, i64 %i.zs
  %i.acv = getelementptr i8, ptr %1, i64 %i.abm
  %i.acw = getelementptr i8, ptr %i.acv, i64 %i.zs
  %i.acx = getelementptr i8, ptr %1, i64 %i.abp
  %i.acy = getelementptr i8, ptr %i.acx, i64 %i.zs
  br label %.lr.ph1165.split.us.i

.lr.ph1165.split.us.i:                            ; preds = %._crit_edge.us1169.i, %.lr.ph1165.split.us.preheader.i
  %indvar62 = phi i64 [ %indvar.next63, %._crit_edge.us1169.i ], [ 0, %.lr.ph1165.split.us.preheader.i ] ; 3 uses
  %.31163.us.i = phi i64 [ %i.anb, %._crit_edge.us1169.i ], [ %.2.i, %.lr.ph1165.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13, !noalias !182
  %i.acz = mul nsw i64 %.31163.us.i, %i.f
  %i.ada = getelementptr inbounds [136 x i8], ptr %4, i64 %i.acz ; 2 uses
  store ptr %i.ada, ptr %i.c, align 16, !tbaa !21, !noalias !182
  %i.adb = getelementptr inbounds [136 x i8], ptr %i.ada, i64 %i.f ; 2 uses
  store ptr %i.adb, ptr %i.zn, align 8, !tbaa !21, !noalias !182
  %i.adc = getelementptr inbounds [136 x i8], ptr %i.adb, i64 %i.f ; 2 uses
  store ptr %i.adc, ptr %i.zo, align 16, !tbaa !21, !noalias !182
  %i.add = getelementptr inbounds [136 x i8], ptr %i.adc, i64 %i.f
  store ptr %i.add, ptr %i.zp, align 8, !tbaa !21, !noalias !182
  %i.ade = shl nsw i64 %.31163.us.i, 2            ; 16 uses
  %i.adf = mul i64 %i.ade, %2
  %i.adg = or disjoint i64 %i.ade, 1
  %i.adh = mul i64 %i.adg, %2
  %i.adi = or disjoint i64 %i.ade, 2
  %i.adj = mul i64 %i.adi, %2
  %i.adk = or disjoint i64 %i.ade, 3
  %i.adl = mul i64 %i.adk, %2
  %i.adm = add nsw i64 %i.ade, 4
  %i.adn = mul i64 %i.adm, %2
  %i.ado = add nsw i64 %i.ade, 5
  %i.adp = mul i64 %i.ado, %2
  %i.adq = add nsw i64 %i.ade, 6
  %i.adr = mul i64 %i.adq, %2
  %i.ads = add nsw i64 %i.ade, 7
  %i.adt = mul i64 %i.ads, %2
  %i.adu = add nsw i64 %i.ade, 8
  %i.adv = mul i64 %i.adu, %2
  %i.adw = add nsw i64 %i.ade, 9
  %i.adx = mul i64 %i.adw, %2
  %i.ady = add nsw i64 %i.ade, 10
  %i.adz = mul i64 %i.ady, %2
  %i.aea = add nsw i64 %i.ade, 11
  %i.aeb = mul i64 %i.aea, %2
  %i.aec = add nsw i64 %i.ade, 12
  %i.aed = mul i64 %i.aec, %2
  %i.aee = add nsw i64 %i.ade, 13
  %i.aef = mul i64 %i.aee, %2
  %i.aeg = add nsw i64 %i.ade, 14
  %i.aeh = mul i64 %i.aeg, %2
  %i.aei = add nsw i64 %i.ade, 15
  %i.aej = mul i64 %i.aei, %2
  br i1 %i.zh, label %.preheader1099.us.i.us, label %.preheader1099.us.i.preheader

.preheader1099.us.i.preheader:                    ; preds = %.lr.ph1165.split.us.i
  %i.aek = mul i64 %i.zt, %indvar62               ; 16 uses
  %scevgep64 = getelementptr i8, ptr %i.abu, i64 %i.aek
  %scevgep65 = getelementptr i8, ptr %i.abw, i64 %i.aek
  %scevgep66 = getelementptr i8, ptr %i.aby, i64 %i.aek
  %scevgep67 = getelementptr i8, ptr %i.aca, i64 %i.aek
  %scevgep68 = getelementptr i8, ptr %i.acc, i64 %i.aek
  %scevgep69 = getelementptr i8, ptr %i.ace, i64 %i.aek
  %scevgep70 = getelementptr i8, ptr %i.acg, i64 %i.aek
end_hunk_6
