inline.NumInlined: 2994
inline.NumDeleted: 1024
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN6nbytes12stringsearch12StringSearchItE16BoyerMooreSearchENS0_6VectorIKtEEm:bb.a
  br label %_ZZN6nbytes12stringsearch12StringSearchItE16BoyerMooreSearchENS0_6VectorIKtEEmENKUlmE_clEm.exit

_ZZN6nbytes12stringsearch12StringSearchItE16BoyerMooreSearchENS0_6VectorIKtEEmENKUlmE_clEm.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.cn, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.co = and i16 %.lcssa68, 255
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = trunc i64 %.049.lcssa to i32
  %i.ct = sub i32 %i.cs, %i.cr
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.0.i, i32 %i.ct)
  %i.cu = sext i32 %spec.select to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %_ZZN6nbytes12stringsearch12StringSearchItE16BoyerMooreSearchENS0_6VectorIKtEEmENKUlmE_clEm.exit
  %.pn = phi i64 [ %i.ch, %bb.d ], [ %i.cu, %_ZZN6nbytes12stringsearch12StringSearchItE16BoyerMooreSearchENS0_6VectorIKtEEmENKUlmE_clEm.exit ]
  %.245 = add i64 %.pn, %.us-phi                  ; 2 uses
  %.not = icmp ugt i64 %.245, %i.p
  br i1 %.not, label %.thread58, label %.preheader, !llvm.loop !171

.thread58:                                        ; preds = %bb.h, %.lr.ph.split.split.preheader, %.lr.ph.split.split.us.preheader, %.lr.ph.split.us.preheader, %bb.c, %bb.b, %.lr.ph.split.split, %.lr.ph.split.split.us, %.lr.ph.split.us, %bb.a
  %.4 = phi i64 [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ %i.b, %bb.a ], [ %.us-phi, %.lr.ph.split.us ], [ %.us-phi, %.lr.ph.split.split.us ], [ %.us-phi, %.lr.ph.split.split ], [ %i.b, %bb.h ], [ %.us-phi, %.lr.ph.split.us.preheader ], [ %.us-phi, %.lr.ph.split.split.preheader ], [ %.us-phi, %.lr.ph.split.split.us.preheader ]
  ret i64 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN6nbytes12stringsearch12StringSearchItE13InitialSearchENS0_6VectorIKtEEm(ptr noundef nonnull align 8 dereferenceable(3072) %0, ptr noundef byval(%"class.nbytes::stringsearch::Vector") align 8 %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3032 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3040 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 13 uses
  %i.f = sub i64 %i.e, %i.c                       ; 3 uses
  %.not61 = icmp ugt i64 %2, %i.f
  br i1 %.not61, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = shl i64 %i.c, 2
  %i.h = sub i64 -10, %i.g
  %.sroa.039.0.copyload = load ptr, ptr %i.a, align 8 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3048 ; 2 uses
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.045.0.copyload = load ptr, ptr %1, align 8 ; 8 uses
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.347.0.copyload = load i8, ptr %.sroa.347.0..sroa_idx, align 8
  %.sroa.3.0.copyload.fr = freeze i8 %.sroa.3.0.copyload
  %i.i = trunc i8 %.sroa.3.0.copyload.fr to i1    ; 2 uses
  %i.j = add i64 %i.c, -1                         ; 4 uses
  %i.k = select i1 %i.i, i64 0, i64 %i.j
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %.sroa.039.0.copyload, i64 %i.k
  %i.m = add i64 %i.f, 1                          ; 4 uses
  %i.n = trunc nuw i8 %.sroa.347.0.copyload to i1 ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %.sroa.045.0.copyload, i64 %i.c
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -2
  %i.q = ptrtoint ptr %.sroa.045.0.copyload to i64 ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 6 uses
  %i.r = getelementptr [2 x i8], ptr %.sroa.039.0.copyload, i64 %i.c
  %i.s = getelementptr [2 x i8], ptr %.sroa.045.0.copyload, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %.03063 = phi i64 [ %2, %.lr.ph ], [ %i.hl, %bb.m ] ; 3 uses
  %.03162 = phi i64 [ %i.h, %.lr.ph ], [ %i.hk, %bb.m ] ; 2 uses
  %i.t = add nsw i64 %.03162, 1
  %i.u = icmp slt i64 %.03162, 0
  br i1 %i.u, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.v = load i16, ptr %i.l, align 2              ; 4 uses
  %i.w = trunc i16 %i.v to i8
  %i.x = lshr i16 %i.v, 8
  %i.y = trunc nuw i16 %i.x to i8
  %.sroa.speculated.i.i = tail call noundef i8 @llvm.umax.i8(i8 %i.w, i8 %i.y)
  %i.z = zext i8 %.sroa.speculated.i.i to i32     ; 2 uses
  br i1 %i.n, label %.split.us.i, label %.thread.i

.split.us.i:                                      ; preds = %bb.c, %bb.e
  %.024.us.i = phi i64 [ %i.al, %bb.e ], [ %.03063, %bb.c ] ; 2 uses
  %i.aa = sub i64 %i.m, %.024.us.i
  %i.ab = shl i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.sroa.045.0.copyload, i64 %.024.us.i
  %i.ad = tail call noundef ptr @memchr(ptr noundef %i.ac, i32 noundef %i.z, i64 noundef %i.ab) #32 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, label %bb.d

bb.d:                                             ; preds = %.split.us.i
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = and i64 %i.af, -2
  %i.ah = sub i64 %i.ag, %i.q                     ; 2 uses
  %i.ai = ashr exact i64 %i.ah, 1                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.045.0.copyload, i64 %i.ah
  %i.ak = load i16, ptr %i.aj, align 2
  %.not.us.i = icmp eq i16 %i.ak, %i.v
  br i1 %.not.us.i, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = add nsw i64 %i.ai, 1                    ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.m
  br i1 %i.am, label %.split.us.i, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, !llvm.loop !166

.thread.i:                                        ; preds = %bb.c, %bb.g
  %.024.i = phi i64 [ %i.ax, %bb.g ], [ %.03063, %bb.c ]
  %i.an = sub i64 %i.m, %.024.i
  %i.ao = shl i64 %i.an, 1
  %i.ap = tail call noundef ptr @memrchr(ptr noundef nonnull %i.p, i32 noundef %i.z, i64 noundef %i.ao) #32 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, label %bb.f

bb.f:                                             ; preds = %.thread.i
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = and i64 %i.ar, -2
  %i.at = sub i64 %i.as, %i.q                     ; 2 uses
  %i.au = ashr exact i64 %i.at, 1                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.045.0.copyload, i64 %i.at
  %i.aw = load i16, ptr %i.av, align 2
  %.not.i = icmp eq i16 %i.aw, %i.v
  br i1 %.not.i, label %.thread31.loopexit40.split.loop.exit44.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = sub i64 %i.e, %i.au                     ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.m
  br i1 %i.ay, label %.thread.i, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, !llvm.loop !166

.thread31.loopexit40.split.loop.exit44.i:         ; preds = %bb.f
  %i.az = xor i64 %i.au, -1
  %i.ba = add i64 %i.e, %i.az
  br label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit

_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit: ; preds = %bb.d, %.thread31.loopexit40.split.loop.exit44.i
  %.us-phi.i = phi i64 [ %i.ba, %.thread31.loopexit40.split.loop.exit44.i ], [ %i.ai, %bb.d ] ; 6 uses
  %i.bb = icmp eq i64 %.us-phi.i, %i.e
  br i1 %i.bb, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit
  br i1 %i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  br i1 %i.n, label %.preheader.split.us.split.us.preheader, label %.preheader.split.us.split

.preheader.split.us.split.us.preheader:           ; preds = %.preheader.split.us
  %invariant.gep = getelementptr [2 x i8], ptr %.sroa.045.0.copyload, i64 %.us-phi.i
  br label %.preheader.split.us.split.us

.preheader.split.us.split.us:                     ; preds = %.preheader.split.us.split.us.preheader, %bb.h
  %.0.us.us = phi i64 [ %i.bf, %bb.h ], [ 1, %.preheader.split.us.split.us.preheader ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.039.0.copyload, i64 %.0.us.us
  %i.bd = load i16, ptr %i.bc, align 2
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %.0.us.us
  %i.be = load i16, ptr %gep, align 2
  %.not37.us.us = icmp eq i16 %i.bd, %i.be
  br i1 %.not37.us.us, label %bb.h, label %.split.us

bb.h:                                             ; preds = %.preheader.split.us.split.us
  %i.bf = add nuw i64 %.0.us.us, 1                ; 2 uses
  %exitcond81.not = icmp eq i64 %i.bf, %umax
  br i1 %exitcond81.not, label %.split.us, label %.preheader.split.us.split.us, !llvm.loop !172

.preheader.split.us.split:                        ; preds = %.preheader.split.us, %bb.i
  %.0.us = phi i64 [ %i.bm, %bb.i ], [ 1, %.preheader.split.us ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.039.0.copyload, i64 %.0.us
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = add i64 %.0.us, %.us-phi.i
  %i.bj = xor i64 %i.bi, -1
  %i.bk = getelementptr [2 x i8], ptr %i.s, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2
  %.not37.us = icmp eq i16 %i.bh, %i.bl
  br i1 %.not37.us, label %bb.i, label %.split.us

bb.i:                                             ; preds = %.preheader.split.us.split
  %i.bm = add nuw i64 %.0.us, 1                   ; 2 uses
  %exitcond79.not = icmp eq i64 %i.bm, %umax
  br i1 %exitcond79.not, label %.split.us, label %.preheader.split.us.split, !llvm.loop !172

.preheader.split:                                 ; preds = %.preheader, %bb.j
  %.0 = phi i64 [ %i.bw, %bb.j ], [ 1, %.preheader ] ; 4 uses
  %i.bn = xor i64 %.0, -1
  %i.bo = getelementptr [2 x i8], ptr %i.r, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2
  %i.bq = add i64 %.0, %.us-phi.i                 ; 2 uses
  %i.br = xor i64 %i.bq, -1
  %i.bs = add i64 %i.e, %i.br
  %i.bt = select i1 %i.n, i64 %i.bq, i64 %i.bs
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.045.0.copyload, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2
  %.not37 = icmp eq i16 %i.bp, %i.bv
  br i1 %.not37, label %bb.j, label %.split.us

bb.j:                                             ; preds = %.preheader.split
  %i.bw = add nuw i64 %.0, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %umax
  br i1 %exitcond.not, label %.split.us, label %.preheader.split, !llvm.loop !172

.split.us:                                        ; preds = %bb.j, %.preheader.split, %.preheader.split.us.split, %bb.i, %.preheader.split.us.split.us, %bb.h
  %.us-phi = phi i64 [ %umax, %bb.i ], [ %umax, %bb.h ], [ %.0.us.us, %.preheader.split.us.split.us ], [ %.0.us, %.preheader.split.us.split ], [ %.0, %.preheader.split ], [ %umax, %bb.j ] ; 2 uses
  %.not38 = icmp eq i64 %.us-phi, %i.c
  br i1 %.not38, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, label %bb.m

bb.k:                                             ; preds = %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.by = load i64, ptr %i.bx, align 8            ; 11 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.l, label %vector.ph

vector.ph:                                        ; preds = %bb.k
  %i.ca = trunc i64 %i.by to i32
  %i.cb = add i32 %i.ca, -1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 64 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %broadcast.splat, ptr %0, align 8
  store <4 x i32> %broadcast.splat, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %broadcast.splat, ptr %i.cd, align 8
  store <4 x i32> %broadcast.splat, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> %broadcast.splat, ptr %i.cf, align 8
  store <4 x i32> %broadcast.splat, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x i32> %broadcast.splat, ptr %i.ch, align 8
  store <4 x i32> %broadcast.splat, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <4 x i32> %broadcast.splat, ptr %i.cj, align 8
  store <4 x i32> %broadcast.splat, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <4 x i32> %broadcast.splat, ptr %i.cl, align 8
  store <4 x i32> %broadcast.splat, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x i32> %broadcast.splat, ptr %i.cn, align 8
  store <4 x i32> %broadcast.splat, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <4 x i32> %broadcast.splat, ptr %i.cp, align 8
  store <4 x i32> %broadcast.splat, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <4 x i32> %broadcast.splat, ptr %i.cr, align 8
  store <4 x i32> %broadcast.splat, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <4 x i32> %broadcast.splat, ptr %i.ct, align 8
  store <4 x i32> %broadcast.splat, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <4 x i32> %broadcast.splat, ptr %i.cv, align 8
  store <4 x i32> %broadcast.splat, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 368
  store <4 x i32> %broadcast.splat, ptr %i.cx, align 8
  store <4 x i32> %broadcast.splat, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 400
  store <4 x i32> %broadcast.splat, ptr %i.cz, align 8
  store <4 x i32> %broadcast.splat, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 432
  store <4 x i32> %broadcast.splat, ptr %i.db, align 8
  store <4 x i32> %broadcast.splat, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 464
  store <4 x i32> %broadcast.splat, ptr %i.dd, align 8
  store <4 x i32> %broadcast.splat, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 496
  store <4 x i32> %broadcast.splat, ptr %i.df, align 8
  store <4 x i32> %broadcast.splat, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 528
  store <4 x i32> %broadcast.splat, ptr %i.dh, align 8
  store <4 x i32> %broadcast.splat, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 560
  store <4 x i32> %broadcast.splat, ptr %i.dj, align 8
  store <4 x i32> %broadcast.splat, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 592
  store <4 x i32> %broadcast.splat, ptr %i.dl, align 8
  store <4 x i32> %broadcast.splat, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 624
  store <4 x i32> %broadcast.splat, ptr %i.dn, align 8
  store <4 x i32> %broadcast.splat, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 656
  store <4 x i32> %broadcast.splat, ptr %i.dp, align 8
  store <4 x i32> %broadcast.splat, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 688
  store <4 x i32> %broadcast.splat, ptr %i.dr, align 8
  store <4 x i32> %broadcast.splat, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 720
  store <4 x i32> %broadcast.splat, ptr %i.dt, align 8
  store <4 x i32> %broadcast.splat, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 752
  store <4 x i32> %broadcast.splat, ptr %i.dv, align 8
  store <4 x i32> %broadcast.splat, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 784
  store <4 x i32> %broadcast.splat, ptr %i.dx, align 8
  store <4 x i32> %broadcast.splat, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 816
  store <4 x i32> %broadcast.splat, ptr %i.dz, align 8
  store <4 x i32> %broadcast.splat, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 848
  store <4 x i32> %broadcast.splat, ptr %i.eb, align 8
  store <4 x i32> %broadcast.splat, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 880
  store <4 x i32> %broadcast.splat, ptr %i.ed, align 8
  store <4 x i32> %broadcast.splat, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 912
  store <4 x i32> %broadcast.splat, ptr %i.ef, align 8
  store <4 x i32> %broadcast.splat, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 944
  store <4 x i32> %broadcast.splat, ptr %i.eh, align 8
  store <4 x i32> %broadcast.splat, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 976
  store <4 x i32> %broadcast.splat, ptr %i.ej, align 8
  store <4 x i32> %broadcast.splat, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store <4 x i32> %broadcast.splat, ptr %i.el, align 8
  store <4 x i32> %broadcast.splat, ptr %i.em, align 8
  br label %.loopexit.i

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3072) %0, i8 -1, i64 1024, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %vector.ph, %bb.l
  %i.en = icmp ult i64 %i.by, %i.j
  br i1 %i.en, label %.lr.ph.i, label %.thread51

.lr.ph.i:                                         ; preds = %.loopexit.i
  %i.eo = load ptr, ptr %i.a, align 8             ; 6 uses
  %i.ep = load i8, ptr %.sroa.3.0..sroa_idx, align 8, !range !26, !noundef !41
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.preheader.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %i.er = xor i64 %i.by, -1
  %i.es = add i64 %i.c, %i.er
  %i.et = add i64 %i.c, -2
  %i.eu = sub i64 %i.et, %i.by
  %xtraiter129 = and i64 %i.es, 3                 ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i.prol
  %.01821.us.i.prol = phi i64 [ %i.fb, %.lr.ph.split.us.i.prol ], [ %i.by, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %prol.iter.a = phi i64 [ %prol.iter.next.a, %.lr.ph.split.us.i.prol ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %.01821.us.i.prol
  %i.ew = load i16, ptr %i.ev, align 2
  %i.ex = and i16 %i.ew, 255
  %i.ey = trunc i64 %.01821.us.i.prol to i32
  %i.ez = zext nneg i16 %i.ex to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ez
  store i32 %i.ey, ptr %i.fa, align 4
  %i.fb = add nuw i64 %.01821.us.i.prol, 1        ; 2 uses
  %prol.iter.next.a = add i64 %prol.iter.a, 1     ; 2 uses
  %prol.iter.cmp.not.a = icmp eq i64 %prol.iter.next.a, %xtraiter129
  br i1 %prol.iter.cmp.not.a, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol, !llvm.loop !173

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader
  %.01821.us.i.unr = phi i64 [ %i.by, %.lr.ph.split.us.i.preheader ], [ %i.fb, %.lr.ph.split.us.i.prol ]
  %i.fc = icmp ult i64 %i.eu, 3
  br i1 %i.fc, label %.thread51, label %.lr.ph.split.us.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.fd = load i64, ptr %i.b, align 8
  %i.fe = getelementptr [2 x i8], ptr %i.eo, i64 %i.fd ; 5 uses
  %3 = xor i64 %i.by, -1
  %4 = add i64 %i.c, %3
  %i.ff = add i64 %i.c, -2
  %i.fg = sub i64 %i.ff, %i.by
  %i.fh = and i64 %4, 3                           ; 2 uses
  %lcmp.mod.not.not = icmp eq i64 %i.fh, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.preheader.i, %.lr.ph.split.i.prol
  %.01821.i.prol = phi i64 [ %5, %.lr.ph.split.i.prol ], [ %i.by, %.lr.ph.split.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %i.fp, %.lr.ph.split.i.prol ], [ 0, %.lr.ph.split.preheader.i ]
  %i.fi = xor i64 %.01821.i.prol, -1
  %i.fj = getelementptr [2 x i8], ptr %i.fe, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2
  %i.fl = and i16 %i.fk, 255
  %i.fm = trunc i64 %.01821.i.prol to i32
  %i.fn = zext nneg i16 %i.fl to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fn
  store i32 %i.fm, ptr %i.fo, align 4
  %5 = add nuw i64 %.01821.i.prol, 1              ; 2 uses
  %i.fp = add i64 %prol.iter, 1                   ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %i.fp, %i.fh
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol, !llvm.loop !175

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.preheader.i
  %.01821.i.unr = phi i64 [ %i.by, %.lr.ph.split.preheader.i ], [ %5, %.lr.ph.split.i.prol ]
  %6 = icmp ult i64 %i.fg, 3
  br i1 %6, label %.thread51, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %.01821.us.i = phi i64 [ %i.gr, %.lr.ph.split.us.i ], [ %.01821.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 6 uses
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %.01821.us.i
  %i.fr = load i16, ptr %i.fq, align 2
  %i.fs = and i16 %i.fr, 255
  %i.ft = trunc i64 %.01821.us.i to i32
  %i.fu = zext nneg i16 %i.fs to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fu
  store i32 %i.ft, ptr %i.fv, align 4
  %i.fw = add nuw i64 %.01821.us.i, 1             ; 2 uses
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2
  %i.fz = and i16 %i.fy, 255
  %i.ga = trunc i64 %i.fw to i32
  %i.gb = zext nneg i16 %i.fz to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gb
  store i32 %i.ga, ptr %i.gc, align 4
  %i.gd = add nuw i64 %.01821.us.i, 2             ; 2 uses
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.gd
  %i.gf = load i16, ptr %i.ge, align 2
  %i.gg = and i16 %i.gf, 255
  %i.gh = trunc i64 %i.gd to i32
  %i.gi = zext nneg i16 %i.gg to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gi
  store i32 %i.gh, ptr %i.gj, align 4
  %i.gk = add nuw i64 %.01821.us.i, 3             ; 2 uses
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %i.gk
  %i.gm = load i16, ptr %i.gl, align 2
  %i.gn = and i16 %i.gm, 255
  %i.go = trunc i64 %i.gk to i32
  %i.gp = zext nneg i16 %i.gn to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gp
  store i32 %i.go, ptr %i.gq, align 4
  %i.gr = add nuw i64 %.01821.us.i, 4             ; 2 uses
  %exitcond24.not.i.3 = icmp eq i64 %i.gr, %i.j
  br i1 %exitcond24.not.i.3, label %.thread51, label %.lr.ph.split.us.i, !llvm.loop !176

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %.01821.i = phi i64 [ %i.hh, %.lr.ph.split.i ], [ %.01821.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 9 uses
  %i.gs = xor i64 %.01821.i, -1
  %7 = getelementptr [2 x i8], ptr %i.fe, i64 %i.gs
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 255
  %10 = trunc i64 %.01821.i to i32
  %11 = zext nneg i16 %9 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %11
  store i32 %10, ptr %12, align 4
  %13 = sub i64 -2, %.01821.i
  %14 = getelementptr [2 x i8], ptr %i.fe, i64 %13
  %15 = load i16, ptr %14, align 2
  %16 = and i16 %15, 255
  %17 = trunc i64 %.01821.i to i32
  %18 = add i32 %17, 1
  %19 = zext nneg i16 %16 to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %19
  store i32 %18, ptr %20, align 4
  %21 = sub i64 -3, %.01821.i
  %i.gt = getelementptr [2 x i8], ptr %i.fe, i64 %21
  %i.gu = load i16, ptr %i.gt, align 2
  %i.gv = and i16 %i.gu, 255
  %i.gw = trunc i64 %.01821.i to i32
  %22 = add i32 %i.gw, 2
  %i.gx = zext nneg i16 %i.gv to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gx
  store i32 %22, ptr %i.gy, align 4
  %i.gz = sub i64 -4, %.01821.i
  %i.ha = getelementptr [2 x i8], ptr %i.fe, i64 %i.gz
  %i.hb = load i16, ptr %i.ha, align 2
  %i.hc = and i16 %i.hb, 255
  %i.hd = trunc i64 %.01821.i to i32
  %i.he = add i32 %i.hd, 3
  %i.hf = zext nneg i16 %i.hc to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hf
  store i32 %i.he, ptr %i.hg, align 4
  %i.hh = add nuw i64 %.01821.i, 4                ; 2 uses
  %exitcond23.not.i.1 = icmp eq i64 %i.hh, %i.j
  br i1 %exitcond23.not.i.1, label %.thread51, label %.lr.ph.split.i, !llvm.loop !176

.thread51:                                        ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %.loopexit.i
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 3056
  store i32 0, ptr %i.hi, align 8
  %i.hj = tail call noundef i64 @_ZN6nbytes12stringsearch12StringSearchItE24BoyerMooreHorspoolSearchENS0_6VectorIKtEEm(ptr noundef nonnull align 8 dereferenceable(3072) %0, ptr noundef nonnull byval(%"class.nbytes::stringsearch::Vector") align 8 %1, i64 noundef %.03063)
  br label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread

bb.m:                                             ; preds = %.split.us
  %i.hk = add i64 %i.t, %.us-phi
  %i.hl = add i64 %.us-phi.i, 1                   ; 2 uses
  %.not = icmp ugt i64 %i.hl, %i.f
  br i1 %.not, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, label %bb.b, !llvm.loop !177

_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread: ; preds = %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit, %.split.us, %bb.m, %.thread.i, %bb.g, %.split.us.i, %bb.e, %bb.a, %.thread51
  %.3 = phi i64 [ %i.e, %.split.us.i ], [ %i.hj, %.thread51 ], [ %i.e, %bb.a ], [ %i.e, %.thread.i ], [ %i.e, %bb.e ], [ %i.e, %bb.g ], [ %i.e, %bb.m ], [ %i.e, %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit ], [ %.us-phi.i, %.split.us ]
  ret i64 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN6nbytes12stringsearch12StringSearchItE12LinearSearchENS0_6VectorIKtEEm(ptr noundef nonnull align 8 dereferenceable(3072) %0, ptr noundef byval(%"class.nbytes::stringsearch::Vector") align 8 %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3040
  %i.d = load i64, ptr %i.c, align 8
  %.fr = freeze i64 %i.d                          ; 10 uses
  %i.e = sub i64 %i.b, %.fr                       ; 5 uses
  %.not48 = icmp ugt i64 %2, %i.e
  br i1 %.not48, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread.loopexit42, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3032
  %.sroa.025.0.copyload = load ptr, ptr %i.f, align 8 ; 5 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3048
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.031.0.copyload = load ptr, ptr %1, align 8 ; 14 uses
  %.sroa.333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.333.0.copyload = load i8, ptr %.sroa.333.0..sroa_idx, align 8
  %.sroa.3.0.copyload.fr = freeze i8 %.sroa.3.0.copyload
  %i.g = trunc i8 %.sroa.3.0.copyload.fr to i1    ; 3 uses
  %i.h = add i64 %.fr, -1
  %i.i = select i1 %i.g, i64 0, i64 %i.h
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %.sroa.025.0.copyload, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2              ; 7 uses
  %i.l = add i64 %i.e, 1                          ; 10 uses
  %i.m = trunc i16 %i.k to i8
  %i.n = lshr i16 %i.k, 8
  %i.o = trunc nuw i16 %i.n to i8
  %.sroa.speculated.i.i = tail call noundef i8 @llvm.umax.i8(i8 %i.m, i8 %i.o)
  %i.p = trunc nuw i8 %.sroa.333.0.copyload to i1 ; 2 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.0.copyload, i64 %.fr
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -2 ; 2 uses
  %i.s = zext i8 %.sroa.speculated.i.i to i32     ; 5 uses
  %i.t = ptrtoint ptr %.sroa.031.0.copyload to i64 ; 5 uses
  %.not2444 = icmp ugt i64 %.fr, 1
  br i1 %.not2444, label %.lr.ph50.split.us, label %.lr.ph50.split

.lr.ph50.split.us:                                ; preds = %.lr.ph50
  br i1 %i.p, label %.lr.ph50.split.us.split.us, label %.thread.i.preheader.us.preheader

.thread.i.preheader.us.preheader:                 ; preds = %.lr.ph50.split.us
  %i.u = getelementptr [2 x i8], ptr %.sroa.025.0.copyload, i64 %.fr
  %i.v = getelementptr [2 x i8], ptr %.sroa.031.0.copyload, i64 %i.b
  %i.w = getelementptr [2 x i8], ptr %.sroa.031.0.copyload, i64 %i.b
  br label %.thread.i.us

.lr.ph50.split.us.split.us:                       ; preds = %.lr.ph50.split.us
  br i1 %i.g, label %.split.us.i.us.us.us, label %.split.us.i.preheader.us.us.preheader

.split.us.i.preheader.us.us.preheader:            ; preds = %.lr.ph50.split.us.split.us
  %i.x = getelementptr [2 x i8], ptr %.sroa.025.0.copyload, i64 %.fr
  br label %.split.us.i.us.us

.split.us.i.us.us.us:                             ; preds = %.lr.ph50.split.us.split.us, %.split.us.i.us.us.us.backedge
  %.024.us.i.us.us.us = phi i64 [ %.024.us.i.us.us.us.be, %.split.us.i.us.us.us.backedge ], [ %2, %.lr.ph50.split.us.split.us ] ; 2 uses
  %i.y = sub i64 %i.l, %.024.us.i.us.us.us
  %i.z = shl i64 %i.y, 1
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.0.copyload, i64 %.024.us.i.us.us.us
  %i.ab = tail call noundef ptr @memchr(ptr noundef %i.aa, i32 noundef %i.s, i64 noundef %i.z) #32 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, label %bb.b

bb.b:                                             ; preds = %.split.us.i.us.us.us
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = and i64 %i.ad, -2
  %i.af = sub i64 %i.ae, %i.t                     ; 3 uses
  %i.ag = ashr exact i64 %i.af, 1                 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload, i64 %i.af
  %i.ai = load i16, ptr %i.ah, align 2
  %.not.us.i.us.us.us = icmp eq i16 %i.ai, %i.k
  br i1 %.not.us.i.us.us.us, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.loopexit.us.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = add nsw i64 %i.ag, 1                    ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.l
  br i1 %i.ak, label %.split.us.i.us.us.us.backedge, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread

.split.us.i.us.us.us.backedge:                    ; preds = %bb.c, %.split.us.split.us.us.us.us
  %.024.us.i.us.us.us.be = phi i64 [ %i.aj, %bb.c ], [ %i.aq, %.split.us.split.us.us.us.us ]
  br label %.split.us.i.us.us.us, !llvm.loop !178

_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.loopexit.us.us.us: ; preds = %bb.b
  %i.al = icmp eq i64 %i.ag, %i.b
  br i1 %i.al, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread.loopexit42, label %.lr.ph.split.us.split.us.us.us.us.preheader

.lr.ph.split.us.split.us.us.us.us.preheader:      ; preds = %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.loopexit.us.us.us
  %invariant.gep140 = getelementptr i8, ptr %.sroa.031.0.copyload, i64 %i.af
  br label %.lr.ph.split.us.split.us.us.us.us

.lr.ph.split.us.split.us.us.us.us:                ; preds = %.lr.ph.split.us.split.us.us.us.us.preheader, %bb.d
  %.045.us.us.us.us.us = phi i64 [ %i.ap, %bb.d ], [ 1, %.lr.ph.split.us.split.us.us.us.us.preheader ] ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.sroa.025.0.copyload, i64 %.045.us.us.us.us.us
  %i.an = load i16, ptr %i.am, align 2
  %gep141 = getelementptr [2 x i8], ptr %invariant.gep140, i64 %.045.us.us.us.us.us
  %i.ao = load i16, ptr %gep141, align 2
  %.not23.us.us.us.us.us = icmp eq i16 %i.an, %i.ao
  br i1 %.not23.us.us.us.us.us, label %bb.d, label %.split.us.split.us.us.us.us

bb.d:                                             ; preds = %.lr.ph.split.us.split.us.us.us.us
  %i.ap = add nuw i64 %.045.us.us.us.us.us, 1     ; 2 uses
  %exitcond96.not = icmp eq i64 %i.ap, %.fr
  br i1 %exitcond96.not, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, label %.lr.ph.split.us.split.us.us.us.us, !llvm.loop !179

.split.us.split.us.us.us.us:                      ; preds = %.lr.ph.split.us.split.us.us.us.us
  %i.aq = add nsw i64 %i.ag, 1                    ; 2 uses
  %.not.us.us.us = icmp ugt i64 %i.aq, %i.e
  br i1 %.not.us.us.us, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread.loopexit42, label %.split.us.i.us.us.us.backedge

.split.us.i.us.us:                                ; preds = %.split.us.i.us.us.backedge, %.split.us.i.preheader.us.us.preheader
  %.024.us.i.us.us = phi i64 [ %2, %.split.us.i.preheader.us.us.preheader ], [ %.024.us.i.us.us.be, %.split.us.i.us.us.backedge ] ; 2 uses
  %i.ar = sub i64 %i.l, %.024.us.i.us.us
  %i.as = shl i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.0.copyload, i64 %.024.us.i.us.us
  %i.au = tail call noundef ptr @memchr(ptr noundef %i.at, i32 noundef %i.s, i64 noundef %i.as) #32 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, label %bb.e

bb.e:                                             ; preds = %.split.us.i.us.us
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = and i64 %i.aw, -2
  %i.ay = sub i64 %i.ax, %i.t                     ; 3 uses
  %i.az = ashr exact i64 %i.ay, 1                 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload, i64 %i.ay
  %i.bb = load i16, ptr %i.ba, align 2
  %.not.us.i.us.us = icmp eq i16 %i.bb, %i.k
  br i1 %.not.us.i.us.us, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.loopexit.us.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = add nsw i64 %i.az, 1                    ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.l
  br i1 %i.bd, label %.split.us.i.us.us.backedge, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread

.split.us.i.us.us.backedge:                       ; preds = %bb.f, %.split.us54.us
  %.024.us.i.us.us.be = phi i64 [ %i.bc, %bb.f ], [ %i.bj, %.split.us54.us ]
  br label %.split.us.i.us.us, !llvm.loop !178

bb.g:                                             ; preds = %.preheader.us.us
  %i.be = add nuw i64 %.045.us52.us, 1            ; 2 uses
  %exitcond95.not = icmp eq i64 %i.be, %.fr
  br i1 %exitcond95.not, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, label %.preheader.us.us, !llvm.loop !179

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %bb.g
  %.045.us52.us = phi i64 [ %i.be, %bb.g ], [ 1, %.preheader.us.us.preheader ] ; 3 uses
  %i.bf = xor i64 %.045.us52.us, -1
  %i.bg = getelementptr [2 x i8], ptr %i.x, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %.045.us52.us
  %i.bi = load i16, ptr %gep, align 2
  %.not23.us53.us = icmp eq i16 %i.bh, %i.bi
  br i1 %.not23.us53.us, label %bb.g, label %.split.us54.us

.split.us54.us:                                   ; preds = %.preheader.us.us
  %i.bj = add nsw i64 %i.az, 1                    ; 2 uses
  %.not.us.us = icmp ugt i64 %i.bj, %i.e
  br i1 %.not.us.us, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread.loopexit42, label %.split.us.i.us.us.backedge

_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.loopexit.us.us: ; preds = %bb.e
  %i.bk = icmp eq i64 %i.az, %i.b
  br i1 %i.bk, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread.loopexit42, label %.preheader.us.us.preheader

.preheader.us.us.preheader:                       ; preds = %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.loopexit.us.us
  %invariant.gep = getelementptr i8, ptr %.sroa.031.0.copyload, i64 %i.ay
  br label %.preheader.us.us

.thread.i.us:                                     ; preds = %.thread.i.us.backedge, %.thread.i.preheader.us.preheader
  %.024.i.us = phi i64 [ %2, %.thread.i.preheader.us.preheader ], [ %.024.i.us.be, %.thread.i.us.backedge ]
  %i.bl = sub i64 %i.l, %.024.i.us
  %i.bm = shl i64 %i.bl, 1
  %i.bn = tail call noundef ptr @memrchr(ptr noundef nonnull %i.r, i32 noundef %i.s, i64 noundef %i.bm) #32 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, label %bb.h

bb.h:                                             ; preds = %.thread.i.us
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = and i64 %i.bp, -2
  %i.br = sub i64 %i.bq, %i.t                     ; 3 uses
  %i.bs = ashr exact i64 %i.br, 1                 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload, i64 %i.br
  %i.bu = load i16, ptr %i.bt, align 2
  %.not.i.us = icmp eq i16 %i.bu, %i.k
  br i1 %.not.i.us, label %.thread31.loopexit40.split.loop.exit44.i.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = sub i64 %i.b, %i.bs                     ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.l
  br i1 %i.bw, label %.thread.i.us.backedge, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread

.thread.i.us.backedge:                            ; preds = %bb.i, %.split.us54
  %.024.i.us.be = phi i64 [ %i.bv, %bb.i ], [ %i.ci, %.split.us54 ]
  br label %.thread.i.us, !llvm.loop !178

.thread31.loopexit40.split.loop.exit44.i.us:      ; preds = %bb.h
  %i.bx = xor i64 %i.bs, -1
  %i.by = add i64 %i.b, %i.bx                     ; 4 uses
  %i.bz = icmp eq i64 %i.br, -2
  br i1 %i.bz, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread.loopexit42, label %.preheader.us

bb.j:                                             ; preds = %.lr.ph.split.us55
  %i.ca = add nuw i64 %.045.us52, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %.fr
  br i1 %exitcond.not, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, label %.lr.ph.split.us55, !llvm.loop !179

.lr.ph.split.us55:                                ; preds = %.preheader.us, %bb.j
  %.045.us52 = phi i64 [ %i.ca, %bb.j ], [ 1, %.preheader.us ] ; 3 uses
  %i.cb = xor i64 %.045.us52, -1
  %i.cc = getelementptr [2 x i8], ptr %i.u, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = add i64 %.045.us52, %i.by
  %i.cf = xor i64 %i.ce, -1
  %i.cg = getelementptr [2 x i8], ptr %i.v, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2
  %.not23.us53 = icmp eq i16 %i.cd, %i.ch
  br i1 %.not23.us53, label %bb.j, label %.split.us54

.preheader.us:                                    ; preds = %.thread31.loopexit40.split.loop.exit44.i.us
  br i1 %i.g, label %.lr.ph.split.us.split.us60, label %.lr.ph.split.us55

.split.us54:                                      ; preds = %.lr.ph.split.us55, %.lr.ph.split.us.split.us60
  %i.ci = sub i64 %i.b, %i.bs                     ; 2 uses
  %.not.us = icmp ugt i64 %i.ci, %i.e
  br i1 %.not.us, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread.loopexit42, label %.thread.i.us.backedge

.lr.ph.split.us.split.us60:                       ; preds = %.preheader.us, %bb.k
  %.045.us.us56 = phi i64 [ %i.cp, %bb.k ], [ 1, %.preheader.us ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.025.0.copyload, i64 %.045.us.us56
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = add i64 %.045.us.us56, %i.by
  %i.cm = xor i64 %i.cl, -1
  %i.cn = getelementptr [2 x i8], ptr %i.w, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2
  %.not23.us.us57 = icmp eq i16 %i.ck, %i.co
  br i1 %.not23.us.us57, label %bb.k, label %.split.us54

bb.k:                                             ; preds = %.lr.ph.split.us.split.us60
  %i.cp = add nuw i64 %.045.us.us56, 1            ; 2 uses
  %exitcond94.not = icmp eq i64 %i.cp, %.fr
  br i1 %exitcond94.not, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, label %.lr.ph.split.us.split.us60, !llvm.loop !179

.lr.ph50.split:                                   ; preds = %.lr.ph50
  br i1 %i.p, label %.split.us.i, label %.thread.i

.split.us.i:                                      ; preds = %.lr.ph50.split, %bb.m
  %.024.us.i = phi i64 [ %i.db, %bb.m ], [ %2, %.lr.ph50.split ] ; 2 uses
  %i.cq = sub i64 %i.l, %.024.us.i
  %i.cr = shl i64 %i.cq, 1
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.sroa.031.0.copyload, i64 %.024.us.i
  %i.ct = tail call noundef ptr @memchr(ptr noundef %i.cs, i32 noundef %i.s, i64 noundef %i.cr) #32 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, label %bb.l

bb.l:                                             ; preds = %.split.us.i
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = and i64 %i.cv, -2
  %i.cx = sub i64 %i.cw, %i.t                     ; 2 uses
  %i.cy = ashr exact i64 %i.cx, 1                 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload, i64 %i.cx
  %i.da = load i16, ptr %i.cz, align 2
  %.not.us.i = icmp eq i16 %i.da, %i.k
  br i1 %.not.us.i, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.db = add nsw i64 %i.cy, 1                    ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.l
  br i1 %i.dc, label %.split.us.i, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, !llvm.loop !166

.thread.i:                                        ; preds = %.lr.ph50.split, %bb.o
  %.024.i = phi i64 [ %i.dn, %bb.o ], [ %2, %.lr.ph50.split ]
  %i.dd = sub i64 %i.l, %.024.i
  %i.de = shl i64 %i.dd, 1
  %i.df = tail call noundef ptr @memrchr(ptr noundef nonnull %i.r, i32 noundef %i.s, i64 noundef %i.de) #32 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, label %bb.n

bb.n:                                             ; preds = %.thread.i
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = and i64 %i.dh, -2
  %i.dj = sub i64 %i.di, %i.t                     ; 2 uses
  %i.dk = ashr exact i64 %i.dj, 1                 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload, i64 %i.dj
  %i.dm = load i16, ptr %i.dl, align 2
  %.not.i = icmp eq i16 %i.dm, %i.k
  br i1 %.not.i, label %.thread31.loopexit40.split.loop.exit44.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dn = sub i64 %i.b, %i.dk                     ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.l
  br i1 %i.do, label %.thread.i, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread, !llvm.loop !166

.thread31.loopexit40.split.loop.exit44.i:         ; preds = %bb.n
  %i.dp = xor i64 %i.dk, -1
  %i.dq = add i64 %i.b, %i.dp
  br label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit

_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit: ; preds = %bb.l, %.thread31.loopexit40.split.loop.exit44.i
  %.us-phi.i = phi i64 [ %i.dq, %.thread31.loopexit40.split.loop.exit44.i ], [ %i.cy, %bb.l ] ; 2 uses
  %i.dr = icmp eq i64 %.us-phi.i, %i.b
  br i1 %i.dr, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread.loopexit42, label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread

_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread.loopexit42: ; preds = %.split.us54, %.thread31.loopexit40.split.loop.exit44.i.us, %.split.us54.us, %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.loopexit.us.us, %.split.us.split.us.us.us.us, %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.loopexit.us.us.us, %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit, %bb.a
  br label %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread

_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread: ; preds = %bb.o, %.thread.i, %bb.m, %.split.us.i, %bb.i, %.thread.i.us, %bb.j, %bb.k, %bb.f, %.split.us.i.us.us, %bb.g, %bb.c, %.split.us.i.us.us.us, %bb.d, %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit, %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread.loopexit42
  %.3 = phi i64 [ %i.b, %bb.c ], [ %i.b, %bb.m ], [ %i.b, %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit.thread.loopexit42 ], [ %.us-phi.i, %_ZN6nbytes12stringsearch18FindFirstCharacterItEEmNS0_6VectorIKT_EES5_m.exit ], [ %i.by, %bb.k ], [ %i.b, %bb.i ], [ %i.az, %bb.g ], [ %i.by, %bb.j ], [ %i.b, %bb.f ], [ %i.ag, %bb.d ], [ %i.b, %.split.us.i.us.us.us ], [ %i.b, %.split.us.i.us.us ], [ %i.b, %.thread.i.us ], [ %i.b, %.split.us.i ], [ %i.b, %.thread.i ], [ %i.b, %bb.o ]
  ret i64 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEv(ptr noundef nonnull align 8 dereferenceable(3072) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3032 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3040 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8              ; 17 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.e = load i64, ptr %i.d, align 8              ; 19 uses
  %i.f = sub i64 %i.c, %i.e                       ; 11 uses
  %i.g = icmp ult i64 %i.e, %i.c
  br i1 %i.g, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 8
  br i1 %min.iters.check, label %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.f, -8                       ; 3 uses
  %i.j = add i64 %i.e, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.k, align 8
  store <4 x i32> %broadcast.splat, ptr %i.l, align 8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68.preheader

_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68.preheader: ; preds = %.lr.ph, %middle.block
  %.056132.ph = phi i64 [ %i.e, %.lr.ph ], [ %i.j, %middle.block ]
  br label %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68

._crit_edge:                                      ; preds = %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68, %middle.block
  %i.n = icmp ult i64 %i.c, %i.e
  br i1 %i.n, label %bb.b, label %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit

._crit_edge.thread:                               ; preds = %bb.a
  %i.o = icmp ult i64 %i.c, %i.e
  br i1 %i.o, label %bb.b, label %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit.thread

_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit.thread: ; preds = %._crit_edge.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.f
  store i32 1, ptr %i.q, align 4
  %i.r = trunc i64 %i.c to i32
  %i.s = add i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.f
  store i32 %i.s, ptr %i.u, align 4
  br label %.loopexit

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  tail call void @abort() #28
  unreachable

_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit: ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.f ; 3 uses
  store i32 1, ptr %i.w, align 4
  %i.x = add i64 %i.c, 1                          ; 2 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2028 ; 6 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.f
  store i32 %i.y, ptr %i.aa, align 4
  %i.ab = add i64 %i.c, -1
  %i.ac = load ptr, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3048 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 8, !range !26, !noundef !41
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load i64, ptr %i.b, align 8
  %i.ah = sub i64 %i.ag, %i.c
  %i.ai = select i1 %i.af, i64 %i.ab, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = trunc i64 %i.c to i32
  br label %bb.c

_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68: ; preds = %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68.preheader, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68
  %.056132 = phi i64 [ %i.ao, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68 ], [ %.056132.ph, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68.preheader ] ; 2 uses
  %i.am = sub nuw i64 %.056132, %i.e
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.am
  store i32 %i.h, ptr %i.an, align 4
  %i.ao = add i64 %.056132, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68, !llvm.loop !181

bb.c:                                             ; preds = %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit, %.critedge2
  %.057143 = phi i64 [ %i.c, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit ], [ %.2, %.critedge2 ] ; 3 uses
  %.058142 = phi i64 [ %i.x, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit ], [ %.260, %.critedge2 ] ; 3 uses
  %i.ap = add i64 %.057143, -1                    ; 5 uses
  %i.aq = load ptr, ptr %i.a, align 8
  %i.ar = load i8, ptr %i.ad, align 8, !range !26, !noundef !41
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = load i64, ptr %i.b, align 8
  %i.au = sub i64 %i.at, %.057143
  %i.av = select i1 %i.as, i64 %i.ap, i64 %i.au
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2
  %.not65133 = icmp ugt i64 %.058142, %i.c
  br i1 %.not65133, label %.critedge, label %.lr.ph136

.lr.ph136:                                        ; preds = %bb.c, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit71
  %.159134 = phi i64 [ %i.br, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit71 ], [ %.058142, %bb.c ] ; 6 uses
  %i.ay = add i64 %.159134, -1
  %i.az = load ptr, ptr %i.a, align 8
  %i.ba = load i8, ptr %i.ad, align 8, !range !26, !noundef !41
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = load i64, ptr %i.b, align 8
  %i.bd = sub i64 %i.bc, %.159134
  %i.be = select i1 %i.bb, i64 %i.ay, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2
  %.not66 = icmp eq i16 %i.ax, %i.bg
  br i1 %.not66, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph136
  %i.bh = icmp ult i64 %.159134, %i.e
  br i1 %i.bh, label %bb.e, label %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit69

bb.e:                                             ; preds = %bb.d
  tail call void @abort() #28
  unreachable

_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit69: ; preds = %bb.d
  %i.bi = sub nuw i64 %.159134, %i.e              ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp eq i64 %i.f, %i.bl
  br i1 %i.bm, label %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit70, label %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit71

_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit70: ; preds = %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit69
  %i.bn = sub i64 %.159134, %.057143
  %i.bo = trunc i64 %i.bn to i32
  store i32 %i.bo, ptr %i.bj, align 4
  br label %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit71

_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit71: ; preds = %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit69, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit70
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bi
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = sext i32 %i.bq to i64                   ; 3 uses
  %.not65 = icmp ult i64 %i.c, %i.br
  br i1 %.not65, label %.critedge, label %.lr.ph136, !llvm.loop !182

.critedge:                                        ; preds = %.lr.ph136, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit71, %bb.c
  %.159.lcssa = phi i64 [ %.058142, %bb.c ], [ %i.br, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit71 ], [ %.159134, %.lr.ph136 ] ; 2 uses
  %i.bs = add i64 %.159.lcssa, -1                 ; 3 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = sub nuw i64 %i.ap, %i.e
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bu
  store i32 %i.bt, ptr %i.bv, align 4
  %i.bw = icmp eq i64 %i.bs, %i.c
  %i.bx = icmp ugt i64 %i.ap, %i.e
  %or.cond = and i1 %i.bw, %i.bx
  br i1 %or.cond, label %.lr.ph140, label %.critedge2

.lr.ph140:                                        ; preds = %.critedge, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit75
  %.1139 = phi i64 [ %i.by, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit75 ], [ %i.ap, %.critedge ] ; 3 uses
  %i.by = add i64 %.1139, -1                      ; 6 uses
  %i.bz = load ptr, ptr %i.a, align 8
  %i.ca = load i8, ptr %i.ad, align 8, !range !26, !noundef !41
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = load i64, ptr %i.b, align 8
  %i.cd = sub i64 %i.cc, %.1139
  %i.ce = select i1 %i.cb, i64 %i.by, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2
  %.not67 = icmp eq i16 %i.cg, %i.ak
  br i1 %.not67, label %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit76, label %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit73

_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit73: ; preds = %.lr.ph140
  %i.ch = load i32, ptr %i.w, align 4
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp eq i64 %i.f, %i.ci
  br i1 %i.cj, label %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit74, label %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit75

_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit74: ; preds = %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit73
  %i.ck = sub i64 %i.c, %.1139
  %i.cl = trunc i64 %i.ck to i32
  store i32 %i.cl, ptr %i.w, align 4
  br label %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit75

_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit75: ; preds = %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit74, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit73
  %i.cm = sub nuw i64 %i.by, %i.e
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cm
  store i32 %i.al, ptr %i.cn, align 4
  %i.co = icmp ugt i64 %i.by, %i.e
  br i1 %i.co, label %.lr.ph140, label %.loopexit, !llvm.loop !183

_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit76: ; preds = %.lr.ph140
  %i.cp = add i64 %.159.lcssa, -2                 ; 2 uses
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = sub nuw i64 %i.by, %i.e
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cr
  store i32 %i.cq, ptr %i.cs, align 4
  br label %.critedge2

.critedge2:                                       ; preds = %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit76, %.critedge
  %.260 = phi i64 [ %i.cp, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit76 ], [ %i.bs, %.critedge ] ; 3 uses
  %.2 = phi i64 [ %i.by, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit76 ], [ %i.ap, %.critedge ] ; 2 uses
  %i.ct = icmp ugt i64 %.2, %i.e
  br i1 %i.ct, label %bb.c, label %._crit_edge145, !llvm.loop !184

._crit_edge145:                                   ; preds = %.critedge2
  %.not = icmp ult i64 %.260, %i.c
  br i1 %.not, label %.lr.ph150, label %.loopexit

.lr.ph150:                                        ; preds = %._crit_edge145, %bb.h
  %.0149 = phi i64 [ %i.dg, %bb.h ], [ %i.e, %._crit_edge145 ] ; 4 uses
  %.3148 = phi i64 [ %.4, %bb.h ], [ %.260, %._crit_edge145 ] ; 3 uses
  %i.cu = icmp ult i64 %.0149, %i.e
  br i1 %i.cu, label %bb.f, label %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit77

bb.f:                                             ; preds = %.lr.ph150
  tail call void @abort() #28
  unreachable

_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit77: ; preds = %.lr.ph150
  %i.cv = sub nuw i64 %.0149, %i.e                ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp eq i64 %i.f, %i.cy
  br i1 %i.cz, label %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit78, label %bb.g

_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit78: ; preds = %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit77
  %i.da = sub i64 %.3148, %i.e
  %i.db = trunc i64 %i.da to i32
  store i32 %i.db, ptr %i.cw, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit78, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit77
  %i.dc = icmp eq i64 %.0149, %.3148
  br i1 %i.dc, label %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit79, label %bb.h

_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit79: ; preds = %bb.g
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cv
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = sext i32 %i.de to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit79
  %.4 = phi i64 [ %i.df, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit79 ], [ %.3148, %bb.g ]
  %i.dg = add i64 %.0149, 1                       ; 2 uses
  %.not64 = icmp ugt i64 %i.dg, %i.c
  br i1 %.not64, label %.loopexit, label %.lr.ph150, !llvm.loop !185

.loopexit:                                        ; preds = %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit75, %bb.h, %_ZZN6nbytes12stringsearch12StringSearchItE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit.thread, %._crit_edge145
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN6nbytes12stringsearch12StringSearchIhE6SearchENS0_6VectorIKhEEm(ptr noundef nonnull align 8 dereferenceable(3072) %0, ptr noundef byval(%"class.nbytes::stringsearch::Vector.594") align 8 %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3056
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.i [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZN6nbytes12stringsearch12StringSearchIhE24BoyerMooreHorspoolSearchENS0_6VectorIKhEEm(ptr noundef nonnull align 8 dereferenceable(3072) %0, ptr noundef nonnull byval(%"class.nbytes::stringsearch::Vector.594") align 8 %1, i64 noundef %2)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_ZN6nbytes12stringsearch12StringSearchIhE16BoyerMooreSearchENS0_6VectorIKhEEm(ptr noundef nonnull align 8 dereferenceable(3072) %0, ptr noundef nonnull byval(%"class.nbytes::stringsearch::Vector.594") align 8 %1, i64 noundef %2)
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZN6nbytes12stringsearch12StringSearchIhE13InitialSearchENS0_6VectorIKhEEm(ptr noundef nonnull align 8 dereferenceable(3072) %0, ptr noundef nonnull byval(%"class.nbytes::stringsearch::Vector.594") align 8 %1, i64 noundef %2)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_ZN6nbytes12stringsearch12StringSearchIhE12LinearSearchENS0_6VectorIKhEEm(ptr noundef nonnull align 8 dereferenceable(3072) %0, ptr noundef nonnull byval(%"class.nbytes::stringsearch::Vector.594") align 8 %1, i64 noundef %2)
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %.sroa.06.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3032
  %.sroa.01.0.copyload.i = load ptr, ptr %i.g, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3040
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3048
  %.sroa.3.0.copyload.i = load i8, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.h = trunc nuw i8 %.sroa.3.0.copyload.i to i1
  %i.i = add i64 %.sroa.2.0.copyload.i, -1
  %i.j = select i1 %i.h, i64 0, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = trunc nuw i8 %.sroa.3.0.copyload to i1   ; 2 uses
  %i.n = add i64 %.sroa.2.0.copyload, 1
  %i.o = add i64 %2, %.sroa.2.0.copyload.i
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload, i64 %2
  %i.r = zext i8 %i.l to i32
  %i.s = tail call noundef ptr @memchr(ptr noundef %i.q, i32 noundef %i.r, i64 noundef %i.p) #32
  br label %_ZN6nbytes12stringsearch12StringSearchIhE16SingleCharSearchENS0_6VectorIKhEEm.exit

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.copyload, i64 %.sroa.2.0.copyload.i
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -1
  %i.v = zext i8 %i.l to i32
  %i.w = tail call noundef ptr @memrchr(ptr noundef nonnull %i.u, i32 noundef %i.v, i64 noundef %i.p) #32
  br label %_ZN6nbytes12stringsearch12StringSearchIhE16SingleCharSearchENS0_6VectorIKhEEm.exit

_ZN6nbytes12stringsearch12StringSearchIhE16SingleCharSearchENS0_6VectorIKhEEm.exit: ; preds = %bb.g, %bb.h
  %.014.i.i = phi ptr [ %i.s, %bb.g ], [ %i.w, %bb.h ] ; 2 uses
  %i.x = icmp eq ptr %.014.i.i, null
  %i.y = ptrtoint ptr %.014.i.i to i64
  %i.z = ptrtoint ptr %.sroa.06.0.copyload to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = xor i64 %i.aa, -1
  %i.ac = add i64 %.sroa.2.0.copyload, %i.ab
  %i.ad = select i1 %i.m, i64 %i.aa, i64 %i.ac
  %.0.i.i = select i1 %i.x, i64 %.sroa.2.0.copyload, i64 %i.ad
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  unreachable

bb.j:                                             ; preds = %_ZN6nbytes12stringsearch12StringSearchIhE16SingleCharSearchENS0_6VectorIKhEEm.exit, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %.0.i.i, %_ZN6nbytes12stringsearch12StringSearchIhE16SingleCharSearchENS0_6VectorIKhEEm.exit ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN6nbytes12stringsearch12StringSearchIhE24BoyerMooreHorspoolSearchENS0_6VectorIKhEEm(ptr noundef nonnull align 8 dereferenceable(3072) %0, ptr noundef byval(%"class.nbytes::stringsearch::Vector.594") align 8 %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3032
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3040
  %i.e = load i64, ptr %i.d, align 8              ; 7 uses
  %i.f = sub i64 0, %i.e
  %i.g = add i64 %i.e, -1                         ; 4 uses
  %i.h = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3048
  %i.j = load i8, ptr %i.i, align 8, !range !26, !noundef !41
  %i.k = trunc nuw i8 %i.j to i1                  ; 3 uses
  %i.l = select i1 %i.k, i64 %i.g, i64 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1               ; 3 uses
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4
  %i.r = trunc i64 %i.g to i32                    ; 3 uses
  %i.s = sub i32 %i.r, %i.q
  %i.t = sub i64 %i.b, %i.e                       ; 3 uses
  %i.u = load ptr, ptr %1, align 8                ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !26
  %.fr91 = freeze i8 %i.w
  %i.x = trunc i8 %.fr91 to i1                    ; 4 uses
  %i.y = add i64 %i.e, -2                         ; 9 uses
  %i.z = select i1 %i.k, i64 %i.y, i64 1
  %phi.call78 = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.z
  %i.aa = sext i32 %i.s to i64                    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.u, i64 %i.b
  %invariant.gep = getelementptr i8, ptr %i.u, i64 %i.g
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.b
  %i.ad = icmp eq i64 %i.y, 0
  %i.ae = icmp eq i64 %i.y, 0
  %i.af = icmp eq i64 %i.y, 0
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.049 = phi i64 [ %2, %bb.a ], [ %i.ck, %._crit_edge ] ; 3 uses
  %.046 = phi i64 [ %i.f, %bb.a ], [ %i.cn, %._crit_edge ] ; 2 uses
  %.not = icmp ugt i64 %.049, %i.t
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  br i1 %i.x, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.c
  %.150.us = phi i64 [ %i.am, %bb.c ], [ %.049, %.preheader ] ; 3 uses
  %.147.us = phi i64 [ %i.ap, %bb.c ], [ %.046, %.preheader ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.150.us
  %i.ag = load i8, ptr %gep, align 1              ; 2 uses
  %.not58.us = icmp eq i8 %i.n, %i.ag
  br i1 %.not58.us, label %.split, label %bb.c

bb.c:                                             ; preds = %.preheader.split.us
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = sub i32 %i.r, %i.aj                     ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = add i64 %.150.us, %i.al                 ; 2 uses
  %i.an = sub nsw i32 1, %i.ak
  %i.ao = sext i32 %i.an to i64
  %i.ap = add nsw i64 %.147.us, %i.ao
  %.not59.us = icmp ugt i64 %i.am, %i.t
  br i1 %.not59.us, label %.thread, label %.preheader.split.us, !llvm.loop !186

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.150 = phi i64 [ %i.az, %bb.d ], [ %.049, %.preheader ] ; 3 uses
  %.147 = phi i64 [ %i.bc, %bb.d ], [ %.046, %.preheader ] ; 2 uses
  %i.aq = add i64 %.150, %i.g
  %i.ar = xor i64 %i.aq, -1
  %i.as = getelementptr i8, ptr %i.ab, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1             ; 2 uses
  %.not58 = icmp eq i8 %i.n, %i.at
  br i1 %.not58, label %.split, label %bb.d

bb.d:                                             ; preds = %.preheader.split
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = sub i32 %i.r, %i.aw                     ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = add i64 %.150, %i.ay                    ; 2 uses
  %i.ba = sub nsw i32 1, %i.ax
  %i.bb = sext i32 %i.ba to i64
  %i.bc = add nsw i64 %.147, %i.bb
  %.not59 = icmp ugt i64 %i.az, %i.t
  br i1 %.not59, label %.thread, label %.preheader.split, !llvm.loop !186

.split:                                           ; preds = %.preheader.split, %.preheader.split.us
  %.us-phi = phi i64 [ %.150.us, %.preheader.split.us ], [ %.150, %.preheader.split ] ; 11 uses
  %.us-phi75 = phi i64 [ %.147.us, %.preheader.split.us ], [ %.147, %.preheader.split ]
  %i.bd = load i8, ptr %phi.call78, align 1
  %i.be = add i64 %i.y, %.us-phi                  ; 2 uses
  %i.bf = xor i64 %i.be, -1
  %i.bg = add i64 %i.b, %i.bf
  %i.bh = select i1 %i.x, i64 %i.be, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = icmp eq i8 %i.bd, %i.bj
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.split
  br i1 %i.k, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %i.af, label %.thread, label %.split54.us

.lr.ph.split.us:                                  ; preds = %.split54.us
  %i.bl = icmp eq i64 %i.bm, 0
  br i1 %i.bl, label %.thread, label %.split54.us, !llvm.loop !187

.split54.us:                                      ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %.05279.us159 = phi i64 [ %i.bm, %.lr.ph.split.us ], [ %i.y, %.lr.ph.split.us.preheader ]
  %i.bm = add i64 %.05279.us159, -1               ; 5 uses
  %phi.call.us = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bm
  %i.bn = load i8, ptr %phi.call.us, align 1
  %i.bo = add i64 %i.bm, %.us-phi                 ; 2 uses
  %i.bp = xor i64 %i.bo, -1
  %i.bq = add i64 %i.b, %i.bp
  %i.br = select i1 %i.x, i64 %i.bo, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = icmp eq i8 %i.bn, %i.bt
  br i1 %i.bu, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !187

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.x, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  br i1 %i.ad, label %.thread, label %.split54

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %invariant.gep134 = getelementptr i8, ptr %i.u, i64 %.us-phi
  br i1 %i.ae, label %.thread, label %.split54.us84

.lr.ph.split.split.us:                            ; preds = %.split54.us84
  %i.bv = icmp eq i64 %i.bw, 0
  br i1 %i.bv, label %.thread, label %.split54.us84, !llvm.loop !187

.split54.us84:                                    ; preds = %.lr.ph.split.split.us.preheader, %.lr.ph.split.split.us
  %.05279.us83156 = phi i64 [ %i.bw, %.lr.ph.split.split.us ], [ %i.y, %.lr.ph.split.split.us.preheader ] ; 2 uses
  %i.bw = add i64 %.05279.us83156, -1             ; 4 uses
  %i.bx = sub i64 %i.e, %.05279.us83156
  %phi.call.us85 = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bx
  %i.by = load i8, ptr %phi.call.us85, align 1
  %gep135 = getelementptr i8, ptr %invariant.gep134, i64 %i.bw
  %i.bz = load i8, ptr %gep135, align 1
  %i.ca = icmp eq i8 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph.split.split.us, label %._crit_edge, !llvm.loop !187

.lr.ph.split.split:                               ; preds = %.split54
  %i.cb = icmp eq i64 %i.cc, 0
  br i1 %i.cb, label %.thread, label %.split54, !llvm.loop !187

.split54:                                         ; preds = %.lr.ph.split.split.preheader, %.lr.ph.split.split
  %.05279154 = phi i64 [ %i.cc, %.lr.ph.split.split ], [ %i.y, %.lr.ph.split.split.preheader ] ; 2 uses
  %i.cc = add i64 %.05279154, -1                  ; 4 uses
  %i.cd = sub i64 %i.e, %.05279154
  %phi.call = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cd
  %i.ce = load i8, ptr %phi.call, align 1
  %i.cf = add i64 %i.cc, %.us-phi
  %i.cg = xor i64 %i.cf, -1
  %i.ch = getelementptr i8, ptr %i.ac, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = icmp eq i8 %i.ce, %i.ci
  br i1 %i.cj, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !187

._crit_edge:                                      ; preds = %.split54, %.split54.us84, %.split54.us, %.split
  %.052.lcssa = phi i64 [ %i.y, %.split ], [ %i.bm, %.split54.us ], [ %i.bw, %.split54.us84 ], [ %i.cc, %.split54 ]
  %i.ck = add i64 %.us-phi, %i.aa                 ; 2 uses
  %i.cl = add i64 %i.e, %.us-phi75
  %i.cm = add i64 %.052.lcssa, %i.aa
  %i.cn = sub i64 %i.cl, %i.cm                    ; 2 uses
  %i.co = icmp sgt i64 %i.cn, 0
  br i1 %i.co, label %bb.e, label %bb.b, !llvm.loop !188

bb.e:                                             ; preds = %._crit_edge
  tail call void @_ZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEv(ptr noundef nonnull align 8 dereferenceable(3072) %0)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 3056
  store i32 1, ptr %i.cp, align 8
  %i.cq = tail call noundef i64 @_ZN6nbytes12stringsearch12StringSearchIhE16BoyerMooreSearchENS0_6VectorIKhEEm(ptr noundef nonnull align 8 dereferenceable(3072) %0, ptr noundef nonnull byval(%"class.nbytes::stringsearch::Vector.594") align 8 %1, i64 noundef %i.ck)
  br label %.thread

.thread:                                          ; preds = %bb.b, %.lr.ph.split.split.preheader, %.lr.ph.split.split.us.preheader, %.lr.ph.split.us.preheader, %bb.d, %bb.c, %.lr.ph.split.split, %.lr.ph.split.split.us, %.lr.ph.split.us, %bb.e
  %.4 = phi i64 [ %i.b, %bb.c ], [ %i.cq, %bb.e ], [ %i.b, %bb.d ], [ %.us-phi, %.lr.ph.split.split ], [ %.us-phi, %.lr.ph.split.us ], [ %.us-phi, %.lr.ph.split.split.us ], [ %i.b, %bb.b ], [ %.us-phi, %.lr.ph.split.us.preheader ], [ %.us-phi, %.lr.ph.split.split.preheader ], [ %.us-phi, %.lr.ph.split.split.us.preheader ]
  ret i64 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN6nbytes12stringsearch12StringSearchIhE16BoyerMooreSearchENS0_6VectorIKhEEm(ptr noundef nonnull align 8 dereferenceable(3072) %0, ptr noundef byval(%"class.nbytes::stringsearch::Vector.594") align 8 %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3032
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3040
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = add i64 %i.e, -1                         ; 13 uses
  %i.i = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3048
  %i.k = load i8, ptr %i.j, align 8, !range !26, !noundef !41
  %i.l = trunc nuw i8 %i.k to i1                  ; 2 uses
  %i.m = select i1 %i.l, i64 %i.h, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1               ; 4 uses
  %i.p = sub i64 %i.b, %i.e                       ; 4 uses
  %.not88 = icmp ugt i64 %2, %i.p
  br i1 %.not88, label %.thread58, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8                ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i8, ptr %i.r, align 8, !range !26, !noundef !41
  %i.t = trunc nuw i8 %i.s to i1                  ; 4 uses
  %i.u = trunc i64 %i.h to i32                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.w = zext i8 %i.o to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %i.y = getelementptr i8, ptr %i.q, i64 %i.b
  %invariant.gep = getelementptr i8, ptr %i.q, i64 %i.h
  %i.z = getelementptr i8, ptr %i.q, i64 %i.b
  %i.aa = icmp eq i64 %i.h, 0
  %i.ab = icmp eq i64 %i.h, 0
  %i.ac = icmp eq i64 %i.h, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.h
  %.04389 = phi i64 [ %2, %.preheader.lr.ph ], [ %.245, %bb.h ] ; 2 uses
  br i1 %i.t, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.b
  %.144.us = phi i64 [ %i.aj, %bb.b ], [ %.04389, %.preheader ] ; 4 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.144.us
  %i.ad = load i8, ptr %gep, align 1              ; 2 uses
  %.not54.us = icmp eq i8 %i.o, %i.ad
  br i1 %.not54.us, label %.split50.preheader.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader.split.us
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = sub i32 %i.u, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add i64 %.144.us, %i.ai                 ; 2 uses
  %.not55.us = icmp ugt i64 %i.aj, %i.p
  br i1 %.not55.us, label %.thread58, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.c
  %.144 = phi i64 [ %i.bq, %bb.c ], [ %.04389, %.preheader ] ; 3 uses
  %i.ak = add i64 %.144, %i.h                     ; 2 uses
  %i.al = xor i64 %i.ak, -1                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.y, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1             ; 2 uses
  %.not54 = icmp eq i8 %i.o, %i.an
  br i1 %.not54, label %.split50.preheader, label %bb.c

.split50.preheader.loopexit:                      ; preds = %.preheader.split.us
  %.pre = add i64 %i.h, %.144.us                  ; 2 uses
  %.pre108 = xor i64 %.pre, -1
  br label %.split50.preheader

.split50.preheader:                               ; preds = %.preheader.split, %.split50.preheader.loopexit
  %.pre-phi109 = phi i64 [ %.pre108, %.split50.preheader.loopexit ], [ %i.al, %.preheader.split ]
  %.pre-phi = phi i64 [ %.pre, %.split50.preheader.loopexit ], [ %i.ak, %.preheader.split ]
  %.us-phi = phi i64 [ %.144.us, %.split50.preheader.loopexit ], [ %.144, %.preheader.split ] ; 10 uses
  %i.ao = add i64 %i.b, %.pre-phi109
  %i.ap = select i1 %i.t, i64 %.pre-phi, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1             ; 2 uses
  %i.as = icmp eq i8 %i.o, %i.ar
  br i1 %i.as, label %.lr.ph, label %.split50._crit_edge

.lr.ph:                                           ; preds = %.split50.preheader
  br i1 %i.l, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %i.ac, label %.thread58, label %.split.us

.lr.ph.split.us:                                  ; preds = %.split.us
  %i.at = icmp eq i64 %i.au, 0
  br i1 %i.at, label %.thread58, label %.split.us, !llvm.loop !189

.split.us:                                        ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %.04973.us173 = phi i64 [ %i.au, %.lr.ph.split.us ], [ %i.h, %.lr.ph.split.us.preheader ]
  %i.au = add i64 %.04973.us173, -1               ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = add i64 %i.au, %.us-phi                 ; 2 uses
  %i.ay = xor i64 %i.ax, -1
  %i.az = add i64 %i.b, %i.ay
  %i.ba = select i1 %i.t, i64 %i.ax, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1             ; 2 uses
  %i.bd = icmp eq i8 %i.aw, %i.bc
  br i1 %i.bd, label %.lr.ph.split.us, label %.split50._crit_edge, !llvm.loop !189

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.t, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  br i1 %i.aa, label %.thread58, label %.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %invariant.gep144 = getelementptr i8, ptr %i.q, i64 %.us-phi
  br i1 %i.ab, label %.thread58, label %.split.us80

.lr.ph.split.split.us:                            ; preds = %.split.us80
  %i.be = icmp eq i64 %i.bf, 0
  br i1 %i.be, label %.thread58, label %.split.us80, !llvm.loop !189

.split.us80:                                      ; preds = %.lr.ph.split.split.us.preheader, %.lr.ph.split.split.us
  %.04973.us79170 = phi i64 [ %i.bf, %.lr.ph.split.split.us ], [ %i.h, %.lr.ph.split.split.us.preheader ] ; 2 uses
  %i.bf = add i64 %.04973.us79170, -1             ; 4 uses
  %i.bg = sub i64 %i.e, %.04973.us79170
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %gep145 = getelementptr i8, ptr %invariant.gep144, i64 %i.bf
  %i.bj = load i8, ptr %gep145, align 1           ; 2 uses
  %i.bk = icmp eq i8 %i.bi, %i.bj
  br i1 %i.bk, label %.lr.ph.split.split.us, label %.split50._crit_edge, !llvm.loop !189

bb.c:                                             ; preds = %.preheader.split
  %i.bl = zext i8 %i.an to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = sub i32 %i.u, %i.bn
  %i.bp = sext i32 %i.bo to i64
  %i.bq = add i64 %.144, %i.bp                    ; 2 uses
  %.not55 = icmp ugt i64 %i.bq, %i.p
  br i1 %.not55, label %.thread58, label %.preheader.split

.lr.ph.split.split:                               ; preds = %.split
  %i.br = icmp eq i64 %i.bs, 0
  br i1 %i.br, label %.thread58, label %.split, !llvm.loop !189

.split:                                           ; preds = %.lr.ph.split.split.preheader, %.lr.ph.split.split
  %.04973168 = phi i64 [ %i.bs, %.lr.ph.split.split ], [ %i.h, %.lr.ph.split.split.preheader ] ; 2 uses
  %i.bs = add i64 %.04973168, -1                  ; 4 uses
  %i.bt = sub i64 %i.e, %.04973168
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = add i64 %i.bs, %.us-phi
  %i.bx = xor i64 %i.bw, -1
  %i.by = getelementptr i8, ptr %i.z, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1             ; 2 uses
  %i.ca = icmp eq i8 %i.bv, %i.bz
  br i1 %i.ca, label %.lr.ph.split.split, label %.split50._crit_edge, !llvm.loop !189

.split50._crit_edge:                              ; preds = %.split, %.split.us80, %.split.us, %.split50.preheader
  %.049.lcssa = phi i64 [ %i.h, %.split50.preheader ], [ %i.au, %.split.us ], [ %i.bf, %.split.us80 ], [ %i.bs, %.split ] ; 3 uses
  %.lcssa68 = phi i8 [ %i.ar, %.split50.preheader ], [ %i.bc, %.split.us ], [ %i.bj, %.split.us80 ], [ %i.bz, %.split ]
  %i.cb = icmp ult i64 %.049.lcssa, %i.g
  br i1 %i.cb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.split50._crit_edge
  %i.cc = load i32, ptr %i.x, align 4
  %i.cd = sext i32 %i.cc to i64
  %i.ce = sub i64 %i.h, %i.cd
  br label %bb.h

bb.e:                                             ; preds = %.split50._crit_edge
  %i.cf = add i64 %.049.lcssa, 1                  ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.g
  br i1 %i.cg, label %_ZZN6nbytes12stringsearch12StringSearchIhE16BoyerMooreSearchENS0_6VectorIKhEEmENKUlmE_clEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ch = sub nuw i64 %i.cf, %i.g                 ; 2 uses
  %i.ci = icmp ugt i64 %i.ch, 250
  br i1 %i.ci, label %_ZZN6nbytes12stringsearch12StringSearchIhE16BoyerMooreSearchENS0_6VectorIKhEEmENKUlmE_clEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ch
  %i.ck = load i32, ptr %i.cj, align 4
  br label %_ZZN6nbytes12stringsearch12StringSearchIhE16BoyerMooreSearchENS0_6VectorIKhEEmENKUlmE_clEm.exit

_ZZN6nbytes12stringsearch12StringSearchIhE16BoyerMooreSearchENS0_6VectorIKhEEmENKUlmE_clEm.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.ck, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.cl = zext i8 %.lcssa68 to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = trunc i64 %.049.lcssa to i32
  %i.cp = sub i32 %i.co, %i.cn
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.0.i, i32 %i.cp)
  %i.cq = sext i32 %spec.select to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %_ZZN6nbytes12stringsearch12StringSearchIhE16BoyerMooreSearchENS0_6VectorIKhEEmENKUlmE_clEm.exit
  %.pn = phi i64 [ %i.ce, %bb.d ], [ %i.cq, %_ZZN6nbytes12stringsearch12StringSearchIhE16BoyerMooreSearchENS0_6VectorIKhEEmENKUlmE_clEm.exit ]
  %.245 = add i64 %.pn, %.us-phi                  ; 2 uses
  %.not = icmp ugt i64 %.245, %i.p
  br i1 %.not, label %.thread58, label %.preheader, !llvm.loop !190

.thread58:                                        ; preds = %bb.h, %.lr.ph.split.split.preheader, %.lr.ph.split.split.us.preheader, %.lr.ph.split.us.preheader, %bb.c, %bb.b, %.lr.ph.split.split, %.lr.ph.split.split.us, %.lr.ph.split.us, %bb.a
  %.4 = phi i64 [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ %i.b, %bb.a ], [ %.us-phi, %.lr.ph.split.us ], [ %.us-phi, %.lr.ph.split.split.us ], [ %.us-phi, %.lr.ph.split.split ], [ %i.b, %bb.h ], [ %.us-phi, %.lr.ph.split.us.preheader ], [ %.us-phi, %.lr.ph.split.split.preheader ], [ %.us-phi, %.lr.ph.split.split.us.preheader ]
  ret i64 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN6nbytes12stringsearch12StringSearchIhE13InitialSearchENS0_6VectorIKhEEm(ptr noundef nonnull align 8 dereferenceable(3072) %0, ptr noundef byval(%"class.nbytes::stringsearch::Vector.594") align 8 %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3032 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3040 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 10 uses
  %i.f = sub i64 %i.e, %i.c                       ; 2 uses
  %.not61 = icmp ugt i64 %2, %i.f
  br i1 %.not61, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %invariant.op = add i64 %i.e, 1
  %i.g = shl i64 %i.c, 2
  %i.h = sub i64 -10, %i.g
  %.sroa.039.0.copyload = load ptr, ptr %i.a, align 8 ; 5 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3048 ; 2 uses
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.045.0.copyload = load ptr, ptr %1, align 8 ; 7 uses
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.347.0.copyload = load i8, ptr %.sroa.347.0..sroa_idx, align 8
  %.sroa.3.0.copyload.fr = freeze i8 %.sroa.3.0.copyload
  %i.i = trunc i8 %.sroa.3.0.copyload.fr to i1    ; 2 uses
  %i.j = add i64 %i.c, -1                         ; 4 uses
  %i.k = select i1 %i.i, i64 0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.039.0.copyload, i64 %i.k
  %i.m = trunc nuw i8 %.sroa.347.0.copyload to i1 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.045.0.copyload, i64 %i.c
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -1
  %i.p = ptrtoint ptr %.sroa.045.0.copyload to i64
  %umax = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 8 uses
  %i.q = getelementptr i8, ptr %.sroa.039.0.copyload, i64 %i.c
  %i.r = getelementptr i8, ptr %.sroa.045.0.copyload, i64 %i.e
  %i.s = getelementptr i8, ptr %.sroa.039.0.copyload, i64 %i.c
  %i.t = getelementptr i8, ptr %.sroa.045.0.copyload, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %.03063 = phi i64 [ %2, %.lr.ph ], [ %i.hf, %bb.l ] ; 3 uses
  %.03162 = phi i64 [ %i.h, %.lr.ph ], [ %i.he, %bb.l ] ; 2 uses
  %i.u = add nsw i64 %.03162, 1
  %i.v = icmp slt i64 %.03162, 0
  br i1 %i.v, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.w = load i8, ptr %i.l, align 1               ; 2 uses
  %i.x = add i64 %i.c, %.03063
  %i.y = sub i64 %invariant.op, %i.x              ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.045.0.copyload, i64 %.03063
  %i.aa = zext i8 %i.w to i32
  %i.ab = tail call noundef ptr @memchr(ptr noundef %i.z, i32 noundef %i.aa, i64 noundef %i.y) #32
  br label %_ZN6nbytes12stringsearch18FindFirstCharacterIhEEmNS0_6VectorIKT_EES5_m.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = zext i8 %i.w to i32
  %i.ad = tail call noundef ptr @memrchr(ptr noundef nonnull %i.o, i32 noundef %i.ac, i64 noundef %i.y) #32
  br label %_ZN6nbytes12stringsearch18FindFirstCharacterIhEEmNS0_6VectorIKT_EES5_m.exit

_ZN6nbytes12stringsearch18FindFirstCharacterIhEEmNS0_6VectorIKT_EES5_m.exit: ; preds = %bb.d, %bb.e
  %.014.i = phi ptr [ %i.ab, %bb.d ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ae = icmp eq ptr %.014.i, null
  %i.af = ptrtoint ptr %.014.i to i64
  %i.ag = sub i64 %i.af, %i.p                     ; 2 uses
  %i.ah = xor i64 %i.ag, -1
  %i.ai = add i64 %i.e, %i.ah
  %i.aj = select i1 %i.m, i64 %i.ag, i64 %i.ai
  %.0.i = select i1 %i.ae, i64 %i.e, i64 %i.aj    ; 7 uses
  %i.ak = icmp eq i64 %.0.i, %i.e
  br i1 %i.ak, label %.thread, label %.preheader

.preheader:                                       ; preds = %_ZN6nbytes12stringsearch18FindFirstCharacterIhEEmNS0_6VectorIKT_EES5_m.exit
  br i1 %i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  br i1 %i.m, label %.preheader.split.us.split.us.preheader, label %.preheader.split.us.split

.preheader.split.us.split.us.preheader:           ; preds = %.preheader.split.us
  %invariant.gep100 = getelementptr i8, ptr %.sroa.045.0.copyload, i64 %.0.i
  br label %.preheader.split.us.split.us

.preheader.split.us.split.us:                     ; preds = %.preheader.split.us.split.us.preheader, %bb.f
  %.0.us.us = phi i64 [ %i.ao, %bb.f ], [ 1, %.preheader.split.us.split.us.preheader ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.039.0.copyload, i64 %.0.us.us
  %i.am = load i8, ptr %i.al, align 1
  %gep101 = getelementptr i8, ptr %invariant.gep100, i64 %.0.us.us
  %i.an = load i8, ptr %gep101, align 1
  %.not37.us.us = icmp eq i8 %i.am, %i.an
  br i1 %.not37.us.us, label %bb.f, label %.split.us

bb.f:                                             ; preds = %.preheader.split.us.split.us
  %i.ao = add nuw i64 %.0.us.us, 1                ; 2 uses
  %exitcond80.not = icmp eq i64 %i.ao, %umax
  br i1 %exitcond80.not, label %.split.us, label %.preheader.split.us.split.us, !llvm.loop !191

.preheader.split.us.split:                        ; preds = %.preheader.split.us, %bb.g
  %.0.us = phi i64 [ %i.av, %bb.g ], [ 1, %.preheader.split.us ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.039.0.copyload, i64 %.0.us
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = add i64 %.0.us, %.0.i
  %i.as = xor i64 %i.ar, -1
  %i.at = getelementptr i8, ptr %i.t, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1
  %.not37.us = icmp eq i8 %i.aq, %i.au
  br i1 %.not37.us, label %bb.g, label %.split.us

bb.g:                                             ; preds = %.preheader.split.us.split
  %i.av = add nuw i64 %.0.us, 1                   ; 2 uses
  %exitcond78.not = icmp eq i64 %i.av, %umax
  br i1 %exitcond78.not, label %.split.us, label %.preheader.split.us.split, !llvm.loop !191

.preheader.split:                                 ; preds = %.preheader
  br i1 %i.m, label %.preheader.split.split.us.preheader, label %.preheader.split.split

.preheader.split.split.us.preheader:              ; preds = %.preheader.split
  %invariant.gep = getelementptr i8, ptr %.sroa.045.0.copyload, i64 %.0.i
  br label %.preheader.split.split.us

.preheader.split.split.us:                        ; preds = %.preheader.split.split.us.preheader, %bb.h
  %.0.us55 = phi i64 [ %i.ba, %bb.h ], [ 1, %.preheader.split.split.us.preheader ] ; 4 uses
  %i.aw = xor i64 %.0.us55, -1
  %i.ax = getelementptr i8, ptr %i.s, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.0.us55
  %i.az = load i8, ptr %gep, align 1
  %.not37.us57 = icmp eq i8 %i.ay, %i.az
  br i1 %.not37.us57, label %bb.h, label %.split.us

bb.h:                                             ; preds = %.preheader.split.split.us
  %i.ba = add nuw i64 %.0.us55, 1                 ; 2 uses
  %exitcond76.not = icmp eq i64 %i.ba, %umax
  br i1 %exitcond76.not, label %.split.us, label %.preheader.split.split.us, !llvm.loop !191

.preheader.split.split:                           ; preds = %.preheader.split, %bb.i
  %.0 = phi i64 [ %i.bi, %bb.i ], [ 1, %.preheader.split ] ; 4 uses
  %i.bb = xor i64 %.0, -1
  %i.bc = getelementptr i8, ptr %i.q, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = add i64 %.0, %.0.i
  %i.bf = xor i64 %i.be, -1
  %i.bg = getelementptr i8, ptr %i.r, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1
  %.not37 = icmp eq i8 %i.bd, %i.bh
  br i1 %.not37, label %bb.i, label %.split.us

bb.i:                                             ; preds = %.preheader.split.split
  %i.bi = add nuw i64 %.0, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %umax
  br i1 %exitcond.not, label %.split.us, label %.preheader.split.split, !llvm.loop !191

.split.us:                                        ; preds = %.preheader.split.split, %bb.i, %.preheader.split.split.us, %bb.h, %.preheader.split.us.split, %bb.g, %.preheader.split.us.split.us, %bb.f
  %.us-phi = phi i64 [ %umax, %bb.h ], [ %umax, %bb.g ], [ %umax, %bb.f ], [ %.0.us.us, %.preheader.split.us.split.us ], [ %.0.us, %.preheader.split.us.split ], [ %.0.us55, %.preheader.split.split.us ], [ %.0, %.preheader.split.split ], [ %umax, %bb.i ] ; 2 uses
  %.not38 = icmp eq i64 %.us-phi, %i.c
  br i1 %.not38, label %.thread, label %bb.l

bb.j:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.bk = load i64, ptr %i.bj, align 8            ; 11 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.k, label %vector.ph

vector.ph:                                        ; preds = %bb.j
  %i.bm = trunc i64 %i.bk to i32
  %i.bn = add i32 %i.bm, -1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bn, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 64 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i32> %broadcast.splat, ptr %0, align 8
  store <4 x i32> %broadcast.splat, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x i32> %broadcast.splat, ptr %i.bp, align 8
  store <4 x i32> %broadcast.splat, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x i32> %broadcast.splat, ptr %i.br, align 8
  store <4 x i32> %broadcast.splat, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <4 x i32> %broadcast.splat, ptr %i.bt, align 8
  store <4 x i32> %broadcast.splat, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 144
  store <4 x i32> %broadcast.splat, ptr %i.bv, align 8
  store <4 x i32> %broadcast.splat, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 176
  store <4 x i32> %broadcast.splat, ptr %i.bx, align 8
  store <4 x i32> %broadcast.splat, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x i32> %broadcast.splat, ptr %i.bz, align 8
  store <4 x i32> %broadcast.splat, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <4 x i32> %broadcast.splat, ptr %i.cb, align 8
  store <4 x i32> %broadcast.splat, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <4 x i32> %broadcast.splat, ptr %i.cd, align 8
  store <4 x i32> %broadcast.splat, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <4 x i32> %broadcast.splat, ptr %i.cf, align 8
  store <4 x i32> %broadcast.splat, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <4 x i32> %broadcast.splat, ptr %i.ch, align 8
  store <4 x i32> %broadcast.splat, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 368
  store <4 x i32> %broadcast.splat, ptr %i.cj, align 8
  store <4 x i32> %broadcast.splat, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 400
  store <4 x i32> %broadcast.splat, ptr %i.cl, align 8
  store <4 x i32> %broadcast.splat, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 432
  store <4 x i32> %broadcast.splat, ptr %i.cn, align 8
  store <4 x i32> %broadcast.splat, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 464
  store <4 x i32> %broadcast.splat, ptr %i.cp, align 8
  store <4 x i32> %broadcast.splat, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 496
  store <4 x i32> %broadcast.splat, ptr %i.cr, align 8
  store <4 x i32> %broadcast.splat, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 528
  store <4 x i32> %broadcast.splat, ptr %i.ct, align 8
  store <4 x i32> %broadcast.splat, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 560
  store <4 x i32> %broadcast.splat, ptr %i.cv, align 8
  store <4 x i32> %broadcast.splat, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 592
  store <4 x i32> %broadcast.splat, ptr %i.cx, align 8
  store <4 x i32> %broadcast.splat, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 624
  store <4 x i32> %broadcast.splat, ptr %i.cz, align 8
  store <4 x i32> %broadcast.splat, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 656
  store <4 x i32> %broadcast.splat, ptr %i.db, align 8
  store <4 x i32> %broadcast.splat, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 688
  store <4 x i32> %broadcast.splat, ptr %i.dd, align 8
  store <4 x i32> %broadcast.splat, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 720
  store <4 x i32> %broadcast.splat, ptr %i.df, align 8
  store <4 x i32> %broadcast.splat, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 752
  store <4 x i32> %broadcast.splat, ptr %i.dh, align 8
  store <4 x i32> %broadcast.splat, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 784
  store <4 x i32> %broadcast.splat, ptr %i.dj, align 8
  store <4 x i32> %broadcast.splat, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 816
  store <4 x i32> %broadcast.splat, ptr %i.dl, align 8
  store <4 x i32> %broadcast.splat, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 848
  store <4 x i32> %broadcast.splat, ptr %i.dn, align 8
  store <4 x i32> %broadcast.splat, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 880
  store <4 x i32> %broadcast.splat, ptr %i.dp, align 8
  store <4 x i32> %broadcast.splat, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 912
  store <4 x i32> %broadcast.splat, ptr %i.dr, align 8
  store <4 x i32> %broadcast.splat, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 944
  store <4 x i32> %broadcast.splat, ptr %i.dt, align 8
  store <4 x i32> %broadcast.splat, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 976
  store <4 x i32> %broadcast.splat, ptr %i.dv, align 8
  store <4 x i32> %broadcast.splat, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store <4 x i32> %broadcast.splat, ptr %i.dx, align 8
  store <4 x i32> %broadcast.splat, ptr %i.dy, align 8
  br label %.loopexit.i

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3072) %0, i8 -1, i64 1024, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %vector.ph, %bb.k
  %i.dz = icmp ult i64 %i.bk, %i.j
  br i1 %i.dz, label %.lr.ph.i, label %_ZN6nbytes12stringsearch12StringSearchIhE31PopulateBoyerMooreHorspoolTableEv.exit

.lr.ph.i:                                         ; preds = %.loopexit.i
  %i.ea = load ptr, ptr %i.a, align 8             ; 6 uses
  %i.eb = load i8, ptr %.sroa.3.0..sroa_idx, align 8, !range !26, !noundef !41
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.preheader.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %i.ed = xor i64 %i.bk, -1
  %i.ee = add i64 %i.c, %i.ed
  %i.ef = add i64 %i.c, -2
  %i.eg = sub i64 %i.ef, %i.bk
  %xtraiter118 = and i64 %i.ee, 3                 ; 2 uses
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i.prol
  %.01821.us.i.prol = phi i64 [ %i.em, %.lr.ph.split.us.i.prol ], [ %i.bk, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %prol.iter120 = phi i64 [ %prol.iter120.next, %.lr.ph.split.us.i.prol ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.01821.us.i.prol
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = trunc i64 %.01821.us.i.prol to i32
  %i.ek = zext i8 %i.ei to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ek
  store i32 %i.ej, ptr %i.el, align 4
  %i.em = add nuw i64 %.01821.us.i.prol, 1        ; 2 uses
  %prol.iter120.next = add i64 %prol.iter120, 1   ; 2 uses
  %prol.iter120.cmp.not = icmp eq i64 %prol.iter120.next, %xtraiter118
  br i1 %prol.iter120.cmp.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol, !llvm.loop !192

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader
  %.01821.us.i.unr = phi i64 [ %i.bk, %.lr.ph.split.us.i.preheader ], [ %i.em, %.lr.ph.split.us.i.prol ]
  %i.en = icmp ult i64 %i.eg, 3
  br i1 %i.en, label %_ZN6nbytes12stringsearch12StringSearchIhE31PopulateBoyerMooreHorspoolTableEv.exit, label %.lr.ph.split.us.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.eo = load i64, ptr %i.b, align 8
  %i.ep = getelementptr i8, ptr %i.ea, i64 %i.eo  ; 5 uses
  %i.eq = xor i64 %i.bk, -1
  %i.er = add i64 %i.c, %i.eq
  %i.es = add i64 %i.c, -2
  %i.et = sub i64 %i.es, %i.bk
  %xtraiter = and i64 %i.er, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.preheader.i, %.lr.ph.split.i.prol
  %.01821.i.prol = phi i64 [ %i.fa, %.lr.ph.split.i.prol ], [ %i.bk, %.lr.ph.split.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.i.prol ], [ 0, %.lr.ph.split.preheader.i ]
  %i.eu = xor i64 %.01821.i.prol, -1
  %i.ev = getelementptr i8, ptr %i.ep, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = trunc i64 %.01821.i.prol to i32
  %i.ey = zext i8 %i.ew to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ey
  store i32 %i.ex, ptr %i.ez, align 4
  %i.fa = add nuw i64 %.01821.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol, !llvm.loop !193

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.preheader.i
  %.01821.i.unr = phi i64 [ %i.bk, %.lr.ph.split.preheader.i ], [ %i.fa, %.lr.ph.split.i.prol ]
  %i.fb = icmp ult i64 %i.et, 3
  br i1 %i.fb, label %_ZN6nbytes12stringsearch12StringSearchIhE31PopulateBoyerMooreHorspoolTableEv.exit, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %.01821.us.i = phi i64 [ %i.fz, %.lr.ph.split.us.i ], [ %.01821.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.01821.us.i
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = trunc i64 %.01821.us.i to i32
  %i.ff = zext i8 %i.fd to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ff
  store i32 %i.fe, ptr %i.fg, align 4
  %i.fh = add nuw i64 %.01821.us.i, 1             ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = trunc i64 %i.fh to i32
  %i.fl = zext i8 %i.fj to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fl
  store i32 %i.fk, ptr %i.fm, align 4
  %i.fn = add nuw i64 %.01821.us.i, 2             ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = trunc i64 %i.fn to i32
  %i.fr = zext i8 %i.fp to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fr
  store i32 %i.fq, ptr %i.fs, align 4
  %i.ft = add nuw i64 %.01821.us.i, 3             ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = trunc i64 %i.ft to i32
  %i.fx = zext i8 %i.fv to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fx
  store i32 %i.fw, ptr %i.fy, align 4
  %i.fz = add nuw i64 %.01821.us.i, 4             ; 2 uses
  %exitcond24.not.i.3 = icmp eq i64 %i.fz, %i.j
  br i1 %exitcond24.not.i.3, label %_ZN6nbytes12stringsearch12StringSearchIhE31PopulateBoyerMooreHorspoolTableEv.exit, label %.lr.ph.split.us.i, !llvm.loop !194

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %.01821.i = phi i64 [ %i.hb, %.lr.ph.split.i ], [ %.01821.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 9 uses
  %i.ga = xor i64 %.01821.i, -1
  %i.gb = getelementptr i8, ptr %i.ep, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = trunc i64 %.01821.i to i32
  %i.ge = zext i8 %i.gc to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ge
  store i32 %i.gd, ptr %i.gf, align 4
  %i.gg = sub i64 -2, %.01821.i
  %i.gh = getelementptr i8, ptr %i.ep, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = trunc i64 %.01821.i to i32
  %i.gk = add i32 %i.gj, 1
  %i.gl = zext i8 %i.gi to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gl
  store i32 %i.gk, ptr %i.gm, align 4
  %i.gn = sub i64 -3, %.01821.i
  %i.go = getelementptr i8, ptr %i.ep, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = trunc i64 %.01821.i to i32
  %i.gr = add i32 %i.gq, 2
  %i.gs = zext i8 %i.gp to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gs
  store i32 %i.gr, ptr %i.gt, align 4
  %i.gu = sub i64 -4, %.01821.i
  %i.gv = getelementptr i8, ptr %i.ep, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1
  %i.gx = trunc i64 %.01821.i to i32
  %i.gy = add i32 %i.gx, 3
  %i.gz = zext i8 %i.gw to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gz
  store i32 %i.gy, ptr %i.ha, align 4
  %i.hb = add nuw i64 %.01821.i, 4                ; 2 uses
  %exitcond23.not.i.3 = icmp eq i64 %i.hb, %i.j
  br i1 %exitcond23.not.i.3, label %_ZN6nbytes12stringsearch12StringSearchIhE31PopulateBoyerMooreHorspoolTableEv.exit, label %.lr.ph.split.i, !llvm.loop !194

_ZN6nbytes12stringsearch12StringSearchIhE31PopulateBoyerMooreHorspoolTableEv.exit: ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %.loopexit.i
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 3056
  store i32 0, ptr %i.hc, align 8
  %i.hd = tail call noundef i64 @_ZN6nbytes12stringsearch12StringSearchIhE24BoyerMooreHorspoolSearchENS0_6VectorIKhEEm(ptr noundef nonnull align 8 dereferenceable(3072) %0, ptr noundef nonnull byval(%"class.nbytes::stringsearch::Vector.594") align 8 %1, i64 noundef %.03063)
  br label %.thread

bb.l:                                             ; preds = %.split.us
  %i.he = add i64 %i.u, %.us-phi
  %i.hf = add i64 %.0.i, 1                        ; 2 uses
  %.not = icmp ugt i64 %i.hf, %i.f
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !195

.thread:                                          ; preds = %_ZN6nbytes12stringsearch18FindFirstCharacterIhEEmNS0_6VectorIKT_EES5_m.exit, %.split.us, %bb.l, %bb.a, %_ZN6nbytes12stringsearch12StringSearchIhE31PopulateBoyerMooreHorspoolTableEv.exit
  %.3 = phi i64 [ %i.hd, %_ZN6nbytes12stringsearch12StringSearchIhE31PopulateBoyerMooreHorspoolTableEv.exit ], [ %i.e, %bb.a ], [ %.0.i, %.split.us ], [ %i.e, %_ZN6nbytes12stringsearch18FindFirstCharacterIhEEmNS0_6VectorIKT_EES5_m.exit ], [ %i.e, %bb.l ]
  ret i64 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN6nbytes12stringsearch12StringSearchIhE12LinearSearchENS0_6VectorIKhEEm(ptr noundef nonnull align 8 dereferenceable(3072) %0, ptr noundef byval(%"class.nbytes::stringsearch::Vector.594") align 8 %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3040
  %i.d = load i64, ptr %i.c, align 8
  %.fr = freeze i64 %i.d                          ; 10 uses
  %i.e = sub i64 %i.b, %.fr                       ; 5 uses
  %.not53 = icmp ugt i64 %2, %i.e
  br i1 %.not53, label %.thread39.loopexit42, label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3032
  %.sroa.025.0.copyload = load ptr, ptr %i.f, align 8 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3048
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.031.0.copyload = load ptr, ptr %1, align 8 ; 9 uses
  %.sroa.333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.333.0.copyload = load i8, ptr %.sroa.333.0..sroa_idx, align 8
  %.sroa.3.0.copyload.fr = freeze i8 %.sroa.3.0.copyload
  %i.g = trunc i8 %.sroa.3.0.copyload.fr to i1    ; 2 uses
  %i.h = add i64 %.fr, -1
  %i.i = select i1 %i.g, i64 0, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.025.0.copyload, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %.sroa.333.0.copyload.fr = freeze i8 %.sroa.333.0.copyload
  %i.l = trunc i8 %.sroa.333.0.copyload.fr to i1  ; 4 uses
  %.neg41 = add i64 %i.b, 1
  %i.m = sub i64 %.neg41, %.fr                    ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload, i64 %.fr
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -1 ; 3 uses
  %i.p = zext i8 %i.k to i32                      ; 6 uses
  %i.q = ptrtoint ptr %.sroa.031.0.copyload to i64 ; 5 uses
  %.not2443 = icmp ugt i64 %.fr, 1
  br i1 %.not2443, label %.lr.ph55.split.us, label %.lr.ph55.split

.lr.ph55.split.us:                                ; preds = %.lr.ph55
  br i1 %i.g, label %.lr.ph55.split.us.split.us, label %.lr.ph55.split.us.split

.lr.ph55.split.us.split.us:                       ; preds = %.lr.ph55.split.us
  br i1 %i.l, label %.lr.ph55.split.us.split.us.split.us, label %.lr.ph55.split.us.split.us.split.preheader

.lr.ph55.split.us.split.us.split.preheader:       ; preds = %.lr.ph55.split.us.split.us
  %i.r = getelementptr i8, ptr %.sroa.031.0.copyload, i64 %i.b
  br label %.lr.ph55.split.us.split.us.split

.lr.ph55.split.us.split.us.split.us:              ; preds = %.lr.ph55.split.us.split.us, %.split.us.split.us.us.us.us
  %.01954.us.us.us = phi i64 [ %i.ae, %.split.us.split.us.us.us.us ], [ %2, %.lr.ph55.split.us.split.us ] ; 2 uses
  %i.s = sub i64 %i.m, %.01954.us.us.us
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload, i64 %.01954.us.us.us
  %i.u = tail call noundef ptr @memchr(ptr noundef %i.t, i32 noundef %i.p, i64 noundef %i.s) #32 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.w, %i.q                       ; 4 uses
  %i.y = icmp eq i64 %i.x, %i.b
  %i.z = select i1 %i.v, i1 true, i1 %i.y
  br i1 %i.z, label %.thread39.loopexit42, label %.preheader.us.us.us.preheader

.preheader.us.us.us.preheader:                    ; preds = %.lr.ph55.split.us.split.us.split.us
  %invariant.gep119 = getelementptr i8, ptr %.sroa.031.0.copyload, i64 %i.x
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.preheader.us.us.us.preheader, %bb.b
  %.044.us.us.us.us.us = phi i64 [ %i.ad, %bb.b ], [ 1, %.preheader.us.us.us.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.025.0.copyload, i64 %.044.us.us.us.us.us
  %i.ab = load i8, ptr %i.aa, align 1
  %gep120 = getelementptr i8, ptr %invariant.gep119, i64 %.044.us.us.us.us.us
  %i.ac = load i8, ptr %gep120, align 1
  %.not23.us.us.us.us.us = icmp eq i8 %i.ab, %i.ac
  br i1 %.not23.us.us.us.us.us, label %bb.b, label %.split.us.split.us.us.us.us

bb.b:                                             ; preds = %.preheader.us.us.us
  %i.ad = add nuw i64 %.044.us.us.us.us.us, 1     ; 2 uses
  %exitcond99.not = icmp eq i64 %i.ad, %.fr
  br i1 %exitcond99.not, label %.thread39, label %.preheader.us.us.us, !llvm.loop !196

.split.us.split.us.us.us.us:                      ; preds = %.preheader.us.us.us
  %i.ae = add i64 %i.x, 1                         ; 2 uses
  %.not.us.us.us = icmp ugt i64 %i.ae, %i.e
  br i1 %.not.us.us.us, label %.thread39.loopexit42, label %.lr.ph55.split.us.split.us.split.us, !llvm.loop !197

.lr.ph55.split.us.split.us.split:                 ; preds = %.lr.ph55.split.us.split.us.split.preheader, %.split.us.split.us64.us
  %.01954.us.us = phi i64 [ %i.au, %.split.us.split.us64.us ], [ %2, %.lr.ph55.split.us.split.us.split.preheader ]
  %i.af = sub i64 %i.m, %.01954.us.us
  %i.ag = tail call noundef ptr @memrchr(ptr noundef nonnull %i.o, i32 noundef %i.p, i64 noundef %i.af) #32 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = xor i64 %i.ai, -1
  %i.ak = add i64 %i.aj, %i.q
  %i.al = select i1 %i.ah, i64 0, i64 %i.ak       ; 2 uses
  %.0.i.us.us = add i64 %i.b, %i.al               ; 3 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %.thread39.loopexit42, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.lr.ph55.split.us.split.us.split, %bb.c
  %.044.us.us61.us = phi i64 [ %i.at, %bb.c ], [ 1, %.lr.ph55.split.us.split.us.split ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.025.0.copyload, i64 %.044.us.us61.us
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = add i64 %.044.us.us61.us, %.0.i.us.us
  %i.aq = xor i64 %i.ap, -1
  %i.ar = getelementptr i8, ptr %i.r, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %.not23.us.us62.us = icmp eq i8 %i.ao, %i.as
  br i1 %.not23.us.us62.us, label %bb.c, label %.split.us.split.us64.us

bb.c:                                             ; preds = %.preheader.us.us
  %i.at = add nuw i64 %.044.us.us61.us, 1         ; 2 uses
  %exitcond98.not = icmp eq i64 %i.at, %.fr
  br i1 %exitcond98.not, label %.thread39, label %.preheader.us.us, !llvm.loop !196

.split.us.split.us64.us:                          ; preds = %.preheader.us.us
  %i.au = add i64 %.0.i.us.us, 1                  ; 2 uses
  %.not.us.us = icmp ugt i64 %i.au, %i.e
  br i1 %.not.us.us, label %.thread39.loopexit42, label %.lr.ph55.split.us.split.us.split, !llvm.loop !197

.lr.ph55.split.us.split:                          ; preds = %.lr.ph55.split.us
  %i.av = getelementptr i8, ptr %.sroa.025.0.copyload, i64 %.fr ; 2 uses
  br i1 %i.l, label %.lr.ph55.split.us.split.split.us, label %.lr.ph55.split.us.split.split.preheader

.lr.ph55.split.us.split.split.preheader:          ; preds = %.lr.ph55.split.us.split
  %i.aw = getelementptr i8, ptr %.sroa.031.0.copyload, i64 %i.b
  br label %.lr.ph55.split.us.split.split

.lr.ph55.split.us.split.split.us:                 ; preds = %.lr.ph55.split.us.split, %.split.split.us.us.us
  %.01954.us.us76 = phi i64 [ %i.bk, %.split.split.us.us.us ], [ %2, %.lr.ph55.split.us.split ] ; 2 uses
  %i.ax = sub i64 %i.m, %.01954.us.us76
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload, i64 %.01954.us.us76
  %i.az = tail call noundef ptr @memchr(ptr noundef %i.ay, i32 noundef %i.p, i64 noundef %i.ax) #32 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.bb, %i.q                     ; 4 uses
  %i.bd = icmp eq i64 %i.bc, %i.b
  %i.be = select i1 %i.ba, i1 true, i1 %i.bd
  br i1 %i.be, label %.thread39.loopexit42, label %.preheader.us.us81.preheader

.preheader.us.us81.preheader:                     ; preds = %.lr.ph55.split.us.split.split.us
  %invariant.gep = getelementptr i8, ptr %.sroa.031.0.copyload, i64 %i.bc
  br label %.preheader.us.us81

.preheader.us.us81:                               ; preds = %.preheader.us.us81.preheader, %bb.d
  %.044.us46.us.us = phi i64 [ %i.bj, %bb.d ], [ 1, %.preheader.us.us81.preheader ] ; 3 uses
  %i.bf = xor i64 %.044.us46.us.us, -1
  %i.bg = getelementptr i8, ptr %i.av, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.044.us46.us.us
  %i.bi = load i8, ptr %gep, align 1
  %.not23.us49.us.us = icmp eq i8 %i.bh, %i.bi
  br i1 %.not23.us49.us.us, label %bb.d, label %.split.split.us.us.us

bb.d:                                             ; preds = %.preheader.us.us81
  %i.bj = add nuw i64 %.044.us46.us.us, 1         ; 2 uses
  %exitcond97.not = icmp eq i64 %i.bj, %.fr
  br i1 %exitcond97.not, label %.thread39, label %.preheader.us.us81, !llvm.loop !196

.split.split.us.us.us:                            ; preds = %.preheader.us.us81
  %i.bk = add i64 %i.bc, 1                        ; 2 uses
  %.not.us.us82 = icmp ugt i64 %i.bk, %i.e
  br i1 %.not.us.us82, label %.thread39.loopexit42, label %.lr.ph55.split.us.split.split.us, !llvm.loop !197

.lr.ph55.split.us.split.split:                    ; preds = %.lr.ph55.split.us.split.split.preheader, %.split.split.us59
  %.01954.us = phi i64 [ %i.cb, %.split.split.us59 ], [ %2, %.lr.ph55.split.us.split.split.preheader ]
  %i.bl = sub i64 %i.m, %.01954.us
  %i.bm = tail call noundef ptr @memrchr(ptr noundef nonnull %i.o, i32 noundef %i.p, i64 noundef %i.bl) #32 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = xor i64 %i.bo, -1
  %i.bq = add i64 %i.bp, %i.q
  %i.br = select i1 %i.bn, i64 0, i64 %i.bq       ; 2 uses
  %.0.i.us = add i64 %i.b, %i.br                  ; 3 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %.thread39.loopexit42, label %.preheader.us

bb.e:                                             ; preds = %.preheader.us
  %i.bt = add nuw i64 %.044.us57, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %.fr
  br i1 %exitcond.not, label %.thread39, label %.preheader.us, !llvm.loop !196

.preheader.us:                                    ; preds = %.lr.ph55.split.us.split.split, %bb.e
  %.044.us57 = phi i64 [ %i.bt, %bb.e ], [ 1, %.lr.ph55.split.us.split.split ] ; 3 uses
  %i.bu = xor i64 %.044.us57, -1
  %i.bv = getelementptr i8, ptr %i.av, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = add i64 %.044.us57, %.0.i.us
  %i.by = xor i64 %i.bx, -1
  %i.bz = getelementptr i8, ptr %i.aw, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %.not23.us58 = icmp eq i8 %i.bw, %i.ca
  br i1 %.not23.us58, label %bb.e, label %.split.split.us59

.split.split.us59:                                ; preds = %.preheader.us
  %i.cb = add i64 %.0.i.us, 1                     ; 2 uses
  %.not.us = icmp ugt i64 %i.cb, %i.e
  br i1 %.not.us, label %.thread39.loopexit42, label %.lr.ph55.split.us.split.split, !llvm.loop !197

.lr.ph55.split:                                   ; preds = %.lr.ph55
  %i.cc = sub i64 %i.m, %2                        ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph55.split
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.031.0.copyload, i64 %2
  %i.ce = tail call noundef ptr @memchr(ptr noundef %i.cd, i32 noundef %i.p, i64 noundef %i.cc) #32
  br label %_ZN6nbytes12stringsearch18FindFirstCharacterIhEEmNS0_6VectorIKT_EES5_m.exit

bb.g:                                             ; preds = %.lr.ph55.split
  %i.cf = tail call noundef ptr @memrchr(ptr noundef nonnull %i.o, i32 noundef %i.p, i64 noundef %i.cc) #32
  br label %_ZN6nbytes12stringsearch18FindFirstCharacterIhEEmNS0_6VectorIKT_EES5_m.exit

_ZN6nbytes12stringsearch18FindFirstCharacterIhEEmNS0_6VectorIKT_EES5_m.exit: ; preds = %bb.f, %bb.g
  %.014.i = phi ptr [ %i.ce, %bb.f ], [ %i.cf, %bb.g ] ; 2 uses
  %i.cg = icmp eq ptr %.014.i, null
  %i.ch = ptrtoint ptr %.014.i to i64
  %i.ci = sub i64 %i.ch, %i.q                     ; 2 uses
  %i.cj = xor i64 %i.ci, -1
  %i.ck = add i64 %i.b, %i.cj
  %i.cl = select i1 %i.l, i64 %i.ci, i64 %i.ck
  %.0.i = select i1 %i.cg, i64 %i.b, i64 %i.cl    ; 2 uses
  %i.cm = icmp eq i64 %.0.i, %i.b
  br i1 %i.cm, label %.thread39.loopexit42, label %.thread39

.thread39.loopexit42:                             ; preds = %.split.split.us59, %.lr.ph55.split.us.split.split, %.split.split.us.us.us, %.lr.ph55.split.us.split.split.us, %.split.us.split.us64.us, %.lr.ph55.split.us.split.us.split, %.split.us.split.us.us.us.us, %.lr.ph55.split.us.split.us.split.us, %_ZN6nbytes12stringsearch18FindFirstCharacterIhEEmNS0_6VectorIKT_EES5_m.exit, %bb.a
  br label %.thread39

.thread39:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %_ZN6nbytes12stringsearch18FindFirstCharacterIhEEmNS0_6VectorIKT_EES5_m.exit, %.thread39.loopexit42
  %.3 = phi i64 [ %i.b, %.thread39.loopexit42 ], [ %.0.i, %_ZN6nbytes12stringsearch18FindFirstCharacterIhEEmNS0_6VectorIKT_EES5_m.exit ], [ %i.bc, %bb.d ], [ %.0.i.us.us, %bb.c ], [ %i.x, %bb.b ], [ %.0.i.us, %bb.e ]
  ret i64 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEv(ptr noundef nonnull align 8 dereferenceable(3072) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3032 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3040 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8              ; 17 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.e = load i64, ptr %i.d, align 8              ; 19 uses
  %i.f = sub i64 %i.c, %i.e                       ; 11 uses
  %i.g = icmp ult i64 %i.e, %i.c
  br i1 %i.g, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 8
  br i1 %min.iters.check, label %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.f, -8                       ; 3 uses
  %i.j = add i64 %i.e, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.k, align 8
  store <4 x i32> %broadcast.splat, ptr %i.l, align 8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68.preheader

_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68.preheader: ; preds = %.lr.ph, %middle.block
  %.056132.ph = phi i64 [ %i.e, %.lr.ph ], [ %i.j, %middle.block ]
  br label %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68

._crit_edge:                                      ; preds = %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68, %middle.block
  %i.n = icmp ult i64 %i.c, %i.e
  br i1 %i.n, label %bb.b, label %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit

._crit_edge.thread:                               ; preds = %bb.a
  %i.o = icmp ult i64 %i.c, %i.e
  br i1 %i.o, label %bb.b, label %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit.thread

_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit.thread: ; preds = %._crit_edge.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.f
  store i32 1, ptr %i.q, align 4
  %i.r = trunc i64 %i.c to i32
  %i.s = add i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2028
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.f
  store i32 %i.s, ptr %i.u, align 4
  br label %.loopexit

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  tail call void @abort() #28
  unreachable

_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit: ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.f ; 3 uses
  store i32 1, ptr %i.w, align 4
  %i.x = add i64 %i.c, 1                          ; 2 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2028 ; 6 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.f
  store i32 %i.y, ptr %i.aa, align 4
  %i.ab = add i64 %i.c, -1
  %i.ac = load ptr, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3048 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 8, !range !26, !noundef !41
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load i64, ptr %i.b, align 8
  %i.ah = sub i64 %i.ag, %i.c
  %i.ai = select i1 %i.af, i64 %i.ab, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = trunc i64 %i.c to i32
  br label %bb.c

_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68: ; preds = %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68.preheader, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68
  %.056132 = phi i64 [ %i.ao, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68 ], [ %.056132.ph, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68.preheader ] ; 2 uses
  %i.am = sub nuw i64 %.056132, %i.e
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.am
  store i32 %i.h, ptr %i.an, align 4
  %i.ao = add i64 %.056132, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit68, !llvm.loop !199

bb.c:                                             ; preds = %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit, %.critedge2
  %.057143 = phi i64 [ %i.c, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit ], [ %.2, %.critedge2 ] ; 3 uses
  %.058142 = phi i64 [ %i.x, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit ], [ %.260, %.critedge2 ] ; 3 uses
  %i.ap = add i64 %.057143, -1                    ; 5 uses
  %i.aq = load ptr, ptr %i.a, align 8
  %i.ar = load i8, ptr %i.ad, align 8, !range !26, !noundef !41
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = load i64, ptr %i.b, align 8
  %i.au = sub i64 %i.at, %.057143
  %i.av = select i1 %i.as, i64 %i.ap, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %.not65133 = icmp ugt i64 %.058142, %i.c
  br i1 %.not65133, label %.critedge, label %.lr.ph136

.lr.ph136:                                        ; preds = %bb.c, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit71
  %.159134 = phi i64 [ %i.br, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit71 ], [ %.058142, %bb.c ] ; 6 uses
  %i.ay = add i64 %.159134, -1
  %i.az = load ptr, ptr %i.a, align 8
  %i.ba = load i8, ptr %i.ad, align 8, !range !26, !noundef !41
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = load i64, ptr %i.b, align 8
  %i.bd = sub i64 %i.bc, %.159134
  %i.be = select i1 %i.bb, i64 %i.ay, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  %.not66 = icmp eq i8 %i.ax, %i.bg
  br i1 %.not66, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph136
  %i.bh = icmp ult i64 %.159134, %i.e
  br i1 %i.bh, label %bb.e, label %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit69

bb.e:                                             ; preds = %bb.d
  tail call void @abort() #28
  unreachable

_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit69: ; preds = %bb.d
  %i.bi = sub nuw i64 %.159134, %i.e              ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp eq i64 %i.f, %i.bl
  br i1 %i.bm, label %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit70, label %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit71

_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit70: ; preds = %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit69
  %i.bn = sub i64 %.159134, %.057143
  %i.bo = trunc i64 %i.bn to i32
  store i32 %i.bo, ptr %i.bj, align 4
  br label %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit71

_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit71: ; preds = %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit69, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit70
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bi
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = sext i32 %i.bq to i64                   ; 3 uses
  %.not65 = icmp ult i64 %i.c, %i.br
  br i1 %.not65, label %.critedge, label %.lr.ph136, !llvm.loop !200

.critedge:                                        ; preds = %.lr.ph136, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit71, %bb.c
  %.159.lcssa = phi i64 [ %.058142, %bb.c ], [ %i.br, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit71 ], [ %.159134, %.lr.ph136 ] ; 2 uses
  %i.bs = add i64 %.159.lcssa, -1                 ; 3 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = sub nuw i64 %i.ap, %i.e
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bu
  store i32 %i.bt, ptr %i.bv, align 4
  %i.bw = icmp eq i64 %i.bs, %i.c
  %i.bx = icmp ugt i64 %i.ap, %i.e
  %or.cond = and i1 %i.bw, %i.bx
  br i1 %or.cond, label %.lr.ph140, label %.critedge2

.lr.ph140:                                        ; preds = %.critedge, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit75
  %.1139 = phi i64 [ %i.by, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit75 ], [ %i.ap, %.critedge ] ; 3 uses
  %i.by = add i64 %.1139, -1                      ; 6 uses
  %i.bz = load ptr, ptr %i.a, align 8
  %i.ca = load i8, ptr %i.ad, align 8, !range !26, !noundef !41
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = load i64, ptr %i.b, align 8
  %i.cd = sub i64 %i.cc, %.1139
  %i.ce = select i1 %i.cb, i64 %i.by, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1
  %.not67 = icmp eq i8 %i.cg, %i.ak
  br i1 %.not67, label %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit76, label %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit73

_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit73: ; preds = %.lr.ph140
  %i.ch = load i32, ptr %i.w, align 4
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp eq i64 %i.f, %i.ci
  br i1 %i.cj, label %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit74, label %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit75

_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit74: ; preds = %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit73
  %i.ck = sub i64 %i.c, %.1139
  %i.cl = trunc i64 %i.ck to i32
  store i32 %i.cl, ptr %i.w, align 4
  br label %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit75

_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit75: ; preds = %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit74, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit73
  %i.cm = sub nuw i64 %i.by, %i.e
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cm
  store i32 %i.al, ptr %i.cn, align 4
  %i.co = icmp ugt i64 %i.by, %i.e
  br i1 %i.co, label %.lr.ph140, label %.loopexit, !llvm.loop !201

_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit76: ; preds = %.lr.ph140
  %i.cp = add i64 %.159.lcssa, -2                 ; 2 uses
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = sub nuw i64 %i.by, %i.e
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cr
  store i32 %i.cq, ptr %i.cs, align 4
  br label %.critedge2

.critedge2:                                       ; preds = %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit76, %.critedge
  %.260 = phi i64 [ %i.cp, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit76 ], [ %i.bs, %.critedge ] ; 3 uses
  %.2 = phi i64 [ %i.by, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit76 ], [ %i.ap, %.critedge ] ; 2 uses
  %i.ct = icmp ugt i64 %.2, %i.e
  br i1 %i.ct, label %bb.c, label %._crit_edge145, !llvm.loop !202

._crit_edge145:                                   ; preds = %.critedge2
  %.not = icmp ult i64 %.260, %i.c
  br i1 %.not, label %.lr.ph150, label %.loopexit

.lr.ph150:                                        ; preds = %._crit_edge145, %bb.h
  %.0149 = phi i64 [ %i.dg, %bb.h ], [ %i.e, %._crit_edge145 ] ; 4 uses
  %.3148 = phi i64 [ %.4, %bb.h ], [ %.260, %._crit_edge145 ] ; 3 uses
  %i.cu = icmp ult i64 %.0149, %i.e
  br i1 %i.cu, label %bb.f, label %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit77

bb.f:                                             ; preds = %.lr.ph150
  tail call void @abort() #28
  unreachable

_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit77: ; preds = %.lr.ph150
  %i.cv = sub nuw i64 %.0149, %i.e                ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp eq i64 %i.f, %i.cy
  br i1 %i.cz, label %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit78, label %bb.g

_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit78: ; preds = %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit77
  %i.da = sub i64 %.3148, %i.e
  %i.db = trunc i64 %i.da to i32
  store i32 %i.db, ptr %i.cw, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit78, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE_clEm.exit77
  %i.dc = icmp eq i64 %.0149, %.3148
  br i1 %i.dc, label %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit79, label %bb.h

_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit79: ; preds = %bb.g
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.cv
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = sext i32 %i.de to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit79
  %.4 = phi i64 [ %i.df, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit79 ], [ %.3148, %bb.g ]
  %i.dg = add i64 %.0149, 1                       ; 2 uses
  %.not64 = icmp ugt i64 %i.dg, %i.c
  br i1 %.not64, label %.loopexit, label %.lr.ph150, !llvm.loop !203

.loopexit:                                        ; preds = %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit75, %bb.h, %_ZZN6nbytes12stringsearch12StringSearchIhE23PopulateBoyerMooreTableEvENKUlmE0_clEm.exit.thread, %._crit_edge145
  ret void
}

declare noundef zeroext i1 @_ZNK2v85Value8IsUint32Ev(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN4node15UncheckedMallocIhEEPT_m(i64 noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %_ZN4node16UncheckedReallocIhEEPT_S2_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %malloc = tail call ptr @malloc(i64 %0)         ; 2 uses
  %i.b = icmp eq ptr %malloc, null
  br i1 %i.b, label %bb.c, label %_ZN4node16UncheckedReallocIhEEPT_S2_m.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4node21LowMemoryNotificationEv() #27
  %malloc1 = tail call ptr @malloc(i64 %0)
  br label %_ZN4node16UncheckedReallocIhEEPT_S2_m.exit

_ZN4node16UncheckedReallocIhEEPT_S2_m.exit:       ; preds = %bb.a, %bb.b, %bb.c
  %.09.i = phi ptr [ %malloc, %bb.b ], [ %malloc1, %bb.c ], [ null, %bb.a ]
  ret ptr %.09.i
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #20

declare void @_ZN4node21LowMemoryNotificationEv() local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6nbytes11SwapBytes16EPcm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6nbytes11SwapBytes32EPcm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6nbytes11SwapBytes64EPcm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK2v85Value12IsTypedArrayEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN7simdutf13validate_utf8EPKcm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZN4node17ERR_INVALID_STATEIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %2, i64 noundef %1) ; 0 uses
  %i.d = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %0, ptr noundef nonnull @.str.164, i32 noundef 1, i32 noundef 17) #27 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm18EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #27
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm18EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm18EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr %3, align 8
  %i.g = load i64, ptr %i.b, align 8
  %i.h = trunc i64 %i.g to i32
  %i.i = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %0, ptr noundef %i.f, i32 noundef 0, i32 noundef %i.h) #27 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit, !prof !5

bb.c:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm18EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #27
  br label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit

_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm18EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.c
  %i.k = call ptr @_ZN2v89Exception5ErrorENS_5LocalINS_6StringEEENS1_INS_5ValueEEE(ptr %i.i, ptr null) #27
  %i.l = call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  %i.m = call ptr @_ZNK2v85Value8ToObjectENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr %i.l) #27 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #27
  br label %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit

_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit: ; preds = %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit, %bb.d
  %i.o = call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  %i.p = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef nonnull %0, ptr noundef nonnull @.str.49, i32 noundef 1, i32 noundef 4) #27 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.e:                                             ; preds = %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #27
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit, %bb.e
  %i.r = call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr %i.o, ptr %i.p, ptr %i.d) #27
  %i.s = trunc i16 %i.r to i1
  br i1 %i.s, label %_ZNK2v85MaybeIbE5CheckEv.exit, label %bb.f, !prof !28

bb.f:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #27
  br label %_ZNK2v85MaybeIbE5CheckEv.exit

_ZNK2v85MaybeIbE5CheckEv.exit:                    ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.f
  %i.t = load ptr, ptr %3, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit
  %i.v = load i64, ptr %i.a, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret ptr %i.m
}

; Function Attrs: nounwind
declare { i32, i64 } @_ZN7simdutf26validate_ascii_with_errorsEPKcm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i64 } @_ZN4node6Buffer12_GLOBAL__N_112_GLOBAL__N_122DecomposeBufferToPartsEN2v85LocalINS3_5ValueEEE(ptr nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2v85Value13IsArrayBufferEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZNK2v811ArrayBuffer4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  %i.c = tail call noundef i64 @_ZNK2v811ArrayBuffer10ByteLengthEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK2v85Value19IsSharedArrayBufferEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef ptr @_ZNK2v817SharedArrayBuffer4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  %i.f = tail call noundef i64 @_ZNK2v817SharedArrayBuffer10ByteLengthEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6Buffer12_GLOBAL__N_112_GLOBAL__N_122DecomposeBufferToPartsEN2v85LocalINS3_5ValueEEEE20error_and_abort_args) #27
  tail call void @abort() #28
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b
  %.014 = phi i64 [ %i.c, %bb.b ], [ %i.f, %bb.d ]
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.e, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.014, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare ptr @_ZN2v811ArrayBuffer3NewEPNS_7IsolateEmNS_30BackingStoreInitializationModeE(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node34THROW_ERR_MEMORY_ALLOCATION_FAILEDEPNS_11EnvironmentE(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call ptr @_ZN4node28ERR_MEMORY_ALLOCATION_FAILEDIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.b, i64 25, ptr nonnull @.str.55)
  %i.d = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr %i.c) #27 ; 0 uses
  ret void
}

declare noundef double @_ZNK2v86Number5ValueEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef i64 @_ZN7simdutf33maximal_binary_length_from_base64EPKcm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node16MaybeStackBufferIcLm1024EE25AllocateSufficientStorageEm(ptr noundef nonnull align 8 dereferenceable(1048) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node16MaybeStackBufferIcLm1024EE25AllocateSufficientStorageEmE20error_and_abort_args) #27
  tail call void @abort() #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not8 = icmp eq ptr %i.b, %i.g                 ; 2 uses
  %spec.select = select i1 %.not8, ptr null, ptr %i.b ; 2 uses
  %i.h = tail call ptr @realloc(ptr noundef %spec.select, i64 noundef %1) #34 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN4node16UncheckedReallocIcEEPT_S2_m.exit.i, label %_ZN4node7ReallocIcEEPT_S2_m.exit, !prof !5

_ZN4node16UncheckedReallocIcEEPT_S2_m.exit.i:     ; preds = %bb.d
  tail call void @_ZN4node21LowMemoryNotificationEv() #27
  %i.j = tail call ptr @realloc(ptr noundef %spec.select, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %_ZN4node7ReallocIcEEPT_S2_m.exit, !prof !204

bb.e:                                             ; preds = %_ZN4node16UncheckedReallocIcEEPT_S2_m.exit.i
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node7ReallocIcEEPT_S2_mE20error_and_abort_args) #27
  tail call void @abort() #28
  unreachable

_ZN4node7ReallocIcEEPT_S2_m.exit:                 ; preds = %bb.d, %_ZN4node16UncheckedReallocIcEEPT_S2_m.exit.i
  %.09.i7.i = phi ptr [ %i.j, %_ZN4node16UncheckedReallocIcEEPT_S2_m.exit.i ], [ %i.h, %bb.d ] ; 2 uses
  store ptr %.09.i7.i, ptr %i.a, align 8
  store i64 %1, ptr %i.d, align 8
  br i1 %.not8, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4node7ReallocIcEEPT_S2_m.exit
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.09.i7.i, ptr nonnull align 8 %i.g, i64 %i.k, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %_ZN4node7ReallocIcEEPT_S2_m.exit, %bb.f, %bb.g, %bb.c
  store i64 %1, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind
declare { i32, i64 } @_ZN7simdutf16base64_to_binaryEPKcmPcNS_14base64_optionsENS_27last_chunk_handling_optionsE(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

declare noundef zeroext i1 @_ZNK2v86String9IsOneByteEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @_ZNK2v86String14WriteOneByteV2EPNS_7IsolateEjjPhi(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef i64 @_ZN7simdutf33maximal_binary_length_from_base64EPKDsm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare { i32, i64 } @_ZN7simdutf16base64_to_binaryEPKDsmPcNS_14base64_optionsENS_27last_chunk_handling_optionsE(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node16MaybeStackBufferIhLm1024EE25AllocateSufficientStorageEm(ptr noundef nonnull align 8 dereferenceable(1048) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node16MaybeStackBufferIhLm1024EE25AllocateSufficientStorageEmE20error_and_abort_args) #27
  tail call void @abort() #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not8 = icmp eq ptr %i.b, %i.g                 ; 2 uses
  %spec.select = select i1 %.not8, ptr null, ptr %i.b ; 2 uses
  %i.h = tail call ptr @realloc(ptr noundef %spec.select, i64 noundef %1) #34 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN4node16UncheckedReallocIhEEPT_S2_m.exit.i, label %_ZN4node7ReallocIhEEPT_S2_m.exit, !prof !5

_ZN4node16UncheckedReallocIhEEPT_S2_m.exit.i:     ; preds = %bb.d
  tail call void @_ZN4node21LowMemoryNotificationEv() #27
  %i.j = tail call ptr @realloc(ptr noundef %spec.select, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %_ZN4node7ReallocIhEEPT_S2_m.exit, !prof !204

bb.e:                                             ; preds = %_ZN4node16UncheckedReallocIhEEPT_S2_m.exit.i
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node7ReallocIhEEPT_S2_mE20error_and_abort_args) #27
  tail call void @abort() #28
  unreachable

_ZN4node7ReallocIhEEPT_S2_m.exit:                 ; preds = %bb.d, %_ZN4node16UncheckedReallocIhEEPT_S2_m.exit.i
  %.09.i7.i = phi ptr [ %i.j, %_ZN4node16UncheckedReallocIhEEPT_S2_m.exit.i ], [ %i.h, %bb.d ] ; 2 uses
  store ptr %.09.i7.i, ptr %i.a, align 8
  store i64 %1, ptr %i.d, align 8
  br i1 %.not8, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4node7ReallocIhEEPT_S2_m.exit
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.09.i7.i, ptr nonnull align 8 %i.g, i64 %i.k, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %_ZN4node7ReallocIhEEPT_S2_m.exit, %bb.f, %bb.g, %bb.c
  store i64 %1, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZN7simdutf25base64_length_from_binaryEmNS_14base64_optionsE(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare noundef i64 @_ZN7simdutf16binary_to_base64EPKcmPcNS_14base64_optionsE(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare noundef i64 @_ZN7simdutf23convert_utf16_to_latin1EPKDsmPc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #14

declare void @_ZN2v811ArrayBuffer12SetDetachKeyENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node6Buffer12_GLOBAL__N_110InitializeEN2v85LocalINS2_6ObjectEEENS3_INS2_5ValueEEENS3_INS2_7ContextEEEPv(ptr %0, ptr nofree readnone captures(none) %1, ptr nonnull %2, ptr nofree readnone captures(none) %3) #0 {
_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i:
  %i.a = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %2) #27 ; 0 uses
  %i.b = load i64, ptr %2, align 8
  %i.c = add i64 %i.b, 47
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8
  %i.f = add i64 %i.e, 271
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  tail call void @_ZN4node21SetMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr %0, i64 4, ptr nonnull @.str.218, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_14AtobERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #27
  tail call void @_ZN4node21SetMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr %0, i64 4, ptr nonnull @.str.219, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_14BtoaERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #27
  tail call void @_ZN4node9SetMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr %0, i64 18, ptr nonnull @.str.220, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_118SetBufferPrototypeERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #27
  tail call void @_ZN4node25SetFastMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEEPKNS0_9CFunctionE(ptr nonnull %2, ptr %0, i64 14, ptr nonnull @.str.221, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_118SlowByteLengthUtf8ERKN2v820FunctionCallbackInfoINS2_5ValueEEE, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_121fast_byte_length_utf8E) #27
  tail call void @_ZN4node13SetFastMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEEPKNS0_9CFunctionE(ptr nonnull %2, ptr %0, i64 4, ptr nonnull @.str.222, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_18SlowCopyERKN2v820FunctionCallbackInfoINS2_5ValueEEE, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_19fast_copyE) #27
  tail call void @_ZN4node25SetFastMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEEPKNS0_9CFunctionE(ptr nonnull %2, ptr %0, i64 7, ptr nonnull @.str.223, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_17CompareERKN2v820FunctionCallbackInfoINS2_5ValueEEE, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_112fast_compareE) #27
  tail call void @_ZN4node21SetMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr %0, i64 13, ptr nonnull @.str.224, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_113CompareOffsetERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #27
  tail call void @_ZN4node9SetMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr %0, i64 4, ptr nonnull @.str.225, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_14FillERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #27
  tail call void @_ZN4node21SetMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr %0, i64 13, ptr nonnull @.str.226, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_113IndexOfBufferERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #27
  tail call void @_ZN4node25SetFastMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEEPKNS0_9CFunctionE(ptr nonnull %2, ptr %0, i64 13, ptr nonnull @.str.227, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_117SlowIndexOfNumberERKN2v820FunctionCallbackInfoINS2_5ValueEEE, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_120fast_index_of_numberE) #27
  tail call void @_ZN4node21SetMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr %0, i64 13, ptr nonnull @.str.228, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_113IndexOfStringERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #27
  tail call void @_ZN4node9SetMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr %0, i64 15, ptr nonnull @.str.229, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_115CopyArrayBufferERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #27
  tail call void @_ZN4node21SetMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr %0, i64 23, ptr nonnull @.str.230, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_123CreateUnsafeArrayBufferERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #27
  tail call void @_ZN4node9SetMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr %0, i64 6, ptr nonnull @.str.231, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_16Swap16ERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #27
  tail call void @_ZN4node9SetMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr %0, i64 6, ptr nonnull @.str.232, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_16Swap32ERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #27
  tail call void @_ZN4node9SetMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr %0, i64 6, ptr nonnull @.str.233, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_16Swap64ERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #27
  tail call void @_ZN4node21SetMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr %0, i64 6, ptr nonnull @.str.234, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_16IsUtf8ERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #27
  tail call void @_ZN4node21SetMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr %0, i64 7, ptr nonnull @.str.235, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_17IsAsciiERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #27
  %i.l = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.k, ptr noundef nonnull @.str.236, i32 noundef 1, i32 noundef 10) #27 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.a, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.a:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #27
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i, %bb.a
  %i.n = tail call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.k, double noundef f0x433FFFFFFFFFFFFF) #27
  %i.o = tail call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2, ptr %i.l, ptr %i.n) #27
  %i.p = trunc i16 %i.o to i1
  br i1 %i.p, label %_ZNK2v85MaybeIbE5CheckEv.exit79, label %bb.b, !prof !28

bb.b:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  tail call void @_ZN2v812api_internal17FromJustIsNothingEv() #27
  br label %_ZNK2v85MaybeIbE5CheckEv.exit79

_ZNK2v85MaybeIbE5CheckEv.exit79:                  ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm11EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.b
  %i.q = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.k, ptr noundef nonnull @.str.237, i32 noundef 1, i32 noundef 16) #27 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.c, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm17EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.c:                                             ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit79
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #27
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm17EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm17EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit79, %bb.c
  %i.s = tail call ptr @_ZN2v87Integer3NewEPNS_7IsolateEi(ptr noundef %i.k, i32 noundef 536870888) #27
  %i.t = tail call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2, ptr %i.q, ptr %i.s) #27
  %i.u = trunc i16 %i.t to i1
  br i1 %i.u, label %_ZNK2v85MaybeIbE5CheckEv.exit, label %bb.d, !prof !28

bb.d:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm17EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  tail call void @_ZN2v812api_internal17FromJustIsNothingEv() #27
  br label %_ZNK2v85MaybeIbE5CheckEv.exit

_ZNK2v85MaybeIbE5CheckEv.exit:                    ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm17EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.d
  tail call void @_ZN4node21SetMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr nonnull %0, i64 10, ptr nonnull @.str.238, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_111StringSliceILNS_8encodingE0EEEvRKN2v820FunctionCallbackInfoINS4_5ValueEEE) #27
  tail call void @_ZN4node21SetMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr nonnull %0, i64 11, ptr nonnull @.str.239, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_111StringSliceILNS_8encodingE2EEEvRKN2v820FunctionCallbackInfoINS4_5ValueEEE) #27
  tail call void @_ZN4node21SetMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr nonnull %0, i64 14, ptr nonnull @.str.240, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_111StringSliceILNS_8encodingE7EEEvRKN2v820FunctionCallbackInfoINS4_5ValueEEE) #27
  tail call void @_ZN4node21SetMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr nonnull %0, i64 11, ptr nonnull @.str.241, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_111StringSliceILNS_8encodingE4EEEvRKN2v820FunctionCallbackInfoINS4_5ValueEEE) #27
  tail call void @_ZN4node21SetMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr nonnull %0, i64 8, ptr nonnull @.str.242, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_111StringSliceILNS_8encodingE5EEEvRKN2v820FunctionCallbackInfoINS4_5ValueEEE) #27
  tail call void @_ZN4node21SetMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr nonnull %0, i64 9, ptr nonnull @.str.243, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_111StringSliceILNS_8encodingE3EEEvRKN2v820FunctionCallbackInfoINS4_5ValueEEE) #27
  tail call void @_ZN4node21SetMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr nonnull %0, i64 9, ptr nonnull @.str.244, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_111StringSliceILNS_8encodingE1EEEvRKN2v820FunctionCallbackInfoINS4_5ValueEEE) #27
  tail call void @_ZN4node9SetMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr nonnull %0, i64 11, ptr nonnull @.str.245, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_111StringWriteILNS_8encodingE2EEEvRKN2v820FunctionCallbackInfoINS4_5ValueEEE) #27
  tail call void @_ZN4node9SetMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr nonnull %0, i64 14, ptr nonnull @.str.246, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_111StringWriteILNS_8encodingE7EEEvRKN2v820FunctionCallbackInfoINS4_5ValueEEE) #27
  tail call void @_ZN4node9SetMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr nonnull %0, i64 8, ptr nonnull @.str.247, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_111StringWriteILNS_8encodingE5EEEvRKN2v820FunctionCallbackInfoINS4_5ValueEEE) #27
  tail call void @_ZN4node9SetMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr nonnull %0, i64 9, ptr nonnull @.str.248, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_111StringWriteILNS_8encodingE3EEEvRKN2v820FunctionCallbackInfoINS4_5ValueEEE) #27
  tail call void @_ZN4node13SetFastMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEEPKNS0_9CFunctionE(ptr nonnull %2, ptr nonnull %0, i64 16, ptr nonnull @.str.249, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_115SlowWriteStringILNS_8encodingE0EEEvRKN2v820FunctionCallbackInfoINS4_5ValueEEE, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_123fast_write_string_asciiE) #27
  tail call void @_ZN4node13SetFastMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEEPKNS0_9CFunctionE(ptr nonnull %2, ptr nonnull %0, i64 17, ptr nonnull @.str.250, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_115SlowWriteStringILNS_8encodingE4EEEvRKN2v820FunctionCallbackInfoINS4_5ValueEEE, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_124fast_write_string_latin1E) #27
  tail call void @_ZN4node13SetFastMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEEPKNS0_9CFunctionE(ptr nonnull %2, ptr nonnull %0, i64 15, ptr nonnull @.str.251, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_115SlowWriteStringILNS_8encodingE1EEEvRKN2v820FunctionCallbackInfoINS4_5ValueEEE, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_122fast_write_string_utf8E) #27
  tail call void @_ZN4node9SetMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr nonnull %2, ptr nonnull %0, i64 12, ptr nonnull @.str.252, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_112SetDetachKeyERKN2v820FunctionCallbackInfoINS2_5ValueEEE) #27
  ret void
}

declare void @_ZN4node21SetMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr, ptr, i64, ptr, ptr noundef) local_unnamed_addr #5

declare void @_ZN4node9SetMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEE(ptr, ptr, i64, ptr, ptr noundef) local_unnamed_addr #5

declare void @_ZN4node25SetFastMethodNoSideEffectEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEEPKNS0_9CFunctionE(ptr, ptr, i64, ptr, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN4node13SetFastMethodEN2v85LocalINS0_7ContextEEENS1_INS0_6ObjectEEESt17basic_string_viewIcSt11char_traitsIcEEPFvRKNS0_20FunctionCallbackInfoINS0_5ValueEEEEPKNS0_9CFunctionE(ptr, ptr, i64, ptr, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE16_M_insert_uniqueIRS4_RKSE_NSG_10_AllocNodeISaINSG_10_Hash_nodeISE_Lb0EEEEEEEES3_INSG_14_Node_iteratorISE_Lb0ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread31

.thread31:                                        ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4                ; 6 uses
  %i.d = sext i32 %i.c to i64                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 5 uses
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %1, align 4                ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.025.0.in = phi ptr [ %i.k, %bb.b ], [ %.sroa.025.0, %bb.d ]
  %.sroa.025.0 = load ptr, ptr %.sroa.025.0.in, align 8 ; 4 uses
  %i.m = icmp eq ptr %.sroa.025.0, null
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.l, %i.o
  br i1 %i.p, label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit, label %bb.c, !llvm.loop !205

bb.e:                                             ; preds = %bb.c
  %i.q = sext i32 %i.l to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = urem i64 %i.q, %i.s
  br label %.critedge

bb.f:                                             ; preds = %.thread31
  %i.u = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp eq i32 %i.c, %i.w
  br i1 %i.x, label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.y = icmp eq i32 %i.c, %i.ab
  br i1 %i.y, label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit, label %.lr.ph.i.i, !llvm.loop !206

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.z, %bb.g ], [ %i.u, %bb.f ]
  %i.z = load ptr, ptr %.020.i.i, align 8         ; 4 uses
  %.not18.i.i = icmp eq ptr %i.z, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = urem i64 %i.ac, %i.f
  %.not19.i.i = icmp eq i64 %i.ad, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !206

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !206

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread31
  %i.ae = phi i64 [ %i.t, %bb.e ], [ %i.g, %.thread31 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.af = phi ptr [ %i.r, %bb.e ], [ %i.e, %.thread31 ], [ %i.e, %..loopexit_crit_edge21.i.i ], [ %i.e, %.lr.ph.i.i ] ; 3 uses
  %i.ag = phi i64 [ %i.q, %bb.e ], [ %i.d, %.thread31 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.ah = phi i32 [ %i.l, %bb.e ], [ %i.c, %.thread31 ], [ %i.c, %..loopexit_crit_edge21.i.i ], [ %i.c, %.lr.ph.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 9 uses
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 %i.ah, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i64, ptr %i.af, align 8
  %i.ao = load i64, ptr %i.a, align 8
  %i.ap = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 noundef %i.an, i64 noundef %i.ao, i64 noundef 1) #27 ; 2 uses
  %i.aq = extractvalue { i8, i64 } %i.ap, 0
  %i.ar = trunc i8 %i.aq to i1
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.as = extractvalue { i8, i64 } %i.ap, 1
  tail call void @_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.as)
  %i.at = load i64, ptr %i.af, align 8
  %i.au = urem i64 %i.ag, %i.at
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge
  %.0.i17 = phi i64 [ %i.au, %bb.i ], [ %i.ae, %.critedge ] ; 2 uses
  %i.av = load ptr, ptr %0, align 8               ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.0.i17 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.ax, align 8
  store ptr %i.ay, ptr %i.aj, align 8
  %i.az = load ptr, ptr %i.aw, align 8
  store ptr %i.aj, ptr %i.az, align 8
  br label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSG_10_Hash_nodeISE_Lb0EEEm.exit

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  store ptr %i.bb, ptr %i.aj, align 8
  store ptr %i.aj, ptr %i.ba, align 8
  %.not11.i.i = icmp eq ptr %i.bb, null
  br i1 %.not11.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.af, align 8
  %i.be = load i32, ptr %i.bc, align 4
  %i.bf = sext i32 %i.be to i64
  %i.bg = urem i64 %i.bf, %i.bd
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bg
  store ptr %i.aj, ptr %i.bh, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bi = phi ptr [ %.pre, %bb.m ], [ %i.av, %bb.l ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.0.i17
  store ptr %i.ba, ptr %i.bj, align 8
  br label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSG_10_Hash_nodeISE_Lb0EEEm.exit

_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSG_10_Hash_nodeISE_Lb0EEEm.exit: ; preds = %bb.k, %bb.n
  %i.bk = load i64, ptr %i.a, align 8
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.a, align 8
  br label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.g, %bb.d, %bb.f, %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSG_10_Hash_nodeISE_Lb0EEEm.exit
  %.sroa.028.1 = phi ptr [ %i.aj, %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSG_10_Hash_nodeISE_Lb0EEEm.exit ], [ %.sroa.025.0, %bb.d ], [ %i.u, %bb.f ], [ %i.z, %bb.g ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSG_10_Hash_nodeISE_Lb0EEEm.exit ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.028.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #29 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4node8builtins17BuiltinSourceTypeESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = sext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8
  store ptr %i.p, ptr %.031, align 8
  store ptr %.031, ptr %i.g, align 8
  store ptr %i.g, ptr %i.n, align 8
  %i.q = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.r, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8
  store ptr %i.s, ptr %.031, align 8
  %i.t = load ptr, ptr %i.n, align 8
  store ptr %.031, ptr %i.t, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !207

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #30
  br label %_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4node8builtins17BuiltinSourceTypeESt4pairIKS2_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEESaISE_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN2v812BackingStoreESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN2v812BackingStoreESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit: ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 13 uses
  store ptr null, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store i32 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 1, ptr %i.g, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.c, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, %i.i
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20, label %bb.b

bb.b:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN2v812BackingStoreESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit
  %i.j = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.f, align 8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.i.pre = load ptr, ptr %i.b, align 8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c, %bb.d
  %.pr.i = phi ptr [ %.pr.i.pre, %bb.d ], [ %i.i, %bb.c ] ; 8 uses
  %.not8.i = icmp eq ptr %.pr.i, null
  br i1 %.not8.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.pr.i, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.pr.i, i64 12
  store i32 0, ptr %i.p, align 4
  %i.q = load ptr, ptr %.pr.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i) #27, !inline_history !208
  %i.t = load ptr, ptr %.pr.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i) #27, !inline_history !208
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.w = load i8, ptr @__libc_single_threaded, align 1
  %.not.i9.i = icmp eq i8 %i.w, 0
  br i1 %.not.i9.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.o, %bb.h ], [ %i.y, %bb.i ]
  %i.z = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.z, label %bb.j, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, !prof !5

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.i) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.j
  store ptr %i.e, ptr %i.b, align 8
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20: ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit, %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN2v812BackingStoreESt14default_deleteIS5_EEEOSt10unique_ptrIT_T0_E.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20
  store i32 0, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.ae, align 4
  %i.af = load ptr, ptr %i.e, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !209
  %i.ai = load ptr, ptr %i.e, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !209
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEaSERKS2_.exit.thread20
  %i.al = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i6 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

bb.n:                                             ; preds = %bb.l
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7: ; preds = %bb.n, %bb.m
  %.0.i.i.i8 = phi i32 [ %i.ad, %bb.m ], [ %i.an, %bb.n ]
  %i.ao = icmp eq i32 %.0.i.i.i8, 1
  br i1 %i.ao, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7, %bb.o
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v812BackingStoreD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.b) #27
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #27
  br label %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit

_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt19_Sp_counted_deleterIPN2v812BackingStoreESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

declare noundef ptr @_ZN2v824EscapableHandleScopeBase10EscapeSlotEPm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_S9_S5_S5_S5_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(30) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::CTypeInfo", align 2     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store i16 4, ptr %1, align 2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @_ZN2v813CFunctionInfoC2ERKNS_9CTypeInfoEjPS2_NS0_19Int64RepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, i32 noundef 7, ptr noundef nonnull %i.a, i8 noundef zeroext 0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  store <4 x i16> <i16 10, i16 10, i16 10, i16 4>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 4, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 4, ptr %i.c, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 255, ptr %i.d, align 4
  ret void
}

declare void @_ZN2v89CFunctionC1EPKvPKNS_13CFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZN2v813CFunctionInfoC2ERKNS_9CTypeInfoEjPS2_NS0_19Int64RepresentationE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(2), i32 noundef, ptr noundef, i8 noundef zeroext) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(22) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::CTypeInfo", align 2     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store i16 4, ptr %1, align 2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @_ZN2v813CFunctionInfoC2ERKNS_9CTypeInfoEjPS2_NS0_19Int64RepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, i32 noundef 3, ptr noundef nonnull %i.a, i8 noundef zeroext 0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  store i16 10, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 10, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 255, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIiJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_S9_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::CTypeInfo", align 2     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store i16 3, ptr %1, align 2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @_ZN2v813CFunctionInfoC2ERKNS_9CTypeInfoEjPS2_NS0_19Int64RepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, i32 noundef 4, ptr noundef nonnull %i.a, i8 noundef zeroext 0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  store <4 x i16> <i16 10, i16 10, i16 10, i16 255>, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIiJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_NS4_IjJEEENS4_IlJEEENS4_IbJEEENS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::CTypeInfo", align 2     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store i16 3, ptr %1, align 2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @_ZN2v813CFunctionInfoC2ERKNS_9CTypeInfoEjPS2_NS0_19Int64RepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, i32 noundef 6, ptr noundef nonnull %i.a, i8 noundef zeroext 0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  store <4 x i16> <i16 10, i16 10, i16 4, i16 5>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 255, ptr %i.c, align 2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_NS4_IRKNS_17FastOneByteStringEJEEES5_S5_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::CTypeInfo", align 2     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store i16 4, ptr %1, align 2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @_ZN2v813CFunctionInfoC2ERKNS_9CTypeInfoEjPS2_NS0_19Int64RepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, i32 noundef 6, ptr noundef nonnull %i.a, i8 noundef zeroext 0) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  store <4 x i16> <i16 10, i16 10, i16 11, i16 4>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 4, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 255, ptr %i.c, align 2
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZN7simdutf27convert_latin1_to_utf8_safeEPKcmPcm(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #14

declare ptr @_ZN4node11StringBytes6EncodeEPN2v87IsolateEPKcmNS_8encodingE(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node30THROW_ERR_BUFFER_OUT_OF_BOUNDSIJEEEvPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call ptr @_ZN4node24ERR_BUFFER_OUT_OF_BOUNDSIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.b, i64 %1, ptr %2)
  %i.d = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr %i.c) #27 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZN4node24ERR_BUFFER_OUT_OF_BOUNDSIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %2, i64 noundef %1) ; 0 uses
  %i.d = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %0, ptr noundef nonnull @.str.267, i32 noundef 1, i32 noundef 24) #27 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm25EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #27
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm25EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm25EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %bb.a, %bb.b
  %i.f = load ptr, ptr %3, align 8
  %i.g = load i64, ptr %i.b, align 8
  %i.h = trunc i64 %i.g to i32
  %i.i = call ptr @_ZN2v86String11NewFromUtf8EPNS_7IsolateEPKcNS_13NewStringTypeEi(ptr noundef %0, ptr noundef %i.f, i32 noundef 0, i32 noundef %i.h) #27 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit, !prof !5

bb.c:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm25EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #27
  br label %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit

_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm25EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.c
  %i.k = call ptr @_ZN2v89Exception10RangeErrorENS_5LocalINS_6StringEEENS1_INS_5ValueEEE(ptr %i.i, ptr null) #27
  %i.l = call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  %i.m = call ptr @_ZNK2v85Value8ToObjectENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr %i.l) #27 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit, !prof !5

bb.d:                                             ; preds = %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #27
  br label %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit

_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit: ; preds = %_ZN2v810MaybeLocalINS_6StringEE14ToLocalCheckedEv.exit, %bb.d
  %i.o = call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #27
  %i.p = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef nonnull %0, ptr noundef nonnull @.str.49, i32 noundef 1, i32 noundef 4) #27 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.e:                                             ; preds = %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #27
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %_ZN2v810MaybeLocalINS_6ObjectEE14ToLocalCheckedEv.exit, %bb.e
  %i.r = call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr %i.o, ptr %i.p, ptr %i.d) #27
  %i.s = trunc i16 %i.r to i1
  br i1 %i.s, label %_ZNK2v85MaybeIbE5CheckEv.exit, label %bb.f, !prof !28

bb.f:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #27
  br label %_ZNK2v85MaybeIbE5CheckEv.exit

_ZNK2v85MaybeIbE5CheckEv.exit:                    ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm5EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, %bb.f
  %i.t = load ptr, ptr %3, align 8                ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit
  %i.v = load i64, ptr %i.a, align 8
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret ptr %i.m
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_node_buffer.cc() #3 section ".text.startup" {
bb.a:
  %0 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  %1 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  %2 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  %3 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  %4 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  %5 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  %6 = alloca %"class.v8::CFunction", align 16    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.a = load atomic i8, ptr @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_S3_S3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %__cxx_global_var_init.30.exit, !prof !210

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_S3_S3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %__cxx_global_var_init.30.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_S9_S5_S5_S5_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(30) @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_S3_S3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_S3_S3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  br label %__cxx_global_var_init.30.exit

__cxx_global_var_init.30.exit:                    ; preds = %bb.a, %bb.b, %bb.c
  call void @_ZN2v89CFunctionC1EPKvPKNS_13CFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_18FastCopyEN2v85LocalINS2_5ValueEEES5_S5_jjjRNS2_22FastApiCallbackOptionsE, ptr noundef nonnull @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_S3_S3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %i.d = load <2 x ptr>, ptr %6, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x ptr> %i.d, ptr @_ZN4node6Buffer12_GLOBAL__N_19fast_copyE, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.e = load atomic i8, ptr @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %__cxx_global_var_init.31.exit, !prof !210

bb.d:                                             ; preds = %__cxx_global_var_init.30.exit
  %i.g = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %.not.i.i.i4 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i4, label %__cxx_global_var_init.31.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(22) @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance)
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  br label %__cxx_global_var_init.31.exit

__cxx_global_var_init.31.exit:                    ; preds = %__cxx_global_var_init.30.exit, %bb.d, %bb.e
  call void @_ZN2v89CFunctionC1EPKvPKNS_13CFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_118FastByteLengthUtf8EN2v85LocalINS2_5ValueEEES5_RNS2_22FastApiCallbackOptionsE, ptr noundef nonnull @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %i.h = load <2 x ptr>, ptr %5, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store <2 x ptr> %i.h, ptr @_ZN4node6Buffer12_GLOBAL__N_121fast_byte_length_utf8E, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.i = load atomic i8, ptr @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %__cxx_global_var_init.32.exit, !prof !210

bb.f:                                             ; preds = %__cxx_global_var_init.31.exit
  %i.k = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %.not.i.i.i8 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i8, label %__cxx_global_var_init.32.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIiJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_S9_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance)
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  br label %__cxx_global_var_init.32.exit

__cxx_global_var_init.32.exit:                    ; preds = %__cxx_global_var_init.31.exit, %bb.f, %bb.g
  call void @_ZN2v89CFunctionC1EPKvPKNS_13CFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_111FastCompareEN2v85LocalINS2_5ValueEEES5_S5_RNS2_22FastApiCallbackOptionsE, ptr noundef nonnull @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_S7_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %i.l = load <2 x ptr>, ptr %4, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store <2 x ptr> %i.l, ptr @_ZN4node6Buffer12_GLOBAL__N_112fast_compareE, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.m = load atomic i8, ptr @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IjJEEENS2_IlJEEENS2_IbJEEENS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %__cxx_global_var_init.33.exit, !prof !210

bb.h:                                             ; preds = %__cxx_global_var_init.32.exit
  %i.o = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IjJEEENS2_IlJEEENS2_IbJEEENS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %__cxx_global_var_init.33.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIiJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_NS4_IjJEEENS4_IlJEEENS4_IbJEEENS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(28) @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IjJEEENS2_IlJEEENS2_IbJEEENS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance)
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IjJEEENS2_IlJEEENS2_IbJEEENS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  br label %__cxx_global_var_init.33.exit

__cxx_global_var_init.33.exit:                    ; preds = %__cxx_global_var_init.32.exit, %bb.h, %bb.i
  call void @_ZN2v89CFunctionC1EPKvPKNS_13CFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_117FastIndexOfNumberEN2v85LocalINS2_5ValueEEES5_jlbRNS2_22FastApiCallbackOptionsE, ptr noundef nonnull @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIiJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IjJEEENS2_IlJEEENS2_IbJEEENS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %i.p = load <2 x ptr>, ptr %3, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store <2 x ptr> %i.p, ptr @_ZN4node6Buffer12_GLOBAL__N_120fast_index_of_numberE, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.q = load atomic i8, ptr @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %__cxx_global_var_init.34.exit, !prof !210

bb.j:                                             ; preds = %__cxx_global_var_init.33.exit
  %i.s = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %.not.i.i.i16 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i16, label %__cxx_global_var_init.34.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_NS4_IRKNS_17FastOneByteStringEJEEES5_S5_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(28) @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance)
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  br label %__cxx_global_var_init.34.exit

__cxx_global_var_init.34.exit:                    ; preds = %__cxx_global_var_init.33.exit, %bb.j, %bb.k
  call void @_ZN2v89CFunctionC1EPKvPKNS_13CFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_115FastWriteStringILNS_8encodingE0EEEjN2v85LocalINS4_5ValueEEES7_RKNS4_17FastOneByteStringEjjRNS4_22FastApiCallbackOptionsE, ptr noundef nonnull @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %i.t = load <2 x ptr>, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store <2 x ptr> %i.t, ptr @_ZN4node6Buffer12_GLOBAL__N_123fast_write_string_asciiE, align 16
  %i.u = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4node6Buffer12_GLOBAL__N_123fast_write_string_asciiE) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.v = load atomic i8, ptr @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance acquire, align 8
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.l, label %__cxx_global_var_init.35.exit, !prof !210

bb.l:                                             ; preds = %__cxx_global_var_init.34.exit
  %i.x = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %.not.i.i.i20 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i20, label %__cxx_global_var_init.35.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_NS4_IRKNS_17FastOneByteStringEJEEES5_S5_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(28) @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance)
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  br label %__cxx_global_var_init.35.exit

__cxx_global_var_init.35.exit:                    ; preds = %__cxx_global_var_init.34.exit, %bb.l, %bb.m
  call void @_ZN2v89CFunctionC1EPKvPKNS_13CFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_115FastWriteStringILNS_8encodingE4EEEjN2v85LocalINS4_5ValueEEES7_RKNS4_17FastOneByteStringEjjRNS4_22FastApiCallbackOptionsE, ptr noundef nonnull @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %i.y = load <2 x ptr>, ptr %1, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store <2 x ptr> %i.y, ptr @_ZN4node6Buffer12_GLOBAL__N_124fast_write_string_latin1E, align 16
  %i.z = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4node6Buffer12_GLOBAL__N_124fast_write_string_latin1E) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  %i.aa = load atomic i8, ptr @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.n, label %__cxx_global_var_init.36.exit, !prof !210

bb.n:                                             ; preds = %__cxx_global_var_init.35.exit
  %i.ac = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %.not.i.i.i24 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i24, label %__cxx_global_var_init.36.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN2v88internal17CFunctionInfoImplILNS_13CFunctionInfo19Int64RepresentationE0ENS_16CTypeInfoBuilderIjJEEEJNS4_INS_5LocalINS_5ValueEEEJEEES9_NS4_IRKNS_17FastOneByteStringEJEEES5_S5_NS4_IRNS_22FastApiCallbackOptionsEJEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(28) @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance)
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  br label %__cxx_global_var_init.36.exit

__cxx_global_var_init.36.exit:                    ; preds = %__cxx_global_var_init.35.exit, %bb.n, %bb.o
  call void @_ZN2v89CFunctionC1EPKvPKNS_13CFunctionInfoE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @_ZN4node6Buffer12_GLOBAL__N_115FastWriteStringILNS_8encodingE1EEEjN2v85LocalINS4_5ValueEEES7_RKNS4_17FastOneByteStringEjjRNS4_22FastApiCallbackOptionsE, ptr noundef nonnull @_ZZN2v88internal28CFunctionBuilderWithFunctionINS_16CTypeInfoBuilderIjJEEEJNS2_INS_5LocalINS_5ValueEEEJEEES7_NS2_IRKNS_17FastOneByteStringEJEEES3_S3_NS2_IRNS_22FastApiCallbackOptionsEJEEEEE5BuildILNS_13CFunctionInfo19Int64RepresentationE0EEEDavE8instance) #27
  %i.ad = load <2 x ptr>, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  store <2 x ptr> %i.ad, ptr @_ZN4node6Buffer12_GLOBAL__N_122fast_write_string_utf8E, align 16
  %i.ae = call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4node6Buffer12_GLOBAL__N_122fast_write_string_utf8E) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #23

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { inlinehint mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin nounwind allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { "function-inline-cost-multiplier"="2" }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { cold nounwind }
attributes #34 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN8simdjson8internal18structure_analyzer7analyzeERKNS_3dom7elementERKNS_22fractured_json_optionsE: argument 0"}
!8 = distinct !{!8, !"_ZN8simdjson8internal18structure_analyzer7analyzeERKNS_3dom7elementERKNS_22fractured_json_optionsE"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZN8simdjson8internal18structure_analyzer15analyze_elementERKNS_3dom7elementEm: argument 0"}
!11 = distinct !{!11, !"_ZN8simdjson8internal18structure_analyzer15analyze_elementERKNS_3dom7elementEm"}
!12 = !{!10, !7}
!13 = !{ptr @_ZN8simdjson8internal18structure_analyzer15analyze_elementERKNS_3dom7elementEm}
!14 = distinct !{null, null, null}
!15 = distinct !{null, null}
!16 = distinct !{null}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN8simdjson8internal18structure_analyzer13analyze_arrayERKNS_3dom5arrayERKNS_22fractured_json_optionsE: argument 0"}
!21 = distinct !{!21, !"_ZN8simdjson8internal18structure_analyzer13analyze_arrayERKNS_3dom5arrayERKNS_22fractured_json_optionsE"}
!22 = distinct !{null}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZN8simdjson8internal18structure_analyzer14analyze_objectERKNS_3dom6objectERKNS_22fractured_json_optionsE: argument 0"}
!25 = distinct !{!25, !"_ZN8simdjson8internal18structure_analyzer14analyze_objectERKNS_3dom6objectERKNS_22fractured_json_optionsE"}
!26 = !{i8 0, i8 2}
!27 = distinct !{null}
!28 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!29 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!30 = distinct !{null, null, null}
!31 = !{!"branch_weights", i32 4001, i32 1}
!32 = distinct !{null, null, null, null}
!33 = !{!"branch_weights", i32 2146410443, i32 1073205}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18, !36, !37}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18, !37, !36}
!40 = distinct !{!40, !18}
!41 = !{}
!42 = distinct !{null}
!43 = !{!"branch_weights", i32 4000000, i32 4001}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZNK8simdjson3dom6object8iteratordeEv: argument 0"}
!46 = distinct !{!46, !"_ZNK8simdjson3dom6object8iteratordeEv"}
!47 = distinct !{!47, !36, !37}
!48 = distinct !{!48, !37, !36}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNK8simdjson3dom7element10get_stringEv: argument 0"}
!51 = distinct !{!51, !"_ZNK8simdjson3dom7element10get_stringEv"}
!52 = distinct !{!52, !36, !37}
!53 = distinct !{!53, !37, !36}
!54 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!55 = distinct !{!55, !18}
!56 = distinct !{!56, !18}
!57 = !{!"branch_weights", i32 1, i32 8000, i32 2, i32 1}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZNK8simdjson3dom7element10get_objectEv: argument 0"}
!60 = distinct !{!60, !"_ZNK8simdjson3dom7element10get_objectEv"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZNK8simdjson3dom6object8iteratordeEv: argument 0"}
!63 = distinct !{!63, !"_ZNK8simdjson3dom6object8iteratordeEv"}
!64 = distinct !{!64, !18}
!65 = distinct !{!65, !18}
!66 = distinct !{!66, !18}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZSt19__relocate_object_aIN8simdjson8internal15element_metricsES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!69 = distinct !{!69, !"_ZSt19__relocate_object_aIN8simdjson8internal15element_metricsES2_SaIS2_EEvPT_PT0_RT1_"}
!70 = !{!71}
!71 = distinct !{!71, !69, !"_ZSt19__relocate_object_aIN8simdjson8internal15element_metricsES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!72 = !{!68, !71}
!73 = distinct !{!73, !18}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZSt19__relocate_object_aIN8simdjson8internal15element_metricsES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!76 = distinct !{!76, !"_ZSt19__relocate_object_aIN8simdjson8internal15element_metricsES2_SaIS2_EEvPT_PT0_RT1_"}
!77 = !{!78}
!78 = distinct !{!78, !76, !"_ZSt19__relocate_object_aIN8simdjson8internal15element_metricsES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!79 = !{!75, !78}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNK8simdjson3dom6object8iteratordeEv: argument 0"}
!82 = distinct !{!82, !"_ZNK8simdjson3dom6object8iteratordeEv"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZNK8simdjson3dom6object8iteratordeEv: argument 0"}
!85 = distinct !{!85, !"_ZNK8simdjson3dom6object8iteratordeEv"}
!86 = distinct !{!86, !18}
!87 = distinct !{!87, !18}
!88 = distinct !{!88, !18}
!89 = distinct !{!89, !18}
!90 = distinct !{!90, !18}
!91 = distinct !{!91, !18}
!92 = distinct !{!92, !18}
!93 = distinct !{!93, !18}
!94 = distinct !{!94, !18}
!95 = distinct !{!95, !18}
!96 = distinct !{!96, !18}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZNK8simdjson3dom7element10get_stringEv: argument 0"}
!99 = distinct !{!99, !"_ZNK8simdjson3dom7element10get_stringEv"}
!100 = distinct !{!100, !18}
!101 = distinct !{!101, !18}
!102 = distinct !{!102, !18}
!103 = distinct !{!103, !18}
!104 = distinct !{!104, !18}
!105 = distinct !{null}
!106 = distinct !{null, null, null, null, null, null}
!107 = distinct !{!107, !18}
!108 = distinct !{!108, !18}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZNK8simdjson3dom7element10get_objectEv: argument 0"}
!111 = distinct !{!111, !"_ZNK8simdjson3dom7element10get_objectEv"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZNK8simdjson3dom6object8iteratordeEv: argument 0"}
!114 = distinct !{!114, !"_ZNK8simdjson3dom6object8iteratordeEv"}
!115 = distinct !{!115, !18}
!116 = distinct !{!116, !18}
!117 = distinct !{!117, !18}
!118 = distinct !{null, null, null, null, null, null}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZNK8simdjson3dom7element10get_objectEv: argument 0"}
!121 = distinct !{!121, !"_ZNK8simdjson3dom7element10get_objectEv"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZNK8simdjson3dom6object8iteratordeEv: argument 0"}
!124 = distinct !{!124, !"_ZNK8simdjson3dom6object8iteratordeEv"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZNK8simdjson3dom7element10get_stringEv: argument 0"}
!127 = distinct !{!127, !"_ZNK8simdjson3dom7element10get_stringEv"}
!128 = distinct !{!128, !36, !37}
!129 = distinct !{!129, !37, !36}
!130 = distinct !{!130, !18}
!131 = distinct !{!131, !18}
!132 = distinct !{!132, !18}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZNK8simdjson3dom7element10get_stringEv: argument 0"}
!135 = distinct !{!135, !"_ZNK8simdjson3dom7element10get_stringEv"}
!136 = distinct !{!136, !36, !37}
!137 = distinct !{!137, !37, !36}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZNK8simdjson3dom6object8iteratordeEv: argument 0"}
!140 = distinct !{!140, !"_ZNK8simdjson3dom6object8iteratordeEv"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZNK8simdjson3dom6object8iteratordeEv: argument 0"}
!143 = distinct !{!143, !"_ZNK8simdjson3dom6object8iteratordeEv"}
!144 = distinct !{null, null, null, null, null}
!145 = distinct !{null, null, null, null}
!146 = distinct !{null, null}
!147 = distinct !{!147, !18}
!148 = distinct !{!148, !18}
!149 = distinct !{null}
!150 = !{!151, !153}
!151 = distinct !{!151, !152, !"_ZSt11make_uniqueIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE12CallbackImplIZNS0_6Buffer12_GLOBAL__N_112CallbackInfo18OnBackingStoreFreeEvEUlS3_E_EEJS9_RNS0_13CallbackFlags5FlagsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!152 = distinct !{!152, !"_ZSt11make_uniqueIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE12CallbackImplIZNS0_6Buffer12_GLOBAL__N_112CallbackInfo18OnBackingStoreFreeEvEUlS3_E_EEJS9_RNS0_13CallbackFlags5FlagsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!153 = distinct !{!153, !154, !"_ZN4node13CallbackQueueIvJPNS_11EnvironmentEEE14CreateCallbackIZNS_6Buffer12_GLOBAL__N_112CallbackInfo18OnBackingStoreFreeEvEUlS2_E_EESt10unique_ptrINS3_8CallbackESt14default_deleteISA_EEOT_NS_13CallbackFlags5FlagsE: argument 0"}
!154 = distinct !{!154, !"_ZN4node13CallbackQueueIvJPNS_11EnvironmentEEE14CreateCallbackIZNS_6Buffer12_GLOBAL__N_112CallbackInfo18OnBackingStoreFreeEvEUlS2_E_EESt10unique_ptrINS3_8CallbackESt14default_deleteISA_EEOT_NS_13CallbackFlags5FlagsE"}
!155 = distinct !{null, null}
!156 = distinct !{null, null}
!157 = !{ptr @_ZN4node6Buffer12_GLOBAL__N_112CallbackInfoD2Ev}
!158 = distinct !{null}
!159 = distinct !{null, null, null}
!160 = distinct !{ptr @_ZN4node13CallbackQueueIvJPNS_11EnvironmentEEE8CallbackD2Ev, null, null}
!161 = distinct !{ptr @_ZN4node13CallbackQueueIvJPNS_11EnvironmentEEE12CallbackImplIZNS_6Buffer12_GLOBAL__N_112CallbackInfo18OnBackingStoreFreeEvEUlS2_E_ED2Ev, null, null, null}
!162 = distinct !{ptr @_ZN4node13CallbackQueueIvJPNS_11EnvironmentEEE12CallbackImplIZNS_6Buffer12_GLOBAL__N_112CallbackInfo18OnBackingStoreFreeEvEUlS2_E_ED2Ev, ptr @_ZN4node13CallbackQueueIvJPNS_11EnvironmentEEE8CallbackD2Ev, null, null}
!163 = distinct !{null, null}
!164 = distinct !{null, null}
!165 = !{!"branch_weights", i32 4001, i32 4000000}
!166 = distinct !{!166, !18}
!167 = distinct !{!167, !18}
!168 = distinct !{!168, !18}
!169 = distinct !{!169, !18}
!170 = distinct !{!170, !18}
!171 = distinct !{!171, !18}
!172 = distinct !{!172, !18}
!173 = distinct !{!173, !174}
!174 = !{!"llvm.loop.unroll.disable"}
!175 = distinct !{!175, !174}
!176 = distinct !{!176, !18}
!177 = distinct !{!177, !18}
!178 = distinct !{!178, !18}
!179 = distinct !{!179, !18}
!180 = distinct !{!180, !18, !36, !37}
!181 = distinct !{!181, !18, !37, !36}
!182 = distinct !{!182, !18}
!183 = distinct !{!183, !18}
!184 = distinct !{!184, !18}
!185 = distinct !{!185, !18}
!186 = distinct !{!186, !18}
!187 = distinct !{!187, !18}
!188 = distinct !{!188, !18}
!189 = distinct !{!189, !18}
!190 = distinct !{!190, !18}
!191 = distinct !{!191, !18}
!192 = distinct !{!192, !174}
!193 = distinct !{!193, !174}
!194 = distinct !{!194, !18}
!195 = distinct !{!195, !18}
!196 = distinct !{!196, !18}
!197 = distinct !{!197, !18}
!198 = distinct !{!198, !18, !36, !37}
!199 = distinct !{!199, !18, !37, !36}
!200 = distinct !{!200, !18}
!201 = distinct !{!201, !18}
!202 = distinct !{!202, !18}
!203 = distinct !{!203, !18}
!204 = !{!"branch_weights", i32 1717988519, i32 429495129}
!205 = distinct !{!205, !18}
!206 = distinct !{!206, !18}
!207 = distinct !{!207, !18}
!208 = distinct !{null, null}
!209 = distinct !{null, null}
!210 = !{!"branch_weights", i32 1, i32 1048575}
end_hunk_0
