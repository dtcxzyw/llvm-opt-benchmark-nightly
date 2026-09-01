Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/filtering?download=true
inline.NumInlined: 22
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@filter_add_acpatt:bb.a
  %i.am = load i16, ptr %i.al, align 2, !tbaa !9
  %i.an = and i16 %i.am, -256
  %i.ao = icmp eq i16 %i.an, 512
  br i1 %i.ao, label %bb.h, label %.loopexit582

.loopexit582:                                     ; preds = %bb.h, %bb.i, %.preheader581, %bb.g
  %.2426 = phi i32 [ 0, %bb.g ], [ 0, %.preheader581 ], [ %.0409679, %bb.h ], [ %i.aj, %bb.i ] ; 3 uses
  %i.ap = icmp ult i32 %.2426, %spec.select
  br i1 %i.ap, label %.lr.ph690, label %.thread1355

.lr.ph690:                                        ; preds = %.loopexit582
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.as = zext nneg i32 %.2426 to i64
  %i.at = zext i16 %i.d to i64                    ; 2 uses
  %i.au = zext nneg i32 %spec.select to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph690, %bb.ac
  %indvars.iv1215 = phi i64 [ %i.as, %.lr.ph690 ], [ %indvars.iv.next1216, %bb.ac ] ; 4 uses
  %indvars.iv1213 = phi i64 [ 0, %.lr.ph690 ], [ %indvars.iv.next1214, %bb.ac ] ; 3 uses
  %.2411687 = phi i32 [ %.2426, %.lr.ph690 ], [ %.4413, %bb.ac ] ; 9 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv1213 ; 27 uses
  %i.aw = icmp samesign ult i64 %indvars.iv1215, %i.at
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %indvars.iv1215
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.az = load ptr, ptr %1, align 8, !tbaa !18
  %i.ba = sub nuw nsw i64 %indvars.iv1215, %i.at
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.ba
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.in483.in = phi ptr [ %i.ay, %bb.k ], [ %i.bb, %bb.l ]
  %.in483 = load i16, ptr %.in483.in, align 2, !tbaa !9 ; 7 uses
  store ptr null, ptr %i.av, align 16, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 11 ; 2 uses
  store i8 0, ptr %i.bc, align 1, !tbaa !26
  %trunc = and i16 %.in483, -256
  switch i16 %trunc, label %.critedge492 [
    i16 0, label %bb.n
    i16 4096, label %bb.o
    i16 256, label %bb.t
    i16 512, label %bb.u
    i16 768, label %bb.aa
    i16 1024, label %bb.ab
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
  %4 = sext i1 %not..not459 to i32
  %spec.select493 = add i32 %i.dd, %4             ; 4 uses
  %i.de = icmp ult i32 %spec.select493, 2
  br i1 %i.de, label %bb.ad, label %.lr.ph954.preheader

.lr.ph954.preheader:                              ; preds = %.critedge
  %i.df = add i32 %spec.select493, -1             ; 5 uses
  %wide.trip.count1241 = zext i32 %i.df to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 10
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !29
  br label %.lr.ph954

bb.ad:                                            ; preds = %.critedge
  br i1 %.not4591347, label %.thread1355, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !32
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.5, ptr noundef %i.dh) #11
  br label %.loopexit

.thread1355:                                      ; preds = %.loopexit582, %bb.ad
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !32
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.6, ptr noundef %i.dj) #11
  br label %.loopexit

.lr.ph954:                                        ; preds = %.lr.ph954.preheader, %bb.bm
  %i.dk = phi i8 [ %.pre, %.lr.ph954.preheader ], [ %i.du, %bb.bm ] ; 4 uses
  %indvars.iv1238.a = phi i64 [ 0, %.lr.ph954.preheader ], [ %indvars.iv.next1239.a, %bb.bm ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv1238.a ; 4 uses
  %indvars.iv.next1239.a = add nuw nsw i64 %indvars.iv1238.a, 1 ; 3 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next1239.a ; 8 uses
  %.not.i = icmp eq i8 %i.dk, 0
  br i1 %.not.i, label %bb.af, label %spec_iter.exit

bb.af:                                            ; preds = %.lr.ph954
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 420, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_iter) #10
  unreachable

spec_iter.exit:                                   ; preds = %.lr.ph954
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 9
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !27  ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !28  ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 11
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !26  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 10
  %i.du = load i8, ptr %i.dt, align 2, !tbaa !29  ; 6 uses
  %.not.i509 = icmp eq i8 %i.du, 0
  br i1 %.not.i509, label %bb.ag, label %spec_iter.exit513

bb.ag:                                            ; preds = %spec_iter.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 420, ptr noundef nonnull @__PRETTY_FUNCTION__.spec_iter) #10
  unreachable

spec_iter.exit513:                                ; preds = %spec_iter.exit
  %.not8.i.not = icmp eq i8 %i.ds, 0
  %i.dv = zext i8 %i.do to i16
  %i.dw = zext i8 %i.dk to i16                    ; 2 uses
  %i.dx = add nuw nsw i16 %i.dv, %i.dw
  %i.dy = zext i8 %i.dq to i16
  %i.dz = sub nsw i16 %i.dx, %i.dy
  %i.ea = sdiv i16 %i.dz, %i.dw
  %.sext.i = sext i16 %i.ea to i32                ; 2 uses
  %i.eb = mul nsw i32 %.sext.i, 254
  %spec.select.i = select i1 %.not8.i.not, i32 %.sext.i, i32 %i.eb
  %i.ec = zext i8 %i.du to i16                    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dm, i64 9
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !27  ; 5 uses
  %i.ef = zext i8 %i.ee to i16
  %i.eg = add nuw nsw i16 %i.ef, %i.ec
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !28  ; 5 uses
  %i.ej = zext i8 %i.ei to i16                    ; 3 uses
  %i.ek = sub nsw i16 %i.eg, %i.ej
  %i.el = sdiv i16 %i.ek, %i.ec
  %.sext.i510 = sext i16 %i.el to i32             ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dm, i64 11
  %i.en = load i8, ptr %i.em, align 1, !tbaa !26  ; 2 uses
  %.not8.i511.not = icmp eq i8 %i.en, 0
  %i.eo = mul nsw i32 %.sext.i510, 254
  %spec.select.i512 = select i1 %.not8.i511.not, i32 %.sext.i510, i32 %i.eo
  %i.ep = mul nsw i32 %spec.select.i512, %spec.select.i ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, 255
  br i1 %i.eq, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %spec_iter.exit513
  %i.er = icmp eq i32 %i.ep, 65536
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1238.a ; 2 uses
  br i1 %i.er, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.es, align 4, !tbaa !33
  br label %bb.bm

bb.aj:                                            ; preds = %bb.ah
  store i32 2, ptr %i.es, align 4, !tbaa !33
  br label %bb.bm

bb.ak:                                            ; preds = %spec_iter.exit513
  %i.et = zext i8 %i.dq to i32                    ; 5 uses
  %i.eu = zext i8 %i.do to i32                    ; 5 uses
  %.not479821 = icmp ugt i8 %i.dq, %i.do
  br i1 %.not479821, label %._crit_edge828, label %.lr.ph827

.lr.ph827:                                        ; preds = %bb.ak
  %i.ev = zext i8 %i.ei to i32                    ; 4 uses
  %i.ew = zext i8 %i.ee to i32                    ; 4 uses
  %.not480693 = icmp ugt i8 %i.ei, %i.ee
  %i.ex = zext i8 %i.du to i32                    ; 4 uses
  %i.ey = zext i8 %i.dk to i32                    ; 5 uses
  br i1 %.not480693, label %.thread554.us, label %.lr.ph827.split

.thread554.us:                                    ; preds = %.lr.ph827, %.thread554.us
  %.0417822.us = phi i32 [ %i.ez, %.thread554.us ], [ %i.et, %.lr.ph827 ]
  %i.ez = add nuw nsw i32 %.0417822.us, %i.ey     ; 2 uses
  %.not479.us = icmp samesign ugt i32 %i.ez, %i.eu
  br i1 %.not479.us, label %._crit_edge828, label %.thread554.us

.lr.ph827.split:                                  ; preds = %.lr.ph827
  %i.fa = or i8 %i.en, %i.ds
  %.fr1066 = freeze i8 %i.fa
  %brmerge.not = icmp eq i8 %.fr1066, 0
  %.val508 = load ptr, ptr %i.dl, align 16, !tbaa !24 ; 4 uses
  %.not.i514 = icmp eq ptr %.val508, null         ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val508, i64 14 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val508, i64 12 ; 2 uses
  br i1 %brmerge.not, label %.lr.ph827.split.split.us, label %.lr.ph827.split.split

.lr.ph827.split.split.us:                         ; preds = %.lr.ph827.split
  br i1 %.not.i514, label %.lr.ph827.split.split.us.split.us, label %.lr.ph827.split.split.us.split

.lr.ph827.split.split.us.split.us:                ; preds = %.lr.ph827.split.split.us
  %.val507.us.us.us.us = load ptr, ptr %i.dm, align 16, !tbaa !24 ; 6 uses
  %.not.i515.us.us.us.us = icmp eq ptr %.val507.us.us.us.us, null ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.val507.us.us.us.us, i64 14 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val507.us.us.us.us, i64 12 ; 3 uses
  %i.ff = zext i8 %i.ei to i64                    ; 3 uses
  %i.fg = zext i8 %i.du to i64                    ; 3 uses
  %i.fh = zext i8 %i.ee to i64                    ; 3 uses
  br label %.lr.ph697.us.us

.lr.ph697.us.us:                                  ; preds = %.thread554.us836.us, %.lr.ph827.split.split.us.split.us
  %.0382825.us833.us = phi i32 [ 4, %.lr.ph827.split.split.us.split.us ], [ %.3385.us838.us, %.thread554.us836.us ] ; 6 uses
  %.0386824.us834.us = phi i8 [ 0, %.lr.ph827.split.split.us.split.us ], [ %.1387.lcssa.us837.us, %.thread554.us836.us ] ; 7 uses
  %.0417822.us835.us = phi i32 [ %i.et, %.lr.ph827.split.split.us.split.us ], [ %i.fj, %.thread554.us836.us ]
  %.0417822.us835.us.fr = freeze i32 %.0417822.us835.us ; 3 uses
  %i.fi = trunc i32 %.0417822.us835.us.fr to i8   ; 7 uses
  %or.cond8.us.us.us.us = icmp slt i8 %i.fi, 32   ; 5 uses
  switch i32 %.0417822.us835.us.fr, label %.lr.ph697.split.us.split.us.split.us.split.us.us.us [
    i32 0, label %spec_ith_char.exit.us.us.us795.us.us
    i32 255, label %.lr.ph697.split.us.split.us.split.us.split.us931.us
  ]

.thread554.us836.us:                              ; preds = %bb.am, %bb.al, %spec_ith_char.exit517.us.us.us.us918.us, %bb.au, %bb.at, %spec_ith_char.exit.us.us.us.us915.us.us, %bb.as, %bb.ar, %spec_ith_char.exit517.us.us.us798.us.us, %bb.ax, %spec_ith_char.exit517.us.us.us.us.us.us, %bb.av, %spec_ith_char.exit.us.us.us.us.us.us.us.us, %bb.aw, %spec_ith_char.exit.us.us.us.us.us.us.us
  %.1387.lcssa.us837.us = phi i8 [ %.2388.us.us.us803.us.us, %bb.as ], [ %.0386824.us834.us, %bb.av ], [ %spec.select1062, %bb.aw ], [ %.1387695.us.us.us.us.us.us, %spec_ith_char.exit517.us.us.us.us.us.us ], [ %.1387695.us.us.us.us916.us.us, %spec_ith_char.exit.us.us.us.us915.us.us ], [ %.1387695.us.us.us.us.us.us.us, %spec_ith_char.exit.us.us.us.us.us.us.us ], [ %.0386824.us834.us, %spec_ith_char.exit.us.us.us.us.us.us.us.us ], [ %.2388.us.us.us.us.us.us, %bb.ax ], [ %.1387695.us.us.us796.us.us, %spec_ith_char.exit517.us.us.us798.us.us ], [ %.1387695.us.us.us796.us.us, %bb.ar ], [ %.2388.us.us.us.us922.us.us, %bb.au ], [ %.1387695.us.us.us.us916.us.us, %bb.at ], [ %.1387695.us.us.us.us916.us, %bb.al ], [ %.1387695.us.us.us.us916.us, %spec_ith_char.exit517.us.us.us.us918.us ], [ %.2388.us.us.us.us922.us, %bb.am ] ; 2 uses
  %.3385.us838.us = phi i32 [ %.0382825.us833.us, %bb.as ], [ %.0382825.us833.us, %bb.av ], [ %.0382825.us833.us, %bb.aw ], [ 3, %spec_ith_char.exit517.us.us.us.us.us.us ], [ 1, %spec_ith_char.exit.us.us.us.us915.us.us ], [ 3, %spec_ith_char.exit.us.us.us.us.us.us.us ], [ 3, %spec_ith_char.exit.us.us.us.us.us.us.us.us ], [ %.0382825.us833.us, %bb.ax ], [ 1, %spec_ith_char.exit517.us.us.us798.us.us ], [ 3, %bb.ar ], [ %.0382825.us833.us, %bb.au ], [ 3, %bb.at ], [ 3, %bb.al ], [ 1, %spec_ith_char.exit517.us.us.us.us918.us ], [ %.0382825.us833.us, %bb.am ] ; 2 uses
  %i.fj = add nuw nsw i32 %.0417822.us835.us.fr, %i.ey ; 2 uses
  %.not479.us839.us = icmp samesign ugt i32 %i.fj, %i.eu
  br i1 %.not479.us839.us, label %._crit_edge828, label %.lr.ph697.us.us

spec_ith_char.exit.us.us.us.us915.us:             ; preds = %.lr.ph697.split.us.split.us.split.us.split.us931.us.split.split, %bb.am
  %indvars.iv1232.a = phi i64 [ %i.ff, %.lr.ph697.split.us.split.us.split.us.split.us931.us.split.split ], [ %indvars.iv.next1233.a, %bb.am ] ; 3 uses
  %.1387695.us.us.us.us916.us = phi i8 [ %.0386824.us834.us, %.lr.ph697.split.us.split.us.split.us.split.us931.us.split.split ], [ %.2388.us.us.us.us922.us, %bb.am ] ; 3 uses
  %i.fk = icmp samesign ult i64 %indvars.iv1232.a, %i.gh
  br i1 %i.fk, label %spec_ith_char.exit517.us.us.us.us918.us, label %.split716.us

spec_ith_char.exit517.us.us.us.us918.us:          ; preds = %spec_ith_char.exit.us.us.us.us915.us
  %i.fl = load ptr, ptr %.val507.us.us.us.us, align 8, !tbaa !8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv1232.a
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
  %indvars.iv.next1233.a = add nuw nsw i64 %indvars.iv1232.a, %i.fg ; 2 uses
  %.not480.us.us.us.us923.us = icmp samesign ugt i64 %indvars.iv.next1233.a, %i.fh
  br i1 %.not480.us.us.us.us923.us, label %.thread554.us836.us, label %spec_ith_char.exit.us.us.us.us915.us

spec_ith_char.exit.us.us.us795.us.us:             ; preds = %.lr.ph697.us.us, %bb.as
  %indvars.iv1234.a = phi i64 [ %indvars.iv.next1235.a, %bb.as ], [ %i.ff, %.lr.ph697.us.us ] ; 4 uses
  %.1387695.us.us.us796.us.us = phi i8 [ %.2388.us.us.us803.us.us, %bb.as ], [ %.0386824.us834.us, %.lr.ph697.us.us ] ; 3 uses
  br i1 %.not.i515.us.us.us.us, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %spec_ith_char.exit.us.us.us795.us.us
  %i.fq = load i16, ptr %i.fd, align 2, !tbaa !22
  %i.fr = icmp eq i16 %i.fq, 1
  br i1 %i.fr, label %bb.ao, label %.split714.us

bb.ao:                                            ; preds = %bb.an
  %i.fs = load i16, ptr %i.fe, align 4, !tbaa !31
  %i.ft = zext i16 %i.fs to i64
  %i.fu = icmp samesign ult i64 %indvars.iv1234.a, %i.ft
  br i1 %i.fu, label %bb.ap, label %.split716.us
end_hunk_0
