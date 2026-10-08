Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/infback?download=true
inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@zng_inflateBack:bb.a
  %i.an = icmp ult i32 %.0520, 14
  br i1 %i.an, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader689
  %i.ao = zext nneg i32 %.0520 to i64
  br label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr %i.h, align 4, !tbaa !55
  %.not668 = icmp eq i32 %i.ap, 0
  br i1 %.not668, label %.preheader680, label %bb.g

.preheader680:                                    ; preds = %bb.f
  %i.aq = icmp ult i32 %.0520, 3
  br i1 %i.aq, label %.lr.ph1057, label %bb.i

.lr.ph1057:                                       ; preds = %.preheader680
  %i.ar = or disjoint i32 %.0520, 8
  %i.as = icmp eq i32 %.0558, 0
  br i1 %i.as, label %bb.h, label %._crit_edge1058

bb.g:                                             ; preds = %bb.f
  %i.at = and i32 %.0520, 7
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 %.0524, %i.au
  %i.aw = and i32 %.0520, -8
  store i32 16208, ptr %i.g, align 8, !tbaa !54
  br label %.thread

bb.h:                                             ; preds = %.lr.ph1057
  %i.ax = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.split1063, label %._crit_edge1058

.split1063:                                       ; preds = %bb.h
  store ptr null, ptr %i.a, align 8, !tbaa !57
  br label %.loopexit681

._crit_edge1058:                                  ; preds = %bb.h, %.lr.ph1057
  %.2560 = phi i32 [ %i.ax, %bb.h ], [ %.0558, %.lr.ph1057 ]
  %i.az = add i32 %.2560, -1
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !57
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !33
  %i.bd = zext i8 %i.bc to i64
  %i.be = zext nneg i32 %.0520 to i64
  %i.bf = shl nuw nsw i64 %i.bd, %i.be
  %i.bg = add i64 %i.bf, %.0524
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge1058, %.preheader680
  %.1559.lcssa = phi i32 [ %i.az, %._crit_edge1058 ], [ %.0558, %.preheader680 ]
  %.1525.lcssa = phi i64 [ %i.bg, %._crit_edge1058 ], [ %.0524, %.preheader680 ] ; 3 uses
  %.1521.lcssa = phi i32 [ %i.ar, %._crit_edge1058 ], [ %.0520, %.preheader680 ]
  %i.bh = trunc i64 %.1525.lcssa to i32
  %i.bi = and i32 %i.bh, 1
  store i32 %i.bi, ptr %i.h, align 4, !tbaa !55
  %i.bj = lshr i64 %.1525.lcssa, 1
  %i.bk = and i64 %i.bj, 3
  switch i64 %i.bk, label %default.unreachable1383 [
    i64 0, label %bb.j
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  store i32 16193, ptr %i.g, align 8, !tbaa !54
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  call void @zng_fixedtables(ptr noundef nonnull %i.d) #4
  store i32 16200, ptr %i.g, align 8, !tbaa !54
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  store i32 16196, ptr %i.g, align 8, !tbaa !54
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  store i32 16209, ptr %i.g, align 8, !tbaa !54
  store ptr @.str.1, ptr %i.f, align 8, !tbaa !13
  br label %bb.n

default.unreachable1383:                          ; preds = %bb.i
  unreachable

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.bl = lshr i64 %.1525.lcssa, 3
  %i.bm = add i32 %.1521.lcssa, -3
  br label %.thread

bb.o:                                             ; preds = %bb.e
  %i.bn = and i32 %.0520, 7
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = lshr i64 %.0524, %i.bo                  ; 2 uses
  %i.bq = and i32 %.0520, -8
  %i.br = icmp ult i32 %.0520, 32
  br i1 %i.br, label %.lr.ph1038.preheader, label %._crit_edge1039

.lr.ph1038.preheader:                             ; preds = %bb.o
  %i.bs = and i32 %.0520, 24
  %i.bt = zext nneg i32 %i.bs to i64
  br label %.lr.ph1038

.lr.ph1038:                                       ; preds = %.lr.ph1038.preheader, %bb.r
  %indvars.iv1302 = phi i64 [ %i.bt, %.lr.ph1038.preheader ], [ %indvars.iv.next1303, %bb.r ] ; 3 uses
  %.25261035 = phi i64 [ %i.bp, %.lr.ph1038.preheader ], [ %i.cd, %bb.r ]
  %.35611034 = phi i32 [ %.0558, %.lr.ph1038.preheader ], [ %i.bx, %bb.r ] ; 2 uses
  %i.bu = icmp eq i32 %.35611034, 0
  br i1 %i.bu, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.lr.ph1038
  %i.bv = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.a, align 8, !tbaa !57
  br label %.loopexit681

bb.r:                                             ; preds = %bb.p, %.lr.ph1038
  %.4562 = phi i32 [ %i.bv, %bb.p ], [ %.35611034, %.lr.ph1038 ]
  %i.bx = add i32 %.4562, -1                      ; 2 uses
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store ptr %i.bz, ptr %i.a, align 8, !tbaa !57
  %i.ca = load i8, ptr %i.by, align 1, !tbaa !33
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, %indvars.iv1302
  %i.cd = add i64 %i.cc, %.25261035               ; 2 uses
  %indvars.iv.next1303 = add nuw nsw i64 %indvars.iv1302, 8 ; 2 uses
  %i.ce = icmp samesign ult i64 %indvars.iv1302, 24
  br i1 %i.ce, label %.lr.ph1038, label %._crit_edge1039.loopexit, !llvm.loop !34

._crit_edge1039.loopexit:                         ; preds = %bb.r
  %i.cf = trunc nuw nsw i64 %indvars.iv.next1303 to i32
  br label %._crit_edge1039

._crit_edge1039:                                  ; preds = %._crit_edge1039.loopexit, %bb.o
  %.3561.lcssa = phi i32 [ %.0558, %bb.o ], [ %i.bx, %._crit_edge1039.loopexit ] ; 3 uses
  %.2526.lcssa = phi i64 [ %i.bp, %bb.o ], [ %i.cd, %._crit_edge1039.loopexit ] ; 4 uses
  %.2522.lcssa = phi i32 [ %i.bq, %bb.o ], [ %i.cf, %._crit_edge1039.loopexit ]
  %i.cg = and i64 %.2526.lcssa, 65535
  %i.ch = lshr i64 %.2526.lcssa, 16
  %i.ci = xor i64 %i.ch, %i.cg
  %.not665 = icmp eq i64 %i.ci, 65535
  br i1 %.not665, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge1039
  store i32 16209, ptr %i.g, align 8, !tbaa !54
  store ptr @.str.2, ptr %i.f, align 8, !tbaa !13
  br label %.thread

bb.t:                                             ; preds = %._crit_edge1039
  %i.cj = trunc i64 %.2526.lcssa to i32
  %i.ck = and i32 %i.cj, 65535                    ; 3 uses
  store i32 %i.ck, ptr %i.ae, align 4, !tbaa !60
  %.not6661043 = icmp eq i32 %i.ck, 0
  br i1 %.not6661043, label %._crit_edge1050, label %.lr.ph1049

.lr.ph1049:                                       ; preds = %bb.t, %bb.y
  %.15511047 = phi i32 [ %i.cz, %bb.y ], [ %.0550, %bb.t ] ; 3 uses
  %.55631046 = phi i32 [ %i.cw, %bb.y ], [ %.3561.lcssa, %bb.t ] ; 2 uses
  %.15851045 = phi ptr [ %i.da, %bb.y ], [ %.0584, %bb.t ]
  %storemerge1044 = phi i32 [ %i.dc, %bb.y ], [ %i.ck, %bb.t ]
  %i.cl = icmp eq i32 %.55631046, 0
  br i1 %i.cl, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.lr.ph1049
  %i.cm = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr null, ptr %i.a, align 8, !tbaa !57
  br label %.loopexit681

bb.w:                                             ; preds = %.lr.ph1049, %bb.u
  %.6564 = phi i32 [ %i.cm, %bb.u ], [ %.55631046, %.lr.ph1049 ] ; 3 uses
  %i.co = icmp eq i32 %.15511047, 0
  br i1 %i.co, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cp = load ptr, ptr %i.n, align 16, !tbaa !30 ; 2 uses
  %i.cq = load i32, ptr %i.p, align 64, !tbaa !28 ; 4 uses
  store i32 %i.cq, ptr %i.i, align 8, !tbaa !32
  %i.cr = call i32 %3(ptr noundef %4, ptr noundef %i.cp, i32 noundef %i.cq) #4
  %.not667 = icmp eq i32 %i.cr, 0
  br i1 %.not667, label %bb.y, label %.loopexit681

bb.y:                                             ; preds = %bb.x, %bb.w
  %.2586 = phi ptr [ %i.cp, %bb.x ], [ %.15851045, %bb.w ] ; 2 uses
  %.2552 = phi i32 [ %i.cq, %bb.x ], [ %.15511047, %bb.w ] ; 2 uses
  %i.cs = call i32 @llvm.umin.i32(i32 %storemerge1044, i32 %.6564)
  %i.ct = call i32 @llvm.umin.i32(i32 %i.cs, i32 %.2552) ; 4 uses
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.cv = zext i32 %i.ct to i64                   ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2586, ptr align 1 %i.cu, i64 %i.cv, i1 false)
  %i.cw = sub i32 %.6564, %i.ct                   ; 2 uses
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cv
  store ptr %i.cy, ptr %i.a, align 8, !tbaa !57
  %i.cz = sub i32 %.2552, %i.ct                   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.2586, i64 %i.cv ; 2 uses
  %i.db = load i32, ptr %i.ae, align 4, !tbaa !60
  %i.dc = sub i32 %i.db, %i.ct                    ; 3 uses
  store i32 %i.dc, ptr %i.ae, align 4, !tbaa !60
  %.not666 = icmp eq i32 %i.dc, 0
  br i1 %.not666, label %._crit_edge1050, label %.lr.ph1049, !llvm.loop !35

._crit_edge1050:                                  ; preds = %bb.y, %bb.t
  %.1585.lcssa = phi ptr [ %.0584, %bb.t ], [ %i.da, %bb.y ]
  %.5563.lcssa = phi i32 [ %.3561.lcssa, %bb.t ], [ %i.cw, %bb.y ]
  %.1551.lcssa = phi i32 [ %.0550, %bb.t ], [ %i.cz, %bb.y ]
  store i32 16191, ptr %i.g, align 8, !tbaa !54
  br label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ab
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ab ] ; 3 uses
  %.3527843 = phi i64 [ %.0524, %.lr.ph.preheader ], [ %i.dm, %bb.ab ]
  %.7565842 = phi i32 [ %.0558, %.lr.ph.preheader ], [ %i.dg, %bb.ab ] ; 2 uses
  %i.dd = icmp eq i32 %.7565842, 0
  br i1 %i.dd, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.lr.ph
  %i.de = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr null, ptr %i.a, align 8, !tbaa !57
  br label %.loopexit681

bb.ab:                                            ; preds = %bb.z, %.lr.ph
  %.8566 = phi i32 [ %i.de, %bb.z ], [ %.7565842, %.lr.ph ]
  %i.dg = add i32 %.8566, -1                      ; 2 uses
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  store ptr %i.di, ptr %i.a, align 8, !tbaa !57
  %i.dj = load i8, ptr %i.dh, align 1, !tbaa !33
  %i.dk = zext i8 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.dk, %indvars.iv
  %i.dm = add i64 %i.dl, %.3527843                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.dn = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.dn, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !36

._crit_edge.loopexit:                             ; preds = %bb.ab
  %i.do = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader689
  %.7565.lcssa = phi i32 [ %.0558, %.preheader689 ], [ %i.dg, %._crit_edge.loopexit ] ; 2 uses
  %.3527.lcssa = phi i64 [ %.0524, %.preheader689 ], [ %i.dm, %._crit_edge.loopexit ] ; 2 uses
  %.3523.lcssa = phi i32 [ %.0520, %.preheader689 ], [ %i.do, %._crit_edge.loopexit ]
  %i.dp = trunc i64 %.3527.lcssa to i32           ; 3 uses
  %i.dq = and i32 %i.dp, 31                       ; 2 uses
  %i.dr = add nuw nsw i32 %i.dq, 257
  store i32 %i.dr, ptr %i.r, align 4, !tbaa !61
  %i.ds = lshr i32 %i.dp, 5
  %i.dt = and i32 %i.ds, 31                       ; 2 uses
  %i.du = add nuw nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.s, align 16, !tbaa !62
  %i.dv = lshr i32 %i.dp, 10
  %i.dw = and i32 %i.dv, 15
  %i.dx = add nuw nsw i32 %i.dw, 4                ; 3 uses
  store i32 %i.dx, ptr %i.t, align 8, !tbaa !63
  %i.dy = lshr i64 %.3527.lcssa, 14               ; 2 uses
  %i.dz = add i32 %.3523.lcssa, -14               ; 2 uses
  %i.ea = icmp samesign ugt i32 %i.dq, 29
  %i.eb = icmp samesign ugt i32 %i.dt, 29
  %or.cond674 = select i1 %i.ea, i1 true, i1 %i.eb
  br i1 %or.cond674, label %bb.ac, label %.preheader679.preheader

bb.ac:                                            ; preds = %._crit_edge
  store i32 16209, ptr %i.g, align 8, !tbaa !54
  store ptr @.str.3, ptr %i.f, align 8, !tbaa !13
  br label %.thread

.preheader679.preheader:                          ; preds = %._crit_edge
  store i32 0, ptr %i.u, align 4, !tbaa !64
  br label %.preheader679

.preheader688:                                    ; preds = %bb.ae
  %i.ec = icmp ult i32 %i.eu, 18
  br i1 %i.ec, label %.lr.ph896.preheader, label %bb.af

.lr.ph896.preheader:                              ; preds = %.preheader688
  %i.ed = zext nneg i32 %i.ex to i64
  br label %.lr.ph896

.preheader679:                                    ; preds = %.preheader679.preheader, %bb.ae
  %.pre13051333 = phi i32 [ %.pre13051334, %bb.ae ], [ %i.dx, %.preheader679.preheader ] ; 2 uses
  %i.ee = phi i32 [ %i.et, %bb.ae ], [ %i.dx, %.preheader679.preheader ]
  %i.ef = phi i32 [ %i.ex, %bb.ae ], [ 0, %.preheader679.preheader ] ; 2 uses
  %.4891 = phi i32 [ %i.fe, %bb.ae ], [ %i.dz, %.preheader679.preheader ] ; 4 uses
  %.4528890 = phi i64 [ %i.fd, %bb.ae ], [ %i.dy, %.preheader679.preheader ] ; 2 uses
  %.9567889 = phi i32 [ %.10568.lcssa, %bb.ae ], [ %.7565.lcssa, %.preheader679.preheader ] ; 3 uses
  %i.eg = icmp ult i32 %.4891, 3
  br i1 %i.eg, label %.lr.ph850, label %bb.ae

.lr.ph850:                                        ; preds = %.preheader679
  %i.eh = or disjoint i32 %.4891, 8
  %i.ei = icmp eq i32 %.9567889, 0
  br i1 %i.ei, label %bb.ad, label %._crit_edge851

bb.ad:                                            ; preds = %.lr.ph850
  %i.ej = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %.split, label %.._crit_edge851_crit_edge

.._crit_edge851_crit_edge:                        ; preds = %bb.ad
  %.pre1304.pre = load i32, ptr %i.u, align 4, !tbaa !64
  %.pre1305.pre = load i32, ptr %i.t, align 8, !tbaa !63
  br label %._crit_edge851

.split:                                           ; preds = %bb.ad
  store ptr null, ptr %i.a, align 8, !tbaa !57
  br label %.loopexit681

._crit_edge851:                                   ; preds = %.._crit_edge851_crit_edge, %.lr.ph850
  %.pre1305 = phi i32 [ %.pre1305.pre, %.._crit_edge851_crit_edge ], [ %.pre13051333, %.lr.ph850 ] ; 2 uses
  %.pre1304 = phi i32 [ %.pre1304.pre, %.._crit_edge851_crit_edge ], [ %i.ef, %.lr.ph850 ]
  %.11569 = phi i32 [ %i.ej, %.._crit_edge851_crit_edge ], [ %.9567889, %.lr.ph850 ]
  %i.el = add i32 %.11569, -1
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store ptr %i.en, ptr %i.a, align 8, !tbaa !57
  %i.eo = load i8, ptr %i.em, align 1, !tbaa !33
  %i.ep = zext i8 %i.eo to i64
  %i.eq = zext nneg i32 %.4891 to i64
  %i.er = shl nuw nsw i64 %i.ep, %i.eq
  %i.es = add nuw nsw i64 %i.er, %.4528890
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge851, %.preheader679
  %.pre13051334 = phi i32 [ %.pre1305, %._crit_edge851 ], [ %.pre13051333, %.preheader679 ]
  %i.et = phi i32 [ %.pre1305, %._crit_edge851 ], [ %i.ee, %.preheader679 ] ; 2 uses
  %i.eu = phi i32 [ %.pre1304, %._crit_edge851 ], [ %i.ef, %.preheader679 ] ; 3 uses
  %.10568.lcssa = phi i32 [ %i.el, %._crit_edge851 ], [ %.9567889, %.preheader679 ] ; 4 uses
  %.5529.lcssa = phi i64 [ %i.es, %._crit_edge851 ], [ %.4528890, %.preheader679 ] ; 2 uses
  %.5.lcssa = phi i32 [ %i.eh, %._crit_edge851 ], [ %.4891, %.preheader679 ]
  %i.ev = trunc i64 %.5529.lcssa to i16
  %i.ew = and i16 %i.ev, 7
  %i.ex = add nuw i32 %i.eu, 1                    ; 4 uses
  store i32 %i.ex, ptr %i.u, align 4, !tbaa !64
  %i.ey = zext i32 %i.eu to i64
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr @zng_inflateBack.order, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !66
  %i.fb = zext i16 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.fb
  store i16 %i.ew, ptr %i.fc, align 2, !tbaa !66
  %i.fd = lshr i64 %.5529.lcssa, 3                ; 4 uses
  %i.fe = add i32 %.5.lcssa, -3                   ; 4 uses
  %i.ff = icmp ult i32 %i.ex, %i.et
  br i1 %i.ff, label %.preheader679, label %.preheader688, !llvm.loop !37

.lr.ph896:                                        ; preds = %.lr.ph896.preheader, %.lr.ph896
  %indvars.iv1275 = phi i64 [ %i.ed, %.lr.ph896.preheader ], [ %indvars.iv.next1276, %.lr.ph896 ] ; 2 uses
  %indvars.iv.next1276 = add nuw nsw i64 %indvars.iv1275, 1 ; 2 uses
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr @zng_inflateBack.order, i64 %indvars.iv1275
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !66
  %i.fi = zext i16 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.fi
  store i16 0, ptr %i.fj, align 2, !tbaa !66
  %i.fk = and i64 %indvars.iv.next1276, 4294967295
  %exitcond.not = icmp eq i64 %i.fk, 19
  br i1 %exitcond.not, label %._crit_edge897, label %.lr.ph896, !llvm.loop !38

._crit_edge897:                                   ; preds = %.lr.ph896
  store i32 19, ptr %i.u, align 4, !tbaa !64
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge897, %.preheader688
  store ptr %i.w, ptr %i.x, align 8, !tbaa !67
  store ptr %i.w, ptr %i.y, align 8, !tbaa !68
  store i32 7, ptr %i.z, align 4, !tbaa !69
  %i.fl = call i32 @zng_inflate_table(i32 noundef 0, ptr noundef nonnull %i.v, i32 noundef 19, ptr noundef nonnull %i.x, ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa) #4
  %.not640 = icmp eq i32 %i.fl, 0
  br i1 %.not640, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 16209, ptr %i.g, align 8, !tbaa !54
  store ptr @.str.4, ptr %i.f, align 8, !tbaa !13
  br label %.thread

bb.ah:                                            ; preds = %bb.af
  store i32 0, ptr %i.u, align 4, !tbaa !64
  %i.fm = load i32, ptr %i.r, align 4, !tbaa !61  ; 2 uses
  %i.fn = load i32, ptr %i.s, align 16, !tbaa !62
  %i.fo = sub i32 0, %i.fm
  %.not1159 = icmp eq i32 %i.fn, %i.fo
  br i1 %.not1159, label %._crit_edge947, label %.preheader678

.preheader678:                                    ; preds = %bb.ah, %bb.ba
  %.6946 = phi i32 [ %.12, %bb.ba ], [ %i.fe, %bb.ah ] ; 3 uses
  %.6530945 = phi i64 [ %.12536, %bb.ba ], [ %i.fd, %bb.ah ] ; 3 uses
  %.12570944 = phi i32 [ %.22580, %bb.ba ], [ %.10568.lcssa, %bb.ah ] ; 2 uses
  %i.fp = load ptr, ptr %i.y, align 8, !tbaa !68  ; 2 uses
  %i.fq = load i32, ptr %i.z, align 4, !tbaa !69  ; 2 uses
  %notmask900 = shl nsw i32 -1, %i.fq
  %i.fr = xor i32 %notmask900, -1
  %i.fs = zext nneg i32 %i.fr to i64
end_hunk_0
