Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/cdictmgr?download=true
inline.NumInlined: 231
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@CDictMgr_DictMap_hash:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 -4417276706812531889, ptr %i.g, align 16, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 1609587929392839161, ptr %i.h, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i64 -8796714831421723037, ptr %i.i, align 32, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 2246822519, ptr %i.j, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i64 2870177450012600261, ptr %i.k, align 16, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 2654435761, ptr %i.l, align 8, !tbaa !17
  store i64 0, ptr %i.c, align 8, !tbaa !101
  store ptr @XXH3_kSecret, ptr %i.d, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 3 uses
  store i64 128, ptr %i.m, align 32, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  store i64 16, ptr %i.n, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.o = tail call i64 @ZL_UniqueID_hash(ptr noundef %0) #13
  store i64 %i.o, ptr %i.b, align 8, !tbaa !17
  call fastcc void @XXH3_update_regular(ptr noundef nonnull captures(address) %1, ptr noundef nonnull readonly captures(address) %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  call fastcc void @XXH3_update_regular(ptr noundef nonnull captures(address) %1, ptr noundef nonnull readonly captures(address) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  call fastcc void @XXH3_update_regular(ptr noundef nonnull captures(address) %1, ptr noundef nonnull readonly captures(address) %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  call fastcc void @XXH3_update_regular(ptr noundef nonnull captures(address) %1, ptr noundef nonnull readonly captures(address) %i.r)
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !21   ; 34 uses
  %i.t = icmp eq ptr %i.s, null                   ; 33 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = select i1 %i.t, ptr %i.u, ptr %i.s       ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.x = load i64, ptr %i.w, align 16, !tbaa !24  ; 44 uses
  %i.y = icmp ugt i64 %i.x, 240
  br i1 %i.y, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %.sroa.0.0.copyload.i = load <2 x i64>, ptr %1, align 64 ; 3 uses
  %.sroa.13.0.copyload.i = load <2 x i64>, ptr %i.g, align 16 ; 3 uses
  %.sroa.23.0.copyload.i = load <2 x i64>, ptr %i.i, align 32 ; 3 uses
  %.sroa.33.0.copyload.i = load <2 x i64>, ptr %i.k, align 16 ; 3 uses
  %i.z = load i32, ptr %i.e, align 64, !tbaa !25  ; 6 uses
  %i.aa = icmp ugt i32 %i.z, 63
  br i1 %i.aa, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ab = add i32 %i.z, -1
  %i.ac = lshr i32 %i.ab, 6
  %i.ad = zext nneg i32 %i.ac to i64              ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !102 ; 2 uses
  %i.ag = load i64, ptr %i.n, align 8, !tbaa !23  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.ai = shl i64 %i.af, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ai ; 2 uses
  %i.ak = sub i64 %i.ag, %i.af                    ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.ak, %i.ad
  br i1 %.not.i.i.i, label %.loopexit.i, label %.preheader48.i

.preheader48.i:                                   ; preds = %bb.c
  %i.al = load i64, ptr %i.m, align 32, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.al ; 4 uses
  %i.an = load <2 x i64>, ptr %i.am, align 1, !tbaa !26, !noalias !103
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ap = load <2 x i64>, ptr %i.ao, align 1, !tbaa !26, !noalias !103
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ar = load <2 x i64>, ptr %i.aq, align 1, !tbaa !26, !noalias !103
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.at = load <2 x i64>, ptr %i.as, align 1, !tbaa !26, !noalias !103
  br label %bb.d

bb.d:                                             ; preds = %XXH3_accumulate_sse2.exit47.i.i.i, %.preheader48.i
  %.sroa.33.0.i = phi <2 x i64> [ %.sroa.33.0.copyload.i, %.preheader48.i ], [ %i.el, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.sroa.23.0.i = phi <2 x i64> [ %.sroa.23.0.copyload.i, %.preheader48.i ], [ %i.eb, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.sroa.13.0.i = phi <2 x i64> [ %.sroa.13.0.copyload.i, %.preheader48.i ], [ %i.dr, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.sroa.0.0.i = phi <2 x i64> [ %.sroa.0.0.copyload.i, %.preheader48.i ], [ %i.dh, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.038.i.i.i = phi i64 [ %i.ad, %.preheader48.i ], [ %i.eo, %XXH3_accumulate_sse2.exit47.i.i.i ]
  %.036.i.i.i = phi ptr [ %i.ah, %.preheader48.i ], [ %i.en, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.035.i.i.i = phi ptr [ %i.aj, %.preheader48.i ], [ %i.v, %XXH3_accumulate_sse2.exit47.i.i.i ]
  %.0.i.i.i = phi i64 [ %i.ak, %.preheader48.i ], [ %i.ag, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 4 uses
  %.not56.i = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not56.i, label %XXH3_accumulate_sse2.exit47.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.sroa.33.1.i = phi <2 x i64> [ %i.cw, %.lr.ph.i ], [ %.sroa.33.0.i, %bb.d ]
  %.sroa.23.1.i = phi <2 x i64> [ %i.cj, %.lr.ph.i ], [ %.sroa.23.0.i, %bb.d ]
  %.sroa.13.1.i = phi <2 x i64> [ %i.bw, %.lr.ph.i ], [ %.sroa.13.0.i, %bb.d ]
  %.sroa.0.1.i = phi <2 x i64> [ %i.bj, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.d ]
  %.0.i46.i.i51.i = phi i64 [ %i.cx, %.lr.ph.i ], [ 0, %bb.d ] ; 3 uses
  %i.au = shl i64 %.0.i46.i.i51.i, 6
  %i.av = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 %i.au ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %i.aw, i32 0, i32 3, i32 1), !noalias !104
  %i.ax = shl i64 %.0.i46.i.i51.i, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %.035.i.i.i, i64 %i.ax ; 4 uses
  %i.az = load <2 x i64>, ptr %i.av, align 1, !tbaa !26, !noalias !105 ; 2 uses
  %i.ba = load <2 x i64>, ptr %i.ay, align 1, !tbaa !26, !noalias !105
  %i.bb = xor <2 x i64> %i.ba, %i.az              ; 2 uses
  %i.bc = bitcast <2 x i64> %i.bb to <4 x i32>
  %i.bd = and <2 x i64> %i.bb, splat (i64 4294967295)
  %i.be = and <4 x i32> %i.bc, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner = shufflevector <4 x i32> %i.be, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bf = bitcast <4 x i32> %.inner to <2 x i64>
  %i.bg = mul nuw <2 x i64> %i.bd, %i.bf
  %i.bh = shufflevector <2 x i64> %i.az, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bi = add <2 x i64> %.sroa.0.1.i, %i.bh
  %i.bj = add <2 x i64> %i.bi, %i.bg              ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bl = load <2 x i64>, ptr %i.bk, align 1, !tbaa !26, !noalias !105 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bn = load <2 x i64>, ptr %i.bm, align 1, !tbaa !26, !noalias !105
  %i.bo = xor <2 x i64> %i.bn, %i.bl              ; 2 uses
  %i.bp = bitcast <2 x i64> %i.bo to <4 x i32>
  %i.bq = and <2 x i64> %i.bo, splat (i64 4294967295)
  %i.br = and <4 x i32> %i.bp, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner160 = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bs = bitcast <4 x i32> %.inner160 to <2 x i64>
  %i.bt = mul nuw <2 x i64> %i.bq, %i.bs
  %i.bu = shufflevector <2 x i64> %i.bl, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bv = add <2 x i64> %.sroa.13.1.i, %i.bu
  %i.bw = add <2 x i64> %i.bv, %i.bt              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.by = load <2 x i64>, ptr %i.bx, align 1, !tbaa !26, !noalias !105 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ca = load <2 x i64>, ptr %i.bz, align 1, !tbaa !26, !noalias !105
  %i.cb = xor <2 x i64> %i.ca, %i.by              ; 2 uses
  %i.cc = bitcast <2 x i64> %i.cb to <4 x i32>
  %i.cd = and <2 x i64> %i.cb, splat (i64 4294967295)
  %i.ce = and <4 x i32> %i.cc, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner161 = shufflevector <4 x i32> %i.ce, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cf = bitcast <4 x i32> %.inner161 to <2 x i64>
  %i.cg = mul nuw <2 x i64> %i.cd, %i.cf
  %i.ch = shufflevector <2 x i64> %i.by, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = add <2 x i64> %.sroa.23.1.i, %i.ch
  %i.cj = add <2 x i64> %i.ci, %i.cg              ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.cl = load <2 x i64>, ptr %i.ck, align 1, !tbaa !26, !noalias !105 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.cn = load <2 x i64>, ptr %i.cm, align 1, !tbaa !26, !noalias !105
  %i.co = xor <2 x i64> %i.cn, %i.cl              ; 2 uses
  %i.cp = bitcast <2 x i64> %i.co to <4 x i32>
  %i.cq = and <2 x i64> %i.co, splat (i64 4294967295)
  %i.cr = and <4 x i32> %i.cp, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner162 = shufflevector <4 x i32> %i.cr, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cs = bitcast <4 x i32> %.inner162 to <2 x i64>
  %i.ct = mul nuw <2 x i64> %i.cq, %i.cs
  %i.cu = shufflevector <2 x i64> %i.cl, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.cv = add <2 x i64> %.sroa.33.1.i, %i.cu
  %i.cw = add <2 x i64> %i.cv, %i.ct              ; 2 uses
  %i.cx = add nuw i64 %.0.i46.i.i51.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cx, %.0.i.i.i
  br i1 %exitcond.not.i, label %XXH3_accumulate_sse2.exit47.i.i.i, label %.lr.ph.i, !llvm.loop !0

XXH3_accumulate_sse2.exit47.i.i.i:                ; preds = %.lr.ph.i, %bb.d
  %.sroa.33.2.i = phi <2 x i64> [ %.sroa.33.0.i, %bb.d ], [ %i.cw, %.lr.ph.i ] ; 2 uses
  %.sroa.23.2.i = phi <2 x i64> [ %.sroa.23.0.i, %bb.d ], [ %i.cj, %.lr.ph.i ] ; 2 uses
  %.sroa.13.2.i = phi <2 x i64> [ %.sroa.13.0.i, %bb.d ], [ %i.bw, %.lr.ph.i ] ; 2 uses
  %.sroa.0.2.i = phi <2 x i64> [ %.sroa.0.0.i, %bb.d ], [ %i.bj, %.lr.ph.i ] ; 2 uses
  %i.cy = lshr <2 x i64> %.sroa.0.2.i, splat (i64 47)
  %i.cz = xor <2 x i64> %i.an, %i.cy
  %i.da = xor <2 x i64> %i.cz, %.sroa.0.2.i       ; 2 uses
  %i.db = bitcast <2 x i64> %i.da to <4 x i32>
  %i.dc = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dd = bitcast <4 x i32> %i.dc to <2 x i64>
  %i.de = and <2 x i64> %i.da, splat (i64 4294967295)
  %i.df = mul nuw <2 x i64> %i.de, splat (i64 2654435761)
  %i.dg = mul <2 x i64> %i.dd, splat (i64 -7046029290881679360)
  %i.dh = add <2 x i64> %i.dg, %i.df              ; 2 uses
  %i.di = lshr <2 x i64> %.sroa.13.2.i, splat (i64 47)
  %i.dj = xor <2 x i64> %i.ap, %i.di
  %i.dk = xor <2 x i64> %i.dj, %.sroa.13.2.i      ; 2 uses
  %i.dl = bitcast <2 x i64> %i.dk to <4 x i32>
  %i.dm = shufflevector <4 x i32> %i.dl, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dn = bitcast <4 x i32> %i.dm to <2 x i64>
  %i.do = and <2 x i64> %i.dk, splat (i64 4294967295)
  %i.dp = mul nuw <2 x i64> %i.do, splat (i64 2654435761)
  %i.dq = mul <2 x i64> %i.dn, splat (i64 -7046029290881679360)
  %i.dr = add <2 x i64> %i.dq, %i.dp              ; 2 uses
  %i.ds = lshr <2 x i64> %.sroa.23.2.i, splat (i64 47)
  %i.dt = xor <2 x i64> %i.ar, %i.ds
  %i.du = xor <2 x i64> %i.dt, %.sroa.23.2.i      ; 2 uses
  %i.dv = bitcast <2 x i64> %i.du to <4 x i32>
  %i.dw = shufflevector <4 x i32> %i.dv, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dx = bitcast <4 x i32> %i.dw to <2 x i64>
  %i.dy = and <2 x i64> %i.du, splat (i64 4294967295)
  %i.dz = mul nuw <2 x i64> %i.dy, splat (i64 2654435761)
  %i.ea = mul <2 x i64> %i.dx, splat (i64 -7046029290881679360)
  %i.eb = add <2 x i64> %i.ea, %i.dz              ; 2 uses
  %i.ec = lshr <2 x i64> %.sroa.33.2.i, splat (i64 47)
  %i.ed = xor <2 x i64> %i.at, %i.ec
  %i.ee = xor <2 x i64> %i.ed, %.sroa.33.2.i      ; 2 uses
  %i.ef = bitcast <2 x i64> %i.ee to <4 x i32>
  %i.eg = shufflevector <4 x i32> %i.ef, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.eh = bitcast <4 x i32> %i.eg to <2 x i64>
  %i.ei = and <2 x i64> %i.ee, splat (i64 4294967295)
  %i.ej = mul nuw <2 x i64> %i.ei, splat (i64 2654435761)
  %i.ek = mul <2 x i64> %i.eh, splat (i64 -7046029290881679360)
  %i.el = add <2 x i64> %i.ek, %i.ej              ; 2 uses
  %i.em = shl nuw nsw i64 %.0.i.i.i, 6
  %i.en = getelementptr inbounds nuw i8, ptr %.036.i.i.i, i64 %i.em ; 2 uses
  %i.eo = sub nuw nsw i64 %.038.i.i.i, %.0.i.i.i  ; 3 uses
  %.not44.i.i.i = icmp ult i64 %i.eo, %i.ag
  br i1 %.not44.i.i.i, label %.loopexit.i, label %bb.d, !llvm.loop !1

.loopexit.i:                                      ; preds = %XXH3_accumulate_sse2.exit47.i.i.i, %bb.c
  %.sroa.33.3.i = phi <2 x i64> [ %.sroa.33.0.copyload.i, %bb.c ], [ %i.el, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.sroa.23.3.i = phi <2 x i64> [ %.sroa.23.0.copyload.i, %bb.c ], [ %i.eb, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.sroa.13.3.i = phi <2 x i64> [ %.sroa.13.0.copyload.i, %bb.c ], [ %i.dr, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.sroa.0.3.i = phi <2 x i64> [ %.sroa.0.0.copyload.i, %bb.c ], [ %i.dh, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.139.i.i.i = phi i64 [ %i.ad, %bb.c ], [ %i.eo, %XXH3_accumulate_sse2.exit47.i.i.i ] ; 2 uses
  %.137.i.i.i = phi ptr [ %i.ah, %bb.c ], [ %i.en, %XXH3_accumulate_sse2.exit47.i.i.i ]
  %.1.i.i.i = phi ptr [ %i.aj, %bb.c ], [ %i.v, %XXH3_accumulate_sse2.exit47.i.i.i ]
  %.not45.i.i.i = icmp eq i64 %.139.i.i.i, 0
  br i1 %.not45.i.i.i, label %XXH3_consumeStripes.exit.i.i, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit.i, %.preheader.i
  %.sroa.33.4.i = phi <2 x i64> [ %i.gr, %.preheader.i ], [ %.sroa.33.3.i, %.loopexit.i ]
  %.sroa.23.4.i = phi <2 x i64> [ %i.ge, %.preheader.i ], [ %.sroa.23.3.i, %.loopexit.i ]
  %.sroa.13.4.i = phi <2 x i64> [ %i.fr, %.preheader.i ], [ %.sroa.13.3.i, %.loopexit.i ]
  %.sroa.0.4.i = phi <2 x i64> [ %i.fe, %.preheader.i ], [ %.sroa.0.3.i, %.loopexit.i ]
  %.0.i.i.i54.i = phi i64 [ %i.gs, %.preheader.i ], [ 0, %.loopexit.i ] ; 3 uses
  %i.ep = shl i64 %.0.i.i.i54.i, 6
  %i.eq = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 %i.ep ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 320
  call void @llvm.prefetch.p0(ptr nonnull %i.er, i32 0, i32 3, i32 1), !noalias !104
  %i.es = shl i64 %.0.i.i.i54.i, 3
  %i.et = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 %i.es ; 4 uses
  %i.eu = load <2 x i64>, ptr %i.eq, align 1, !tbaa !26, !noalias !106 ; 2 uses
  %i.ev = load <2 x i64>, ptr %i.et, align 1, !tbaa !26, !noalias !106
  %i.ew = xor <2 x i64> %i.ev, %i.eu              ; 2 uses
  %i.ex = bitcast <2 x i64> %i.ew to <4 x i32>
  %i.ey = and <2 x i64> %i.ew, splat (i64 4294967295)
  %i.ez = and <4 x i32> %i.ex, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner163 = shufflevector <4 x i32> %i.ez, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fa = bitcast <4 x i32> %.inner163 to <2 x i64>
  %i.fb = mul nuw <2 x i64> %i.ey, %i.fa
  %i.fc = shufflevector <2 x i64> %i.eu, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fd = add <2 x i64> %.sroa.0.4.i, %i.fc
  %i.fe = add <2 x i64> %i.fd, %i.fb              ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.fg = load <2 x i64>, ptr %i.ff, align 1, !tbaa !26, !noalias !106 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fi = load <2 x i64>, ptr %i.fh, align 1, !tbaa !26, !noalias !106
  %i.fj = xor <2 x i64> %i.fi, %i.fg              ; 2 uses
  %i.fk = bitcast <2 x i64> %i.fj to <4 x i32>
  %i.fl = and <2 x i64> %i.fj, splat (i64 4294967295)
  %i.fm = and <4 x i32> %i.fk, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner164 = shufflevector <4 x i32> %i.fm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fn = bitcast <4 x i32> %.inner164 to <2 x i64>
  %i.fo = mul nuw <2 x i64> %i.fl, %i.fn
  %i.fp = shufflevector <2 x i64> %i.fg, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fq = add <2 x i64> %.sroa.13.4.i, %i.fp
  %i.fr = add <2 x i64> %i.fq, %i.fo              ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.ft = load <2 x i64>, ptr %i.fs, align 1, !tbaa !26, !noalias !106 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.fv = load <2 x i64>, ptr %i.fu, align 1, !tbaa !26, !noalias !106
  %i.fw = xor <2 x i64> %i.fv, %i.ft              ; 2 uses
  %i.fx = bitcast <2 x i64> %i.fw to <4 x i32>
  %i.fy = and <2 x i64> %i.fw, splat (i64 4294967295)
  %i.fz = and <4 x i32> %i.fx, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner165 = shufflevector <4 x i32> %i.fz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ga = bitcast <4 x i32> %.inner165 to <2 x i64>
  %i.gb = mul nuw <2 x i64> %i.fy, %i.ga
  %i.gc = shufflevector <2 x i64> %i.ft, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gd = add <2 x i64> %.sroa.23.4.i, %i.gc
  %i.ge = add <2 x i64> %i.gd, %i.gb              ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.gg = load <2 x i64>, ptr %i.gf, align 1, !tbaa !26, !noalias !106 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  %i.gi = load <2 x i64>, ptr %i.gh, align 1, !tbaa !26, !noalias !106
  %i.gj = xor <2 x i64> %i.gi, %i.gg              ; 2 uses
  %i.gk = bitcast <2 x i64> %i.gj to <4 x i32>
  %i.gl = and <2 x i64> %i.gj, splat (i64 4294967295)
  %i.gm = and <4 x i32> %i.gk, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner166 = shufflevector <4 x i32> %i.gm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.gn = bitcast <4 x i32> %.inner166 to <2 x i64>
  %i.go = mul nuw <2 x i64> %i.gl, %i.gn
  %i.gp = shufflevector <2 x i64> %i.gg, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gq = add <2 x i64> %.sroa.33.4.i, %i.gp
  %i.gr = add <2 x i64> %i.gq, %i.go              ; 2 uses
  %i.gs = add nuw i64 %.0.i.i.i54.i, 1            ; 2 uses
  %exitcond60.not.i = icmp eq i64 %i.gs, %.139.i.i.i
  br i1 %exitcond60.not.i, label %XXH3_consumeStripes.exit.i.i, label %.preheader.i, !llvm.loop !0

XXH3_consumeStripes.exit.i.i:                     ; preds = %.preheader.i, %.loopexit.i
  %.sroa.33.5.i = phi <2 x i64> [ %.sroa.33.3.i, %.loopexit.i ], [ %i.gr, %.preheader.i ]
  %.sroa.23.5.i = phi <2 x i64> [ %.sroa.23.3.i, %.loopexit.i ], [ %i.ge, %.preheader.i ]
  %.sroa.13.5.i = phi <2 x i64> [ %.sroa.13.3.i, %.loopexit.i ], [ %i.fr, %.preheader.i ]
  %.sroa.0.5.i = phi <2 x i64> [ %.sroa.0.3.i, %.loopexit.i ], [ %i.fe, %.preheader.i ]
  %i.gt = zext i32 %i.z to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.gt
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 -64
  br label %XXH3_digest_long.exit.i

bb.e:                                             ; preds = %bb.b
  %i.gw = sub nuw nsw i32 64, %i.z
  %i.gx = zext nneg i32 %i.gw to i64              ; 3 uses
  %i.gy = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.gy)
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ha = sub nsw i64 0, %i.gx
  %i.hb = getelementptr inbounds i8, ptr %i.e, i64 %i.ha
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull readonly align 1 %i.hb, i64 %i.gx, i1 false)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gx
  %i.hd = zext nneg i32 %i.z to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hc, ptr nonnull readonly align 64 %i.gz, i64 %i.hd, i1 false)
  br label %XXH3_digest_long.exit.i

XXH3_digest_long.exit.i:                          ; preds = %bb.e, %XXH3_consumeStripes.exit.i.i
  %.sroa.33.6.i = phi <2 x i64> [ %.sroa.33.5.i, %XXH3_consumeStripes.exit.i.i ], [ %.sroa.33.0.copyload.i, %bb.e ]
  %.sroa.23.6.i = phi <2 x i64> [ %.sroa.23.5.i, %XXH3_consumeStripes.exit.i.i ], [ %.sroa.23.0.copyload.i, %bb.e ]
  %.sroa.13.6.i = phi <2 x i64> [ %.sroa.13.5.i, %XXH3_consumeStripes.exit.i.i ], [ %.sroa.13.0.copyload.i, %bb.e ]
  %.sroa.0.6.i = phi <2 x i64> [ %.sroa.0.5.i, %XXH3_consumeStripes.exit.i.i ], [ %.sroa.0.0.copyload.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.gv, %XXH3_consumeStripes.exit.i.i ], [ %i.a, %bb.e ] ; 4 uses
  %i.he = load i64, ptr %i.m, align 32, !tbaa !22
  %i.hf = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.he ; 4 uses
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 -7
  %i.hh = load <2 x i64>, ptr %.0.i.i, align 1, !tbaa !26, !noalias !107 ; 2 uses
  %i.hi = load <2 x i64>, ptr %i.hg, align 1, !tbaa !26, !noalias !107
  %i.hj = xor <2 x i64> %i.hi, %i.hh              ; 2 uses
  %i.hk = bitcast <2 x i64> %i.hj to <4 x i32>
  %i.hl = and <2 x i64> %i.hj, splat (i64 4294967295)
  %i.hm = and <4 x i32> %i.hk, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner167 = shufflevector <4 x i32> %i.hm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.hn = bitcast <4 x i32> %.inner167 to <2 x i64>
  %i.ho = mul nuw <2 x i64> %i.hl, %i.hn
  %i.hp = shufflevector <2 x i64> %i.hh, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hq = add <2 x i64> %.sroa.0.6.i, %i.hp
  %i.hr = add <2 x i64> %i.hq, %i.ho              ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ht = load <2 x i64>, ptr %i.hs, align 1, !tbaa !26, !noalias !107 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hf, i64 9
  %i.hv = load <2 x i64>, ptr %i.hu, align 1, !tbaa !26, !noalias !107
  %i.hw = xor <2 x i64> %i.hv, %i.ht              ; 2 uses
  %i.hx = bitcast <2 x i64> %i.hw to <4 x i32>
  %i.hy = and <2 x i64> %i.hw, splat (i64 4294967295)
  %i.hz = and <4 x i32> %i.hx, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner168 = shufflevector <4 x i32> %i.hz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ia = bitcast <4 x i32> %.inner168 to <2 x i64>
  %i.ib = mul nuw <2 x i64> %i.hy, %i.ia
  %i.ic = shufflevector <2 x i64> %i.ht, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.id = add <2 x i64> %.sroa.13.6.i, %i.ic
  %i.ie = add <2 x i64> %i.id, %i.ib              ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.ig = load <2 x i64>, ptr %i.if, align 1, !tbaa !26, !noalias !107 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hf, i64 25
  %i.ii = load <2 x i64>, ptr %i.ih, align 1, !tbaa !26, !noalias !107
  %i.ij = xor <2 x i64> %i.ii, %i.ig              ; 2 uses
  %i.ik = bitcast <2 x i64> %i.ij to <4 x i32>
  %i.il = and <2 x i64> %i.ij, splat (i64 4294967295)
  %i.im = and <4 x i32> %i.ik, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner169 = shufflevector <4 x i32> %i.im, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.in = bitcast <4 x i32> %.inner169 to <2 x i64>
  %i.io = mul nuw <2 x i64> %i.il, %i.in
  %i.ip = shufflevector <2 x i64> %i.ig, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.iq = add <2 x i64> %.sroa.23.6.i, %i.ip
  %i.ir = add <2 x i64> %i.iq, %i.io              ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  %i.it = load <2 x i64>, ptr %i.is, align 1, !tbaa !26, !noalias !107 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hf, i64 41
  %i.iv = load <2 x i64>, ptr %i.iu, align 1, !tbaa !26, !noalias !107
  %i.iw = xor <2 x i64> %i.iv, %i.it              ; 2 uses
  %i.ix = bitcast <2 x i64> %i.iw to <4 x i32>
  %i.iy = and <2 x i64> %i.iw, splat (i64 4294967295)
  %i.iz = and <4 x i32> %i.ix, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner170 = shufflevector <4 x i32> %i.iz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ja = bitcast <4 x i32> %.inner170 to <2 x i64>
  %i.jb = mul nuw <2 x i64> %i.iy, %i.ja
  %i.jc = shufflevector <2 x i64> %i.it, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.jd = add <2 x i64> %.sroa.33.6.i, %i.jc
  %i.je = add <2 x i64> %i.jd, %i.jb              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.sroa.gep76 = getelementptr inbounds nuw i8, ptr %1, i64 75
  %.sroa.gep77 = getelementptr inbounds nuw i8, ptr %i.s, i64 11
  %.sroa.sel78 = select i1 %i.t, ptr %.sroa.gep76, ptr %.sroa.gep77
  %i.jf = mul i64 %i.x, -7046029288634856825
  %.sroa.0.0.vec.extract.i = extractelement <2 x i64> %i.hr, i64 0
  %.val.i.i.i = load i64, ptr %.sroa.sel78, align 1, !tbaa !17, !alias.scope !108
  %i.jg = xor i64 %.val.i.i.i, %.sroa.0.0.vec.extract.i
  %.sroa.0.8.vec.extract.i = extractelement <2 x i64> %i.hr, i64 1
  %.sroa.gep79 = getelementptr inbounds nuw i8, ptr %1, i64 83
  %.sroa.gep80 = getelementptr inbounds nuw i8, ptr %i.s, i64 19
  %.sroa.sel81 = select i1 %i.t, ptr %.sroa.gep79, ptr %.sroa.gep80
  %.val9.i.i.i = load i64, ptr %.sroa.sel81, align 1, !tbaa !17, !alias.scope !108
  %i.jh = xor i64 %.val9.i.i.i, %.sroa.0.8.vec.extract.i
  %i.ji = zext i64 %i.jg to i128
  %i.jj = zext i64 %i.jh to i128
  %i.jk = mul nuw i128 %i.jj, %i.ji               ; 2 uses
  %i.jl = lshr i128 %i.jk, 64
  %i.jm = xor i128 %i.jl, %i.jk
  %i.jn = trunc i128 %i.jm to i64
  %i.jo = add i64 %i.jf, %i.jn
  %.sroa.gep82 = getelementptr inbounds nuw i8, ptr %1, i64 91
  %.sroa.gep83 = getelementptr inbounds nuw i8, ptr %i.s, i64 27
  %.sroa.sel84 = select i1 %i.t, ptr %.sroa.gep82, ptr %.sroa.gep83
  %.sroa.13.16.vec.extract.i = extractelement <2 x i64> %i.ie, i64 0
  %.val.1.i.i.i = load i64, ptr %.sroa.sel84, align 1, !tbaa !17, !alias.scope !108
  %i.jp = xor i64 %.val.1.i.i.i, %.sroa.13.16.vec.extract.i
  %.sroa.13.24.vec.extract.i = extractelement <2 x i64> %i.ie, i64 1
  %.sroa.gep85 = getelementptr inbounds nuw i8, ptr %1, i64 99
end_hunk_0
begin_hunk_1_@XXH3_update_regular:bb.a

bb.c:                                             ; preds = %bb.a
  %i.s = sub nuw nsw i32 256, %i.j
  %i.t = zext nneg i32 %i.s to i64                ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.v = zext nneg i32 %i.j to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %1, i64 %i.t, i1 false), !alias.scope !173
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !23, !alias.scope !171 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ac = load i64, ptr %i.ab, align 32, !tbaa !22, !alias.scope !171
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !17, !alias.scope !175, !noalias !172 ; 3 uses
  %i.ae = shl i64 %i.ad, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ae ; 2 uses
  %i.ag = sub i64 %i.aa, %i.ad                    ; 2 uses
  %.not.i2 = icmp ugt i64 %i.ag, 4
  %.pre55.pre = load <2 x i64>, ptr %0, align 64, !tbaa !26, !noalias !172 ; 2 uses
  %.phi.trans.insert60.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br i1 %.not.i2, label %..thread_crit_edge, label %.preheader

..thread_crit_edge:                               ; preds = %bb.c
  %.phi.trans.insert56.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre57.pre = load <2 x i64>, ptr %.phi.trans.insert56.phi.trans.insert, align 16, !tbaa !26, !alias.scope !176, !noalias !177
  %.phi.trans.insert58.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre59.pre = load <2 x i64>, ptr %.phi.trans.insert58.phi.trans.insert, align 32, !tbaa !26, !alias.scope !176, !noalias !177
  %.pre61.pre = load <2 x i64>, ptr %.phi.trans.insert60.phi.trans.insert, align 16, !tbaa !26, !alias.scope !176, !noalias !177
  br label %.thread

.preheader:                                       ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ac ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ], !noalias !172
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.phi.trans.insert50 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.phi.trans.insert51 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %XXH3_accumulate_sse2.exit47.i8
  %.pre49 = phi <2 x i64> [ %i.dk, %XXH3_accumulate_sse2.exit47.i8 ], [ %.pre55.pre, %.preheader ] ; 2 uses
  %.038.i3 = phi i64 [ %i.eu, %XXH3_accumulate_sse2.exit47.i8 ], [ 4, %.preheader ]
  %.036.i4 = phi ptr [ %i.et, %XXH3_accumulate_sse2.exit47.i8 ], [ %i.u, %.preheader ] ; 2 uses
  %.035.i5 = phi ptr [ %i.e, %XXH3_accumulate_sse2.exit47.i8 ], [ %i.af, %.preheader ]
  %.0.i6 = phi i64 [ %i.aa, %XXH3_accumulate_sse2.exit47.i8 ], [ %i.ag, %.preheader ] ; 4 uses
  %.not = icmp eq i64 %.0.i6, 0
  br i1 %.not, label %.XXH3_accumulate_sse2.exit47.i8_crit_edge, label %.lr.ph

.XXH3_accumulate_sse2.exit47.i8_crit_edge:        ; preds = %bb.d
  %.pre = load <2 x i64>, ptr %.phi.trans.insert50, align 16, !tbaa !26, !alias.scope !178, !noalias !172
  %.pre52 = load <2 x i64>, ptr %.phi.trans.insert51, align 32, !tbaa !26, !alias.scope !178, !noalias !172
  %.pre54 = load <2 x i64>, ptr %.phi.trans.insert53, align 16, !tbaa !26, !alias.scope !178, !noalias !172
  br label %XXH3_accumulate_sse2.exit47.i8

.lr.ph:                                           ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ], !noalias !177
  %.pre44 = load <2 x i64>, ptr %.phi.trans.insert, align 16, !tbaa !26, !alias.scope !179, !noalias !177
  %.pre46 = load <2 x i64>, ptr %.phi.trans.insert45, align 32, !tbaa !26, !alias.scope !179, !noalias !177
  %.pre48 = load <2 x i64>, ptr %.phi.trans.insert60.phi.trans.insert, align 16, !tbaa !26, !alias.scope !179, !noalias !177
  br label %XXH3_accumulate_512_sse2.exit

XXH3_accumulate_512_sse2.exit:                    ; preds = %.lr.ph, %XXH3_accumulate_512_sse2.exit
  %i.ao = phi <2 x i64> [ %.pre48, %.lr.ph ], [ %i.cu, %XXH3_accumulate_512_sse2.exit ]
  %i.ap = phi <2 x i64> [ %.pre46, %.lr.ph ], [ %i.ch, %XXH3_accumulate_512_sse2.exit ]
  %i.aq = phi <2 x i64> [ %.pre44, %.lr.ph ], [ %i.bu, %XXH3_accumulate_512_sse2.exit ]
  %i.ar = phi <2 x i64> [ %.pre49, %.lr.ph ], [ %i.bh, %XXH3_accumulate_512_sse2.exit ]
  %.0.i46.i736 = phi i64 [ 0, %.lr.ph ], [ %i.cv, %XXH3_accumulate_512_sse2.exit ] ; 3 uses
  %i.as = shl i64 %.0.i46.i736, 6
  %i.at = getelementptr inbounds nuw i8, ptr %.036.i4, i64 %i.as ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.au, i32 0, i32 3, i32 1), !noalias !177
  %i.av = shl i64 %.0.i46.i736, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %.035.i5, i64 %i.av ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.ax = load <2 x i64>, ptr %i.at, align 1, !tbaa !26, !noalias !180 ; 2 uses
  %i.ay = load <2 x i64>, ptr %i.aw, align 1, !tbaa !26, !noalias !180
  %i.az = xor <2 x i64> %i.ay, %i.ax              ; 2 uses
  %i.ba = bitcast <2 x i64> %i.az to <4 x i32>
  %i.bb = and <2 x i64> %i.az, splat (i64 4294967295)
  %i.bc = and <4 x i32> %i.ba, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner = shufflevector <4 x i32> %i.bc, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bd = bitcast <4 x i32> %.inner to <2 x i64>
  %i.be = mul nuw <2 x i64> %i.bb, %i.bd
  %i.bf = shufflevector <2 x i64> %i.ax, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bg = add <2 x i64> %i.ar, %i.bf
  %i.bh = add <2 x i64> %i.bg, %i.be              ; 3 uses
  store <2 x i64> %i.bh, ptr %0, align 64, !tbaa !26, !alias.scope !179, !noalias !177
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bj = load <2 x i64>, ptr %i.bi, align 1, !tbaa !26, !noalias !180 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bl = load <2 x i64>, ptr %i.bk, align 1, !tbaa !26, !noalias !180
  %i.bm = xor <2 x i64> %i.bl, %i.bj              ; 2 uses
  %i.bn = bitcast <2 x i64> %i.bm to <4 x i32>
  %i.bo = and <2 x i64> %i.bm, splat (i64 4294967295)
  %i.bp = and <4 x i32> %i.bn, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner10 = shufflevector <4 x i32> %i.bp, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.bq = bitcast <4 x i32> %.inner10 to <2 x i64>
  %i.br = mul nuw <2 x i64> %i.bo, %i.bq
  %i.bs = shufflevector <2 x i64> %i.bj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bt = add <2 x i64> %i.aq, %i.bs
  %i.bu = add <2 x i64> %i.bt, %i.br              ; 3 uses
  store <2 x i64> %i.bu, ptr %.phi.trans.insert, align 16, !tbaa !26, !alias.scope !179, !noalias !177
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bw = load <2 x i64>, ptr %i.bv, align 1, !tbaa !26, !noalias !180 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.by = load <2 x i64>, ptr %i.bx, align 1, !tbaa !26, !noalias !180
  %i.bz = xor <2 x i64> %i.by, %i.bw              ; 2 uses
  %i.ca = bitcast <2 x i64> %i.bz to <4 x i32>
  %i.cb = and <2 x i64> %i.bz, splat (i64 4294967295)
  %i.cc = and <4 x i32> %i.ca, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner11 = shufflevector <4 x i32> %i.cc, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cd = bitcast <4 x i32> %.inner11 to <2 x i64>
  %i.ce = mul nuw <2 x i64> %i.cb, %i.cd
  %i.cf = shufflevector <2 x i64> %i.bw, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.cg = add <2 x i64> %i.ap, %i.cf
  %i.ch = add <2 x i64> %i.cg, %i.ce              ; 3 uses
  store <2 x i64> %i.ch, ptr %.phi.trans.insert45, align 32, !tbaa !26, !alias.scope !179, !noalias !177
  %i.ci = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.cj = load <2 x i64>, ptr %i.ci, align 1, !tbaa !26, !noalias !180 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.cl = load <2 x i64>, ptr %i.ck, align 1, !tbaa !26, !noalias !180
  %i.cm = xor <2 x i64> %i.cl, %i.cj              ; 2 uses
  %i.cn = bitcast <2 x i64> %i.cm to <4 x i32>
  %i.co = and <2 x i64> %i.cm, splat (i64 4294967295)
  %i.cp = and <4 x i32> %i.cn, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner12 = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.cq = bitcast <4 x i32> %.inner12 to <2 x i64>
  %i.cr = mul nuw <2 x i64> %i.co, %i.cq
  %i.cs = shufflevector <2 x i64> %i.cj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ct = add <2 x i64> %i.ao, %i.cs
  %i.cu = add <2 x i64> %i.ct, %i.cr              ; 3 uses
  store <2 x i64> %i.cu, ptr %.phi.trans.insert60.phi.trans.insert, align 16, !tbaa !26, !alias.scope !179, !noalias !177
  %i.cv = add nuw i64 %.0.i46.i736, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cv, %.0.i6
  br i1 %exitcond.not, label %XXH3_accumulate_sse2.exit47.i8, label %XXH3_accumulate_512_sse2.exit, !llvm.loop !0

XXH3_accumulate_sse2.exit47.i8:                   ; preds = %XXH3_accumulate_512_sse2.exit, %.XXH3_accumulate_sse2.exit47.i8_crit_edge
  %i.cw = phi <2 x i64> [ %.pre54, %.XXH3_accumulate_sse2.exit47.i8_crit_edge ], [ %i.cu, %XXH3_accumulate_512_sse2.exit ] ; 2 uses
  %i.cx = phi <2 x i64> [ %.pre52, %.XXH3_accumulate_sse2.exit47.i8_crit_edge ], [ %i.ch, %XXH3_accumulate_512_sse2.exit ] ; 2 uses
  %i.cy = phi <2 x i64> [ %.pre, %.XXH3_accumulate_sse2.exit47.i8_crit_edge ], [ %i.bu, %XXH3_accumulate_512_sse2.exit ] ; 2 uses
  %i.cz = phi <2 x i64> [ %.pre49, %.XXH3_accumulate_sse2.exit47.i8_crit_edge ], [ %i.bh, %XXH3_accumulate_512_sse2.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181), !noalias !172
  %i.da = lshr <2 x i64> %i.cz, splat (i64 47)
  %i.db = load <2 x i64>, ptr %i.ah, align 1, !tbaa !26, !noalias !182
  %i.dc = xor <2 x i64> %i.db, %i.da
  %i.dd = xor <2 x i64> %i.dc, %i.cz              ; 2 uses
  %i.de = bitcast <2 x i64> %i.dd to <4 x i32>
  %i.df = shufflevector <4 x i32> %i.de, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dg = bitcast <4 x i32> %i.df to <2 x i64>
  %i.dh = and <2 x i64> %i.dd, splat (i64 4294967295)
  %i.di = mul nuw <2 x i64> %i.dh, splat (i64 2654435761)
  %i.dj = mul <2 x i64> %i.dg, splat (i64 -7046029290881679360)
  %i.dk = add <2 x i64> %i.dj, %i.di              ; 3 uses
  store <2 x i64> %i.dk, ptr %0, align 64, !tbaa !26, !alias.scope !178, !noalias !172
  %i.dl = lshr <2 x i64> %i.cy, splat (i64 47)
  %i.dm = load <2 x i64>, ptr %i.aj, align 1, !tbaa !26, !noalias !182
  %i.dn = xor <2 x i64> %i.dm, %i.dl
  %i.do = xor <2 x i64> %i.dn, %i.cy              ; 2 uses
  %i.dp = bitcast <2 x i64> %i.do to <4 x i32>
  %i.dq = shufflevector <4 x i32> %i.dp, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.dr = bitcast <4 x i32> %i.dq to <2 x i64>
  %i.ds = and <2 x i64> %i.do, splat (i64 4294967295)
  %i.dt = mul nuw <2 x i64> %i.ds, splat (i64 2654435761)
  %i.du = mul <2 x i64> %i.dr, splat (i64 -7046029290881679360)
  %i.dv = add <2 x i64> %i.du, %i.dt              ; 2 uses
  store <2 x i64> %i.dv, ptr %i.ai, align 16, !tbaa !26, !alias.scope !178, !noalias !172
  %i.dw = lshr <2 x i64> %i.cx, splat (i64 47)
  %i.dx = load <2 x i64>, ptr %i.al, align 1, !tbaa !26, !noalias !182
  %i.dy = xor <2 x i64> %i.dx, %i.dw
  %i.dz = xor <2 x i64> %i.dy, %i.cx              ; 2 uses
  %i.ea = bitcast <2 x i64> %i.dz to <4 x i32>
  %i.eb = shufflevector <4 x i32> %i.ea, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.ec = bitcast <4 x i32> %i.eb to <2 x i64>
  %i.ed = and <2 x i64> %i.dz, splat (i64 4294967295)
  %i.ee = mul nuw <2 x i64> %i.ed, splat (i64 2654435761)
  %i.ef = mul <2 x i64> %i.ec, splat (i64 -7046029290881679360)
  %i.eg = add <2 x i64> %i.ef, %i.ee              ; 2 uses
  store <2 x i64> %i.eg, ptr %i.ak, align 32, !tbaa !26, !alias.scope !178, !noalias !172
  %i.eh = lshr <2 x i64> %i.cw, splat (i64 47)
  %i.ei = load <2 x i64>, ptr %i.an, align 1, !tbaa !26, !noalias !182
  %i.ej = xor <2 x i64> %i.ei, %i.eh
  %i.ek = xor <2 x i64> %i.ej, %i.cw              ; 2 uses
  %i.el = bitcast <2 x i64> %i.ek to <4 x i32>
  %i.em = shufflevector <4 x i32> %i.el, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.en = bitcast <4 x i32> %i.em to <2 x i64>
  %i.eo = and <2 x i64> %i.ek, splat (i64 4294967295)
  %i.ep = mul nuw <2 x i64> %i.eo, splat (i64 2654435761)
  %i.eq = mul <2 x i64> %i.en, splat (i64 -7046029290881679360)
  %i.er = add <2 x i64> %i.eq, %i.ep              ; 2 uses
  store <2 x i64> %i.er, ptr %i.am, align 16, !tbaa !26, !alias.scope !178, !noalias !172
  %i.es = shl nuw nsw i64 %.0.i6, 6
  %i.et = getelementptr inbounds nuw i8, ptr %.036.i4, i64 %i.es ; 2 uses
  %i.eu = sub nuw nsw i64 %.038.i3, %.0.i6        ; 4 uses
  %.not44.i11 = icmp ult i64 %i.eu, %i.aa
  br i1 %.not44.i11, label %bb.e, label %bb.d, !llvm.loop !1

bb.e:                                             ; preds = %XXH3_accumulate_sse2.exit47.i8
  store i64 0, ptr %i.y, align 8, !tbaa !17, !alias.scope !175, !noalias !172
  %.not45.i15 = icmp eq i64 %i.eu, 0
  br i1 %.not45.i15, label %XXH3_consumeStripes.exit19, label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.e
  %.pre61 = phi <2 x i64> [ %i.er, %bb.e ], [ %.pre61.pre, %..thread_crit_edge ]
  %.pre59 = phi <2 x i64> [ %i.eg, %bb.e ], [ %.pre59.pre, %..thread_crit_edge ]
  %.pre57 = phi <2 x i64> [ %i.dv, %bb.e ], [ %.pre57.pre, %..thread_crit_edge ]
  %.pre55 = phi <2 x i64> [ %i.dk, %bb.e ], [ %.pre55.pre, %..thread_crit_edge ]
  %i.ev = phi i64 [ 0, %bb.e ], [ %i.ad, %..thread_crit_edge ]
  %.1.i1433 = phi ptr [ %i.e, %bb.e ], [ %i.af, %..thread_crit_edge ]
  %.137.i1332 = phi ptr [ %i.et, %bb.e ], [ %i.u, %..thread_crit_edge ]
  %.139.i1231 = phi i64 [ %i.eu, %bb.e ], [ 4, %..thread_crit_edge ] ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 16) ], !noalias !177
  %.phi.trans.insert56 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.phi.trans.insert58 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.phi.trans.insert60 = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %XXH3_accumulate_512_sse2.exit22

XXH3_accumulate_512_sse2.exit22:                  ; preds = %.thread, %XXH3_accumulate_512_sse2.exit22
  %i.ew = phi <2 x i64> [ %.pre61, %.thread ], [ %i.hc, %XXH3_accumulate_512_sse2.exit22 ]
  %i.ex = phi <2 x i64> [ %.pre59, %.thread ], [ %i.gp, %XXH3_accumulate_512_sse2.exit22 ]
  %i.ey = phi <2 x i64> [ %.pre57, %.thread ], [ %i.gc, %XXH3_accumulate_512_sse2.exit22 ]
  %i.ez = phi <2 x i64> [ %.pre55, %.thread ], [ %i.fp, %XXH3_accumulate_512_sse2.exit22 ]
  %.0.i.i1639 = phi i64 [ 0, %.thread ], [ %i.hd, %XXH3_accumulate_512_sse2.exit22 ] ; 3 uses
  %i.fa = shl i64 %.0.i.i1639, 6
  %i.fb = getelementptr inbounds nuw i8, ptr %.137.i1332, i64 %i.fa ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 320
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fc, i32 0, i32 3, i32 1), !noalias !177
  %i.fd = shl i64 %.0.i.i1639, 3
  %i.fe = getelementptr inbounds nuw i8, ptr %.1.i1433, i64 %i.fd ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.ff = load <2 x i64>, ptr %i.fb, align 1, !tbaa !26, !noalias !183 ; 2 uses
  %i.fg = load <2 x i64>, ptr %i.fe, align 1, !tbaa !26, !noalias !183
  %i.fh = xor <2 x i64> %i.fg, %i.ff              ; 2 uses
  %i.fi = bitcast <2 x i64> %i.fh to <4 x i32>
  %i.fj = and <2 x i64> %i.fh, splat (i64 4294967295)
  %i.fk = and <4 x i32> %i.fi, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner13 = shufflevector <4 x i32> %i.fk, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fl = bitcast <4 x i32> %.inner13 to <2 x i64>
  %i.fm = mul nuw <2 x i64> %i.fj, %i.fl
  %i.fn = shufflevector <2 x i64> %i.ff, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fo = add <2 x i64> %i.ez, %i.fn
  %i.fp = add <2 x i64> %i.fo, %i.fm              ; 2 uses
  store <2 x i64> %i.fp, ptr %0, align 64, !tbaa !26, !alias.scope !176, !noalias !177
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fr = load <2 x i64>, ptr %i.fq, align 1, !tbaa !26, !noalias !183 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.ft = load <2 x i64>, ptr %i.fs, align 1, !tbaa !26, !noalias !183
  %i.fu = xor <2 x i64> %i.ft, %i.fr              ; 2 uses
  %i.fv = bitcast <2 x i64> %i.fu to <4 x i32>
  %i.fw = and <2 x i64> %i.fu, splat (i64 4294967295)
  %i.fx = and <4 x i32> %i.fv, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner14 = shufflevector <4 x i32> %i.fx, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.fy = bitcast <4 x i32> %.inner14 to <2 x i64>
  %i.fz = mul nuw <2 x i64> %i.fw, %i.fy
  %i.ga = shufflevector <2 x i64> %i.fr, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.gb = add <2 x i64> %i.ey, %i.ga
  %i.gc = add <2 x i64> %i.gb, %i.fz              ; 2 uses
  store <2 x i64> %i.gc, ptr %.phi.trans.insert56, align 16, !tbaa !26, !alias.scope !176, !noalias !177
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.ge = load <2 x i64>, ptr %i.gd, align 1, !tbaa !26, !noalias !183 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.gg = load <2 x i64>, ptr %i.gf, align 1, !tbaa !26, !noalias !183
  %i.gh = xor <2 x i64> %i.gg, %i.ge              ; 2 uses
  %i.gi = bitcast <2 x i64> %i.gh to <4 x i32>
  %i.gj = and <2 x i64> %i.gh, splat (i64 4294967295)
  %i.gk = and <4 x i32> %i.gi, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner15 = shufflevector <4 x i32> %i.gk, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.gl = bitcast <4 x i32> %.inner15 to <2 x i64>
  %i.gm = mul nuw <2 x i64> %i.gj, %i.gl
  %i.gn = shufflevector <2 x i64> %i.ge, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.go = add <2 x i64> %i.ex, %i.gn
  %i.gp = add <2 x i64> %i.go, %i.gm              ; 2 uses
  store <2 x i64> %i.gp, ptr %.phi.trans.insert58, align 32, !tbaa !26, !alias.scope !176, !noalias !177
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  %i.gr = load <2 x i64>, ptr %i.gq, align 1, !tbaa !26, !noalias !183 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.gt = load <2 x i64>, ptr %i.gs, align 1, !tbaa !26, !noalias !183
  %i.gu = xor <2 x i64> %i.gt, %i.gr              ; 2 uses
  %i.gv = bitcast <2 x i64> %i.gu to <4 x i32>
  %i.gw = and <2 x i64> %i.gu, splat (i64 4294967295)
  %i.gx = and <4 x i32> %i.gv, <i32 0, i32 -1, i32 poison, i32 -1>
  %.inner16 = shufflevector <4 x i32> %i.gx, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 0>
  %i.gy = bitcast <4 x i32> %.inner16 to <2 x i64>
  %i.gz = mul nuw <2 x i64> %i.gw, %i.gy
  %i.ha = shufflevector <2 x i64> %i.gr, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hb = add <2 x i64> %i.ew, %i.ha
  %i.hc = add <2 x i64> %i.hb, %i.gz              ; 2 uses
  store <2 x i64> %i.hc, ptr %.phi.trans.insert60, align 16, !tbaa !26, !alias.scope !176, !noalias !177
  %i.hd = add nuw i64 %.0.i.i1639, 1              ; 2 uses
  %exitcond43.not = icmp eq i64 %i.hd, %.139.i1231
  br i1 %exitcond43.not, label %XXH3_accumulate_sse2.exit.i17, label %XXH3_accumulate_512_sse2.exit22, !llvm.loop !0

XXH3_accumulate_sse2.exit.i17:                    ; preds = %XXH3_accumulate_512_sse2.exit22
  %i.he = add i64 %i.ev, %.139.i1231
  store i64 %i.he, ptr %i.y, align 8, !tbaa !17, !alias.scope !175, !noalias !172
  br label %XXH3_consumeStripes.exit19

XXH3_consumeStripes.exit19:                       ; preds = %bb.e, %XXH3_accumulate_sse2.exit.i17
  store i32 0, ptr %i.i, align 64, !tbaa !25, !alias.scope !171
  %gepdiff = sub nuw nsw i64 8, %i.t              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.u, ptr nonnull align 1 %i.x, i64 %gepdiff, i1 false)
  %i.hf = trunc nuw nsw i64 %gepdiff to i32
  br label %XXH3_update.exit

XXH3_update.exit:                                 ; preds = %bb.b, %XXH3_consumeStripes.exit19
  %storemerge.i = phi i32 [ %i.hf, %XXH3_consumeStripes.exit19 ], [ %i.r, %bb.b ]
  store i32 %storemerge.i, ptr %i.i, align 64, !tbaa !25, !alias.scope !171
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #7

; Function Attrs: mustprogress nofree noinline nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i64 @XXH3_len_129to240_64b(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 129, 241) %1, ptr noalias nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = mul i64 %1, -7046029288634856825
  %i.b = load <16 x i64>, ptr %0, align 1, !tbaa !17 ; 2 uses
  %i.c = load <16 x i64>, ptr %2, align 1, !tbaa !17 ; 2 uses
  %i.d = shufflevector <16 x i64> %i.c, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.e = insertelement <8 x i64> poison, i64 %3, i64 0
  %i.f = shufflevector <8 x i64> %i.e, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.g = add <8 x i64> %i.d, %i.f
  %i.h = shufflevector <16 x i64> %i.b, <16 x i64> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.i = xor <8 x i64> %i.g, %i.h
  %i.j = shufflevector <16 x i64> %i.c, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.k = sub <8 x i64> %i.j, %i.f
  %i.l = shufflevector <16 x i64> %i.b, <16 x i64> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.m = xor <8 x i64> %i.k, %i.l
  %i.n = zext <8 x i64> %i.i to <8 x i128>
  %i.o = zext <8 x i64> %i.m to <8 x i128>
  %i.p = mul nuw <8 x i128> %i.o, %i.n            ; 2 uses
  %i.q = lshr <8 x i128> %i.p, splat (i128 64)
  %i.r = xor <8 x i128> %i.q, %i.p
  %i.s = trunc <8 x i128> %i.r to <8 x i64>
  %i.t = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.s)
  %op.rdx = add i64 %i.t, %i.a                    ; 2 uses
  %i.u = trunc nuw nsw i64 %1 to i32
  %i.v = lshr i32 %i.u, 4                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 119
  %.val41 = load i64, ptr %i.x, align 1, !tbaa !17
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -8
  %.val40 = load i64, ptr %i.z, align 1, !tbaa !17
  %.val39 = load i64, ptr %i.y, align 1, !tbaa !17
  %i.aa = add i64 %.val39, %3
  %i.ab = xor i64 %i.aa, %.val41
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 127
  %.val38 = load i64, ptr %i.ac, align 1, !tbaa !17
  %i.ad = sub i64 %.val38, %3
  %i.ae = xor i64 %i.ad, %.val40
  %i.af = zext i64 %i.ab to i128
  %i.ag = zext i64 %i.ae to i128
  %i.ah = mul nuw i128 %i.ag, %i.af               ; 2 uses
  %i.ai = lshr i128 %i.ah, 64
  %i.aj = xor i128 %i.ai, %i.ah
  %i.ak = trunc i128 %i.aj to i64                 ; 2 uses
  %i.al = lshr i64 %op.rdx, 37
  %i.am = xor i64 %i.al, %op.rdx
  %i.an = mul i64 %i.am, 1609587791953885689      ; 2 uses
  %i.ao = lshr i64 %i.an, 32
  %i.ap = xor i64 %i.ao, %i.an                    ; 2 uses
  %.not = icmp eq i32 %i.v, 8
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.v to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.03249 = phi i64 [ %i.ak, %.lr.ph.preheader ], [ %i.bh, %.lr.ph ]
  %.13448 = phi i64 [ %i.ap, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.aq = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.13448) #15, !srcloc !185 ; 2 uses
  %i.ar = shl nuw nsw i64 %indvars.iv, 4          ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %2, i64 %i.ar     ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -125
  %.val45 = load i64, ptr %i.as, align 1, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.val44 = load i64, ptr %i.av, align 1, !tbaa !17
  %.val43 = load i64, ptr %i.au, align 1, !tbaa !17
  %i.aw = add i64 %.val43, %3
  %i.ax = xor i64 %i.aw, %.val45
  %i.ay = getelementptr i8, ptr %i.at, i64 -117
  %.val42 = load i64, ptr %i.ay, align 1, !tbaa !17
  %i.az = sub i64 %.val42, %3
  %i.ba = xor i64 %i.az, %.val44
  %i.bb = zext i64 %i.ax to i128
  %i.bc = zext i64 %i.ba to i128
  %i.bd = mul nuw i128 %i.bc, %i.bb               ; 2 uses
  %i.be = lshr i128 %i.bd, 64
  %i.bf = xor i128 %i.be, %i.bd
end_hunk_1
