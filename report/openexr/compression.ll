Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/compression?download=true
inline.NumInlined: 100
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 129
begin_hunk_0_@adler32_x86_avx512_vl256_vnni:bb.a
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
  %i.dr = add <4 x i32> %i.dp, %i.dq              ; 4 uses
  %i.ds = shufflevector <8 x i32> %i.do, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dt = shufflevector <8 x i32> %i.do, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.du = add <4 x i32> %i.ds, %i.dt              ; 4 uses
  %i.dv = shufflevector <4 x i32> %i.dr, <4 x i32> %i.du, <2 x i32> <i32 3, i32 7>
  %i.dw = shufflevector <4 x i32> %i.dr, <4 x i32> %i.du, <2 x i32> <i32 2, i32 6>
  %i.dx = add <2 x i32> %i.dv, %i.dw
  %i.dy = shufflevector <4 x i32> %i.dr, <4 x i32> %i.du, <2 x i32> <i32 1, i32 5>
  %i.dz = shufflevector <4 x i32> %i.dr, <4 x i32> %i.du, <2 x i32> <i32 0, i32 4>
  %i.ea = add <2 x i32> %i.dy, %i.dz
  %i.eb = add <2 x i32> %i.dx, %i.ea
  %i.ec = insertelement <2 x i32> poison, i32 %.2182202, i64 0
  %i.ed = insertelement <2 x i32> %i.ec, i32 %i.x, i64 1
  %i.ee = add <2 x i32> %i.eb, %i.ed
  %i.ef = urem <2 x i32> %i.ee, splat (i32 65521) ; 2 uses
  %.not164 = icmp eq i64 %i.y, 0
  %i.eg = extractelement <2 x i32> %i.ef, i64 0   ; 2 uses
  %i.eh = extractelement <2 x i32> %i.ef, i64 1   ; 2 uses
  br i1 %.not164, label %._crit_edge, label %.lr.ph, !llvm.loop !357

._crit_edge:                                      ; preds = %bb.k, %bb.c
  %.2182.lcssa = phi i32 [ %.1181, %bb.c ], [ %i.eg, %bb.k ]
  %.2179.lcssa = phi i32 [ %.1178, %bb.c ], [ %i.eh, %bb.k ]
  %i.ei = shl nuw i32 %.2179.lcssa, 16
  %i.ej = or i32 %i.ei, %.2182.lcssa
  ret i32 %i.ej
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
  %3 = insertelement <2 x i32> poison, i32 %i.l, i64 0
  %4 = insertelement <2 x i32> %3, i32 %i.m, i64 1
  %5 = urem <2 x i32> %4, splat (i32 65521)       ; 2 uses
  %6 = extractelement <2 x i32> %5, i64 0
  %7 = extractelement <2 x i32> %5, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1182 = phi i32 [ %6, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.1179 = phi i32 [ %7, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %.1134 = phi i64 [ %i.n, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %i.i, %bb.b ], [ %1, %bb.a ]
  %.not165203 = icmp eq i64 %.1134, 0
  br i1 %.not165203, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.k
  %.2207 = phi ptr [ %.7, %bb.k ], [ %.1, %bb.c ] ; 2 uses
  %.2135206 = phi i64 [ %i.u, %bb.k ], [ %.1134, %bb.c ] ; 3 uses
  %.2180205 = phi i32 [ %26, %bb.k ], [ %.1179, %bb.c ]
  %.2183204 = phi i32 [ %25, %bb.k ], [ %.1182, %bb.c ] ; 2 uses
  %i.q = tail call i64 @llvm.umin.i64(i64 %.2135206, i64 5504) ; 4 uses
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = mul nuw nsw i32 %.2183204, %i.r
  %i.t = add nuw nsw i32 %i.s, %.2180205
  %i.u = sub nuw i64 %.2135206, %i.q              ; 2 uses
  %i.v = icmp ugt i64 %.2135206, 127
  br i1 %i.v, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %i.w = phi <8 x i32> [ %i.ax, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.x = phi <8 x i32> [ %i.ap, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.y = phi <8 x i32> [ %i.ay, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.z = phi <8 x i32> [ %i.az, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.aa = phi <8 x i32> [ %i.ba, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ab = phi <8 x i32> [ %i.aq, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ac = phi <8 x i32> [ %i.ar, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ad = phi <8 x i32> [ %i.as, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ae = phi <8 x i32> [ %i.at, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.af = phi <8 x i32> [ %i.au, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ag = phi <8 x i32> [ %i.av, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ah = phi <8 x i32> [ %i.aw, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %.0136 = phi i64 [ %i.bc, %.preheader ], [ %i.q, %.lr.ph ]
  %.3 = phi ptr [ %i.bb, %.preheader ], [ %.2207, %.lr.ph ] ; 5 uses
  %i.ai = load <32 x i8>, ptr %.3, align 1, !tbaa !36 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.3, i64 32
  %i.ak = load <32 x i8>, ptr %i.aj, align 1, !tbaa !36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.3, i64 64
  %i.am = load <32 x i8>, ptr %i.al, align 1, !tbaa !36 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.3, i64 96
  %i.ao = load <32 x i8>, ptr %i.an, align 1, !tbaa !36 ; 2 uses
  %i.ap = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.x, <32 x i8> %i.ai, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.aq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ab, <32 x i8> %i.ak, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.ar = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ac, <32 x i8> %i.am, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.as = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ad, <32 x i8> %i.ao, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.at = add <8 x i32> %i.ae, %i.w               ; 2 uses
  %i.au = add <8 x i32> %i.af, %i.y               ; 2 uses
  %i.av = add <8 x i32> %i.ag, %i.z               ; 2 uses
  %i.aw = add <8 x i32> %i.ah, %i.aa              ; 2 uses
  %i.ax = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.w, <32 x i8> %i.ai, <32 x i8> splat (i8 1)) ; 3 uses
  %i.ay = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.y, <32 x i8> %i.ak, <32 x i8> splat (i8 1)) ; 2 uses
  %i.az = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.z, <32 x i8> %i.am, <32 x i8> splat (i8 1)) ; 3 uses
  %i.ba = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aa, <32 x i8> %i.ao, <32 x i8> splat (i8 1)) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.3, i64 128 ; 2 uses
  %i.bc = add i64 %.0136, -128                    ; 3 uses
  %i.bd = icmp ugt i64 %i.bc, 127
  br i1 %i.bd, label %.preheader, label %bb.d, !llvm.loop !359

bb.d:                                             ; preds = %.preheader
  %i.be = add <8 x i32> %i.ay, %i.ax              ; 2 uses
  %i.bf = add <8 x i32> %i.az, %i.ax
  %i.bg = add <8 x i32> %i.au, %i.at
  %i.bh = add <8 x i32> %i.bg, %i.av
  %i.bi = add <8 x i32> %i.bh, %i.aw
  %i.bj = add <8 x i32> %i.be, %i.az
  %i.bk = add <8 x i32> %i.bj, %i.ba
  %i.bl = shl <8 x i32> %i.bi, splat (i32 7)
  %i.bm = shl <8 x i32> %i.be, splat (i32 6)
  %i.bn = shl <8 x i32> %i.bf, splat (i32 5)
  %i.bo = add <8 x i32> %i.ap, %i.bl
  %i.bp = add <8 x i32> %i.bo, %i.aq
  %i.bq = add <8 x i32> %i.bp, %i.ar
  %i.br = add <8 x i32> %i.bq, %i.as
  %i.bs = add <8 x i32> %i.br, %i.bm
  %i.bt = add <8 x i32> %i.bs, %i.bn
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.bu = phi <8 x i32> [ %i.bk, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 3 uses
  %i.bv = phi <8 x i32> [ %i.bt, %bb.d ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %.1137 = phi i64 [ %i.bc, %bb.d ], [ %i.q, %.lr.ph ] ; 3 uses
  %.4 = phi ptr [ %i.bb, %bb.d ], [ %.2207, %.lr.ph ] ; 4 uses
  %i.bw = icmp samesign ugt i64 %.1137, 63
  br i1 %i.bw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bx = load <32 x i8>, ptr %.4, align 1, !tbaa !36 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.4, i64 32
  %i.bz = load <32 x i8>, ptr %i.by, align 1, !tbaa !36 ; 2 uses
  %i.ca = shl <8 x i32> %i.bu, splat (i32 6)
  %i.cb = add <8 x i32> %i.ca, %i.bv
  %i.cc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bu, <32 x i8> %i.bx, <32 x i8> splat (i8 1))
  %i.cd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cc, <32 x i8> %i.bz, <32 x i8> splat (i8 1))
  %i.ce = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cb, <32 x i8> %i.bx, <32 x i8> splat (i8 32))
  %i.cf = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ce, <32 x i8> %i.bx, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.cg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cf, <32 x i8> %i.bz, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.ch = getelementptr inbounds nuw i8, ptr %.4, i64 64
  %i.ci = add nsw i64 %.1137, -64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cj = phi <8 x i32> [ %i.cd, %bb.f ], [ %i.bu, %bb.e ] ; 4 uses
  %i.ck = phi <8 x i32> [ %i.cg, %bb.f ], [ %i.bv, %bb.e ] ; 2 uses
  %.2138 = phi i64 [ %i.ci, %bb.f ], [ %.1137, %bb.e ] ; 6 uses
  %.5 = phi ptr [ %i.ch, %bb.f ], [ %.4, %bb.e ]  ; 4 uses
  %.not166 = icmp eq i64 %.2138, 0
  br i1 %.not166, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cl = trunc nuw nsw i64 %.2138 to i32
  %i.cm = insertelement <8 x i32> poison, i32 %i.cl, i64 0
  %i.cn = shufflevector <8 x i32> %i.cm, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.co = mul <8 x i32> %i.cn, %i.cj
  %i.cp = add <8 x i32> %i.co, %i.ck              ; 2 uses
  %i.cq = trunc i64 %.2138 to i8
  %i.cr = add i8 %i.cq, -32
  %i.cs = insertelement <32 x i8> poison, i8 %i.cr, i64 0
  %i.ct = shufflevector <32 x i8> %i.cs, <32 x i8> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.cu = add <32 x i8> %i.ct, <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1> ; 2 uses
  %i.cv = icmp samesign ugt i64 %.2138, 32
  br i1 %i.cv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cw = load <32 x i8>, ptr %.5, align 1, !tbaa !36 ; 2 uses
  %i.cx = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cj, <32 x i8> %i.cw, <32 x i8> splat (i8 1))
  %i.cy = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cp, <32 x i8> %i.cw, <32 x i8> %i.cu)
  %i.cz = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.da = add nsw i64 %.2138, -32
  %i.db = add <32 x i8> %i.ct, <i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 -8, i8 -9, i8 -10, i8 -11, i8 -12, i8 -13, i8 -14, i8 -15, i8 -16, i8 -17, i8 -18, i8 -19, i8 -20, i8 -21, i8 -22, i8 -23, i8 -24, i8 -25, i8 -26, i8 -27, i8 -28, i8 -29, i8 -30, i8 -31>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi = phi <8 x i32> [ %i.cx, %bb.i ], [ %i.cj, %bb.h ]
  %.3154.in = phi <8 x i32> [ %i.cy, %bb.i ], [ %i.cp, %bb.h ]
  %.0140.in = phi <32 x i8> [ %i.db, %bb.i ], [ %i.cu, %bb.h ]
  %.3139 = phi i64 [ %i.da, %bb.i ], [ %.2138, %bb.h ] ; 2 uses
  %.6 = phi ptr [ %i.cz, %bb.i ], [ %.5, %bb.h ]  ; 2 uses
  store <4 x i64> zeroinitializer, ptr %i.a, align 32, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 32 %i.a, ptr align 1 %.6, i64 %.3139, i1 false)
  %.0..0..0..0.2184231289 = load <32 x i8>, ptr %i.a, align 32, !tbaa !36 ; 2 uses
  %i.dc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.pre-phi, <32 x i8> %.0..0..0..0.2184231289, <32 x i8> splat (i8 1))
  %i.dd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.3154.in, <32 x i8> %.0..0..0..0.2184231289, <32 x i8> %.0140.in)
  %i.de = getelementptr inbounds nuw i8, ptr %.6, i64 %.3139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %i.df = phi <8 x i32> [ %i.dc, %bb.j ], [ %i.cj, %bb.g ] ; 2 uses
  %i.dg = phi <8 x i32> [ %i.dd, %bb.j ], [ %i.ck, %bb.g ] ; 2 uses
  %.7 = phi ptr [ %i.de, %bb.j ], [ %.5, %bb.g ]
  %8 = shufflevector <8 x i32> %i.df, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %9 = shufflevector <8 x i32> %i.df, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %10 = add <4 x i32> %8, %9                      ; 2 uses
  %11 = shufflevector <8 x i32> %i.dg, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %12 = shufflevector <8 x i32> %i.dg, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %13 = add <4 x i32> %11, %12                    ; 2 uses
  %14 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %15 = add <4 x i32> %14, %10                    ; 2 uses
  %16 = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %17 = add <4 x i32> %16, %13                    ; 2 uses
  %18 = shufflevector <4 x i32> %15, <4 x i32> %17, <2 x i32> <i32 2, i32 6>
  %19 = shufflevector <4 x i32> %15, <4 x i32> %17, <2 x i32> <i32 0, i32 4>
  %20 = add <2 x i32> %18, %19
  %21 = insertelement <2 x i32> poison, i32 %.2183204, i64 0
  %22 = insertelement <2 x i32> %21, i32 %i.t, i64 1
  %23 = add <2 x i32> %20, %22
  %24 = urem <2 x i32> %23, splat (i32 65521)     ; 2 uses
  %.not165 = icmp eq i64 %i.u, 0
  %25 = extractelement <2 x i32> %24, i64 0       ; 2 uses
  %26 = extractelement <2 x i32> %24, i64 1       ; 2 uses
  br i1 %.not165, label %._crit_edge, label %.lr.ph, !llvm.loop !360

._crit_edge:                                      ; preds = %bb.k, %bb.c
  %.2183.lcssa = phi i32 [ %.1182, %bb.c ], [ %25, %bb.k ]
  %.2180.lcssa = phi i32 [ %.1179, %bb.c ], [ %26, %bb.k ]
  %i.dh = shl nuw i32 %.2180.lcssa, 16
  %i.di = or i32 %i.dh, %.2183.lcssa
  ret i32 %i.di
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @adler32_x86_avx2(i32 noundef %0, ptr noundef %1, i64 noundef %2) #21 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = lshr i32 %0, 16                          ; 2 uses
  %i.c = icmp ugt i64 %2, 65536
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, 31
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.preheader134, label %bb.c, !prof !44

.preheader134:                                    ; preds = %bb.a, %.preheader134
  %.0127 = phi i32 [ %i.k, %.preheader134 ], [ %i.a, %bb.a ]
  %.0121 = phi i32 [ %i.l, %.preheader134 ], [ %i.b, %bb.a ]
  %.085 = phi i64 [ %i.m, %.preheader134 ], [ %2, %bb.a ]
  %.084 = phi ptr [ %i.h, %.preheader134 ], [ %1, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.084, i64 1 ; 3 uses
  %i.i = load i8, ptr %.084, align 1, !tbaa !36
  %i.j = zext i8 %i.i to i32
  %i.k = add i32 %.0127, %i.j                     ; 3 uses
  %i.l = add i32 %i.k, %.0121                     ; 2 uses
  %i.m = add i64 %.085, -1                        ; 2 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = and i64 %i.n, 31
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.b, label %.preheader134, !llvm.loop !361

bb.b:                                             ; preds = %.preheader134
  %3 = insertelement <2 x i32> poison, i32 %i.k, i64 0
  %4 = insertelement <2 x i32> %3, i32 %i.l, i64 1
  %5 = urem <2 x i32> %4, splat (i32 65521)       ; 2 uses
  %6 = extractelement <2 x i32> %5, i64 0
  %7 = extractelement <2 x i32> %5, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1128 = phi i32 [ %6, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.1122 = phi i32 [ %7, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.186 = phi i64 [ %i.m, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %.1 = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ]
  %.not104161 = icmp eq i64 %.186, 0
  br i1 %.not104161, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.c, %._crit_edge
  %.2165 = phi ptr [ %.7.lcssa, %._crit_edge ], [ %.1, %bb.c ] ; 2 uses
  %.287164 = phi i64 [ %i.q, %._crit_edge ], [ %.186, %bb.c ] ; 3 uses
  %.2123163 = phi i32 [ %11, %._crit_edge ], [ %.1122, %bb.c ] ; 2 uses
  %.2129162 = phi i32 [ %12, %._crit_edge ], [ %.1128, %bb.c ] ; 3 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %.287164, i64 5504) ; 4 uses
  %i.q = sub nuw i64 %.287164, %i.p               ; 2 uses
  %i.r = icmp ugt i64 %.287164, 63
  br i1 %i.r, label %.preheader222, label %bb.e

.preheader222:                                    ; preds = %.lr.ph167, %.preheader222
  %.094 = phi i64 [ %i.av, %.preheader222 ], [ %i.p, %.lr.ph167 ]
  %i.s = phi <8 x i32> [ %i.at, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ] ; 2 uses
  %i.t = phi <8 x i32> [ %i.ab, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.u = phi <16 x i16> [ %i.ae, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.v = phi <16 x i16> [ %i.ah, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.w = phi <16 x i16> [ %i.ak, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.x = phi <16 x i16> [ %i.an, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %.3 = phi ptr [ %i.au, %.preheader222 ], [ %.2165, %.lr.ph167 ] ; 3 uses
  %i.y = load <32 x i8>, ptr %.3, align 1, !tbaa !36 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.3, i64 32
  %i.aa = load <32 x i8>, ptr %i.z, align 1, !tbaa !36 ; 3 uses
  %i.ab = add <8 x i32> %i.t, %i.s                ; 2 uses
  %i.ac = shufflevector <32 x i8> %i.y, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.ad = bitcast <32 x i8> %i.ac to <16 x i16>
  %i.ae = add <16 x i16> %i.u, %i.ad              ; 2 uses
  %i.af = shufflevector <32 x i8> %i.y, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.ag = bitcast <32 x i8> %i.af to <16 x i16>
  %i.ah = add <16 x i16> %i.v, %i.ag              ; 2 uses
  %i.ai = shufflevector <32 x i8> %i.aa, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.aj = bitcast <32 x i8> %i.ai to <16 x i16>
  %i.ak = add <16 x i16> %i.w, %i.aj              ; 2 uses
  %i.al = shufflevector <32 x i8> %i.aa, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.am = bitcast <32 x i8> %i.al to <16 x i16>
  %i.an = add <16 x i16> %i.x, %i.am              ; 2 uses
  %i.ao = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.y, <32 x i8> zeroinitializer)
  %i.ap = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.aa, <32 x i8> zeroinitializer)
  %i.aq = bitcast <4 x i64> %i.ao to <8 x i32>
  %i.ar = bitcast <4 x i64> %i.ap to <8 x i32>
  %i.as = add <8 x i32> %i.s, %i.aq
  %i.at = add <8 x i32> %i.as, %i.ar              ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.3, i64 64 ; 2 uses
  %i.av = add i64 %.094, -64                      ; 3 uses
  %i.aw = icmp ugt i64 %i.av, 63
  br i1 %i.aw, label %.preheader222, label %bb.d, !llvm.loop !362

bb.d:                                             ; preds = %.preheader222
  %i.ax = trunc nuw nsw i64 %i.p to i32
  %i.ay = and i32 %i.ax, 8128
  %i.az = mul nuw nsw i32 %i.ay, %.2129162
  %i.ba = add nuw nsw i32 %i.az, %.2123163
  %i.bb = shl <8 x i32> %i.ab, splat (i32 6)
  %i.bc = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ae, <16 x i16> <i16 64, i16 63, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 48, i16 47, i16 46, i16 45, i16 44, i16 43, i16 42, i16 41>)
  %i.bd = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ah, <16 x i16> <i16 56, i16 55, i16 54, i16 53, i16 52, i16 51, i16 50, i16 49, i16 40, i16 39, i16 38, i16 37, i16 36, i16 35, i16 34, i16 33>)
  %i.be = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.ak, <16 x i16> <i16 32, i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25, i16 16, i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9>)
  %i.bf = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.an, <16 x i16> <i16 24, i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17, i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1>)
  %i.bg = add <8 x i32> %i.bc, %i.bb
  %i.bh = add <8 x i32> %i.bg, %i.bd
  %i.bi = add <8 x i32> %i.bh, %i.be
  %i.bj = add <8 x i32> %i.bi, %i.bf
  %i.bk = shufflevector <8 x i32> %i.at, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bk)
  %i.bm = add i32 %i.bl, %.2129162
  %i.bn = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bj)
  %i.bo = add i32 %i.ba, %i.bn
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph167, %bb.d
  %.3130 = phi i32 [ %i.bm, %bb.d ], [ %.2129162, %.lr.ph167 ] ; 2 uses
  %.3124 = phi i32 [ %i.bo, %bb.d ], [ %.2123163, %.lr.ph167 ] ; 2 uses
  %.195 = phi i64 [ %i.av, %bb.d ], [ %i.p, %.lr.ph167 ] ; 3 uses
  %.4 = phi ptr [ %i.au, %bb.d ], [ %.2165, %.lr.ph167 ] ; 2 uses
  %i.bp = icmp samesign ugt i64 %.195, 3
  br i1 %i.bp, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.e, %.preheader
  %.4131 = phi i32 [ %i.cf, %.preheader ], [ %.3130, %bb.e ] ; 2 uses
  %.296 = phi i64 [ %i.cl, %.preheader ], [ %.195, %bb.e ]
  %.5 = phi ptr [ %i.ck, %.preheader ], [ %.4, %bb.e ] ; 5 uses
  %.083 = phi i32 [ %i.bq, %.preheader ], [ 0, %bb.e ]
  %.082 = phi i32 [ %i.cg, %.preheader ], [ 0, %bb.e ]
  %.081 = phi i32 [ %i.ch, %.preheader ], [ 0, %bb.e ]
  %.080 = phi i32 [ %i.ci, %.preheader ], [ 0, %bb.e ]
  %.0 = phi i32 [ %i.cj, %.preheader ], [ 0, %bb.e ]
  %i.bq = add i32 %.083, %.4131                   ; 2 uses
  %i.br = load i8, ptr %.5, align 1, !tbaa !36
  %i.bs = zext i8 %i.br to i32                    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.5, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !36
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.5, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !36
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.5, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !36
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %i.cc = add i32 %.4131, %i.bs
  %i.cd = add i32 %i.cc, %i.bv
  %i.ce = add i32 %i.cd, %i.by
  %i.cf = add i32 %i.ce, %i.cb                    ; 2 uses
  %i.cg = add i32 %.082, %i.bs                    ; 2 uses
  %i.ch = add i32 %.081, %i.bv                    ; 2 uses
  %i.ci = add i32 %.080, %i.by                    ; 2 uses
  %i.cj = add i32 %.0, %i.cb                      ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.5, i64 4 ; 2 uses
  %i.cl = add i64 %.296, -4                       ; 3 uses
  %i.cm = icmp ugt i64 %i.cl, 3
  br i1 %i.cm, label %.preheader, label %bb.f, !llvm.loop !363

bb.f:                                             ; preds = %.preheader
  %i.cn = add i32 %i.cg, %i.bq
  %i.co = shl i32 %i.cn, 2
  %i.cp = mul i32 %i.ch, 3
  %i.cq = shl i32 %i.ci, 1
  %i.cr = add i32 %i.cp, %.3124
  %i.cs = add i32 %i.cr, %i.co
  %i.ct = add i32 %i.cs, %i.cq
  %i.cu = add i32 %i.ct, %i.cj
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.5132 = phi i32 [ %i.cf, %bb.f ], [ %.3130, %bb.e ] ; 2 uses
  %.4125 = phi i32 [ %i.cu, %bb.f ], [ %.3124, %bb.e ] ; 2 uses
  %.397 = phi i64 [ %i.cl, %bb.f ], [ %.195, %bb.e ] ; 5 uses
  %.6 = phi ptr [ %i.ck, %bb.f ], [ %.4, %bb.e ]  ; 3 uses
  %.not105154 = icmp eq i64 %.397, 0
  br i1 %.not105154, label %._crit_edge, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %bb.g, %.lr.ph.prol
  %.7158.prol = phi ptr [ %i.da, %.lr.ph.prol ], [ %.6, %bb.g ] ; 2 uses
  %.498157.prol = phi i64 [ %i.cz, %.lr.ph.prol ], [ %.397, %bb.g ]
  %.5126156.prol = phi i32 [ %i.cy, %.lr.ph.prol ], [ %.4125, %bb.g ]
  %.6133155.prol = phi i32 [ %i.cx, %.lr.ph.prol ], [ %.5132, %bb.g ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %bb.g ]
  %i.cv = load i8, ptr %.7158.prol, align 1, !tbaa !36
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add i32 %.6133155.prol, %i.cw           ; 4 uses
  %i.cy = add i32 %i.cx, %.5126156.prol           ; 3 uses
  %i.cz = add nsw i64 %.498157.prol, -1           ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.7158.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %.397
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !364

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol
  %i.db = icmp ult i64 %.397, 4
  br i1 %i.db, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.7158 = phi ptr [ %i.dw, %.lr.ph ], [ %i.da, %.lr.ph.prol.loopexit ] ; 5 uses
  %.498157 = phi i64 [ %i.dv, %.lr.ph ], [ %i.cz, %.lr.ph.prol.loopexit ]
  %.5126156 = phi i32 [ %i.du, %.lr.ph ], [ %i.cy, %.lr.ph.prol.loopexit ]
  %.6133155 = phi i32 [ %i.dt, %.lr.ph ], [ %i.cx, %.lr.ph.prol.loopexit ]
  %i.dc = load i8, ptr %.7158, align 1, !tbaa !36
  %i.dd = zext i8 %i.dc to i32
  %i.de = add i32 %.6133155, %i.dd                ; 2 uses
  %i.df = add i32 %i.de, %.5126156
  %i.dg = getelementptr inbounds nuw i8, ptr %.7158, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !36
  %i.di = zext i8 %i.dh to i32
  %i.dj = add i32 %i.de, %i.di                    ; 2 uses
  %i.dk = add i32 %i.dj, %i.df
  %i.dl = getelementptr inbounds nuw i8, ptr %.7158, i64 2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !36
  %i.dn = zext i8 %i.dm to i32
  %i.do = add i32 %i.dj, %i.dn                    ; 2 uses
  %i.dp = add i32 %i.do, %i.dk
  %i.dq = getelementptr inbounds nuw i8, ptr %.7158, i64 3
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !36
  %i.ds = zext i8 %i.dr to i32
  %i.dt = add i32 %i.do, %i.ds                    ; 3 uses
  %i.du = add i32 %i.dt, %i.dp                    ; 2 uses
  %i.dv = add nsw i64 %.498157, -4                ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.7158, i64 4
  %.not105.3 = icmp eq i64 %i.dv, 0
  br i1 %.not105.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !365

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa262 = phi i32 [ %i.cx, %.lr.ph.prol.loopexit ], [ %i.dt, %.lr.ph ]
  %.lcssa261 = phi i32 [ %i.cy, %.lr.ph.prol.loopexit ], [ %i.du, %.lr.ph ]
  %scevgep = getelementptr i8, ptr %.6, i64 %.397
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.6133.lcssa = phi i32 [ %.5132, %bb.g ], [ %.lcssa262, %._crit_edge.loopexit ]
  %.5126.lcssa = phi i32 [ %.4125, %bb.g ], [ %.lcssa261, %._crit_edge.loopexit ]
  %.7.lcssa = phi ptr [ %.6, %bb.g ], [ %scevgep, %._crit_edge.loopexit ]
  %8 = insertelement <2 x i32> poison, i32 %.5126.lcssa, i64 0
  %9 = insertelement <2 x i32> %8, i32 %.6133.lcssa, i64 1
  %10 = urem <2 x i32> %9, splat (i32 65521)      ; 2 uses
  %.not104 = icmp eq i64 %i.q, 0
  %11 = extractelement <2 x i32> %10, i64 0       ; 2 uses
  %12 = extractelement <2 x i32> %10, i64 1       ; 2 uses
  br i1 %.not104, label %._crit_edge168, label %.lr.ph167, !llvm.loop !366

._crit_edge168:                                   ; preds = %._crit_edge, %bb.c
  %.2129.lcssa = phi i32 [ %.1128, %bb.c ], [ %12, %._crit_edge ]
  %.2123.lcssa = phi i32 [ %.1122, %bb.c ], [ %11, %._crit_edge ]
  %i.dx = shl nuw i32 %.2123.lcssa, 16
  %i.dy = or i32 %i.dx, %.2129.lcssa
  ret i32 %i.dy
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @adler32_x86_sse2(i32 noundef %0, ptr noundef %1, i64 noundef %2) #22 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 2 uses
  %i.b = lshr i32 %0, 16                          ; 2 uses
  %i.c = icmp ugt i64 %2, 65536
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, 15
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.preheader134, label %bb.c, !prof !44

.preheader134:                                    ; preds = %bb.a, %.preheader134
  %.0127 = phi i32 [ %i.k, %.preheader134 ], [ %i.a, %bb.a ]
  %.0121 = phi i32 [ %i.l, %.preheader134 ], [ %i.b, %bb.a ]
  %.085 = phi i64 [ %i.m, %.preheader134 ], [ %2, %bb.a ]
  %.084 = phi ptr [ %i.h, %.preheader134 ], [ %1, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.084, i64 1 ; 3 uses
  %i.i = load i8, ptr %.084, align 1, !tbaa !36
  %i.j = zext i8 %i.i to i32
  %i.k = add i32 %.0127, %i.j                     ; 3 uses
  %i.l = add i32 %i.k, %.0121                     ; 2 uses
  %i.m = add i64 %.085, -1                        ; 2 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = and i64 %i.n, 15
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.b, label %.preheader134, !llvm.loop !367

bb.b:                                             ; preds = %.preheader134
  %i.p = urem i32 %i.k, 65521
  %i.q = urem i32 %i.l, 65521
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1128 = phi i32 [ %i.p, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.1122 = phi i32 [ %i.q, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.186 = phi i64 [ %i.m, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %.1 = phi ptr [ %i.h, %bb.b ], [ %1, %bb.a ]
  %.not104161 = icmp eq i64 %.186, 0
  br i1 %.not104161, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.c, %._crit_edge
  %.2165 = phi ptr [ %.7.lcssa, %._crit_edge ], [ %.1, %bb.c ] ; 2 uses
  %.287164 = phi i64 [ %i.s, %._crit_edge ], [ %.186, %bb.c ] ; 3 uses
  %.2123163 = phi i32 [ %i.eb, %._crit_edge ], [ %.1122, %bb.c ] ; 2 uses
  %.2129162 = phi i32 [ %i.ea, %._crit_edge ], [ %.1128, %bb.c ] ; 3 uses
  %i.r = tail call i64 @llvm.umin.i64(i64 %.287164, i64 4096) ; 4 uses
  %i.s = sub nuw i64 %.287164, %i.r               ; 2 uses
  %i.t = icmp ugt i64 %.287164, 31
  br i1 %i.t, label %.preheader222, label %bb.e

.preheader222:                                    ; preds = %.lr.ph167, %.preheader222
  %.094 = phi i64 [ %i.ax, %.preheader222 ], [ %i.r, %.lr.ph167 ]
  %i.u = phi <4 x i32> [ %i.av, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ] ; 2 uses
  %i.v = phi <4 x i32> [ %i.ad, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.w = phi <8 x i16> [ %i.ag, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.x = phi <8 x i16> [ %i.aj, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.y = phi <8 x i16> [ %i.am, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.z = phi <8 x i16> [ %i.ap, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %.3 = phi ptr [ %i.aw, %.preheader222 ], [ %.2165, %.lr.ph167 ] ; 3 uses
  %i.aa = load <16 x i8>, ptr %.3, align 1, !tbaa !36 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.3, i64 16
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !36 ; 3 uses
  %i.ad = add <4 x i32> %i.v, %i.u                ; 2 uses
  %i.ae = shufflevector <16 x i8> %i.aa, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.af = bitcast <16 x i8> %i.ae to <8 x i16>
  %i.ag = add <8 x i16> %i.w, %i.af               ; 2 uses
  %i.ah = shufflevector <16 x i8> %i.aa, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ai = bitcast <16 x i8> %i.ah to <8 x i16>
  %i.aj = add <8 x i16> %i.x, %i.ai               ; 2 uses
  %i.ak = shufflevector <16 x i8> %i.ac, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.al = bitcast <16 x i8> %i.ak to <8 x i16>
  %i.am = add <8 x i16> %i.y, %i.al               ; 2 uses
  %i.an = shufflevector <16 x i8> %i.ac, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ao = bitcast <16 x i8> %i.an to <8 x i16>
  %i.ap = add <8 x i16> %i.z, %i.ao               ; 2 uses
  %i.aq = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.aa, <16 x i8> zeroinitializer)
  %i.ar = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ac, <16 x i8> zeroinitializer)
  %i.as = bitcast <2 x i64> %i.aq to <4 x i32>
  %i.at = bitcast <2 x i64> %i.ar to <4 x i32>
  %i.au = add <4 x i32> %i.u, %i.as
  %i.av = add <4 x i32> %i.au, %i.at              ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.3, i64 32 ; 2 uses
  %i.ax = add i64 %.094, -32                      ; 3 uses
  %i.ay = icmp ugt i64 %i.ax, 31
  br i1 %i.ay, label %.preheader222, label %bb.d, !llvm.loop !368

bb.d:                                             ; preds = %.preheader222
  %i.az = trunc nuw nsw i64 %i.r to i32
  %i.ba = and i32 %i.az, 8160
  %i.bb = mul nuw nsw i32 %i.ba, %.2129162
  %i.bc = add nuw nsw i32 %i.bb, %.2123163
  %i.bd = shl <4 x i32> %i.ad, splat (i32 5)
  %i.be = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ag, <8 x i16> <i16 32, i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25>)
  %i.bf = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aj, <8 x i16> <i16 24, i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17>)
  %i.bg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.am, <8 x i16> <i16 16, i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9>)
  %i.bh = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ap, <8 x i16> <i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1>)
  %i.bi = add <4 x i32> %i.be, %i.bd
  %i.bj = add <4 x i32> %i.bi, %i.bf
  %i.bk = add <4 x i32> %i.bj, %i.bg
  %i.bl = add <4 x i32> %i.bk, %i.bh
  %i.bm = shufflevector <4 x i32> %i.av, <4 x i32> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.bn = add <4 x i32> %i.bm, %i.av
  %i.bo = extractelement <4 x i32> %i.bn, i64 0
  %i.bp = add i32 %i.bo, %.2129162
  %i.bq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bl)
  %i.br = add i32 %i.bc, %i.bq
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph167, %bb.d
  %.3130 = phi i32 [ %i.bp, %bb.d ], [ %.2129162, %.lr.ph167 ] ; 2 uses
  %.3124 = phi i32 [ %i.br, %bb.d ], [ %.2123163, %.lr.ph167 ] ; 2 uses
  %.195 = phi i64 [ %i.ax, %bb.d ], [ %i.r, %.lr.ph167 ] ; 3 uses
  %.4 = phi ptr [ %i.aw, %bb.d ], [ %.2165, %.lr.ph167 ] ; 2 uses
  %i.bs = icmp samesign ugt i64 %.195, 3
  br i1 %i.bs, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.e, %.preheader
  %.4131 = phi i32 [ %i.ci, %.preheader ], [ %.3130, %bb.e ] ; 2 uses
  %.296 = phi i64 [ %i.co, %.preheader ], [ %.195, %bb.e ]
  %.5 = phi ptr [ %i.cn, %.preheader ], [ %.4, %bb.e ] ; 5 uses
  %.083 = phi i32 [ %i.bt, %.preheader ], [ 0, %bb.e ]
  %.082 = phi i32 [ %i.cj, %.preheader ], [ 0, %bb.e ]
  %.081 = phi i32 [ %i.ck, %.preheader ], [ 0, %bb.e ]
  %.080 = phi i32 [ %i.cl, %.preheader ], [ 0, %bb.e ]
  %.0 = phi i32 [ %i.cm, %.preheader ], [ 0, %bb.e ]
  %i.bt = add i32 %.083, %.4131                   ; 2 uses
  %i.bu = load i8, ptr %.5, align 1, !tbaa !36
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.5, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !36
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.5, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !36
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.5, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !36
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = add i32 %.4131, %i.bv
  %i.cg = add i32 %i.cf, %i.by
  %i.ch = add i32 %i.cg, %i.cb
  %i.ci = add i32 %i.ch, %i.ce                    ; 2 uses
  %i.cj = add i32 %.082, %i.bv                    ; 2 uses
  %i.ck = add i32 %.081, %i.by                    ; 2 uses
  %i.cl = add i32 %.080, %i.cb                    ; 2 uses
  %i.cm = add i32 %.0, %i.ce                      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.5, i64 4 ; 2 uses
  %i.co = add i64 %.296, -4                       ; 3 uses
  %i.cp = icmp ugt i64 %i.co, 3
  br i1 %i.cp, label %.preheader, label %bb.f, !llvm.loop !369

bb.f:                                             ; preds = %.preheader
  %i.cq = add i32 %i.cj, %i.bt
  %i.cr = shl i32 %i.cq, 2
  %i.cs = mul i32 %i.ck, 3
  %i.ct = shl i32 %i.cl, 1
  %i.cu = add i32 %i.cs, %.3124
  %i.cv = add i32 %i.cu, %i.cr
  %i.cw = add i32 %i.cv, %i.ct
  %i.cx = add i32 %i.cw, %i.cm
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.5132 = phi i32 [ %i.ci, %bb.f ], [ %.3130, %bb.e ] ; 2 uses
  %.4125 = phi i32 [ %i.cx, %bb.f ], [ %.3124, %bb.e ] ; 2 uses
  %.397 = phi i64 [ %i.co, %bb.f ], [ %.195, %bb.e ] ; 5 uses
  %.6 = phi ptr [ %i.cn, %bb.f ], [ %.4, %bb.e ]  ; 3 uses
  %.not105154 = icmp eq i64 %.397, 0
  br i1 %.not105154, label %._crit_edge, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %bb.g, %.lr.ph.prol
  %.7158.prol = phi ptr [ %i.dd, %.lr.ph.prol ], [ %.6, %bb.g ] ; 2 uses
  %.498157.prol = phi i64 [ %i.dc, %.lr.ph.prol ], [ %.397, %bb.g ]
  %.5126156.prol = phi i32 [ %i.db, %.lr.ph.prol ], [ %.4125, %bb.g ]
  %.6133155.prol = phi i32 [ %i.da, %.lr.ph.prol ], [ %.5132, %bb.g ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %bb.g ]
  %i.cy = load i8, ptr %.7158.prol, align 1, !tbaa !36
  %i.cz = zext i8 %i.cy to i32
  %i.da = add i32 %.6133155.prol, %i.cz           ; 4 uses
  %i.db = add i32 %i.da, %.5126156.prol           ; 3 uses
  %i.dc = add nsw i64 %.498157.prol, -1           ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.7158.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %.397
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !370

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol
  %i.de = icmp ult i64 %.397, 4
  br i1 %i.de, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.7158 = phi ptr [ %i.dz, %.lr.ph ], [ %i.dd, %.lr.ph.prol.loopexit ] ; 5 uses
  %.498157 = phi i64 [ %i.dy, %.lr.ph ], [ %i.dc, %.lr.ph.prol.loopexit ]
  %.5126156 = phi i32 [ %i.dx, %.lr.ph ], [ %i.db, %.lr.ph.prol.loopexit ]
  %.6133155 = phi i32 [ %i.dw, %.lr.ph ], [ %i.da, %.lr.ph.prol.loopexit ]
end_hunk_0
