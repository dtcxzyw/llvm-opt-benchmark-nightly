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
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 %i.bd, ptr %i.bf, align 8, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 1, ptr %i.bg, align 2, !tbaa !35
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
  store i8 %i.bj, ptr %i.bk, align 8, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  store i8 %i.bh, ptr %i.bl, align 1, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 32, ptr %i.bm, align 2, !tbaa !35
  br label %bb.ac

bb.q:                                             ; preds = %bb.o
  %i.bn = add nsw i16 %.mask, -65
  %or.cond490 = icmp ult i16 %i.bn, 26
  br i1 %or.cond490, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 %i.bh, ptr %i.bo, align 8, !tbaa !34
  %i.bp = add i8 %i.bh, 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !33
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 32, ptr %i.br, align 2, !tbaa !35
  br label %bb.ac

bb.s:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  store i8 %i.bh, ptr %i.bs, align 1, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 %i.bh, ptr %i.bt, align 8, !tbaa !34
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 1, ptr %i.bu, align 2, !tbaa !35
  br label %bb.ac

bb.t:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 0, ptr %i.bv, align 8, !tbaa !34
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  store i8 -1, ptr %i.bw, align 1, !tbaa !33
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 1, ptr %i.bx, align 2, !tbaa !35
  br label %bb.ac

bb.u:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !25 ; 2 uses
  %.not484 = icmp eq ptr %i.by, null
  br i1 %.not484, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @__PRETTY_FUNCTION__.filter_add_acpatt) #10
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bz = zext i32 %.2411687 to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !27 ; 5 uses
  %.not485 = icmp eq ptr %i.cb, null
  br i1 %.not485, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 502, ptr noundef nonnull @__PRETTY_FUNCTION__.filter_add_acpatt) #10
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i16, ptr %i.cc, align 8, !tbaa !36
  %i.ce = trunc i16 %i.cd to i8
  store i8 %i.ce, ptr %i.bc, align 1, !tbaa !32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 14
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !29
  %cond1 = icmp eq i16 %i.cg, 1
  br i1 %cond1, label %bb.z, label %.thread

.thread:                                          ; preds = %bb.y
  %indvars.iv.next12151351 = add nuw nsw i64 %indvars.iv1214, 1
  br label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.ch = add i32 %.2411687, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 0, ptr %i.ci, align 8, !tbaa !34
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.ck = load i16, ptr %i.cj, align 4, !tbaa !37
  %i.cl = trunc i16 %i.ck to i8
  %i.cm = add i8 %i.cl, -1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !33
  %i.co = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 1, ptr %i.co, align 2, !tbaa !35
  store ptr %i.cb, ptr %i.av, align 16, !tbaa !31
  br label %bb.ac

bb.aa:                                            ; preds = %bb.m
  %i.cp = trunc i16 %.in483 to i8                 ; 2 uses
  %i.cq = and i8 %i.cp, -16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 %i.cq, ptr %i.cr, align 8, !tbaa !34
  %i.cs = or i8 %i.cp, 15
  %i.ct = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !33
  %i.cu = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 1, ptr %i.cu, align 2, !tbaa !35
  br label %bb.ac

bb.ab:                                            ; preds = %bb.m
  %i.cv = trunc i16 %.in483 to i8                 ; 2 uses
  %i.cw = and i8 %i.cv, 15
  %i.cx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 %i.cw, ptr %i.cx, align 8, !tbaa !34
  %i.cy = or i8 %i.cv, -16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.av, i64 9
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !33
  %i.da = getelementptr inbounds nuw i8, ptr %i.av, i64 10
  store i8 16, ptr %i.da, align 2, !tbaa !35
  br label %bb.ac

.critedge492:                                     ; preds = %bb.m
  %i.db = zext i16 %.in483 to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.4, i32 noundef %i.db) #11
  br label %.loopexit

bb.ac:                                            ; preds = %bb.z, %bb.p, %bb.s, %bb.r, %bb.ab, %bb.aa, %bb.t, %bb.n
  %.4413 = phi i32 [ %.2411687, %bb.aa ], [ %.2411687, %bb.n ], [ %.2411687, %bb.p ], [ %.2411687, %bb.r ], [ %.2411687, %bb.s ], [ %.2411687, %bb.t ], [ %i.ch, %bb.z ], [ %.2411687, %bb.ab ]
  %indvars.iv.next1215 = add nuw nsw i64 %indvars.iv1214, 1 ; 2 uses
  %indvars.iv.next1217 = add nuw nsw i64 %indvars.iv1216, 1 ; 2 uses
  %i.dc = icmp samesign ult i64 %indvars.iv.next1217, %i.au
  br i1 %i.dc, label %bb.j, label %.critedge

.critedge:                                        ; preds = %bb.ac, %.thread
  %indvars.iv.next12151355 = phi i64 [ %indvars.iv.next12151351, %.thread ], [ %indvars.iv.next1215, %bb.ac ]
  %.not4591354 = phi i1 [ false, %.thread ], [ true, %bb.ac ] ; 2 uses
  %i.dd = trunc nuw nsw i64 %indvars.iv.next12151355 to i32
  %not..not459 = xor i1 %.not4591354, true
  %i.de = sext i1 %not..not459 to i32
  %spec.select493 = add i32 %i.dd, %i.de          ; 4 uses
  %i.df = icmp ult i32 %spec.select493, 2
  br i1 %i.df, label %bb.ad, label %.lr.ph954.preheader

.lr.ph954.preheader:                              ; preds = %.critedge
  %i.dg = add i32 %spec.select493, -1             ; 5 uses
  %wide.trip.count1242 = zext i32 %i.dg to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 10
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !35
  br label %.lr.ph954

bb.ad:                                            ; preds = %.critedge
  br i1 %.not4591354, label %.thread1362, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !38
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.5, ptr noundef %i.di) #11
  br label %.loopexit

.thread1362:                                      ; preds = %.loopexit582, %bb.ad
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !38
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.6, ptr noundef %i.dk) #11
  br label %.loopexit

.lr.ph954:                                        ; preds = %.lr.ph954.preheader, %bb.bl
  %i.dl = phi i8 [ %.pre, %.lr.ph954.preheader ], [ %i.dv, %bb.bl ] ; 4 uses
  %indvars.iv1239 = phi i64 [ 0, %.lr.ph954.preheader ], [ %indvars.iv.next1240, %bb.bl ] ; 4 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv1239 ; 4 uses
  %indvars.iv.next1240 = add nuw nsw i64 %indvars.iv1239, 1 ; 3 uses
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next1240 ; 8 uses
  %.not.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i, label %bb.af, label %spec_iter.exit

bb.af:                                            ; preds = %.lr.ph954
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 420, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_iter) #10
  unreachable

spec_iter.exit:                                   ; preds = %.lr.ph954
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 9
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !33  ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !34  ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 11
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !32  ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 10
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !35  ; 6 uses
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
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !33  ; 5 uses
  %i.eg = zext i8 %i.ef to i16
  %i.eh = add nuw nsw i16 %i.eg, %i.ed
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !34  ; 5 uses
  %i.ek = zext i8 %i.ej to i16                    ; 3 uses
  %i.el = sub nsw i16 %i.eh, %i.ek
  %i.em = sdiv i16 %i.el, %i.ed
  %.sext.i510 = sext i16 %i.em to i32             ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dn, i64 11
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !32  ; 2 uses
  %.not8.i511.not = icmp eq i8 %i.eo, 0
  %i.ep = mul nsw i32 %.sext.i510, 254
  %spec.select.i512 = select i1 %.not8.i511.not, i32 %.sext.i510, i32 %i.ep
  %i.eq = mul nsw i32 %spec.select.i512, %spec.select.i ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 255
  br i1 %i.er, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %spec_iter.exit513
  %i.es = icmp eq i32 %i.eq, 65536
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1239 ; 2 uses
  br i1 %i.es, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.et, align 4, !tbaa !39
  br label %bb.bl

bb.aj:                                            ; preds = %bb.ah
  store i32 2, ptr %i.et, align 4, !tbaa !39
  br label %bb.bl

bb.ak:                                            ; preds = %spec_iter.exit513
  %i.eu = zext i8 %i.dr to i32                    ; 2 uses
  %i.ev = zext i8 %i.dp to i32                    ; 2 uses
  %.not479821 = icmp ugt i8 %i.dr, %i.dp
  br i1 %.not479821, label %._crit_edge828, label %.lr.ph827

.lr.ph827:                                        ; preds = %bb.ak
  %i.ew = zext i8 %i.ej to i32                    ; 7 uses
  %i.ex = zext i8 %i.ef to i32                    ; 5 uses
  %.not480693 = icmp ugt i8 %i.ej, %i.ef
  %i.ey = zext i8 %i.dv to i32                    ; 10 uses
  %i.ez = zext i8 %i.dl to i32                    ; 2 uses
  br i1 %.not480693, label %._crit_edge828, label %.lr.ph827.split

.lr.ph827.split:                                  ; preds = %.lr.ph827
  %i.fa = or i8 %i.eo, %i.dt
  %.fr1066 = freeze i8 %i.fa
  %brmerge.not = icmp eq i8 %.fr1066, 0
  %.val508 = load ptr, ptr %i.dm, align 16, !tbaa !31 ; 4 uses
  %.not.i514 = icmp eq ptr %.val508, null         ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val508, i64 14 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val508, i64 12 ; 2 uses
  br i1 %brmerge.not, label %.lr.ph827.split.split.us, label %.lr.ph827.split.split

.lr.ph827.split.split.us:                         ; preds = %.lr.ph827.split
  br i1 %.not.i514, label %.lr.ph827.split.split.us.split.us, label %.lr.ph827.split.split.us.split

.lr.ph827.split.split.us.split.us:                ; preds = %.lr.ph827.split.split.us
  %.val507.us.us.us.us = load ptr, ptr %i.dn, align 16, !tbaa !31 ; 6 uses
  %.not.i515.us.us.us.us = icmp eq ptr %.val507.us.us.us.us, null ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.val507.us.us.us.us, i64 14 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val507.us.us.us.us, i64 12 ; 3 uses
  %i.ff = zext i8 %i.ej to i64                    ; 3 uses
  %i.fg = zext i8 %i.dv to i64                    ; 3 uses
  %i.fh = zext i8 %i.ef to i64                    ; 3 uses
  %i.fi = add nuw nsw i32 %i.ew, %i.ey            ; 2 uses
  %i.fj = add nuw nsw i32 %i.ex, 1
  %i.fk = tail call i32 @llvm.umax.i32(i32 %i.fi, i32 %i.fj)
  %i.fl = add nuw nsw i32 %i.fk, %i.ey
  %i.fm = xor i32 %i.fi, -1
  %i.fn = add nsw i32 %i.fl, %i.fm
  %broadcast.splatinsert1508 = insertelement <16 x i32> poison, i32 %i.ew, i64 0
  %broadcast.splat1509 = shufflevector <16 x i32> %broadcast.splatinsert1508, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert1510 = insertelement <16 x i32> poison, i32 %i.ey, i64 0
  %broadcast.splat1511 = shufflevector <16 x i32> %broadcast.splatinsert1510, <16 x i32> poison, <16 x i32> zeroinitializer
  %4 = mul nuw nsw <16 x i32> %broadcast.splat1511, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %induction = add nuw nsw <16 x i32> %broadcast.splat1509, %4
  %5 = shl nuw nsw i32 %i.ey, 4
  %broadcast.splatinsert1512 = insertelement <16 x i32> poison, i32 %5, i64 0
  %broadcast.splat1513 = shufflevector <16 x i32> %broadcast.splatinsert1512, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %.lr.ph697.us.us

.lr.ph697.us.us:                                  ; preds = %.thread554.us928.us, %.lr.ph827.split.split.us.split.us
  %.0382825.us833.us = phi i32 [ 4, %.lr.ph827.split.split.us.split.us ], [ %.3385.us930.us, %.thread554.us928.us ] ; 7 uses
  %.0386824.us834.us = phi i8 [ 0, %.lr.ph827.split.split.us.split.us ], [ %.1387.lcssa.us929.us, %.thread554.us928.us ] ; 9 uses
  %.0417822.us835.us = phi i32 [ %i.eu, %.lr.ph827.split.split.us.split.us ], [ %i.hf, %.thread554.us928.us ]
  %.0417822.us835.us.fr = freeze i32 %.0417822.us835.us ; 6 uses
  %i.fo = trunc nuw i32 %.0417822.us835.us.fr to i8 ; 4 uses
  %or.cond8.us.us.us.us = icmp slt i8 %i.fo, 32   ; 5 uses
  %trunc1433 = trunc nuw i32 %.0417822.us835.us.fr to i8
  switch i8 %trunc1433, label %.lr.ph697.split.us.split.us.split.us.split.us.us.us [
    i8 0, label %.lr.ph697.split.us.split.us.split.split.us.us.us
    i8 -1, label %spec_ith_char.exit.us.us.us.us915.us
  ]

.lr.ph697.split.us.split.us.split.split.us.us.us: ; preds = %.lr.ph697.us.us
  br i1 %.not.i515.us.us.us.us, label %spec_ith_char.exit.us.us.us795.us.us.us, label %.lr.ph697.split.us.split.us.split.split.us.us.us.split

spec_ith_char.exit.us.us.us795.us.us.us:          ; preds = %.lr.ph697.split.us.split.us.split.split.us.us.us, %bb.al
  %.1387695.us.us.us796.us.us.us = phi i8 [ %.2388.us.us.us803.us.us.us, %bb.al ], [ %.0386824.us834.us, %.lr.ph697.split.us.split.us.split.split.us.us.us ] ; 2 uses
  %.0414694.us.us.us797.us.us.us = phi i32 [ %i.fq, %bb.al ], [ %i.ew, %.lr.ph697.split.us.split.us.split.split.us.us.us ] ; 3 uses
  %.not1073 = icmp eq i32 %.0414694.us.us.us797.us.us.us, 0
  br i1 %.not1073, label %.thread554.us928.us, label %bb.al

bb.al:                                            ; preds = %spec_ith_char.exit.us.us.us795.us.us.us
  %i.fp = trunc nuw i32 %.0414694.us.us.us797.us.us.us to i8
  %or.cond11.us.us.us801.us.us.us = icmp slt i8 %i.fp, 32
  %or.cond494.us.us.us802.us.us.us = select i1 %or.cond8.us.us.us.us, i1 %or.cond11.us.us.us801.us.us.us, i1 false
  %.2388.us.us.us803.us.us.us = select i1 %or.cond494.us.us.us802.us.us.us, i8 1, i8 %.1387695.us.us.us796.us.us.us ; 2 uses
  %i.fq = add nuw nsw i32 %.0414694.us.us.us797.us.us.us, %i.ey ; 2 uses
  %.not480.us.us.us804.us.us.us = icmp samesign ugt i32 %i.fq, %i.ex
  br i1 %.not480.us.us.us804.us.us.us, label %.thread554.us928.us, label %spec_ith_char.exit.us.us.us795.us.us.us

.lr.ph697.split.us.split.us.split.split.us.us.us.split: ; preds = %.lr.ph697.split.us.split.us.split.split.us.us.us
  %i.fr = load i16, ptr %i.fd, align 2, !tbaa !29
  %i.fs = icmp eq i16 %i.fr, 1
  br i1 %i.fs, label %.lr.ph697.split.us.split.us.split.split.us.us.us.split.split, label %.split714.us

.lr.ph697.split.us.split.us.split.split.us.us.us.split.split: ; preds = %.lr.ph697.split.us.split.us.split.split.us.us.us.split
  %i.ft = load i16, ptr %i.fe, align 4, !tbaa !37
  %i.fu = zext i16 %i.ft to i64
  br label %spec_ith_char.exit.us.us.us795.us.us

spec_ith_char.exit.us.us.us795.us.us:             ; preds = %bb.an, %.lr.ph697.split.us.split.us.split.split.us.us.us.split.split
  %indvars.iv1235 = phi i64 [ %indvars.iv.next1236, %bb.an ], [ %i.ff, %.lr.ph697.split.us.split.us.split.split.us.us.us.split.split ] ; 3 uses
  %.1387695.us.us.us796.us.us = phi i8 [ %.2388.us.us.us803.us.us, %bb.an ], [ %.0386824.us834.us, %.lr.ph697.split.us.split.us.split.split.us.us.us.split.split ] ; 3 uses
  %i.fv = icmp samesign ult i64 %indvars.iv1235, %i.fu
  br i1 %i.fv, label %spec_ith_char.exit517.us.us.us798.us.us, label %.split716.us

spec_ith_char.exit517.us.us.us798.us.us:          ; preds = %spec_ith_char.exit.us.us.us795.us.us
  %i.fw = load ptr, ptr %.val507.us.us.us.us, align 8, !tbaa !8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %indvars.iv1235
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !8   ; 3 uses
  %.not1072 = icmp eq i8 %i.fy, 0
  br i1 %.not1072, label %.thread554.us928.us, label %bb.am

bb.am:                                            ; preds = %spec_ith_char.exit517.us.us.us798.us.us
  %i.fz = icmp eq i8 %i.fy, %i.fo
  br i1 %i.fz, label %.thread554.us928.us, label %bb.an

bb.an:                                            ; preds = %bb.am
  %or.cond11.us.us.us801.us.us = icmp slt i8 %i.fy, 32
  %or.cond494.us.us.us802.us.us = and i1 %or.cond8.us.us.us.us, %or.cond11.us.us.us801.us.us
  %.2388.us.us.us803.us.us = select i1 %or.cond494.us.us.us802.us.us, i8 1, i8 %.1387695.us.us.us796.us.us ; 2 uses
  %indvars.iv.next1236 = add nuw nsw i64 %indvars.iv1235, %i.fg ; 2 uses
  %.not480.us.us.us804.us.us = icmp samesign ugt i64 %indvars.iv.next1236, %i.fh
  br i1 %.not480.us.us.us804.us.us, label %.thread554.us928.us, label %spec_ith_char.exit.us.us.us795.us.us

.lr.ph697.split.us.split.us.split.us.split.us.us.us: ; preds = %.lr.ph697.us.us
  br i1 %.not.i515.us.us.us.us, label %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us, label %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split

.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us: ; preds = %.lr.ph697.split.us.split.us.split.us.split.us.us.us
  br i1 %or.cond8.us.us.us.us, label %spec_ith_char.exit.us.us.us.us.us.us.us, label %spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader

spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader: ; preds = %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us
  %i.ga = udiv i32 %i.fn, %i.ey
  %i.gb = add i32 %i.ga, 1                        ; 3 uses
  %min.iters.check = icmp ult i32 %i.gb, 16
  br i1 %min.iters.check, label %spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader1535, label %vector.ph

vector.ph:                                        ; preds = %spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader
  %n.vec = and i32 %i.gb, -16                     ; 3 uses
  %i.gc = mul i32 %n.vec, %i.ey
  %i.gd = add i32 %i.gc, %i.ew
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %.0417822.us835.us.fr, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ]
  %vec.ind.fr = freeze <16 x i32> %vec.ind        ; 2 uses
  %i.ge = icmp eq <16 x i32> %broadcast.splat, %vec.ind.fr
  %i.gf = bitcast <16 x i1> %i.ge to i16
  %.not1516 = icmp eq i16 %i.gf, 0
  br i1 %.not1516, label %vector.body.interim, label %.thread554.us928.us

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nuw nsw <16 x i32> %vec.ind.fr, %broadcast.splat1513
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.gg = icmp eq i32 %index.next, %n.vec
  br i1 %i.gg, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %i.gb, %n.vec
  br i1 %cmp.n, label %.thread554.us928.us, label %spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader1535

spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader1535: ; preds = %spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader, %middle.block
  %.0414694.us.us.us.us.us.us.us.us.ph = phi i32 [ %i.ew, %spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader ], [ %i.gd, %middle.block ]
  br label %spec_ith_char.exit.us.us.us.us.us.us.us.us

spec_ith_char.exit.us.us.us.us.us.us.us.us:       ; preds = %spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader1535, %bb.ao
  %.0414694.us.us.us.us.us.us.us.us = phi i32 [ %i.gi, %bb.ao ], [ %.0414694.us.us.us.us.us.us.us.us.ph, %spec_ith_char.exit.us.us.us.us.us.us.us.us.preheader1535 ] ; 2 uses
  %i.gh = icmp eq i32 %.0417822.us835.us.fr, %.0414694.us.us.us.us.us.us.us.us
  br i1 %i.gh, label %.thread554.us928.us, label %bb.ao

bb.ao:                                            ; preds = %spec_ith_char.exit.us.us.us.us.us.us.us.us
  %i.gi = add nuw nsw i32 %.0414694.us.us.us.us.us.us.us.us, %i.ey ; 2 uses
  %.not480.us.us.us.us.us.us.us.us = icmp samesign ugt i32 %i.gi, %i.ex
  br i1 %.not480.us.us.us.us.us.us.us.us, label %.thread554.us928.us, label %spec_ith_char.exit.us.us.us.us.us.us.us.us, !llvm.loop !12

spec_ith_char.exit.us.us.us.us.us.us.us:          ; preds = %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us, %bb.ap
  %.1387695.us.us.us.us.us.us.us = phi i8 [ %spec.select1062, %bb.ap ], [ %.0386824.us834.us, %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us ] ; 2 uses
  %.0414694.us.us.us.us.us.us.us = phi i32 [ %i.gk, %bb.ap ], [ %i.ew, %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.us ] ; 3 uses
  %i.gj = icmp eq i32 %.0417822.us835.us.fr, %.0414694.us.us.us.us.us.us.us
  br i1 %i.gj, label %.thread554.us928.us, label %bb.ap

bb.ap:                                            ; preds = %spec_ith_char.exit.us.us.us.us.us.us.us
  %6 = trunc nuw i32 %.0414694.us.us.us.us.us.us.us to i8
  %or.cond11.us.us.us.us.us.us.us = icmp slt i8 %6, 32
  %spec.select1062 = select i1 %or.cond11.us.us.us.us.us.us.us, i8 1, i8 %.1387695.us.us.us.us.us.us.us ; 2 uses
  %i.gk = add nuw nsw i32 %.0414694.us.us.us.us.us.us.us, %i.ey ; 2 uses
  %.not480.us.us.us.us.us.us.us = icmp samesign ugt i32 %i.gk, %i.ex
  br i1 %.not480.us.us.us.us.us.us.us, label %.thread554.us928.us, label %spec_ith_char.exit.us.us.us.us.us.us.us

.lr.ph697.split.us.split.us.split.us.split.us.us.us.split: ; preds = %.lr.ph697.split.us.split.us.split.us.split.us.us.us
  %i.gl = load i16, ptr %i.fd, align 2, !tbaa !29
  %i.gm = icmp eq i16 %i.gl, 1
  br i1 %i.gm, label %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.split, label %.split714.us

.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.split: ; preds = %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split
  %i.gn = load i16, ptr %i.fe, align 4, !tbaa !37
  %i.go = zext i16 %i.gn to i64
  br label %spec_ith_char.exit.us.us.us.us.us.us

spec_ith_char.exit.us.us.us.us.us.us:             ; preds = %bb.aq, %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.split
  %indvars.iv1231 = phi i64 [ %indvars.iv.next1232, %bb.aq ], [ %i.ff, %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.split ] ; 3 uses
  %.1387695.us.us.us.us.us.us = phi i8 [ %.2388.us.us.us.us.us.us, %bb.aq ], [ %.0386824.us834.us, %.lr.ph697.split.us.split.us.split.us.split.us.us.us.split.split ] ; 2 uses
  %i.gp = icmp samesign ult i64 %indvars.iv1231, %i.go
  br i1 %i.gp, label %spec_ith_char.exit517.us.us.us.us.us.us, label %.split716.us

spec_ith_char.exit517.us.us.us.us.us.us:          ; preds = %spec_ith_char.exit.us.us.us.us.us.us
  %i.gq = load ptr, ptr %.val507.us.us.us.us, align 8, !tbaa !8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv1231
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !8   ; 2 uses
  %i.gt = icmp eq i8 %i.gs, %i.fo
  br i1 %i.gt, label %.thread554.us928.us, label %bb.aq

bb.aq:                                            ; preds = %spec_ith_char.exit517.us.us.us.us.us.us
  %or.cond11.us.us.us.us.us.us = icmp slt i8 %i.gs, 32
  %or.cond494.us.us.us.us.us.us = and i1 %or.cond8.us.us.us.us, %or.cond11.us.us.us.us.us.us
  %.2388.us.us.us.us.us.us = select i1 %or.cond494.us.us.us.us.us.us, i8 1, i8 %.1387695.us.us.us.us.us.us ; 2 uses
  %indvars.iv.next1232 = add nuw nsw i64 %indvars.iv1231, %i.fg ; 2 uses
  %.not480.us.us.us.us.us.us = icmp samesign ugt i64 %indvars.iv.next1232, %i.fh
  br i1 %.not480.us.us.us.us.us.us, label %.thread554.us928.us, label %spec_ith_char.exit.us.us.us.us.us.us

spec_ith_char.exit.us.us.us.us915.us:             ; preds = %.lr.ph697.us.us, %bb.aw
  %indvars.iv1233 = phi i64 [ %indvars.iv.next1234, %bb.aw ], [ %i.ff, %.lr.ph697.us.us ] ; 4 uses
  %.1387695.us.us.us.us916.us = phi i8 [ %.2388.us.us.us.us922.us, %bb.aw ], [ %.0386824.us834.us, %.lr.ph697.us.us ] ; 3 uses
  br i1 %.not.i515.us.us.us.us, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %spec_ith_char.exit.us.us.us.us915.us
  %i.gu = load i16, ptr %i.fd, align 2, !tbaa !29
  %i.gv = icmp eq i16 %i.gu, 1
  br i1 %i.gv, label %bb.as, label %.split714.us

bb.as:                                            ; preds = %bb.ar
  %i.gw = load i16, ptr %i.fe, align 4, !tbaa !37
  %i.gx = zext i16 %i.gw to i64
  %i.gy = icmp samesign ult i64 %indvars.iv1233, %i.gx
  br i1 %i.gy, label %bb.at, label %.split716.us

bb.at:                                            ; preds = %bb.as
  %i.gz = load ptr, ptr %.val507.us.us.us.us, align 8, !tbaa !8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %indvars.iv1233
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !8
  br label %spec_ith_char.exit517.us.us.us.us918.us

bb.au:                                            ; preds = %spec_ith_char.exit.us.us.us.us915.us
  %i.hc = trunc i64 %indvars.iv1233 to i8
  br label %spec_ith_char.exit517.us.us.us.us918.us

spec_ith_char.exit517.us.us.us.us918.us:          ; preds = %bb.au, %bb.at
  %.0.i516.us.us.us.us919.us = phi i8 [ %i.hb, %bb.at ], [ %i.hc, %bb.au ] ; 3 uses
  %i.hd = icmp eq i8 %.0.i516.us.us.us.us919.us, -1
  br i1 %i.hd, label %.thread554.us928.us, label %bb.av

bb.av:                                            ; preds = %spec_ith_char.exit517.us.us.us.us918.us
  %i.he = icmp eq i8 %.0.i516.us.us.us.us919.us, %i.fo
  br i1 %i.he, label %.thread554.us928.us, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %or.cond11.us.us.us.us920.us = icmp slt i8 %.0.i516.us.us.us.us919.us, 32
  %or.cond494.us.us.us.us921.us = and i1 %or.cond8.us.us.us.us, %or.cond11.us.us.us.us920.us
  %.2388.us.us.us.us922.us = select i1 %or.cond494.us.us.us.us921.us, i8 1, i8 %.1387695.us.us.us.us916.us ; 2 uses
  %indvars.iv.next1234 = add nuw nsw i64 %indvars.iv1233, %i.fg ; 2 uses
  %.not480.us.us.us.us923.us = icmp samesign ugt i64 %indvars.iv.next1234, %i.fh
  br i1 %.not480.us.us.us.us923.us, label %.thread554.us928.us, label %spec_ith_char.exit.us.us.us.us915.us

.thread554.us928.us:                              ; preds = %spec_ith_char.exit517.us.us.us.us918.us, %bb.av, %bb.aw, %bb.am, %bb.an, %spec_ith_char.exit517.us.us.us798.us.us, %bb.al, %spec_ith_char.exit.us.us.us795.us.us.us, %spec_ith_char.exit517.us.us.us.us.us.us, %bb.aq, %vector.body, %spec_ith_char.exit.us.us.us.us.us.us.us.us, %bb.ao, %spec_ith_char.exit.us.us.us.us.us.us.us, %bb.ap, %middle.block
  %.1387.lcssa.us929.us = phi i8 [ %.0386824.us834.us, %spec_ith_char.exit.us.us.us.us.us.us.us.us ], [ %.0386824.us834.us, %vector.body ], [ %.1387695.us.us.us796.us.us, %spec_ith_char.exit517.us.us.us798.us.us ], [ %.0386824.us834.us, %middle.block ], [ %.2388.us.us.us.us.us.us, %bb.aq ], [ %spec.select1062, %bb.ap ], [ %.2388.us.us.us803.us.us.us, %bb.al ], [ %.1387695.us.us.us.us.us.us.us, %spec_ith_char.exit.us.us.us.us.us.us.us ], [ %.0386824.us834.us, %bb.ao ], [ %.1387695.us.us.us.us.us.us, %spec_ith_char.exit517.us.us.us.us.us.us ], [ %.1387695.us.us.us796.us.us.us, %spec_ith_char.exit.us.us.us795.us.us.us ], [ %.1387695.us.us.us796.us.us, %bb.am ], [ %.2388.us.us.us803.us.us, %bb.an ], [ %.2388.us.us.us.us922.us, %bb.aw ], [ %.1387695.us.us.us.us916.us, %bb.av ], [ %.1387695.us.us.us.us916.us, %spec_ith_char.exit517.us.us.us.us918.us ] ; 2 uses
  %.3385.us930.us = phi i32 [ %.0382825.us833.us, %bb.ao ], [ 3, %vector.body ], [ 1, %spec_ith_char.exit517.us.us.us798.us.us ], [ %.0382825.us833.us, %middle.block ], [ %.0382825.us833.us, %bb.aq ], [ %.0382825.us833.us, %bb.ap ], [ %.0382825.us833.us, %bb.al ], [ 3, %spec_ith_char.exit.us.us.us.us.us.us.us ], [ 3, %spec_ith_char.exit.us.us.us.us.us.us.us.us ], [ 3, %spec_ith_char.exit517.us.us.us.us.us.us ], [ 1, %spec_ith_char.exit.us.us.us795.us.us.us ], [ 3, %bb.am ], [ %.0382825.us833.us, %bb.an ], [ %.0382825.us833.us, %bb.aw ], [ 3, %bb.av ], [ 1, %spec_ith_char.exit517.us.us.us.us918.us ] ; 2 uses
  %i.hf = add nuw nsw i32 %.0417822.us835.us.fr, %i.ez ; 2 uses
  %.not479.us931.us = icmp samesign ugt i32 %i.hf, %i.ev
  br i1 %.not479.us931.us, label %._crit_edge828, label %.lr.ph697.us.us

.lr.ph827.split.split.us.split:                   ; preds = %.lr.ph827.split.split.us
  %i.hg = load i16, ptr %i.fb, align 2, !tbaa !29
  %i.hh = icmp eq i16 %i.hg, 1
  br i1 %i.hh, label %.lr.ph827.split.split.us.split.split, label %.split.us

.lr.ph827.split.split.us.split.split:             ; preds = %.lr.ph827.split.split.us.split
  %i.hi = load i16, ptr %i.fc, align 4, !tbaa !37
  %i.hj = zext i8 %i.ej to i64                    ; 3 uses
  %i.hk = zext i8 %i.dv to i64                    ; 3 uses
  %i.hl = zext i8 %i.ef to i64                    ; 3 uses
  %i.hm = zext i8 %i.dr to i64
  %i.hn = zext i8 %i.dl to i64
  %i.ho = zext i16 %i.hi to i64
  %i.hp = zext i8 %i.dp to i64
  br label %.lr.ph697.us

.lr.ph697.us:                                     ; preds = %.thread554.us928, %.lr.ph827.split.split.us.split.split
  %indvars.iv1229 = phi i64 [ %indvars.iv.next1230, %.thread554.us928 ], [ %i.hm, %.lr.ph827.split.split.us.split.split ] ; 3 uses
  %.0382825.us833 = phi i32 [ %.3385.us930, %.thread554.us928 ], [ 4, %.lr.ph827.split.split.us.split.split ] ; 4 uses
  %.0386824.us834 = phi i8 [ %.1387.lcssa.us929, %.thread554.us928 ], [ 0, %.lr.ph827.split.split.us.split.split ] ; 4 uses
  %i.hq = icmp samesign ult i64 %indvars.iv1229, %i.ho
  br i1 %i.hq, label %.lr.ph697.split.us.split.split.split.us, label %.split712.us

.lr.ph697.split.us.split.split.split.us:          ; preds = %.lr.ph697.us
  %i.hr = load ptr, ptr %.val508, align 8, !tbaa !8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %indvars.iv1229
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !8
  %.fr1067 = freeze i8 %i.ht                      ; 3 uses
  %.val507.us.us837 = load ptr, ptr %i.dn, align 16, !tbaa !31 ; 6 uses
  %.not.i515.us.us838 = icmp eq ptr %.val507.us.us837, null ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.val507.us.us837, i64 14 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.val507.us.us837, i64 12 ; 3 uses
  %or.cond8.us.us839 = icmp slt i8 %.fr1067, 32   ; 4 uses
  switch i8 %.fr1067, label %spec_ith_char.exit.us.us731.us.us [
    i8 0, label %.lr.ph697.split.us.split.split.split.split.split.us.us
    i8 -1, label %spec_ith_char.exit.us.us731.us877
  ]

.lr.ph697.split.us.split.split.split.split.split.us.us: ; preds = %.lr.ph697.split.us.split.split.split.us
  br i1 %.not.i515.us.us838, label %spec_ith_char.exit.us.us754.us.us, label %.lr.ph697.split.us.split.split.split.split.split.us.split.us841

.lr.ph697.split.us.split.split.split.split.split.us.split.us841: ; preds = %.lr.ph697.split.us.split.split.split.split.split.us.us
  %i.hw = load i16, ptr %i.hu, align 2, !tbaa !29
  %i.hx = icmp eq i16 %i.hw, 1
  br i1 %i.hx, label %.lr.ph697.split.us.split.split.split.split.split.us.split.split.us, label %.split714.us

.lr.ph697.split.us.split.split.split.split.split.us.split.split.us: ; preds = %.lr.ph697.split.us.split.split.split.split.split.us.split.us841
  %i.hy = load i16, ptr %i.hv, align 4, !tbaa !37
  %i.hz = zext i16 %i.hy to i64
  br label %spec_ith_char.exit.us.us754.us842

spec_ith_char.exit.us.us754.us842:                ; preds = %bb.ax, %.lr.ph697.split.us.split.split.split.split.split.us.split.split.us
  %indvars.iv1225 = phi i64 [ %indvars.iv.next1226, %bb.ax ], [ %i.hj, %.lr.ph697.split.us.split.split.split.split.split.us.split.split.us ] ; 3 uses
  %.1387695.us.us755.us843 = phi i8 [ %.2388.us.us762.us847, %bb.ax ], [ %.0386824.us834, %.lr.ph697.split.us.split.split.split.split.split.us.split.split.us ] ; 2 uses
  %i.ia = icmp samesign ult i64 %indvars.iv1225, %i.hz
  br i1 %i.ia, label %spec_ith_char.exit517.us.us757.us, label %.split716.us

spec_ith_char.exit517.us.us757.us:                ; preds = %spec_ith_char.exit.us.us754.us842
  %i.ib = load ptr, ptr %.val507.us.us837, align 8, !tbaa !8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv1225
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !8   ; 2 uses
  %.not1069 = icmp eq i8 %i.id, 0
  br i1 %.not1069, label %.thread554.us928, label %bb.ax

bb.ax:                                            ; preds = %spec_ith_char.exit517.us.us757.us
  %or.cond11.us.us760.us845 = icmp slt i8 %i.id, 32
  %or.cond494.us.us761.us846 = and i1 %or.cond8.us.us839, %or.cond11.us.us760.us845
  %.2388.us.us762.us847 = select i1 %or.cond494.us.us761.us846, i8 1, i8 %.1387695.us.us755.us843 ; 2 uses
  %indvars.iv.next1226 = add nuw nsw i64 %indvars.iv1225, %i.hk ; 2 uses
  %.not480.us.us763.us848 = icmp samesign ugt i64 %indvars.iv.next1226, %i.hl
  br i1 %.not480.us.us763.us848, label %.thread554.us928, label %spec_ith_char.exit.us.us754.us842

spec_ith_char.exit.us.us754.us.us:                ; preds = %.lr.ph697.split.us.split.split.split.split.split.us.us, %bb.ay
  %.1387695.us.us755.us.us = phi i8 [ %.2388.us.us762.us.us, %bb.ay ], [ %.0386824.us834, %.lr.ph697.split.us.split.split.split.split.split.us.us ] ; 2 uses
  %.0414694.us.us756.us.us = phi i32 [ %i.if, %bb.ay ], [ %i.ew, %.lr.ph697.split.us.split.split.split.split.split.us.us ] ; 3 uses
  %.not1070 = icmp eq i32 %.0414694.us.us756.us.us, 0
  br i1 %.not1070, label %.thread554.us928, label %bb.ay

bb.ay:                                            ; preds = %spec_ith_char.exit.us.us754.us.us
  %i.ie = trunc nuw i32 %.0414694.us.us756.us.us to i8
  %or.cond11.us.us760.us.us = icmp slt i8 %i.ie, 32
  %or.cond494.us.us761.us.us = select i1 %or.cond8.us.us839, i1 %or.cond11.us.us760.us.us, i1 false
  %.2388.us.us762.us.us = select i1 %or.cond494.us.us761.us.us, i8 1, i8 %.1387695.us.us755.us.us ; 2 uses
  %i.if = add nuw nsw i32 %.0414694.us.us756.us.us, %i.ey ; 2 uses
  %.not480.us.us763.us.us = icmp samesign ugt i32 %i.if, %i.ex
  br i1 %.not480.us.us763.us.us, label %.thread554.us928, label %spec_ith_char.exit.us.us754.us.us

spec_ith_char.exit.us.us731.us.us:                ; preds = %.lr.ph697.split.us.split.split.split.us, %bb.bd
  %indvars.iv1221 = phi i64 [ %indvars.iv.next1222, %bb.bd ], [ %i.hj, %.lr.ph697.split.us.split.split.split.us ] ; 4 uses
  %.1387695.us.us732.us.us = phi i8 [ %.2388.us.us740.us.us, %bb.bd ], [ %.0386824.us834, %.lr.ph697.split.us.split.split.split.us ] ; 2 uses
  br i1 %.not.i515.us.us838, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %spec_ith_char.exit.us.us731.us.us
  %i.ig = load i16, ptr %i.hu, align 2, !tbaa !29
  %i.ih = icmp eq i16 %i.ig, 1
  br i1 %i.ih, label %bb.ba, label %.split714.us

bb.ba:                                            ; preds = %bb.az
  %i.ii = load i16, ptr %i.hv, align 4, !tbaa !37
  %i.ij = zext i16 %i.ii to i64
  %i.ik = icmp samesign ult i64 %indvars.iv1221, %i.ij
  br i1 %i.ik, label %bb.bb, label %.split716.us

bb.bb:                                            ; preds = %bb.ba
  %i.il = load ptr, ptr %.val507.us.us837, align 8, !tbaa !8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %indvars.iv1221
  %i.in = load i8, ptr %i.im, align 1, !tbaa !8
  br label %spec_ith_char.exit517.us.us734.us.us

bb.bc:                                            ; preds = %spec_ith_char.exit.us.us731.us.us
  %i.io = trunc i64 %indvars.iv1221 to i8
  br label %spec_ith_char.exit517.us.us734.us.us

spec_ith_char.exit517.us.us734.us.us:             ; preds = %bb.bc, %bb.bb
end_hunk_0
