Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/compression?download=true
inline.NumInlined: 100
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 129
begin_hunk_0_@dispatch_adler32:bb.a
  %i.h = tail call i32 %.0.i(i32 noundef %0, ptr noundef %1, i64 noundef %2) #27
  ret i32 %i.h
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @adler32_x86_avx512_vl512_vnni(i32 noundef %0, ptr noundef %1, i64 noundef %2) #18 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = lshr i32 %0, 16                          ; 2 uses
  %i.c = icmp ugt i64 %2, 65536
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, 63
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.preheader183, label %bb.c, !prof !44

.preheader183:                                    ; preds = %bb.a, %.preheader183
  %.0180 = phi i32 [ %i.k, %.preheader183 ], [ %i.a, %bb.a ]
  %.0177 = phi i32 [ %i.l, %.preheader183 ], [ %i.b, %bb.a ]
  %.0132 = phi i64 [ %i.m, %.preheader183 ], [ %2, %bb.a ]
  %.0 = phi ptr [ %i.h, %.preheader183 ], [ %1, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 3 uses
  %i.i = load i8, ptr %.0, align 1, !tbaa !36
  %i.j = zext i8 %i.i to i32
  %i.k = add i32 %.0180, %i.j                     ; 3 uses
  %i.l = add i32 %i.k, %.0177                     ; 2 uses
  %i.m = add i64 %.0132, -1                       ; 2 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = and i64 %i.n, 63
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.b, label %.preheader183, !llvm.loop !352

bb.b:                                             ; preds = %.preheader183
  %i.p = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %i.q = insertelement <2 x i32> %i.p, i32 %i.l, i64 1
  %i.r = urem <2 x i32> %i.q, splat (i32 65521)   ; 2 uses
  %i.s = extractelement <2 x i32> %i.r, i64 0
  %i.t = extractelement <2 x i32> %i.r, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1181 = phi i32 [ %i.s, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.1178 = phi i32 [ %i.t, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.1133 = phi i64 [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ]
  %.not164201 = icmp eq i64 %.1133, 0
  br i1 %.not164201, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.k
  %.2205 = phi ptr [ %.7, %bb.k ], [ %.1, %bb.c ] ; 2 uses
  %.2134204 = phi i64 [ %i.y, %bb.k ], [ %.1133, %bb.c ] ; 3 uses
  %.2179203 = phi i32 [ %i.eh, %bb.k ], [ %.1178, %bb.c ]
  %.2182202 = phi i32 [ %i.eg, %bb.k ], [ %.1181, %bb.c ] ; 2 uses
  %i.u = tail call i64 @llvm.umin.i64(i64 %.2134204, i64 5376) ; 4 uses
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = mul nuw nsw i32 %.2182202, %i.v
  %i.x = add nuw nsw i32 %i.w, %.2179203
  %i.y = sub nuw i64 %.2134204, %i.u              ; 2 uses
  %i.z = icmp ugt i64 %.2134204, 255
  br i1 %i.z, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %i.aa = phi <16 x i32> [ %i.bb, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ab = phi <16 x i32> [ %i.at, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ac = phi <16 x i32> [ %i.bc, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ad = phi <16 x i32> [ %i.bd, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ae = phi <16 x i32> [ %i.be, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.af = phi <16 x i32> [ %i.au, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ag = phi <16 x i32> [ %i.av, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ah = phi <16 x i32> [ %i.aw, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ai = phi <16 x i32> [ %i.ax, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.aj = phi <16 x i32> [ %i.ay, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ak = phi <16 x i32> [ %i.az, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.al = phi <16 x i32> [ %i.ba, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %.0135 = phi i64 [ %i.bg, %.preheader ], [ %i.u, %.lr.ph ]
  %.3 = phi ptr [ %i.bf, %.preheader ], [ %.2205, %.lr.ph ] ; 5 uses
  %i.am = load <64 x i8>, ptr %.3, align 1, !tbaa !36 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.3, i64 64
  %i.ao = load <64 x i8>, ptr %i.an, align 1, !tbaa !36 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.3, i64 128
  %i.aq = load <64 x i8>, ptr %i.ap, align 1, !tbaa !36 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.3, i64 192
  %i.as = load <64 x i8>, ptr %i.ar, align 1, !tbaa !36 ; 2 uses
  %i.at = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ab, <64 x i8> %i.am, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.au = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.af, <64 x i8> %i.ao, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.av = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ag, <64 x i8> %i.aq, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.aw = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ah, <64 x i8> %i.as, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.ax = add <16 x i32> %i.ai, %i.aa             ; 2 uses
  %i.ay = add <16 x i32> %i.aj, %i.ac             ; 2 uses
  %i.az = add <16 x i32> %i.ak, %i.ad             ; 2 uses
  %i.ba = add <16 x i32> %i.al, %i.ae             ; 2 uses
  %i.bb = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.aa, <64 x i8> %i.am, <64 x i8> splat (i8 1)) ; 3 uses
  %i.bc = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ac, <64 x i8> %i.ao, <64 x i8> splat (i8 1)) ; 2 uses
  %i.bd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ad, <64 x i8> %i.aq, <64 x i8> splat (i8 1)) ; 3 uses
  %i.be = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ae, <64 x i8> %i.as, <64 x i8> splat (i8 1)) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.3, i64 256 ; 2 uses
  %i.bg = add i64 %.0135, -256                    ; 3 uses
  %i.bh = icmp ugt i64 %i.bg, 255
  br i1 %i.bh, label %.preheader, label %bb.d, !llvm.loop !353

bb.d:                                             ; preds = %.preheader
  %i.bi = add <16 x i32> %i.bc, %i.bb             ; 2 uses
  %i.bj = add <16 x i32> %i.bd, %i.bb
  %i.bk = add <16 x i32> %i.ay, %i.ax
  %i.bl = add <16 x i32> %i.bk, %i.az
  %i.bm = add <16 x i32> %i.bl, %i.ba
  %i.bn = add <16 x i32> %i.bi, %i.bd
  %i.bo = add <16 x i32> %i.bn, %i.be
  %i.bp = shl <16 x i32> %i.bm, splat (i32 8)
  %i.bq = shl <16 x i32> %i.bi, splat (i32 7)
  %i.br = shl <16 x i32> %i.bj, splat (i32 6)
  %i.bs = add <16 x i32> %i.at, %i.bp
  %i.bt = add <16 x i32> %i.bs, %i.au
  %i.bu = add <16 x i32> %i.bt, %i.av
  %i.bv = add <16 x i32> %i.bu, %i.aw
  %i.bw = add <16 x i32> %i.bv, %i.bq
  %i.bx = add <16 x i32> %i.bw, %i.br
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.by = phi <16 x i32> [ %i.bo, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 3 uses
  %i.bz = phi <16 x i32> [ %i.bx, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %.1136 = phi i64 [ %i.bg, %bb.d ], [ %i.u, %.lr.ph ] ; 3 uses
  %.4 = phi ptr [ %i.bf, %bb.d ], [ %.2205, %.lr.ph ] ; 4 uses
  %i.ca = icmp samesign ugt i64 %.1136, 127
  br i1 %i.ca, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cb = load <64 x i8>, ptr %.4, align 1, !tbaa !36 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.4, i64 64
  %i.cd = load <64 x i8>, ptr %i.cc, align 1, !tbaa !36 ; 2 uses
  %i.ce = shl <16 x i32> %i.by, splat (i32 7)
  %i.cf = add <16 x i32> %i.ce, %i.bz
  %i.cg = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.by, <64 x i8> %i.cb, <64 x i8> splat (i8 1))
  %i.ch = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cg, <64 x i8> %i.cd, <64 x i8> splat (i8 1))
  %i.ci = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cf, <64 x i8> %i.cb, <64 x i8> splat (i8 64))
  %i.cj = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ci, <64 x i8> %i.cb, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ck = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cj, <64 x i8> %i.cd, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cl = getelementptr inbounds nuw i8, ptr %.4, i64 128
  %i.cm = add nsw i64 %.1136, -128
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cn = phi <16 x i32> [ %i.ch, %bb.f ], [ %i.by, %bb.e ] ; 4 uses
  %i.co = phi <16 x i32> [ %i.ck, %bb.f ], [ %i.bz, %bb.e ] ; 2 uses
  %.2137 = phi i64 [ %i.cm, %bb.f ], [ %.1136, %bb.e ] ; 6 uses
  %.5 = phi ptr [ %i.cl, %bb.f ], [ %.4, %bb.e ]  ; 4 uses
  %.not165 = icmp eq i64 %.2137, 0
  br i1 %.not165, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cp = trunc nuw nsw i64 %.2137 to i32
  %i.cq = insertelement <16 x i32> poison, i32 %i.cp, i64 0
  %i.cr = shufflevector <16 x i32> %i.cq, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.cs = mul <16 x i32> %i.cr, %i.cn
  %i.ct = add <16 x i32> %i.cs, %i.co             ; 2 uses
  %i.cu = trunc i64 %.2137 to i8
  %i.cv = add i8 %i.cu, -64
  %i.cw = insertelement <64 x i8> poison, i8 %i.cv, i64 0
  %i.cx = shufflevector <64 x i8> %i.cw, <64 x i8> poison, <64 x i32> zeroinitializer ; 2 uses
  %i.cy = add <64 x i8> %i.cx, <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1> ; 2 uses
  %i.cz = icmp samesign ugt i64 %.2137, 64
  br i1 %i.cz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.da = load <64 x i8>, ptr %.5, align 1, !tbaa !36 ; 2 uses
  %i.db = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cn, <64 x i8> %i.da, <64 x i8> splat (i8 1))
  %i.dc = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ct, <64 x i8> %i.da, <64 x i8> %i.cy)
  %i.dd = getelementptr inbounds nuw i8, ptr %.5, i64 64
  %i.de = add nsw i64 %.2137, -64
  %i.df = add <64 x i8> %i.cx, <i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 -8, i8 -9, i8 -10, i8 -11, i8 -12, i8 -13, i8 -14, i8 -15, i8 -16, i8 -17, i8 -18, i8 -19, i8 -20, i8 -21, i8 -22, i8 -23, i8 -24, i8 -25, i8 -26, i8 -27, i8 -28, i8 -29, i8 -30, i8 -31, i8 -32, i8 -33, i8 -34, i8 -35, i8 -36, i8 -37, i8 -38, i8 -39, i8 -40, i8 -41, i8 -42, i8 -43, i8 -44, i8 -45, i8 -46, i8 -47, i8 -48, i8 -49, i8 -50, i8 -51, i8 -52, i8 -53, i8 -54, i8 -55, i8 -56, i8 -57, i8 -58, i8 -59, i8 -60, i8 -61, i8 -62, i8 -63>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi = phi <16 x i32> [ %i.db, %bb.i ], [ %i.cn, %bb.h ]
  %.3153.in = phi <16 x i32> [ %i.dc, %bb.i ], [ %i.ct, %bb.h ]
  %.0139.in = phi <64 x i8> [ %i.df, %bb.i ], [ %i.cy, %bb.h ]
  %.3138 = phi i64 [ %i.de, %bb.i ], [ %.2137, %bb.h ] ; 2 uses
  %.6 = phi ptr [ %i.dd, %bb.i ], [ %.5, %bb.h ]  ; 2 uses
  %i.dg = sub nuw nsw i64 64, %.3138
  %i.dh = lshr i64 -1, %i.dg
  %i.di = bitcast i64 %i.dh to <64 x i1>
  %i.dj = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.6, <64 x i1> %i.di, <64 x i8> zeroinitializer) ; 2 uses
  %i.dk = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.pre-phi, <64 x i8> %i.dj, <64 x i8> splat (i8 1))
  %i.dl = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.3153.in, <64 x i8> %i.dj, <64 x i8> %.0139.in)
  %i.dm = getelementptr inbounds nuw i8, ptr %.6, i64 %.3138
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.dn = phi <16 x i32> [ %i.dk, %bb.j ], [ %i.cn, %bb.g ] ; 2 uses
  %i.do = phi <16 x i32> [ %i.dl, %bb.j ], [ %i.co, %bb.g ] ; 2 uses
  %.7 = phi ptr [ %i.dm, %bb.j ], [ %.5, %bb.g ]
  %i.dp = shufflevector <16 x i32> %i.dn, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dq = shufflevector <16 x i32> %i.dn, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dr = add <8 x i32> %i.dp, %i.dq              ; 2 uses
  %i.ds = shufflevector <16 x i32> %i.do, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dt = shufflevector <16 x i32> %i.do, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.du = add <8 x i32> %i.ds, %i.dt              ; 2 uses
  %i.dv = shufflevector <8 x i32> %i.dr, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dw = shufflevector <8 x i32> %i.dr, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dx = add <4 x i32> %i.dv, %i.dw              ; 2 uses
  %i.dy = shufflevector <8 x i32> %i.du, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dz = shufflevector <8 x i32> %i.du, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ea = add <4 x i32> %i.dy, %i.dz              ; 2 uses
  %3 = shufflevector <4 x i32> %i.dx, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %4 = add <4 x i32> %3, %i.dx                    ; 2 uses
  %5 = shufflevector <4 x i32> %i.ea, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %6 = add <4 x i32> %5, %i.ea                    ; 2 uses
  %7 = shufflevector <4 x i32> %4, <4 x i32> %6, <2 x i32> <i32 2, i32 6>
  %8 = shufflevector <4 x i32> %4, <4 x i32> %6, <2 x i32> <i32 0, i32 4>
  %i.eb = add <2 x i32> %7, %8
  %i.ec = insertelement <2 x i32> poison, i32 %.2182202, i64 0
  %i.ed = insertelement <2 x i32> %i.ec, i32 %i.x, i64 1
  %i.ee = add <2 x i32> %i.eb, %i.ed
  %i.ef = urem <2 x i32> %i.ee, splat (i32 65521) ; 2 uses
  %.not164 = icmp eq i64 %i.y, 0
  %i.eg = extractelement <2 x i32> %i.ef, i64 0   ; 2 uses
  %i.eh = extractelement <2 x i32> %i.ef, i64 1   ; 2 uses
  br i1 %.not164, label %._crit_edge, label %.lr.ph, !llvm.loop !354

._crit_edge:                                      ; preds = %bb.k, %bb.c
  %.2182.lcssa = phi i32 [ %.1181, %bb.c ], [ %i.eg, %bb.k ]
  %.2179.lcssa = phi i32 [ %.1178, %bb.c ], [ %i.eh, %bb.k ]
  %i.ei = shl nuw i32 %.2179.lcssa, 16
  %i.ej = or i32 %i.ei, %.2182.lcssa
  ret i32 %i.ej
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @adler32_x86_avx512_vl256_vnni(i32 noundef %0, ptr noundef %1, i64 noundef %2) #19 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = lshr i32 %0, 16                          ; 2 uses
  %i.c = icmp ugt i64 %2, 65536
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, 31
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.preheader183, label %bb.c, !prof !44

.preheader183:                                    ; preds = %bb.a, %.preheader183
  %.0180 = phi i32 [ %i.k, %.preheader183 ], [ %i.a, %bb.a ]
  %.0177 = phi i32 [ %i.l, %.preheader183 ], [ %i.b, %bb.a ]
  %.0132 = phi i64 [ %i.m, %.preheader183 ], [ %2, %bb.a ]
  %.0 = phi ptr [ %i.h, %.preheader183 ], [ %1, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 3 uses
  %i.i = load i8, ptr %.0, align 1, !tbaa !36
  %i.j = zext i8 %i.i to i32
  %i.k = add i32 %.0180, %i.j                     ; 3 uses
  %i.l = add i32 %i.k, %.0177                     ; 2 uses
  %i.m = add i64 %.0132, -1                       ; 2 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = and i64 %i.n, 31
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.b, label %.preheader183, !llvm.loop !355

bb.b:                                             ; preds = %.preheader183
  %i.p = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %i.q = insertelement <2 x i32> %i.p, i32 %i.l, i64 1
  %i.r = urem <2 x i32> %i.q, splat (i32 65521)   ; 2 uses
  %i.s = extractelement <2 x i32> %i.r, i64 0
  %i.t = extractelement <2 x i32> %i.r, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1181 = phi i32 [ %i.s, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.1178 = phi i32 [ %i.t, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.1133 = phi i64 [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ]
  %.not164201 = icmp eq i64 %.1133, 0
  br i1 %.not164201, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.k
  %.2205 = phi ptr [ %.7, %bb.k ], [ %.1, %bb.c ] ; 2 uses
  %.2134204 = phi i64 [ %i.y, %bb.k ], [ %.1133, %bb.c ] ; 3 uses
  %.2179203 = phi i32 [ %i.eb, %bb.k ], [ %.1178, %bb.c ]
  %.2182202 = phi i32 [ %i.ea, %bb.k ], [ %.1181, %bb.c ] ; 2 uses
  %i.u = tail call i64 @llvm.umin.i64(i64 %.2134204, i64 5504) ; 4 uses
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = mul nuw nsw i32 %.2182202, %i.v
  %i.x = add nuw nsw i32 %i.w, %.2179203
  %i.y = sub nuw i64 %.2134204, %i.u              ; 2 uses
  %i.z = icmp ugt i64 %.2134204, 127
  br i1 %i.z, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %i.aa = phi <8 x i32> [ %i.bb, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ab = phi <8 x i32> [ %i.at, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ac = phi <8 x i32> [ %i.bc, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ad = phi <8 x i32> [ %i.bd, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ae = phi <8 x i32> [ %i.be, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.af = phi <8 x i32> [ %i.au, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ag = phi <8 x i32> [ %i.av, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ah = phi <8 x i32> [ %i.aw, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ai = phi <8 x i32> [ %i.ax, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.aj = phi <8 x i32> [ %i.ay, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ak = phi <8 x i32> [ %i.az, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.al = phi <8 x i32> [ %i.ba, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %.0135 = phi i64 [ %i.bg, %.preheader ], [ %i.u, %.lr.ph ]
  %.3 = phi ptr [ %i.bf, %.preheader ], [ %.2205, %.lr.ph ] ; 5 uses
  %i.am = load <32 x i8>, ptr %.3, align 1, !tbaa !36 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.3, i64 32
  %i.ao = load <32 x i8>, ptr %i.an, align 1, !tbaa !36 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.3, i64 64
  %i.aq = load <32 x i8>, ptr %i.ap, align 1, !tbaa !36 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.3, i64 96
  %i.as = load <32 x i8>, ptr %i.ar, align 1, !tbaa !36 ; 2 uses
  %i.at = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ab, <32 x i8> %i.am, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.au = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.af, <32 x i8> %i.ao, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.av = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ag, <32 x i8> %i.aq, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.aw = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ah, <32 x i8> %i.as, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.ax = add <8 x i32> %i.ai, %i.aa              ; 2 uses
  %i.ay = add <8 x i32> %i.aj, %i.ac              ; 2 uses
  %i.az = add <8 x i32> %i.ak, %i.ad              ; 2 uses
  %i.ba = add <8 x i32> %i.al, %i.ae              ; 2 uses
  %i.bb = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aa, <32 x i8> %i.am, <32 x i8> splat (i8 1)) ; 3 uses
  %i.bc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ac, <32 x i8> %i.ao, <32 x i8> splat (i8 1)) ; 2 uses
  %i.bd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ad, <32 x i8> %i.aq, <32 x i8> splat (i8 1)) ; 3 uses
  %i.be = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ae, <32 x i8> %i.as, <32 x i8> splat (i8 1)) ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.3, i64 128 ; 2 uses
  %i.bg = add i64 %.0135, -128                    ; 3 uses
  %i.bh = icmp ugt i64 %i.bg, 127
  br i1 %i.bh, label %.preheader, label %bb.d, !llvm.loop !356

bb.d:                                             ; preds = %.preheader
  %i.bi = add <8 x i32> %i.bc, %i.bb              ; 2 uses
  %i.bj = add <8 x i32> %i.bd, %i.bb
  %i.bk = add <8 x i32> %i.ay, %i.ax
  %i.bl = add <8 x i32> %i.bk, %i.az
  %i.bm = add <8 x i32> %i.bl, %i.ba
  %i.bn = add <8 x i32> %i.bi, %i.bd
  %i.bo = add <8 x i32> %i.bn, %i.be
  %i.bp = shl <8 x i32> %i.bm, splat (i32 7)
  %i.bq = shl <8 x i32> %i.bi, splat (i32 6)
  %i.br = shl <8 x i32> %i.bj, splat (i32 5)
  %i.bs = add <8 x i32> %i.at, %i.bp
  %i.bt = add <8 x i32> %i.bs, %i.au
  %i.bu = add <8 x i32> %i.bt, %i.av
  %i.bv = add <8 x i32> %i.bu, %i.aw
  %i.bw = add <8 x i32> %i.bv, %i.bq
  %i.bx = add <8 x i32> %i.bw, %i.br
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.by = phi <8 x i32> [ %i.bo, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 3 uses
  %i.bz = phi <8 x i32> [ %i.bx, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %.1136 = phi i64 [ %i.bg, %bb.d ], [ %i.u, %.lr.ph ] ; 3 uses
  %.4 = phi ptr [ %i.bf, %bb.d ], [ %.2205, %.lr.ph ] ; 4 uses
  %i.ca = icmp samesign ugt i64 %.1136, 63
  br i1 %i.ca, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cb = load <32 x i8>, ptr %.4, align 1, !tbaa !36 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.4, i64 32
  %i.cd = load <32 x i8>, ptr %i.cc, align 1, !tbaa !36 ; 2 uses
  %i.ce = shl <8 x i32> %i.by, splat (i32 6)
  %i.cf = add <8 x i32> %i.ce, %i.bz
  %i.cg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.by, <32 x i8> %i.cb, <32 x i8> splat (i8 1))
  %i.ch = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cg, <32 x i8> %i.cd, <32 x i8> splat (i8 1))
  %i.ci = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cf, <32 x i8> %i.cb, <32 x i8> splat (i8 32))
  %i.cj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ci, <32 x i8> %i.cb, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ck = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cj, <32 x i8> %i.cd, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cl = getelementptr inbounds nuw i8, ptr %.4, i64 64
  %i.cm = add nsw i64 %.1136, -64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cn = phi <8 x i32> [ %i.ch, %bb.f ], [ %i.by, %bb.e ] ; 4 uses
  %i.co = phi <8 x i32> [ %i.ck, %bb.f ], [ %i.bz, %bb.e ] ; 2 uses
  %.2137 = phi i64 [ %i.cm, %bb.f ], [ %.1136, %bb.e ] ; 6 uses
  %.5 = phi ptr [ %i.cl, %bb.f ], [ %.4, %bb.e ]  ; 4 uses
  %.not165 = icmp eq i64 %.2137, 0
  br i1 %.not165, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cp = trunc nuw nsw i64 %.2137 to i32         ; 2 uses
  %i.cq = insertelement <8 x i32> poison, i32 %i.cp, i64 0
  %i.cr = shufflevector <8 x i32> %i.cq, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cs = mul <8 x i32> %i.cr, %i.cn
  %i.ct = add <8 x i32> %i.cs, %i.co              ; 2 uses
  %i.cu = trunc i64 %.2137 to i8
  %i.cv = add i8 %i.cu, -32
  %i.cw = insertelement <32 x i8> poison, i8 %i.cv, i64 0
  %i.cx = shufflevector <32 x i8> %i.cw, <32 x i8> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.cy = add <32 x i8> %i.cx, <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1> ; 2 uses
  %i.cz = icmp samesign ugt i64 %.2137, 32
  br i1 %i.cz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.da = load <32 x i8>, ptr %.5, align 1, !tbaa !36 ; 2 uses
  %i.db = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cn, <32 x i8> %i.da, <32 x i8> splat (i8 1))
  %i.dc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ct, <32 x i8> %i.da, <32 x i8> %i.cy)
  %i.dd = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.de = add nsw i64 %.2137, -32                 ; 2 uses
  %i.df = add <32 x i8> %i.cx, <i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 -8, i8 -9, i8 -10, i8 -11, i8 -12, i8 -13, i8 -14, i8 -15, i8 -16, i8 -17, i8 -18, i8 -19, i8 -20, i8 -21, i8 -22, i8 -23, i8 -24, i8 -25, i8 -26, i8 -27, i8 -28, i8 -29, i8 -30, i8 -31>
  %.pre = trunc nuw nsw i64 %i.de to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi227 = phi <8 x i32> [ %i.db, %bb.i ], [ %i.cn, %bb.h ]
  %.pre-phi = phi i32 [ %.pre, %bb.i ], [ %i.cp, %bb.h ]
  %.3153.in = phi <8 x i32> [ %i.dc, %bb.i ], [ %i.ct, %bb.h ]
  %.0139.in = phi <32 x i8> [ %i.df, %bb.i ], [ %i.cy, %bb.h ]
  %.3138 = phi i64 [ %i.de, %bb.i ], [ %.2137, %bb.h ]
  %.6 = phi ptr [ %i.dd, %bb.i ], [ %.5, %bb.h ]  ; 2 uses
  %i.dg = sub nsw i32 32, %.pre-phi
  %i.dh = lshr i32 -1, %i.dg
  %i.di = bitcast i32 %i.dh to <32 x i1>
  %i.dj = tail call <32 x i8> @llvm.masked.load.v32i8.p0(ptr align 1 %.6, <32 x i1> %i.di, <32 x i8> zeroinitializer) ; 2 uses
  %i.dk = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.pre-phi227, <32 x i8> %i.dj, <32 x i8> splat (i8 1))
  %i.dl = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.3153.in, <32 x i8> %i.dj, <32 x i8> %.0139.in)
  %i.dm = getelementptr inbounds nuw i8, ptr %.6, i64 %.3138
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.dn = phi <8 x i32> [ %i.dk, %bb.j ], [ %i.cn, %bb.g ] ; 2 uses
  %i.do = phi <8 x i32> [ %i.dl, %bb.j ], [ %i.co, %bb.g ] ; 2 uses
  %.7 = phi ptr [ %i.dm, %bb.j ], [ %.5, %bb.g ]
  %i.dp = shufflevector <8 x i32> %i.dn, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dq = shufflevector <8 x i32> %i.dn, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.dr = add <4 x i32> %i.dp, %i.dq              ; 2 uses
  %i.ds = shufflevector <8 x i32> %i.do, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dt = shufflevector <8 x i32> %i.do, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.du = add <4 x i32> %i.ds, %i.dt              ; 2 uses
  %3 = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %4 = add <4 x i32> %3, %i.dr                    ; 2 uses
  %5 = shufflevector <4 x i32> %i.du, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %6 = add <4 x i32> %5, %i.du                    ; 2 uses
  %7 = shufflevector <4 x i32> %4, <4 x i32> %6, <2 x i32> <i32 2, i32 6>
  %8 = shufflevector <4 x i32> %4, <4 x i32> %6, <2 x i32> <i32 0, i32 4>
  %i.dv = add <2 x i32> %7, %8
  %i.dw = insertelement <2 x i32> poison, i32 %.2182202, i64 0
  %i.dx = insertelement <2 x i32> %i.dw, i32 %i.x, i64 1
  %i.dy = add <2 x i32> %i.dv, %i.dx
  %i.dz = urem <2 x i32> %i.dy, splat (i32 65521) ; 2 uses
  %.not164 = icmp eq i64 %i.y, 0
  %i.ea = extractelement <2 x i32> %i.dz, i64 0   ; 2 uses
  %i.eb = extractelement <2 x i32> %i.dz, i64 1   ; 2 uses
  br i1 %.not164, label %._crit_edge, label %.lr.ph, !llvm.loop !357

._crit_edge:                                      ; preds = %bb.k, %bb.c
  %.2182.lcssa = phi i32 [ %.1181, %bb.c ], [ %i.ea, %bb.k ]
  %.2179.lcssa = phi i32 [ %.1178, %bb.c ], [ %i.eb, %bb.k ]
  %i.ec = shl nuw i32 %.2179.lcssa, 16
  %i.ed = or i32 %i.ec, %.2182.lcssa
  ret i32 %i.ed
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @adler32_x86_avx2_vnni(i32 noundef %0, ptr noundef %1, i64 noundef %2) #20 {
bb.a:
  %i.a = alloca <4 x i64>, align 32               ; 5 uses
  %i.b = and i32 %0, 65535                        ; 2 uses
  %i.c = lshr i32 %0, 16                          ; 2 uses
  %i.d = icmp ugt i64 %2, 65536
  %i.e = ptrtoint ptr %1 to i64
  %i.f = and i64 %i.e, 31
  %i.g = icmp ne i64 %i.f, 0
  %i.h = and i1 %i.d, %i.g
  br i1 %i.h, label %.preheader185, label %bb.c, !prof !44

.preheader185:                                    ; preds = %bb.a, %.preheader185
  %.0181 = phi i32 [ %i.l, %.preheader185 ], [ %i.b, %bb.a ]
  %.0178 = phi i32 [ %i.m, %.preheader185 ], [ %i.c, %bb.a ]
  %.0133 = phi i64 [ %i.n, %.preheader185 ], [ %2, %bb.a ]
  %.0 = phi ptr [ %i.i, %.preheader185 ], [ %1, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 3 uses
  %i.j = load i8, ptr %.0, align 1, !tbaa !36
  %i.k = zext i8 %i.j to i32
  %i.l = add i32 %.0181, %i.k                     ; 3 uses
  %i.m = add i32 %i.l, %.0178                     ; 2 uses
  %i.n = add i64 %.0133, -1                       ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = and i64 %i.o, 31
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.b, label %.preheader185, !llvm.loop !358

bb.b:                                             ; preds = %.preheader185
  %i.q = insertelement <2 x i32> poison, i32 %i.l, i64 0
  %i.r = insertelement <2 x i32> %i.q, i32 %i.m, i64 1
  %i.s = urem <2 x i32> %i.r, splat (i32 65521)   ; 2 uses
  %i.t = extractelement <2 x i32> %i.s, i64 0
  %i.u = extractelement <2 x i32> %i.s, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1182 = phi i32 [ %i.t, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.1179 = phi i32 [ %i.u, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %.1134 = phi i64 [ %i.n, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %i.i, %bb.b ], [ %1, %bb.a ]
  %.not165203 = icmp eq i64 %.1134, 0
  br i1 %.not165203, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.k
  %.2207 = phi ptr [ %.7, %bb.k ], [ %.1, %bb.c ] ; 2 uses
  %.2135206 = phi i64 [ %i.z, %bb.k ], [ %.1134, %bb.c ] ; 3 uses
  %.2180205 = phi i32 [ %i.ee, %bb.k ], [ %.1179, %bb.c ]
  %.2183204 = phi i32 [ %i.ed, %bb.k ], [ %.1182, %bb.c ] ; 2 uses
  %i.v = tail call i64 @llvm.umin.i64(i64 %.2135206, i64 5504) ; 4 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = mul nuw nsw i32 %.2183204, %i.w
  %i.y = add nuw nsw i32 %i.x, %.2180205
  %i.z = sub nuw i64 %.2135206, %i.v              ; 2 uses
  %i.aa = icmp ugt i64 %.2135206, 127
  br i1 %i.aa, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %i.ab = phi <8 x i32> [ %i.bc, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ac = phi <8 x i32> [ %i.au, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ad = phi <8 x i32> [ %i.bd, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ae = phi <8 x i32> [ %i.be, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.af = phi <8 x i32> [ %i.bf, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ag = phi <8 x i32> [ %i.av, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ah = phi <8 x i32> [ %i.aw, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ai = phi <8 x i32> [ %i.ax, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.aj = phi <8 x i32> [ %i.ay, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ak = phi <8 x i32> [ %i.az, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.al = phi <8 x i32> [ %i.ba, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.am = phi <8 x i32> [ %i.bb, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %.0136 = phi i64 [ %i.bh, %.preheader ], [ %i.v, %.lr.ph ]
  %.3 = phi ptr [ %i.bg, %.preheader ], [ %.2207, %.lr.ph ] ; 5 uses
  %i.an = load <32 x i8>, ptr %.3, align 1, !tbaa !36 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.3, i64 32
  %i.ap = load <32 x i8>, ptr %i.ao, align 1, !tbaa !36 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.3, i64 64
  %i.ar = load <32 x i8>, ptr %i.aq, align 1, !tbaa !36 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.3, i64 96
  %i.at = load <32 x i8>, ptr %i.as, align 1, !tbaa !36 ; 2 uses
  %i.au = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ac, <32 x i8> %i.an, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.av = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ag, <32 x i8> %i.ap, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.aw = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ah, <32 x i8> %i.ar, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.ax = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ai, <32 x i8> %i.at, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.ay = add <8 x i32> %i.aj, %i.ab              ; 2 uses
  %i.az = add <8 x i32> %i.ak, %i.ad              ; 2 uses
  %i.ba = add <8 x i32> %i.al, %i.ae              ; 2 uses
  %i.bb = add <8 x i32> %i.am, %i.af              ; 2 uses
  %i.bc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ab, <32 x i8> %i.an, <32 x i8> splat (i8 1)) ; 3 uses
  %i.bd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ad, <32 x i8> %i.ap, <32 x i8> splat (i8 1)) ; 2 uses
  %i.be = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ae, <32 x i8> %i.ar, <32 x i8> splat (i8 1)) ; 3 uses
  %i.bf = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.af, <32 x i8> %i.at, <32 x i8> splat (i8 1)) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.3, i64 128 ; 2 uses
  %i.bh = add i64 %.0136, -128                    ; 3 uses
  %i.bi = icmp ugt i64 %i.bh, 127
  br i1 %i.bi, label %.preheader, label %bb.d, !llvm.loop !359

bb.d:                                             ; preds = %.preheader
  %i.bj = add <8 x i32> %i.bd, %i.bc              ; 2 uses
  %i.bk = add <8 x i32> %i.be, %i.bc
  %i.bl = add <8 x i32> %i.az, %i.ay
  %i.bm = add <8 x i32> %i.bl, %i.ba
  %i.bn = add <8 x i32> %i.bm, %i.bb
  %i.bo = add <8 x i32> %i.bj, %i.be
  %i.bp = add <8 x i32> %i.bo, %i.bf
  %i.bq = shl <8 x i32> %i.bn, splat (i32 7)
  %i.br = shl <8 x i32> %i.bj, splat (i32 6)
  %i.bs = shl <8 x i32> %i.bk, splat (i32 5)
  %i.bt = add <8 x i32> %i.au, %i.bq
  %i.bu = add <8 x i32> %i.bt, %i.av
  %i.bv = add <8 x i32> %i.bu, %i.aw
  %i.bw = add <8 x i32> %i.bv, %i.ax
  %i.bx = add <8 x i32> %i.bw, %i.br
  %i.by = add <8 x i32> %i.bx, %i.bs
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.bz = phi <8 x i32> [ %i.bp, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 3 uses
  %i.ca = phi <8 x i32> [ %i.by, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %.1137 = phi i64 [ %i.bh, %bb.d ], [ %i.v, %.lr.ph ] ; 3 uses
  %.4 = phi ptr [ %i.bg, %bb.d ], [ %.2207, %.lr.ph ] ; 4 uses
  %i.cb = icmp samesign ugt i64 %.1137, 63
  br i1 %i.cb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cc = load <32 x i8>, ptr %.4, align 1, !tbaa !36 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.4, i64 32
  %i.ce = load <32 x i8>, ptr %i.cd, align 1, !tbaa !36 ; 2 uses
  %i.cf = shl <8 x i32> %i.bz, splat (i32 6)
  %i.cg = add <8 x i32> %i.cf, %i.ca
  %i.ch = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bz, <32 x i8> %i.cc, <32 x i8> splat (i8 1))
  %i.ci = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ch, <32 x i8> %i.ce, <32 x i8> splat (i8 1))
  %i.cj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cg, <32 x i8> %i.cc, <32 x i8> splat (i8 32))
  %i.ck = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cj, <32 x i8> %i.cc, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cl = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ck, <32 x i8> %i.ce, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cm = getelementptr inbounds nuw i8, ptr %.4, i64 64
  %i.cn = add nsw i64 %.1137, -64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.co = phi <8 x i32> [ %i.ci, %bb.f ], [ %i.bz, %bb.e ] ; 4 uses
  %i.cp = phi <8 x i32> [ %i.cl, %bb.f ], [ %i.ca, %bb.e ] ; 2 uses
  %.2138 = phi i64 [ %i.cn, %bb.f ], [ %.1137, %bb.e ] ; 6 uses
  %.5 = phi ptr [ %i.cm, %bb.f ], [ %.4, %bb.e ]  ; 4 uses
  %.not166 = icmp eq i64 %.2138, 0
  br i1 %.not166, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cq = trunc nuw nsw i64 %.2138 to i32
  %i.cr = insertelement <8 x i32> poison, i32 %i.cq, i64 0
  %i.cs = shufflevector <8 x i32> %i.cr, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ct = mul <8 x i32> %i.cs, %i.co
  %i.cu = add <8 x i32> %i.ct, %i.cp              ; 2 uses
  %i.cv = trunc i64 %.2138 to i8
  %i.cw = add i8 %i.cv, -32
  %i.cx = insertelement <32 x i8> poison, i8 %i.cw, i64 0
  %i.cy = shufflevector <32 x i8> %i.cx, <32 x i8> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.cz = add <32 x i8> %i.cy, <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1> ; 2 uses
  %i.da = icmp samesign ugt i64 %.2138, 32
  br i1 %i.da, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.db = load <32 x i8>, ptr %.5, align 1, !tbaa !36 ; 2 uses
  %i.dc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.co, <32 x i8> %i.db, <32 x i8> splat (i8 1))
  %i.dd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cu, <32 x i8> %i.db, <32 x i8> %i.cz)
  %i.de = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.df = add nsw i64 %.2138, -32
  %i.dg = add <32 x i8> %i.cy, <i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 -8, i8 -9, i8 -10, i8 -11, i8 -12, i8 -13, i8 -14, i8 -15, i8 -16, i8 -17, i8 -18, i8 -19, i8 -20, i8 -21, i8 -22, i8 -23, i8 -24, i8 -25, i8 -26, i8 -27, i8 -28, i8 -29, i8 -30, i8 -31>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi = phi <8 x i32> [ %i.dc, %bb.i ], [ %i.co, %bb.h ]
  %.3154.in = phi <8 x i32> [ %i.dd, %bb.i ], [ %i.cu, %bb.h ]
  %.0140.in = phi <32 x i8> [ %i.dg, %bb.i ], [ %i.cz, %bb.h ]
  %.3139 = phi i64 [ %i.df, %bb.i ], [ %.2138, %bb.h ] ; 2 uses
  %.6 = phi ptr [ %i.de, %bb.i ], [ %.5, %bb.h ]  ; 2 uses
  store <4 x i64> zeroinitializer, ptr %i.a, align 32, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 32 %i.a, ptr align 1 %.6, i64 %.3139, i1 false)
  %.0..0..0..0.2184231289 = load <32 x i8>, ptr %i.a, align 32, !tbaa !36 ; 2 uses
  %i.dh = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.pre-phi, <32 x i8> %.0..0..0..0.2184231289, <32 x i8> splat (i8 1))
  %i.di = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.3154.in, <32 x i8> %.0..0..0..0.2184231289, <32 x i8> %.0140.in)
  %i.dj = getelementptr inbounds nuw i8, ptr %.6, i64 %.3139
end_hunk_0
