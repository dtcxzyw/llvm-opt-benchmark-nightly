Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bn_exp?download=true
inline.NumInlined: 16
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 19
begin_hunk_0_@bn_mod_exp_mont_fixed_top:bb.a
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @BN_mod_exp_mont(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5)
  br label %bb.az

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !10   ; 6 uses
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
  br i1 %i.m, label %.thread383, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = tail call i32 @BN_MONT_CTX_set(ptr noundef nonnull %i.l, ptr noundef nonnull %3, ptr noundef %4) #7
  %.not319 = icmp eq i32 %i.n, 0
  br i1 %.not319, label %.thread383, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.0294 = phi ptr [ %i.l, %bb.k ], [ %5, %bb.i ] ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !14
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
  %.1307 = phi ptr [ %1, %bb.m ], [ %i.s, %bb.o ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.1307, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !10   ; 2 uses
  %i.x = icmp eq i32 %i.w, 16
  br i1 %i.x, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.y = load i32, ptr %i.f, align 8, !tbaa !10
  %i.z = icmp eq i32 %i.y, 16
  br i1 %i.z, label %bb.r, label %.thread381

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
  %i.af = load ptr, ptr %0, align 8, !tbaa !15
  %i.ag = load ptr, ptr %.1307, align 8, !tbaa !15
  %i.ah = load ptr, ptr %2, align 8, !tbaa !15
  %i.ai = load ptr, ptr %3, align 8, !tbaa !15
  %i.aj = load ptr, ptr %.0294, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %.0294, i64 72
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !16
  tail call void @RSAZ_1024_mod_exp_avx2(ptr noundef %i.af, ptr noundef %i.ag, ptr noundef %i.ah, ptr noundef %i.ai, ptr noundef %i.aj, i64 noundef %i.al) #7
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 16, ptr %i.am, align 8, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.an, align 8, !tbaa !14
  tail call void @bn_correct_top(ptr noundef nonnull %0) #7
  br label %.thread

thread-pre-split:                                 ; preds = %bb.r, %bb.s
  %.pr = load i32, ptr %i.v, align 8, !tbaa !10
  br label %bb.v

bb.v:                                             ; preds = %thread-pre-split, %bb.p
  %i.ao = phi i32 [ %.pr, %thread-pre-split ], [ %i.w, %bb.p ]
  %i.ap = icmp eq i32 %i.ao, 8
  br i1 %i.ap, label %bb.w, label %.thread381

bb.w:                                             ; preds = %bb.v
  %i.aq = load i32, ptr %i.f, align 8, !tbaa !10
  %i.ar = icmp eq i32 %i.aq, 8
  br i1 %i.ar, label %bb.x, label %.thread381

bb.x:                                             ; preds = %bb.w
  %i.as = tail call i32 @BN_num_bits(ptr noundef nonnull %3) #7
  %i.at = icmp eq i32 %i.as, 512
  br i1 %i.at, label %bb.y, label %.thread381

bb.y:                                             ; preds = %bb.x
  %i.au = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef 8) #7
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aw = load ptr, ptr %0, align 8, !tbaa !15
  %i.ax = load ptr, ptr %.1307, align 8, !tbaa !15
  %i.ay = load ptr, ptr %2, align 8, !tbaa !15
  %i.az = load ptr, ptr %3, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %.0294, i64 72
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !16
  %i.bc = load ptr, ptr %.0294, align 8, !tbaa !34
  tail call void @RSAZ_512_mod_exp(ptr noundef %i.aw, ptr noundef %i.ax, ptr noundef %i.ay, ptr noundef %i.az, i64 noundef %i.bb, ptr noundef %i.bc) #7
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 8, ptr %i.bd, align 8, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.be, align 8, !tbaa !14
  tail call void @bn_correct_top(ptr noundef nonnull %0) #7
  br label %.thread

.thread381:                                       ; preds = %bb.q, %bb.v, %bb.w, %bb.x
  %i.bf = icmp sgt i32 %i.g, 14
  br i1 %i.bf, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.thread381
  %i.bg = icmp sgt i32 %i.g, 4
  br i1 %i.bg, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = icmp sgt i32 %i.g, 1
  %.inv = icmp slt i32 %i.g, 1
  %i.bi = select i1 %.inv, i32 1, i32 3
  %i.bj = select i1 %i.bh, i32 4, i32 %i.bi
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.thread381
  %i.bk = phi i32 [ 6, %.thread381 ], [ %i.bj, %bb.ab ], [ 5, %bb.aa ] ; 2 uses
  %i.bl = icmp samesign ugt i32 %i.bk, 4
  %i.bm = icmp slt i32 %i.c, 513
  %or.cond = and i1 %i.bm, %i.bl                  ; 2 uses
  %i.bn = shl i32 %i.c, 3
  %spec.select = select i1 %or.cond, i32 5, i32 %i.bk ; 10 uses
  %spec.select337 = select i1 %or.cond, i32 %i.bn, i32 0
  %i.bo = shl nuw nsw i32 1, %spec.select         ; 7 uses
  %i.bp = shl nsw i32 %i.c, %spec.select
  %i.bq = shl nsw i32 %i.c, 1
  %i.br = tail call i32 @llvm.smax.i32(i32 %i.bq, i32 %i.bo)
  %i.bs = add nsw i32 %i.br, %i.bp
  %i.bt = shl i32 %i.bs, 3
  %i.bu = add i32 %i.bt, %spec.select337          ; 13 uses
  %i.bv = icmp slt i32 %i.bu, 3072
  %i.bw = add nsw i32 %i.bu, 64                   ; 2 uses
  br i1 %i.bv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bx = sext i32 %i.bw to i64
  %i.by = alloca i8, i64 %i.bx, align 16
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.bz = zext nneg i32 %i.bw to i64
  %i.ca = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.bz, ptr noundef nonnull @.str, i32 noundef 729) #7 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %spec.select338 = phi ptr [ null, %bb.ad ], [ %i.ca, %bb.ae ] ; 9 uses
  %.0292 = phi ptr [ %i.by, %bb.ad ], [ %i.ca, %bb.ae ] ; 2 uses
  %i.cc = ptrtoint ptr %.0292 to i64              ; 2 uses
  %i.cd = and i64 %i.cc, 63                       ; 2 uses
  %i.ce = sub nuw nsw i64 64, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %.0292, i64 %i.ce ; 83 uses
  %i.cg = sext i32 %i.bu to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cf, i8 0, i64 %i.cg, i1 false)
  %i.ch = sext i32 %i.c to i64                    ; 37 uses
  %i.ci = shl nsw i64 %i.ch, 3
  %i.cj = zext nneg i32 %spec.select to i64
  %i.ck = shl nsw i64 %i.ci, %i.cj                ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ck ; 9 uses
  store ptr %i.cl, ptr %6, align 8, !tbaa !15
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.ch
  store ptr %i.cm, ptr %7, align 8, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i32 0, ptr %i.cn, align 8, !tbaa !10
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store i32 0, ptr %i.co, align 8, !tbaa !10
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.c, ptr %i.cp, align 4, !tbaa !36
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.c, ptr %i.cq, align 4, !tbaa !36
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.cr, align 8, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.cs, align 8, !tbaa !14
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 2, ptr %i.ct, align 4, !tbaa !37
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 2, ptr %i.cu, align 4, !tbaa !37
  %i.cv = load ptr, ptr %3, align 8, !tbaa !15    ; 9 uses
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %i.cx = getelementptr [8 x i8], ptr %i.cv, i64 %i.ch
  %i.cy = getelementptr i8, ptr %i.cx, i64 -8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !16
  %.not323 = icmp sgt i64 %i.cz, -1
  br i1 %.not323, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.da = load i64, ptr %i.cv, align 8, !tbaa !16
  %i.db = sub i64 0, %i.da
  store i64 %i.db, ptr %i.cl, align 8, !tbaa !16
  %i.dc = icmp sgt i32 %i.c, 1
  br i1 %i.dc, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ag
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 4 uses
  %i.dd = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i64 %i.dd, 12
  br i1 %min.iters.check, label %.lr.ph.preheader574, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.de = add i64 %i.ck, %i.cc
  %i.df = add i64 %i.cd, %i.cw
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = add i64 %i.dg, 63
  %diff.check = icmp ult i64 %i.dh, 31
  br i1 %diff.check, label %.lr.ph.preheader574, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dd, -4                      ; 3 uses
  %i.di = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = or disjoint i64 %index, 1               ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load = load <2 x i64>, ptr %i.dk, align 8, !tbaa !16
  %wide.load487 = load <2 x i64>, ptr %i.dl, align 8, !tbaa !16
  %i.dm = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.dn = xor <2 x i64> %wide.load487, splat (i64 -1)
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.dj ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <2 x i64> %i.dm, ptr %i.do, align 8, !tbaa !16
  store <2 x i64> %i.dn, ptr %i.dp, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dd, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader574

.lr.ph.preheader574:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.di, %middle.block ] ; 4 uses
  %i.dr = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.dr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader574, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader574 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader574 ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.prol
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !16
  %i.du = xor i64 %i.dt, -1
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.prol
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !16
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !39

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader574
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader574 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.dw = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !16
  %i.ea = xor i64 %i.dz, -1
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !16
  %i.ee = xor i64 %i.ed, -1
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next.1
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !16
  %i.ei = xor i64 %i.eh, -1
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next.1
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !16
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next.2
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !16
  %i.em = xor i64 %i.el, -1
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next.2
  store i64 %i.em, ptr %i.en, align 8, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.ag
  store i32 %i.c, ptr %i.co, align 8, !tbaa !10
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.eo = call ptr @BN_value_one() #7
  %i.ep = call i32 @bn_to_mont_fixed_top(ptr noundef nonnull %6, ptr noundef %i.eo, ptr noundef nonnull %.0294, ptr noundef %4) #7
  %.not324 = icmp eq i32 %i.ep, 0
  br i1 %.not324, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge
  %i.eq = call i32 @bn_to_mont_fixed_top(ptr noundef nonnull %7, ptr noundef nonnull %.1307, ptr noundef nonnull %.0294, ptr noundef %4) #7
  %.not325 = icmp eq i32 %i.eq, 0
  br i1 %.not325, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.er = icmp sgt i32 %i.c, 512
  br i1 %i.er, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.es = icmp eq i32 %spec.select, 5
  %i.et = icmp sgt i32 %i.c, 1
  %or.cond3 = and i1 %i.et, %i.es
  br i1 %or.cond3, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.eu = getelementptr inbounds nuw i8, ptr %.0294, i64 72 ; 37 uses
  %i.ev = load i32, ptr %i.cn, align 8, !tbaa !10 ; 3 uses
  %i.ew = icmp slt i32 %i.ev, %i.c
  br i1 %i.ew, label %.lr.ph411, label %._crit_edge412

.lr.ph411:                                        ; preds = %bb.al
  %i.ex = load ptr, ptr %7, align 8, !tbaa !15
  %i.ey = sext i32 %i.ev to i64
  %i.ez = shl nsw i64 %i.ey, 3
  %scevgep = getelementptr i8, ptr %i.ex, i64 %i.ez
  %i.fa = xor i32 %i.ev, -1
  %i.fb = add i32 %i.c, %i.fa
  %i.fc = zext i32 %i.fb to i64
  %i.fd = shl nuw nsw i64 %i.fc, 3
  %i.fe = add nuw nsw i64 %i.fd, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.fe, i1 false), !tbaa !16
  br label %._crit_edge412

._crit_edge412:                                   ; preds = %.lr.ph411, %bb.al
  %i.ff = load i32, ptr %i.co, align 8, !tbaa !10 ; 3 uses
  %i.fg = icmp slt i32 %i.ff, %i.c
  br i1 %i.fg, label %.lr.ph415, label %.lr.ph419

.lr.ph415:                                        ; preds = %._crit_edge412
  %i.fh = load ptr, ptr %6, align 8, !tbaa !15
  %i.fi = sext i32 %i.ff to i64
  %i.fj = shl nsw i64 %i.fi, 3
  %scevgep444 = getelementptr i8, ptr %i.fh, i64 %i.fj
  %i.fk = xor i32 %i.ff, -1
  %i.fl = add i32 %i.c, %i.fk
  %i.fm = zext i32 %i.fl to i64
  %i.fn = shl nuw nsw i64 %i.fm, 3
  %i.fo = add nuw nsw i64 %i.fn, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep444, i8 0, i64 %i.fo, i1 false), !tbaa !16
  br label %.lr.ph419

.lr.ph419:                                        ; preds = %._crit_edge412, %.lr.ph415
  %i.fp = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.ch ; 43 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0294, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !41 ; 7 uses
  %wide.trip.count451 = zext nneg i32 %i.c to i64 ; 5 uses
  %min.iters.check491 = icmp ult i32 %i.c, 14
  br i1 %min.iters.check491, label %scalar.ph490.preheader, label %vector.memcheck488

vector.memcheck488:                               ; preds = %.lr.ph419
  %i.ft = ptrtoaddr ptr %i.fs to i64
  %i.fu = ptrtoaddr ptr %i.fp to i64
  %8 = shl nuw nsw i64 %i.ch, 3
  %i.fv = add i64 %8, %i.fu
  %i.fw = sub i64 %i.ft, %i.fv
  %diff.check489 = icmp ugt i64 %i.fw, -32
  br i1 %diff.check489, label %scalar.ph490.preheader, label %vector.ph492

vector.ph492:                                     ; preds = %vector.memcheck488
  %n.vec493 = and i64 %wide.trip.count451, 2147483644 ; 3 uses
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph492
  %index495 = phi i64 [ 0, %vector.ph492 ], [ %index.next498, %vector.body494 ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %index495 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load496 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !16
  %wide.load497 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !16
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %index495 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store <2 x i64> %wide.load496, ptr %i.fz, align 8, !tbaa !16
  store <2 x i64> %wide.load497, ptr %i.ga, align 8, !tbaa !16
  %index.next498 = add nuw i64 %index495, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next498, %n.vec493
  br i1 %i.gb, label %middle.block499, label %vector.body494, !llvm.loop !42

middle.block499:                                  ; preds = %vector.body494
  %cmp.n500 = icmp eq i64 %n.vec493, %wide.trip.count451
  br i1 %cmp.n500, label %._crit_edge428, label %scalar.ph490.preheader

scalar.ph490.preheader:                           ; preds = %vector.memcheck488, %.lr.ph419, %middle.block499
  %indvars.iv448.ph = phi i64 [ 0, %vector.memcheck488 ], [ 0, %.lr.ph419 ], [ %n.vec493, %middle.block499 ] ; 3 uses
  %xtraiter575 = and i64 %wide.trip.count451, 3   ; 2 uses
  %lcmp.mod576.not = icmp eq i64 %xtraiter575, 0
  br i1 %lcmp.mod576.not, label %scalar.ph490.prol.loopexit, label %scalar.ph490.prol

scalar.ph490.prol:                                ; preds = %scalar.ph490.preheader, %scalar.ph490.prol
  %indvars.iv448.prol = phi i64 [ %indvars.iv.next449.prol, %scalar.ph490.prol ], [ %indvars.iv448.ph, %scalar.ph490.preheader ] ; 3 uses
  %prol.iter577 = phi i64 [ %prol.iter577.next, %scalar.ph490.prol ], [ 0, %scalar.ph490.preheader ]
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv448.prol
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !16
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv448.prol
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !16
  %indvars.iv.next449.prol = add nuw nsw i64 %indvars.iv448.prol, 1 ; 2 uses
  %prol.iter577.next = add i64 %prol.iter577, 1   ; 2 uses
  %prol.iter577.cmp.not = icmp eq i64 %prol.iter577.next, %xtraiter575
  br i1 %prol.iter577.cmp.not, label %scalar.ph490.prol.loopexit, label %scalar.ph490.prol, !llvm.loop !43

scalar.ph490.prol.loopexit:                       ; preds = %scalar.ph490.prol, %scalar.ph490.preheader
  %indvars.iv448.unr = phi i64 [ %indvars.iv448.ph, %scalar.ph490.preheader ], [ %indvars.iv.next449.prol, %scalar.ph490.prol ]
  %i.gf = sub nsw i64 %indvars.iv448.ph, %wide.trip.count451
  %i.gg = icmp ugt i64 %i.gf, -4
  br i1 %i.gg, label %._crit_edge428, label %scalar.ph490

scalar.ph490:                                     ; preds = %scalar.ph490.prol.loopexit, %scalar.ph490
  %indvars.iv448 = phi i64 [ %indvars.iv.next449.3, %scalar.ph490 ], [ %indvars.iv448.unr, %scalar.ph490.prol.loopexit ] ; 6 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv448
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !16
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv448
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !16
  %indvars.iv.next449 = add nuw nsw i64 %indvars.iv448, 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv.next449
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !16
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.next449
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !16
  %indvars.iv.next449.1 = add nuw nsw i64 %indvars.iv448, 2 ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv.next449.1
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !16
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.next449.1
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !16
  %indvars.iv.next449.2 = add nuw nsw i64 %indvars.iv448, 3 ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv.next449.2
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !16
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.next449.2
  store i64 %i.gr, ptr %i.gs, align 8, !tbaa !16
  %indvars.iv.next449.3 = add nuw nsw i64 %indvars.iv448, 4 ; 2 uses
  %exitcond452.not.3 = icmp eq i64 %indvars.iv.next449.3, %wide.trip.count451
  br i1 %exitcond452.not.3, label %._crit_edge428, label %scalar.ph490, !llvm.loop !44

._crit_edge428:                                   ; preds = %scalar.ph490.prol.loopexit, %scalar.ph490, %middle.block499
  %i.gt = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.gt, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 0) #7
  %i.gu = load ptr, ptr %7, align 8, !tbaa !15
  %i.gv = load i32, ptr %i.cn, align 8, !tbaa !10
  %i.gw = sext i32 %i.gv to i64
  call void @bn_scatter5(ptr noundef %i.gu, i64 noundef %i.gw, ptr noundef nonnull %i.cf, i64 noundef 1) #7
  %i.gx = load ptr, ptr %6, align 8, !tbaa !15
  %i.gy = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.gz = call i32 @bn_mul_mont(ptr noundef %i.gx, ptr noundef %i.gy, ptr noundef %i.gy, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.ha = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.ha, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 2) #7
  %i.hb = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.hc = call i32 @bn_mul_mont(ptr noundef %i.hb, ptr noundef %i.hb, ptr noundef %i.hb, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.hd = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.hd, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 4) #7
  %i.he = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.hf = call i32 @bn_mul_mont(ptr noundef %i.he, ptr noundef %i.he, ptr noundef %i.he, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.hg = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.hg, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 8) #7
  %i.hh = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.hi = call i32 @bn_mul_mont(ptr noundef %i.hh, ptr noundef %i.hh, ptr noundef %i.hh, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.hj = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.hj, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 16) #7
  %i.hk = load ptr, ptr %6, align 8, !tbaa !15
  %i.hl = load ptr, ptr %7, align 8, !tbaa !15
  call void @bn_mul_mont_gather5(ptr noundef %i.hk, ptr noundef %i.hl, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c, i32 noundef 2) #7
  %i.hm = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.hm, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 3) #7
  %i.hn = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.ho = call i32 @bn_mul_mont(ptr noundef %i.hn, ptr noundef %i.hn, ptr noundef %i.hn, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.hp = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.hp, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 6) #7
  %i.hq = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.hr = call i32 @bn_mul_mont(ptr noundef %i.hq, ptr noundef %i.hq, ptr noundef %i.hq, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.hs = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.hs, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 12) #7
  %i.ht = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.hu = call i32 @bn_mul_mont(ptr noundef %i.ht, ptr noundef %i.ht, ptr noundef %i.ht, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.hv = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.hv, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 24) #7
  %i.hw = load ptr, ptr %6, align 8, !tbaa !15
  %i.hx = load ptr, ptr %7, align 8, !tbaa !15
  call void @bn_mul_mont_gather5(ptr noundef %i.hw, ptr noundef %i.hx, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c, i32 noundef 4) #7
  %i.hy = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.hy, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 5) #7
  %i.hz = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.ia = call i32 @bn_mul_mont(ptr noundef %i.hz, ptr noundef %i.hz, ptr noundef %i.hz, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.ib = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.ib, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 10) #7
  %i.ic = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.id = call i32 @bn_mul_mont(ptr noundef %i.ic, ptr noundef %i.ic, ptr noundef %i.ic, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.ie = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.ie, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 20) #7
  %i.if = load ptr, ptr %6, align 8, !tbaa !15
  %i.ig = load ptr, ptr %7, align 8, !tbaa !15
  call void @bn_mul_mont_gather5(ptr noundef %i.if, ptr noundef %i.ig, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c, i32 noundef 6) #7
  %i.ih = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.ih, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 7) #7
  %i.ii = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.ij = call i32 @bn_mul_mont(ptr noundef %i.ii, ptr noundef %i.ii, ptr noundef %i.ii, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.ik = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.ik, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 14) #7
  %i.il = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.im = call i32 @bn_mul_mont(ptr noundef %i.il, ptr noundef %i.il, ptr noundef %i.il, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.in = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.in, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 28) #7
  %i.io = load ptr, ptr %6, align 8, !tbaa !15
  %i.ip = load ptr, ptr %7, align 8, !tbaa !15
  call void @bn_mul_mont_gather5(ptr noundef %i.io, ptr noundef %i.ip, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c, i32 noundef 8) #7
  %i.iq = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.iq, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 9) #7
  %i.ir = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.is = call i32 @bn_mul_mont(ptr noundef %i.ir, ptr noundef %i.ir, ptr noundef %i.ir, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.it = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.it, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 18) #7
  %i.iu = load ptr, ptr %6, align 8, !tbaa !15
  %i.iv = load ptr, ptr %7, align 8, !tbaa !15
  call void @bn_mul_mont_gather5(ptr noundef %i.iu, ptr noundef %i.iv, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c, i32 noundef 10) #7
  %i.iw = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.iw, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 11) #7
  %i.ix = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.iy = call i32 @bn_mul_mont(ptr noundef %i.ix, ptr noundef %i.ix, ptr noundef %i.ix, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.iz = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.iz, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 22) #7
  %i.ja = load ptr, ptr %6, align 8, !tbaa !15
  %i.jb = load ptr, ptr %7, align 8, !tbaa !15
  call void @bn_mul_mont_gather5(ptr noundef %i.ja, ptr noundef %i.jb, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c, i32 noundef 12) #7
  %i.jc = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.jc, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 13) #7
  %i.jd = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.je = call i32 @bn_mul_mont(ptr noundef %i.jd, ptr noundef %i.jd, ptr noundef %i.jd, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.jf = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.jf, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 26) #7
  %i.jg = load ptr, ptr %6, align 8, !tbaa !15
  %i.jh = load ptr, ptr %7, align 8, !tbaa !15
  call void @bn_mul_mont_gather5(ptr noundef %i.jg, ptr noundef %i.jh, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c, i32 noundef 14) #7
  %i.ji = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.ji, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 15) #7
  %i.jj = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.jk = call i32 @bn_mul_mont(ptr noundef %i.jj, ptr noundef %i.jj, ptr noundef %i.jj, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.jl = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.jl, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 30) #7
  %i.jm = load ptr, ptr %6, align 8, !tbaa !15
  %i.jn = load ptr, ptr %7, align 8, !tbaa !15
  call void @bn_mul_mont_gather5(ptr noundef %i.jm, ptr noundef %i.jn, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c, i32 noundef 16) #7
  %i.jo = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.jo, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 17) #7
  %i.jp = load ptr, ptr %6, align 8, !tbaa !15
  %i.jq = load ptr, ptr %7, align 8, !tbaa !15
  call void @bn_mul_mont_gather5(ptr noundef %i.jp, ptr noundef %i.jq, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c, i32 noundef 18) #7
  %i.jr = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.jr, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 19) #7
  %i.js = load ptr, ptr %6, align 8, !tbaa !15
  %i.jt = load ptr, ptr %7, align 8, !tbaa !15
  call void @bn_mul_mont_gather5(ptr noundef %i.js, ptr noundef %i.jt, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c, i32 noundef 20) #7
  %i.ju = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.ju, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 21) #7
  %i.jv = load ptr, ptr %6, align 8, !tbaa !15
  %i.jw = load ptr, ptr %7, align 8, !tbaa !15
  call void @bn_mul_mont_gather5(ptr noundef %i.jv, ptr noundef %i.jw, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c, i32 noundef 22) #7
  %i.jx = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.jx, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 23) #7
  %i.jy = load ptr, ptr %6, align 8, !tbaa !15
  %i.jz = load ptr, ptr %7, align 8, !tbaa !15
  call void @bn_mul_mont_gather5(ptr noundef %i.jy, ptr noundef %i.jz, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c, i32 noundef 24) #7
  %i.ka = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.ka, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 25) #7
  %i.kb = load ptr, ptr %6, align 8, !tbaa !15
  %i.kc = load ptr, ptr %7, align 8, !tbaa !15
  call void @bn_mul_mont_gather5(ptr noundef %i.kb, ptr noundef %i.kc, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c, i32 noundef 26) #7
  %i.kd = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.kd, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 27) #7
  %i.ke = load ptr, ptr %6, align 8, !tbaa !15
  %i.kf = load ptr, ptr %7, align 8, !tbaa !15
  call void @bn_mul_mont_gather5(ptr noundef %i.ke, ptr noundef %i.kf, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c, i32 noundef 28) #7
  %i.kg = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.kg, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 29) #7
  %i.kh = load ptr, ptr %6, align 8, !tbaa !15
  %i.ki = load ptr, ptr %7, align 8, !tbaa !15
  call void @bn_mul_mont_gather5(ptr noundef %i.kh, ptr noundef %i.ki, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c, i32 noundef 30) #7
  %i.kj = load ptr, ptr %6, align 8, !tbaa !15
  call void @bn_scatter5(ptr noundef %i.kj, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef 31) #7
  %i.kk = add nsw i32 %i.h, -1
  %i.kl = srem i32 %i.kk, 5
  %i.km = add nsw i32 %i.kl, 1                    ; 2 uses
  %notmask = shl nsw i32 -1, %i.km
  %i.kn = xor i32 %notmask, -1
  %i.ko = sub nsw i32 %i.h, %i.km                 ; 4 uses
  %i.kp = call fastcc i64 @bn_get_bits(ptr noundef nonnull %2, i32 noundef %i.ko)
  %i.kq = trunc i64 %i.kp to i32
  %i.kr = and i32 %i.kq, %i.kn
  %i.ks = load ptr, ptr %6, align 8, !tbaa !15
  %i.kt = zext nneg i32 %i.kr to i64
  call void @bn_gather5(ptr noundef %i.ks, i64 noundef %i.ch, ptr noundef nonnull %i.cf, i64 noundef %i.kt) #7
  %i.ku = and i32 %i.c, 7
  %.not326 = icmp eq i32 %i.ku, 0
  %i.kv = icmp sgt i32 %i.ko, 0                   ; 2 uses
  br i1 %.not326, label %.preheader401, label %.preheader403

.preheader403:                                    ; preds = %._crit_edge428
  br i1 %i.kv, label %.lr.ph430, label %.loopexit402

.preheader401:                                    ; preds = %._crit_edge428
  br i1 %i.kv, label %.lr.ph432, label %.loopexit402

.lr.ph430:                                        ; preds = %.preheader403, %.lr.ph430
  %.0299429 = phi i32 [ %i.li, %.lr.ph430 ], [ %i.ko, %.preheader403 ] ; 2 uses
  %i.kw = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.kx = call i32 @bn_mul_mont(ptr noundef %i.kw, ptr noundef %i.kw, ptr noundef %i.kw, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.ky = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.kz = call i32 @bn_mul_mont(ptr noundef %i.ky, ptr noundef %i.ky, ptr noundef %i.ky, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.la = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.lb = call i32 @bn_mul_mont(ptr noundef %i.la, ptr noundef %i.la, ptr noundef %i.la, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.lc = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.ld = call i32 @bn_mul_mont(ptr noundef %i.lc, ptr noundef %i.lc, ptr noundef %i.lc, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.le = load ptr, ptr %6, align 8, !tbaa !15    ; 3 uses
  %i.lf = call i32 @bn_mul_mont(ptr noundef %i.le, ptr noundef %i.le, ptr noundef %i.le, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c) #7 ; 0 uses
  %i.lg = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.lh = load ptr, ptr %2, align 8, !tbaa !15
  %i.li = add nsw i32 %.0299429, -5               ; 2 uses
  %i.lj = call i32 @bn_get_bits5(ptr noundef %i.lh, i32 noundef %i.li) #7
  call void @bn_mul_mont_gather5(ptr noundef %i.lg, ptr noundef %i.lg, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c, i32 noundef %i.lj) #7
  %i.lk = icmp samesign ugt i32 %.0299429, 5
  br i1 %i.lk, label %.lr.ph430, label %.loopexit402, !llvm.loop !45

.lr.ph432:                                        ; preds = %.preheader401, %.lr.ph432
  %.1300431 = phi i32 [ %i.ln, %.lr.ph432 ], [ %i.ko, %.preheader401 ] ; 2 uses
  %i.ll = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.lm = load ptr, ptr %2, align 8, !tbaa !15
  %i.ln = add nsw i32 %.1300431, -5               ; 2 uses
  %i.lo = call i32 @bn_get_bits5(ptr noundef %i.lm, i32 noundef %i.ln) #7
  call void @bn_power5(ptr noundef %i.ll, ptr noundef %i.ll, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.eu, i32 noundef %i.c, i32 noundef %i.lo) #7
  %i.lp = icmp samesign ugt i32 %.1300431, 5
  br i1 %i.lp, label %.lr.ph432, label %.loopexit402, !llvm.loop !46

.loopexit402:                                     ; preds = %.lr.ph430, %.lr.ph432, %.preheader403, %.preheader401
  store i32 %i.c, ptr %i.co, align 8, !tbaa !10
  br label %.loopexit

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %.val347 = load ptr, ptr %6, align 8            ; 5 uses
  %.val348 = load i32, ptr %i.co, align 8, !tbaa !10
  %spec.select.i = call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 1048576) %i.c, i32 %.val348) ; 3 uses
  %i.lq = icmp sgt i32 %spec.select.i, 0
  br i1 %i.lq, label %.lr.ph.preheader.i, label %MOD_EXP_CTIME_COPY_TO_PREBUF.exit

.lr.ph.preheader.i:                               ; preds = %bb.am
  %i.lr = zext nneg i32 %i.bo to i64              ; 5 uses
  %wide.trip.count.i = zext nneg i32 %spec.select.i to i64 ; 2 uses
  %xtraiter578 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.ls = icmp ult i32 %spec.select.i, 4
  br i1 %i.ls, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv3.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next4.i.3, %.lr.ph.i ] ; 5 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.val347, i64 %indvars.iv3.i
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !16
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i
  store i64 %i.lu, ptr %i.lv, align 8, !tbaa !16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, %i.lr ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %.val347, i64 %indvars.iv3.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !16
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i
  store i64 %i.ly, ptr %i.lz, align 8, !tbaa !16
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.next.i, %i.lr ; 2 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %.val347, i64 %indvars.iv3.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !16
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.1
  store i64 %i.mc, ptr %i.md, align 8, !tbaa !16
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.next.i.1, %i.lr ; 2 uses
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %.val347, i64 %indvars.iv3.i
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !16
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.2
  store i64 %i.mg, ptr %i.mh, align 8, !tbaa !16
  %indvars.iv.next4.i.3 = add nuw nsw i64 %indvars.iv3.i, 4 ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.next.i.2, %i.lr ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %MOD_EXP_CTIME_COPY_TO_PREBUF.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !47

MOD_EXP_CTIME_COPY_TO_PREBUF.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod579.not = icmp eq i64 %xtraiter578, 0
  br i1 %lcmp.mod579.not, label %MOD_EXP_CTIME_COPY_TO_PREBUF.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %MOD_EXP_CTIME_COPY_TO_PREBUF.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv3.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next4.i.3, %MOD_EXP_CTIME_COPY_TO_PREBUF.exit.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %MOD_EXP_CTIME_COPY_TO_PREBUF.exit.loopexit.unr-lcssa ]
  %lcmp.mod580 = icmp ne i64 %xtraiter578, 0
  call void @llvm.assume(i1 %lcmp.mod580)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv3.i.epil = phi i64 [ %indvars.iv3.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next4.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %.val347, i64 %indvars.iv3.i.epil
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !16
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i.epil
  store i64 %i.mj, ptr %i.mk, align 8, !tbaa !16
  %indvars.iv.next4.i.epil = add nuw nsw i64 %indvars.iv3.i.epil, 1
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, %i.lr
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter578
  br i1 %epil.iter.cmp.not, label %MOD_EXP_CTIME_COPY_TO_PREBUF.exit, label %.lr.ph.i.epil, !llvm.loop !48

MOD_EXP_CTIME_COPY_TO_PREBUF.exit:                ; preds = %MOD_EXP_CTIME_COPY_TO_PREBUF.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.am
  %.val345 = load ptr, ptr %7, align 8            ; 5 uses
  %.val346 = load i32, ptr %i.cn, align 8, !tbaa !10
  %spec.select.i349 = call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 1048576) %i.c, i32 %.val346) ; 3 uses
  %i.ml = icmp sgt i32 %spec.select.i349, 0
  br i1 %i.ml, label %.lr.ph.preheader.i350, label %MOD_EXP_CTIME_COPY_TO_PREBUF.exit358

.lr.ph.preheader.i350:                            ; preds = %MOD_EXP_CTIME_COPY_TO_PREBUF.exit
  %i.mm = zext nneg i32 %i.bo to i64              ; 5 uses
  %wide.trip.count.i351 = zext nneg i32 %spec.select.i349 to i64 ; 2 uses
  %xtraiter581 = and i64 %wide.trip.count.i351, 3 ; 3 uses
  %i.mn = icmp ult i32 %spec.select.i349, 4
  br i1 %i.mn, label %.lr.ph.i352.epil.preheader, label %.lr.ph.preheader.i350.new

.lr.ph.preheader.i350.new:                        ; preds = %.lr.ph.preheader.i350
  %unroll_iter585 = and i64 %wide.trip.count.i351, 2147483644
  br label %.lr.ph.i352

.lr.ph.i352:                                      ; preds = %.lr.ph.i352, %.lr.ph.preheader.i350.new
  %indvars.iv3.i353 = phi i64 [ 0, %.lr.ph.preheader.i350.new ], [ %indvars.iv.next4.i355.3, %.lr.ph.i352 ] ; 5 uses
  %indvars.iv.i354 = phi i64 [ 1, %.lr.ph.preheader.i350.new ], [ %indvars.iv.next.i356.3, %.lr.ph.i352 ] ; 2 uses
  %niter586 = phi i64 [ 0, %.lr.ph.preheader.i350.new ], [ %niter586.next.3, %.lr.ph.i352 ]
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %.val345, i64 %indvars.iv3.i353
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !16
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i354
  store i64 %i.mp, ptr %i.mq, align 8, !tbaa !16
  %indvars.iv.next.i356 = add nuw nsw i64 %indvars.iv.i354, %i.mm ; 2 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %.val345, i64 %indvars.iv3.i353
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !16
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i356
  store i64 %i.mt, ptr %i.mu, align 8, !tbaa !16
  %indvars.iv.next.i356.1 = add nuw nsw i64 %indvars.iv.next.i356, %i.mm ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %.val345, i64 %indvars.iv3.i353
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !16
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i356.1
  store i64 %i.mx, ptr %i.my, align 8, !tbaa !16
  %indvars.iv.next.i356.2 = add nuw nsw i64 %indvars.iv.next.i356.1, %i.mm ; 2 uses
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %.val345, i64 %indvars.iv3.i353
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !16
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i356.2
  store i64 %i.nb, ptr %i.nc, align 8, !tbaa !16
  %indvars.iv.next4.i355.3 = add nuw nsw i64 %indvars.iv3.i353, 4 ; 2 uses
  %indvars.iv.next.i356.3 = add nuw nsw i64 %indvars.iv.next.i356.2, %i.mm ; 2 uses
  %niter586.next.3 = add i64 %niter586, 4         ; 2 uses
  %niter586.ncmp.3 = icmp eq i64 %niter586.next.3, %unroll_iter585
  br i1 %niter586.ncmp.3, label %MOD_EXP_CTIME_COPY_TO_PREBUF.exit358.loopexit.unr-lcssa, label %.lr.ph.i352, !llvm.loop !49

MOD_EXP_CTIME_COPY_TO_PREBUF.exit358.loopexit.unr-lcssa: ; preds = %.lr.ph.i352
  %lcmp.mod583.not = icmp eq i64 %xtraiter581, 0
  br i1 %lcmp.mod583.not, label %MOD_EXP_CTIME_COPY_TO_PREBUF.exit358, label %.lr.ph.i352.epil.preheader

.lr.ph.i352.epil.preheader:                       ; preds = %MOD_EXP_CTIME_COPY_TO_PREBUF.exit358.loopexit.unr-lcssa, %.lr.ph.preheader.i350
  %indvars.iv3.i353.epil.init = phi i64 [ 0, %.lr.ph.preheader.i350 ], [ %indvars.iv.next4.i355.3, %MOD_EXP_CTIME_COPY_TO_PREBUF.exit358.loopexit.unr-lcssa ]
  %indvars.iv.i354.epil.init = phi i64 [ 1, %.lr.ph.preheader.i350 ], [ %indvars.iv.next.i356.3, %MOD_EXP_CTIME_COPY_TO_PREBUF.exit358.loopexit.unr-lcssa ]
  %lcmp.mod584 = icmp ne i64 %xtraiter581, 0
  call void @llvm.assume(i1 %lcmp.mod584)
  br label %.lr.ph.i352.epil

.lr.ph.i352.epil:                                 ; preds = %.lr.ph.i352.epil, %.lr.ph.i352.epil.preheader
  %indvars.iv3.i353.epil = phi i64 [ %indvars.iv3.i353.epil.init, %.lr.ph.i352.epil.preheader ], [ %indvars.iv.next4.i355.epil, %.lr.ph.i352.epil ] ; 2 uses
  %indvars.iv.i354.epil = phi i64 [ %indvars.iv.i354.epil.init, %.lr.ph.i352.epil.preheader ], [ %indvars.iv.next.i356.epil, %.lr.ph.i352.epil ] ; 2 uses
  %epil.iter582 = phi i64 [ 0, %.lr.ph.i352.epil.preheader ], [ %epil.iter582.next, %.lr.ph.i352.epil ]
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %.val345, i64 %indvars.iv3.i353.epil
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !16
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i354.epil
  store i64 %i.ne, ptr %i.nf, align 8, !tbaa !16
  %indvars.iv.next4.i355.epil = add nuw nsw i64 %indvars.iv3.i353.epil, 1
  %indvars.iv.next.i356.epil = add nuw nsw i64 %indvars.iv.i354.epil, %i.mm
  %epil.iter582.next = add i64 %epil.iter582, 1   ; 2 uses
  %epil.iter582.cmp.not = icmp eq i64 %epil.iter582.next, %xtraiter581
  br i1 %epil.iter582.cmp.not, label %MOD_EXP_CTIME_COPY_TO_PREBUF.exit358, label %.lr.ph.i352.epil, !llvm.loop !50

MOD_EXP_CTIME_COPY_TO_PREBUF.exit358:             ; preds = %MOD_EXP_CTIME_COPY_TO_PREBUF.exit358.loopexit.unr-lcssa, %.lr.ph.i352.epil, %MOD_EXP_CTIME_COPY_TO_PREBUF.exit
  %i.ng = icmp samesign ugt i32 %spec.select, 1
  br i1 %i.ng, label %bb.an, label %.loopexit399

bb.an:                                            ; preds = %MOD_EXP_CTIME_COPY_TO_PREBUF.exit358
  %i.nh = call i32 @bn_mul_mont_fixed_top(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %.0294, ptr noundef %4) #7
  %.not327 = icmp eq i32 %i.nh, 0
  br i1 %.not327, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.val343 = load ptr, ptr %6, align 8            ; 5 uses
  %.val344 = load i32, ptr %i.co, align 8, !tbaa !10
  %spec.select.i359 = call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 1048576) %i.c, i32 %.val344) ; 3 uses
  %i.ni = icmp sgt i32 %spec.select.i359, 0
  br i1 %i.ni, label %.lr.ph.preheader.i360, label %.lr.ph434

.lr.ph.preheader.i360:                            ; preds = %bb.ao
  %i.nj = zext nneg i32 %i.bo to i64              ; 5 uses
  %wide.trip.count.i361 = zext nneg i32 %spec.select.i359 to i64 ; 2 uses
  %xtraiter587 = and i64 %wide.trip.count.i361, 3 ; 3 uses
  %i.nk = icmp ult i32 %spec.select.i359, 4
  br i1 %i.nk, label %.lr.ph.i362.epil.preheader, label %.lr.ph.preheader.i360.new

.lr.ph.preheader.i360.new:                        ; preds = %.lr.ph.preheader.i360
  %unroll_iter591 = and i64 %wide.trip.count.i361, 2147483644
  br label %.lr.ph.i362

.lr.ph.i362:                                      ; preds = %.lr.ph.i362, %.lr.ph.preheader.i360.new
  %indvars.iv3.i363 = phi i64 [ 0, %.lr.ph.preheader.i360.new ], [ %indvars.iv.next4.i365.3, %.lr.ph.i362 ] ; 5 uses
  %indvars.iv.i364 = phi i64 [ 2, %.lr.ph.preheader.i360.new ], [ %indvars.iv.next.i366.3, %.lr.ph.i362 ] ; 2 uses
  %niter592 = phi i64 [ 0, %.lr.ph.preheader.i360.new ], [ %niter592.next.3, %.lr.ph.i362 ]
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %.val343, i64 %indvars.iv3.i363
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !16
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i364
  store i64 %i.nm, ptr %i.nn, align 8, !tbaa !16
  %indvars.iv.next.i366 = add nuw nsw i64 %indvars.iv.i364, %i.nj ; 2 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %.val343, i64 %indvars.iv3.i363
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !16
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i366
  store i64 %i.nq, ptr %i.nr, align 8, !tbaa !16
  %indvars.iv.next.i366.1 = add nuw nsw i64 %indvars.iv.next.i366, %i.nj ; 2 uses
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %.val343, i64 %indvars.iv3.i363
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !16
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i366.1
  store i64 %i.nu, ptr %i.nv, align 8, !tbaa !16
  %indvars.iv.next.i366.2 = add nuw nsw i64 %indvars.iv.next.i366.1, %i.nj ; 2 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %.val343, i64 %indvars.iv3.i363
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !16
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i366.2
  store i64 %i.ny, ptr %i.nz, align 8, !tbaa !16
  %indvars.iv.next4.i365.3 = add nuw nsw i64 %indvars.iv3.i363, 4 ; 2 uses
  %indvars.iv.next.i366.3 = add nuw nsw i64 %indvars.iv.next.i366.2, %i.nj ; 2 uses
  %niter592.next.3 = add i64 %niter592, 4         ; 2 uses
  %niter592.ncmp.3 = icmp eq i64 %niter592.next.3, %unroll_iter591
  br i1 %niter592.ncmp.3, label %.lr.ph434.loopexit.unr-lcssa, label %.lr.ph.i362, !llvm.loop !51

.lr.ph434.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i362
  %lcmp.mod589.not = icmp eq i64 %xtraiter587, 0
  br i1 %lcmp.mod589.not, label %.lr.ph434, label %.lr.ph.i362.epil.preheader

.lr.ph.i362.epil.preheader:                       ; preds = %.lr.ph434.loopexit.unr-lcssa, %.lr.ph.preheader.i360
  %indvars.iv3.i363.epil.init = phi i64 [ 0, %.lr.ph.preheader.i360 ], [ %indvars.iv.next4.i365.3, %.lr.ph434.loopexit.unr-lcssa ]
  %indvars.iv.i364.epil.init = phi i64 [ 2, %.lr.ph.preheader.i360 ], [ %indvars.iv.next.i366.3, %.lr.ph434.loopexit.unr-lcssa ]
  %lcmp.mod590 = icmp ne i64 %xtraiter587, 0
  call void @llvm.assume(i1 %lcmp.mod590)
  br label %.lr.ph.i362.epil

.lr.ph.i362.epil:                                 ; preds = %.lr.ph.i362.epil, %.lr.ph.i362.epil.preheader
  %indvars.iv3.i363.epil = phi i64 [ %indvars.iv3.i363.epil.init, %.lr.ph.i362.epil.preheader ], [ %indvars.iv.next4.i365.epil, %.lr.ph.i362.epil ] ; 2 uses
  %indvars.iv.i364.epil = phi i64 [ %indvars.iv.i364.epil.init, %.lr.ph.i362.epil.preheader ], [ %indvars.iv.next.i366.epil, %.lr.ph.i362.epil ] ; 2 uses
  %epil.iter588 = phi i64 [ 0, %.lr.ph.i362.epil.preheader ], [ %epil.iter588.next, %.lr.ph.i362.epil ]
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %.val343, i64 %indvars.iv3.i363.epil
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !16
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i364.epil
  store i64 %i.ob, ptr %i.oc, align 8, !tbaa !16
  %indvars.iv.next4.i365.epil = add nuw nsw i64 %indvars.iv3.i363.epil, 1
  %indvars.iv.next.i366.epil = add nuw nsw i64 %indvars.iv.i364.epil, %i.nj
  %epil.iter588.next = add i64 %epil.iter588, 1   ; 2 uses
  %epil.iter588.cmp.not = icmp eq i64 %epil.iter588.next, %xtraiter587
  br i1 %epil.iter588.cmp.not, label %.lr.ph434, label %.lr.ph.i362.epil, !llvm.loop !52

.lr.ph434:                                        ; preds = %.lr.ph434.loopexit.unr-lcssa, %.lr.ph.i362.epil, %bb.ao
  %i.od = zext nneg i32 %i.bo to i64              ; 5 uses
  %umax = call i32 @llvm.umax.i32(i32 %i.bo, i32 4)
  %wide.trip.count465 = zext nneg i32 %umax to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph434, %MOD_EXP_CTIME_COPY_TO_PREBUF.exit378
  %indvars.iv462 = phi i64 [ 3, %.lr.ph434 ], [ %indvars.iv.next463, %MOD_EXP_CTIME_COPY_TO_PREBUF.exit378 ] ; 3 uses
  %i.oe = call i32 @bn_mul_mont_fixed_top(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %.0294, ptr noundef %4) #7
  %.not334 = icmp eq i32 %i.oe, 0
  br i1 %.not334, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.val = load ptr, ptr %6, align 8               ; 5 uses
  %.val342 = load i32, ptr %i.co, align 8, !tbaa !10
  %spec.select.i369 = call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 1048576) %i.c, i32 %.val342) ; 3 uses
  %i.of = icmp sgt i32 %spec.select.i369, 0
  br i1 %i.of, label %.lr.ph.preheader.i370, label %MOD_EXP_CTIME_COPY_TO_PREBUF.exit378

.lr.ph.preheader.i370:                            ; preds = %bb.aq
  %wide.trip.count.i371 = zext nneg i32 %spec.select.i369 to i64 ; 2 uses
  %xtraiter593 = and i64 %wide.trip.count.i371, 3 ; 3 uses
  %i.og = icmp ult i32 %spec.select.i369, 4
  br i1 %i.og, label %.lr.ph.i372.epil.preheader, label %.lr.ph.preheader.i370.new

.lr.ph.preheader.i370.new:                        ; preds = %.lr.ph.preheader.i370
  %unroll_iter597 = and i64 %wide.trip.count.i371, 2147483644
  br label %.lr.ph.i372

.lr.ph.i372:                                      ; preds = %.lr.ph.i372, %.lr.ph.preheader.i370.new
  %indvars.iv3.i373 = phi i64 [ 0, %.lr.ph.preheader.i370.new ], [ %indvars.iv.next4.i375.3, %.lr.ph.i372 ] ; 5 uses
  %indvars.iv.i374 = phi i64 [ %indvars.iv462, %.lr.ph.preheader.i370.new ], [ %indvars.iv.next.i376.3, %.lr.ph.i372 ] ; 2 uses
  %niter598 = phi i64 [ 0, %.lr.ph.preheader.i370.new ], [ %niter598.next.3, %.lr.ph.i372 ]
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv3.i373
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !16
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i374
  store i64 %i.oi, ptr %i.oj, align 8, !tbaa !16
  %indvars.iv.next.i376 = add nuw nsw i64 %indvars.iv.i374, %i.od ; 2 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv3.i373
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !16
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i376
  store i64 %i.om, ptr %i.on, align 8, !tbaa !16
  %indvars.iv.next.i376.1 = add nuw nsw i64 %indvars.iv.next.i376, %i.od ; 2 uses
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv3.i373
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !16
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i376.1
  store i64 %i.oq, ptr %i.or, align 8, !tbaa !16
  %indvars.iv.next.i376.2 = add nuw nsw i64 %indvars.iv.next.i376.1, %i.od ; 2 uses
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv3.i373
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 24
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !16
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i376.2
  store i64 %i.ou, ptr %i.ov, align 8, !tbaa !16
  %indvars.iv.next4.i375.3 = add nuw nsw i64 %indvars.iv3.i373, 4 ; 2 uses
  %indvars.iv.next.i376.3 = add nuw nsw i64 %indvars.iv.next.i376.2, %i.od ; 2 uses
  %niter598.next.3 = add i64 %niter598, 4         ; 2 uses
  %niter598.ncmp.3 = icmp eq i64 %niter598.next.3, %unroll_iter597
  br i1 %niter598.ncmp.3, label %MOD_EXP_CTIME_COPY_TO_PREBUF.exit378.loopexit.unr-lcssa, label %.lr.ph.i372, !llvm.loop !53

MOD_EXP_CTIME_COPY_TO_PREBUF.exit378.loopexit.unr-lcssa: ; preds = %.lr.ph.i372
  %lcmp.mod595.not = icmp eq i64 %xtraiter593, 0
  br i1 %lcmp.mod595.not, label %MOD_EXP_CTIME_COPY_TO_PREBUF.exit378, label %.lr.ph.i372.epil.preheader

.lr.ph.i372.epil.preheader:                       ; preds = %MOD_EXP_CTIME_COPY_TO_PREBUF.exit378.loopexit.unr-lcssa, %.lr.ph.preheader.i370
  %indvars.iv3.i373.epil.init = phi i64 [ 0, %.lr.ph.preheader.i370 ], [ %indvars.iv.next4.i375.3, %MOD_EXP_CTIME_COPY_TO_PREBUF.exit378.loopexit.unr-lcssa ]
  %indvars.iv.i374.epil.init = phi i64 [ %indvars.iv462, %.lr.ph.preheader.i370 ], [ %indvars.iv.next.i376.3, %MOD_EXP_CTIME_COPY_TO_PREBUF.exit378.loopexit.unr-lcssa ]
  %lcmp.mod596 = icmp ne i64 %xtraiter593, 0
  call void @llvm.assume(i1 %lcmp.mod596)
  br label %.lr.ph.i372.epil

.lr.ph.i372.epil:                                 ; preds = %.lr.ph.i372.epil, %.lr.ph.i372.epil.preheader
  %indvars.iv3.i373.epil = phi i64 [ %indvars.iv3.i373.epil.init, %.lr.ph.i372.epil.preheader ], [ %indvars.iv.next4.i375.epil, %.lr.ph.i372.epil ] ; 2 uses
  %indvars.iv.i374.epil = phi i64 [ %indvars.iv.i374.epil.init, %.lr.ph.i372.epil.preheader ], [ %indvars.iv.next.i376.epil, %.lr.ph.i372.epil ] ; 2 uses
  %epil.iter594 = phi i64 [ 0, %.lr.ph.i372.epil.preheader ], [ %epil.iter594.next, %.lr.ph.i372.epil ]
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv3.i373.epil
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !16
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i374.epil
  store i64 %i.ox, ptr %i.oy, align 8, !tbaa !16
  %indvars.iv.next4.i375.epil = add nuw nsw i64 %indvars.iv3.i373.epil, 1
  %indvars.iv.next.i376.epil = add nuw nsw i64 %indvars.iv.i374.epil, %i.od
  %epil.iter594.next = add i64 %epil.iter594, 1   ; 2 uses
  %epil.iter594.cmp.not = icmp eq i64 %epil.iter594.next, %xtraiter593
  br i1 %epil.iter594.cmp.not, label %MOD_EXP_CTIME_COPY_TO_PREBUF.exit378, label %.lr.ph.i372.epil, !llvm.loop !54

MOD_EXP_CTIME_COPY_TO_PREBUF.exit378:             ; preds = %MOD_EXP_CTIME_COPY_TO_PREBUF.exit378.loopexit.unr-lcssa, %.lr.ph.i372.epil, %bb.aq
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  %exitcond466.not = icmp eq i64 %indvars.iv.next463, %wide.trip.count465
  br i1 %exitcond466.not, label %.loopexit399, label %bb.ap, !llvm.loop !55

.loopexit399:                                     ; preds = %MOD_EXP_CTIME_COPY_TO_PREBUF.exit378, %MOD_EXP_CTIME_COPY_TO_PREBUF.exit358
  %i.oz = add nsw i32 %i.h, -1
  %i.pa = srem i32 %i.oz, %spec.select
  %i.pb = add nsw i32 %i.pa, 1                    ; 2 uses
  %notmask328 = shl nsw i32 -1, %i.pb
  %i.pc = xor i32 %notmask328, -1
  %i.pd = sub nsw i32 %i.h, %i.pb                 ; 2 uses
  %i.pe = call fastcc i64 @bn_get_bits(ptr noundef %2, i32 noundef %i.pd)
  %i.pf = trunc i64 %i.pe to i32
  %i.pg = and i32 %i.pf, %i.pc
  %i.ph = call fastcc i32 @MOD_EXP_CTIME_COPY_FROM_PREBUF(ptr noundef %6, i32 noundef %i.c, ptr noundef %i.cf, i32 noundef %i.pg, i32 noundef %spec.select)
  %.not329 = icmp eq i32 %i.ph, 0
  br i1 %.not329, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %.loopexit399
  %i.pi = add nsw i32 %i.bo, -1
  br label %bb.as

bb.as:                                            ; preds = %bb.av, %bb.ar
  %.2301 = phi i32 [ %i.pd, %bb.ar ], [ %i.pm, %bb.av ] ; 2 uses
  %i.pj = icmp sgt i32 %.2301, 0
  br i1 %i.pj, label %.preheader, label %.loopexit

bb.at:                                            ; preds = %.preheader
  %i.pk = add nuw nsw i32 %.9435, 1               ; 2 uses
  %exitcond467.not = icmp eq i32 %i.pk, %spec.select
  br i1 %exitcond467.not, label %bb.au, label %.preheader, !llvm.loop !56

.preheader:                                       ; preds = %bb.as, %bb.at
  %.9435 = phi i32 [ %i.pk, %bb.at ], [ 0, %bb.as ]
  %i.pl = call i32 @bn_mul_mont_fixed_top(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %.0294, ptr noundef %4) #7
  %.not333 = icmp eq i32 %i.pl, 0
  br i1 %.not333, label %.thread, label %bb.at

bb.au:                                            ; preds = %bb.at
  %i.pm = sub nsw i32 %.2301, %spec.select        ; 2 uses
  %i.pn = call fastcc i64 @bn_get_bits(ptr noundef %2, i32 noundef %i.pm)
  %i.po = trunc i64 %i.pn to i32
  %i.pp = and i32 %i.pi, %i.po
  %i.pq = call fastcc i32 @MOD_EXP_CTIME_COPY_FROM_PREBUF(ptr noundef %7, i32 noundef %i.c, ptr noundef %i.cf, i32 noundef %i.pp, i32 noundef %spec.select)
  %.not331 = icmp eq i32 %i.pq, 0
  br i1 %.not331, label %.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.pr = call i32 @bn_mul_mont_fixed_top(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %.0294, ptr noundef %4) #7
  %.not332 = icmp eq i32 %i.pr, 0
  br i1 %.not332, label %.thread, label %bb.as, !llvm.loop !57

.loopexit:                                        ; preds = %bb.as, %.loopexit402
  %i.ps = call i32 @bn_from_mont_fixed_top(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %.0294, ptr noundef %4) #7
  %.not330 = icmp ne i32 %i.ps, 0
  %spec.select339 = zext i1 %.not330 to i32
  br label %.thread

.thread:                                          ; preds = %bb.ap, %bb.av, %bb.au, %.preheader, %bb.o, %bb.n, %.loopexit, %.loopexit399, %bb.an, %bb.ai, %bb.ah, %bb.ae, %bb.y, %bb.t, %bb.z, %bb.u
  %.1298 = phi i32 [ 0, %bb.t ], [ 1, %bb.u ], [ 0, %bb.y ], [ 1, %bb.z ], [ 0, %bb.ae ], [ 0, %.preheader ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.av ], [ 0, %bb.ah ], [ %spec.select339, %.loopexit ], [ 0, %.loopexit399 ], [ 0, %bb.ai ], [ 0, %bb.an ], [ 0, %bb.au ], [ 0, %bb.ap ] ; 2 uses
  %.2 = phi ptr [ null, %bb.t ], [ null, %bb.u ], [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.ae ], [ %spec.select338, %.preheader ], [ null, %bb.o ], [ null, %bb.n ], [ %spec.select338, %bb.av ], [ %spec.select338, %bb.ah ], [ %spec.select338, %.loopexit ], [ %spec.select338, %.loopexit399 ], [ %spec.select338, %bb.ai ], [ %spec.select338, %bb.an ], [ %spec.select338, %bb.au ], [ %spec.select338, %bb.ap ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.y ], [ 0, %bb.z ], [ %i.bu, %bb.ae ], [ %i.bu, %.preheader ], [ 0, %bb.o ], [ 0, %bb.n ], [ %i.bu, %bb.av ], [ %i.bu, %bb.ah ], [ %i.bu, %.loopexit ], [ %i.bu, %.loopexit399 ], [ %i.bu, %bb.ai ], [ %i.bu, %bb.an ], [ %i.bu, %bb.au ], [ %i.bu, %bb.ap ] ; 2 uses
  %.0290 = phi ptr [ null, %bb.t ], [ null, %bb.u ], [ null, %bb.y ], [ null, %bb.z ], [ null, %bb.ae ], [ %i.cf, %.preheader ], [ null, %bb.o ], [ null, %bb.n ], [ %i.cf, %bb.av ], [ %i.cf, %bb.ah ], [ %i.cf, %.loopexit ], [ %i.cf, %.loopexit399 ], [ %i.cf, %bb.ai ], [ %i.cf, %bb.an ], [ %i.cf, %bb.au ], [ %i.cf, %bb.ap ] ; 2 uses
  br i1 %.not318, label %.thread383, label %bb.aw

.thread383:                                       ; preds = %bb.j, %bb.k, %.thread
  %.0290397 = phi ptr [ %.0290, %.thread ], [ null, %bb.k ], [ null, %bb.j ]
  %.1395 = phi i32 [ %.1, %.thread ], [ 0, %bb.k ], [ 0, %bb.j ]
  %.2393 = phi ptr [ %.2, %.thread ], [ null, %bb.k ], [ null, %bb.j ]
  %.1295391 = phi ptr [ %.0294, %.thread ], [ %i.l, %bb.k ], [ null, %bb.j ]
  %.1298390 = phi i32 [ %.1298, %.thread ], [ 0, %bb.k ], [ 0, %bb.j ]
  call void @BN_MONT_CTX_free(ptr noundef %.1295391) #7
  br label %bb.aw

bb.aw:                                            ; preds = %.thread383, %.thread
  %.0290396 = phi ptr [ %.0290397, %.thread383 ], [ %.0290, %.thread ] ; 2 uses
  %.1394 = phi i32 [ %.1395, %.thread383 ], [ %.1, %.thread ]
  %.2392 = phi ptr [ %.2393, %.thread383 ], [ %.2, %.thread ]
  %.1298389 = phi i32 [ %.1298390, %.thread383 ], [ %.1298, %.thread ]
  %.not335 = icmp eq ptr %.0290396, null
  br i1 %.not335, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.pt = sext i32 %.1394 to i64
  call void @OPENSSL_cleanse(ptr noundef nonnull %.0290396, i64 noundef %i.pt) #7
  call void @CRYPTO_free(ptr noundef %.2392, ptr noundef nonnull @.str, i32 noundef 1140) #7
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  call void @BN_CTX_end(ptr noundef %4) #7
  br label %bb.az

bb.az:                                            ; preds = %bb.g, %bb.h, %bb.ay, %bb.d, %bb.b
  %.0305 = phi i32 [ %i.e, %bb.d ], [ 0, %bb.b ], [ %i.k, %bb.h ], [ %.1298389, %bb.ay ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret i32 %.0305
}

declare i32 @rsaz_avx2_eligible() local_unnamed_addr #2

declare void @RSAZ_1024_mod_exp_avx2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @bn_correct_top(ptr noundef) local_unnamed_addr #2

declare void @RSAZ_512_mod_exp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @bn_scatter5(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @bn_mul_mont(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bn_mul_mont_gather5(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @bn_get_bits(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = sdiv i32 %1, 64                          ; 3 uses
  %i.b = srem i32 %1, 64                          ; 3 uses
  %i.c = icmp sgt i32 %1, -64
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !10   ; 2 uses
  %i.f = icmp slt i32 %i.a, %i.e
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.h = zext nneg i32 %i.a to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.b to i64
  %i.l = lshr i64 %i.j, %i.k                      ; 2 uses
  %i.m = add nuw nsw i32 %i.a, 1                  ; 2 uses
  %i.n = icmp slt i32 %i.m, %i.e
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = zext nneg i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = sub nsw i32 64, %i.b
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl i64 %i.q, %i.s
  %i.u = or i64 %i.t, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b, %bb.a
  %.0 = phi i64 [ %i.u, %bb.e ], [ %i.l, %bb.d ], [ %i.j, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

declare void @bn_gather5(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @bn_get_bits5(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bn_power5(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @MOD_EXP_CTIME_COPY_FROM_PREBUF(ptr noundef nonnull %0, i32 noundef range(i32 -2147483648, 1048576) %1, ptr nofree noundef nonnull captures(address) %2, i32 noundef %3, i32 noundef range(i32 1, 7) %4) unnamed_addr #0 {
bb.a:
  %i.a = shl nuw nsw i32 1, %4
  %.fr429 = freeze i32 %i.a                       ; 3 uses
  %i.b = tail call ptr @bn_wexpand(ptr noundef nonnull %0, i32 noundef %1) #7
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %4, 4
  br i1 %i.d, label %.preheader81, label %bb.d

.preheader81:                                     ; preds = %bb.b
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader81
  %i.f = zext i32 %.fr429 to i64                  ; 3 uses
  %i.g = zext i32 %3 to i64                       ; 5 uses
  %wide.trip.count349 = zext nneg i32 %1 to i64
  %xtraiter423 = and i64 %i.f, 3                  ; 3 uses
  %5 = add i32 %.fr429, -1
  %6 = icmp ult i32 %5, 3
  %unroll_iter427 = and i64 %i.f, 4294967292
  %lcmp.mod424.not = icmp eq i64 %xtraiter423, 0
  %lcmp.mod426 = icmp ne i64 %xtraiter423, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.epilog-lcssa
  %indvars.iv346 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next347, %.epilog-lcssa ] ; 2 uses
  %.064163 = phi ptr [ %2, %.preheader.lr.ph ], [ %i.r, %.epilog-lcssa ] ; 6 uses
  br i1 %6, label %.epil.preheader422, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv341 = phi i64 [ %indvars.iv.next342.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %.063161 = phi i64 [ %i.l, %.preheader.new ], [ 0, %.preheader ]
  %niter428 = phi i64 [ %niter428.next.3, %.preheader.new ], [ 0, %.preheader ]
  %7 = getelementptr inbounds nuw [8 x i8], ptr %.064163, i64 %indvars.iv341
  %8 = load volatile i64, ptr %7, align 8, !tbaa !16
  %9 = icmp eq i64 %indvars.iv341, %i.g
  %10 = select i1 %9, i64 %8, i64 0
  %11 = or i64 %10, %.063161
  %indvars.iv.next342 = or disjoint i64 %indvars.iv341, 1 ; 2 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %.064163, i64 %indvars.iv.next342
  %i.h = load volatile i64, ptr %12, align 8, !tbaa !16
  %13 = icmp eq i64 %indvars.iv.next342, %i.g
  %i.i = select i1 %13, i64 %i.h, i64 0
  %14 = or i64 %i.i, %11
  %indvars.iv.next342.1 = or disjoint i64 %indvars.iv341, 2 ; 2 uses
  %15 = getelementptr inbounds nuw [8 x i8], ptr %.064163, i64 %indvars.iv.next342.1
  %i.j = load volatile i64, ptr %15, align 8, !tbaa !16
  %16 = icmp eq i64 %indvars.iv.next342.1, %i.g
  %i.k = select i1 %16, i64 %i.j, i64 0
  %17 = or i64 %i.k, %14
  %indvars.iv.next342.2 = or disjoint i64 %indvars.iv341, 3 ; 2 uses
  %18 = getelementptr inbounds nuw [8 x i8], ptr %.064163, i64 %indvars.iv.next342.2
  %19 = load volatile i64, ptr %18, align 8, !tbaa !16
  %20 = icmp eq i64 %indvars.iv.next342.2, %i.g
  %21 = select i1 %20, i64 %19, i64 0
  %i.l = or i64 %21, %17                          ; 3 uses
  %indvars.iv.next342.3 = add nuw nsw i64 %indvars.iv341, 4 ; 2 uses
  %niter428.next.3 = add i64 %niter428, 4         ; 2 uses
  %niter428.ncmp.3 = icmp eq i64 %niter428.next.3, %unroll_iter427
  br i1 %niter428.ncmp.3, label %.unr-lcssa, label %.preheader.new, !llvm.loop !58

.unr-lcssa:                                       ; preds = %.preheader.new
  br i1 %lcmp.mod424.not, label %.epilog-lcssa, label %.epil.preheader422

.epil.preheader422:                               ; preds = %.unr-lcssa, %.preheader
  %indvars.iv341.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next342.3, %.unr-lcssa ]
  %.063161.epil.init = phi i64 [ 0, %.preheader ], [ %i.l, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod426)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader422
  %indvars.iv341.epil = phi i64 [ %indvars.iv341.epil.init, %.epil.preheader422 ], [ %indvars.iv.next342.epil, %bb.c ] ; 3 uses
  %.063161.epil = phi i64 [ %.063161.epil.init, %.epil.preheader422 ], [ %i.o, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader422 ], [ %epil.iter.next, %bb.c ]
  %22 = getelementptr inbounds nuw [8 x i8], ptr %.064163, i64 %indvars.iv341.epil
  %i.m = load volatile i64, ptr %22, align 8, !tbaa !16
  %23 = icmp eq i64 %indvars.iv341.epil, %i.g
  %i.n = select i1 %23, i64 %i.m, i64 0
  %i.o = or i64 %i.n, %.063161.epil               ; 2 uses
  %indvars.iv.next342.epil = add nuw nsw i64 %indvars.iv341.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter423
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !59

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %.lcssa = phi i64 [ %i.l, %.unr-lcssa ], [ %i.o, %bb.c ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv346
  store i64 %.lcssa, ptr %i.q, align 8, !tbaa !16
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.064163, i64 %i.f
  %exitcond350.not = icmp eq i64 %indvars.iv.next347, %wide.trip.count349
  br i1 %exitcond350.not, label %.loopexit, label %.preheader, !llvm.loop !60

bb.d:                                             ; preds = %bb.b
  %i.s = add nsw i32 %4, -2                       ; 4 uses
  %i.t = shl nuw nsw i32 1, %i.s
  %.fr = freeze i32 %i.t                          ; 13 uses
  %i.u = ashr i32 %3, %i.s
  %.fr164 = freeze i32 %i.u                       ; 2 uses
  %i.v = add nsw i32 %.fr, -1
  %i.w = and i32 %i.v, %3                         ; 4 uses
  %i.x = icmp eq i32 %.fr164, 3                   ; 3 uses
  %i.y = icmp sgt i32 %1, 0
  br i1 %i.y, label %.preheader82.lr.ph, label %.loopexit

.preheader82.lr.ph:                               ; preds = %bb.d
  %i.z = shl nuw nsw i32 2, %i.s                  ; 4 uses
  %i.aa = shl nuw nsw i32 3, %i.s                 ; 4 uses
  %i.ab = zext nneg i32 %.fr429 to i64            ; 4 uses
  %wide.trip.count199 = zext nneg i32 %1 to i64   ; 4 uses
  switch i32 %.fr164, label %.preheader82.preheader [
    i32 0, label %.preheader82.us.preheader
    i32 1, label %.preheader82.us102.preheader
    i32 2, label %.preheader82.us105.preheader
  ]

.preheader82.us.preheader:                        ; preds = %.preheader82.lr.ph
  %i.ac = zext i32 %.fr to i64                    ; 3 uses
  %i.ad = zext nneg i32 %i.z to i64
  %i.ae = zext nneg i32 %i.aa to i64
  %i.af = zext nneg i32 %i.w to i64               ; 3 uses
  %xtraiter409 = and i64 %i.ac, 1
  %i.ag = icmp eq i32 %.fr, 1
  %unroll_iter413 = and i64 %i.ac, 4294967294
  %lcmp.mod410.not = icmp eq i64 %xtraiter409, 0
  %lcmp.mod412 = trunc i32 %.fr to i1
  br label %.preheader82.us

.preheader82.us:                                  ; preds = %.preheader82.us.preheader, %.split.us.us.split.split.split
  %indvars.iv266 = phi i64 [ 0, %.preheader82.us.preheader ], [ %indvars.iv.next267, %.split.us.us.split.split.split ] ; 2 uses
  %.199.us = phi ptr [ %2, %.preheader82.us.preheader ], [ %i.bh, %.split.us.us.split.split.split ] ; 7 uses
  %invariant.gep377 = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %i.ac ; 3 uses
  %invariant.gep379 = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %i.ad ; 3 uses
  %invariant.gep381 = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %i.ae ; 3 uses
  br i1 %i.ag, label %.epil.preheader408, label %.preheader82.us.new

.preheader82.us.new:                              ; preds = %.preheader82.us, %.preheader82.us.new
  %indvars.iv261 = phi i64 [ %indvars.iv.next262.1, %.preheader82.us.new ], [ 0, %.preheader82.us ] ; 7 uses
  %.085.us.us = phi i64 [ %i.aw, %.preheader82.us.new ], [ 0, %.preheader82.us ]
  %niter414 = phi i64 [ %niter414.next.1, %.preheader82.us.new ], [ 0, %.preheader82.us ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %indvars.iv261
  %i.ai = load volatile i64, ptr %i.ah, align 8, !tbaa !16
  %gep378 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep377, i64 %indvars.iv261
  %i.aj = load volatile i64, ptr %gep378, align 8, !tbaa !16 ; 0 uses
  %gep380 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep379, i64 %indvars.iv261
  %i.ak = load volatile i64, ptr %gep380, align 8, !tbaa !16 ; 0 uses
  %gep382 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep381, i64 %indvars.iv261
  %i.al = load volatile i64, ptr %gep382, align 8, !tbaa !16 ; 0 uses
  %i.am = icmp eq i64 %indvars.iv261, %i.af
  %i.an = select i1 %i.am, i64 %i.ai, i64 0
  %i.ao = or i64 %i.an, %.085.us.us
  %indvars.iv.next262 = or disjoint i64 %indvars.iv261, 1 ; 5 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %indvars.iv.next262
  %i.aq = load volatile i64, ptr %i.ap, align 8, !tbaa !16
  %gep378.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep377, i64 %indvars.iv.next262
  %i.ar = load volatile i64, ptr %gep378.1, align 8, !tbaa !16 ; 0 uses
  %gep380.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep379, i64 %indvars.iv.next262
  %i.as = load volatile i64, ptr %gep380.1, align 8, !tbaa !16 ; 0 uses
  %gep382.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep381, i64 %indvars.iv.next262
  %i.at = load volatile i64, ptr %gep382.1, align 8, !tbaa !16 ; 0 uses
  %i.au = icmp eq i64 %indvars.iv.next262, %i.af
  %i.av = select i1 %i.au, i64 %i.aq, i64 0
  %i.aw = or i64 %i.av, %i.ao                     ; 3 uses
  %indvars.iv.next262.1 = add nuw nsw i64 %indvars.iv261, 2 ; 2 uses
  %niter414.next.1 = add i64 %niter414, 2         ; 2 uses
  %niter414.ncmp.1 = icmp eq i64 %niter414.next.1, %unroll_iter413
  br i1 %niter414.ncmp.1, label %.split.us.us.split.split.split.unr-lcssa, label %.preheader82.us.new, !llvm.loop !61

.split.us.us.split.split.split.unr-lcssa:         ; preds = %.preheader82.us.new
  br i1 %lcmp.mod410.not, label %.split.us.us.split.split.split, label %.epil.preheader408

.epil.preheader408:                               ; preds = %.split.us.us.split.split.split.unr-lcssa, %.preheader82.us
  %indvars.iv261.epil.init = phi i64 [ 0, %.preheader82.us ], [ %indvars.iv.next262.1, %.split.us.us.split.split.split.unr-lcssa ] ; 5 uses
  %.085.us.us.epil.init = phi i64 [ 0, %.preheader82.us ], [ %i.aw, %.split.us.us.split.split.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod412)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %indvars.iv261.epil.init
  %i.ay = load volatile i64, ptr %i.ax, align 8, !tbaa !16
  %gep378.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep377, i64 %indvars.iv261.epil.init
  %i.az = load volatile i64, ptr %gep378.epil, align 8, !tbaa !16 ; 0 uses
  %gep380.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep379, i64 %indvars.iv261.epil.init
  %i.ba = load volatile i64, ptr %gep380.epil, align 8, !tbaa !16 ; 0 uses
  %gep382.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep381, i64 %indvars.iv261.epil.init
  %i.bb = load volatile i64, ptr %gep382.epil, align 8, !tbaa !16 ; 0 uses
  %i.bc = icmp eq i64 %indvars.iv261.epil.init, %i.af
  %i.bd = select i1 %i.bc, i64 %i.ay, i64 0
  %i.be = or i64 %i.bd, %.085.us.us.epil.init
  br label %.split.us.us.split.split.split

.split.us.us.split.split.split:                   ; preds = %.split.us.us.split.split.split.unr-lcssa, %.epil.preheader408
  %.lcssa394 = phi i64 [ %i.aw, %.split.us.us.split.split.split.unr-lcssa ], [ %i.be, %.epil.preheader408 ]
  %i.bf = load ptr, ptr %0, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv266
  store i64 %.lcssa394, ptr %i.bg, align 8, !tbaa !16
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.199.us, i64 %i.ab
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count199
  br i1 %exitcond270.not, label %.loopexit, label %.preheader82.us, !llvm.loop !62

.preheader82.us102.preheader:                     ; preds = %.preheader82.lr.ph
  %i.bi = zext i32 %.fr to i64                    ; 3 uses
  %i.bj = zext nneg i32 %i.z to i64
  %i.bk = zext nneg i32 %i.aa to i64
  %i.bl = zext nneg i32 %i.w to i64               ; 3 uses
  %xtraiter402 = and i64 %i.bi, 1
  %i.bm = icmp eq i32 %.fr, 1
  %unroll_iter406 = and i64 %i.bi, 4294967294
  %lcmp.mod403.not = icmp eq i64 %xtraiter402, 0
  %lcmp.mod405 = trunc i32 %.fr to i1
  br label %.preheader82.us102

.preheader82.us102:                               ; preds = %.preheader82.us102.preheader, %.split.split.us.us.split.split
  %indvars.iv226 = phi i64 [ 0, %.preheader82.us102.preheader ], [ %indvars.iv.next227, %.split.split.us.us.split.split ] ; 2 uses
  %.199.us103 = phi ptr [ %2, %.preheader82.us102.preheader ], [ %i.cn, %.split.split.us.us.split.split ] ; 7 uses
  %invariant.gep371 = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %i.bi ; 3 uses
  %invariant.gep373 = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %i.bj ; 3 uses
  %invariant.gep375 = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %i.bk ; 3 uses
  br i1 %i.bm, label %.epil.preheader401, label %.preheader82.us102.new

.preheader82.us102.new:                           ; preds = %.preheader82.us102, %.preheader82.us102.new
  %indvars.iv221 = phi i64 [ %indvars.iv.next222.1, %.preheader82.us102.new ], [ 0, %.preheader82.us102 ] ; 7 uses
  %.085.us86.us = phi i64 [ %i.cc, %.preheader82.us102.new ], [ 0, %.preheader82.us102 ]
  %niter407 = phi i64 [ %niter407.next.1, %.preheader82.us102.new ], [ 0, %.preheader82.us102 ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %indvars.iv221
  %i.bo = load volatile i64, ptr %i.bn, align 8, !tbaa !16 ; 0 uses
  %gep372 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep371, i64 %indvars.iv221
  %i.bp = load volatile i64, ptr %gep372, align 8, !tbaa !16
  %gep374 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep373, i64 %indvars.iv221
  %i.bq = load volatile i64, ptr %gep374, align 8, !tbaa !16 ; 0 uses
  %gep376 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep375, i64 %indvars.iv221
  %i.br = load volatile i64, ptr %gep376, align 8, !tbaa !16 ; 0 uses
  %i.bs = icmp eq i64 %indvars.iv221, %i.bl
  %i.bt = select i1 %i.bs, i64 %i.bp, i64 0
  %i.bu = or i64 %i.bt, %.085.us86.us
  %indvars.iv.next222 = or disjoint i64 %indvars.iv221, 1 ; 5 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %indvars.iv.next222
  %i.bw = load volatile i64, ptr %i.bv, align 8, !tbaa !16 ; 0 uses
  %gep372.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep371, i64 %indvars.iv.next222
  %i.bx = load volatile i64, ptr %gep372.1, align 8, !tbaa !16
  %gep374.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep373, i64 %indvars.iv.next222
  %i.by = load volatile i64, ptr %gep374.1, align 8, !tbaa !16 ; 0 uses
  %gep376.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep375, i64 %indvars.iv.next222
  %i.bz = load volatile i64, ptr %gep376.1, align 8, !tbaa !16 ; 0 uses
  %i.ca = icmp eq i64 %indvars.iv.next222, %i.bl
  %i.cb = select i1 %i.ca, i64 %i.bx, i64 0
  %i.cc = or i64 %i.cb, %i.bu                     ; 3 uses
  %indvars.iv.next222.1 = add nuw nsw i64 %indvars.iv221, 2 ; 2 uses
  %niter407.next.1 = add i64 %niter407, 2         ; 2 uses
  %niter407.ncmp.1 = icmp eq i64 %niter407.next.1, %unroll_iter406
  br i1 %niter407.ncmp.1, label %.split.split.us.us.split.split.unr-lcssa, label %.preheader82.us102.new, !llvm.loop !61

.split.split.us.us.split.split.unr-lcssa:         ; preds = %.preheader82.us102.new
  br i1 %lcmp.mod403.not, label %.split.split.us.us.split.split, label %.epil.preheader401

.epil.preheader401:                               ; preds = %.split.split.us.us.split.split.unr-lcssa, %.preheader82.us102
  %indvars.iv221.epil.init = phi i64 [ 0, %.preheader82.us102 ], [ %indvars.iv.next222.1, %.split.split.us.us.split.split.unr-lcssa ] ; 5 uses
  %.085.us86.us.epil.init = phi i64 [ 0, %.preheader82.us102 ], [ %i.cc, %.split.split.us.us.split.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod405)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %indvars.iv221.epil.init
  %i.ce = load volatile i64, ptr %i.cd, align 8, !tbaa !16 ; 0 uses
  %gep372.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep371, i64 %indvars.iv221.epil.init
  %i.cf = load volatile i64, ptr %gep372.epil, align 8, !tbaa !16
  %gep374.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep373, i64 %indvars.iv221.epil.init
  %i.cg = load volatile i64, ptr %gep374.epil, align 8, !tbaa !16 ; 0 uses
  %gep376.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep375, i64 %indvars.iv221.epil.init
  %i.ch = load volatile i64, ptr %gep376.epil, align 8, !tbaa !16 ; 0 uses
  %i.ci = icmp eq i64 %indvars.iv221.epil.init, %i.bl
  %i.cj = select i1 %i.ci, i64 %i.cf, i64 0
  %i.ck = or i64 %i.cj, %.085.us86.us.epil.init
  br label %.split.split.us.us.split.split

.split.split.us.us.split.split:                   ; preds = %.split.split.us.us.split.split.unr-lcssa, %.epil.preheader401
  %.lcssa396 = phi i64 [ %i.cc, %.split.split.us.us.split.split.unr-lcssa ], [ %i.ck, %.epil.preheader401 ]
  %i.cl = load ptr, ptr %0, align 8, !tbaa !15
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv226
  store i64 %.lcssa396, ptr %i.cm, align 8, !tbaa !16
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.199.us103, i64 %i.ab
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count199
  br i1 %exitcond230.not, label %.loopexit, label %.preheader82.us102, !llvm.loop !62

.preheader82.preheader:                           ; preds = %.preheader82.lr.ph
  %i.co = zext nneg i32 %i.w to i64               ; 3 uses
  %i.cp = zext i32 %.fr to i64                    ; 3 uses
  %i.cq = zext nneg i32 %i.z to i64
  %i.cr = zext nneg i32 %i.aa to i64
  %xtraiter416 = and i64 %i.cp, 1
  %i.cs = icmp eq i32 %.fr, 1
  %unroll_iter420 = and i64 %i.cp, 4294967294
  %lcmp.mod417.not = icmp eq i64 %xtraiter416, 0
  %lcmp.mod419 = trunc i32 %.fr to i1
  br label %.preheader82

.preheader82.us105.preheader:                     ; preds = %.preheader82.lr.ph
  %i.ct = zext i32 %.fr to i64                    ; 3 uses
  %i.cu = zext nneg i32 %i.z to i64
  %i.cv = zext nneg i32 %i.aa to i64
  %i.cw = zext nneg i32 %i.w to i64               ; 3 uses
  %xtraiter = and i64 %i.ct, 1
  %i.cx = icmp eq i32 %.fr, 1
  %unroll_iter = and i64 %i.ct, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod400 = trunc i32 %.fr to i1
  br label %.preheader82.us105

.preheader82.us105:                               ; preds = %.preheader82.us105.preheader, %.split.split.split.us.us.split
  %indvars.iv206 = phi i64 [ 0, %.preheader82.us105.preheader ], [ %indvars.iv.next207, %.split.split.split.us.us.split ] ; 2 uses
  %.199.us106 = phi ptr [ %2, %.preheader82.us105.preheader ], [ %i.dy, %.split.split.split.us.us.split ] ; 7 uses
  %invariant.gep365 = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %i.ct ; 3 uses
  %invariant.gep367 = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %i.cu ; 3 uses
  %invariant.gep369 = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %i.cv ; 3 uses
  br i1 %i.cx, label %.epil.preheader, label %.preheader82.us105.new

.preheader82.us105.new:                           ; preds = %.preheader82.us105, %.preheader82.us105.new
  %indvars.iv201 = phi i64 [ %indvars.iv.next202.1, %.preheader82.us105.new ], [ 0, %.preheader82.us105 ] ; 7 uses
  %.085.us92.us = phi i64 [ %i.dn, %.preheader82.us105.new ], [ 0, %.preheader82.us105 ]
  %niter = phi i64 [ %niter.next.1, %.preheader82.us105.new ], [ 0, %.preheader82.us105 ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %indvars.iv201
  %i.cz = load volatile i64, ptr %i.cy, align 8, !tbaa !16 ; 0 uses
  %gep366 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep365, i64 %indvars.iv201
  %i.da = load volatile i64, ptr %gep366, align 8, !tbaa !16 ; 0 uses
  %gep368 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep367, i64 %indvars.iv201
  %i.db = load volatile i64, ptr %gep368, align 8, !tbaa !16
  %gep370 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep369, i64 %indvars.iv201
  %i.dc = load volatile i64, ptr %gep370, align 8, !tbaa !16 ; 0 uses
  %i.dd = icmp eq i64 %indvars.iv201, %i.cw
  %i.de = select i1 %i.dd, i64 %i.db, i64 0
  %i.df = or i64 %i.de, %.085.us92.us
  %indvars.iv.next202 = or disjoint i64 %indvars.iv201, 1 ; 5 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %indvars.iv.next202
  %i.dh = load volatile i64, ptr %i.dg, align 8, !tbaa !16 ; 0 uses
  %gep366.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep365, i64 %indvars.iv.next202
  %i.di = load volatile i64, ptr %gep366.1, align 8, !tbaa !16 ; 0 uses
  %gep368.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep367, i64 %indvars.iv.next202
  %i.dj = load volatile i64, ptr %gep368.1, align 8, !tbaa !16
  %gep370.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep369, i64 %indvars.iv.next202
  %i.dk = load volatile i64, ptr %gep370.1, align 8, !tbaa !16 ; 0 uses
  %i.dl = icmp eq i64 %indvars.iv.next202, %i.cw
  %i.dm = select i1 %i.dl, i64 %i.dj, i64 0
  %i.dn = or i64 %i.dm, %i.df                     ; 3 uses
  %indvars.iv.next202.1 = add nuw nsw i64 %indvars.iv201, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split.split.split.us.us.split.unr-lcssa, label %.preheader82.us105.new, !llvm.loop !61

.split.split.split.us.us.split.unr-lcssa:         ; preds = %.preheader82.us105.new
  br i1 %lcmp.mod.not, label %.split.split.split.us.us.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %.split.split.split.us.us.split.unr-lcssa, %.preheader82.us105
  %indvars.iv201.epil.init = phi i64 [ 0, %.preheader82.us105 ], [ %indvars.iv.next202.1, %.split.split.split.us.us.split.unr-lcssa ] ; 5 uses
  %.085.us92.us.epil.init = phi i64 [ 0, %.preheader82.us105 ], [ %i.dn, %.split.split.split.us.us.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod400)
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %indvars.iv201.epil.init
  %i.dp = load volatile i64, ptr %i.do, align 8, !tbaa !16 ; 0 uses
  %gep366.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep365, i64 %indvars.iv201.epil.init
  %i.dq = load volatile i64, ptr %gep366.epil, align 8, !tbaa !16 ; 0 uses
  %gep368.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep367, i64 %indvars.iv201.epil.init
  %i.dr = load volatile i64, ptr %gep368.epil, align 8, !tbaa !16
  %gep370.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep369, i64 %indvars.iv201.epil.init
  %i.ds = load volatile i64, ptr %gep370.epil, align 8, !tbaa !16 ; 0 uses
  %i.dt = icmp eq i64 %indvars.iv201.epil.init, %i.cw
  %i.du = select i1 %i.dt, i64 %i.dr, i64 0
  %i.dv = or i64 %i.du, %.085.us92.us.epil.init
  br label %.split.split.split.us.us.split

.split.split.split.us.us.split:                   ; preds = %.split.split.split.us.us.split.unr-lcssa, %.epil.preheader
  %.lcssa398 = phi i64 [ %i.dn, %.split.split.split.us.us.split.unr-lcssa ], [ %i.dv, %.epil.preheader ]
  %i.dw = load ptr, ptr %0, align 8, !tbaa !15
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv206
  store i64 %.lcssa398, ptr %i.dx, align 8, !tbaa !16
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %i.ab
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count199
  br i1 %exitcond210.not, label %.loopexit, label %.preheader82.us105, !llvm.loop !62

.preheader82:                                     ; preds = %.preheader82.preheader, %.split.split.split
  %indvars.iv196 = phi i64 [ 0, %.preheader82.preheader ], [ %indvars.iv.next197, %.split.split.split ] ; 2 uses
  %.199 = phi ptr [ %2, %.preheader82.preheader ], [ %i.fc, %.split.split.split ] ; 7 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %i.cp ; 3 uses
  %invariant.gep361 = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %i.cq ; 3 uses
  %invariant.gep363 = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %i.cr ; 3 uses
  br i1 %i.cs, label %.epil.preheader415, label %.preheader82.new

.preheader82.new:                                 ; preds = %.preheader82, %.preheader82.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader82.new ], [ 0, %.preheader82 ] ; 7 uses
  %.085 = phi i64 [ %i.eq, %.preheader82.new ], [ 0, %.preheader82 ]
  %niter421 = phi i64 [ %niter421.next.1, %.preheader82.new ], [ 0, %.preheader82 ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %indvars.iv
  %i.ea = load volatile i64, ptr %i.dz, align 8, !tbaa !16 ; 0 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.eb = load volatile i64, ptr %gep, align 8, !tbaa !16 ; 0 uses
  %gep362 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep361, i64 %indvars.iv
  %i.ec = load volatile i64, ptr %gep362, align 8, !tbaa !16 ; 0 uses
  %gep364 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep363, i64 %indvars.iv
  %i.ed = load volatile i64, ptr %gep364, align 8, !tbaa !16
  %i.ee = icmp eq i64 %indvars.iv, %i.co
  %i.ef = and i1 %i.ee, %i.x
  %i.eg = select i1 %i.ef, i64 %i.ed, i64 0
  %i.eh = or i64 %i.eg, %.085
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 5 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %indvars.iv.next
  %i.ej = load volatile i64, ptr %i.ei, align 8, !tbaa !16 ; 0 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ek = load volatile i64, ptr %gep.1, align 8, !tbaa !16 ; 0 uses
  %gep362.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep361, i64 %indvars.iv.next
  %i.el = load volatile i64, ptr %gep362.1, align 8, !tbaa !16 ; 0 uses
  %gep364.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep363, i64 %indvars.iv.next
  %i.em = load volatile i64, ptr %gep364.1, align 8, !tbaa !16
  %i.en = icmp eq i64 %indvars.iv.next, %i.co
  %i.eo = and i1 %i.en, %i.x
  %i.ep = select i1 %i.eo, i64 %i.em, i64 0
  %i.eq = or i64 %i.ep, %i.eh                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter421.next.1 = add i64 %niter421, 2         ; 2 uses
  %niter421.ncmp.1 = icmp eq i64 %niter421.next.1, %unroll_iter420
  br i1 %niter421.ncmp.1, label %.split.split.split.unr-lcssa, label %.preheader82.new, !llvm.loop !61

.split.split.split.unr-lcssa:                     ; preds = %.preheader82.new
  br i1 %lcmp.mod417.not, label %.split.split.split, label %.epil.preheader415

.epil.preheader415:                               ; preds = %.split.split.split.unr-lcssa, %.preheader82
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader82 ], [ %indvars.iv.next.1, %.split.split.split.unr-lcssa ] ; 5 uses
  %.085.epil.init = phi i64 [ 0, %.preheader82 ], [ %i.eq, %.split.split.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod419)
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %indvars.iv.epil.init
  %i.es = load volatile i64, ptr %i.er, align 8, !tbaa !16 ; 0 uses
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.et = load volatile i64, ptr %gep.epil, align 8, !tbaa !16 ; 0 uses
  %gep362.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep361, i64 %indvars.iv.epil.init
  %i.eu = load volatile i64, ptr %gep362.epil, align 8, !tbaa !16 ; 0 uses
  %gep364.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep363, i64 %indvars.iv.epil.init
  %i.ev = load volatile i64, ptr %gep364.epil, align 8, !tbaa !16
  %i.ew = icmp eq i64 %indvars.iv.epil.init, %i.co
  %i.ex = and i1 %i.ew, %i.x
  %i.ey = select i1 %i.ex, i64 %i.ev, i64 0
  %i.ez = or i64 %i.ey, %.085.epil.init
  br label %.split.split.split

.split.split.split:                               ; preds = %.split.split.split.unr-lcssa, %.epil.preheader415
  %.lcssa392 = phi i64 [ %i.eq, %.split.split.split.unr-lcssa ], [ %i.ez, %.epil.preheader415 ]
  %i.fa = load ptr, ptr %0, align 8, !tbaa !15
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv196
  store i64 %.lcssa392, ptr %i.fb, align 8, !tbaa !16
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %i.ab
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count199
  br i1 %exitcond200.not, label %.loopexit, label %.preheader82, !llvm.loop !62

.loopexit:                                        ; preds = %.split.split.split.us.us.split, %.split.split.us.us.split.split, %.split.us.us.split.split.split, %.split.split.split, %.epilog-lcssa, %bb.d, %.preheader81
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.fd, align 8, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.loopexit
  %.069 = phi i32 [ 1, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.069
}

declare i32 @bn_from_mont_fixed_top(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_to_montgomery(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_mul_word(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_div(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_mod_mul_montgomery(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @BN_mod_exp_simple(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call i32 @BN_get_flags(ptr noundef %2, i32 noundef 4) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @BN_get_flags(ptr noundef %1, i32 noundef 4) #7
  %.not118 = icmp eq i32 %i.c, 0
  br i1 %.not118, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @BN_get_flags(ptr noundef %3, i32 noundef 4) #7
  %.not119 = icmp eq i32 %i.d, 0
  br i1 %.not119, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1319, ptr noundef nonnull @__func__.BN_mod_exp_simple) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786689, ptr noundef null) #7
  br label %bb.af

bb.e:                                             ; preds = %bb.c
  %i.e = icmp eq ptr %0, %3
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1324, ptr noundef nonnull @__func__.BN_mod_exp_simple) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 524550, ptr noundef null) #7
  br label %bb.af

bb.g:                                             ; preds = %bb.e
  %i.f = tail call i32 @BN_num_bits(ptr noundef %2) #7 ; 6 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @BN_abs_is_word(ptr noundef %3, i64 noundef 1) #7
  %.not132 = icmp eq i32 %i.h, 0
  br i1 %.not132, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @BN_zero_ex(ptr noundef %0) #7
  br label %bb.af

bb.j:                                             ; preds = %bb.h
  %i.i = tail call i32 @BN_set_word(ptr noundef %0, i64 noundef 1) #7
  br label %bb.af

bb.k:                                             ; preds = %bb.g
  tail call void @BN_CTX_start(ptr noundef %4) #7
  %i.j = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 2 uses
  %i.k = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 6 uses
  store ptr %i.k, ptr %i.a, align 16, !tbaa !20
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread139, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = tail call i32 @BN_nnmod(ptr noundef nonnull %i.k, ptr noundef %1, ptr noundef %3, ptr noundef %4) #7
  %.not120 = icmp eq i32 %i.m, 0
  br i1 %.not120, label %.thread139, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = tail call i32 @BN_is_zero(ptr noundef nonnull %i.k) #7
  %.not121 = icmp eq i32 %i.n, 0
  br i1 %.not121, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @BN_zero_ex(ptr noundef %0) #7
  br label %.thread139

bb.o:                                             ; preds = %bb.m
  %i.o = icmp sgt i32 %i.f, 671
  br i1 %i.o, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.p = icmp sgt i32 %i.f, 239
  br i1 %i.p, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = icmp sgt i32 %i.f, 79
  br i1 %i.q, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.r = icmp sgt i32 %i.f, 23
  br i1 %i.r, label %.thread, label %.loopexit157

.thread:                                          ; preds = %bb.q, %bb.p, %bb.o, %bb.r
  %i.s = phi i32 [ 3, %bb.r ], [ 6, %bb.o ], [ 5, %bb.p ], [ 4, %bb.q ] ; 2 uses
  %i.t = tail call i32 @BN_mod_mul(ptr noundef %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef %3, ptr noundef %4) #7
  %.not122 = icmp eq i32 %i.t, 0
  br i1 %.not122, label %.thread139, label %bb.s

bb.s:                                             ; preds = %.thread
  %i.u = add nsw i32 %i.s, -1                     ; 2 uses
  %.not170 = icmp eq i32 %i.u, 0
  br i1 %.not170, label %.loopexit157, label %.lr.ph

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = trunc nuw i64 %indvars.iv.next to i32
  %.0101.highbits = lshr i32 %i.v, %i.u
  %i.w = icmp eq i32 %.0101.highbits, 0
  br i1 %i.w, label %.lr.ph, label %.loopexit157, !llvm.loop !63

.lr.ph:                                           ; preds = %bb.s, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 1, %bb.s ] ; 2 uses
  %i.x = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !20
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %.thread139, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.aa = getelementptr i8, ptr %i.y, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.ac = tail call i32 @BN_mod_mul(ptr noundef nonnull %i.x, ptr noundef %i.ab, ptr noundef %i.j, ptr noundef %3, ptr noundef %4) #7
  %.not131 = icmp eq i32 %i.ac, 0
  br i1 %.not131, label %.thread139, label %bb.t

.loopexit157:                                     ; preds = %bb.t, %bb.s, %bb.r
  %i.ad = phi i32 [ 1, %bb.r ], [ 1, %bb.s ], [ %i.s, %bb.t ] ; 2 uses
  %i.ae = add nsw i32 %i.f, -1
  %i.af = icmp eq ptr %0, %2
  br i1 %i.af, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.loopexit157
  %i.ag = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.thread139, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ai = tail call ptr @BN_copy(ptr noundef nonnull %i.ag, ptr noundef %2) #7
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.thread139, label %bb.x

bb.x:                                             ; preds = %bb.w, %.loopexit157
  %.1105 = phi ptr [ %2, %.loopexit157 ], [ %i.ag, %bb.w ] ; 2 uses
  %i.ak = tail call i32 @BN_set_word(ptr noundef %0, i64 noundef 1) #7
  %.not123 = icmp eq i32 %i.ak, 0
  br i1 %.not123, label %.thread139, label %.preheader155

.preheader155:                                    ; preds = %bb.x
  %i.al = icmp sgt i32 %i.ad, 1
  br label %.outer

.outer:                                           ; preds = %bb.ae, %.preheader155
  %.097.ph = phi i32 [ %i.bf, %bb.ae ], [ %i.ae, %.preheader155 ]
  %.not125 = phi i1 [ true, %bb.ae ], [ false, %.preheader155 ] ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.outer, %bb.ab
  %.097 = phi i32 [ %i.aq, %bb.ab ], [ %.097.ph, %.outer ] ; 5 uses
  %i.am = tail call i32 @BN_is_bit_set(ptr noundef %.1105, i32 noundef %.097) #7
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.z, label %.preheader154

.preheader154:                                    ; preds = %bb.y
  br i1 %i.al, label %.lr.ph164, label %._crit_edge

bb.z:                                             ; preds = %bb.y
  br i1 %.not125, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ao = tail call i32 @BN_mod_mul(ptr noundef %0, ptr noundef %0, ptr noundef %0, ptr noundef %3, ptr noundef %4) #7
  %.not130 = icmp eq i32 %i.ao, 0
  br i1 %.not130, label %.thread139, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ap = icmp eq i32 %.097, 0
  %i.aq = add nsw i32 %.097, -1
  br i1 %i.ap, label %.thread139, label %bb.y

.lr.ph164:                                        ; preds = %.preheader154, %bb.ac
  %.0163 = phi i32 [ %.1, %bb.ac ], [ 1, %.preheader154 ] ; 3 uses
  %.095162 = phi i32 [ %.196, %bb.ac ], [ 0, %.preheader154 ] ; 3 uses
  %.1102161 = phi i32 [ %i.ax, %bb.ac ], [ 1, %.preheader154 ] ; 4 uses
  %i.ar = sub nsw i32 %.097, %.1102161            ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %._crit_edge.loopexit, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph164
  %i.at = tail call i32 @BN_is_bit_set(ptr noundef %.1105, i32 noundef %i.ar) #7
  %.not124 = icmp eq i32 %i.at, 0                 ; 2 uses
  %i.au = sub nsw i32 %.1102161, %.095162
  %i.av = shl i32 %.0163, %i.au
  %i.aw = or i32 %i.av, 1
  %.196 = select i1 %.not124, i32 %.095162, i32 %.1102161 ; 2 uses
  %.1 = select i1 %.not124, i32 %.0163, i32 %i.aw ; 2 uses
  %i.ax = add nuw nsw i32 %.1102161, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ax, %i.ad
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph164, !llvm.loop !64

._crit_edge.loopexit:                             ; preds = %.lr.ph164, %bb.ac
  %.095.lcssa.ph = phi i32 [ %.196, %bb.ac ], [ %.095162, %.lr.ph164 ]
  %.0.lcssa.ph = phi i32 [ %.1, %bb.ac ], [ %.0163, %.lr.ph164 ]
  %i.ay = ashr i32 %.0.lcssa.ph, 1
  %i.az = sext i32 %i.ay to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader154
  %.095.lcssa = phi i32 [ 0, %.preheader154 ], [ %.095.lcssa.ph, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %.preheader154 ], [ %i.az, %._crit_edge.loopexit ]
  %.neg = xor i32 %.095.lcssa, -1
  br i1 %.not125, label %.preheader, label %.loopexit

bb.ad:                                            ; preds = %.preheader
  %i.ba = add nuw i32 %.2169, 1
  %exitcond174.not = icmp eq i32 %.2169, %.095.lcssa
  br i1 %exitcond174.not, label %.loopexit, label %.preheader, !llvm.loop !65

.preheader:                                       ; preds = %._crit_edge, %bb.ad
  %.2169 = phi i32 [ %i.ba, %bb.ad ], [ 0, %._crit_edge ] ; 2 uses
  %i.bb = tail call i32 @BN_mod_mul(ptr noundef %0, ptr noundef %0, ptr noundef %0, ptr noundef %3, ptr noundef %4) #7
  %.not127 = icmp eq i32 %i.bb, 0
  br i1 %.not127, label %.thread139, label %bb.ad

.loopexit:                                        ; preds = %bb.ad, %._crit_edge
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.0.lcssa
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !20
  %i.be = tail call i32 @BN_mod_mul(ptr noundef %0, ptr noundef %0, ptr noundef %i.bd, ptr noundef %3, ptr noundef %4) #7
  %.not128 = icmp eq i32 %i.be, 0
  br i1 %.not128, label %.thread139, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  %i.bf = add i32 %.097, %.neg                    ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %.thread139, label %.outer

.thread139:                                       ; preds = %.lr.ph, %bb.u, %bb.aa, %bb.ab, %.loopexit, %bb.ae, %.preheader, %bb.w, %bb.v, %bb.x, %.thread, %bb.l, %bb.k, %bb.n
  %.1100 = phi i32 [ 0, %bb.k ], [ 1, %bb.n ], [ 0, %.loopexit ], [ 0, %.preheader ], [ 0, %bb.l ], [ 0, %bb.v ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %.thread ], [ 0, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.ae ], [ 0, %bb.u ], [ 0, %.lr.ph ]
  tail call void @BN_CTX_end(ptr noundef %4) #7
  br label %bb.af

bb.af:                                            ; preds = %bb.i, %bb.j, %.thread139, %bb.f, %bb.d
  %.0103 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 1, %bb.i ], [ %.1100, %.thread139 ], [ %i.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0103
}

declare i32 @BN_mod_mul(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @BN_mod_exp_mont_consttime_x2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_rsaz_avx512ifma_eligible() #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @ossl_rsaz_avxifma_eligible() #7
  %.not86 = icmp eq i32 %i.b, 0
  br i1 %.not86, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.e = icmp eq i32 %i.d, 16
  br i1 %i.e, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !10
  %i.h = icmp eq i32 %i.g, 16
  br i1 %i.h, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @BN_num_bits(ptr noundef %3) #7
  %i.j = icmp eq i32 %i.i, 1024
  br i1 %i.j, label %bb.f, label %thread-pre-split

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !10
  %i.m = icmp eq i32 %i.l, 16
  br i1 %i.m, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !10
  %i.p = icmp eq i32 %i.o, 16
  br i1 %i.p, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %bb.g
  %i.q = tail call i32 @BN_num_bits(ptr noundef %8) #7
  %i.r = icmp eq i32 %i.q, 1024
  br i1 %i.r, label %bb.u, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.pr = load i32, ptr %i.c, align 8, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split, %bb.c
  %i.s = phi i32 [ %.pr, %thread-pre-split ], [ %i.d, %bb.c ]
  %i.t = icmp eq i32 %i.s, 24
  br i1 %i.t, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !10
  %i.w = icmp eq i32 %i.v, 24
  br i1 %i.w, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.x = tail call i32 @BN_num_bits(ptr noundef %3) #7
  %i.y = icmp eq i32 %i.x, 1536
  br i1 %i.y, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !10
  %i.ab = icmp eq i32 %i.aa, 24
  br i1 %i.ab, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !10
  %i.ae = icmp eq i32 %i.ad, 24
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.af = tail call i32 @BN_num_bits(ptr noundef %8) #7
  %i.ag = icmp eq i32 %i.af, 1536
  br i1 %i.ag, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ah = load i32, ptr %i.c, align 8, !tbaa !10
  %i.ai = icmp eq i32 %i.ah, 32
  br i1 %i.ai, label %bb.p, label %bb.ad

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !10
  %i.al = icmp eq i32 %i.ak, 32
  br i1 %i.al, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %bb.p
  %i.am = tail call i32 @BN_num_bits(ptr noundef %3) #7
  %i.an = icmp eq i32 %i.am, 2048
  br i1 %i.an, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !10
  %i.aq = icmp eq i32 %i.ap, 32
  br i1 %i.aq, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !10
  %i.at = icmp eq i32 %i.as, 32
  br i1 %i.at, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.au = tail call i32 @BN_num_bits(ptr noundef %8) #7
  %i.av = icmp eq i32 %i.au, 2048
  br i1 %i.av, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %bb.t, %bb.n, %bb.h
  %i.aw = load i32, ptr %i.c, align 8, !tbaa !10  ; 4 uses
  %i.ax = tail call i32 @BN_num_bits(ptr noundef %3) #7
  %i.ay = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef %i.aw) #7
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %BN_mod_exp_mont_consttime.exit93, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = tail call ptr @bn_wexpand(ptr noundef %5, i32 noundef %i.aw) #7
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %BN_mod_exp_mont_consttime.exit93, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not87 = icmp eq ptr %4, null
  br i1 %.not87, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bc = tail call ptr @BN_MONT_CTX_new() #7     ; 4 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %BN_mod_exp_mont_consttime.exit93, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = tail call i32 @BN_MONT_CTX_set(ptr noundef nonnull %i.bc, ptr noundef %3, ptr noundef %10) #7
  %.not88 = icmp eq i32 %i.be, 0
  br i1 %.not88, label %BN_mod_exp_mont_consttime.exit93, label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y
  %.075 = phi ptr [ %i.bc, %bb.y ], [ %4, %bb.w ] ; 5 uses
  %.not89 = icmp eq ptr %9, null
  br i1 %.not89, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bf = tail call ptr @BN_MONT_CTX_new() #7     ; 4 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = tail call i32 @BN_MONT_CTX_set(ptr noundef nonnull %i.bf, ptr noundef %8, ptr noundef %10) #7
  %.not90 = icmp eq i32 %i.bh, 0
  br i1 %.not90, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab
  %.074 = phi ptr [ %i.bf, %bb.ab ], [ %9, %bb.z ] ; 3 uses
  %i.bi = load ptr, ptr %0, align 8, !tbaa !15
  %i.bj = load ptr, ptr %1, align 8, !tbaa !15
  %i.bk = load ptr, ptr %2, align 8, !tbaa !15
  %i.bl = load ptr, ptr %3, align 8, !tbaa !15
  %i.bm = load ptr, ptr %.075, align 8, !tbaa !34
  %i.bn = getelementptr inbounds nuw i8, ptr %.075, i64 72
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !16
  %i.bp = load ptr, ptr %5, align 8, !tbaa !15
  %i.bq = load ptr, ptr %6, align 8, !tbaa !15
  %i.br = load ptr, ptr %7, align 8, !tbaa !15
  %i.bs = load ptr, ptr %8, align 8, !tbaa !15
  %i.bt = load ptr, ptr %.074, align 8, !tbaa !34
  %i.bu = getelementptr inbounds nuw i8, ptr %.074, i64 72
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !16
  %i.bw = tail call i32 @ossl_rsaz_mod_exp_avx512_x2(ptr noundef %i.bi, ptr noundef %i.bj, ptr noundef %i.bk, ptr noundef %i.bl, ptr noundef %i.bm, i64 noundef %i.bo, ptr noundef %i.bp, ptr noundef %i.bq, ptr noundef %i.br, ptr noundef %i.bs, ptr noundef %i.bt, i64 noundef %i.bv, i32 noundef %i.ax) #7
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.aw, ptr %i.bx, align 8, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.by, align 8, !tbaa !14
  tail call void @bn_correct_top(ptr noundef nonnull %0) #7
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.aw, ptr %i.bz, align 8, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.ca, align 8, !tbaa !14
  br label %BN_mod_exp_mont_consttime.exit93.sink.split

bb.ad:                                            ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.b
  %i.cb = tail call i32 @bn_mod_exp_mont_fixed_top(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %10, ptr noundef %4), !inline_history !19
  %.not.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i, label %BN_mod_exp_mont_consttime.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @bn_correct_top(ptr noundef %0) #7, !inline_history !19
  br label %BN_mod_exp_mont_consttime.exit

BN_mod_exp_mont_consttime.exit:                   ; preds = %bb.ad, %bb.ae
  %.0.i = phi i32 [ 1, %bb.ae ], [ 0, %bb.ad ]
  %i.cc = tail call i32 @bn_mod_exp_mont_fixed_top(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %10, ptr noundef %9), !inline_history !19
  %.not.i91 = icmp eq i32 %i.cc, 0
  br i1 %.not.i91, label %BN_mod_exp_mont_consttime.exit93, label %BN_mod_exp_mont_consttime.exit93.sink.split

BN_mod_exp_mont_consttime.exit93.sink.split:      ; preds = %BN_mod_exp_mont_consttime.exit, %bb.ac
  %.179.ph = phi i32 [ %i.bw, %bb.ac ], [ %.0.i, %BN_mod_exp_mont_consttime.exit ]
  %.277.ph = phi ptr [ %.075, %bb.ac ], [ null, %BN_mod_exp_mont_consttime.exit ]
  %.2.ph = phi ptr [ %.074, %bb.ac ], [ null, %BN_mod_exp_mont_consttime.exit ]
  tail call void @bn_correct_top(ptr noundef %5) #7
  br label %BN_mod_exp_mont_consttime.exit93

BN_mod_exp_mont_consttime.exit93:                 ; preds = %BN_mod_exp_mont_consttime.exit93.sink.split, %BN_mod_exp_mont_consttime.exit, %bb.u, %bb.v, %bb.x, %bb.y
  %.179 = phi i32 [ 0, %bb.v ], [ 0, %bb.x ], [ 0, %bb.u ], [ 0, %BN_mod_exp_mont_consttime.exit ], [ 0, %bb.y ], [ %.179.ph, %BN_mod_exp_mont_consttime.exit93.sink.split ] ; 2 uses
  %.277 = phi ptr [ null, %bb.v ], [ null, %bb.x ], [ null, %bb.u ], [ null, %BN_mod_exp_mont_consttime.exit ], [ %i.bc, %bb.y ], [ %.277.ph, %BN_mod_exp_mont_consttime.exit93.sink.split ] ; 2 uses
  %.2 = phi ptr [ null, %bb.v ], [ null, %bb.x ], [ null, %bb.u ], [ null, %BN_mod_exp_mont_consttime.exit ], [ null, %bb.y ], [ %.2.ph, %BN_mod_exp_mont_consttime.exit93.sink.split ]
  %i.cd = icmp eq ptr %9, null
  br i1 %i.cd, label %.thread, label %bb.af

.thread:                                          ; preds = %bb.ab, %bb.aa, %BN_mod_exp_mont_consttime.exit93
  %.2101 = phi ptr [ %.2, %BN_mod_exp_mont_consttime.exit93 ], [ %i.bf, %bb.ab ], [ null, %bb.aa ]
  %.277100 = phi ptr [ %.277, %BN_mod_exp_mont_consttime.exit93 ], [ %.075, %bb.ab ], [ %.075, %bb.aa ]
  %.17998 = phi i32 [ %.179, %BN_mod_exp_mont_consttime.exit93 ], [ 0, %bb.ab ], [ 0, %bb.aa ]
  tail call void @BN_MONT_CTX_free(ptr noundef %.2101) #7
  br label %bb.af

bb.af:                                            ; preds = %.thread, %BN_mod_exp_mont_consttime.exit93
  %.27799 = phi ptr [ %.277100, %.thread ], [ %.277, %BN_mod_exp_mont_consttime.exit93 ]
  %.17997 = phi i32 [ %.17998, %.thread ], [ %.179, %BN_mod_exp_mont_consttime.exit93 ]
  %i.ce = icmp eq ptr %4, null
  br i1 %i.ce, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @BN_MONT_CTX_free(ptr noundef %.27799) #7
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  ret i32 %.17997
}

declare i32 @ossl_rsaz_avx512ifma_eligible() local_unnamed_addr #2

declare i32 @ossl_rsaz_avxifma_eligible() local_unnamed_addr #2

declare i32 @ossl_rsaz_mod_exp_avx512_x2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !5, i64 8}
!11 = !{!"bignum_st", !12, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!12 = !{!"p1 long", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!11, !5, i64 16}
!15 = !{!11, !12, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = distinct !{!18, !9}
!19 = !{ptr @BN_mod_exp_mont_consttime}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS9bignum_st", !13, i64 0}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !9, !24}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = !{!35, !12, i64 0}
!35 = !{!"bn_mont_ctx_st", !11, i64 0, !11, i64 24, !11, i64 48, !6, i64 72, !5, i64 88, !5, i64 92}
!36 = !{!11, !5, i64 12}
!37 = !{!11, !5, i64 20}
!38 = distinct !{!38, !9, !24, !25}
!39 = distinct !{!39, !27}
!40 = distinct !{!40, !9, !24}
!41 = !{!35, !12, i64 24}
!42 = distinct !{!42, !9, !24, !25}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !9, !24}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = distinct !{!47, !9, !24}
!48 = distinct !{!48, !27}
!49 = distinct !{!49, !9, !24}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !9, !24}
!52 = distinct !{!52, !27}
!53 = distinct !{!53, !9, !24}
!54 = distinct !{!54, !27}
!55 = distinct !{!55, !9}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = distinct !{!59, !27}
!60 = distinct !{!60, !9}
!61 = distinct !{!61, !9}
!62 = distinct !{!62, !9}
!63 = distinct !{!63, !9}
!64 = distinct !{!64, !9}
!65 = distinct !{!65, !9}
end_hunk_0
