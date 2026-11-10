Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 189
loop-unroll.NumRuntimeUnrolled: 127
loop-unroll.NumUnrolled: 369
begin_hunk_0_@ec_get_x_coordinate_as_scalar:bb.a
  %.not.i = icmp ugt i64 %i.j, %i.k
  br i1 %.not.i, label %bb.c, label %.preheader28.i

.preheader28.i:                                   ; preds = %bb.b
  %i.l = icmp ugt i64 %i.j, 7
  br i1 %i.l, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader28.i
  %i.m = add i64 %i.j, -8                         ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.02231.i.prol = phi i64 [ %i.p, %.lr.ph.i.prol ], [ %i.j, %.lr.ph.i.preheader ]
  %.02330.i.prol = phi ptr [ %i.s, %.lr.ph.i.prol ], [ %i.c, %.lr.ph.i.preheader ] ; 2 uses
  %.02429.i.prol = phi i64 [ %i.t, %.lr.ph.i.prol ], [ %i.i, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.p = add i64 %.02231.i.prol, -8               ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  %.0.copyload.i.i.prol = load i64, ptr %i.q, align 1
  %i.r = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.prol)
  store i64 %i.r, ptr %.02330.i.prol, align 8, !tbaa !96
  %i.s = getelementptr inbounds nuw i8, ptr %.02330.i.prol, i64 8 ; 3 uses
  %i.t = add nsw i64 %.02429.i.prol, -1           ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1128

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.02231.i.unr = phi i64 [ %i.j, %.lr.ph.i.preheader ], [ %i.p, %.lr.ph.i.prol ]
  %.02330.i.unr = phi ptr [ %i.c, %.lr.ph.i.preheader ], [ %i.s, %.lr.ph.i.prol ]
  %.02429.i.unr = phi i64 [ %i.i, %.lr.ph.i.preheader ], [ %i.t, %.lr.ph.i.prol ]
  %.lcssa62.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.p, %.lr.ph.i.prol ]
  %.lcssa61.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.s, %.lr.ph.i.prol ]
  %.lcssa60.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.t, %.lr.ph.i.prol ]
  %i.u = icmp ult i64 %i.m, 24
  br i1 %i.u, label %._crit_edge.i, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  call void @abort() #37
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.02231.i = phi i64 [ %i.ah, %.lr.ph.i ], [ %.02231.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %.02330.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.02330.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.02429.i = phi i64 [ %i.al, %.lr.ph.i ], [ %.02429.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.v = getelementptr i8, ptr %i.a, i64 %.02231.i
  %i.w = getelementptr i8, ptr %i.v, i64 -8
  %.0.copyload.i.i = load i64, ptr %i.w, align 1
  %i.x = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i)
  store i64 %i.x, ptr %.02330.i, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %.02330.i, i64 8
  %i.z = getelementptr i8, ptr %i.a, i64 %.02231.i
  %i.aa = getelementptr i8, ptr %i.z, i64 -16
  %.0.copyload.i.i.1 = load i64, ptr %i.aa, align 1
  %i.ab = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.1)
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %.02330.i, i64 16
  %i.ad = getelementptr i8, ptr %i.a, i64 %.02231.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %.0.copyload.i.i.2 = load i64, ptr %i.ae, align 1
  %i.af = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.2)
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !96
  %i.ag = getelementptr inbounds nuw i8, ptr %.02330.i, i64 24
  %i.ah = add i64 %.02231.i, -32                  ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ah
  %.0.copyload.i.i.3 = load i64, ptr %i.ai, align 1
  %i.aj = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.3)
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !96
  %i.ak = getelementptr inbounds nuw i8, ptr %.02330.i, i64 32 ; 2 uses
  %i.al = add nsw i64 %.02429.i, -4               ; 2 uses
  %i.am = icmp ugt i64 %i.ah, 7
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.preheader28.i
  %.024.lcssa.i = phi i64 [ %i.i, %.preheader28.i ], [ %.lcssa60.unr, %.lr.ph.i.prol.loopexit ], [ %i.al, %.lr.ph.i ] ; 2 uses
  %.023.lcssa.i = phi ptr [ %i.c, %.preheader28.i ], [ %.lcssa61.unr, %.lr.ph.i.prol.loopexit ], [ %i.ak, %.lr.ph.i ] ; 3 uses
  %.022.lcssa.i = phi i64 [ %i.j, %.preheader28.i ], [ %.lcssa62.unr, %.lr.ph.i.prol.loopexit ], [ %i.ah, %.lr.ph.i ] ; 4 uses
  %.not27.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not27.i, label %bb.d, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %._crit_edge.i
  %xtraiter63 = and i64 %.022.lcssa.i, 3          ; 3 uses
  %i.an = icmp ult i64 %.022.lcssa.i, 4
  br i1 %i.an, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %.022.lcssa.i, -4
  br label %.preheader.i

.unr-lcssa:                                       ; preds = %.preheader.i
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %.epilog-lcssa, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader.i.preheader
  %.035.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.bt, %.unr-lcssa ]
  %.02134.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.bs, %.unr-lcssa ]
  %lcmp.mod66 = icmp ne i64 %xtraiter63, 0
  call void @llvm.assume(i1 %lcmp.mod66)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.035.i.epil = phi i64 [ %i.at, %.preheader.i.epil ], [ %.035.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.02134.i.epil = phi i64 [ %i.as, %.preheader.i.epil ], [ %.02134.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.ao = shl i64 %.02134.i.epil, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %.035.i.epil
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !80
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.ao, %i.ar            ; 2 uses
  %i.at = add nuw nsw i64 %.035.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter63
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.i.epil, !llvm.loop !1129

.epilog-lcssa:                                    ; preds = %.preheader.i.epil, %.unr-lcssa
  %.lcssa59 = phi i64 [ %i.bs, %.unr-lcssa ], [ %i.as, %.preheader.i.epil ]
  store i64 %.lcssa59, ptr %.023.lcssa.i, align 8, !tbaa !96
  %i.au = getelementptr inbounds nuw i8, ptr %.023.lcssa.i, i64 8
  %i.av = add i64 %.024.lcssa.i, -1
  br label %bb.d

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.035.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.bt, %.preheader.i ] ; 5 uses
  %.02134.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.bs, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.035.i
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !80
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl i64 %.02134.i, 16
  %i.ba = shl nuw nsw i64 %i.ay, 8
  %i.bb = or disjoint i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.035.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !80
  %i.bf = zext i8 %i.be to i64
  %i.bg = or disjoint i64 %i.bb, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.035.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !80
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl i64 %i.bg, 16
  %i.bm = shl nuw nsw i64 %i.bk, 8
  %i.bn = or disjoint i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.035.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !80
  %i.br = zext i8 %i.bq to i64
  %i.bs = or disjoint i64 %i.bn, %i.br            ; 3 uses
  %i.bt = add nuw nsw i64 %.035.i, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.i, !llvm.loop !16

bb.d:                                             ; preds = %.epilog-lcssa, %._crit_edge.i
  %.125.i = phi i64 [ %i.av, %.epilog-lcssa ], [ %.024.lcssa.i, %._crit_edge.i ]
  %.1.i = phi ptr [ %i.au, %.epilog-lcssa ], [ %.023.lcssa.i, %._crit_edge.i ]
  %i.bu = shl i64 %.125.i, 3                      ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bn_big_endian_to_words.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.1.i, i8 0, i64 %i.bu, i1 false)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !113
  br label %bn_big_endian_to_words.exit

bn_big_endian_to_words.exit:                      ; preds = %bb.d, %bb.e
  %i.bw = phi i32 [ %i.g, %bb.d ], [ %.pre, %bb.e ] ; 4 uses
  %i.bx = sext i32 %i.bw to i64                   ; 6 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !96
  %i.ca = icmp eq i32 %i.bw, 0
  br i1 %i.ca, label %bn_reduce_once.exit, label %.preheader42.i.i

.preheader42.i.i:                                 ; preds = %bn_big_endian_to_words.exit
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !112 ; 2 uses
  %.not43.i.i = icmp ult i32 %i.bw, 4
  br i1 %.not43.i.i, label %.lr.ph59.i.i.preheader, label %.lr.ph.i.i

.lr.ph59.i.i.preheader:                           ; preds = %.preheader.i.i, %.preheader42.i.i
  %.158.i.i.ph = phi i64 [ %i.bx, %.preheader42.i.i ], [ %i.ec, %.preheader.i.i ]
  %.12757.i.i.ph = phi ptr [ %i.cb, %.preheader42.i.i ], [ %i.ea, %.preheader.i.i ]
  %.12956.i.i.ph = phi ptr [ %i.c, %.preheader42.i.i ], [ %i.dz, %.preheader.i.i ]
  %.13155.i.i.ph = phi ptr [ %1, %.preheader42.i.i ], [ %i.eb, %.preheader.i.i ]
  %.14154.i.i.ph = phi i64 [ 0, %.preheader42.i.i ], [ %i.dx, %.preheader.i.i ]
  br label %.lr.ph59.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %.not3453.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not3453.i.i, label %.lr.ph.i11.i, label %.lr.ph59.i.i.preheader

.lr.ph.i.i:                                       ; preds = %.preheader42.i.i, %.lr.ph.i.i
  %.048.i.i = phi i64 [ %i.ec, %.lr.ph.i.i ], [ %i.bx, %.preheader42.i.i ]
  %.02647.i.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %i.cb, %.preheader42.i.i ] ; 5 uses
  %.02846.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.c, %.preheader42.i.i ] ; 5 uses
  %.03045.i.i = phi ptr [ %i.eb, %.lr.ph.i.i ], [ %1, %.preheader42.i.i ] ; 5 uses
  %.04044.i.i = phi i64 [ %i.dx, %.lr.ph.i.i ], [ 0, %.preheader42.i.i ]
  %i.cc = load i64, ptr %.02846.i.i, align 8, !tbaa !96
  %i.cd = load i64, ptr %.02647.i.i, align 8, !tbaa !96
  %i.ce = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cc, i64 %i.cd) ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  %i.cg = extractvalue { i64, i1 } %i.ce, 0
  %i.ch = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cg, i64 %.04044.i.i) ; 2 uses
  %i.ci = extractvalue { i64, i1 } %i.ch, 1
  %i.cj = extractvalue { i64, i1 } %i.ch, 0
  %i.ck = or i1 %i.cf, %i.ci
  %i.cl = zext i1 %i.ck to i64
  store i64 %i.cj, ptr %.03045.i.i, align 8, !tbaa !96
  %i.cm = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !96
  %i.co = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !96
  %i.cq = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cn, i64 %i.cp) ; 2 uses
  %i.cr = extractvalue { i64, i1 } %i.cq, 1
  %i.cs = extractvalue { i64, i1 } %i.cq, 0
  %i.ct = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.cs, i64 %i.cl) ; 2 uses
  %i.cu = extractvalue { i64, i1 } %i.ct, 1
  %i.cv = extractvalue { i64, i1 } %i.ct, 0
  %i.cw = or i1 %i.cr, %i.cu
  %i.cx = zext i1 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 8
  store i64 %i.cv, ptr %i.cy, align 8, !tbaa !96
  %i.cz = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !96
  %i.db = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !96
  %i.dd = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.da, i64 %i.dc) ; 2 uses
  %i.de = extractvalue { i64, i1 } %i.dd, 1
  %i.df = extractvalue { i64, i1 } %i.dd, 0
  %i.dg = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.df, i64 %i.cx) ; 2 uses
  %i.dh = extractvalue { i64, i1 } %i.dg, 1
  %i.di = extractvalue { i64, i1 } %i.dg, 0
  %i.dj = or i1 %i.de, %i.dh
  %i.dk = zext i1 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 16
  store i64 %i.di, ptr %i.dl, align 8, !tbaa !96
  %i.dm = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 24
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !96
  %i.do = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 24
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !96
  %i.dq = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.dn, i64 %i.dp) ; 2 uses
  %i.dr = extractvalue { i64, i1 } %i.dq, 1
  %i.ds = extractvalue { i64, i1 } %i.dq, 0
  %i.dt = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ds, i64 %i.dk) ; 2 uses
  %i.du = extractvalue { i64, i1 } %i.dt, 1
  %i.dv = extractvalue { i64, i1 } %i.dt, 0
  %i.dw = or i1 %i.dr, %i.du
  %i.dx = zext i1 %i.dw to i64                    ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 24
  store i64 %i.dv, ptr %i.dy, align 8, !tbaa !96
  %i.dz = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 32 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 32 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 32 ; 2 uses
  %i.ec = add i64 %.048.i.i, -4                   ; 4 uses
  %.not.i.i = icmp ult i64 %i.ec, 4
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !13

.lr.ph59.i.i:                                     ; preds = %.lr.ph59.i.i.preheader, %.lr.ph59.i.i
  %.158.i.i = phi i64 [ %i.eq, %.lr.ph59.i.i ], [ %.158.i.i.ph, %.lr.ph59.i.i.preheader ]
  %.12757.i.i = phi ptr [ %i.eo, %.lr.ph59.i.i ], [ %.12757.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.12956.i.i = phi ptr [ %i.en, %.lr.ph59.i.i ], [ %.12956.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.13155.i.i = phi ptr [ %i.ep, %.lr.ph59.i.i ], [ %.13155.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.14154.i.i = phi i64 [ %i.em, %.lr.ph59.i.i ], [ %.14154.i.i.ph, %.lr.ph59.i.i.preheader ]
  %i.ed = load i64, ptr %.12956.i.i, align 8, !tbaa !96
  %i.ee = load i64, ptr %.12757.i.i, align 8, !tbaa !96
  %i.ef = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ed, i64 %i.ee) ; 2 uses
  %i.eg = extractvalue { i64, i1 } %i.ef, 1
  %i.eh = extractvalue { i64, i1 } %i.ef, 0
  %i.ei = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.eh, i64 %.14154.i.i) ; 2 uses
  %i.ej = extractvalue { i64, i1 } %i.ei, 1
  %i.ek = extractvalue { i64, i1 } %i.ei, 0
  %i.el = or i1 %i.eg, %i.ej
  %i.em = zext i1 %i.el to i64                    ; 2 uses
  store i64 %i.ek, ptr %.13155.i.i, align 8, !tbaa !96
  %i.en = getelementptr inbounds nuw i8, ptr %.12956.i.i, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.12757.i.i, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.13155.i.i, i64 8
  %i.eq = add nsw i64 %.158.i.i, -1               ; 2 uses
  %.not34.i.i = icmp eq i64 %i.eq, 0
  br i1 %.not34.i.i, label %.lr.ph.i11.i, label %.lr.ph59.i.i, !llvm.loop !14

.lr.ph.i11.i:                                     ; preds = %.lr.ph59.i.i, %.preheader.i.i
  %.032.i.ph.i = phi i64 [ %i.dx, %.preheader.i.i ], [ %i.em, %.lr.ph59.i.i ]
  %i.er = sub i64 %i.bz, %.032.i.ph.i
  %i.es = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.er) #38, !srcloc !108 ; 3 uses
  %i.et = xor i64 %i.es, -1                       ; 2 uses
  %min.iters.check = icmp ult i32 %i.bw, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i11.i
  %n.vec = and i64 %i.bx, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.es, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert49 = insertelement <2 x i64> poison, i64 %i.et, i64 0
  %broadcast.splat50 = shufflevector <2 x i64> %broadcast.splatinsert49, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load = load <2 x i64>, ptr %i.eu, align 16, !tbaa !96
  %wide.load51 = load <2 x i64>, ptr %i.ev, align 16, !tbaa !96
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %wide.load52 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !96
  %wide.load53 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !96
  %i.ey = and <2 x i64> %wide.load, %broadcast.splat
  %i.ez = and <2 x i64> %wide.load51, %broadcast.splat
  %i.fa = and <2 x i64> %wide.load52, %broadcast.splat50
  %i.fb = and <2 x i64> %wide.load53, %broadcast.splat50
  %i.fc = or disjoint <2 x i64> %i.fa, %i.ey
  %i.fd = or disjoint <2 x i64> %i.fb, %i.ez
  store <2 x i64> %i.fc, ptr %i.ew, align 8, !tbaa !96
  store <2 x i64> %i.fd, ptr %i.ex, align 8, !tbaa !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !1130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bx
  br i1 %cmp.n, label %bn_reduce_once.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i11.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i11.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i = phi i64 [ %i.fm, %scalar.ph ], [ %.09.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.09.i.i
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !96
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09.i.i ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !96
  %i.fj = and i64 %i.fg, %i.es
  %i.fk = and i64 %i.fi, %i.et
  %i.fl = or disjoint i64 %i.fk, %i.fj
  store i64 %i.fl, ptr %i.fh, align 8, !tbaa !96
  %i.fm = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fm, %i.bx
  br i1 %exitcond.not.i.i, label %bn_reduce_once.exit, label %scalar.ph, !llvm.loop !1131

bn_reduce_once.exit:                              ; preds = %scalar.ph, %middle.block, %bn_big_endian_to_words.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bn_reduce_once.exit
  %.0 = phi i32 [ 1, %bn_reduce_once.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @ec_get_x_coordinate_as_bytes(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.EC_FELEM, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load i32, ptr %i.b, align 8, !tbaa !113  ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i, label %bn_minimal_width.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.c, %.lr.ph.i.i.i ], [ %i.k, %bb.c ] ; 4 uses
  %i.f = zext nneg i32 %.05.i.i.i to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !96
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %BN_num_bytes.exit

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %.05.i.i.i, -1
  %i.l = icmp sgt i32 %.05.i.i.i, 1
  br i1 %i.l, label %bb.b, label %BN_num_bytes.exit.thread, !llvm.loop !10

bn_minimal_width.exit.i.i:                        ; preds = %bb.a
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %BN_num_bytes.exit.thread, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i: ; preds = %bn_minimal_width.exit.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !112
  br label %BN_num_bytes.exit

BN_num_bytes.exit:                                ; preds = %bb.b, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i
  %i.n = phi ptr [ %.pre.i.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %i.e, %bb.b ]
  %.0.lcssa.i9.i.i = phi i32 [ %i.c, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %.05.i.i.i, %bb.b ]
  %i.o = add nsw i32 %.0.lcssa.i9.i.i, -1         ; 2 uses
  %i.p = shl nsw i32 %i.o, 6
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !96   ; 3 uses
  %i.t = icmp ne i64 %i.s, 0
  %i.u = lshr i64 %i.s, 32                        ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0               ; 2 uses
  %i.v = select i1 %.not.i.i.i, i32 0, i32 32
  %i.w = zext i1 %i.t to i32
  %i.x = select i1 %.not.i.i.i, i64 %i.s, i64 %i.u ; 2 uses
  %i.y = lshr i64 %i.x, 16                        ; 2 uses
  %.not52.i.i.i = icmp eq i64 %i.y, 0             ; 2 uses
  %i.z = select i1 %.not52.i.i.i, i32 0, i32 16
  %i.aa = select i1 %.not52.i.i.i, i64 %i.x, i64 %i.y ; 2 uses
  %i.ab = lshr i64 %i.aa, 8                       ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.ab, 0            ; 2 uses
  %i.ac = select i1 %.not53.i.i.i, i32 0, i32 8
  %i.ad = select i1 %.not53.i.i.i, i64 %i.aa, i64 %i.ab ; 2 uses
  %i.ae = lshr i64 %i.ad, 4                       ; 2 uses
  %.not54.i.i.i = icmp eq i64 %i.ae, 0            ; 2 uses
  %i.af = select i1 %.not54.i.i.i, i32 0, i32 4
  %i.ag = select i1 %.not54.i.i.i, i64 %i.ad, i64 %i.ae ; 2 uses
  %i.ah = lshr i64 %i.ag, 2                       ; 2 uses
  %.not55.i.i.i = icmp eq i64 %i.ah, 0            ; 2 uses
  %i.ai = select i1 %.not55.i.i.i, i32 0, i32 2
  %i.aj = select i1 %.not55.i.i.i, i64 %i.ag, i64 %i.ah
  %i.ak = icmp samesign ugt i64 %i.aj, 1
  %.neg.i.i.i = zext i1 %i.ak to i32
  %i.al = or disjoint i32 %i.p, 7
  %i.am = add nuw nsw i32 %i.al, %i.w
  %i.an = or disjoint i32 %i.am, %i.v
  %i.ao = or disjoint i32 %i.an, %i.z
end_hunk_0
begin_hunk_1_@ecdsa_sign_fixed:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 7 uses
  store i32 0, ptr %i.v, align 8, !tbaa !296
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 212 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store i32 64, ptr %i.w, align 4, !tbaa !297
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !113  ; 2 uses
  %i.z = sext i32 %i.y to i64                     ; 3 uses
  %i.aa = shl nsw i64 %i.z, 3                     ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 10 uses
  %i.ac = icmp eq i32 %i.y, 0
  br i1 %i.ac, label %BCM_sha512_update.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = shl nsw i64 %i.z, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.af = lshr i64 %i.aa, 61
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !298
  store i64 %i.ad, ptr %i.u, align 8, !tbaa !299
  %i.ag = icmp ugt i64 %i.aa, 127
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = lshr i64 %i.aa, 7
  call fastcc void @_ZL23sha512_block_data_orderPmPKhm(ptr noundef nonnull %6, ptr noundef nonnull %i.m, i64 noundef %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aa
  %i.aj = and i64 %i.aa, 120                      ; 2 uses
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.252.i = phi i64 [ %i.aj, %bb.i ], [ %i.aa, %bb.h ] ; 3 uses
  %.2.i = phi ptr [ %i.al, %bb.i ], [ %i.m, %bb.h ]
  %.not59.i = icmp eq i64 %.252.i, 0
  br i1 %.not59.i, label %.BCM_sha512_update.exit_crit_edge, label %.sink.split.i

.BCM_sha512_update.exit_crit_edge:                ; preds = %bb.j
  %.pr.pre63.pre = load i32, ptr %i.v, align 8, !tbaa !296
  br label %BCM_sha512_update.exit

.sink.split.i:                                    ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull readonly align 1 %.2.i, i64 %.252.i, i1 false)
  %i.am = trunc nuw nsw i64 %.252.i to i32        ; 2 uses
  store i32 %i.am, ptr %i.v, align 8, !tbaa !296
  br label %BCM_sha512_update.exit

BCM_sha512_update.exit:                           ; preds = %.BCM_sha512_update.exit_crit_edge, %bb.g, %.sink.split.i
  %.pr.pre63 = phi i32 [ %.pr.pre63.pre, %.BCM_sha512_update.exit_crit_edge ], [ 0, %bb.g ], [ %i.am, %.sink.split.i ] ; 4 uses
  %i.an = icmp eq i64 %1, 0
  br i1 %i.an, label %BCM_sha512_update.exit50, label %._crit_edge.i38

._crit_edge.i38:                                  ; preds = %BCM_sha512_update.exit
  %i.ao = load i64, ptr %i.u, align 8, !tbaa !299 ; 2 uses
  %i.ap = shl i64 %1, 3
  %i.aq = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !298
  %i.au = zext i1 %i.ar to i64
  %i.av = lshr i64 %1, 61
  %i.aw = add i64 %i.at, %i.av
  %i.ax = add i64 %i.aw, %i.au
  store i64 %i.ax, ptr %i.as, align 8, !tbaa !298
  store i64 %i.aq, ptr %i.u, align 8, !tbaa !299
  %.not.i39 = icmp eq i32 %.pr.pre63, 0
  br i1 %.not.i39, label %bb.o, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i38
  %i.ay = zext i32 %.pr.pre63 to i64              ; 3 uses
  %i.az = sub nsw i64 128, %i.ay                  ; 4 uses
  %.not58.i40 = icmp ult i64 %1, %i.az
  br i1 %.not58.i40, label %.thread.i49, label %bb.l

.thread.i49:                                      ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr readonly align 1 %0, i64 %1, i1 false)
  %i.bb = trunc i64 %1 to i32
  %i.bc = load i32, ptr %i.v, align 8, !tbaa !296
  %i.bd = add i32 %i.bc, %i.bb
  br label %.sink.split.i47

bb.l:                                             ; preds = %bb.k
  %i.be = icmp eq i32 %.pr.pre63, 128
  br i1 %i.be, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr readonly align 1 %0, i64 %i.az, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 0, ptr %i.v, align 8, !tbaa !296
  %i.bg = sub nuw i64 %1, %i.az
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  call fastcc void @_ZL23sha512_block_data_orderPmPKhm(ptr noundef nonnull %6, ptr noundef nonnull %i.ab, i64 noundef 1)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i38
  %.151.i41 = phi i64 [ %i.bg, %bb.n ], [ %1, %._crit_edge.i38 ] ; 5 uses
  %.1.i42 = phi ptr [ %i.bh, %bb.n ], [ %0, %._crit_edge.i38 ] ; 3 uses
  %i.bi = icmp ugt i64 %.151.i41, 127
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bj = lshr i64 %.151.i41, 7
  call fastcc void @_ZL23sha512_block_data_orderPmPKhm(ptr noundef nonnull %6, ptr noundef %.1.i42, i64 noundef %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %.1.i42, i64 %.151.i41
  %i.bl = and i64 %.151.i41, 127                  ; 2 uses
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.252.i43 = phi i64 [ %i.bl, %bb.p ], [ %.151.i41, %bb.o ] ; 3 uses
  %.2.i44 = phi ptr [ %i.bn, %bb.p ], [ %.1.i42, %bb.o ]
  %.not59.i45 = icmp eq i64 %.252.i43, 0
  br i1 %.not59.i45, label %.BCM_sha512_update.exit50thread-pre-split_crit_edge, label %_ZL14OPENSSL_memcpyPvPKvm.exit61.i46

.BCM_sha512_update.exit50thread-pre-split_crit_edge: ; preds = %bb.q
  %.pr.pre = load i32, ptr %i.v, align 8, !tbaa !296
  br label %BCM_sha512_update.exit50

_ZL14OPENSSL_memcpyPvPKvm.exit61.i46:             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr readonly align 1 %.2.i44, i64 %.252.i43, i1 false)
  %i.bo = trunc nuw nsw i64 %.252.i43 to i32
  br label %.sink.split.i47

.sink.split.i47:                                  ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit61.i46, %.thread.i49
  %.sink.i48 = phi i32 [ %i.bd, %.thread.i49 ], [ %i.bo, %_ZL14OPENSSL_memcpyPvPKvm.exit61.i46 ] ; 2 uses
  store i32 %.sink.i48, ptr %i.v, align 8, !tbaa !296
  br label %BCM_sha512_update.exit50

BCM_sha512_update.exit50:                         ; preds = %BCM_sha512_update.exit, %.BCM_sha512_update.exit50thread-pre-split_crit_edge, %.sink.split.i47
  %i.bp = phi i32 [ %.sink.i48, %.sink.split.i47 ], [ %.pr.pre, %.BCM_sha512_update.exit50thread-pre-split_crit_edge ], [ %.pr.pre63, %BCM_sha512_update.exit ] ; 3 uses
  %i.bq = load i32, ptr %i.w, align 4, !tbaa !297 ; 2 uses
  %i.br = zext i32 %i.bp to i64                   ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.br
  store i8 -128, ptr %i.bs, align 1, !tbaa !80
  %i.bt = add nuw nsw i64 %i.br, 1                ; 3 uses
  %i.bu = icmp ugt i32 %i.bp, 111
  br i1 %i.bu, label %bb.r, label %bb.t

bb.r:                                             ; preds = %BCM_sha512_update.exit50
  %i.bv = icmp eq i32 %i.bp, 127
  br i1 %i.bv, label %.thread.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = sub nsw i64 127, %i.br
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bt
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bx, i8 0, i64 %i.bw, i1 false)
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.s, %bb.r
  call fastcc void @_ZL23sha512_block_data_orderPmPKhm(ptr noundef nonnull %6, ptr noundef nonnull %i.ab, i64 noundef 1)
  br label %bb.u

bb.t:                                             ; preds = %BCM_sha512_update.exit50
  %i.by = icmp eq i64 %i.bt, 112
  br i1 %i.by, label %_ZL14OPENSSL_memsetPvim.exit30.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread.i.i
  %.02735.i.i = phi i64 [ 0, %.thread.i.i ], [ %i.bt, %bb.t ] ; 2 uses
  %i.bz = sub nuw nsw i64 112, %.02735.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.02735.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ca, i8 0, i64 %i.bz, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit30.i.i

_ZL14OPENSSL_memsetPvim.exit30.i.i:               ; preds = %bb.u, %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 192
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !298
  %i.ce = tail call noundef i64 @llvm.bswap.i64(i64 %i.cd)
  store i64 %i.ce, ptr %i.cb, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.cg = load i64, ptr %i.u, align 8, !tbaa !299
  %i.ch = tail call noundef i64 @llvm.bswap.i64(i64 %i.cg)
  store i64 %i.ch, ptr %i.cf, align 8
  call fastcc void @_ZL23sha512_block_data_orderPmPKhm(ptr noundef nonnull %6, ptr noundef nonnull %i.ab, i64 noundef 1)
  %i.ci = lshr i32 %i.bq, 3                       ; 2 uses
  %i.cj = zext nneg i32 %i.ci to i64              ; 2 uses
  %.not.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i, label %BCM_sha512_final.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZL14OPENSSL_memsetPvim.exit30.i.i
  %xtraiter = and i64 %i.cj, 3                    ; 3 uses
  %i.ck = icmp ult i32 %i.bq, 32
  br i1 %i.ck, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.cj, 536870908
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.032.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.de, %.lr.ph.i.i ] ; 5 uses
  %.02831.i.i = phi ptr [ %i.a, %.lr.ph.i.i.preheader.new ], [ %i.dd, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.032.i.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !96
  %i.cn = tail call noundef i64 @llvm.bswap.i64(i64 %i.cm)
  store i64 %i.cn, ptr %.02831.i.i, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %.02831.i.i, i64 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.032.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !96
  %i.cs = tail call noundef i64 @llvm.bswap.i64(i64 %i.cr)
  store i64 %i.cs, ptr %i.co, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.02831.i.i, i64 16
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.032.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !96
  %i.cx = tail call noundef i64 @llvm.bswap.i64(i64 %i.cw)
  store i64 %i.cx, ptr %i.ct, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.02831.i.i, i64 24
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.032.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load i64, ptr %i.da, align 8, !tbaa !96
  %i.dc = tail call noundef i64 @llvm.bswap.i64(i64 %i.db)
  store i64 %i.dc, ptr %i.cy, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.02831.i.i, i64 32 ; 2 uses
  %i.de = add nuw nsw i64 %.032.i.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %BCM_sha512_final.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !31

BCM_sha512_final.exit.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %BCM_sha512_final.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %BCM_sha512_final.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.032.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.de, %BCM_sha512_final.exit.loopexit.unr-lcssa ]
  %.02831.i.i.epil.init = phi ptr [ %i.a, %.lr.ph.i.i.preheader ], [ %i.dd, %BCM_sha512_final.exit.loopexit.unr-lcssa ]
  %lcmp.mod79 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod79)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.032.i.i.epil = phi i64 [ %i.dj, %.lr.ph.i.i.epil ], [ %.032.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.02831.i.i.epil = phi ptr [ %i.di, %.lr.ph.i.i.epil ], [ %.02831.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.032.i.i.epil
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !96
  %i.dh = tail call noundef i64 @llvm.bswap.i64(i64 %i.dg)
  store i64 %i.dh, ptr %.02831.i.i.epil, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %.02831.i.i.epil, i64 8
  %i.dj = add nuw nsw i64 %.032.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %BCM_sha512_final.exit, label %.lr.ph.i.i.epil, !llvm.loop !1144

BCM_sha512_final.exit:                            ; preds = %BCM_sha512_final.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_ZL14OPENSSL_memsetPvim.exit30.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.dk = load ptr, ptr %i.l, align 8, !tbaa !292
  %i.dl = call range(i32 0, 2) i32 @bn_rand_range_words(ptr noundef nonnull %7, i64 noundef 1, ptr noundef %i.dk, i64 noundef %i.z, ptr noundef nonnull readonly %i.a)
  %.not3759 = icmp eq i32 %i.dl, 0
  br i1 %.not3759, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %BCM_sha512_final.exit, %bb.x
  %.060 = phi i32 [ %i.dq, %bb.x ], [ 0, %BCM_sha512_final.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.dm = call fastcc noundef i32 @_ZL15ecdsa_sign_implPK11ec_group_stPiPhPmmPK9EC_SCALARS7_PKhm(ptr noundef %i.g, ptr noundef %i.b, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.m, ptr noundef %7, ptr noundef %0, i64 noundef %1) ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 0
  %i.do = load i32, ptr %i.b, align 4
  %i.dp = icmp ne i32 %i.do, 0
  %or.cond = select i1 %i.dn, i1 %i.dp, i1 false
  br i1 %or.cond, label %bb.v, label %.thread55

bb.v:                                             ; preds = %.lr.ph
  %exitcond = icmp eq i32 %.060, 32
  br i1 %exitcond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @ERR_put_error(i32 noundef 26, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.32, i32 noundef 270) #36
  br label %.thread55

.thread55:                                        ; preds = %.lr.ph, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.dq = add nuw nsw i32 %.060, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.dr = load ptr, ptr %i.l, align 8, !tbaa !292
  %i.ds = load i32, ptr %i.x, align 8, !tbaa !288
  %i.dt = sext i32 %i.ds to i64
  %i.du = call range(i32 0, 2) i32 @bn_rand_range_words(ptr noundef nonnull %7, i64 noundef 1, ptr noundef %i.dr, i64 noundef %i.dt, ptr noundef nonnull readonly %i.a)
  %.not37 = icmp eq i32 %i.du, 0
  br i1 %.not37, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.x, %BCM_sha512_final.exit, %.thread55
  %.12654 = phi i32 [ %i.dm, %.thread55 ], [ 0, %BCM_sha512_final.exit ], [ 0, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.y

bb.y:                                             ; preds = %bb.f, %.thread, %bb.c
  %.231 = phi i32 [ 0, %bb.c ], [ 0, %bb.f ], [ %.12654, %.thread ]
  ret i32 %.231
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @ecdsa_verify_fixed(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @ecdsa_verify_fixed_no_self_test(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EC_KEY_set_public_key_affine_coordinates(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !282    ; 4 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond3 = and i1 %i.d, %or.cond
  br i1 %or.cond3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str.25, i32 noundef 320) #36
  br label %_ZNSt10unique_ptrI11ec_point_stN4bssl8internal7DeleterEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.e = tail call ptr @OPENSSL_malloc(i64 noundef 224) #36 ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt10unique_ptrI11ec_point_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.h = load i32, ptr %i.g, align 8, !tbaa !235
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 540
  tail call void @CRYPTO_refcount_inc(ptr noundef nonnull %i.i) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.a, ptr %i.e, align 8, !tbaa !247
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.j, i8 0, i64 216, i1 false)
  %i.k = load ptr, ptr %0, align 8, !tbaa !282
  %i.l = tail call i32 @EC_POINT_set_affine_coordinates_GFp(ptr noundef %i.k, ptr noundef nonnull %i.e, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr poison)
  %.not16 = icmp eq i32 %i.l, 0
  br i1 %.not16, label %_ZN4bssl8internal7DeleterclI11ec_point_stEEvPT_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i32 @EC_KEY_set_public_key(ptr noundef nonnull %0, ptr noundef nonnull %i.e)
  %.not17 = icmp eq i32 %i.m, 0
  br i1 %.not17, label %_ZN4bssl8internal7DeleterclI11ec_point_stEEvPT_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = tail call i32 @EC_KEY_check_key(ptr noundef nonnull %0)
  br label %_ZN4bssl8internal7DeleterclI11ec_point_stEEvPT_.exit.i

_ZN4bssl8internal7DeleterclI11ec_point_stEEvPT_.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %.0.ph = phi i32 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.n, %bb.i ]
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !247
  tail call void @EC_GROUP_free(ptr noundef %i.o)
  tail call void @OPENSSL_free(ptr noundef nonnull %i.e) #36
  br label %_ZNSt10unique_ptrI11ec_point_stN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrI11ec_point_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %_ZN4bssl8internal7DeleterclI11ec_point_stEEvPT_.exit.i, %bb.d, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %.0.ph, %_ZN4bssl8internal7DeleterclI11ec_point_stEEvPT_.exit.i ], [ 0, %bb.d ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EC_KEY_oct2key(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !282    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 114, ptr noundef nonnull @.str.25, i32 noundef 338) #36
  br label %_ZNSt10unique_ptrI11ec_point_stN4bssl8internal7DeleterEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @OPENSSL_malloc(i64 noundef 224) #36 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNSt10unique_ptrI11ec_point_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.f = load i32, ptr %i.e, align 8, !tbaa !235
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 540
  tail call void @CRYPTO_refcount_inc(ptr noundef nonnull %i.g) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  store ptr %i.a, ptr %i.c, align 8, !tbaa !247
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.h, i8 0, i64 216, i1 false)
  %i.i = load ptr, ptr %0, align 8, !tbaa !282
  %i.j = tail call i32 @EC_POINT_oct2point(ptr noundef %i.i, ptr noundef nonnull %i.c, ptr noundef %1, i64 noundef %2, ptr noundef %3)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %_ZN4bssl8internal7DeleterclI11ec_point_stEEvPT_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i32 @EC_KEY_set_public_key(ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  br label %_ZN4bssl8internal7DeleterclI11ec_point_stEEvPT_.exit.i

_ZN4bssl8internal7DeleterclI11ec_point_stEEvPT_.exit.i: ; preds = %bb.f, %bb.g
  %.ph = phi i32 [ %i.k, %bb.g ], [ 0, %bb.f ]
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !247
  tail call void @EC_GROUP_free(ptr noundef %i.l)
  tail call void @OPENSSL_free(ptr noundef nonnull %i.c) #36
  br label %_ZNSt10unique_ptrI11ec_point_stN4bssl8internal7DeleterEED2Ev.exit

_ZNSt10unique_ptrI11ec_point_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %_ZN4bssl8internal7DeleterclI11ec_point_stEEvPT_.exit.i, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %.ph, %_ZN4bssl8internal7DeleterclI11ec_point_stEEvPT_.exit.i ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EC_POINT_oct2point(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.EC_AFFINE, align 8          ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !247
  %i.b = tail call i32 @EC_GROUP_cmp(ptr noundef %0, ptr noundef %i.a, ptr poison)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.28, i32 noundef 148) #36
  br label %_ZL23ec_GFp_simple_oct2pointPK11ec_group_stP11ec_point_stPKhmP10bignum_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %bb.d, label %bb.e

end_hunk_1
begin_hunk_2_@_ZL16digest_to_scalarPK11ec_group_stP9EC_SCALARPKhm:bb.a
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.035.i.epil = phi i64 [ %i.cg, %.preheader.i.epil ], [ %.035.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.02134.i.epil = phi i64 [ %i.cf, %.preheader.i.epil ], [ %.02134.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.cb = shl i64 %.02134.i.epil, 8
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 %.035.i.epil
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !80
  %i.ce = zext i8 %i.cd to i64
  %i.cf = or disjoint i64 %i.cb, %i.ce            ; 2 uses
  %i.cg = add nuw nsw i64 %.035.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter112
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.i.epil, !llvm.loop !1295

.epilog-lcssa:                                    ; preds = %.preheader.i.epil, %.unr-lcssa
  %.lcssa107 = phi i64 [ %i.df, %.unr-lcssa ], [ %i.cf, %.preheader.i.epil ]
  store i64 %.lcssa107, ptr %.023.lcssa.i, align 8, !tbaa !96
  %i.ch = getelementptr inbounds nuw i8, ptr %.023.lcssa.i, i64 8
  %i.ci = add i64 %.024.lcssa.i, -1
  br label %bb.e

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.035.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.dg, %.preheader.i ] ; 5 uses
  %.02134.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.df, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 %.035.i
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !80
  %i.cl = zext i8 %i.ck to i64
  %i.cm = shl i64 %.02134.i, 16
  %i.cn = shl nuw nsw i64 %i.cl, 8
  %i.co = or disjoint i64 %i.cm, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %.035.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !80
  %i.cs = zext i8 %i.cr to i64
  %i.ct = or disjoint i64 %i.co, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 %.035.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !80
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl i64 %i.ct, 16
  %i.cz = shl nuw nsw i64 %i.cx, 8
  %i.da = or disjoint i64 %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %.035.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 3
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !80
  %i.de = zext i8 %i.dd to i64
  %i.df = or disjoint i64 %i.da, %i.de            ; 3 uses
  %i.dg = add nuw nsw i64 %.035.i, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.i, !llvm.loop !16

bb.e:                                             ; preds = %.epilog-lcssa, %._crit_edge.i
  %.125.i = phi i64 [ %i.ci, %.epilog-lcssa ], [ %.024.lcssa.i, %._crit_edge.i ]
  %.1.i = phi ptr [ %i.ch, %.epilog-lcssa ], [ %.023.lcssa.i, %._crit_edge.i ]
  %i.dh = shl i64 %.125.i, 3                      ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bn_big_endian_to_words.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr align 1 %.1.i, i8 0, i64 %i.dh, i1 false)
  %.pre51.pre = load i32, ptr %i.c, align 8, !tbaa !113
  br label %bn_big_endian_to_words.exit

bn_big_endian_to_words.exit:                      ; preds = %bb.e, %bb.f
  %.pre51 = phi i32 [ %i.d, %bb.e ], [ %.pre51.pre, %bb.f ] ; 6 uses
  %i.dj = shl nuw nsw i64 %spec.select, 3
  %i.dk = icmp samesign ugt i64 %i.dj, %i.at
  %.not.i21.not = icmp eq i32 %.pre51, 0          ; 2 uses
  br i1 %i.dk, label %bb.g, label %bn_rshift_words.exit

bb.g:                                             ; preds = %bn_big_endian_to_words.exit
  %i.dl = and i32 %.0.i, 7                        ; 2 uses
  br i1 %.not.i21.not, label %bn_rshift_words.exit.thread, label %.preheader.i22

bn_rshift_words.exit.thread:                      ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  br label %bn_reduce_once_in_place.exit

.preheader.i22:                                   ; preds = %bb.g
  %i.dm = sub nuw nsw i32 8, %i.dl
  %i.dn = sext i32 %.pre51 to i64
  %i.do = add nsw i64 %i.dn, -1                   ; 5 uses
  %.not = icmp eq i64 %i.do, 0
  %i.dp = zext nneg i32 %i.dm to i64              ; 3 uses
  br i1 %.not, label %bn_rshift_words.exit.thread57, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.preheader.i22
  %i.dq = or disjoint i32 %i.dl, 56
  %i.dr = zext nneg i32 %i.dq to i64              ; 2 uses
  %.pre = load i64, ptr %1, align 8, !tbaa !96    ; 2 uses
  %min.iters.check = icmp ult i32 %.pre51, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i24
  %n.vec = and i64 %i.do, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dr, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert80 = insertelement <2 x i64> poison, i64 %i.dp, i64 0
  %broadcast.splat81 = shufflevector <2 x i64> %broadcast.splatinsert80, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load82, %vector.body ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %wide.load = load <2 x i64>, ptr %i.du, align 8, !tbaa !96 ; 3 uses
  %wide.load82 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !96 ; 4 uses
  %i.dw = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.dx = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load82, <2 x i32> <i32 1, i32 2>
  %i.dy = lshr <2 x i64> %i.dw, %broadcast.splat81
  %i.dz = lshr <2 x i64> %i.dx, %broadcast.splat81
  %i.ea = shl <2 x i64> %wide.load, %broadcast.splat
  %i.eb = shl <2 x i64> %wide.load82, %broadcast.splat
  %i.ec = or <2 x i64> %i.ea, %i.dy
  %i.ed = or <2 x i64> %i.eb, %i.dz
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <2 x i64> %i.ec, ptr %i.ds, align 8, !tbaa !96
  store <2 x i64> %i.ed, ptr %i.ee, align 8, !tbaa !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !1296

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load82, i64 1
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br i1 %cmp.n, label %bn_rshift_words.exit.thread57, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i24, %middle.block
  %.ph = phi i64 [ %.pre, %.lr.ph.i24 ], [ %vector.recur.extract, %middle.block ]
  %.039.i.ph = phi i64 [ 0, %.lr.ph.i24 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.eg = phi i64 [ %i.el, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %.039.i = phi i64 [ %i.ej, %scalar.ph ], [ %.039.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.039.i
  %i.ei = lshr i64 %i.eg, %i.dp
  %i.ej = add nuw i64 %.039.i, 1                  ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !96 ; 2 uses
  %i.em = shl i64 %i.el, %i.dr
  %i.en = or i64 %i.em, %i.ei
  store i64 %i.en, ptr %i.eh, align 8, !tbaa !96
  %exitcond.not.i25 = icmp eq i64 %i.ej, %i.do
  br i1 %exitcond.not.i25, label %bn_rshift_words.exit.thread57, label %scalar.ph, !llvm.loop !1297

bn_rshift_words.exit.thread57:                    ; preds = %scalar.ph, %middle.block, %.preheader.i22
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.do ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !96
  %i.eq = lshr i64 %i.ep, %i.dp
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  br label %.preheader42.i.i

bn_rshift_words.exit:                             ; preds = %bn_big_endian_to_words.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  br i1 %.not.i21.not, label %bn_reduce_once_in_place.exit, label %.preheader42.i.i

.preheader42.i.i:                                 ; preds = %bn_rshift_words.exit.thread57, %bn_rshift_words.exit
  %i.er = sext i32 %.pre51 to i64                 ; 5 uses
  %i.es = load ptr, ptr %i.b, align 8, !tbaa !112 ; 2 uses
  %.not43.i.i = icmp ult i32 %.pre51, 4
  br i1 %.not43.i.i, label %.lr.ph59.i.i.preheader, label %.lr.ph.i.i26

.lr.ph59.i.i.preheader:                           ; preds = %.preheader.i.i, %.preheader42.i.i
  %.158.i.i.ph = phi i64 [ %i.er, %.preheader42.i.i ], [ %i.gt, %.preheader.i.i ]
  %.12757.i.i.ph = phi ptr [ %i.es, %.preheader42.i.i ], [ %i.gr, %.preheader.i.i ]
  %.12956.i.i.ph = phi ptr [ %1, %.preheader42.i.i ], [ %i.gq, %.preheader.i.i ]
  %.13155.i.i.ph = phi ptr [ %i.a, %.preheader42.i.i ], [ %i.gs, %.preheader.i.i ]
  %.14154.i.i.ph = phi i64 [ 0, %.preheader42.i.i ], [ %i.go, %.preheader.i.i ]
  br label %.lr.ph59.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i26
  %.not3453.i.i = icmp eq i64 %i.gt, 0
  br i1 %.not3453.i.i, label %.lr.ph.i11.i, label %.lr.ph59.i.i.preheader

.lr.ph.i.i26:                                     ; preds = %.preheader42.i.i, %.lr.ph.i.i26
  %.048.i.i = phi i64 [ %i.gt, %.lr.ph.i.i26 ], [ %i.er, %.preheader42.i.i ]
  %.02647.i.i = phi ptr [ %i.gr, %.lr.ph.i.i26 ], [ %i.es, %.preheader42.i.i ] ; 5 uses
  %.02846.i.i = phi ptr [ %i.gq, %.lr.ph.i.i26 ], [ %1, %.preheader42.i.i ] ; 5 uses
  %.03045.i.i = phi ptr [ %i.gs, %.lr.ph.i.i26 ], [ %i.a, %.preheader42.i.i ] ; 5 uses
  %.04044.i.i = phi i64 [ %i.go, %.lr.ph.i.i26 ], [ 0, %.preheader42.i.i ]
  %i.et = load i64, ptr %.02846.i.i, align 8, !tbaa !96
  %i.eu = load i64, ptr %.02647.i.i, align 8, !tbaa !96
  %i.ev = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.et, i64 %i.eu) ; 2 uses
  %i.ew = extractvalue { i64, i1 } %i.ev, 1
  %i.ex = extractvalue { i64, i1 } %i.ev, 0
  %i.ey = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ex, i64 %.04044.i.i) ; 2 uses
  %i.ez = extractvalue { i64, i1 } %i.ey, 1
  %i.fa = extractvalue { i64, i1 } %i.ey, 0
  %i.fb = or i1 %i.ew, %i.ez
  %i.fc = zext i1 %i.fb to i64
  store i64 %i.fa, ptr %.03045.i.i, align 8, !tbaa !96
  %i.fd = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !96
  %i.ff = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !96
  %i.fh = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.fe, i64 %i.fg) ; 2 uses
  %i.fi = extractvalue { i64, i1 } %i.fh, 1
  %i.fj = extractvalue { i64, i1 } %i.fh, 0
  %i.fk = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.fj, i64 %i.fc) ; 2 uses
  %i.fl = extractvalue { i64, i1 } %i.fk, 1
  %i.fm = extractvalue { i64, i1 } %i.fk, 0
  %i.fn = or i1 %i.fi, %i.fl
  %i.fo = zext i1 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 8
  store i64 %i.fm, ptr %i.fp, align 8, !tbaa !96
  %i.fq = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !96
  %i.fs = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !96
  %i.fu = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.fr, i64 %i.ft) ; 2 uses
  %i.fv = extractvalue { i64, i1 } %i.fu, 1
  %i.fw = extractvalue { i64, i1 } %i.fu, 0
  %i.fx = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.fw, i64 %i.fo) ; 2 uses
  %i.fy = extractvalue { i64, i1 } %i.fx, 1
  %i.fz = extractvalue { i64, i1 } %i.fx, 0
  %i.ga = or i1 %i.fv, %i.fy
  %i.gb = zext i1 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 16
  store i64 %i.fz, ptr %i.gc, align 8, !tbaa !96
  %i.gd = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 24
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !96
  %i.gf = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 24
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !96
  %i.gh = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ge, i64 %i.gg) ; 2 uses
  %i.gi = extractvalue { i64, i1 } %i.gh, 1
  %i.gj = extractvalue { i64, i1 } %i.gh, 0
  %i.gk = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gj, i64 %i.gb) ; 2 uses
  %i.gl = extractvalue { i64, i1 } %i.gk, 1
  %i.gm = extractvalue { i64, i1 } %i.gk, 0
  %i.gn = or i1 %i.gi, %i.gl                      ; 2 uses
  %i.go = zext i1 %i.gn to i64                    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 24
  store i64 %i.gm, ptr %i.gp, align 8, !tbaa !96
  %i.gq = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 32 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 32 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 32 ; 2 uses
  %i.gt = add i64 %.048.i.i, -4                   ; 4 uses
  %.not.i.i27 = icmp ult i64 %i.gt, 4
  br i1 %.not.i.i27, label %.preheader.i.i, label %.lr.ph.i.i26, !llvm.loop !13

.lr.ph59.i.i:                                     ; preds = %.lr.ph59.i.i.preheader, %.lr.ph59.i.i
  %.158.i.i = phi i64 [ %i.hh, %.lr.ph59.i.i ], [ %.158.i.i.ph, %.lr.ph59.i.i.preheader ]
  %.12757.i.i = phi ptr [ %i.hf, %.lr.ph59.i.i ], [ %.12757.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.12956.i.i = phi ptr [ %i.he, %.lr.ph59.i.i ], [ %.12956.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.13155.i.i = phi ptr [ %i.hg, %.lr.ph59.i.i ], [ %.13155.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.14154.i.i = phi i64 [ %i.hd, %.lr.ph59.i.i ], [ %.14154.i.i.ph, %.lr.ph59.i.i.preheader ]
  %i.gu = load i64, ptr %.12956.i.i, align 8, !tbaa !96
  %i.gv = load i64, ptr %.12757.i.i, align 8, !tbaa !96
  %i.gw = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gu, i64 %i.gv) ; 2 uses
  %i.gx = extractvalue { i64, i1 } %i.gw, 1
  %i.gy = extractvalue { i64, i1 } %i.gw, 0
  %i.gz = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gy, i64 %.14154.i.i) ; 2 uses
  %i.ha = extractvalue { i64, i1 } %i.gz, 1
  %i.hb = extractvalue { i64, i1 } %i.gz, 0
  %i.hc = or i1 %i.gx, %i.ha                      ; 2 uses
  %i.hd = zext i1 %i.hc to i64
  store i64 %i.hb, ptr %.13155.i.i, align 8, !tbaa !96
  %i.he = getelementptr inbounds nuw i8, ptr %.12956.i.i, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %.12757.i.i, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %.13155.i.i, i64 8
  %i.hh = add nsw i64 %.158.i.i, -1               ; 2 uses
  %.not34.i.i = icmp eq i64 %i.hh, 0
  br i1 %.not34.i.i, label %.lr.ph.i11.i, label %.lr.ph59.i.i, !llvm.loop !14

.lr.ph.i11.i:                                     ; preds = %.lr.ph59.i.i, %.preheader.i.i
  %.032.i.ph.i.neg.in = phi i1 [ %i.gn, %.preheader.i.i ], [ %i.hc, %.lr.ph59.i.i ]
  %.032.i.ph.i.neg = sext i1 %.032.i.ph.i.neg.in to i64
  %i.hi = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.032.i.ph.i.neg) #38, !srcloc !108 ; 3 uses
  %i.hj = xor i64 %i.hi, -1                       ; 2 uses
  %min.iters.check84 = icmp ult i32 %.pre51, 4
  br i1 %min.iters.check84, label %scalar.ph83.preheader, label %vector.ph85

vector.ph85:                                      ; preds = %.lr.ph.i11.i
  %n.vec86 = and i64 %i.er, -4                    ; 3 uses
  %broadcast.splatinsert87 = insertelement <2 x i64> poison, i64 %i.hi, i64 0
  %broadcast.splat88 = shufflevector <2 x i64> %broadcast.splatinsert87, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert89 = insertelement <2 x i64> poison, i64 %i.hj, i64 0
  %broadcast.splat90 = shufflevector <2 x i64> %broadcast.splatinsert89, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph85
  %index92 = phi i64 [ 0, %vector.ph85 ], [ %index.next97, %vector.body91 ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index92 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %wide.load93 = load <2 x i64>, ptr %i.hk, align 8, !tbaa !96
  %wide.load94 = load <2 x i64>, ptr %i.hl, align 8, !tbaa !96
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index92 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %wide.load95 = load <2 x i64>, ptr %i.hm, align 16, !tbaa !96
  %wide.load96 = load <2 x i64>, ptr %i.hn, align 16, !tbaa !96
  %i.ho = and <2 x i64> %wide.load93, %broadcast.splat88
  %i.hp = and <2 x i64> %wide.load94, %broadcast.splat88
  %i.hq = and <2 x i64> %wide.load95, %broadcast.splat90
  %i.hr = and <2 x i64> %wide.load96, %broadcast.splat90
  %i.hs = or disjoint <2 x i64> %i.hq, %i.ho
  %i.ht = or disjoint <2 x i64> %i.hr, %i.hp
  store <2 x i64> %i.hs, ptr %i.hk, align 8, !tbaa !96
  store <2 x i64> %i.ht, ptr %i.hl, align 8, !tbaa !96
  %index.next97 = add nuw i64 %index92, 4         ; 2 uses
  %i.hu = icmp eq i64 %index.next97, %n.vec86
  br i1 %i.hu, label %middle.block98, label %vector.body91, !llvm.loop !1298

middle.block98:                                   ; preds = %vector.body91
  %cmp.n99 = icmp eq i64 %n.vec86, %i.er
  br i1 %cmp.n99, label %bn_reduce_once_in_place.exit, label %scalar.ph83.preheader

scalar.ph83.preheader:                            ; preds = %.lr.ph.i11.i, %middle.block98
  %.09.i.i.ph = phi i64 [ 0, %.lr.ph.i11.i ], [ %n.vec86, %middle.block98 ]
  br label %scalar.ph83

scalar.ph83:                                      ; preds = %scalar.ph83.preheader, %scalar.ph83
  %.09.i.i = phi i64 [ %i.ic, %scalar.ph83 ], [ %.09.i.i.ph, %scalar.ph83.preheader ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09.i.i ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !96
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.09.i.i
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !96
  %i.hz = and i64 %i.hw, %i.hi
  %i.ia = and i64 %i.hy, %i.hj
  %i.ib = or disjoint i64 %i.ia, %i.hz
  store i64 %i.ib, ptr %i.hv, align 8, !tbaa !96
  %i.ic = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ic, %i.er
  br i1 %exitcond.not.i.i, label %bn_reduce_once_in_place.exit, label %scalar.ph83, !llvm.loop !1299

bn_reduce_once_in_place.exit:                     ; preds = %scalar.ph83, %middle.block98, %bn_rshift_words.exit.thread, %bn_rshift_words.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @ecdsa_sign_fixed_with_nonce_for_known_answer_test(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7) local_unnamed_addr #5 {
bb.a:
  %8 = alloca %struct.EC_SCALAR, align 8          ; 4 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !278  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !294
  %.not19 = icmp eq ptr %i.e, null
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 26, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str.32, i32 noundef 192) #36
  br label %bb.j

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %5, align 8, !tbaa !282    ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !284  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @ERR_put_error(i32 noundef 26, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str.32, i32 noundef 198) #36
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.k = call i32 @ec_scalar_from_bytes(ptr noundef nonnull %i.f, ptr noundef nonnull %8, ptr noundef %6, i64 noundef %7)
  %.not20 = icmp eq i32 %i.k, 0
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.m = call fastcc noundef i32 @_ZL15ecdsa_sign_implPK11ec_group_stPiPhPmmPK9EC_SCALARS7_PKhm(ptr noundef %i.f, ptr noundef %i.a, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.l, ptr noundef %8, ptr noundef %0, i64 noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i32 [ %i.m, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.c
  %.2 = phi i32 [ 0, %bb.c ], [ 0, %bb.f ], [ %.0, %bb.i ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL15ecdsa_sign_implPK11ec_group_stPiPhPmmPK9EC_SCALARS7_PKhm(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(address) %5, ptr noundef nonnull %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8) unnamed_addr #5 {
bb.a:
  %i.a = alloca [18 x i64], align 16              ; 6 uses
  %i.b = alloca [9 x i64], align 16               ; 4 uses
  %9 = alloca %struct.EC_JACOBIAN, align 8        ; 5 uses
  %10 = alloca %struct.EC_SCALAR, align 8         ; 7 uses
  %11 = alloca %struct.EC_SCALAR, align 8         ; 12 uses
  %12 = alloca %struct.EC_SCALAR, align 8         ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  store i32 0, ptr %1, align 4, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 7 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !113  ; 7 uses
  %i.g = icmp sgt i32 %i.f, 0                     ; 2 uses
  br i1 %i.g, label %.lr.ph.i.i, label %bn_minimal_width.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !112  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.f, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 4 uses
  %i.i = zext nneg i32 %.05.i.i to i64
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !96
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %BN_num_bits.exit

bb.c:                                             ; preds = %bb.b
  %i.n = add nsw i32 %.05.i.i, -1
end_hunk_2
