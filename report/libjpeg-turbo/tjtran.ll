Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/tjtran?download=true
inline.NumInlined: 2
begin_hunk_0_@main:bb.a
  %or.cond595 = select i1 %.not557, i1 %i.s, i1 false
  br i1 %or.cond595, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.ay = add nsw i32 %.0505718, 1                ; 3 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %1, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !13 ; 3 uses
  %i.bc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #17
  %spec.select596 = call i64 @llvm.umax.i64(i64 %i.bc, i64 1) ; 2 uses
  %i.bd = call i32 @strncasecmp(ptr noundef nonnull %i.bb, ptr noundef nonnull @.str.9, i64 noundef %spec.select596) #17
  %.not558 = icmp eq i32 %i.bd, 0
  br i1 %.not558, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.h, align 16, !tbaa !18
  br label %bb.bd

bb.q:                                             ; preds = %bb.o
  %i.be = call i32 @strncasecmp(ptr noundef nonnull %i.bb, ptr noundef nonnull @.str.10, i64 noundef %spec.select596) #17
  %.not559 = icmp eq i32 %i.be, 0
  br i1 %.not559, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 2, ptr %i.h, align 16, !tbaa !18
  br label %bb.bd

bb.s:                                             ; preds = %bb.q
  %i.bf = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.bf)
  unreachable

bb.t:                                             ; preds = %bb.n
  %i.bg = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @str.27, i64 noundef %spec.select) #17
  %.not560 = icmp eq i32 %i.bg, 0
  br i1 %.not560, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.12, i64 noundef %spec.select) #17
  %.not561 = icmp eq i32 %i.bh, 0
  br i1 %.not561, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bi = load i32, ptr %i.i, align 4, !tbaa !17
  %i.bj = or i32 %i.bi, 8
  store i32 %i.bj, ptr %i.i, align 4, !tbaa !17
  br label %bb.bd

bb.w:                                             ; preds = %bb.u
  %i.bk = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.13, i64 noundef %spec.select) #17
  %.not562 = icmp eq i32 %i.bk, 0
  %or.cond602 = select i1 %.not562, i1 %i.s, i1 false
  br i1 %or.cond602, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bl = add nsw i32 %.0505718, 1                ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !13
  br label %bb.bd

bb.y:                                             ; preds = %bb.w
  %spec.select603 = call i64 @llvm.umax.i64(i64 %i.p, i64 5)
  %i.bp = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.14, i64 noundef %spec.select603) #17
  %.not563 = icmp eq i32 %i.bp, 0
  %or.cond605 = select i1 %.not563, i1 %i.s, i1 false
  br i1 %or.cond605, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.bq = add nsw i32 %.0505718, 1                ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %1, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !13
  %i.bu = call i64 @strtol(ptr noundef nonnull captures(none) %i.bt, ptr noundef null, i32 noundef 10) #16, !inline_history !9
  %i.bv = trunc i64 %i.bu to i32                  ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %bb.aa, label %bb.bd

bb.aa:                                            ; preds = %bb.z
  %i.bx = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.bx)
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.by = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.15, i64 noundef %spec.select) #17
  %.not564 = icmp eq i32 %i.by, 0
  %or.cond608 = select i1 %.not564, i1 %i.s, i1 false
  br i1 %or.cond608, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bz = add nsw i32 %.0505718, 1                ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !13
  %i.cd = call i64 @strtol(ptr noundef nonnull captures(none) %i.cc, ptr noundef null, i32 noundef 10) #16, !inline_history !9
  %i.ce = trunc i64 %i.cd to i32                  ; 2 uses
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bb.ad, label %bb.bd

bb.ad:                                            ; preds = %bb.ac
  %i.cg = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.cg)
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.ch = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @str.38, i64 noundef %spec.select) #17
  %.not565 = icmp eq i32 %i.ch, 0
  br i1 %.not565, label %bb.bd, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ci = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.17, i64 noundef %spec.select) #17
  %.not566 = icmp eq i32 %i.ci, 0
  br i1 %.not566, label %bb.bd, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cj = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @str.40, i64 noundef %spec.select583) #17
  %.not567 = icmp eq i32 %i.cj, 0
  br i1 %.not567, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ck = load i32, ptr %i.i, align 4, !tbaa !17
  %i.cl = or i32 %i.ck, 1
  store i32 %i.cl, ptr %i.i, align 4, !tbaa !17
  br label %bb.bd

bb.ai:                                            ; preds = %bb.ag
  %i.cm = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @str.46, i64 noundef %spec.select) #17
  %.not568 = icmp eq i32 %i.cm, 0
  br i1 %.not568, label %bb.bd, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cn = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.20, i64 noundef %spec.select583) #17
  %.not569 = icmp eq i32 %i.cn, 0
  %or.cond615 = select i1 %.not569, i1 %i.s, i1 false
  br i1 %or.cond615, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.co = add nsw i32 %.0505718, 1                ; 4 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !13 ; 4 uses
  %i.cs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cr) #17 ; 2 uses
  %spec.select616 = call i64 @llvm.umax.i64(i64 %i.cs, i64 2)
  %i.ct = call i32 @strncasecmp(ptr noundef nonnull %i.cr, ptr noundef nonnull @.str.21, i64 noundef %spec.select616) #17
  %.not570 = icmp eq i32 %i.ct, 0
  br i1 %.not570, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 5, ptr %i.h, align 16, !tbaa !18
  br label %bb.bd

bb.am:                                            ; preds = %bb.ak
  %spec.select617 = call i64 @llvm.umax.i64(i64 %i.cs, i64 3) ; 2 uses
  %i.cu = call i32 @strncasecmp(ptr noundef nonnull %i.cr, ptr noundef nonnull @.str.22, i64 noundef %spec.select617) #17
  %.not571 = icmp eq i32 %i.cu, 0
  br i1 %.not571, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 6, ptr %i.h, align 16, !tbaa !18
  br label %bb.bd

bb.ao:                                            ; preds = %bb.am
  %i.cv = call i32 @strncasecmp(ptr noundef nonnull %i.cr, ptr noundef nonnull @.str.23, i64 noundef %spec.select617) #17
  %.not572 = icmp eq i32 %i.cv, 0
  br i1 %.not572, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 7, ptr %i.h, align 16, !tbaa !18
  br label %bb.bd

bb.aq:                                            ; preds = %bb.ao
  %i.cw = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.cw)
  unreachable

bb.ar:                                            ; preds = %bb.aj
  %i.cx = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.24, i64 noundef %spec.select) #17
  %.not573 = icmp eq i32 %i.cx, 0
  %or.cond621 = select i1 %.not573, i1 %i.s, i1 false
  br i1 %or.cond621, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i32 -1, ptr %i.d, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i8 0, ptr %i.e, align 1, !tbaa !14
  %i.cy = add nsw i32 %.0505718, 1                ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !13
  %i.dc = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.db, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #16 ; 2 uses
  %i.dd = icmp slt i32 %i.dc, 1
  %i.de = load i32, ptr %i.d, align 4             ; 3 uses
  %i.df = icmp ugt i32 %i.de, 65535
  %or.cond22 = select i1 %i.dd, i1 true, i1 %i.df
  br i1 %or.cond22, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dg = icmp eq i32 %i.dc, 2
  %i.dh = load i8, ptr %i.e, align 1
  %i.di = and i8 %i.dh, -33
  %i.dj = icmp ne i8 %i.di, 66                    ; 3 uses
  %or.cond28 = select i1 %i.dg, i1 %i.dj, i1 false
  br i1 %or.cond28, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.dk = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.dk)
  unreachable

bb.av:                                            ; preds = %bb.at
  %..0478 = select i1 %i.dj, i32 %.0478724, i32 %i.de
  %.0475. = select i1 %i.dj, i32 %i.de, i32 %.0475725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.bd

bb.aw:                                            ; preds = %bb.ar
  %i.dl = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @str.53, i64 noundef %spec.select) #17
  %.not574 = icmp eq i32 %i.dl, 0
  br i1 %.not574, label %bb.bd, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %spec.select623 = call i64 @llvm.umax.i64(i64 %i.p, i64 7)
  %i.dm = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.27, i64 noundef %spec.select623) #17
  %.not575 = icmp eq i32 %i.dm, 0
  br i1 %.not575, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 4, ptr %i.h, align 16, !tbaa !18
  br label %bb.bd

bb.az:                                            ; preds = %bb.ax
  %spec.select624 = call i64 @llvm.umax.i64(i64 %i.p, i64 4)
  %i.dn = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @str.57, i64 noundef %spec.select624) #17
  %.not576 = icmp eq i32 %i.dn, 0
  br i1 %.not576, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.do = load i32, ptr %i.i, align 4, !tbaa !17
  %i.dp = or i32 %i.do, 2
  store i32 %i.dp, ptr %i.i, align 4, !tbaa !17
  br label %bb.bd

bb.bb:                                            ; preds = %bb.az
  %i.dq = call i32 @strncasecmp(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.29, i64 noundef %spec.select) #17
  %.not577 = icmp eq i32 %i.dq, 0
  br i1 %.not577, label %bb.bc, label %._crit_edge

bb.bc:                                            ; preds = %bb.bb
  store i32 3, ptr %i.h, align 16, !tbaa !18
  br label %bb.bd

bb.bd:                                            ; preds = %bb.aw, %bb.ai, %bb.ae, %bb.af, %bb.ac, %bb.z, %bb.k, %bb.j, %bb.i, %bb.b, %bb.l, %bb.v, %bb.av, %bb.ay, %bb.bc, %bb.ba, %bb.al, %bb.ap, %bb.an, %bb.ah, %bb.x, %bb.p, %bb.r, %bb.g
  %.1506 = phi i32 [ %.0505718, %bb.bc ], [ %.0505718, %bb.ba ], [ %.0505718, %bb.ay ], [ %.0505718, %bb.ai ], [ %i.cy, %bb.av ], [ %.0505718, %bb.aw ], [ %i.co, %bb.ap ], [ %i.co, %bb.an ], [ %i.co, %bb.al ], [ %.0505718, %bb.ae ], [ %.0505718, %bb.ah ], [ %i.bz, %bb.ac ], [ %i.bq, %bb.z ], [ %i.an, %bb.k ], [ %i.bl, %bb.x ], [ %.0505718, %bb.v ], [ %.0505718, %bb.af ], [ %i.ay, %bb.r ], [ %i.ay, %bb.p ], [ %i.t, %bb.g ], [ %i.an, %bb.l ], [ %i.an, %bb.j ], [ %i.an, %bb.i ], [ %.0505718, %bb.b ]
  %.1490 = phi i32 [ %.0489719, %bb.bc ], [ %.0489719, %bb.ba ], [ %.0489719, %bb.ay ], [ %.0489719, %bb.ai ], [ %.0489719, %bb.av ], [ %.0489719, %bb.aw ], [ %.0489719, %bb.ap ], [ %.0489719, %bb.an ], [ %.0489719, %bb.al ], [ %.0489719, %bb.ae ], [ %.0489719, %bb.ah ], [ %.0489719, %bb.ac ], [ %.0489719, %bb.z ], [ %.0489719, %bb.k ], [ %.0489719, %bb.x ], [ %.0489719, %bb.v ], [ %.0489719, %bb.af ], [ %.0489719, %bb.r ], [ %.0489719, %bb.p ], [ %.0489719, %bb.g ], [ %.0489719, %bb.l ], [ %.0489719, %bb.j ], [ %.0489719, %bb.i ], [ 1, %bb.b ] ; 2 uses
  %.1488 = phi i32 [ %.0487720, %bb.bc ], [ %.0487720, %bb.ba ], [ %.0487720, %bb.ay ], [ %.0487720, %bb.ai ], [ %.0487720, %bb.av ], [ %.0487720, %bb.aw ], [ %.0487720, %bb.ap ], [ %.0487720, %bb.an ], [ %.0487720, %bb.al ], [ %.0487720, %bb.ae ], [ %.0487720, %bb.ah ], [ %i.ce, %bb.ac ], [ %.0487720, %bb.z ], [ %.0487720, %bb.k ], [ %.0487720, %bb.x ], [ %.0487720, %bb.v ], [ %.0487720, %bb.af ], [ %.0487720, %bb.r ], [ %.0487720, %bb.p ], [ %.0487720, %bb.g ], [ %.0487720, %bb.l ], [ %.0487720, %bb.j ], [ %.0487720, %bb.i ], [ %.0487720, %bb.b ] ; 2 uses
  %.1486 = phi i32 [ %.0485721, %bb.bc ], [ %.0485721, %bb.ba ], [ %.0485721, %bb.ay ], [ %.0485721, %bb.ai ], [ %.0485721, %bb.av ], [ %.0485721, %bb.aw ], [ %.0485721, %bb.ap ], [ %.0485721, %bb.an ], [ %.0485721, %bb.al ], [ %.0485721, %bb.ae ], [ %.0485721, %bb.ah ], [ %.0485721, %bb.ac ], [ %i.bv, %bb.z ], [ %.0485721, %bb.k ], [ %.0485721, %bb.x ], [ %.0485721, %bb.v ], [ %.0485721, %bb.af ], [ %.0485721, %bb.r ], [ %.0485721, %bb.p ], [ %.0485721, %bb.g ], [ %.0485721, %bb.l ], [ %.0485721, %bb.j ], [ %.0485721, %bb.i ], [ %.0485721, %bb.b ] ; 2 uses
  %.1484 = phi i32 [ %.0483722, %bb.bc ], [ %.0483722, %bb.ba ], [ %.0483722, %bb.ay ], [ %.0483722, %bb.ai ], [ %.0483722, %bb.av ], [ %.0483722, %bb.aw ], [ %.0483722, %bb.ap ], [ %.0483722, %bb.an ], [ %.0483722, %bb.al ], [ 1, %bb.ae ], [ %.0483722, %bb.ah ], [ %.0483722, %bb.ac ], [ %.0483722, %bb.z ], [ %.0483722, %bb.k ], [ %.0483722, %bb.x ], [ %.0483722, %bb.v ], [ 1, %bb.af ], [ %.0483722, %bb.r ], [ %.0483722, %bb.p ], [ %.0483722, %bb.g ], [ %.0483722, %bb.l ], [ %.0483722, %bb.j ], [ %.0483722, %bb.i ], [ %.0483722, %bb.b ] ; 2 uses
  %.1482 = phi i32 [ %.0481723, %bb.bc ], [ %.0481723, %bb.ba ], [ %.0481723, %bb.ay ], [ 1, %bb.ai ], [ %.0481723, %bb.av ], [ %.0481723, %bb.aw ], [ %.0481723, %bb.ap ], [ %.0481723, %bb.an ], [ %.0481723, %bb.al ], [ %.0481723, %bb.ae ], [ %.0481723, %bb.ah ], [ %.0481723, %bb.ac ], [ %.0481723, %bb.z ], [ %.0481723, %bb.k ], [ %.0481723, %bb.x ], [ %.0481723, %bb.v ], [ %.0481723, %bb.af ], [ %.0481723, %bb.r ], [ %.0481723, %bb.p ], [ %.0481723, %bb.g ], [ %.0481723, %bb.l ], [ %.0481723, %bb.j ], [ %.0481723, %bb.i ], [ %.0481723, %bb.b ] ; 2 uses
  %.2480 = phi i32 [ %.0478724, %bb.bc ], [ %.0478724, %bb.ba ], [ %.0478724, %bb.ay ], [ %.0478724, %bb.ai ], [ %..0478, %bb.av ], [ %.0478724, %bb.aw ], [ %.0478724, %bb.ap ], [ %.0478724, %bb.an ], [ %.0478724, %bb.al ], [ %.0478724, %bb.ae ], [ %.0478724, %bb.ah ], [ %.0478724, %bb.ac ], [ %.0478724, %bb.z ], [ %.0478724, %bb.k ], [ %.0478724, %bb.x ], [ %.0478724, %bb.v ], [ %.0478724, %bb.af ], [ %.0478724, %bb.r ], [ %.0478724, %bb.p ], [ %.0478724, %bb.g ], [ %.0478724, %bb.l ], [ %.0478724, %bb.j ], [ %.0478724, %bb.i ], [ %.0478724, %bb.b ] ; 2 uses
  %.2477 = phi i32 [ %.0475725, %bb.bc ], [ %.0475725, %bb.ba ], [ %.0475725, %bb.ay ], [ %.0475725, %bb.ai ], [ %.0475., %bb.av ], [ %.0475725, %bb.aw ], [ %.0475725, %bb.ap ], [ %.0475725, %bb.an ], [ %.0475725, %bb.al ], [ %.0475725, %bb.ae ], [ %.0475725, %bb.ah ], [ %.0475725, %bb.ac ], [ %.0475725, %bb.z ], [ %.0475725, %bb.k ], [ %.0475725, %bb.x ], [ %.0475725, %bb.v ], [ %.0475725, %bb.af ], [ %.0475725, %bb.r ], [ %.0475725, %bb.p ], [ %.0475725, %bb.g ], [ %.0475725, %bb.l ], [ %.0475725, %bb.j ], [ %.0475725, %bb.i ], [ %.0475725, %bb.b ] ; 2 uses
  %.1473 = phi i32 [ %.0472726, %bb.bc ], [ %.0472726, %bb.ba ], [ %.0472726, %bb.ay ], [ %.0472726, %bb.ai ], [ %.0472726, %bb.av ], [ %.0472726, %bb.aw ], [ %.0472726, %bb.ap ], [ %.0472726, %bb.an ], [ %.0472726, %bb.al ], [ %.0472726, %bb.ae ], [ %.0472726, %bb.ah ], [ %.0472726, %bb.ac ], [ %.0472726, %bb.z ], [ 0, %bb.k ], [ %.0472726, %bb.x ], [ %.0472726, %bb.v ], [ %.0472726, %bb.af ], [ %.0472726, %bb.r ], [ %.0472726, %bb.p ], [ %.0472726, %bb.g ], [ %.0472726, %bb.l ], [ 4, %bb.j ], [ 2, %bb.i ], [ %.0472726, %bb.b ] ; 2 uses
  %.1471 = phi i32 [ %.0470727, %bb.bc ], [ %.0470727, %bb.ba ], [ %.0470727, %bb.ay ], [ %.0470727, %bb.ai ], [ %.0470727, %bb.av ], [ 1, %bb.aw ], [ %.0470727, %bb.ap ], [ %.0470727, %bb.an ], [ %.0470727, %bb.al ], [ %.0470727, %bb.ae ], [ %.0470727, %bb.ah ], [ %.0470727, %bb.ac ], [ %.0470727, %bb.z ], [ %.0470727, %bb.k ], [ %.0470727, %bb.x ], [ %.0470727, %bb.v ], [ %.0470727, %bb.af ], [ %.0470727, %bb.r ], [ %.0470727, %bb.p ], [ %.0470727, %bb.g ], [ %.0470727, %bb.l ], [ %.0470727, %bb.j ], [ %.0470727, %bb.i ], [ %.0470727, %bb.b ] ; 2 uses
  %.1468 = phi ptr [ %.0467728, %bb.bc ], [ %.0467728, %bb.ba ], [ %.0467728, %bb.ay ], [ %.0467728, %bb.ai ], [ %.0467728, %bb.av ], [ %.0467728, %bb.aw ], [ %.0467728, %bb.ap ], [ %.0467728, %bb.an ], [ %.0467728, %bb.al ], [ %.0467728, %bb.ae ], [ %.0467728, %bb.ah ], [ %.0467728, %bb.ac ], [ %.0467728, %bb.z ], [ %.0467728, %bb.k ], [ %i.bo, %bb.x ], [ %.0467728, %bb.v ], [ %.0467728, %bb.af ], [ %.0467728, %bb.r ], [ %.0467728, %bb.p ], [ %.0467728, %bb.g ], [ %.0467728, %bb.l ], [ %.0467728, %bb.j ], [ %.0467728, %bb.i ], [ %.0467728, %bb.b ] ; 2 uses
  %i.dr = add nsw i32 %.1506, 1                   ; 3 uses
  %i.ds = icmp slt i32 %i.dr, %0
  br i1 %i.ds, label %bb.b, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.bd, %bb.bb
  %.0505.lcssa = phi i32 [ %.0505718, %bb.bb ], [ %i.dr, %bb.bd ] ; 2 uses
  %.0489.lcssa = phi i32 [ %.0489719, %bb.bb ], [ %.1490, %bb.bd ]
  %.0487.lcssa = phi i32 [ %.0487720, %bb.bb ], [ %.1488, %bb.bd ] ; 2 uses
  %.0485.lcssa = phi i32 [ %.0485721, %bb.bb ], [ %.1486, %bb.bd ] ; 2 uses
  %.0483.lcssa = phi i32 [ %.0483722, %bb.bb ], [ %.1484, %bb.bd ] ; 2 uses
  %.0481.lcssa = phi i32 [ %.0481723, %bb.bb ], [ %.1482, %bb.bd ]
  %.0478.lcssa = phi i32 [ %.0478724, %bb.bb ], [ %.2480, %bb.bd ] ; 2 uses
  %.0475.lcssa = phi i32 [ %.0475725, %bb.bb ], [ %.2477, %bb.bd ] ; 2 uses
  %.0472.lcssa = phi i32 [ %.0472726, %bb.bb ], [ %.1473, %bb.bd ] ; 4 uses
  %.0470.lcssa = phi i32 [ %.0470727, %bb.bb ], [ %.1471, %bb.bd ] ; 15 uses
  %.0467.lcssa = phi ptr [ %.0467728, %bb.bb ], [ %.1468, %bb.bd ] ; 3 uses
  %i.dt = add nsw i32 %0, -2
  %.not578 = icmp eq i32 %.0505.lcssa, %i.dt
  br i1 %.not578, label %bb.be, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.du = load ptr, ptr %1, align 8, !tbaa !13
  call fastcc void @usage(ptr noundef %i.du)
  unreachable

bb.be:                                            ; preds = %._crit_edge
  %.not579 = icmp eq ptr %.0467.lcssa, null       ; 2 uses
  br i1 %.not579, label %.thread786, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dv = icmp eq i32 %.0472.lcssa, 2
  br i1 %i.dv, label %.thread786, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dw = icmp eq i32 %.0472.lcssa, 4
  %spec.store.select = select i1 %i.dw, i32 0, i32 %.0472.lcssa
  br label %.thread786

.thread786:                                       ; preds = %bb.bf, %bb.bg, %bb.be
  %.0467.lcssa785799 = phi ptr [ null, %bb.be ], [ %.0467.lcssa, %bb.bg ], [ %.0467.lcssa, %bb.bf ]
  %.2474 = phi i32 [ %.0472.lcssa, %bb.be ], [ %spec.store.select, %bb.bg ], [ 3, %bb.bf ]
  %i.dx = call ptr @tj3InitVersion(i32 noundef 2, i32 noundef 3002000) #16 ; 39 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.thread786
  %i.dz = call i32 @tj3GetErrorCode(ptr noundef null) #16 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 0
  %i.eb = select i1 %i.ea, ptr @.str.31, ptr @.str.32
  %i.ec = call ptr @tj3GetErrorStr(ptr noundef null) #16
  %i.ed = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.eb, i32 noundef 270, ptr noundef nonnull @.str.33, ptr noundef %i.ec) ; 0 uses
  %i.ee = icmp eq i32 %i.dz, 1
  %i.ef = icmp eq i32 %.0470.lcssa, 1
  %or.cond33 = select i1 %i.ee, i1 true, i1 %i.ef
  br i1 %or.cond33, label %bb.dv, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.thread786
  %i.eg = icmp sgt i32 %.0470.lcssa, -1
  br i1 %i.eg, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.eh = call i32 @tj3Set(ptr noundef %i.dx, i32 noundef 0, i32 noundef %.0470.lcssa) #16
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ej = call i32 @tj3GetErrorCode(ptr noundef %i.dx) #16 ; 2 uses
  %i.ek = icmp eq i32 %i.ej, 0
  %i.el = select i1 %i.ek, ptr @.str.31, ptr @.str.32
  %i.em = call ptr @tj3GetErrorStr(ptr noundef %i.dx) #16
  %i.en = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.el, i32 noundef 274, ptr noundef nonnull @.str.34, ptr noundef %i.em) ; 0 uses
  %i.eo = icmp eq i32 %i.ej, 1
  %i.ep = icmp eq i32 %.0470.lcssa, 1
  %or.cond35 = select i1 %i.eo, i1 true, i1 %i.ep
  br i1 %or.cond35, label %bb.dv, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.eq = icmp sgt i32 %.0483.lcssa, -1
  br i1 %i.eq, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.er = call i32 @tj3Set(ptr noundef %i.dx, i32 noundef 11, i32 noundef %.0483.lcssa) #16
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.et = call i32 @tj3GetErrorCode(ptr noundef %i.dx) #16 ; 2 uses
  %i.eu = icmp eq i32 %i.et, 0
  %i.ev = select i1 %i.eu, ptr @.str.31, ptr @.str.32
  %i.ew = call ptr @tj3GetErrorStr(ptr noundef %i.dx) #16
  %i.ex = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.ev, i32 noundef 276, ptr noundef nonnull @.str.35, ptr noundef %i.ew) ; 0 uses
  %i.ey = icmp eq i32 %i.et, 1
  %i.ez = icmp eq i32 %.0470.lcssa, 1
  %or.cond37 = select i1 %i.ey, i1 true, i1 %i.ez
  br i1 %or.cond37, label %bb.dv, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.fa = icmp sgt i32 %.0485.lcssa, -1
  br i1 %i.fa, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.fb = call i32 @tj3Set(ptr noundef %i.dx, i32 noundef 13, i32 noundef %.0485.lcssa) #16
  %i.fc = icmp slt i32 %i.fb, 0
  br i1 %i.fc, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.fd = call i32 @tj3GetErrorCode(ptr noundef %i.dx) #16 ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 0
  %i.ff = select i1 %i.fe, ptr @.str.31, ptr @.str.32
  %i.fg = call ptr @tj3GetErrorStr(ptr noundef %i.dx) #16
  %i.fh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.ff, i32 noundef 278, ptr noundef nonnull @.str.36, ptr noundef %i.fg) ; 0 uses
  %i.fi = icmp eq i32 %i.fd, 1
  %i.fj = icmp eq i32 %.0470.lcssa, 1
  %or.cond39 = select i1 %i.fi, i1 true, i1 %i.fj
  br i1 %or.cond39, label %bb.dv, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.fk = icmp sgt i32 %.0478.lcssa, -1
  br i1 %i.fk, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.fl = call i32 @tj3Set(ptr noundef %i.dx, i32 noundef 18, i32 noundef %.0478.lcssa) #16
  %i.fm = icmp slt i32 %i.fl, 0
  br i1 %i.fm, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.fn = call i32 @tj3GetErrorCode(ptr noundef %i.dx) #16 ; 2 uses
  %i.fo = icmp eq i32 %i.fn, 0
  %i.fp = select i1 %i.fo, ptr @.str.31, ptr @.str.32
  %i.fq = call ptr @tj3GetErrorStr(ptr noundef %i.dx) #16
  %i.fr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.fp, i32 noundef 281, ptr noundef nonnull @.str.37, ptr noundef %i.fq) ; 0 uses
  %i.fs = icmp eq i32 %i.fn, 1
  %i.ft = icmp eq i32 %.0470.lcssa, 1
  %or.cond41 = select i1 %i.fs, i1 true, i1 %i.ft
  br i1 %or.cond41, label %bb.dv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.fu = icmp sgt i32 %.0475.lcssa, -1
  br i1 %i.fu, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.fv = call i32 @tj3Set(ptr noundef %i.dx, i32 noundef 19, i32 noundef %.0475.lcssa) #16
  %i.fw = icmp slt i32 %i.fv, 0
  br i1 %i.fw, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.fx = call i32 @tj3GetErrorCode(ptr noundef %i.dx) #16 ; 2 uses
  %i.fy = icmp eq i32 %i.fx, 0
end_hunk_0
