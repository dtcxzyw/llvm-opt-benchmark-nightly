inline.NumInlined: 100
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 134
begin_hunk_0_@adler32_x86_avx512_vl512_vnni:bb.a
  %.lcssa285.unr = phi ptr [ poison, %.preheader183.preheader ], [ %i.j, %.preheader183.prol ]
  %.lcssa284.unr = phi i32 [ poison, %.preheader183.preheader ], [ %i.m, %.preheader183.prol ]
  %.lcssa283.unr = phi i32 [ poison, %.preheader183.preheader ], [ %i.n, %.preheader183.prol ]
  %.lcssa282.unr = phi i64 [ poison, %.preheader183.preheader ], [ %i.o, %.preheader183.prol ]
  %.0180.unr = phi i32 [ %i.a, %.preheader183.preheader ], [ %i.m, %.preheader183.prol ]
  %.0177.unr = phi i32 [ %i.b, %.preheader183.preheader ], [ %i.n, %.preheader183.prol ]
  %.0132.unr = phi i64 [ %2, %.preheader183.preheader ], [ %i.o, %.preheader183.prol ]
  %.0.unr = phi ptr [ %1, %.preheader183.preheader ], [ %i.j, %.preheader183.prol ]
  %i.p = icmp ugt i6 %i.h, -4
  br i1 %i.p, label %.unr-lcssa, label %.preheader183

.preheader183:                                    ; preds = %.preheader183.prol.loopexit, %.preheader183
  %.0180 = phi i32 [ %i.ai, %.preheader183 ], [ %.0180.unr, %.preheader183.prol.loopexit ]
  %.0177 = phi i32 [ %i.aj, %.preheader183 ], [ %.0177.unr, %.preheader183.prol.loopexit ]
  %.0132 = phi i64 [ %i.ak, %.preheader183 ], [ %.0132.unr, %.preheader183.prol.loopexit ]
  %.0 = phi ptr [ %i.af, %.preheader183 ], [ %.0.unr, %.preheader183.prol.loopexit ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.r = load i8, ptr %.0, align 1, !tbaa !31
  %i.s = zext i8 %i.r to i32
  %i.t = add i32 %.0180, %i.s                     ; 2 uses
  %i.u = add i32 %i.t, %.0177
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.w = load i8, ptr %i.q, align 1, !tbaa !31
  %i.x = zext i8 %i.w to i32
  %i.y = add i32 %i.t, %i.x                       ; 2 uses
  %i.z = add i32 %i.y, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !31
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add i32 %i.y, %i.ac                     ; 2 uses
  %i.ae = add i32 %i.ad, %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 3 uses
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !31
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add i32 %i.ad, %i.ah                    ; 3 uses
  %i.aj = add i32 %i.ai, %i.ae                    ; 2 uses
  %i.ak = add i64 %.0132, -4                      ; 2 uses
  %i.al = ptrtoint ptr %i.af to i64
  %i.am = and i64 %i.al, 63
  %.not.3 = icmp eq i64 %i.am, 0
  br i1 %.not.3, label %.unr-lcssa, label %.preheader183, !llvm.loop !353

.unr-lcssa:                                       ; preds = %.preheader183, %.preheader183.prol.loopexit
  %.lcssa285 = phi ptr [ %.lcssa285.unr, %.preheader183.prol.loopexit ], [ %i.af, %.preheader183 ]
  %.lcssa284 = phi i32 [ %.lcssa284.unr, %.preheader183.prol.loopexit ], [ %i.ai, %.preheader183 ]
  %.lcssa283 = phi i32 [ %.lcssa283.unr, %.preheader183.prol.loopexit ], [ %i.aj, %.preheader183 ]
  %.lcssa282 = phi i64 [ %.lcssa282.unr, %.preheader183.prol.loopexit ], [ %i.ak, %.preheader183 ]
  %i.an = urem i32 %.lcssa284, 65521
  %i.ao = urem i32 %.lcssa283, 65521
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %bb.a
  %.1181 = phi i32 [ %i.an, %.unr-lcssa ], [ %i.a, %bb.a ] ; 2 uses
  %.1178 = phi i32 [ %i.ao, %.unr-lcssa ], [ %i.b, %bb.a ] ; 2 uses
  %.1133 = phi i64 [ %.lcssa282, %.unr-lcssa ], [ %2, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %.lcssa285, %.unr-lcssa ], [ %1, %bb.a ]
  %.not164201 = icmp eq i64 %.1133, 0
  br i1 %.not164201, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.j
  %.2205 = phi ptr [ %.7, %bb.j ], [ %.1, %bb.b ] ; 2 uses
  %.2134204 = phi i64 [ %i.at, %bb.j ], [ %.1133, %bb.b ] ; 3 uses
  %.2179203 = phi i32 [ %i.ep, %bb.j ], [ %.1178, %bb.b ]
  %.2182202 = phi i32 [ %i.eo, %bb.j ], [ %.1181, %bb.b ] ; 2 uses
  %i.ap = tail call i64 @llvm.umin.i64(i64 %.2134204, i64 5376) ; 4 uses
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = mul nuw nsw i32 %.2182202, %i.aq
  %i.as = add nuw nsw i32 %i.ar, %.2179203
  %i.at = sub i64 %.2134204, %i.ap                ; 2 uses
  %i.au = icmp ugt i64 %.2134204, 255
  br i1 %i.au, label %.preheader, label %bb.d

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %i.av = phi <16 x i32> [ %i.bz, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.aw = phi <16 x i32> [ %i.bp, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ax = phi <16 x i32> [ %i.bq, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ay = phi <16 x i32> [ %i.br, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.az = phi <16 x i32> [ %i.bs, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ba = phi <16 x i32> [ %i.bt, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.bb = phi <16 x i32> [ %i.bu, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.bc = phi <16 x i32> [ %i.bv, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.bd = phi <16 x i32> [ %i.by, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.be = phi <16 x i32> [ %i.bx, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.bf = phi <16 x i32> [ %i.bo, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.bg = phi <16 x i32> [ %i.bw, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %.0135 = phi i64 [ %i.cb, %.preheader ], [ %i.ap, %.lr.ph ]
  %.3 = phi ptr [ %i.ca, %.preheader ], [ %.2205, %.lr.ph ] ; 5 uses
  %i.bh = load <64 x i8>, ptr %.3, align 1, !tbaa !31 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.3, i64 64
  %i.bj = load <64 x i8>, ptr %i.bi, align 1, !tbaa !31 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.3, i64 128
  %i.bl = load <64 x i8>, ptr %i.bk, align 1, !tbaa !31 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.3, i64 192
  %i.bn = load <64 x i8>, ptr %i.bm, align 1, !tbaa !31 ; 2 uses
  %i.bo = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bf, <64 x i8> %i.bh, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.bp = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.aw, <64 x i8> %i.bj, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.bq = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ax, <64 x i8> %i.bl, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.br = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ay, <64 x i8> %i.bn, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.bs = add <16 x i32> %i.bg, %i.az             ; 2 uses
  %i.bt = add <16 x i32> %i.be, %i.ba             ; 2 uses
  %i.bu = add <16 x i32> %i.bd, %i.bb             ; 2 uses
  %i.bv = add <16 x i32> %i.bc, %i.av             ; 2 uses
  %i.bw = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bg, <64 x i8> %i.bh, <64 x i8> splat (i8 1)) ; 3 uses
  %i.bx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.be, <64 x i8> %i.bj, <64 x i8> splat (i8 1)) ; 2 uses
  %i.by = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bd, <64 x i8> %i.bl, <64 x i8> splat (i8 1)) ; 3 uses
  %i.bz = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.av, <64 x i8> %i.bn, <64 x i8> splat (i8 1)) ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.3, i64 256 ; 2 uses
  %i.cb = add i64 %.0135, -256                    ; 3 uses
  %i.cc = icmp ugt i64 %i.cb, 255
  br i1 %i.cc, label %.preheader, label %bb.c, !llvm.loop !354

bb.c:                                             ; preds = %.preheader
  %i.cd = add <16 x i32> %i.bx, %i.bw             ; 2 uses
  %i.ce = add <16 x i32> %i.by, %i.bw
  %i.cf = add <16 x i32> %i.bu, %i.bv
  %i.cg = add <16 x i32> %i.cf, %i.bt
  %i.ch = add <16 x i32> %i.cg, %i.bs
  %i.ci = add <16 x i32> %i.cd, %i.by
  %i.cj = add <16 x i32> %i.ci, %i.bz
  %i.ck = shl <16 x i32> %i.ch, splat (i32 8)
  %i.cl = shl <16 x i32> %i.cd, splat (i32 7)
  %i.cm = shl <16 x i32> %i.ce, splat (i32 6)
  %i.cn = add <16 x i32> %i.bo, %i.ck
  %i.co = add <16 x i32> %i.cn, %i.bp
  %i.cp = add <16 x i32> %i.co, %i.bq
  %i.cq = add <16 x i32> %i.cp, %i.br
  %i.cr = add <16 x i32> %i.cq, %i.cl
  %i.cs = add <16 x i32> %i.cr, %i.cm
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.ct = phi <16 x i32> [ %i.cs, %bb.c ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.cu = phi <16 x i32> [ %i.cj, %bb.c ], [ zeroinitializer, %.lr.ph ] ; 3 uses
  %.1136 = phi i64 [ %i.cb, %bb.c ], [ %i.ap, %.lr.ph ] ; 3 uses
  %.4 = phi ptr [ %i.ca, %bb.c ], [ %.2205, %.lr.ph ] ; 4 uses
  %i.cv = icmp samesign ugt i64 %.1136, 127
  br i1 %i.cv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cw = load <64 x i8>, ptr %.4, align 1, !tbaa !31 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.4, i64 64
  %i.cy = load <64 x i8>, ptr %i.cx, align 1, !tbaa !31 ; 2 uses
  %i.cz = shl <16 x i32> %i.cu, splat (i32 7)
  %i.da = add <16 x i32> %i.cz, %i.ct
  %i.db = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cu, <64 x i8> %i.cw, <64 x i8> splat (i8 1))
  %i.dc = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.db, <64 x i8> %i.cy, <64 x i8> splat (i8 1))
  %i.dd = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.da, <64 x i8> %i.cw, <64 x i8> splat (i8 64))
  %i.de = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.dd, <64 x i8> %i.cw, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.df = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.de, <64 x i8> %i.cy, <64 x i8> <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.dg = getelementptr inbounds nuw i8, ptr %.4, i64 128
  %i.dh = add nsw i64 %.1136, -128
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.di = phi <16 x i32> [ %i.df, %bb.e ], [ %i.ct, %bb.d ] ; 2 uses
  %i.dj = phi <16 x i32> [ %i.dc, %bb.e ], [ %i.cu, %bb.d ] ; 4 uses
  %.2137 = phi i64 [ %i.dh, %bb.e ], [ %.1136, %bb.d ] ; 6 uses
  %.5 = phi ptr [ %i.dg, %bb.e ], [ %.4, %bb.d ]  ; 4 uses
  %.not165 = icmp eq i64 %.2137, 0
  br i1 %.not165, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dk = trunc nuw nsw i64 %.2137 to i32
  %i.dl = insertelement <16 x i32> poison, i32 %i.dk, i64 0
  %i.dm = shufflevector <16 x i32> %i.dl, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.dn = mul <16 x i32> %i.dm, %i.dj
  %i.do = add <16 x i32> %i.dn, %i.di             ; 2 uses
  %i.dp = trunc i64 %.2137 to i8
  %i.dq = add i8 %i.dp, -64
  %i.dr = insertelement <64 x i8> poison, i8 %i.dq, i64 0
  %i.ds = shufflevector <64 x i8> %i.dr, <64 x i8> poison, <64 x i32> zeroinitializer ; 2 uses
  %i.dt = add <64 x i8> %i.ds, <i8 64, i8 63, i8 62, i8 61, i8 60, i8 59, i8 58, i8 57, i8 56, i8 55, i8 54, i8 53, i8 52, i8 51, i8 50, i8 49, i8 48, i8 47, i8 46, i8 45, i8 44, i8 43, i8 42, i8 41, i8 40, i8 39, i8 38, i8 37, i8 36, i8 35, i8 34, i8 33, i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1> ; 2 uses
  %i.du = icmp samesign ugt i64 %.2137, 64
  br i1 %i.du, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dv = load <64 x i8>, ptr %.5, align 1, !tbaa !31 ; 2 uses
  %i.dw = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.dj, <64 x i8> %i.dv, <64 x i8> splat (i8 1))
  %i.dx = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.do, <64 x i8> %i.dv, <64 x i8> %i.dt)
  %i.dy = getelementptr inbounds nuw i8, ptr %.5, i64 64
  %i.dz = add nsw i64 %.2137, -64
  %i.ea = add <64 x i8> %i.ds, <i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 -8, i8 -9, i8 -10, i8 -11, i8 -12, i8 -13, i8 -14, i8 -15, i8 -16, i8 -17, i8 -18, i8 -19, i8 -20, i8 -21, i8 -22, i8 -23, i8 -24, i8 -25, i8 -26, i8 -27, i8 -28, i8 -29, i8 -30, i8 -31, i8 -32, i8 -33, i8 -34, i8 -35, i8 -36, i8 -37, i8 -38, i8 -39, i8 -40, i8 -41, i8 -42, i8 -43, i8 -44, i8 -45, i8 -46, i8 -47, i8 -48, i8 -49, i8 -50, i8 -51, i8 -52, i8 -53, i8 -54, i8 -55, i8 -56, i8 -57, i8 -58, i8 -59, i8 -60, i8 -61, i8 -62, i8 -63>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi = phi <16 x i32> [ %i.dw, %bb.h ], [ %i.dj, %bb.g ]
  %.3148.in = phi <16 x i32> [ %i.dx, %bb.h ], [ %i.do, %bb.g ]
  %.0139.in = phi <64 x i8> [ %i.ea, %bb.h ], [ %i.dt, %bb.g ]
  %.3138 = phi i64 [ %i.dz, %bb.h ], [ %.2137, %bb.g ] ; 2 uses
  %.6 = phi ptr [ %i.dy, %bb.h ], [ %.5, %bb.g ]  ; 2 uses
  %i.eb = sub nuw nsw i64 64, %.3138
  %i.ec = lshr i64 -1, %i.eb
  %i.ed = bitcast i64 %i.ec to <64 x i1>
  %i.ee = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr align 1 %.6, <64 x i1> %i.ed, <64 x i8> zeroinitializer) ; 2 uses
  %i.ef = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.pre-phi, <64 x i8> %i.ee, <64 x i8> splat (i8 1))
  %i.eg = tail call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.3148.in, <64 x i8> %i.ee, <64 x i8> %.0139.in)
  %i.eh = getelementptr inbounds nuw i8, ptr %.6, i64 %.3138
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ei = phi <16 x i32> [ %i.eg, %bb.i ], [ %i.di, %bb.f ]
  %i.ej = phi <16 x i32> [ %i.ef, %bb.i ], [ %i.dj, %bb.f ]
  %.7 = phi ptr [ %i.eh, %bb.i ], [ %.5, %bb.f ]
  %i.ek = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ej)
  %i.el = add i32 %i.ek, %.2182202
  %i.em = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ei)
  %i.en = add i32 %i.as, %i.em
  %i.eo = urem i32 %i.el, 65521                   ; 2 uses
  %i.ep = urem i32 %i.en, 65521                   ; 2 uses
  %.not164 = icmp eq i64 %i.at, 0
  br i1 %.not164, label %._crit_edge, label %.lr.ph, !llvm.loop !355

._crit_edge:                                      ; preds = %bb.j, %bb.b
  %.2182.lcssa = phi i32 [ %.1181, %bb.b ], [ %i.eo, %bb.j ]
  %.2179.lcssa = phi i32 [ %.1178, %bb.b ], [ %i.ep, %bb.j ]
  %i.eq = shl nuw i32 %.2179.lcssa, 16
  %i.er = or i32 %i.eq, %.2182.lcssa
  ret i32 %i.er
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @adler32_x86_avx512_vl256_vnni(i32 noundef %0, ptr noundef %1, i64 noundef %2) #19 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 3 uses
  %i.b = lshr i32 %0, 16                          ; 3 uses
  %i.c = icmp ugt i64 %2, 65536
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = and i64 %i.d, 31
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.preheader183.preheader, label %bb.b, !prof !53

.preheader183.preheader:                          ; preds = %bb.a
  %i.h = trunc i64 %i.d to i5                     ; 2 uses
  %i.i = sub i5 0, %i.h
  %xtraiter = and i5 %i.i, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i5 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader183.prol.loopexit, label %.preheader183.prol

.preheader183.prol:                               ; preds = %.preheader183.preheader, %.preheader183.prol
  %.0180.prol = phi i32 [ %i.m, %.preheader183.prol ], [ %i.a, %.preheader183.preheader ]
  %.0177.prol = phi i32 [ %i.n, %.preheader183.prol ], [ %i.b, %.preheader183.preheader ]
  %.0132.prol = phi i64 [ %i.o, %.preheader183.prol ], [ %2, %.preheader183.preheader ]
  %.0.prol = phi ptr [ %i.j, %.preheader183.prol ], [ %1, %.preheader183.preheader ] ; 2 uses
  %prol.iter = phi i5 [ %prol.iter.next, %.preheader183.prol ], [ 0, %.preheader183.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.0.prol, i64 1 ; 3 uses
  %i.k = load i8, ptr %.0.prol, align 1, !tbaa !31
  %i.l = zext i8 %i.k to i32
  %i.m = add i32 %.0180.prol, %i.l                ; 4 uses
  %i.n = add i32 %i.m, %.0177.prol                ; 3 uses
  %i.o = add i64 %.0132.prol, -1                  ; 3 uses
  %prol.iter.next = add i5 %prol.iter, 1          ; 2 uses
  %prol.iter.cmp.not = icmp eq i5 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader183.prol.loopexit, label %.preheader183.prol, !llvm.loop !356

.preheader183.prol.loopexit:                      ; preds = %.preheader183.prol, %.preheader183.preheader
  %.lcssa287.unr = phi ptr [ poison, %.preheader183.preheader ], [ %i.j, %.preheader183.prol ]
  %.lcssa286.unr = phi i32 [ poison, %.preheader183.preheader ], [ %i.m, %.preheader183.prol ]
  %.lcssa285.unr = phi i32 [ poison, %.preheader183.preheader ], [ %i.n, %.preheader183.prol ]
  %.lcssa284.unr = phi i64 [ poison, %.preheader183.preheader ], [ %i.o, %.preheader183.prol ]
  %.0180.unr = phi i32 [ %i.a, %.preheader183.preheader ], [ %i.m, %.preheader183.prol ]
  %.0177.unr = phi i32 [ %i.b, %.preheader183.preheader ], [ %i.n, %.preheader183.prol ]
  %.0132.unr = phi i64 [ %2, %.preheader183.preheader ], [ %i.o, %.preheader183.prol ]
  %.0.unr = phi ptr [ %1, %.preheader183.preheader ], [ %i.j, %.preheader183.prol ]
  %i.p = icmp ugt i5 %i.h, -4
  br i1 %i.p, label %.unr-lcssa, label %.preheader183

.preheader183:                                    ; preds = %.preheader183.prol.loopexit, %.preheader183
  %.0180 = phi i32 [ %i.ai, %.preheader183 ], [ %.0180.unr, %.preheader183.prol.loopexit ]
  %.0177 = phi i32 [ %i.aj, %.preheader183 ], [ %.0177.unr, %.preheader183.prol.loopexit ]
  %.0132 = phi i64 [ %i.ak, %.preheader183 ], [ %.0132.unr, %.preheader183.prol.loopexit ]
  %.0 = phi ptr [ %i.af, %.preheader183 ], [ %.0.unr, %.preheader183.prol.loopexit ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.r = load i8, ptr %.0, align 1, !tbaa !31
  %i.s = zext i8 %i.r to i32
  %i.t = add i32 %.0180, %i.s                     ; 2 uses
  %i.u = add i32 %i.t, %.0177
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.w = load i8, ptr %i.q, align 1, !tbaa !31
  %i.x = zext i8 %i.w to i32
  %i.y = add i32 %i.t, %i.x                       ; 2 uses
  %i.z = add i32 %i.y, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !31
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add i32 %i.y, %i.ac                     ; 2 uses
  %i.ae = add i32 %i.ad, %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 3 uses
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !31
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add i32 %i.ad, %i.ah                    ; 3 uses
  %i.aj = add i32 %i.ai, %i.ae                    ; 2 uses
  %i.ak = add i64 %.0132, -4                      ; 2 uses
  %i.al = ptrtoint ptr %i.af to i64
  %i.am = and i64 %i.al, 31
  %.not.3 = icmp eq i64 %i.am, 0
  br i1 %.not.3, label %.unr-lcssa, label %.preheader183, !llvm.loop !357

.unr-lcssa:                                       ; preds = %.preheader183, %.preheader183.prol.loopexit
  %.lcssa287 = phi ptr [ %.lcssa287.unr, %.preheader183.prol.loopexit ], [ %i.af, %.preheader183 ]
  %.lcssa286 = phi i32 [ %.lcssa286.unr, %.preheader183.prol.loopexit ], [ %i.ai, %.preheader183 ]
  %.lcssa285 = phi i32 [ %.lcssa285.unr, %.preheader183.prol.loopexit ], [ %i.aj, %.preheader183 ]
  %.lcssa284 = phi i64 [ %.lcssa284.unr, %.preheader183.prol.loopexit ], [ %i.ak, %.preheader183 ]
  %i.an = urem i32 %.lcssa286, 65521
  %i.ao = urem i32 %.lcssa285, 65521
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %bb.a
  %.1181 = phi i32 [ %i.an, %.unr-lcssa ], [ %i.a, %bb.a ] ; 2 uses
  %.1178 = phi i32 [ %i.ao, %.unr-lcssa ], [ %i.b, %bb.a ] ; 2 uses
  %.1133 = phi i64 [ %.lcssa284, %.unr-lcssa ], [ %2, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %.lcssa287, %.unr-lcssa ], [ %1, %bb.a ]
  %.not164201 = icmp eq i64 %.1133, 0
  br i1 %.not164201, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.j
  %.2205 = phi ptr [ %.7, %bb.j ], [ %.1, %bb.b ] ; 2 uses
  %.2134204 = phi i64 [ %i.at, %bb.j ], [ %.1133, %bb.b ] ; 3 uses
  %.2179203 = phi i32 [ %i.ep, %bb.j ], [ %.1178, %bb.b ]
  %.2182202 = phi i32 [ %i.eo, %bb.j ], [ %.1181, %bb.b ] ; 2 uses
  %i.ap = tail call i64 @llvm.umin.i64(i64 %.2134204, i64 5504) ; 4 uses
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = mul nuw nsw i32 %.2182202, %i.aq
  %i.as = add nuw nsw i32 %i.ar, %.2179203
  %i.at = sub i64 %.2134204, %i.ap                ; 2 uses
  %i.au = icmp ugt i64 %.2134204, 127
  br i1 %i.au, label %.preheader, label %bb.d

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %i.av = phi <8 x i32> [ %i.bz, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.aw = phi <8 x i32> [ %i.bp, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ax = phi <8 x i32> [ %i.bq, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ay = phi <8 x i32> [ %i.br, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.az = phi <8 x i32> [ %i.bs, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ba = phi <8 x i32> [ %i.bt, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.bb = phi <8 x i32> [ %i.bu, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.bc = phi <8 x i32> [ %i.bv, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.bd = phi <8 x i32> [ %i.by, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.be = phi <8 x i32> [ %i.bx, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.bf = phi <8 x i32> [ %i.bo, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.bg = phi <8 x i32> [ %i.bw, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %.0135 = phi i64 [ %i.cb, %.preheader ], [ %i.ap, %.lr.ph ]
  %.3 = phi ptr [ %i.ca, %.preheader ], [ %.2205, %.lr.ph ] ; 5 uses
  %i.bh = load <32 x i8>, ptr %.3, align 1, !tbaa !31 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.3, i64 32
  %i.bj = load <32 x i8>, ptr %i.bi, align 1, !tbaa !31 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.3, i64 64
  %i.bl = load <32 x i8>, ptr %i.bk, align 1, !tbaa !31 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.3, i64 96
  %i.bn = load <32 x i8>, ptr %i.bm, align 1, !tbaa !31 ; 2 uses
  %i.bo = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bf, <32 x i8> %i.bh, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.bp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aw, <32 x i8> %i.bj, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.bq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ax, <32 x i8> %i.bl, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.br = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ay, <32 x i8> %i.bn, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.bs = add <8 x i32> %i.bg, %i.az              ; 2 uses
  %i.bt = add <8 x i32> %i.be, %i.ba              ; 2 uses
  %i.bu = add <8 x i32> %i.bd, %i.bb              ; 2 uses
  %i.bv = add <8 x i32> %i.bc, %i.av              ; 2 uses
  %i.bw = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bg, <32 x i8> %i.bh, <32 x i8> splat (i8 1)) ; 3 uses
  %i.bx = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.be, <32 x i8> %i.bj, <32 x i8> splat (i8 1)) ; 2 uses
  %i.by = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bd, <32 x i8> %i.bl, <32 x i8> splat (i8 1)) ; 3 uses
  %i.bz = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.av, <32 x i8> %i.bn, <32 x i8> splat (i8 1)) ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.3, i64 128 ; 2 uses
  %i.cb = add i64 %.0135, -128                    ; 3 uses
  %i.cc = icmp ugt i64 %i.cb, 127
  br i1 %i.cc, label %.preheader, label %bb.c, !llvm.loop !358

bb.c:                                             ; preds = %.preheader
  %i.cd = add <8 x i32> %i.bx, %i.bw              ; 2 uses
  %i.ce = add <8 x i32> %i.by, %i.bw
  %i.cf = add <8 x i32> %i.bu, %i.bv
  %i.cg = add <8 x i32> %i.cf, %i.bt
  %i.ch = add <8 x i32> %i.cg, %i.bs
  %i.ci = add <8 x i32> %i.cd, %i.by
  %i.cj = add <8 x i32> %i.ci, %i.bz
  %i.ck = shl <8 x i32> %i.ch, splat (i32 7)
  %i.cl = shl <8 x i32> %i.cd, splat (i32 6)
  %i.cm = shl <8 x i32> %i.ce, splat (i32 5)
  %i.cn = add <8 x i32> %i.bo, %i.ck
  %i.co = add <8 x i32> %i.cn, %i.bp
  %i.cp = add <8 x i32> %i.co, %i.bq
  %i.cq = add <8 x i32> %i.cp, %i.br
  %i.cr = add <8 x i32> %i.cq, %i.cl
  %i.cs = add <8 x i32> %i.cr, %i.cm
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.ct = phi <8 x i32> [ %i.cs, %bb.c ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.cu = phi <8 x i32> [ %i.cj, %bb.c ], [ zeroinitializer, %.lr.ph ] ; 3 uses
  %.1136 = phi i64 [ %i.cb, %bb.c ], [ %i.ap, %.lr.ph ] ; 3 uses
  %.4 = phi ptr [ %i.ca, %bb.c ], [ %.2205, %.lr.ph ] ; 4 uses
  %i.cv = icmp samesign ugt i64 %.1136, 63
  br i1 %i.cv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cw = load <32 x i8>, ptr %.4, align 1, !tbaa !31 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.4, i64 32
  %i.cy = load <32 x i8>, ptr %i.cx, align 1, !tbaa !31 ; 2 uses
  %i.cz = shl <8 x i32> %i.cu, splat (i32 6)
  %i.da = add <8 x i32> %i.cz, %i.ct
  %i.db = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cu, <32 x i8> %i.cw, <32 x i8> splat (i8 1))
  %i.dc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.db, <32 x i8> %i.cy, <32 x i8> splat (i8 1))
  %i.dd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.da, <32 x i8> %i.cw, <32 x i8> splat (i8 32))
  %i.de = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.dd, <32 x i8> %i.cw, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.df = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.de, <32 x i8> %i.cy, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.dg = getelementptr inbounds nuw i8, ptr %.4, i64 64
  %i.dh = add nsw i64 %.1136, -64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.di = phi <8 x i32> [ %i.df, %bb.e ], [ %i.ct, %bb.d ] ; 2 uses
  %i.dj = phi <8 x i32> [ %i.dc, %bb.e ], [ %i.cu, %bb.d ] ; 4 uses
  %.2137 = phi i64 [ %i.dh, %bb.e ], [ %.1136, %bb.d ] ; 6 uses
  %.5 = phi ptr [ %i.dg, %bb.e ], [ %.4, %bb.d ]  ; 4 uses
  %.not165 = icmp eq i64 %.2137, 0
  br i1 %.not165, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dk = trunc nuw nsw i64 %.2137 to i32         ; 2 uses
  %i.dl = insertelement <8 x i32> poison, i32 %i.dk, i64 0
  %i.dm = shufflevector <8 x i32> %i.dl, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.dn = mul <8 x i32> %i.dm, %i.dj
  %i.do = add <8 x i32> %i.dn, %i.di              ; 2 uses
  %i.dp = trunc i64 %.2137 to i8
  %i.dq = add i8 %i.dp, -32
  %i.dr = insertelement <32 x i8> poison, i8 %i.dq, i64 0
  %i.ds = shufflevector <32 x i8> %i.dr, <32 x i8> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.dt = add <32 x i8> %i.ds, <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1> ; 2 uses
  %i.du = icmp samesign ugt i64 %.2137, 32
  br i1 %i.du, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dv = load <32 x i8>, ptr %.5, align 1, !tbaa !31 ; 2 uses
  %i.dw = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.dj, <32 x i8> %i.dv, <32 x i8> splat (i8 1))
  %i.dx = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.do, <32 x i8> %i.dv, <32 x i8> %i.dt)
  %i.dy = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.dz = add nsw i64 %.2137, -32                 ; 2 uses
  %i.ea = add <32 x i8> %i.ds, <i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 -8, i8 -9, i8 -10, i8 -11, i8 -12, i8 -13, i8 -14, i8 -15, i8 -16, i8 -17, i8 -18, i8 -19, i8 -20, i8 -21, i8 -22, i8 -23, i8 -24, i8 -25, i8 -26, i8 -27, i8 -28, i8 -29, i8 -30, i8 -31>
  %.pre = trunc nuw nsw i64 %i.dz to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi227 = phi <8 x i32> [ %i.dw, %bb.h ], [ %i.dj, %bb.g ]
  %.pre-phi = phi i32 [ %.pre, %bb.h ], [ %i.dk, %bb.g ]
  %.3148.in = phi <8 x i32> [ %i.dx, %bb.h ], [ %i.do, %bb.g ]
  %.0139.in = phi <32 x i8> [ %i.ea, %bb.h ], [ %i.dt, %bb.g ]
  %.3138 = phi i64 [ %i.dz, %bb.h ], [ %.2137, %bb.g ]
  %.6 = phi ptr [ %i.dy, %bb.h ], [ %.5, %bb.g ]  ; 2 uses
  %i.eb = sub nsw i32 32, %.pre-phi
  %i.ec = lshr i32 -1, %i.eb
  %i.ed = bitcast i32 %i.ec to <32 x i1>
  %i.ee = tail call <32 x i8> @llvm.masked.load.v32i8.p0(ptr align 1 %.6, <32 x i1> %i.ed, <32 x i8> zeroinitializer) ; 2 uses
  %i.ef = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.pre-phi227, <32 x i8> %i.ee, <32 x i8> splat (i8 1))
  %i.eg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.3148.in, <32 x i8> %i.ee, <32 x i8> %.0139.in)
  %i.eh = getelementptr inbounds nuw i8, ptr %.6, i64 %.3138
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ei = phi <8 x i32> [ %i.eg, %bb.i ], [ %i.di, %bb.f ]
  %i.ej = phi <8 x i32> [ %i.ef, %bb.i ], [ %i.dj, %bb.f ]
  %.7 = phi ptr [ %i.eh, %bb.i ], [ %.5, %bb.f ]
  %i.ek = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ej)
  %i.el = add i32 %i.ek, %.2182202
  %i.em = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ei)
  %i.en = add i32 %i.as, %i.em
  %i.eo = urem i32 %i.el, 65521                   ; 2 uses
  %i.ep = urem i32 %i.en, 65521                   ; 2 uses
  %.not164 = icmp eq i64 %i.at, 0
  br i1 %.not164, label %._crit_edge, label %.lr.ph, !llvm.loop !359

._crit_edge:                                      ; preds = %bb.j, %bb.b
  %.2182.lcssa = phi i32 [ %.1181, %bb.b ], [ %i.eo, %bb.j ]
  %.2179.lcssa = phi i32 [ %.1178, %bb.b ], [ %i.ep, %bb.j ]
  %i.eq = shl nuw i32 %.2179.lcssa, 16
  %i.er = or i32 %i.eq, %.2182.lcssa
  ret i32 %i.er
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @adler32_x86_avx2_vnni(i32 noundef %0, ptr noundef %1, i64 noundef %2) #20 {
bb.a:
  %i.a = alloca <4 x i64>, align 32               ; 5 uses
  %i.b = and i32 %0, 65535                        ; 3 uses
  %i.c = lshr i32 %0, 16                          ; 3 uses
  %i.d = icmp ugt i64 %2, 65536
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = and i64 %i.e, 31
  %i.g = icmp ne i64 %i.f, 0
  %i.h = and i1 %i.d, %i.g
  br i1 %i.h, label %.preheader185.preheader, label %bb.b, !prof !53

.preheader185.preheader:                          ; preds = %bb.a
  %i.i = trunc i64 %i.e to i5                     ; 2 uses
  %i.j = sub i5 0, %i.i
  %xtraiter = and i5 %i.j, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i5 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader185.prol.loopexit, label %.preheader185.prol

.preheader185.prol:                               ; preds = %.preheader185.preheader, %.preheader185.prol
  %.0181.prol = phi i32 [ %i.n, %.preheader185.prol ], [ %i.b, %.preheader185.preheader ]
  %.0178.prol = phi i32 [ %i.o, %.preheader185.prol ], [ %i.c, %.preheader185.preheader ]
  %.0133.prol = phi i64 [ %i.p, %.preheader185.prol ], [ %2, %.preheader185.preheader ]
  %.0.prol = phi ptr [ %i.k, %.preheader185.prol ], [ %1, %.preheader185.preheader ] ; 2 uses
  %prol.iter = phi i5 [ %prol.iter.next, %.preheader185.prol ], [ 0, %.preheader185.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.0.prol, i64 1 ; 3 uses
  %i.l = load i8, ptr %.0.prol, align 1, !tbaa !31
  %i.m = zext i8 %i.l to i32
  %i.n = add i32 %.0181.prol, %i.m                ; 4 uses
  %i.o = add i32 %i.n, %.0178.prol                ; 3 uses
  %i.p = add i64 %.0133.prol, -1                  ; 3 uses
  %prol.iter.next = add i5 %prol.iter, 1          ; 2 uses
  %prol.iter.cmp.not = icmp eq i5 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader185.prol.loopexit, label %.preheader185.prol, !llvm.loop !360

.preheader185.prol.loopexit:                      ; preds = %.preheader185.prol, %.preheader185.preheader
  %.lcssa288.unr = phi ptr [ poison, %.preheader185.preheader ], [ %i.k, %.preheader185.prol ]
  %.lcssa287.unr = phi i32 [ poison, %.preheader185.preheader ], [ %i.n, %.preheader185.prol ]
  %.lcssa286.unr = phi i32 [ poison, %.preheader185.preheader ], [ %i.o, %.preheader185.prol ]
  %.lcssa285.unr = phi i64 [ poison, %.preheader185.preheader ], [ %i.p, %.preheader185.prol ]
  %.0181.unr = phi i32 [ %i.b, %.preheader185.preheader ], [ %i.n, %.preheader185.prol ]
  %.0178.unr = phi i32 [ %i.c, %.preheader185.preheader ], [ %i.o, %.preheader185.prol ]
  %.0133.unr = phi i64 [ %2, %.preheader185.preheader ], [ %i.p, %.preheader185.prol ]
  %.0.unr = phi ptr [ %1, %.preheader185.preheader ], [ %i.k, %.preheader185.prol ]
  %i.q = icmp ugt i5 %i.i, -4
  br i1 %i.q, label %.unr-lcssa, label %.preheader185

.preheader185:                                    ; preds = %.preheader185.prol.loopexit, %.preheader185
  %.0181 = phi i32 [ %i.aj, %.preheader185 ], [ %.0181.unr, %.preheader185.prol.loopexit ]
  %.0178 = phi i32 [ %i.ak, %.preheader185 ], [ %.0178.unr, %.preheader185.prol.loopexit ]
  %.0133 = phi i64 [ %i.al, %.preheader185 ], [ %.0133.unr, %.preheader185.prol.loopexit ]
  %.0 = phi ptr [ %i.ag, %.preheader185 ], [ %.0.unr, %.preheader185.prol.loopexit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.s = load i8, ptr %.0, align 1, !tbaa !31
  %i.t = zext i8 %i.s to i32
  %i.u = add i32 %.0181, %i.t                     ; 2 uses
  %i.v = add i32 %i.u, %.0178
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.x = load i8, ptr %i.r, align 1, !tbaa !31
  %i.y = zext i8 %i.x to i32
  %i.z = add i32 %i.u, %i.y                       ; 2 uses
  %i.aa = add i32 %i.z, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.ac = load i8, ptr %i.w, align 1, !tbaa !31
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add i32 %i.z, %i.ad                     ; 2 uses
  %i.af = add i32 %i.ae, %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 3 uses
  %i.ah = load i8, ptr %i.ab, align 1, !tbaa !31
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add i32 %i.ae, %i.ai                    ; 3 uses
  %i.ak = add i32 %i.aj, %i.af                    ; 2 uses
  %i.al = add i64 %.0133, -4                      ; 2 uses
  %i.am = ptrtoint ptr %i.ag to i64
  %i.an = and i64 %i.am, 31
  %.not.3 = icmp eq i64 %i.an, 0
  br i1 %.not.3, label %.unr-lcssa, label %.preheader185, !llvm.loop !361

.unr-lcssa:                                       ; preds = %.preheader185, %.preheader185.prol.loopexit
  %.lcssa288 = phi ptr [ %.lcssa288.unr, %.preheader185.prol.loopexit ], [ %i.ag, %.preheader185 ]
  %.lcssa287 = phi i32 [ %.lcssa287.unr, %.preheader185.prol.loopexit ], [ %i.aj, %.preheader185 ]
  %.lcssa286 = phi i32 [ %.lcssa286.unr, %.preheader185.prol.loopexit ], [ %i.ak, %.preheader185 ]
  %.lcssa285 = phi i64 [ %.lcssa285.unr, %.preheader185.prol.loopexit ], [ %i.al, %.preheader185 ]
  %i.ao = urem i32 %.lcssa287, 65521
  %i.ap = urem i32 %.lcssa286, 65521
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %bb.a
  %.1182 = phi i32 [ %i.ao, %.unr-lcssa ], [ %i.b, %bb.a ] ; 2 uses
  %.1179 = phi i32 [ %i.ap, %.unr-lcssa ], [ %i.c, %bb.a ] ; 2 uses
  %.1134 = phi i64 [ %.lcssa285, %.unr-lcssa ], [ %2, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %.lcssa288, %.unr-lcssa ], [ %1, %bb.a ]
  %.not165203 = icmp eq i64 %.1134, 0
  br i1 %.not165203, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.j
  %.2207 = phi ptr [ %.7, %bb.j ], [ %.1, %bb.b ] ; 2 uses
  %.2135206 = phi i64 [ %i.au, %bb.j ], [ %.1134, %bb.b ] ; 3 uses
  %.2180205 = phi i32 [ %i.em, %bb.j ], [ %.1179, %bb.b ]
  %.2183204 = phi i32 [ %i.el, %bb.j ], [ %.1182, %bb.b ] ; 2 uses
  %i.aq = tail call i64 @llvm.umin.i64(i64 %.2135206, i64 5504) ; 4 uses
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = mul nuw nsw i32 %.2183204, %i.ar
  %i.at = add nuw nsw i32 %i.as, %.2180205
  %i.au = sub i64 %.2135206, %i.aq                ; 2 uses
  %i.av = icmp ugt i64 %.2135206, 127
  br i1 %i.av, label %.preheader, label %bb.d

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %i.aw = phi <8 x i32> [ %i.ca, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.ax = phi <8 x i32> [ %i.bq, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ay = phi <8 x i32> [ %i.br, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.az = phi <8 x i32> [ %i.bs, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.ba = phi <8 x i32> [ %i.bt, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.bb = phi <8 x i32> [ %i.bu, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.bc = phi <8 x i32> [ %i.bv, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.bd = phi <8 x i32> [ %i.bw, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.be = phi <8 x i32> [ %i.bz, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.bf = phi <8 x i32> [ %i.by, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.bg = phi <8 x i32> [ %i.bp, %.preheader ], [ zeroinitializer, %.lr.ph ]
  %i.bh = phi <8 x i32> [ %i.bx, %.preheader ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %.0136 = phi i64 [ %i.cc, %.preheader ], [ %i.aq, %.lr.ph ]
  %.3 = phi ptr [ %i.cb, %.preheader ], [ %.2207, %.lr.ph ] ; 5 uses
  %i.bi = load <32 x i8>, ptr %.3, align 1, !tbaa !31 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.3, i64 32
  %i.bk = load <32 x i8>, ptr %i.bj, align 1, !tbaa !31 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.3, i64 64
  %i.bm = load <32 x i8>, ptr %i.bl, align 1, !tbaa !31 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.3, i64 96
  %i.bo = load <32 x i8>, ptr %i.bn, align 1, !tbaa !31 ; 2 uses
  %i.bp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bg, <32 x i8> %i.bi, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.bq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ax, <32 x i8> %i.bk, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.br = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ay, <32 x i8> %i.bm, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.bs = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.az, <32 x i8> %i.bo, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>) ; 2 uses
  %i.bt = add <8 x i32> %i.bh, %i.ba              ; 2 uses
  %i.bu = add <8 x i32> %i.bf, %i.bb              ; 2 uses
  %i.bv = add <8 x i32> %i.be, %i.bc              ; 2 uses
  %i.bw = add <8 x i32> %i.bd, %i.aw              ; 2 uses
  %i.bx = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bh, <32 x i8> %i.bi, <32 x i8> splat (i8 1)) ; 3 uses
  %i.by = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.bf, <32 x i8> %i.bk, <32 x i8> splat (i8 1)) ; 2 uses
  %i.bz = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.be, <32 x i8> %i.bm, <32 x i8> splat (i8 1)) ; 3 uses
  %i.ca = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aw, <32 x i8> %i.bo, <32 x i8> splat (i8 1)) ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.3, i64 128 ; 2 uses
  %i.cc = add i64 %.0136, -128                    ; 3 uses
  %i.cd = icmp ugt i64 %i.cc, 127
  br i1 %i.cd, label %.preheader, label %bb.c, !llvm.loop !362

bb.c:                                             ; preds = %.preheader
  %i.ce = add <8 x i32> %i.by, %i.bx              ; 2 uses
  %i.cf = add <8 x i32> %i.bz, %i.bx
  %i.cg = add <8 x i32> %i.bv, %i.bw
  %i.ch = add <8 x i32> %i.cg, %i.bu
  %i.ci = add <8 x i32> %i.ch, %i.bt
  %i.cj = add <8 x i32> %i.ce, %i.bz
  %i.ck = add <8 x i32> %i.cj, %i.ca
  %i.cl = shl <8 x i32> %i.ci, splat (i32 7)
  %i.cm = shl <8 x i32> %i.ce, splat (i32 6)
  %i.cn = shl <8 x i32> %i.cf, splat (i32 5)
  %i.co = add <8 x i32> %i.bp, %i.cl
  %i.cp = add <8 x i32> %i.co, %i.bq
  %i.cq = add <8 x i32> %i.cp, %i.br
  %i.cr = add <8 x i32> %i.cq, %i.bs
  %i.cs = add <8 x i32> %i.cr, %i.cm
  %i.ct = add <8 x i32> %i.cs, %i.cn
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.cu = phi <8 x i32> [ %i.ct, %bb.c ], [ zeroinitializer, %.lr.ph ] ; 2 uses
  %i.cv = phi <8 x i32> [ %i.ck, %bb.c ], [ zeroinitializer, %.lr.ph ] ; 3 uses
  %.1137 = phi i64 [ %i.cc, %bb.c ], [ %i.aq, %.lr.ph ] ; 3 uses
  %.4 = phi ptr [ %i.cb, %bb.c ], [ %.2207, %.lr.ph ] ; 4 uses
  %i.cw = icmp samesign ugt i64 %.1137, 63
  br i1 %i.cw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cx = load <32 x i8>, ptr %.4, align 1, !tbaa !31 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.4, i64 32
  %i.cz = load <32 x i8>, ptr %i.cy, align 1, !tbaa !31 ; 2 uses
  %i.da = shl <8 x i32> %i.cv, splat (i32 6)
  %i.db = add <8 x i32> %i.da, %i.cu
  %i.dc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.cv, <32 x i8> %i.cx, <32 x i8> splat (i8 1))
  %i.dd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.dc, <32 x i8> %i.cz, <32 x i8> splat (i8 1))
  %i.de = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.db, <32 x i8> %i.cx, <32 x i8> splat (i8 32))
  %i.df = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.de, <32 x i8> %i.cx, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.dg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.df, <32 x i8> %i.cz, <32 x i8> <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1>)
  %i.dh = getelementptr inbounds nuw i8, ptr %.4, i64 64
  %i.di = add nsw i64 %.1137, -64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dj = phi <8 x i32> [ %i.dg, %bb.e ], [ %i.cu, %bb.d ] ; 2 uses
  %i.dk = phi <8 x i32> [ %i.dd, %bb.e ], [ %i.cv, %bb.d ] ; 4 uses
  %.2138 = phi i64 [ %i.di, %bb.e ], [ %.1137, %bb.d ] ; 6 uses
  %.5 = phi ptr [ %i.dh, %bb.e ], [ %.4, %bb.d ]  ; 4 uses
  %.not166 = icmp eq i64 %.2138, 0
  br i1 %.not166, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dl = trunc nuw nsw i64 %.2138 to i32
  %i.dm = insertelement <8 x i32> poison, i32 %i.dl, i64 0
  %i.dn = shufflevector <8 x i32> %i.dm, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.do = mul <8 x i32> %i.dn, %i.dk
  %i.dp = add <8 x i32> %i.do, %i.dj              ; 2 uses
  %i.dq = trunc i64 %.2138 to i8
  %i.dr = add i8 %i.dq, -32
  %i.ds = insertelement <32 x i8> poison, i8 %i.dr, i64 0
  %i.dt = shufflevector <32 x i8> %i.ds, <32 x i8> poison, <32 x i32> zeroinitializer ; 2 uses
  %i.du = add <32 x i8> %i.dt, <i8 32, i8 31, i8 30, i8 29, i8 28, i8 27, i8 26, i8 25, i8 24, i8 23, i8 22, i8 21, i8 20, i8 19, i8 18, i8 17, i8 16, i8 15, i8 14, i8 13, i8 12, i8 11, i8 10, i8 9, i8 8, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1> ; 2 uses
  %i.dv = icmp samesign ugt i64 %.2138, 32
  br i1 %i.dv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dw = load <32 x i8>, ptr %.5, align 1, !tbaa !31 ; 2 uses
  %i.dx = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.dk, <32 x i8> %i.dw, <32 x i8> splat (i8 1))
  %i.dy = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.dp, <32 x i8> %i.dw, <32 x i8> %i.du)
  %i.dz = getelementptr inbounds nuw i8, ptr %.5, i64 32
  %i.ea = add nsw i64 %.2138, -32
  %i.eb = add <32 x i8> %i.dt, <i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 -8, i8 -9, i8 -10, i8 -11, i8 -12, i8 -13, i8 -14, i8 -15, i8 -16, i8 -17, i8 -18, i8 -19, i8 -20, i8 -21, i8 -22, i8 -23, i8 -24, i8 -25, i8 -26, i8 -27, i8 -28, i8 -29, i8 -30, i8 -31>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi = phi <8 x i32> [ %i.dx, %bb.h ], [ %i.dk, %bb.g ]
  %.3149.in = phi <8 x i32> [ %i.dy, %bb.h ], [ %i.dp, %bb.g ]
  %.0140.in = phi <32 x i8> [ %i.eb, %bb.h ], [ %i.du, %bb.g ]
  %.3139 = phi i64 [ %i.ea, %bb.h ], [ %.2138, %bb.g ] ; 2 uses
  %.6 = phi ptr [ %i.dz, %bb.h ], [ %.5, %bb.g ]  ; 2 uses
  store <4 x i64> zeroinitializer, ptr %i.a, align 32, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 32 %i.a, ptr align 1 %.6, i64 %.3139, i1 false)
  %.0..0..0..0.2184231289 = load <32 x i8>, ptr %i.a, align 32, !tbaa !31 ; 2 uses
  %i.ec = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.pre-phi, <32 x i8> %.0..0..0..0.2184231289, <32 x i8> splat (i8 1))
  %i.ed = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %.3149.in, <32 x i8> %.0..0..0..0.2184231289, <32 x i8> %.0140.in)
  %i.ee = getelementptr inbounds nuw i8, ptr %.6, i64 %.3139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ef = phi <8 x i32> [ %i.ed, %bb.i ], [ %i.dj, %bb.f ]
  %i.eg = phi <8 x i32> [ %i.ec, %bb.i ], [ %i.dk, %bb.f ]
  %.7 = phi ptr [ %i.ee, %bb.i ], [ %.5, %bb.f ]
  %i.eh = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.eg)
  %i.ei = add i32 %i.eh, %.2183204
  %i.ej = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ef)
  %i.ek = add i32 %i.at, %i.ej
  %i.el = urem i32 %i.ei, 65521                   ; 2 uses
  %i.em = urem i32 %i.ek, 65521                   ; 2 uses
  %.not165 = icmp eq i64 %i.au, 0
  br i1 %.not165, label %._crit_edge, label %.lr.ph, !llvm.loop !363

._crit_edge:                                      ; preds = %bb.j, %bb.b
  %.2183.lcssa = phi i32 [ %.1182, %bb.b ], [ %i.el, %bb.j ]
  %.2180.lcssa = phi i32 [ %.1179, %bb.b ], [ %i.em, %bb.j ]
  %i.en = shl nuw i32 %.2180.lcssa, 16
  %i.eo = or i32 %i.en, %.2183.lcssa
  ret i32 %i.eo
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @adler32_x86_avx2(i32 noundef %0, ptr noundef %1, i64 noundef %2) #21 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 3 uses
  %i.b = lshr i32 %0, 16                          ; 3 uses
  %i.c = icmp ugt i64 %2, 65536
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = and i64 %i.d, 31
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.preheader134.preheader, label %bb.b, !prof !53

.preheader134.preheader:                          ; preds = %bb.a
  %i.h = trunc i64 %i.d to i5                     ; 2 uses
  %i.i = sub i5 0, %i.h
  %xtraiter = and i5 %i.i, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i5 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader134.prol.loopexit, label %.preheader134.prol

.preheader134.prol:                               ; preds = %.preheader134.preheader, %.preheader134.prol
  %.0127.prol = phi i32 [ %i.m, %.preheader134.prol ], [ %i.a, %.preheader134.preheader ]
  %.0121.prol = phi i32 [ %i.n, %.preheader134.prol ], [ %i.b, %.preheader134.preheader ]
  %.085.prol = phi i64 [ %i.o, %.preheader134.prol ], [ %2, %.preheader134.preheader ]
  %.084.prol = phi ptr [ %i.j, %.preheader134.prol ], [ %1, %.preheader134.preheader ] ; 2 uses
  %prol.iter = phi i5 [ %prol.iter.next, %.preheader134.prol ], [ 0, %.preheader134.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.084.prol, i64 1 ; 3 uses
  %i.k = load i8, ptr %.084.prol, align 1, !tbaa !31
  %i.l = zext i8 %i.k to i32
  %i.m = add i32 %.0127.prol, %i.l                ; 4 uses
  %i.n = add i32 %i.m, %.0121.prol                ; 3 uses
  %i.o = add i64 %.085.prol, -1                   ; 3 uses
  %prol.iter.next = add i5 %prol.iter, 1          ; 2 uses
  %prol.iter.cmp.not = icmp eq i5 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader134.prol.loopexit, label %.preheader134.prol, !llvm.loop !364

.preheader134.prol.loopexit:                      ; preds = %.preheader134.prol, %.preheader134.preheader
  %.lcssa268.unr = phi ptr [ poison, %.preheader134.preheader ], [ %i.j, %.preheader134.prol ]
  %.lcssa267.unr = phi i32 [ poison, %.preheader134.preheader ], [ %i.m, %.preheader134.prol ]
  %.lcssa266.unr = phi i32 [ poison, %.preheader134.preheader ], [ %i.n, %.preheader134.prol ]
  %.lcssa265.unr = phi i64 [ poison, %.preheader134.preheader ], [ %i.o, %.preheader134.prol ]
  %.0127.unr = phi i32 [ %i.a, %.preheader134.preheader ], [ %i.m, %.preheader134.prol ]
  %.0121.unr = phi i32 [ %i.b, %.preheader134.preheader ], [ %i.n, %.preheader134.prol ]
  %.085.unr = phi i64 [ %2, %.preheader134.preheader ], [ %i.o, %.preheader134.prol ]
  %.084.unr = phi ptr [ %1, %.preheader134.preheader ], [ %i.j, %.preheader134.prol ]
  %i.p = icmp ugt i5 %i.h, -4
  br i1 %i.p, label %.unr-lcssa, label %.preheader134

.preheader134:                                    ; preds = %.preheader134.prol.loopexit, %.preheader134
  %.0127 = phi i32 [ %i.ai, %.preheader134 ], [ %.0127.unr, %.preheader134.prol.loopexit ]
  %.0121 = phi i32 [ %i.aj, %.preheader134 ], [ %.0121.unr, %.preheader134.prol.loopexit ]
  %.085 = phi i64 [ %i.ak, %.preheader134 ], [ %.085.unr, %.preheader134.prol.loopexit ]
  %.084 = phi ptr [ %i.af, %.preheader134 ], [ %.084.unr, %.preheader134.prol.loopexit ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.084, i64 1
  %i.r = load i8, ptr %.084, align 1, !tbaa !31
  %i.s = zext i8 %i.r to i32
  %i.t = add i32 %.0127, %i.s                     ; 2 uses
  %i.u = add i32 %i.t, %.0121
  %i.v = getelementptr inbounds nuw i8, ptr %.084, i64 2
  %i.w = load i8, ptr %i.q, align 1, !tbaa !31
  %i.x = zext i8 %i.w to i32
  %i.y = add i32 %i.t, %i.x                       ; 2 uses
  %i.z = add i32 %i.y, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %.084, i64 3
  %i.ab = load i8, ptr %i.v, align 1, !tbaa !31
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add i32 %i.y, %i.ac                     ; 2 uses
  %i.ae = add i32 %i.ad, %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %.084, i64 4 ; 3 uses
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !31
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add i32 %i.ad, %i.ah                    ; 3 uses
  %i.aj = add i32 %i.ai, %i.ae                    ; 2 uses
  %i.ak = add i64 %.085, -4                       ; 2 uses
  %i.al = ptrtoint ptr %i.af to i64
  %i.am = and i64 %i.al, 31
  %.not.3 = icmp eq i64 %i.am, 0
  br i1 %.not.3, label %.unr-lcssa, label %.preheader134, !llvm.loop !365

.unr-lcssa:                                       ; preds = %.preheader134, %.preheader134.prol.loopexit
  %.lcssa268 = phi ptr [ %.lcssa268.unr, %.preheader134.prol.loopexit ], [ %i.af, %.preheader134 ]
  %.lcssa267 = phi i32 [ %.lcssa267.unr, %.preheader134.prol.loopexit ], [ %i.ai, %.preheader134 ]
  %.lcssa266 = phi i32 [ %.lcssa266.unr, %.preheader134.prol.loopexit ], [ %i.aj, %.preheader134 ]
  %.lcssa265 = phi i64 [ %.lcssa265.unr, %.preheader134.prol.loopexit ], [ %i.ak, %.preheader134 ]
  %i.an = urem i32 %.lcssa267, 65521
  %i.ao = urem i32 %.lcssa266, 65521
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %bb.a
  %.1128 = phi i32 [ %i.an, %.unr-lcssa ], [ %i.a, %bb.a ] ; 2 uses
  %.1122 = phi i32 [ %i.ao, %.unr-lcssa ], [ %i.b, %bb.a ] ; 2 uses
  %.186 = phi i64 [ %.lcssa265, %.unr-lcssa ], [ %2, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %.lcssa268, %.unr-lcssa ], [ %1, %bb.a ]
  %.not104161 = icmp eq i64 %.186, 0
  br i1 %.not104161, label %._crit_edge168, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.b, %._crit_edge
  %.2165 = phi ptr [ %.7.lcssa, %._crit_edge ], [ %.1, %bb.b ] ; 2 uses
  %.287164 = phi i64 [ %i.aq, %._crit_edge ], [ %.186, %bb.b ] ; 3 uses
  %.2123163 = phi i32 [ %i.ey, %._crit_edge ], [ %.1122, %bb.b ] ; 2 uses
  %.2129162 = phi i32 [ %i.ex, %._crit_edge ], [ %.1128, %bb.b ] ; 3 uses
  %i.ap = tail call i64 @llvm.umin.i64(i64 %.287164, i64 5504) ; 4 uses
  %i.aq = sub i64 %.287164, %i.ap                 ; 2 uses
  %i.ar = icmp ugt i64 %.287164, 63
  br i1 %i.ar, label %.preheader222, label %bb.d

.preheader222:                                    ; preds = %.lr.ph167, %.preheader222
  %i.as = phi <8 x i32> [ %i.bt, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ] ; 2 uses
  %i.at = phi <8 x i32> [ %i.bb, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.au = phi <16 x i16> [ %i.be, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.av = phi <16 x i16> [ %i.bh, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.aw = phi <16 x i16> [ %i.bk, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %i.ax = phi <16 x i16> [ %i.bn, %.preheader222 ], [ zeroinitializer, %.lr.ph167 ]
  %.088 = phi i64 [ %i.bv, %.preheader222 ], [ %i.ap, %.lr.ph167 ]
  %.3 = phi ptr [ %i.bu, %.preheader222 ], [ %.2165, %.lr.ph167 ] ; 3 uses
  %i.ay = load <32 x i8>, ptr %.3, align 1, !tbaa !31 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.3, i64 32
  %i.ba = load <32 x i8>, ptr %i.az, align 1, !tbaa !31 ; 3 uses
  %i.bb = add <8 x i32> %i.at, %i.as              ; 2 uses
  %i.bc = shufflevector <32 x i8> %i.ay, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.bd = bitcast <32 x i8> %i.bc to <16 x i16>
  %i.be = add <16 x i16> %i.au, %i.bd             ; 2 uses
  %i.bf = shufflevector <32 x i8> %i.ay, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.bg = bitcast <32 x i8> %i.bf to <16 x i16>
  %i.bh = add <16 x i16> %i.av, %i.bg             ; 2 uses
  %i.bi = shufflevector <32 x i8> %i.ba, <32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55>
  %i.bj = bitcast <32 x i8> %i.bi to <16 x i16>
  %i.bk = add <16 x i16> %i.aw, %i.bj             ; 2 uses
  %i.bl = shufflevector <32 x i8> %i.ba, <32 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %i.bm = bitcast <32 x i8> %i.bl to <16 x i16>
  %i.bn = add <16 x i16> %i.ax, %i.bm             ; 2 uses
  %i.bo = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.ay, <32 x i8> zeroinitializer)
  %i.bp = tail call <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %i.ba, <32 x i8> zeroinitializer)
  %i.bq = bitcast <4 x i64> %i.bo to <8 x i32>
  %i.br = bitcast <4 x i64> %i.bp to <8 x i32>
  %i.bs = add <8 x i32> %i.as, %i.bq
  %i.bt = add <8 x i32> %i.bs, %i.br              ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.3, i64 64 ; 2 uses
  %i.bv = add i64 %.088, -64                      ; 3 uses
  %i.bw = icmp ugt i64 %i.bv, 63
  br i1 %i.bw, label %.preheader222, label %bb.c, !llvm.loop !366

bb.c:                                             ; preds = %.preheader222
  %i.bx = trunc nuw nsw i64 %i.ap to i32
  %i.by = and i32 %i.bx, 8128
  %i.bz = mul nuw nsw i32 %i.by, %.2129162
  %i.ca = add nuw nsw i32 %i.bz, %.2123163
  %i.cb = shl <8 x i32> %i.bb, splat (i32 6)
  %i.cc = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.be, <16 x i16> <i16 64, i16 63, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 48, i16 47, i16 46, i16 45, i16 44, i16 43, i16 42, i16 41>)
  %i.cd = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bh, <16 x i16> <i16 56, i16 55, i16 54, i16 53, i16 52, i16 51, i16 50, i16 49, i16 40, i16 39, i16 38, i16 37, i16 36, i16 35, i16 34, i16 33>)
  %i.ce = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bk, <16 x i16> <i16 32, i16 31, i16 30, i16 29, i16 28, i16 27, i16 26, i16 25, i16 16, i16 15, i16 14, i16 13, i16 12, i16 11, i16 10, i16 9>)
  %i.cf = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bn, <16 x i16> <i16 24, i16 23, i16 22, i16 21, i16 20, i16 19, i16 18, i16 17, i16 8, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1>)
  %i.cg = add <8 x i32> %i.cc, %i.cb
  %i.ch = add <8 x i32> %i.cg, %i.cd
  %i.ci = add <8 x i32> %i.ch, %i.ce
  %i.cj = add <8 x i32> %i.ci, %i.cf
  %i.ck = shufflevector <8 x i32> %i.bt, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.cl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ck)
  %i.cm = add i32 %i.cl, %.2129162
  %i.cn = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.cj)
  %i.co = add i32 %i.ca, %i.cn
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph167, %bb.c
  %.3130 = phi i32 [ %i.cm, %bb.c ], [ %.2129162, %.lr.ph167 ] ; 2 uses
  %.3124 = phi i32 [ %i.co, %bb.c ], [ %.2123163, %.lr.ph167 ] ; 2 uses
  %.189 = phi i64 [ %i.bv, %bb.c ], [ %i.ap, %.lr.ph167 ] ; 3 uses
  %.4 = phi ptr [ %i.bu, %bb.c ], [ %.2165, %.lr.ph167 ] ; 2 uses
  %i.cp = icmp samesign ugt i64 %.189, 3
  br i1 %i.cp, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.d, %.preheader
  %.4131 = phi i32 [ %i.df, %.preheader ], [ %.3130, %bb.d ] ; 2 uses
  %.290 = phi i64 [ %i.dl, %.preheader ], [ %.189, %bb.d ]
  %.5 = phi ptr [ %i.dk, %.preheader ], [ %.4, %bb.d ] ; 5 uses
  %.083 = phi i32 [ %i.cq, %.preheader ], [ 0, %bb.d ]
  %.082 = phi i32 [ %i.dg, %.preheader ], [ 0, %bb.d ]
  %.081 = phi i32 [ %i.dh, %.preheader ], [ 0, %bb.d ]
  %.080 = phi i32 [ %i.di, %.preheader ], [ 0, %bb.d ]
  %.0 = phi i32 [ %i.dj, %.preheader ], [ 0, %bb.d ]
  %i.cq = add i32 %.083, %.4131                   ; 2 uses
  %i.cr = load i8, ptr %.5, align 1, !tbaa !31
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.5, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !31
  %i.cv = zext i8 %i.cu to i32                    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.5, i64 2
end_hunk_0
