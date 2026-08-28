Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/filtering?download=true
inline.NumInlined: 22
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@filter_add_acpatt:bb.a
  ]

bb.n:                                             ; preds = %bb.m
  %i.bd = trunc i16 %.in483 to i8                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 %i.bd, ptr %i.bf, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 1, ptr %i.bg, align 2, !tbaa !29
  br label %bb.ac

bb.o:                                             ; preds = %bb.m
  %i.bh = trunc i16 %.in483 to i8                 ; 6 uses
  %.mask = and i16 %.in483, 255                   ; 2 uses
  %i.bi = add nsw i16 %.mask, -97
  %or.cond488 = icmp ult i16 %i.bi, 26
  br i1 %or.cond488, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bj = add i8 %i.bh, -32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 %i.bj, ptr %i.bk, align 8, !tbaa !28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  store i8 %i.bh, ptr %i.bl, align 1, !tbaa !27
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 32, ptr %i.bm, align 2, !tbaa !29
  br label %bb.ac

bb.q:                                             ; preds = %bb.o
  %i.bn = add nsw i16 %.mask, -65
  %or.cond490 = icmp ult i16 %i.bn, 26
  br i1 %or.cond490, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 %i.bh, ptr %i.bo, align 8, !tbaa !28
  %i.bp = add i8 %i.bh, 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 32, ptr %i.br, align 2, !tbaa !29
  br label %bb.ac

bb.s:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  store i8 %i.bh, ptr %i.bs, align 1, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 %i.bh, ptr %i.bt, align 8, !tbaa !28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 1, ptr %i.bu, align 2, !tbaa !29
  br label %bb.ac

bb.t:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 0, ptr %i.bv, align 8, !tbaa !28
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  store i8 -1, ptr %i.bw, align 1, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 1, ptr %i.bx, align 2, !tbaa !29
  br label %bb.ac

bb.u:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !19 ; 2 uses
  %.not484 = icmp eq ptr %i.by, null
  br i1 %.not484, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__.filter_add_acpatt) #10
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bz = zext i32 %.2411687 to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !20 ; 5 uses
  %.not485 = icmp eq ptr %i.cb, null
  br i1 %.not485, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 502, ptr noundef nonnull @__PRETTY_FUNCTION__.filter_add_acpatt) #10
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i16, ptr %i.cc, align 8, !tbaa !30
  %i.ce = trunc i16 %i.cd to i8
  store i8 %i.ce, ptr %i.bc, align 1, !tbaa !26
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 14
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !22
  %cond1 = icmp eq i16 %i.cg, 1
  br i1 %cond1, label %bb.z, label %.thread

.thread:                                          ; preds = %bb.y
  %indvars.iv.next12141344 = add nuw nsw i64 %indvars.iv1213, 1
  br label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.ch = add i32 %.2411687, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 0, ptr %i.ci, align 8, !tbaa !28
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.ck = load i16, ptr %i.cj, align 4, !tbaa !31
  %i.cl = trunc i16 %i.ck to i8
  %i.cm = add i8 %i.cl, -1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !27
  %i.co = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 1, ptr %i.co, align 2, !tbaa !29
  store ptr %i.cb, ptr %i.av, align 16, !tbaa !24
  br label %bb.ac

bb.aa:                                            ; preds = %bb.m
  %i.cp = trunc i16 %.in483 to i8                 ; 2 uses
  %i.cq = and i8 %i.cp, -16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 %i.cq, ptr %i.cr, align 8, !tbaa !28
  %i.cs = or i8 %i.cp, 15
  %i.ct = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !27
  %i.cu = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 1, ptr %i.cu, align 2, !tbaa !29
  br label %bb.ac

bb.ab:                                            ; preds = %bb.m
  %i.cv = trunc i16 %.in483 to i8                 ; 2 uses
  %i.cw = and i8 %i.cv, 15
  %i.cx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 %i.cw, ptr %i.cx, align 8, !tbaa !28
  %i.cy = or i8 %i.cv, -16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !27
  %i.da = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 16, ptr %i.da, align 2, !tbaa !29
  br label %bb.ac

.critedge492:                                     ; preds = %bb.m
  %i.db = zext i16 %.in483 to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.4, i32 noundef %i.db) #11
  br label %.loopexit

bb.ac:                                            ; preds = %bb.z, %bb.p, %bb.s, %bb.r, %bb.ab, %bb.aa, %bb.t, %bb.n
  %.4413 = phi i32 [ %.2411687, %bb.aa ], [ %.2411687, %bb.n ], [ %.2411687, %bb.p ], [ %.2411687, %bb.r ], [ %.2411687, %bb.s ], [ %.2411687, %bb.t ], [ %i.ch, %bb.z ], [ %.2411687, %bb.ab ]
  %indvars.iv.next1214 = add nuw nsw i64 %indvars.iv1213, 1 ; 2 uses
  %indvars.iv.next1216 = add nuw nsw i64 %indvars.iv1215, 1 ; 2 uses
  %i.dc = icmp samesign ult i64 %indvars.iv.next1216, %i.au
  br i1 %i.dc, label %bb.j, label %.critedge

.critedge:                                        ; preds = %bb.ac, %.thread
  %indvars.iv.next12141348 = phi i64 [ %indvars.iv.next12141344, %.thread ], [ %indvars.iv.next1214, %bb.ac ]
  %.not4591347 = phi i1 [ false, %.thread ], [ true, %bb.ac ] ; 2 uses
  %i.dd = trunc nuw nsw i64 %indvars.iv.next12141348 to i32
  %not..not459 = xor i1 %.not4591347, true
  %i.de = sext i1 %not..not459 to i32
  %spec.select493 = add i32 %i.dd, %i.de          ; 4 uses
  %i.df = icmp ult i32 %spec.select493, 2
  br i1 %i.df, label %bb.ad, label %.lr.ph954.preheader

.lr.ph954.preheader:                              ; preds = %.critedge
  %i.dg = add i32 %spec.select493, -1             ; 5 uses
  %wide.trip.count1241 = zext i32 %i.dg to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 10
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !29
  br label %.lr.ph954

bb.ad:                                            ; preds = %.critedge
  br i1 %.not4591347, label %.thread1355, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !32
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.5, ptr noundef %i.di) #11
  br label %.loopexit

.thread1355:                                      ; preds = %.loopexit582, %bb.ad
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !32
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.6, ptr noundef %i.dk) #11
  br label %.loopexit

.lr.ph954:                                        ; preds = %.lr.ph954.preheader, %bb.bm
  %i.dl = phi i8 [ %.pre, %.lr.ph954.preheader ], [ %i.dv, %bb.bm ] ; 4 uses
  %indvars.iv1238 = phi i64 [ 0, %.lr.ph954.preheader ], [ %indvars.iv.next1239, %bb.bm ] ; 4 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv1238 ; 4 uses
  %indvars.iv.next1239 = add nuw nsw i64 %indvars.iv1238, 1 ; 3 uses
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next1239 ; 8 uses
  %.not.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i, label %bb.af, label %spec_iter.exit

bb.af:                                            ; preds = %.lr.ph954
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 420, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_iter) #10
  unreachable

spec_iter.exit:                                   ; preds = %.lr.ph954
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 9
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !27  ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !28  ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 11
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !26  ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 10
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !29  ; 8 uses
  %.not.i509 = icmp eq i8 %i.dv, 0
  br i1 %.not.i509, label %bb.ag, label %spec_iter.exit513

bb.ag:                                            ; preds = %spec_iter.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 420, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_iter) #10
  unreachable

spec_iter.exit513:                                ; preds = %spec_iter.exit
  %.not8.i.not = icmp eq i8 %i.dt, 0
  %i.dw = zext i8 %i.dp to i16
  %i.dx = zext i8 %i.dl to i16                    ; 2 uses
  %i.dy = add nuw nsw i16 %i.dw, %i.dx
  %i.dz = zext i8 %i.dr to i16
  %i.ea = sub nsw i16 %i.dy, %i.dz
  %i.eb = sdiv i16 %i.ea, %i.dx
  %.sext.i = sext i16 %i.eb to i32                ; 2 uses
  %i.ec = mul nsw i32 %.sext.i, 254
  %spec.select.i = select i1 %.not8.i.not, i32 %.sext.i, i32 %i.ec
  %i.ed = zext i8 %i.dv to i16                    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 9
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !27  ; 5 uses
  %i.eg = zext i8 %i.ef to i16
  %i.eh = add nuw nsw i16 %i.eg, %i.ed
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !28  ; 6 uses
  %i.ek = zext i8 %i.ej to i16                    ; 3 uses
  %i.el = sub nsw i16 %i.eh, %i.ek
  %i.em = sdiv i16 %i.el, %i.ed
  %.sext.i510 = sext i16 %i.em to i32             ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dn, i64 11
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !26  ; 2 uses
  %.not8.i511.not = icmp eq i8 %i.eo, 0
  %i.ep = mul nsw i32 %.sext.i510, 254
  %spec.select.i512 = select i1 %.not8.i511.not, i32 %.sext.i510, i32 %i.ep
  %i.eq = mul nsw i32 %spec.select.i512, %spec.select.i ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 255
  br i1 %i.er, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %spec_iter.exit513
  %i.es = icmp eq i32 %i.eq, 65536
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1238 ; 2 uses
  br i1 %i.es, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.et, align 4, !tbaa !33
  br label %bb.bm

bb.aj:                                            ; preds = %bb.ah
  store i32 2, ptr %i.et, align 4, !tbaa !33
  br label %bb.bm

bb.ak:                                            ; preds = %spec_iter.exit513
  %i.eu = zext i8 %i.dr to i32                    ; 2 uses
  %i.ev = zext i8 %i.dp to i32                    ; 2 uses
  %.not479821 = icmp ugt i8 %i.dr, %i.dp
  br i1 %.not479821, label %._crit_edge828, label %.lr.ph827

.lr.ph827:                                        ; preds = %bb.ak
  %i.ew = zext i8 %i.ej to i32                    ; 6 uses
  %i.ex = zext i8 %i.ef to i32                    ; 5 uses
  %.not480693 = icmp ugt i8 %i.ej, %i.ef
  %i.ey = zext i8 %i.dv to i32                    ; 8 uses
  %i.ez = zext i8 %i.dl to i32                    ; 2 uses
  br i1 %.not480693, label %._crit_edge828, label %.lr.ph827.split

.lr.ph827.split:                                  ; preds = %.lr.ph827
  %i.fa = or i8 %i.eo, %i.dt
  %.fr1066 = freeze i8 %i.fa
  %brmerge.not = icmp eq i8 %.fr1066, 0
  %.val508 = load ptr, ptr %i.dm, align 16, !tbaa !24 ; 4 uses
  %.not.i514 = icmp eq ptr %.val508, null         ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val508, i64 14 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val508, i64 12 ; 2 uses
  br i1 %brmerge.not, label %.lr.ph827.split.split.us, label %.lr.ph827.split.split

.lr.ph827.split.split.us:                         ; preds = %.lr.ph827.split
  br i1 %.not.i514, label %.lr.ph827.split.split.us.split.us, label %.lr.ph827.split.split.us.split

.lr.ph827.split.split.us.split.us:                ; preds = %.lr.ph827.split.split.us
  %.val507.us.us.us.us = load ptr, ptr %i.dn, align 16, !tbaa !24 ; 6 uses
  %.not.i515.us.us.us.us = icmp eq ptr %.val507.us.us.us.us, null ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.val507.us.us.us.us, i64 14 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val507.us.us.us.us, i64 12 ; 3 uses
  %i.ff = zext i8 %i.ej to i64                    ; 3 uses
  %i.fg = zext i8 %i.dv to i64                    ; 3 uses
  %i.fh = zext i8 %i.ef to i64                    ; 3 uses
  %4 = add nuw nsw i32 %i.ew, %i.ey               ; 2 uses
  %5 = add nuw nsw i32 %i.ex, 1
  %6 = tail call i32 @llvm.umax.i32(i32 %4, i32 %5)
  %7 = add nuw nsw i32 %6, %i.ey
  %8 = xor i32 %4, -1
  %9 = add nsw i32 %7, %8
  %broadcast.splatinsert1503 = insertelement <16 x i8> poison, i8 %i.ej, i64 0
  %broadcast.splat1504 = shufflevector <16 x i8> %broadcast.splatinsert1503, <16 x i8> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert1505 = insertelement <16 x i8> poison, i8 %i.dv, i64 0
  %broadcast.splat1506 = shufflevector <16 x i8> %broadcast.splatinsert1505, <16 x i8> poison, <16 x i32> zeroinitializer
  %10 = mul <16 x i8> %broadcast.splat1506, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %induction = add <16 x i8> %broadcast.splat1504, %10
  %11 = shl i8 %i.dv, 4
  %broadcast.splatinsert1507 = insertelement <16 x i8> poison, i8 %11, i64 0
  %broadcast.splat1508 = shufflevector <16 x i8> %broadcast.splatinsert1507, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %.lr.ph697.us.us

.lr.ph697.us.us:                                  ; preds = %.thread554.us836.us, %.lr.ph827.split.split.us.split.us
  %.0382825.us833.us = phi i32 [ 4, %.lr.ph827.split.split.us.split.us ], [ %.3385.us838.us, %.thread554.us836.us ] ; 7 uses
  %.0386824.us834.us = phi i8 [ 0, %.lr.ph827.split.split.us.split.us ], [ %.1387.lcssa.us837.us, %.thread554.us836.us ] ; 9 uses
  %.0417822.us835.us = phi i32 [ %i.eu, %.lr.ph827.split.split.us.split.us ], [ %i.fj, %.thread554.us836.us ]
  %.0417822.us835.us.fr = freeze i32 %.0417822.us835.us ; 3 uses
  %i.fi = trunc i32 %.0417822.us835.us.fr to i8   ; 8 uses
  %or.cond8.us.us.us.us = icmp slt i8 %i.fi, 32   ; 5 uses
  switch i32 %.0417822.us835.us.fr, label %.lr.ph697.split.us.split.us.split.us.split.us.us.us [
    i32 0, label %spec_ith_char.exit.us.us.us795.us.us
    i32 255, label %.lr.ph697.split.us.split.us.split.us.split.us931.us
  ]

.thread554.us836.us:                              ; preds = %bb.am, %bb.al, %spec_ith_char.exit517.us.us.us.us918.us, %bb.au, %bb.at, %spec_ith_char.exit.us.us.us.us915.us.us, %bb.as, %bb.ar, %spec_ith_char.exit517.us.us.us798.us.us, %bb.ax, %spec_ith_char.exit517.us.us.us.us.us.us, %vector.body, %bb.av, %spec_ith_char.exit.us.us.us.us.us.us.us.us, %bb.aw, %spec_ith_char.exit.us.us.us.us.us.us.us, %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us.a
  %.1387.lcssa.us837.us = phi i8 [ %.1387695.us.us.us.us916.us.us, %spec_ith_char.exit.us.us.us.us915.us.us ], [ %.0386824.us834.us, %vector.body ], [ %.0386824.us834.us, %bb.av ], [ %.1387695.us.us.us.us.us.us, %spec_ith_char.exit517.us.us.us.us.us.us ], [ %.0386824.us834.us, %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us.a ], [ %spec.select1062, %bb.aw ], [ %.2388.us.us.us803.us.us, %bb.as ], [ %.1387695.us.us.us.us.us.us.us, %spec_ith_char.exit.us.us.us.us.us.us.us ], [ %.0386824.us834.us, %spec_ith_char.exit.us.us.us.us.us.us.us.us ], [ %.2388.us.us.us.us.us.us, %bb.ax ], [ %.1387695.us.us.us796.us.us, %spec_ith_char.exit517.us.us.us798.us.us ], [ %.1387695.us.us.us796.us.us, %bb.ar ], [ %.2388.us.us.us.us922.us.us, %bb.au ], [ %.1387695.us.us.us.us916.us.us, %bb.at ], [ %.1387695.us.us.us.us916.us, %bb.al ], [ %.1387695.us.us.us.us916.us, %spec_ith_char.exit517.us.us.us.us918.us ], [ %.2388.us.us.us.us922.us, %bb.am ] ; 2 uses
  %.3385.us838.us = phi i32 [ 1, %spec_ith_char.exit.us.us.us.us915.us.us ], [ 3, %vector.body ], [ 3, %spec_ith_char.exit.us.us.us.us.us.us.us.us ], [ 3, %spec_ith_char.exit517.us.us.us.us.us.us ], [ %.0382825.us833.us, %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us.a ], [ %.0382825.us833.us, %bb.aw ], [ %.0382825.us833.us, %bb.as ], [ 3, %spec_ith_char.exit.us.us.us.us.us.us.us ], [ %.0382825.us833.us, %bb.av ], [ %.0382825.us833.us, %bb.ax ], [ 1, %spec_ith_char.exit517.us.us.us798.us.us ], [ 3, %bb.ar ], [ %.0382825.us833.us, %bb.au ], [ 3, %bb.at ], [ 3, %bb.al ], [ 1, %spec_ith_char.exit517.us.us.us.us918.us ], [ %.0382825.us833.us, %bb.am ] ; 2 uses
  %i.fj = add nuw nsw i32 %.0417822.us835.us.fr, %i.ez ; 2 uses
  %.not479.us839.us = icmp samesign ugt i32 %i.fj, %i.ev
  br i1 %.not479.us839.us, label %._crit_edge828, label %.lr.ph697.us.us

spec_ith_char.exit.us.us.us.us915.us:             ; preds = %.lr.ph697.split.us.split.us.split.us.split.us931.us.split.split, %bb.am
  %indvars.iv1232 = phi i64 [ %i.ff, %.lr.ph697.split.us.split.us.split.us.split.us931.us.split.split ], [ %indvars.iv.next1233, %bb.am ] ; 3 uses
  %.1387695.us.us.us.us916.us = phi i8 [ %.0386824.us834.us, %.lr.ph697.split.us.split.us.split.us.split.us931.us.split.split ], [ %.2388.us.us.us.us922.us, %bb.am ] ; 3 uses
  %i.fk = icmp samesign ult i64 %indvars.iv1232, %i.gh
  br i1 %i.fk, label %spec_ith_char.exit517.us.us.us.us918.us, label %.split716.us

spec_ith_char.exit517.us.us.us.us918.us:          ; preds = %spec_ith_char.exit.us.us.us.us915.us
  %i.fl = load ptr, ptr %.val507.us.us.us.us, align 8, !tbaa !8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv1232
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !8   ; 3 uses
  %i.fo = icmp eq i8 %i.fn, -1
  br i1 %i.fo, label %.thread554.us836.us, label %bb.al

bb.al:                                            ; preds = %spec_ith_char.exit517.us.us.us.us918.us
  %i.fp = icmp eq i8 %i.fn, %i.fi
  br i1 %i.fp, label %.thread554.us836.us, label %bb.am

bb.am:                                            ; preds = %bb.al
  %or.cond11.us.us.us.us920.us = icmp slt i8 %i.fn, 32
  %or.cond494.us.us.us.us921.us = and i1 %or.cond8.us.us.us.us, %or.cond11.us.us.us.us920.us
  %.2388.us.us.us.us922.us = select i1 %or.cond494.us.us.us.us921.us, i8 1, i8 %.1387695.us.us.us.us916.us ; 2 uses
  %indvars.iv.next1233 = add nuw nsw i64 %indvars.iv1232, %i.fg ; 2 uses
  %.not480.us.us.us.us923.us = icmp samesign ugt i64 %indvars.iv.next1233, %i.fh
  br i1 %.not480.us.us.us.us923.us, label %.thread554.us836.us, label %spec_ith_char.exit.us.us.us.us915.us

spec_ith_char.exit.us.us.us795.us.us:             ; preds = %.lr.ph697.us.us, %bb.as
  %indvars.iv1234 = phi i64 [ %indvars.iv.next1235, %bb.as ], [ %i.ff, %.lr.ph697.us.us ] ; 4 uses
  %.1387695.us.us.us796.us.us = phi i8 [ %.2388.us.us.us803.us.us, %bb.as ], [ %.0386824.us834.us, %.lr.ph697.us.us ] ; 3 uses
  br i1 %.not.i515.us.us.us.us, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %spec_ith_char.exit.us.us.us795.us.us
  %i.fq = load i16, ptr %i.fd, align 2, !tbaa !22
  %i.fr = icmp eq i16 %i.fq, 1
  br i1 %i.fr, label %bb.ao, label %.split714.us

bb.ao:                                            ; preds = %bb.an
  %i.fs = load i16, ptr %i.fe, align 4, !tbaa !31
  %i.ft = zext i16 %i.fs to i64
  %i.fu = icmp samesign ult i64 %indvars.iv1234, %i.ft
  br i1 %i.fu, label %bb.ap, label %.split716.us

bb.ap:                                            ; preds = %bb.ao
  %i.fv = load ptr, ptr %.val507.us.us.us.us, align 8, !tbaa !8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %indvars.iv1234
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !8
  br label %spec_ith_char.exit517.us.us.us798.us.us

bb.aq:                                            ; preds = %spec_ith_char.exit.us.us.us795.us.us
  %i.fy = trunc i64 %indvars.iv1234 to i8
  br label %spec_ith_char.exit517.us.us.us798.us.us

spec_ith_char.exit517.us.us.us798.us.us:          ; preds = %bb.aq, %bb.ap
  %.0.i516.us.us.us799.us.us = phi i8 [ %i.fx, %bb.ap ], [ %i.fy, %bb.aq ] ; 3 uses
  %.not1072 = icmp eq i8 %.0.i516.us.us.us799.us.us, 0
  br i1 %.not1072, label %.thread554.us836.us, label %bb.ar

bb.ar:                                            ; preds = %spec_ith_char.exit517.us.us.us798.us.us
  %i.fz = icmp eq i8 %.0.i516.us.us.us799.us.us, %i.fi
  br i1 %i.fz, label %.thread554.us836.us, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %or.cond11.us.us.us801.us.us = icmp slt i8 %.0.i516.us.us.us799.us.us, 32
  %or.cond494.us.us.us802.us.us = and i1 %or.cond8.us.us.us.us, %or.cond11.us.us.us801.us.us
  %.2388.us.us.us803.us.us = select i1 %or.cond494.us.us.us802.us.us, i8 1, i8 %.1387695.us.us.us796.us.us ; 2 uses
  %indvars.iv.next1235 = add nuw nsw i64 %indvars.iv1234, %i.fg ; 2 uses
  %.not480.us.us.us804.us.us = icmp samesign ugt i64 %indvars.iv.next1235, %i.fh
  br i1 %.not480.us.us.us804.us.us, label %.thread554.us836.us, label %spec_ith_char.exit.us.us.us795.us.us

.lr.ph697.split.us.split.us.split.us.split.us931.us: ; preds = %.lr.ph697.us.us
  br i1 %.not.i515.us.us.us.us, label %spec_ith_char.exit.us.us.us.us915.us.us, label %.lr.ph697.split.us.split.us.split.us.split.us931.us.split

spec_ith_char.exit.us.us.us.us915.us.us:          ; preds = %.lr.ph697.split.us.split.us.split.us.split.us931.us, %bb.au
  %.1387695.us.us.us.us916.us.us = phi i8 [ %.2388.us.us.us.us922.us.us, %bb.au ], [ %.0386824.us834.us, %.lr.ph697.split.us.split.us.split.us.split.us931.us ] ; 3 uses
  %.0414694.us.us.us.us917.us.us = phi i32 [ %i.gd, %bb.au ], [ %i.ew, %.lr.ph697.split.us.split.us.split.us.split.us931.us ] ; 3 uses
  %i.ga = trunc nuw i32 %.0414694.us.us.us.us917.us.us to i8 ; 2 uses
  %i.gb = icmp eq i32 %.0414694.us.us.us.us917.us.us, 255
  br i1 %i.gb, label %.thread554.us836.us, label %bb.at

bb.at:                                            ; preds = %spec_ith_char.exit.us.us.us.us915.us.us
  %i.gc = icmp eq i8 %i.fi, %i.ga
  br i1 %i.gc, label %.thread554.us836.us, label %bb.au

bb.au:                                            ; preds = %bb.at
  %or.cond11.us.us.us.us920.us.us = icmp slt i8 %i.ga, 32
  %or.cond494.us.us.us.us921.us.us = select i1 %or.cond8.us.us.us.us, i1 %or.cond11.us.us.us.us920.us.us, i1 false
  %.2388.us.us.us.us922.us.us = select i1 %or.cond494.us.us.us.us921.us.us, i8 1, i8 %.1387695.us.us.us.us916.us.us ; 2 uses
  %i.gd = add nuw nsw i32 %.0414694.us.us.us.us917.us.us, %i.ey ; 2 uses
  %.not480.us.us.us.us923.us.us = icmp samesign ugt i32 %i.gd, %i.ex
  br i1 %.not480.us.us.us.us923.us.us, label %.thread554.us836.us, label %spec_ith_char.exit.us.us.us.us915.us.us

.lr.ph697.split.us.split.us.split.us.split.us931.us.split: ; preds = %.lr.ph697.split.us.split.us.split.us.split.us931.us
  %i.ge = load i16, ptr %i.fd, align 2, !tbaa !22
  %i.gf = icmp eq i16 %i.ge, 1
  br i1 %i.gf, label %.lr.ph697.split.us.split.us.split.us.split.us931.us.split.split, label %.split714.us

.lr.ph697.split.us.split.us.split.us.split.us931.us.split.split: ; preds = %.lr.ph697.split.us.split.us.split.us.split.us931.us.split
  %i.gg = load i16, ptr %i.fe, align 4, !tbaa !31
  %i.gh = zext i16 %i.gg to i64
  br label %spec_ith_char.exit.us.us.us.us915.us

.lr.ph697.split.us.split.us.split.us.split.us.us.us: ; preds = %.lr.ph697.us.us
  br i1 %.not.i515.us.us.us.us, label %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us, label %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split

.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us: ; preds = %.lr.ph697.split.us.split.us.split.us.split.us.us.us
  br i1 %or.cond8.us.us.us.us, label %spec_ith_char.exit.us.us.us.us.us.us.us, label %spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader

spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader: ; preds = %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us
  %12 = udiv i32 %9, %i.ey
  %13 = add i32 %12, 1                            ; 3 uses
  %min.iters.check = icmp ult i32 %13, 16
  br i1 %min.iters.check, label %spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader1528, label %vector.ph

vector.ph:                                        ; preds = %spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader
  %n.vec = and i32 %13, -16                       ; 3 uses
  %14 = mul i32 %n.vec, %i.ey
  %15 = add i32 %14, %i.ew
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.fi, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %.lr.ph697.split.us.split.us.split.us.split.us.us.us.a, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %.lr.ph697.split.us.split.us.split.us.split.us.us.us.a ]
  %vec.ind = phi <16 x i8> [ %induction, %vector.ph ], [ %vec.ind.next, %.lr.ph697.split.us.split.us.split.us.split.us.us.us.a ]
  %vec.ind.fr = freeze <16 x i8> %vec.ind         ; 2 uses
  %16 = icmp eq <16 x i8> %broadcast.splat, %vec.ind.fr
  %17 = bitcast <16 x i1> %16 to i16
  %.not1509 = icmp eq i16 %17, 0
  br i1 %.not1509, label %.lr.ph697.split.us.split.us.split.us.split.us.us.us.a, label %.thread554.us836.us

.lr.ph697.split.us.split.us.split.us.split.us.us.us.a: ; preds = %vector.body
  %vec.ind.next = add <16 x i8> %vec.ind.fr, %broadcast.splat1508
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %18 = icmp eq i32 %index.next, %n.vec
  br i1 %18, label %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us.a, label %vector.body, !llvm.loop !34

.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us.a: ; preds = %.lr.ph697.split.us.split.us.split.us.split.us.us.us.a
  %cmp.n = icmp eq i32 %13, %n.vec
  br i1 %cmp.n, label %.thread554.us836.us, label %spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader1528

spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader1528: ; preds = %spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader, %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us.a
  %.0414694.us.us.us.us.us.us.us.us.ph = phi i32 [ %i.ew, %spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader ], [ %15, %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us.a ]
  br label %spec_ith_char.exit.us.us.us.us.us.us.us.us

spec_ith_char.exit.us.us.us.us.us.us.us.us:       ; preds = %spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader1528, %bb.av
  %.0414694.us.us.us.us.us.us.us.us = phi i32 [ %i.gk, %bb.av ], [ %.0414694.us.us.us.us.us.us.us.us.ph, %spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader1528 ] ; 2 uses
  %i.gi = trunc nuw i32 %.0414694.us.us.us.us.us.us.us.us to i8
  %i.gj = icmp eq i8 %i.fi, %i.gi
  br i1 %i.gj, label %.thread554.us836.us, label %bb.av

bb.av:                                            ; preds = %spec_ith_char.exit.us.us.us.us.us.us.us.us
  %i.gk = add nuw nsw i32 %.0414694.us.us.us.us.us.us.us.us, %i.ey ; 2 uses
  %.not480.us.us.us.us.us.us.us.us = icmp samesign ugt i32 %i.gk, %i.ex
  br i1 %.not480.us.us.us.us.us.us.us.us, label %.thread554.us836.us, label %spec_ith_char.exit.us.us.us.us.us.us.us.us, !llvm.loop !37

spec_ith_char.exit.us.us.us.us.us.us.us:          ; preds = %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us, %bb.aw
  %.1387695.us.us.us.us.us.us.us = phi i8 [ %spec.select1062, %bb.aw ], [ %.0386824.us834.us, %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us ] ; 2 uses
  %.0414694.us.us.us.us.us.us.us = phi i32 [ %i.gn, %bb.aw ], [ %i.ew, %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us ] ; 2 uses
  %i.gl = trunc nuw i32 %.0414694.us.us.us.us.us.us.us to i8 ; 2 uses
  %i.gm = icmp eq i8 %i.fi, %i.gl
  br i1 %i.gm, label %.thread554.us836.us, label %bb.aw

bb.aw:                                            ; preds = %spec_ith_char.exit.us.us.us.us.us.us.us
  %or.cond11.us.us.us.us.us.us.us = icmp slt i8 %i.gl, 32
  %spec.select1062 = select i1 %or.cond11.us.us.us.us.us.us.us, i8 1, i8 %.1387695.us.us.us.us.us.us.us ; 2 uses
  %i.gn = add nuw nsw i32 %.0414694.us.us.us.us.us.us.us, %i.ey ; 2 uses
  %.not480.us.us.us.us.us.us.us = icmp samesign ugt i32 %i.gn, %i.ex
  br i1 %.not480.us.us.us.us.us.us.us, label %.thread554.us836.us, label %spec_ith_char.exit.us.us.us.us.us.us.us

.lr.ph697.split.us.split.us.split.us.split.us.us.us.split: ; preds = %.lr.ph697.split.us.split.us.split.us.split.us.us.us
  %i.go = load i16, ptr %i.fd, align 2, !tbaa !22
  %i.gp = icmp eq i16 %i.go, 1
  br i1 %i.gp, label %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.split, label %.split714.us

.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.split: ; preds = %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split
  %i.gq = load i16, ptr %i.fe, align 4, !tbaa !31
  %i.gr = zext i16 %i.gq to i64
  br label %spec_ith_char.exit.us.us.us.us.us.us

spec_ith_char.exit.us.us.us.us.us.us:             ; preds = %bb.ax, %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.split
  %indvars.iv1230 = phi i64 [ %indvars.iv.next1231, %bb.ax ], [ %i.ff, %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.split ] ; 3 uses
  %.1387695.us.us.us.us.us.us = phi i8 [ %.2388.us.us.us.us.us.us, %bb.ax ], [ %.0386824.us834.us, %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.split ] ; 2 uses
  %i.gs = icmp samesign ult i64 %indvars.iv1230, %i.gr
  br i1 %i.gs, label %spec_ith_char.exit517.us.us.us.us.us.us, label %.split716.us

spec_ith_char.exit517.us.us.us.us.us.us:          ; preds = %spec_ith_char.exit.us.us.us.us.us.us
  %i.gt = load ptr, ptr %.val507.us.us.us.us, align 8, !tbaa !8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv1230
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !8   ; 2 uses
  %i.gw = icmp eq i8 %i.gv, %i.fi
  br i1 %i.gw, label %.thread554.us836.us, label %bb.ax

bb.ax:                                            ; preds = %spec_ith_char.exit517.us.us.us.us.us.us
  %or.cond11.us.us.us.us.us.us = icmp slt i8 %i.gv, 32
  %or.cond494.us.us.us.us.us.us = and i1 %or.cond8.us.us.us.us, %or.cond11.us.us.us.us.us.us
  %.2388.us.us.us.us.us.us = select i1 %or.cond494.us.us.us.us.us.us, i8 1, i8 %.1387695.us.us.us.us.us.us ; 2 uses
  %indvars.iv.next1231 = add nuw nsw i64 %indvars.iv1230, %i.fg ; 2 uses
  %.not480.us.us.us.us.us.us = icmp samesign ugt i64 %indvars.iv.next1231, %i.fh
  br i1 %.not480.us.us.us.us.us.us, label %.thread554.us836.us, label %spec_ith_char.exit.us.us.us.us.us.us

.lr.ph827.split.split.us.split:                   ; preds = %.lr.ph827.split.split.us
  %i.gx = load i16, ptr %i.fb, align 2, !tbaa !22
  %i.gy = icmp eq i16 %i.gx, 1
  br i1 %i.gy, label %.lr.ph827.split.split.us.split.split, label %.split.us

.lr.ph827.split.split.us.split.split:             ; preds = %.lr.ph827.split.split.us.split
  %i.gz = load i16, ptr %i.fc, align 4, !tbaa !31
  %i.ha = zext i8 %i.ej to i64                    ; 3 uses
  %i.hb = zext i8 %i.dv to i64                    ; 3 uses
  %i.hc = zext i8 %i.ef to i64                    ; 3 uses
  %i.hd = zext i8 %i.dr to i64
  %i.he = zext i8 %i.dl to i64
  %i.hf = zext i8 %i.dp to i64
  %i.hg = zext i16 %i.gz to i64
  br label %.lr.ph697.us

.lr.ph697.us:                                     ; preds = %.thread554.us836, %.lr.ph827.split.split.us.split.split
  %indvars.iv1228 = phi i64 [ %indvars.iv.next1229, %.thread554.us836 ], [ %i.hd, %.lr.ph827.split.split.us.split.split ] ; 3 uses
  %.0382825.us833 = phi i32 [ %.3385.us838, %.thread554.us836 ], [ 4, %.lr.ph827.split.split.us.split.split ] ; 4 uses
  %.0386824.us834 = phi i8 [ %.1387.lcssa.us837, %.thread554.us836 ], [ 0, %.lr.ph827.split.split.us.split.split ] ; 4 uses
  %i.hh = icmp samesign ult i64 %indvars.iv1228, %i.hg
  br i1 %i.hh, label %.lr.ph697.split.us.split.split.split.us, label %.split712.us

.thread554.us836:                                 ; preds = %bb.bc, %spec_ith_char.exit517.us.us734.us885, %bb.bd, %spec_ith_char.exit517.us.us757.us, %bb.be, %spec_ith_char.exit.us.us754.us.us, %bb.bj, %spec_ith_char.exit517.us.us734.us.us
  %.1387.lcssa.us837 = phi i8 [ %.1387695.us.us755.us900, %spec_ith_char.exit517.us.us757.us ], [ %.1387695.us.us755.us.us, %spec_ith_char.exit.us.us754.us.us ], [ %.2388.us.us740.us.us, %bb.bj ], [ %.1387695.us.us732.us.us, %spec_ith_char.exit517.us.us734.us.us ], [ %.2388.us.us762.us.us, %bb.be ], [ %.2388.us.us762.us904, %bb.bd ], [ %.2388.us.us740.us889, %bb.bc ], [ %.1387695.us.us732.us883, %spec_ith_char.exit517.us.us734.us885 ] ; 2 uses
  %.3385.us838 = phi i32 [ 1, %spec_ith_char.exit517.us.us757.us ], [ 1, %spec_ith_char.exit.us.us754.us.us ], [ %.0382825.us833, %bb.bj ], [ 3, %spec_ith_char.exit517.us.us734.us.us ], [ %.0382825.us833, %bb.be ], [ %.0382825.us833, %bb.bd ], [ %.0382825.us833, %bb.bc ], [ 1, %spec_ith_char.exit517.us.us734.us885 ] ; 2 uses
  %indvars.iv.next1229 = add nuw nsw i64 %indvars.iv1228, %i.he ; 2 uses
  %.not479.us839 = icmp samesign ugt i64 %indvars.iv.next1229, %i.hf
  br i1 %.not479.us839, label %._crit_edge828, label %.lr.ph697.us

.lr.ph697.split.us.split.split.split.us:          ; preds = %.lr.ph697.us
  %i.hi = load ptr, ptr %.val508, align 8, !tbaa !8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %indvars.iv1228
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !8
  %.fr1067 = freeze i8 %i.hk                      ; 3 uses
  %.val507.us.us875 = load ptr, ptr %i.dn, align 16, !tbaa !24 ; 6 uses
  %.not.i515.us.us876 = icmp eq ptr %.val507.us.us875, null ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.val507.us.us875, i64 14 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.val507.us.us875, i64 12 ; 3 uses
  %or.cond8.us.us877 = icmp slt i8 %.fr1067, 32   ; 4 uses
  switch i8 %.fr1067, label %spec_ith_char.exit.us.us731.us.us [
    i8 0, label %.lr.ph697.split.us.split.split.split.split.split.us.us
    i8 -1, label %spec_ith_char.exit.us.us731.us882
  ]

spec_ith_char.exit.us.us731.us882:                ; preds = %.lr.ph697.split.us.split.split.split.us, %bb.bc
  %indvars.iv1222 = phi i64 [ %indvars.iv.next1223, %bb.bc ], [ %i.ha, %.lr.ph697.split.us.split.split.split.us ] ; 4 uses
  %.1387695.us.us732.us883 = phi i8 [ %.2388.us.us740.us889, %bb.bc ], [ %.0386824.us834, %.lr.ph697.split.us.split.split.split.us ] ; 2 uses
  br i1 %.not.i515.us.us876, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %spec_ith_char.exit.us.us731.us882
  %i.hn = load i16, ptr %i.hl, align 2, !tbaa !22
  %i.ho = icmp eq i16 %i.hn, 1
  br i1 %i.ho, label %bb.az, label %.split714.us

bb.az:                                            ; preds = %bb.ay
  %i.hp = load i16, ptr %i.hm, align 4, !tbaa !31
  %i.hq = zext i16 %i.hp to i64
  %i.hr = icmp samesign ult i64 %indvars.iv1222, %i.hq
  br i1 %i.hr, label %bb.ba, label %.split716.us

bb.ba:                                            ; preds = %bb.az
  %i.hs = load ptr, ptr %.val507.us.us875, align 8, !tbaa !8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %indvars.iv1222
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !8
  br label %spec_ith_char.exit517.us.us734.us885

bb.bb:                                            ; preds = %spec_ith_char.exit.us.us731.us882
  %i.hv = trunc i64 %indvars.iv1222 to i8
  br label %spec_ith_char.exit517.us.us734.us885

spec_ith_char.exit517.us.us734.us885:             ; preds = %bb.bb, %bb.ba
  %.0.i516.us.us735.us886 = phi i8 [ %i.hu, %bb.ba ], [ %i.hv, %bb.bb ] ; 2 uses
  %i.hw = icmp eq i8 %.0.i516.us.us735.us886, -1
  br i1 %i.hw, label %.thread554.us836, label %bb.bc

bb.bc:                                            ; preds = %spec_ith_char.exit517.us.us734.us885
  %or.cond11.us.us738.us887 = icmp slt i8 %.0.i516.us.us735.us886, 32
  %or.cond494.us.us739.us888 = and i1 %or.cond8.us.us877, %or.cond11.us.us738.us887
  %.2388.us.us740.us889 = select i1 %or.cond494.us.us739.us888, i8 1, i8 %.1387695.us.us732.us883 ; 2 uses
  %indvars.iv.next1223 = add nuw nsw i64 %indvars.iv1222, %i.hb ; 2 uses
  %.not480.us.us741.us890 = icmp samesign ugt i64 %indvars.iv.next1223, %i.hc
  br i1 %.not480.us.us741.us890, label %.thread554.us836, label %spec_ith_char.exit.us.us731.us882

.lr.ph697.split.us.split.split.split.split.split.us.us: ; preds = %.lr.ph697.split.us.split.split.split.us
  br i1 %.not.i515.us.us876, label %spec_ith_char.exit.us.us754.us.us, label %.lr.ph697.split.us.split.split.split.split.split.us.split.us912

spec_ith_char.exit.us.us754.us899:                ; preds = %.lr.ph697.split.us.split.split.split.split.split.us.split.split.us, %bb.bd
  %indvars.iv1224 = phi i64 [ %i.ha, %.lr.ph697.split.us.split.split.split.split.split.us.split.split.us ], [ %indvars.iv.next1225, %bb.bd ] ; 3 uses
  %.1387695.us.us755.us900 = phi i8 [ %.0386824.us834, %.lr.ph697.split.us.split.split.split.split.split.us.split.split.us ], [ %.2388.us.us762.us904, %bb.bd ] ; 2 uses
  %i.hx = icmp samesign ult i64 %indvars.iv1224, %i.ig
  br i1 %i.hx, label %spec_ith_char.exit517.us.us757.us, label %.split716.us

spec_ith_char.exit517.us.us757.us:                ; preds = %spec_ith_char.exit.us.us754.us899
  %i.hy = load ptr, ptr %.val507.us.us875, align 8, !tbaa !8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %indvars.iv1224
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !8   ; 2 uses
  %.not1069 = icmp eq i8 %i.ia, 0
  br i1 %.not1069, label %.thread554.us836, label %bb.bd

bb.bd:                                            ; preds = %spec_ith_char.exit517.us.us757.us
  %or.cond11.us.us760.us902 = icmp slt i8 %i.ia, 32
  %or.cond494.us.us761.us903 = and i1 %or.cond8.us.us877, %or.cond11.us.us760.us902
  %.2388.us.us762.us904 = select i1 %or.cond494.us.us761.us903, i8 1, i8 %.1387695.us.us755.us900 ; 2 uses
  %indvars.iv.next1225 = add nuw nsw i64 %indvars.iv1224, %i.hb ; 2 uses
  %.not480.us.us763.us905 = icmp samesign ugt i64 %indvars.iv.next1225, %i.hc
  br i1 %.not480.us.us763.us905, label %.thread554.us836, label %spec_ith_char.exit.us.us754.us899

.lr.ph697.split.us.split.split.split.split.split.us.split.us912: ; preds = %.lr.ph697.split.us.split.split.split.split.split.us.us
  %i.ib = load i16, ptr %i.hl, align 2, !tbaa !22
  %i.ic = icmp eq i16 %i.ib, 1
  br i1 %i.ic, label %.lr.ph697.split.us.split.split.split.split.split.us.split.split.us, label %.split714.us

spec_ith_char.exit.us.us754.us.us:                ; preds = %.lr.ph697.split.us.split.split.split.split.split.us.us, %bb.be
  %.1387695.us.us755.us.us = phi i8 [ %.2388.us.us762.us.us, %bb.be ], [ %.0386824.us834, %.lr.ph697.split.us.split.split.split.split.split.us.us ] ; 2 uses
  %.0414694.us.us756.us.us = phi i32 [ %i.ie, %bb.be ], [ %i.ew, %.lr.ph697.split.us.split.split.split.split.split.us.us ] ; 3 uses
  %.not1070 = icmp eq i32 %.0414694.us.us756.us.us, 0
  br i1 %.not1070, label %.thread554.us836, label %bb.be

bb.be:                                            ; preds = %spec_ith_char.exit.us.us754.us.us
  %i.id = trunc nuw i32 %.0414694.us.us756.us.us to i8
  %or.cond11.us.us760.us.us = icmp slt i8 %i.id, 32
  %or.cond494.us.us761.us.us = select i1 %or.cond8.us.us877, i1 %or.cond11.us.us760.us.us, i1 false
  %.2388.us.us762.us.us = select i1 %or.cond494.us.us761.us.us, i8 1, i8 %.1387695.us.us755.us.us ; 2 uses
  %i.ie = add nuw nsw i32 %.0414694.us.us756.us.us, %i.ey ; 2 uses
  %.not480.us.us763.us.us = icmp samesign ugt i32 %i.ie, %i.ex
  br i1 %.not480.us.us763.us.us, label %.thread554.us836, label %spec_ith_char.exit.us.us754.us.us

.lr.ph697.split.us.split.split.split.split.split.us.split.split.us: ; preds = %.lr.ph697.split.us.split.split.split.split.split.us.split.us912
  %i.if = load i16, ptr %i.hm, align 4, !tbaa !31
  %i.ig = zext i16 %i.if to i64
  br label %spec_ith_char.exit.us.us754.us899

spec_ith_char.exit.us.us731.us.us:                ; preds = %.lr.ph697.split.us.split.split.split.us, %bb.bj
  %indvars.iv1220 = phi i64 [ %indvars.iv.next1221, %bb.bj ], [ %i.ha, %.lr.ph697.split.us.split.split.split.us ] ; 4 uses
  %.1387695.us.us732.us.us = phi i8 [ %.2388.us.us740.us.us, %bb.bj ], [ %.0386824.us834, %.lr.ph697.split.us.split.split.split.us ] ; 2 uses
  br i1 %.not.i515.us.us876, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %spec_ith_char.exit.us.us731.us.us
  %i.ih = load i16, ptr %i.hl, align 2, !tbaa !22
  %i.ii = icmp eq i16 %i.ih, 1
  br i1 %i.ii, label %bb.bg, label %.split714.us

bb.bg:                                            ; preds = %bb.bf
  %i.ij = load i16, ptr %i.hm, align 4, !tbaa !31
  %i.ik = zext i16 %i.ij to i64
  %i.il = icmp samesign ult i64 %indvars.iv1220, %i.ik
  br i1 %i.il, label %bb.bh, label %.split716.us

bb.bh:                                            ; preds = %bb.bg
  %i.im = load ptr, ptr %.val507.us.us875, align 8, !tbaa !8
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %indvars.iv1220
  %i.io = load i8, ptr %i.in, align 1, !tbaa !8
  br label %spec_ith_char.exit517.us.us734.us.us

bb.bi:                                            ; preds = %spec_ith_char.exit.us.us731.us.us
  %i.ip = trunc i64 %indvars.iv1220 to i8
  br label %spec_ith_char.exit517.us.us734.us.us

spec_ith_char.exit517.us.us734.us.us:             ; preds = %bb.bi, %bb.bh
  %.0.i516.us.us735.us.us = phi i8 [ %i.io, %bb.bh ], [ %i.ip, %bb.bi ] ; 2 uses
  %i.iq = icmp eq i8 %.fr1067, %.0.i516.us.us735.us.us
  br i1 %i.iq, label %.thread554.us836, label %bb.bj

bb.bj:                                            ; preds = %spec_ith_char.exit517.us.us734.us.us
  %or.cond11.us.us738.us.us = icmp slt i8 %.0.i516.us.us735.us.us, 32
  %or.cond494.us.us739.us.us = and i1 %or.cond8.us.us877, %or.cond11.us.us738.us.us
  %.2388.us.us740.us.us = select i1 %or.cond494.us.us739.us.us, i8 1, i8 %.1387695.us.us732.us.us ; 2 uses
  %indvars.iv.next1221 = add nuw nsw i64 %indvars.iv1220, %i.hb ; 2 uses
  %.not480.us.us741.us.us = icmp samesign ugt i64 %indvars.iv.next1221, %i.hc
  br i1 %.not480.us.us741.us.us, label %.thread554.us836, label %spec_ith_char.exit.us.us731.us.us

.lr.ph827.split.split:                            ; preds = %.lr.ph827.split
  br i1 %.not.i514, label %.lr.ph827.split.split.split.us, label %.lr.ph827.split.split.split

.lr.ph827.split.split.split.us:                   ; preds = %.lr.ph827.split.split
  %.val507.us = load ptr, ptr %i.dn, align 16, !tbaa !24 ; 3 uses
  %.not.i515.us = icmp eq ptr %.val507.us, null
  %i.ir = getelementptr inbounds nuw i8, ptr %.val507.us, i64 12
  br i1 %.not.i515.us, label %._crit_edge828, label %.lr.ph827.split.split.split.us.split

.lr.ph827.split.split.split.us.split:             ; preds = %.lr.ph827.split.split.split.us
  %i.is = getelementptr inbounds nuw i8, ptr %.val507.us, i64 14
  %i.it = load i16, ptr %i.is, align 2, !tbaa !22
  %i.iu = icmp eq i16 %i.it, 1
  br i1 %i.iu, label %.lr.ph827.split.split.split.us.split.split, label %.split714.us

.lr.ph827.split.split.split.us.split.split:       ; preds = %.lr.ph827.split.split.split.us.split
  %i.iv = load i16, ptr %i.ir, align 4, !tbaa !31
  %i.iw = icmp ugt i16 %i.iv, %i.ek
  br i1 %i.iw, label %._crit_edge828, label %.split716.us

.lr.ph827.split.split.split:                      ; preds = %.lr.ph827.split.split
  %i.ix = load i16, ptr %i.fb, align 2, !tbaa !22
  %i.iy = icmp eq i16 %i.ix, 1
  br i1 %i.iy, label %.lr.ph827.split.split.split.split, label %.split.us

.lr.ph827.split.split.split.split:                ; preds = %.lr.ph827.split.split.split
  %i.iz = load i16, ptr %i.fc, align 4, !tbaa !31
  %i.ja = zext i16 %i.iz to i32
  br label %.lr.ph697

.lr.ph697:                                        ; preds = %.lr.ph827.split.split.split.split, %spec_ith_char.exit517
  %.0417822 = phi i32 [ %i.eu, %.lr.ph827.split.split.split.split ], [ %i.ji, %spec_ith_char.exit517 ] ; 2 uses
  %i.jb = icmp samesign ult i32 %.0417822, %i.ja
  br i1 %i.jb, label %spec_ith_char.exit, label %.split712.us

.split.us:                                        ; preds = %.lr.ph827.split.split.split, %.lr.ph827.split.split.us.split
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

.split712.us:                                     ; preds = %.lr.ph697, %.lr.ph697.us
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

spec_ith_char.exit:                               ; preds = %.lr.ph697
  %.val507 = load ptr, ptr %i.dn, align 16, !tbaa !24 ; 3 uses
  %.not.i515 = icmp eq ptr %.val507, null
  br i1 %.not.i515, label %spec_ith_char.exit517, label %bb.bk

bb.bk:                                            ; preds = %spec_ith_char.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %.val507, i64 14
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !22
  %i.je = icmp eq i16 %i.jd, 1
  br i1 %i.je, label %bb.bl, label %.split714.us

.split714.us:                                     ; preds = %.lr.ph827.split.split.split.us.split, %bb.bk, %.lr.ph697.split.us.split.split.split.split.split.us.split.us912, %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split, %.lr.ph697.split.us.split.us.split.us.split.us931.us.split, %bb.ay, %bb.bf, %bb.an
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.bl:                                            ; preds = %bb.bk
  %i.jf = getelementptr inbounds nuw i8, ptr %.val507, i64 12
  %i.jg = load i16, ptr %i.jf, align 4, !tbaa !31
  %i.jh = icmp ugt i16 %i.jg, %i.ek
  br i1 %i.jh, label %spec_ith_char.exit517, label %.split716.us

.split716.us:                                     ; preds = %.lr.ph827.split.split.split.us.split.split, %bb.bl, %bb.az, %spec_ith_char.exit.us.us754.us899, %bb.bg, %spec_ith_char.exit.us.us.us.us915.us, %bb.ao, %spec_ith_char.exit.us.us.us.us.us.us
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

spec_ith_char.exit517:                            ; preds = %spec_ith_char.exit, %bb.bl
  %i.ji = add nuw nsw i32 %.0417822, %i.ez        ; 2 uses
  %.not479 = icmp samesign ugt i32 %i.ji, %i.ev
  br i1 %.not479, label %._crit_edge828, label %.lr.ph697

._crit_edge828:                                   ; preds = %spec_ith_char.exit517, %.thread554.us836, %.thread554.us836.us, %.lr.ph827.split.split.split.us.split.split, %.lr.ph827.split.split.split.us, %.lr.ph827, %bb.ak
  %.0386.lcssa = phi i8 [ 0, %bb.ak ], [ 0, %.lr.ph827 ], [ 0, %.lr.ph827.split.split.split.us.split.split ], [ %.1387.lcssa.us837, %.thread554.us836 ], [ 0, %.lr.ph827.split.split.split.us ], [ %.1387.lcssa.us837.us, %.thread554.us836.us ], [ 0, %spec_ith_char.exit517 ]
  %.0382.lcssa = phi i32 [ 4, %bb.ak ], [ 4, %.lr.ph827 ], [ 2, %.lr.ph827.split.split.split.us.split.split ], [ %.3385.us838, %.thread554.us836 ], [ 2, %.lr.ph827.split.split.split.us ], [ %.3385.us838.us, %.thread554.us836.us ], [ 2, %spec_ith_char.exit517 ] ; 2 uses
  %i.jj = icmp eq i32 %.0382.lcssa, 4
  %i.jk = icmp ne i8 %.0386.lcssa, 0
  %or.cond14 = select i1 %i.jj, i1 %i.jk, i1 false
  %spec.store.select = select i1 %or.cond14, i32 5, i32 %.0382.lcssa
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1238
  store i32 %spec.store.select, ptr %i.jl, align 4, !tbaa !33
  br label %bb.bm

bb.bm:                                            ; preds = %bb.ai, %bb.aj, %._crit_edge828
  %exitcond1242.not = icmp eq i64 %indvars.iv.next1239, %wide.trip.count1241
  br i1 %exitcond1242.not, label %.lr.ph973, label %.lr.ph954

.preheader578:                                    ; preds = %bb.cn
  %.not1075 = icmp eq i32 %.1550, 0
  br i1 %.not1075, label %._crit_edge993.thread, label %.lr.ph992

.lr.ph992:                                        ; preds = %.preheader578
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 65536 ; 2 uses
  %wide.trip.count1264 = zext i32 %.1550 to i64
  br label %bb.co

.lr.ph973:                                        ; preds = %bb.bm, %bb.cn
  %.5972 = phi i32 [ %i.ly, %bb.cn ], [ 0, %bb.bm ] ; 15 uses
  %.0549971 = phi i32 [ %.1550, %bb.cn ], [ 0, %bb.bm ] ; 11 uses
  %i.jn = and i32 %.5972, -2
  %i.jo = add i32 %i.jn, 8                        ; 2 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.dg, i32 %i.jo)
  %i.jp = add i32 %., -1
  %i.jq = icmp ult i32 %i.jp, %i.dg
  br i1 %i.jq, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph973
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 597, ptr noundef nonnull @__PRETTY_FUNCTION__.filter_add_acpatt) #10
  unreachable

bb.bo:                                            ; preds = %.lr.ph973
  %i.jr = zext i32 %.5972 to i64                  ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !33 ; 5 uses
  switch i32 %i.jt, label %bb.bp [
    i32 0, label %bb.cn
    i32 2, label %bb.bq
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.ju = icmp eq i32 %i.jt, 1
  %i.jv = icmp ne i32 %.0549971, 0
  %or.cond16 = select i1 %i.ju, i1 %i.jv, i1 false
  br i1 %or.cond16, label %bb.cn, label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %.old15.not = icmp eq i32 %.0549971, 0
  br i1 %.old15.not, label %bb.br, label %bb.cn

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.jw = add i32 %.5972, 3                       ; 2 uses
  %i.jx = tail call i32 @llvm.umin.i32(i32 %i.dg, i32 %i.jo) ; 5 uses
  %i.jy = zext i32 %i.jw to i64
  %i.jz = icmp ugt i32 %i.jx, %i.jw
  br i1 %i.jz, label %.lr.ph1504.preheader, label %.critedge18

.lr.ph1504.preheader:                             ; preds = %bb.br
  %umin = zext i32 %i.jx to i64
  br label %.lr.ph1504

bb.bs:                                            ; preds = %.lr.ph1504
  %indvars.iv.next1249 = add i32 %indvars.iv12481501, -1 ; 2 uses
  %i.ka = icmp ugt i64 %i.kb, %i.jy
  br i1 %i.ka, label %.lr.ph1504, label %.critedge18.loopexit

.lr.ph1504:                                       ; preds = %.lr.ph1504.preheader, %bb.bs
  %indvars.iv12431502 = phi i64 [ %i.kb, %bb.bs ], [ %umin, %.lr.ph1504.preheader ] ; 2 uses
  %indvars.iv12481501 = phi i32 [ %indvars.iv.next1249, %bb.bs ], [ %i.jx, %.lr.ph1504.preheader ] ; 2 uses
  %i.kb = add nsw i64 %indvars.iv12431502, -1     ; 4 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !33
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %bb.bs, label %.critedge18.loopexit

.critedge18.loopexit:                             ; preds = %bb.bs, %.lr.ph1504
  %indvars.iv1248.lcssa.ph = phi i32 [ %indvars.iv12481501, %.lr.ph1504 ], [ %indvars.iv.next1249, %bb.bs ]
  %indvars.iv1243.lcssa.ph = phi i64 [ %indvars.iv12431502, %.lr.ph1504 ], [ %i.kb, %bb.bs ]
  %i.kf = trunc nuw i64 %indvars.iv1243.lcssa.ph to i32
  br label %.critedge18

.critedge18:                                      ; preds = %.critedge18.loopexit, %bb.br
  %indvars.iv1248.lcssa = phi i32 [ %i.jx, %bb.br ], [ %indvars.iv1248.lcssa.ph, %.critedge18.loopexit ] ; 2 uses
  %indvars.iv1243.lcssa = phi i32 [ %i.jx, %bb.br ], [ %i.kf, %.critedge18.loopexit ] ; 4 uses
  %i.kg = icmp ult i32 %.5972, %indvars.iv1243.lcssa
  br i1 %i.kg, label %.lr.ph962.preheader, label %._crit_edge963

.lr.ph962.preheader:                              ; preds = %.critedge18
  %i.kh = icmp ult i32 %i.jt, 4
  br i1 %i.kh, label %bb.bt, label %.thread1357

bb.bt:                                            ; preds = %.lr.ph962.preheader
  switch i32 %i.jt, label %.thread1357.fold.split [
    i32 0, label %._crit_edge963
    i32 1, label %.thread1357
    i32 2, label %.thread1357
  ]

.thread1357.fold.split:                           ; preds = %bb.bt
  br label %.thread1357

.thread1357:                                      ; preds = %bb.bt, %bb.bt, %.thread1357.fold.split, %.lr.ph962.preheader
  %.1370.peel = phi i32 [ -255, %.lr.ph962.preheader ], [ %.5972, %.thread1357.fold.split ], [ %.5972, %bb.bt ], [ %.5972, %bb.bt ] ; 2 uses
  %.1368.peel = phi i32 [ %i.jt, %.lr.ph962.preheader ], [ 3, %.thread1357.fold.split ], [ 1, %bb.bt ], [ 1, %bb.bt ]
  %i.ki = tail call i32 @llvm.umin.i32(i32 %.1368.peel, i32 5) ; 2 uses
  %indvars.iv.next1246.peel = add nuw nsw i64 %i.jr, 1 ; 2 uses
  %lftr.wideiv.peel = trunc nuw i64 %indvars.iv.next1246.peel to i32
  %exitcond1250.peel.not = icmp eq i32 %indvars.iv1248.lcssa, %lftr.wideiv.peel
  br i1 %exitcond1250.peel.not, label %._crit_edge963, label %.lr.ph962

.lr.ph962:                                        ; preds = %.thread1357, %bb.bx
  %indvars.iv1245 = phi i64 [ %indvars.iv.next1246, %bb.bx ], [ %indvars.iv.next1246.peel, %.thread1357 ] ; 3 uses
  %.0369961 = phi i32 [ %.1370, %bb.bx ], [ %.1370.peel, %.thread1357 ] ; 4 uses
  %.0379958 = phi i32 [ %i.ko, %bb.bx ], [ %i.ki, %.thread1357 ] ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1245
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !33 ; 4 uses
  %i.kl = icmp ult i32 %i.kk, 4
  br i1 %i.kl, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %.lr.ph962
  %i.km = trunc nuw i64 %indvars.iv1245 to i32    ; 2 uses
  switch i32 %i.kk, label %bb.bw [
    i32 0, label %._crit_edge963
    i32 1, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.0367 = phi i32 [ %i.kk, %bb.bu ], [ 3, %bb.bv ]
  %i.kn = icmp eq i32 %.0369961, -255
  %spec.select496 = select i1 %i.kn, i32 %i.km, i32 %.0369961
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph962, %bb.bw
  %.1370 = phi i32 [ %.0369961, %.lr.ph962 ], [ %spec.select496, %bb.bw ] ; 2 uses
  %.1368 = phi i32 [ %i.kk, %.lr.ph962 ], [ %.0367, %bb.bw ]
  %i.ko = tail call i32 @llvm.umin.i32(i32 %.0379958, i32 %.1368) ; 2 uses
  %indvars.iv.next1246 = add nuw nsw i64 %indvars.iv1245, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next1246 to i32
  %exitcond1250.not = icmp eq i32 %indvars.iv1248.lcssa, %lftr.wideiv
  br i1 %exitcond1250.not, label %._crit_edge963, label %.lr.ph962, !llvm.loop !38

._crit_edge963:                                   ; preds = %bb.bx, %bb.bu, %bb.bt, %.thread1357, %.critedge18
  %.0379.lcssa = phi i32 [ 5, %.critedge18 ], [ 5, %bb.bt ], [ %i.ki, %.thread1357 ], [ %i.ko, %bb.bx ], [ %.0379958, %bb.bu ] ; 5 uses
  %.0369.lcssa = phi i32 [ -255, %.critedge18 ], [ -255, %bb.bt ], [ %.1370.peel, %.thread1357 ], [ %.1370, %bb.bx ], [ %.0369961, %bb.bu ]
  %.3375 = phi i32 [ %indvars.iv1243.lcssa, %.critedge18 ], [ %.5972, %bb.bt ], [ %indvars.iv1243.lcssa, %.thread1357 ], [ %indvars.iv1243.lcssa, %bb.bx ], [ %i.km, %bb.bu ] ; 3 uses
  %i.kp = icmp ult i32 %.3375, 255
  br i1 %i.kp, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %._crit_edge963
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 391, ptr noundef nonnull @__PRETTY_FUNCTION__.add_choice) #10
  unreachable

bb.bz:                                            ; preds = %._crit_edge963
  %.not.i518.not = icmp ugt i32 %.3375, %.5972
  br i1 %.not.i518.not, label %bb.ca, label %add_choice.exit

bb.ca:                                            ; preds = %bb.bz
  %i.kq = icmp ugt i32 %.0379.lcssa, 1
  %i.kr = icmp samesign ugt i32 %.0549971, 3
  %or.cond.i = and i1 %i.kr, %i.kq
  %wide.trip.count.i = zext i32 %.0549971 to i64  ; 3 uses
  br i1 %or.cond.i, label %.preheader.i.preheader, label %.thread.i

.preheader.i.preheader:                           ; preds = %bb.ca
  %xtraiter = and i64 %wide.trip.count.i, 1
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ch, %.preheader.i.preheader
  %indvars.iv.i = phi i64 [ 0, %.preheader.i.preheader ], [ %indvars.iv.next.i.1, %bb.ch ] ; 4 uses
  %.02938.i = phi i32 [ -1, %.preheader.i.preheader ], [ %.1.i.1, %bb.ch ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader ], [ %niter.next.1, %bb.ch ]
  %i.ks = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.i
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !40 ; 2 uses
  %i.ku = icmp ult i32 %i.kt, %.0379.lcssa
  br i1 %i.ku, label %bb.cb, label %.preheader.i.1

bb.cb:                                            ; preds = %.preheader.i
  %i.kv = icmp eq i32 %.02938.i, -1
  br i1 %i.kv, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kw = sext i32 %.02938.i to i64
  %i.kx = getelementptr inbounds [12 x i8], ptr %3, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !40
  %i.kz = icmp ult i32 %i.kt, %i.ky
  br i1 %i.kz, label %bb.cd, label %.preheader.i.1

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.la = trunc nuw i64 %indvars.iv.i to i32
  br label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.cd, %bb.cc, %.preheader.i
  %.1.i = phi i32 [ %i.la, %bb.cd ], [ %.02938.i, %bb.cc ], [ %.02938.i, %.preheader.i ] ; 4 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.lb = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.next.i
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !40 ; 2 uses
  %i.ld = icmp ult i32 %i.lc, %.0379.lcssa
  br i1 %i.ld, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %.preheader.i.1
  %i.le = icmp eq i32 %.1.i, -1
  br i1 %i.le, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lf = sext i32 %.1.i to i64
  %i.lg = getelementptr inbounds [12 x i8], ptr %3, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !40
  %i.li = icmp ult i32 %i.lc, %i.lh
  br i1 %i.li, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.lj = trunc nuw i64 %indvars.iv.next.i to i32
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %.preheader.i.1
  %.1.i.1 = phi i32 [ %i.lj, %bb.cg ], [ %.1.i, %bb.cf ], [ %.1.i, %.preheader.i.1 ] ; 6 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.i

.unr-lcssa:                                       ; preds = %bb.ch
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa
  %lcmp.mod1579 = trunc i32 %.0549971 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1579)
  %i.lk = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv.next.i.1
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !40 ; 2 uses
  %i.lm = icmp ult i32 %i.ll, %.0379.lcssa
  br i1 %i.lm, label %bb.ci, label %.epilog-lcssa

bb.ci:                                            ; preds = %.preheader.i.epil.preheader
  %i.ln = icmp eq i32 %.1.i.1, -1
  br i1 %i.ln, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lo = sext i32 %.1.i.1 to i64
  %i.lp = getelementptr inbounds [12 x i8], ptr %3, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !40
  %i.lr = icmp ult i32 %i.ll, %i.lq
  br i1 %i.lr, label %bb.ck, label %.epilog-lcssa

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ls = trunc nuw i64 %indvars.iv.next.i.1 to i32
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.preheader.i.epil.preheader, %bb.cj, %bb.ck, %.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %.unr-lcssa ], [ %i.ls, %bb.ck ], [ %.1.i.1, %bb.cj ], [ %.1.i.1, %.preheader.i.epil.preheader ] ; 2 uses
  %.not35.i = icmp eq i32 %.1.i.lcssa, -1
  br i1 %.not35.i, label %.thread.i, label %bb.cl

bb.cl:                                            ; preds = %.epilog-lcssa
  %i.lt = sext i32 %.1.i.lcssa to i64
  br label %bb.cm

.thread.i:                                        ; preds = %.epilog-lcssa, %bb.ca
  %i.lu = add nuw nsw i32 %.0549971, 1
  br label %bb.cm

bb.cm:                                            ; preds = %.thread.i, %bb.cl
  %.2551 = phi i32 [ %i.lu, %.thread.i ], [ %.0549971, %bb.cl ]
  %.pn.i = phi i64 [ %wide.trip.count.i, %.thread.i ], [ %i.lt, %bb.cl ]
  %.030.i = getelementptr inbounds [12 x i8], ptr %3, i64 %.pn.i ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.030.i, i64 4
  store i32 %.5972, ptr %i.lv, align 4, !tbaa !42
  %reass.sub = sub nsw i32 %.3375, %.5972
  %i.lw = add nsw i32 %reass.sub, 1
  %i.lx = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !43
  store i32 %.0379.lcssa, ptr %.030.i, align 4, !tbaa !40
  br label %add_choice.exit

add_choice.exit:                                  ; preds = %bb.bz, %bb.cm
  %.3552 = phi i32 [ %.0549971, %bb.bz ], [ %.2551, %bb.cm ]
  %spec.select497 = tail call i32 @llvm.smax.i32(i32 %.0369.lcssa, i32 %.5972)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %add_choice.exit
  %.1550 = phi i32 [ %.0549971, %bb.bp ], [ %.3552, %add_choice.exit ], [ %.0549971, %bb.bo ], [ %.0549971, %bb.bq ] ; 4 uses
  %.7 = phi i32 [ %.5972, %bb.bp ], [ %spec.select497, %add_choice.exit ], [ %.5972, %bb.bo ], [ %.5972, %bb.bq ]
  %i.ly = add i32 %.7, 1                          ; 2 uses
  %i.lz = icmp ult i32 %i.ly, %i.dg
  %i.ma = icmp ult i32 %.1550, 8
  %i.mb = select i1 %i.lz, i1 %i.ma, i1 false
  br i1 %i.mb, label %.lr.ph973, label %.preheader578

bb.co:                                            ; preds = %.lr.ph992, %._crit_edge984
  %indvars.iv1261 = phi i64 [ 0, %.lr.ph992 ], [ %indvars.iv.next1262, %._crit_edge984 ] ; 2 uses
  %.0400991 = phi i32 [ 0, %.lr.ph992 ], [ %.1401.lcssa, %._crit_edge984 ] ; 2 uses
  %.0403990 = phi i32 [ 0, %.lr.ph992 ], [ %.1404.lcssa, %._crit_edge984 ] ; 2 uses
  %.0406989 = phi i32 [ -2147483647, %.lr.ph992 ], [ %.1407.lcssa, %._crit_edge984 ] ; 2 uses
  %i.mc = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv1261 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  %i.me = load i32, ptr %i.md, align 4, !tbaa !42 ; 6 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !43 ; 2 uses
  %i.mh = add i32 %i.me, -1
  %i.mi = add i32 %i.mh, %i.mg
  %i.mj = icmp ult i32 %i.me, %i.mi
  br i1 %i.mj, label %.lr.ph983.preheader, label %._crit_edge984

.lr.ph983.preheader:                              ; preds = %bb.co
  %i.mk = zext i32 %i.me to i64                   ; 5 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.me, i32 %spec.select493)
  %wide.trip.count1257 = zext i32 %umax to i64
  %i.ml = add i32 %i.mg, -1
  %i.mm = add i32 %i.ml, %i.me
  %wide.trip.count1259 = zext i32 %i.mm to i64
  br label %.lr.ph983

.lr.ph983:                                        ; preds = %.lr.ph983.preheader, %bb.dm
  %indvars.iv1254 = phi i64 [ %i.mk, %.lr.ph983.preheader ], [ %indvars.iv.next1255, %bb.dm ] ; 9 uses
  %.0366978 = phi i32 [ 0, %.lr.ph983.preheader ], [ %i.qy, %bb.dm ]
  %.1401977 = phi i32 [ %.0400991, %.lr.ph983.preheader ], [ %.2402, %bb.dm ]
  %.1404976 = phi i32 [ %.0403990, %.lr.ph983.preheader ], [ %.2405, %bb.dm ]
  %.1407975 = phi i32 [ %.0406989, %.lr.ph983.preheader ], [ %.2408, %bb.dm ] ; 2 uses
  %indvars1256 = trunc i64 %indvars.iv1254 to i32
  %i.mn = sub nuw nsw i64 %indvars.iv1254, %i.mk  ; 5 uses
  %exitcond1258.not = icmp eq i64 %indvars.iv1254, %wide.trip.count1257
  br i1 %exitcond1258.not, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.lr.ph983
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 643, ptr noundef nonnull @__PRETTY_FUNCTION__.filter_add_acpatt) #10
  unreachable

bb.cq:                                            ; preds = %.lr.ph983
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1254
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !33 ; 2 uses
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv1254 ; 5 uses
  %indvars.iv.next1255 = add nuw nsw i64 %indvars.iv1254, 1 ; 3 uses
  %i.mr = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next1255 ; 5 uses
  switch i32 %i.mp, label %.thread.i519 [
    i32 0, label %bb.cr
    i32 1, label %bb.cu
    i32 2, label %.thread92.i
    i32 5, label %bb.ct
    i32 4, label %bb.cs
  ]

bb.cr:                                            ; preds = %bb.cq
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 331, ptr noundef nonnull @__PRETTY_FUNCTION__.get_score) #10
  unreachable

.thread92.i:                                      ; preds = %bb.cq
  %.not.i524 = icmp eq i64 %indvars.iv1254, %i.mk
  %.83.i = select i1 %.not.i524, i32 -7471104, i32 -4096 ; 2 uses
  br label %get_score.exit

bb.cs:                                            ; preds = %bb.cq
  br label %.thread.i519

bb.ct:                                            ; preds = %bb.cq
  br label %.thread.i519

bb.cu:                                            ; preds = %bb.cq
  %.not72.i = icmp eq i64 %indvars.iv1254, %i.mk
  br i1 %.not72.i, label %get_score.exit.thread, label %.thread.i519

.thread.i519:                                     ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cq
  %.07191.i = phi i32 [ 0, %bb.cu ], [ 512, %bb.cs ], [ 513, %bb.ct ], [ 0, %bb.cq ] ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.mt = load i8, ptr %i.ms, align 8, !tbaa !28  ; 2 uses
  %i.mu = zext i8 %i.mt to i32                    ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mq, i64 9
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !27  ; 2 uses
  %i.mx = zext i8 %i.mw to i32                    ; 2 uses
  %.not73158.i = icmp ugt i8 %i.mt, %i.mw
  br i1 %.not73158.i, label %._crit_edge163.i, label %.lr.ph162.i

.lr.ph162.i:                                      ; preds = %.thread.i519
  %i.my = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mz = load i8, ptr %i.my, align 8, !tbaa !28  ; 2 uses
  %i.na = zext i8 %i.mz to i32
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mr, i64 9
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !27  ; 2 uses
  %i.nd = zext i8 %i.nc to i32
  %.not75150.i = icmp ugt i8 %i.mz, %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mq, i64 11
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mr, i64 11
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mr, i64 10
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mq, i64 10 ; 2 uses
  br i1 %.not75150.i, label %.lr.ph162.split.us.i, label %.lr.ph162.split.i

.lr.ph162.split.us.i:                             ; preds = %.lr.ph162.i
  %i.ni = load i8, ptr %i.nh, align 2, !tbaa !29
  %i.nj = zext i8 %i.ni to i32
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.lr.ph162.split.us.i
  %.070159.us.i = phi i32 [ %i.mu, %.lr.ph162.split.us.i ], [ %i.nk, %bb.cv ]
  %i.nk = add nuw nsw i32 %.070159.us.i, %i.nj    ; 2 uses
  %.not73.us.i = icmp samesign ugt i32 %i.nk, %i.mx
  br i1 %.not73.us.i, label %._crit_edge163.i, label %bb.cv

.lr.ph162.split.i:                                ; preds = %.lr.ph162.i
  %.val86.i = load ptr, ptr %i.mq, align 16, !tbaa !24 ; 4 uses
  %.not.i.i = icmp eq ptr %.val86.i, null
  %i.nl = getelementptr inbounds nuw i8, ptr %.val86.i, i64 14
  %i.nm = getelementptr inbounds nuw i8, ptr %.val86.i, i64 12
  %i.nn = trunc nuw i64 %i.mn to i32              ; 2 uses
  %i.no = trunc nuw i64 %i.mn to i32              ; 2 uses
  br label %.lr.ph155.i

.lr.ph155.i:                                      ; preds = %._crit_edge156.i, %.lr.ph162.split.i
  %.062161.i = phi i32 [ 0, %.lr.ph162.split.i ], [ %.2.lcssa.i, %._crit_edge156.i ]
  %.064160.i = phi i32 [ 0, %.lr.ph162.split.i ], [ %.266.lcssa.i, %._crit_edge156.i ]
  %.070159.i = phi i32 [ %i.mu, %.lr.ph162.split.i ], [ %i.qn, %._crit_edge156.i ] ; 4 uses
  %i.np = zext nneg i32 %.070159.i to i64
  br label %bb.cw

bb.cw:                                            ; preds = %._crit_edge138.i, %.lr.ph155.i
  %.163153.i = phi i32 [ %.062161.i, %.lr.ph155.i ], [ %.2.lcssa.i, %._crit_edge138.i ] ; 3 uses
  %.165152.i = phi i32 [ %.064160.i, %.lr.ph155.i ], [ %.266.lcssa.i, %._crit_edge138.i ] ; 3 uses
  %.069151.i = phi i32 [ %i.na, %.lr.ph155.i ], [ %i.qk, %._crit_edge138.i ] ; 4 uses
  br i1 %.not.i.i, label %spec_ith_char.exit.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nq = load i16, ptr %i.nl, align 2, !tbaa !22
  %i.nr = icmp eq i16 %i.nq, 1
  br i1 %i.nr, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.cz:                                            ; preds = %bb.cx
  %i.ns = load i16, ptr %i.nm, align 4, !tbaa !31
  %i.nt = zext i16 %i.ns to i32
  %i.nu = icmp samesign ult i32 %.070159.i, %i.nt
  br i1 %i.nu, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.db:                                            ; preds = %bb.cz
  %i.nv = load ptr, ptr %.val86.i, align 8, !tbaa !8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.np
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !8
  %i.ny = zext i8 %i.nx to i32
  br label %spec_ith_char.exit.i

spec_ith_char.exit.i:                             ; preds = %bb.db, %bb.cw
  %.0.i.i = phi i32 [ %i.ny, %bb.db ], [ %.070159.i, %bb.cw ] ; 4 uses
  %.val.i = load ptr, ptr %i.mr, align 16, !tbaa !24 ; 4 uses
  %.not.i87.i = icmp eq ptr %.val.i, null
  br i1 %.not.i87.i, label %spec_ith_char.exit89.i, label %bb.dc

bb.dc:                                            ; preds = %spec_ith_char.exit.i
  %i.nz = getelementptr inbounds nuw i8, ptr %.val.i, i64 14
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !22
  %i.ob = icmp eq i16 %i.oa, 1
  br i1 %i.ob, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.de:                                            ; preds = %bb.dc
  %i.oc = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  %i.od = load i16, ptr %i.oc, align 4, !tbaa !31
  %i.oe = zext i16 %i.od to i32
  %i.of = icmp samesign ult i32 %.069151.i, %i.oe
  br i1 %i.of, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.dg:                                            ; preds = %bb.de
  %i.og = load ptr, ptr %.val.i, align 8, !tbaa !8
  %i.oh = zext nneg i32 %.069151.i to i64
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !8
  %i.ok = zext i8 %i.oj to i32
  br label %spec_ith_char.exit89.i

spec_ith_char.exit89.i:                           ; preds = %bb.dg, %spec_ith_char.exit.i
  %.0.i88.i = phi i32 [ %i.ok, %bb.dg ], [ %.069151.i, %spec_ith_char.exit.i ] ; 4 uses
  %i.ol = load i8, ptr %i.ne, align 1, !tbaa !26  ; 2 uses
  %.not76.i = icmp eq i8 %i.ol, 0                 ; 2 uses
  %i.om = select i1 %.not76.i, i32 %.0.i.i, i32 255 ; 3 uses
  %i.on = load i8, ptr %i.nf, align 1, !tbaa !26
  %.fr.i = freeze i8 %i.on
  %.not77.i = icmp eq i8 %.fr.i, 0                ; 2 uses
  %i.oo = select i1 %.not77.i, i32 %.0.i88.i, i32 255 ; 4 uses
  %i.op = select i1 %.not76.i, i32 %.0.i.i, i32 0 ; 3 uses
  %.not78131.i = icmp ugt i32 %i.op, %i.om
  br i1 %.not78131.i, label %._crit_edge138.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %spec_ith_char.exit89.i
  %.not80.i = icmp ne i8 %i.ol, 0                 ; 2 uses
  br i1 %.not77.i, label %.preheader.preheader.i, label %.preheader.us.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.oq = add nuw nsw i32 %.0.i88.i, 1            ; 2 uses
end_hunk_0
begin_hunk_1_@filter_add_acpatt:bb.a
  %i.vy = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.vz = getelementptr inbounds nuw i8, ptr %i.rp, i64 9 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.rm, i64 11 ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.rp, i64 11 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 65536 ; 2 uses
  %i.wd = shl nuw i32 1, %i.vw                    ; 3 uses
  %i.we = trunc i32 %i.wd to i8
  %i.wf = xor i8 %i.we, -1                        ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.rp, i64 10
  %i.wh = getelementptr inbounds nuw i8, ptr %i.rm, i64 10
  %.pre1275 = load i8, ptr %i.vz, align 1, !tbaa !27 ; 2 uses
  %i.wi = load i8, ptr %i.vy, align 8, !tbaa !28  ; 2 uses
  %i.wj = zext i8 %i.wi to i32
  br label %bb.eh

bb.eh:                                            ; preds = %.lr.ph1061, %._crit_edge1057
  %i.wk = phi i8 [ %i.vv, %.lr.ph1061 ], [ %i.za, %._crit_edge1057 ]
  %i.wl = phi i8 [ %.pre1275, %.lr.ph1061 ], [ %i.zb, %._crit_edge1057 ] ; 2 uses
  %i.wm = phi i8 [ %.pre1275, %.lr.ph1061 ], [ %i.zc, %._crit_edge1057 ] ; 2 uses
  %.24191059 = phi i32 [ %i.vx, %.lr.ph1061 ], [ %i.zf, %._crit_edge1057 ] ; 4 uses
  %.not4621053 = icmp ugt i8 %i.wi, %i.wm
  br i1 %.not4621053, label %._crit_edge1057, label %.lr.ph1056

.lr.ph1056:                                       ; preds = %bb.eh
  %i.wn = zext nneg i32 %.24191059 to i64
  %.1399.val = load ptr, ptr %i.rm, align 8, !tbaa !24 ; 4 uses
  %.not.i531 = icmp eq ptr %.1399.val, null
  %i.wo = getelementptr inbounds nuw i8, ptr %.1399.val, i64 14
  %i.wp = getelementptr inbounds nuw i8, ptr %.1399.val, i64 12
  br label %bb.ei

bb.ei:                                            ; preds = %.lr.ph1056, %._crit_edge1052
  %i.wq = phi i8 [ %i.wl, %.lr.ph1056 ], [ %i.yv, %._crit_edge1052 ]
  %.24161054 = phi i32 [ %i.wj, %.lr.ph1056 ], [ %i.yy, %._crit_edge1052 ] ; 4 uses
  br i1 %.not.i531, label %spec_ith_char.exit533, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.wr = load i16, ptr %i.wo, align 2, !tbaa !22
  %i.ws = icmp eq i16 %i.wr, 1
  br i1 %i.ws, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.el:                                            ; preds = %bb.ej
  %i.wt = load i16, ptr %i.wp, align 4, !tbaa !31
  %i.wu = zext i16 %i.wt to i32
  %i.wv = icmp samesign ult i32 %.24191059, %i.wu
  br i1 %i.wv, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.en:                                            ; preds = %bb.el
  %i.ww = load ptr, ptr %.1399.val, align 8, !tbaa !8
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 %i.wn
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !8
  %i.wz = zext i8 %i.wy to i32
  br label %spec_ith_char.exit533

spec_ith_char.exit533:                            ; preds = %bb.ei, %bb.en
  %.0.i532 = phi i32 [ %i.wz, %bb.en ], [ %.24191059, %bb.ei ] ; 3 uses
  %.1397.val = load ptr, ptr %i.rp, align 8, !tbaa !24 ; 4 uses
  %.not.i534 = icmp eq ptr %.1397.val, null
  br i1 %.not.i534, label %spec_ith_char.exit536, label %bb.eo

bb.eo:                                            ; preds = %spec_ith_char.exit533
  %i.xa = getelementptr inbounds nuw i8, ptr %.1397.val, i64 14
  %i.xb = load i16, ptr %i.xa, align 2, !tbaa !22
  %i.xc = icmp eq i16 %i.xb, 1
  br i1 %i.xc, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.eq:                                            ; preds = %bb.eo
  %i.xd = getelementptr inbounds nuw i8, ptr %.1397.val, i64 12
  %i.xe = load i16, ptr %i.xd, align 4, !tbaa !31
  %i.xf = zext i16 %i.xe to i32
  %i.xg = icmp samesign ult i32 %.24161054, %i.xf
  br i1 %i.xg, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_ith_char) #10
  unreachable

bb.es:                                            ; preds = %bb.eq
  %i.xh = load ptr, ptr %.1397.val, align 8, !tbaa !8
  %i.xi = zext nneg i32 %.24161054 to i64
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.xi
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !8
  %i.xl = zext i8 %i.xk to i32
  br label %spec_ith_char.exit536

spec_ith_char.exit536:                            ; preds = %spec_ith_char.exit533, %bb.es
  %.0.i535 = phi i32 [ %i.xl, %bb.es ], [ %.24161054, %spec_ith_char.exit533 ] ; 4 uses
  %i.xm = load i8, ptr %i.wa, align 1, !tbaa !26
  %.not463 = icmp eq i8 %i.xm, 0                  ; 2 uses
  %i.xn = select i1 %.not463, i32 %.0.i532, i32 255 ; 2 uses
  %i.xo = load i8, ptr %i.wb, align 1, !tbaa !26
  %.not464 = icmp eq i8 %i.xo, 0                  ; 2 uses
  %i.xp = select i1 %.not464, i32 %.0.i535, i32 255 ; 4 uses
  %i.xq = select i1 %.not463, i32 %.0.i532, i32 0 ; 2 uses
  %.not4651048 = icmp ugt i32 %i.xq, %i.xn
  br i1 %.not4651048, label %._crit_edge1052, label %.preheader.preheader

.preheader.preheader:                             ; preds = %spec_ith_char.exit536
  %i.xr = select i1 %.not464, i32 %.0.i535, i32 0
  %i.xs = add nuw nsw i32 %i.xp, 1                ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge1040
  %.01051 = phi i32 [ %.1.lcssa, %._crit_edge1040 ], [ %i.xr, %.preheader.preheader ] ; 4 uses
  %.03611049 = phi i32 [ %i.yu, %._crit_edge1040 ], [ %i.xq, %.preheader.preheader ] ; 5 uses
  %.not4661037 = icmp ugt i32 %.01051, %i.xp
  br i1 %.not4661037, label %._crit_edge1040, label %.lr.ph1039

.lr.ph1039:                                       ; preds = %.preheader
  %i.xt = icmp eq i32 %.03611049, %.0.i532
  %.fr = freeze i1 %i.xt
  br i1 %.fr, label %.lr.ph1039.split, label %.lr.ph1039.split.us.preheader

.lr.ph1039.split.us.preheader:                    ; preds = %.lr.ph1039
  %i.xu = load i8, ptr %i.wb, align 1, !tbaa !26
  %.not468.us = icmp ne i8 %i.xu, 0
  br label %.lr.ph1039.split.us

.lr.ph1039.split.us:                              ; preds = %.lr.ph1039.split.us.preheader, %filter_set_end.exit.us
  %.11038.us = phi i32 [ %i.yf, %filter_set_end.exit.us ], [ %.01051, %.lr.ph1039.split.us.preheader ] ; 4 uses
  %i.xv = icmp eq i32 %.11038.us, %.0.i535
  %or.cond505.us = select i1 %.not468.us, i1 %i.xv, i1 false
  br i1 %or.cond505.us, label %filter_set_end.exit.us, label %bb.et

bb.et:                                            ; preds = %.lr.ph1039.split.us
  %i.xw = shl nuw nsw i32 %.11038.us, 8
  %i.xx = or i32 %i.xw, %.03611049
  %i.xy = and i32 %i.xx, 65535
  %i.xz = zext nneg i32 %i.xy to i64
  %i.ya = getelementptr inbounds nuw i8, ptr %i.wc, i64 %i.xz ; 2 uses
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !8   ; 2 uses
  %i.yc = zext i8 %i.yb to i32
  %i.yd = and i32 %i.wd, %i.yc
  %.not.not.i537.us = icmp eq i32 %i.yd, 0
  br i1 %.not.not.i537.us, label %filter_set_end.exit.us, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ye = and i8 %i.yb, %i.wf
  store i8 %i.ye, ptr %i.ya, align 1, !tbaa !8
  br label %filter_set_end.exit.us

filter_set_end.exit.us:                           ; preds = %bb.eu, %bb.et, %.lr.ph1039.split.us
  %i.yf = add i32 %.11038.us, 1
  %exitcond1273.not = icmp eq i32 %.11038.us, %i.xp
  br i1 %exitcond1273.not, label %._crit_edge1040, label %.lr.ph1039.split.us

.lr.ph1039.split:                                 ; preds = %.lr.ph1039
  %i.yg = load i8, ptr %i.wa, align 1, !tbaa !26
  %.not1078 = icmp eq i8 %i.yg, 0
  br i1 %.not1078, label %.lr.ph1039.split.split, label %._crit_edge1040

.lr.ph1039.split.splitthread-pre-split:           ; preds = %filter_set_end.exit
  %i.yh = add i32 %.11038, 1
  %.pr = load i8, ptr %i.wa, align 1, !tbaa !26
  br label %.lr.ph1039.split.split

.lr.ph1039.split.split:                           ; preds = %.lr.ph1039.split, %.lr.ph1039.split.splitthread-pre-split
  %i.yi = phi i8 [ %.pr, %.lr.ph1039.split.splitthread-pre-split ], [ 0, %.lr.ph1039.split ]
  %.11038 = phi i32 [ %i.yh, %.lr.ph1039.split.splitthread-pre-split ], [ %.01051, %.lr.ph1039.split ] ; 4 uses
  %i.yj = shl nuw nsw i32 %.11038, 8
  %i.yk = or i32 %i.yj, %.03611049
  %.not467.not = icmp eq i8 %i.yi, 0
  br i1 %.not467.not, label %bb.ev, label %filter_set_end.exit

bb.ev:                                            ; preds = %.lr.ph1039.split.split
  %i.yl = load i8, ptr %i.wb, align 1, !tbaa !26
  %.not468 = icmp ne i8 %i.yl, 0
  %i.ym = icmp eq i32 %.11038, %.0.i535
  %or.cond505 = select i1 %.not468, i1 %i.ym, i1 false
  br i1 %or.cond505, label %filter_set_end.exit, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.yn = and i32 %i.yk, 65535
  %i.yo = zext nneg i32 %i.yn to i64
  %i.yp = getelementptr inbounds nuw i8, ptr %i.wc, i64 %i.yo ; 2 uses
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !8   ; 2 uses
  %i.yr = zext i8 %i.yq to i32
  %i.ys = and i32 %i.wd, %i.yr
  %.not.not.i537 = icmp eq i32 %i.ys, 0
  br i1 %.not.not.i537, label %filter_set_end.exit, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.yt = and i8 %i.yq, %i.wf
  store i8 %i.yt, ptr %i.yp, align 1, !tbaa !8
  br label %filter_set_end.exit

filter_set_end.exit:                              ; preds = %bb.ex, %bb.ew, %bb.ev, %.lr.ph1039.split.split
  %exitcond1274.not = icmp eq i32 %.11038, %i.xp
  br i1 %exitcond1274.not, label %._crit_edge1040, label %.lr.ph1039.split.splitthread-pre-split, !llvm.loop !44

._crit_edge1040:                                  ; preds = %filter_set_end.exit.us, %filter_set_end.exit, %.lr.ph1039.split, %.preheader
  %.1.lcssa = phi i32 [ %.01051, %.preheader ], [ %i.xs, %filter_set_end.exit ], [ %i.xs, %.lr.ph1039.split ], [ %i.xs, %filter_set_end.exit.us ]
  %i.yu = add nuw nsw i32 %.03611049, 1
  %.not465.not = icmp ult i32 %.03611049, %i.xn
  br i1 %.not465.not, label %.preheader, label %._crit_edge1052.loopexit

._crit_edge1052.loopexit:                         ; preds = %._crit_edge1040
  %.pre1276 = load i8, ptr %i.vz, align 1, !tbaa !27
  br label %._crit_edge1052

._crit_edge1052:                                  ; preds = %._crit_edge1052.loopexit, %spec_ith_char.exit536
  %i.yv = phi i8 [ %.pre1276, %._crit_edge1052.loopexit ], [ %i.wq, %spec_ith_char.exit536 ] ; 4 uses
  %i.yw = load i8, ptr %i.wg, align 2, !tbaa !29
  %i.yx = zext i8 %i.yw to i32
  %i.yy = add nuw nsw i32 %.24161054, %i.yx       ; 2 uses
  %i.yz = zext i8 %i.yv to i32
  %.not462 = icmp samesign ugt i32 %i.yy, %i.yz
  br i1 %.not462, label %._crit_edge1057.loopexit, label %bb.ei

._crit_edge1057.loopexit:                         ; preds = %._crit_edge1052
  %.pre1277 = load i8, ptr %i.vu, align 1, !tbaa !27
  br label %._crit_edge1057

._crit_edge1057:                                  ; preds = %._crit_edge1057.loopexit, %bb.eh
  %i.za = phi i8 [ %.pre1277, %._crit_edge1057.loopexit ], [ %i.wk, %bb.eh ] ; 2 uses
  %i.zb = phi i8 [ %i.yv, %._crit_edge1057.loopexit ], [ %i.wl, %bb.eh ]
  %i.zc = phi i8 [ %i.yv, %._crit_edge1057.loopexit ], [ %i.wm, %bb.eh ]
  %i.zd = load i8, ptr %i.wh, align 2, !tbaa !29
  %i.ze = zext i8 %i.zd to i32
  %i.zf = add nuw nsw i32 %.24191059, %i.ze       ; 2 uses
  %i.zg = zext i8 %i.za to i32
  %.not461 = icmp samesign ugt i32 %i.zf, %i.zg
  br i1 %.not461, label %.loopexit, label %bb.eh

.loopexit:                                        ; preds = %._crit_edge1057, %bb.eg, %bb.ae, %.thread1355, %.critedge492, %._crit_edge993.thread, %._crit_edge.thread
  %.2431 = phi i32 [ %i.w, %._crit_edge.thread ], [ -1, %.critedge492 ], [ -1, %bb.ae ], [ -1, %._crit_edge993.thread ], [ %.1401.lcssa, %bb.eg ], [ -1, %.thread1355 ], [ %.1401.lcssa, %._crit_edge1057 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %.2431
}

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #5

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -1, 1) i32 @filter_search_ext(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65536
  %i.b = icmp ult i64 %2, 2
  br i1 %i.b, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add i64 %2, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.01824 = phi i8 [ %i.j, %.critedge ], [ -1, %.lr.ph.preheader ]
  %.01923 = phi i64 [ %i.n, %.critedge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.01923
  %i.e = load i16, ptr %i.d, align 1, !tbaa !8
  %i.f = shl i8 %.01824, 1
  %i.g = zext i16 %i.e to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = or i8 %i.i, %i.f                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = or i8 %i.l, %i.j
  %.not = icmp eq i8 %i.m, -1
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store i64 %.01923, ptr %3, align 8, !tbaa !46
  br label %.loopexit

.critedge:                                        ; preds = %.lr.ph
  %i.n = add nuw i64 %.01923, 1
  %exitcond.not = icmp eq i64 %.01923, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.critedge, %bb.b, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ 0, %bb.b ], [ -1, %.critedge ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i64 -1, -9) i64 @filter_search(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65536
  %i.b = icmp ult i64 %2, 2
  br i1 %i.b, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add i64 %2, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.01825 = phi i8 [ %i.j, %bb.b ], [ -1, %.lr.ph.preheader ]
  %.01924 = phi i64 [ %i.n, %bb.b ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.01924
  %i.e = load i16, ptr %i.d, align 1, !tbaa !8
  %i.f = shl i8 %.01825, 1
  %i.g = zext i16 %i.e to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = or i8 %i.i, %i.f                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = or i8 %i.l, %i.j
  %.not = icmp eq i8 %i.m, -1
  br i1 %.not, label %bb.b, label %.loopexit.split.loop.exit

bb.b:                                             ; preds = %.lr.ph
  %i.n = add nuw i64 %.01924, 1
  %exitcond.not = icmp eq i64 %.01924, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit.split.loop.exit:                        ; preds = %.lr.ph
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %.01924, i64 8)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.split.loop.exit, %bb.a
  %.2 = phi i64 [ -1, %bb.a ], [ %i.o, %.loopexit.split.loop.exit ], [ -1, %bb.b ]
  ret i64 %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !6, i64 0}
!11 = !{!12, !13, i64 8}
!12 = !{!"cli_ac_patt", !13, i64 0, !13, i64 8, !6, i64 16, !6, i64 22, !5, i64 28, !5, i64 32, !5, i64 36, !6, i64 40, !6, i64 52, !15, i64 56, !14, i64 64, !6, i64 72, !6, i64 76, !10, i64 80, !10, i64 82, !10, i64 84, !10, i64 86, !16, i64 88, !10, i64 96, !10, i64 98, !6, i64 100, !5, i64 116, !5, i64 120, !5, i64 124, !6, i64 128, !6, i64 129}
!13 = !{!"p1 short", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"p2 _ZTS14cli_ac_special", !17, i64 0}
!17 = !{!"any p2 pointer", !14, i64 0}
!18 = !{!12, !13, i64 0}
!19 = !{!12, !16, i64 88}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS14cli_ac_special", !14, i64 0}
!22 = !{!23, !10, i64 14}
!23 = !{!"cli_ac_special", !6, i64 0, !6, i64 8, !10, i64 12, !10, i64 14, !10, i64 16}
!24 = !{!25, !21, i64 0}
!25 = !{!"char_spec", !21, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11}
!26 = !{!25, !6, i64 11}
!27 = !{!25, !6, i64 9}
!28 = !{!25, !6, i64 8}
!29 = !{!25, !6, i64 10}
!30 = !{!23, !10, i64 16}
!31 = !{!23, !10, i64 12}
!32 = !{!12, !15, i64 56}
!33 = !{!5, !5, i64 0}
!34 = distinct !{!34, !35, !36}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = distinct !{!37, !36, !35}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.peeled.count", i32 1}
!40 = !{!41, !5, i64 0}
!41 = !{!"choice", !5, i64 0, !5, i64 4, !5, i64 8}
!42 = !{!41, !5, i64 4}
!43 = !{!41, !5, i64 8}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.unswitch.partial.disable"}
!46 = !{!47, !48, i64 0}
!47 = !{!"filter_match_info", !48, i64 0}
!48 = !{!"long", !6, i64 0}
end_hunk_1
