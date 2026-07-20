inline.NumInlined: 16
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 19
begin_hunk_0_@bn_mod_exp_mont_fixed_top:bb.a
bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !11   ; 64 uses
  %i.d = icmp sgt i32 %i.c, 1048575
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @BN_mod_exp_mont(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5)
  br label %bb.az

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !11   ; 6 uses
  %i.h = shl nsw i32 %i.g, 6                      ; 4 uses
  %i.i = icmp eq i32 %i.g, 0
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i32 @BN_abs_is_word(ptr noundef nonnull %3, i64 noundef 1) #7
  %.not336 = icmp eq i32 %i.j, 0
  br i1 %.not336, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @BN_zero_ex(ptr noundef %0) #7
  br label %bb.az

bb.h:                                             ; preds = %bb.f
  %i.k = tail call i32 @BN_set_word(ptr noundef %0, i64 noundef 1) #7
  br label %bb.az

bb.i:                                             ; preds = %bb.e
  tail call void @BN_CTX_start(ptr noundef %4) #7
  %.not318 = icmp eq ptr %5, null                 ; 2 uses
  br i1 %.not318, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.l = tail call ptr @BN_MONT_CTX_new() #7      ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread384, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = tail call i32 @BN_MONT_CTX_set(ptr noundef nonnull %i.l, ptr noundef nonnull %3, ptr noundef %4) #7
  %.not319 = icmp eq i32 %i.n, 0
  br i1 %.not319, label %.thread384, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.0303 = phi ptr [ %i.l, %bb.k ], [ %5, %bb.i ] ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !15
  %.not320 = icmp eq i32 %i.p, 0
  br i1 %.not320, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.q = tail call i32 @BN_ucmp(ptr noundef nonnull %1, ptr noundef nonnull %3) #7
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.s = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = tail call i32 @BN_nnmod(ptr noundef nonnull %i.s, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef %4) #7
  %.not321 = icmp eq i32 %i.u, 0
  br i1 %.not321, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.1 = phi ptr [ %1, %bb.m ], [ %i.s, %bb.o ]    ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !11   ; 2 uses
  %i.x = icmp eq i32 %i.w, 16
  br i1 %i.x, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.y = load i32, ptr %i.f, align 8, !tbaa !11
  %i.z = icmp eq i32 %i.y, 16
  br i1 %i.z, label %bb.r, label %.thread382

bb.r:                                             ; preds = %bb.q
  %i.aa = tail call i32 @BN_num_bits(ptr noundef nonnull %3) #7
  %i.ab = icmp eq i32 %i.aa, 1024
  br i1 %i.ab, label %bb.s, label %thread-pre-split

bb.s:                                             ; preds = %bb.r
  %i.ac = tail call i32 @rsaz_avx2_eligible() #7
  %.not322 = icmp eq i32 %i.ac, 0
  br i1 %.not322, label %thread-pre-split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ad = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef 16) #7
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.af = load ptr, ptr %0, align 8, !tbaa !16
  %i.ag = load ptr, ptr %.1, align 8, !tbaa !16
  %i.ah = load ptr, ptr %2, align 8, !tbaa !16
  %i.ai = load ptr, ptr %3, align 8, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %.0303, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %.0303, i64 80
  %i.am = load i64, ptr %i.al, align 8, !tbaa !17
  tail call void @RSAZ_1024_mod_exp_avx2(ptr noundef %i.af, ptr noundef %i.ag, ptr noundef %i.ah, ptr noundef %i.ai, ptr noundef %i.ak, i64 noundef %i.am) #7
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 16, ptr %i.an, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.ao, align 8, !tbaa !15
  tail call void @bn_correct_top(ptr noundef nonnull %0) #7
  br label %.thread

thread-pre-split:                                 ; preds = %bb.r, %bb.s
  %.pr = load i32, ptr %i.v, align 8, !tbaa !11
  br label %bb.v

bb.v:                                             ; preds = %thread-pre-split, %bb.p
  %i.ap = phi i32 [ %.pr, %thread-pre-split ], [ %i.w, %bb.p ]
  %i.aq = icmp eq i32 %i.ap, 8
  br i1 %i.aq, label %bb.w, label %.thread382

bb.w:                                             ; preds = %bb.v
  %i.ar = load i32, ptr %i.f, align 8, !tbaa !11
  %i.as = icmp eq i32 %i.ar, 8
  br i1 %i.as, label %bb.x, label %.thread382

bb.x:                                             ; preds = %bb.w
  %i.at = tail call i32 @BN_num_bits(ptr noundef nonnull %3) #7
  %i.au = icmp eq i32 %i.at, 512
  br i1 %i.au, label %bb.y, label %.thread382

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef 8) #7
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ax = load ptr, ptr %0, align 8, !tbaa !16
  %i.ay = load ptr, ptr %.1, align 8, !tbaa !16
  %i.az = load ptr, ptr %2, align 8, !tbaa !16
  %i.ba = load ptr, ptr %3, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %.0303, i64 80
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %.0303, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !35
  tail call void @RSAZ_512_mod_exp(ptr noundef %i.ax, ptr noundef %i.ay, ptr noundef %i.az, ptr noundef %i.ba, i64 noundef %i.bc, ptr noundef %i.be) #7
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 8, ptr %i.bf, align 8, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.bg, align 8, !tbaa !15
  tail call void @bn_correct_top(ptr noundef nonnull %0) #7
  br label %.thread

.thread382:                                       ; preds = %bb.q, %bb.v, %bb.w, %bb.x
  %i.bh = icmp sgt i32 %i.g, 14
  br i1 %i.bh, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.thread382
  %i.bi = icmp sgt i32 %i.g, 4
  br i1 %i.bi, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bj = icmp sgt i32 %i.g, 1
  %.inv = icmp slt i32 %i.g, 1
  %i.bk = select i1 %.inv, i32 1, i32 3
  %i.bl = select i1 %i.bj, i32 4, i32 %i.bk
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.thread382
  %i.bm = phi i32 [ 6, %.thread382 ], [ %i.bl, %bb.ab ], [ 5, %bb.aa ] ; 2 uses
  %i.bn = icmp samesign ugt i32 %i.bm, 4
  %i.bo = icmp slt i32 %i.c, 513
  %or.cond = and i1 %i.bo, %i.bn                  ; 2 uses
  %i.bp = shl i32 %i.c, 3
  %spec.select = select i1 %or.cond, i32 5, i32 %i.bm ; 10 uses
  %spec.select338 = select i1 %or.cond, i32 %i.bp, i32 0
  %i.bq = shl nuw nsw i32 1, %spec.select         ; 7 uses
  %i.br = shl nsw i32 %i.c, %spec.select
  %i.bs = shl nsw i32 %i.c, 1
  %i.bt = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 %i.bq)
  %i.bu = add nsw i32 %i.bt, %i.br
  %i.bv = shl i32 %i.bu, 3
  %i.bw = add i32 %i.bv, %spec.select338          ; 13 uses
  %i.bx = icmp slt i32 %i.bw, 3072
  %i.by = add nsw i32 %i.bw, 64                   ; 2 uses
  br i1 %i.bx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bz = sext i32 %i.by to i64
  %i.ca = alloca i8, i64 %i.bz, align 16
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cb = zext nneg i32 %i.by to i64
  %i.cc = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.cb, ptr noundef nonnull @.str, i32 noundef 729) #7 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %spec.select339 = phi ptr [ null, %bb.ad ], [ %i.cc, %bb.ae ] ; 9 uses
  %.0297 = phi ptr [ %i.ca, %bb.ad ], [ %i.cc, %bb.ae ] ; 2 uses
  %i.ce = ptrtoint ptr %.0297 to i64              ; 3 uses
  %i.cf = and i64 %i.ce, 63
  %i.cg = sub nuw nsw i64 64, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %.0297, i64 %i.cg ; 83 uses
  %i.ci = sext i32 %i.bw to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ch, i8 0, i64 %i.ci, i1 false)
  %i.cj = sext i32 %i.c to i64                    ; 37 uses
  %i.ck = shl nsw i64 %i.cj, 3
  %i.cl = zext nneg i32 %spec.select to i64
  %i.cm = shl nsw i64 %i.ck, %i.cl                ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cm ; 9 uses
  store ptr %i.cn, ptr %6, align 8, !tbaa !16
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.cj
  store ptr %i.co, ptr %7, align 8, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i32 0, ptr %i.cp, align 8, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i32 0, ptr %i.cq, align 8, !tbaa !11
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.c, ptr %i.cr, align 4, !tbaa !37
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.c, ptr %i.cs, align 4, !tbaa !37
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.ct, align 8, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.cu, align 8, !tbaa !15
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 2, ptr %i.cv, align 4, !tbaa !38
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 2, ptr %i.cw, align 4, !tbaa !38
  %i.cx = load ptr, ptr %3, align 8, !tbaa !16    ; 9 uses
  %i.cy = ptrtoaddr ptr %i.cx to i64
  %i.cz = getelementptr [8 x i8], ptr %i.cx, i64 %i.cj
  %i.da = getelementptr i8, ptr %i.cz, i64 -8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !17
  %.not323 = icmp sgt i64 %i.db, -1
  br i1 %.not323, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = load i64, ptr %i.cx, align 8, !tbaa !17
  %i.dd = sub i64 0, %i.dc
  store i64 %i.dd, ptr %i.cn, align 8, !tbaa !17
  %i.de = icmp sgt i32 %i.c, 1
  br i1 %i.de, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ag
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 4 uses
  %i.df = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i64 %i.df, 14
  br i1 %min.iters.check, label %.lr.ph.preheader580, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.dg = add i64 %i.cm, %i.ce
  %8 = and i64 %i.ce, 63
  %i.dh = add i64 %8, %i.cy
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = add i64 %i.di, 63
  %diff.check = icmp ult i64 %i.dj, 31
  br i1 %diff.check, label %.lr.ph.preheader580, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.df, -4                      ; 3 uses
  %i.dk = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = or disjoint i64 %index, 1               ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load = load <2 x i64>, ptr %i.dm, align 8, !tbaa !17
  %wide.load488 = load <2 x i64>, ptr %i.dn, align 8, !tbaa !17
  %i.do = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.dp = xor <2 x i64> %wide.load488, splat (i64 -1)
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dl ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store <2 x i64> %i.do, ptr %i.dq, align 8, !tbaa !17
  store <2 x i64> %i.dp, ptr %i.dr, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader580

.lr.ph.preheader580:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.dk, %middle.block ] ; 4 uses
  %i.dt = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.dt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader580, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader580 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader580 ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.prol
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !17
  %i.dw = xor i64 %i.dv, -1
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.prol
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !17
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !40

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader580
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader580 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.dy = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !17
  %i.ec = xor i64 %i.eb, -1
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !17
  %i.eg = xor i64 %i.ef, -1
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.next
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next.1
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !17
  %i.ek = xor i64 %i.ej, -1
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.next.1
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !17
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next.2
  %i.en = load i64, ptr %i.em, align 8, !tbaa !17
  %i.eo = xor i64 %i.en, -1
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.next.2
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !17
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.ag
  store i32 %i.c, ptr %i.cq, align 8, !tbaa !11
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.eq = call ptr @BN_value_one() #7
  %i.er = call i32 @bn_to_mont_fixed_top(ptr noundef nonnull %6, ptr noundef %i.eq, ptr noundef nonnull %.0303, ptr noundef %4) #7
  %.not324 = icmp eq i32 %i.er, 0
  br i1 %.not324, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge
  %i.es = call i32 @bn_to_mont_fixed_top(ptr noundef nonnull %7, ptr noundef nonnull %.1, ptr noundef nonnull %.0303, ptr noundef %4) #7
  %.not325 = icmp eq i32 %i.es, 0
  br i1 %.not325, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.et = icmp sgt i32 %i.c, 512
  br i1 %i.et, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eu = icmp eq i32 %spec.select, 5
  %i.ev = icmp sgt i32 %i.c, 1
  %or.cond3 = and i1 %i.ev, %i.eu
  br i1 %or.cond3, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ew = getelementptr inbounds nuw i8, ptr %.0303, i64 80 ; 37 uses
  %i.ex = load i32, ptr %i.cp, align 8, !tbaa !11 ; 3 uses
  %i.ey = icmp slt i32 %i.ex, %i.c
  br i1 %i.ey, label %.lr.ph412, label %._crit_edge413

.lr.ph412:                                        ; preds = %bb.al
  %i.ez = load ptr, ptr %7, align 8, !tbaa !16
  %i.fa = sext i32 %i.ex to i64
  %i.fb = shl nsw i64 %i.fa, 3
  %scevgep = getelementptr i8, ptr %i.ez, i64 %i.fb
  %i.fc = xor i32 %i.ex, -1
  %i.fd = add i32 %i.c, %i.fc
  %i.fe = zext i32 %i.fd to i64
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = add nuw nsw i64 %i.ff, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.fg, i1 false), !tbaa !17
  br label %._crit_edge413

._crit_edge413:                                   ; preds = %.lr.ph412, %bb.al
  %i.fh = load i32, ptr %i.cq, align 8, !tbaa !11 ; 3 uses
  %i.fi = icmp slt i32 %i.fh, %i.c
  br i1 %i.fi, label %.lr.ph416, label %.lr.ph420

.lr.ph416:                                        ; preds = %._crit_edge413
  %i.fj = load ptr, ptr %6, align 8, !tbaa !16
  %i.fk = sext i32 %i.fh to i64
  %i.fl = shl nsw i64 %i.fk, 3
  %scevgep445 = getelementptr i8, ptr %i.fj, i64 %i.fl
  %i.fm = xor i32 %i.fh, -1
  %i.fn = add i32 %i.c, %i.fm
  %i.fo = zext i32 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, 3
  %i.fq = add nuw nsw i64 %i.fp, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep445, i8 0, i64 %i.fq, i1 false), !tbaa !17
  br label %.lr.ph420

.lr.ph420:                                        ; preds = %._crit_edge413, %.lr.ph416
  %i.fr = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.cj ; 43 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.0303, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !42 ; 7 uses
  %wide.trip.count452 = zext nneg i32 %i.c to i64 ; 5 uses
  %min.iters.check492 = icmp ult i32 %i.c, 14
  br i1 %min.iters.check492, label %scalar.ph491.preheader, label %vector.memcheck489

vector.memcheck489:                               ; preds = %.lr.ph420
  %i.fv = ptrtoaddr ptr %i.fu to i64
  %i.fw = ptrtoaddr ptr %i.fr to i64
  %i.fx = shl nuw nsw i64 %i.cj, 3
  %i.fy = add i64 %i.fx, %i.fw
  %i.fz = sub i64 %i.fv, %i.fy
  %diff.check490 = icmp ugt i64 %i.fz, -32
  br i1 %diff.check490, label %scalar.ph491.preheader, label %vector.ph493

vector.ph493:                                     ; preds = %vector.memcheck489
  %n.vec495 = and i64 %wide.trip.count452, 2147483644 ; 3 uses
  br label %vector.body496

vector.body496:                                   ; preds = %vector.body496, %vector.ph493
  %index497 = phi i64 [ 0, %vector.ph493 ], [ %index.next500, %vector.body496 ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %index497 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %wide.load498 = load <2 x i64>, ptr %i.ga, align 8, !tbaa !17
  %wide.load499 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !17
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %index497 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store <2 x i64> %wide.load498, ptr %i.gc, align 8, !tbaa !17
  store <2 x i64> %wide.load499, ptr %i.gd, align 8, !tbaa !17
  %index.next500 = add nuw i64 %index497, 4       ; 2 uses
  %i.ge = icmp eq i64 %index.next500, %n.vec495
  br i1 %i.ge, label %middle.block501, label %vector.body496, !llvm.loop !43

middle.block501:                                  ; preds = %vector.body496
  %cmp.n502 = icmp eq i64 %n.vec495, %wide.trip.count452
  br i1 %cmp.n502, label %._crit_edge429, label %scalar.ph491.preheader

scalar.ph491.preheader:                           ; preds = %vector.memcheck489, %.lr.ph420, %middle.block501
  %indvars.iv449.ph = phi i64 [ 0, %vector.memcheck489 ], [ 0, %.lr.ph420 ], [ %n.vec495, %middle.block501 ] ; 3 uses
  %xtraiter581 = and i64 %wide.trip.count452, 3   ; 2 uses
  %lcmp.mod582.not = icmp eq i64 %xtraiter581, 0
  br i1 %lcmp.mod582.not, label %scalar.ph491.prol.loopexit, label %scalar.ph491.prol

scalar.ph491.prol:                                ; preds = %scalar.ph491.preheader, %scalar.ph491.prol
  %indvars.iv449.prol = phi i64 [ %indvars.iv.next450.prol, %scalar.ph491.prol ], [ %indvars.iv449.ph, %scalar.ph491.preheader ] ; 3 uses
  %prol.iter583 = phi i64 [ %prol.iter583.next, %scalar.ph491.prol ], [ 0, %scalar.ph491.preheader ]
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv449.prol
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !17
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv449.prol
end_hunk_0
