Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/infback?download=true
inline.NumInlined: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@zng_inflateBack:bb.a
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
  %5 = lshr i32 %i.dp, 5
  %i.ds = and i32 %5, 31                          ; 2 uses
  %i.dt = add nuw nsw i32 %i.ds, 1
  store i32 %i.dt, ptr %i.s, align 16, !tbaa !62
  %6 = lshr i32 %i.dp, 10
  %i.du = and i32 %6, 15
  %i.dv = add nuw nsw i32 %i.du, 4                ; 3 uses
  store i32 %i.dv, ptr %i.t, align 8, !tbaa !63
  %i.dw = lshr i64 %.3527.lcssa, 14               ; 2 uses
  %i.dx = add i32 %.3523.lcssa, -14               ; 2 uses
  %i.dy = icmp samesign ugt i32 %i.dq, 29
  %i.dz = icmp samesign ugt i32 %i.ds, 29
  %or.cond674 = select i1 %i.dy, i1 true, i1 %i.dz
  br i1 %or.cond674, label %bb.ac, label %.preheader679.preheader

bb.ac:                                            ; preds = %._crit_edge
  store i32 16209, ptr %i.g, align 8, !tbaa !54
  store ptr @.str.3, ptr %i.f, align 8, !tbaa !13
  br label %.thread

.preheader679.preheader:                          ; preds = %._crit_edge
  store i32 0, ptr %i.u, align 4, !tbaa !64
  br label %.preheader679

.preheader688:                                    ; preds = %bb.ae
  %i.ea = icmp ult i32 %i.es, 18
  br i1 %i.ea, label %.lr.ph896.preheader, label %bb.af

.lr.ph896.preheader:                              ; preds = %.preheader688
  %i.eb = zext nneg i32 %i.ev to i64
  br label %.lr.ph896

.preheader679:                                    ; preds = %.preheader679.preheader, %bb.ae
  %.pre13051333 = phi i32 [ %.pre13051334, %bb.ae ], [ %i.dv, %.preheader679.preheader ] ; 2 uses
  %i.ec = phi i32 [ %i.er, %bb.ae ], [ %i.dv, %.preheader679.preheader ]
  %i.ed = phi i32 [ %i.ev, %bb.ae ], [ 0, %.preheader679.preheader ] ; 2 uses
  %.4891 = phi i32 [ %i.fc, %bb.ae ], [ %i.dx, %.preheader679.preheader ] ; 4 uses
  %.4528890 = phi i64 [ %i.fb, %bb.ae ], [ %i.dw, %.preheader679.preheader ] ; 2 uses
  %.9567889 = phi i32 [ %.10568.lcssa, %bb.ae ], [ %.7565.lcssa, %.preheader679.preheader ] ; 3 uses
  %i.ee = icmp ult i32 %.4891, 3
  br i1 %i.ee, label %.lr.ph850, label %bb.ae

.lr.ph850:                                        ; preds = %.preheader679
  %i.ef = or disjoint i32 %.4891, 8
  %i.eg = icmp eq i32 %.9567889, 0
  br i1 %i.eg, label %bb.ad, label %._crit_edge851

bb.ad:                                            ; preds = %.lr.ph850
  %i.eh = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %.split, label %.._crit_edge851_crit_edge

.._crit_edge851_crit_edge:                        ; preds = %bb.ad
  %.pre1304.pre = load i32, ptr %i.u, align 4, !tbaa !64
  %.pre1305.pre = load i32, ptr %i.t, align 8, !tbaa !63
  br label %._crit_edge851

.split:                                           ; preds = %bb.ad
  store ptr null, ptr %i.a, align 8, !tbaa !57
  br label %.loopexit681

._crit_edge851:                                   ; preds = %.._crit_edge851_crit_edge, %.lr.ph850
  %.pre1305 = phi i32 [ %.pre1305.pre, %.._crit_edge851_crit_edge ], [ %.pre13051333, %.lr.ph850 ] ; 2 uses
  %.pre1304 = phi i32 [ %.pre1304.pre, %.._crit_edge851_crit_edge ], [ %i.ed, %.lr.ph850 ]
  %.11569 = phi i32 [ %i.eh, %.._crit_edge851_crit_edge ], [ %.9567889, %.lr.ph850 ]
  %i.ej = add i32 %.11569, -1
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  store ptr %i.el, ptr %i.a, align 8, !tbaa !57
  %i.em = load i8, ptr %i.ek, align 1, !tbaa !33
  %i.en = zext i8 %i.em to i64
  %i.eo = zext nneg i32 %.4891 to i64
  %i.ep = shl nuw nsw i64 %i.en, %i.eo
  %i.eq = add nuw nsw i64 %i.ep, %.4528890
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge851, %.preheader679
  %.pre13051334 = phi i32 [ %.pre1305, %._crit_edge851 ], [ %.pre13051333, %.preheader679 ]
  %i.er = phi i32 [ %.pre1305, %._crit_edge851 ], [ %i.ec, %.preheader679 ] ; 2 uses
  %i.es = phi i32 [ %.pre1304, %._crit_edge851 ], [ %i.ed, %.preheader679 ] ; 3 uses
  %.10568.lcssa = phi i32 [ %i.ej, %._crit_edge851 ], [ %.9567889, %.preheader679 ] ; 4 uses
  %.5529.lcssa = phi i64 [ %i.eq, %._crit_edge851 ], [ %.4528890, %.preheader679 ] ; 2 uses
  %.5.lcssa = phi i32 [ %i.ef, %._crit_edge851 ], [ %.4891, %.preheader679 ]
  %i.et = trunc i64 %.5529.lcssa to i16
  %i.eu = and i16 %i.et, 7
  %i.ev = add nuw i32 %i.es, 1                    ; 4 uses
  store i32 %i.ev, ptr %i.u, align 4, !tbaa !64
  %i.ew = zext i32 %i.es to i64
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr @zng_inflateBack.order, i64 %i.ew
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !66
  %i.ez = zext i16 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.ez
  store i16 %i.eu, ptr %i.fa, align 2, !tbaa !66
  %i.fb = lshr i64 %.5529.lcssa, 3                ; 4 uses
  %i.fc = add i32 %.5.lcssa, -3                   ; 4 uses
  %i.fd = icmp ult i32 %i.ev, %i.er
  br i1 %i.fd, label %.preheader679, label %.preheader688, !llvm.loop !37

.lr.ph896:                                        ; preds = %.lr.ph896.preheader, %.lr.ph896
  %indvars.iv1275 = phi i64 [ %i.eb, %.lr.ph896.preheader ], [ %indvars.iv.next1276, %.lr.ph896 ] ; 2 uses
  %indvars.iv.next1276 = add nuw nsw i64 %indvars.iv1275, 1 ; 2 uses
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr @zng_inflateBack.order, i64 %indvars.iv1275
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !66
  %i.fg = zext i16 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.fg
  store i16 0, ptr %i.fh, align 2, !tbaa !66
  %i.fi = and i64 %indvars.iv.next1276, 4294967295
  %exitcond.not = icmp eq i64 %i.fi, 19
  br i1 %exitcond.not, label %._crit_edge897, label %.lr.ph896, !llvm.loop !38

._crit_edge897:                                   ; preds = %.lr.ph896
  store i32 19, ptr %i.u, align 4, !tbaa !64
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge897, %.preheader688
  store ptr %i.w, ptr %i.x, align 8, !tbaa !67
  store ptr %i.w, ptr %i.y, align 8, !tbaa !68
  store i32 7, ptr %i.z, align 4, !tbaa !69
  %i.fj = call i32 @zng_inflate_table(i32 noundef 0, ptr noundef nonnull %i.v, i32 noundef 19, ptr noundef nonnull %i.x, ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa) #4
  %.not640 = icmp eq i32 %i.fj, 0
  br i1 %.not640, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 16209, ptr %i.g, align 8, !tbaa !54
  store ptr @.str.4, ptr %i.f, align 8, !tbaa !13
  br label %.thread

bb.ah:                                            ; preds = %bb.af
  store i32 0, ptr %i.u, align 4, !tbaa !64
  %i.fk = load i32, ptr %i.r, align 4, !tbaa !61  ; 2 uses
  %i.fl = load i32, ptr %i.s, align 16, !tbaa !62
  %i.fm = sub i32 0, %i.fk
  %.not1159 = icmp eq i32 %i.fl, %i.fm
  br i1 %.not1159, label %._crit_edge947, label %.preheader678

.preheader678:                                    ; preds = %bb.ah, %bb.ba
  %.6946 = phi i32 [ %.12, %bb.ba ], [ %i.fc, %bb.ah ] ; 3 uses
  %.6530945 = phi i64 [ %.12536, %bb.ba ], [ %i.fb, %bb.ah ] ; 3 uses
  %.12570944 = phi i32 [ %.22580, %bb.ba ], [ %.10568.lcssa, %bb.ah ] ; 2 uses
  %i.fn = load ptr, ptr %i.y, align 8, !tbaa !68  ; 2 uses
  %i.fo = load i32, ptr %i.z, align 4, !tbaa !69  ; 2 uses
  %notmask900 = shl nsw i32 -1, %i.fo
  %i.fp = xor i32 %notmask900, -1
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = and i64 %.6530945, %i.fq
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fr ; 2 uses
  %.sroa.18.0..sroa_idx901 = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  %.sroa.18.0.copyload902 = load i8, ptr %.sroa.18.0..sroa_idx901, align 1, !tbaa !33 ; 2 uses
  %i.ft = zext i8 %.sroa.18.0.copyload902 to i32  ; 2 uses
  %.not641905 = icmp ult i32 %.6946, %i.ft
  br i1 %.not641905, label %.lr.ph909.preheader, label %._crit_edge910

.lr.ph909.preheader:                              ; preds = %.preheader678
  %i.fu = zext nneg i32 %.6946 to i64
  br label %.lr.ph909

.lr.ph909:                                        ; preds = %.lr.ph909.preheader, %bb.ak
  %i.fv = phi i32 [ %i.fo, %.lr.ph909.preheader ], [ %i.ga, %bb.ak ]
  %i.fw = phi ptr [ %i.fn, %.lr.ph909.preheader ], [ %i.gb, %bb.ak ]
  %indvars.iv1278 = phi i64 [ %i.fu, %.lr.ph909.preheader ], [ %indvars.iv.next1279, %bb.ak ] ; 2 uses
  %.7531907 = phi i64 [ %.6530945, %.lr.ph909.preheader ], [ %i.gi, %bb.ak ]
  %.13571906 = phi i32 [ %.12570944, %.lr.ph909.preheader ], [ %i.gc, %bb.ak ] ; 2 uses
  %i.fx = icmp eq i32 %.13571906, 0
  br i1 %i.fx, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.lr.ph909
  %i.fy = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.aj, label %._crit_edge1306

._crit_edge1306:                                  ; preds = %bb.ai
  %.pre1307 = load ptr, ptr %i.y, align 8, !tbaa !68
  %.pre1308 = load i32, ptr %i.z, align 4, !tbaa !69
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store ptr null, ptr %i.a, align 8, !tbaa !57
  br label %.loopexit681

bb.ak:                                            ; preds = %._crit_edge1306, %.lr.ph909
  %i.ga = phi i32 [ %.pre1308, %._crit_edge1306 ], [ %i.fv, %.lr.ph909 ] ; 2 uses
  %i.gb = phi ptr [ %.pre1307, %._crit_edge1306 ], [ %i.fw, %.lr.ph909 ] ; 2 uses
  %.14572 = phi i32 [ %i.fy, %._crit_edge1306 ], [ %.13571906, %.lr.ph909 ]
  %i.gc = add i32 %.14572, -1                     ; 2 uses
  %i.gd = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  store ptr %i.ge, ptr %i.a, align 8, !tbaa !57
  %i.gf = load i8, ptr %i.gd, align 1, !tbaa !33
  %i.gg = zext i8 %i.gf to i64
  %i.gh = shl i64 %i.gg, %indvars.iv1278
  %i.gi = add i64 %i.gh, %.7531907                ; 3 uses
  %indvars.iv.next1279 = add nuw nsw i64 %indvars.iv1278, 8 ; 3 uses
  %notmask = shl nsw i32 -1, %i.ga
  %i.gj = xor i32 %notmask, -1
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = and i64 %i.gi, %i.gk
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gl ; 2 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 1
  %.sroa.18.0.copyload = load i8, ptr %.sroa.18.0..sroa_idx, align 1, !tbaa !33 ; 3 uses
  %i.gn = zext i8 %.sroa.18.0.copyload to i64
  %.not641 = icmp samesign ult i64 %indvars.iv.next1279, %i.gn
  br i1 %.not641, label %.lr.ph909, label %._crit_edge910.loopexit

._crit_edge910.loopexit:                          ; preds = %bb.ak
  %i.go = zext i8 %.sroa.18.0.copyload to i32
  %i.gp = trunc nuw nsw i64 %indvars.iv.next1279 to i32
end_hunk_0
