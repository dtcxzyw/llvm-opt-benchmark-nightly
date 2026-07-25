inline.NumInlined: 1254
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 170
begin_hunk_0_@ZSTD_count_2segments:bb.a
  %i.bp = add i64 %.3.i30, %.3.i
  br label %bb.y

bb.y:                                             ; preds = %ZSTD_count.exit, %ZSTD_count.exit49
  %.0 = phi i64 [ %i.bp, %ZSTD_count.exit49 ], [ %.3.i, %ZSTD_count.exit ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 3, 0) i64 @ZSTD_HcFindBestMatch_noDict_4(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32   ; 2 uses
  %i.f = shl nuw i32 1, %i.e                      ; 2 uses
  %i.g = add i32 %i.f, -1                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7    ; 8 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = trunc i64 %i.l to i32                    ; 6 uses
  %i.n = load i32, ptr %i.a, align 8, !tbaa !179
  %i.o = shl nuw i32 1, %i.n                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !148  ; 2 uses
  %i.r = sub i32 %i.m, %i.q
  %i.s = icmp ugt i32 %i.r, %i.o
  %i.t = sub i32 %i.m, %i.o
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !40
  %.not.i = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not.i, i1 %i.s, i1 false
  %i.x = select i1 %i.w, i32 %i.t, i32 %i.q       ; 4 uses
  %i.y = tail call i32 @llvm.usub.sat.i32(i32 %i.m, i32 %i.f) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !180
  %i.ab = shl nuw i32 1, %i.aa                    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !31
  %notmask.i.i = shl nsw i32 -1, %i.e
  %i.ai = xor i32 %notmask.i.i, -1                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !20 ; 6 uses
  %i.al = sub i32 32, %i.ah                       ; 5 uses
  %.fr61 = freeze i32 %i.ad
  %.not.i.i = icmp eq i32 %.fr61, 0
  %i.am = icmp ult i32 %i.ak, %i.m                ; 2 uses
  br i1 %.not.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %i.am, label %.lr.ph.preheader, label %.split16.us

.lr.ph.preheader:                                 ; preds = %.split.us
  %i.an = zext i32 %i.ak to i64                   ; 6 uses
  %i.ao = and i64 %i.l, 4294967295                ; 2 uses
  %i.ap = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.aq = sub i64 %i.l, %i.an
  %.neg = add nuw nsw i64 %i.an, 1
  %xtraiter = and i64 %i.aq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.an
  %.val5.us.prol = load i32, ptr %i.ar, align 1, !tbaa !3
  %i.as = mul i32 %.val5.us.prol, -1640531535
  %i.at = lshr i32 %i.as, %i.al
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = and i64 %i.an, %i.ap
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ax
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !3
  store i32 %i.ak, ptr %i.av, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %i.an, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.an, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.az = icmp eq i64 %i.ao, %.neg
  br i1 %i.az, label %.split16.us, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %.val5.us = load i32, ptr %i.ba, align 1, !tbaa !3
  %i.bb = mul i32 %.val5.us, -1640531535
  %i.bc = lshr i32 %i.bb, %i.al
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = trunc nuw i64 %indvars.iv to i32
  %i.bh = and i64 %indvars.iv, %i.ap
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bh
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !3
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next
  %.val5.us.1 = load i32, ptr %i.bj, align 1, !tbaa !3
  %i.bk = mul i32 %.val5.us.1, -1640531535
  %i.bl = lshr i32 %i.bk, %i.al
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = trunc nuw i64 %indvars.iv.next to i32
  %i.bq = and i64 %indvars.iv.next, %i.ap
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bq
  store i32 %i.bo, ptr %i.br, align 4, !tbaa !3
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bs = icmp samesign ult i64 %indvars.iv.next.1, %i.ao
  br i1 %i.bs, label %.lr.ph, label %.split16.us

.split:                                           ; preds = %bb.a
  br i1 %i.am, label %bb.b, label %.split16.us

bb.b:                                             ; preds = %.split
  %i.bt = zext i32 %i.ak to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bt
  %.val5 = load i32, ptr %i.bu, align 1, !tbaa !3
  %i.bv = mul i32 %.val5, -1640531535
  %i.bw = lshr i32 %i.bv, %i.al
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = and i32 %i.ak, %i.ai
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cb
  store i32 %i.bz, ptr %i.cc, align 4, !tbaa !3
  store i32 %i.ak, ptr %i.by, align 4, !tbaa !3
  br label %.split16.us

.split16.us:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.split, %bb.b, %.split.us
  store i32 %i.m, ptr %i.aj, align 4, !tbaa !20
  %.val6 = load i32, ptr %1, align 1              ; 2 uses
  %i.cd = mul i32 %.val6, -1640531535
  %i.ce = lshr i32 %i.cd, %i.al
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.cf
  %.0148.i18 = load i32, ptr %i.cg, align 4, !tbaa !3 ; 4 uses
  %.not = icmp ult i32 %.0148.i18, %i.x
  %i.ch = trunc i32 %.val6 to i16
  br i1 %.not, label %ZSTD_HcFindBestMatch.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %.split16.us
  %i.ci = getelementptr i8, ptr %2, i64 -7        ; 2 uses
  %i.cj = icmp ult ptr %1, %i.ci
  %i.ck = getelementptr i8, ptr %2, i64 -3        ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %2, i64 -1 ; 3 uses
  %i.cm = add i32 %i.m, 3                         ; 3 uses
  br i1 %i.cj, label %.lr.ph22.split.us, label %.lr.ph22.split

.lr.ph22.split.us:                                ; preds = %.lr.ph22, %bb.n
  %.0148.i21.us = phi i32 [ %.0148.i.us, %bb.n ], [ %.0148.i18, %.lr.ph22 ] ; 4 uses
  %.0.i20.us = phi i32 [ %i.dz, %bb.n ], [ %i.ab, %.lr.ph22 ]
  %.0146.i19.us = phi i64 [ %.1147.i.us, %bb.n ], [ 3, %.lr.ph22 ] ; 5 uses
  %i.cn = zext i32 %.0148.i21.us to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cn ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.0146.i19.us
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -3
  %.val4.us = load i32, ptr %i.cq, align 1, !tbaa !3
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %.0146.i19.us
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -3
  %.val.us = load i32, ptr %i.cs, align 1, !tbaa !3
  %i.ct = icmp eq i32 %.val4.us, %.val.us
  br i1 %i.ct, label %bb.c, label %ZSTD_count.exit.thread.us

bb.c:                                             ; preds = %.lr.ph22.split.us
  %.val60.i.us = load i64, ptr %i.co, align 1, !tbaa !24 ; 2 uses
  %.val.i.us = load i64, ptr %1, align 1, !tbaa !24 ; 2 uses
  %.not.i8.us = icmp eq i64 %.val60.i.us, %.val.i.us
  br i1 %.not.i8.us, label %.preheader.i.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cu = xor i64 %.val.i.us, %.val60.i.us
  %i.cv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.cu, i1 true)
  %i.cw = lshr i64 %i.cv, 3
  br label %ZSTD_count.exit.us

.preheader.i.us:                                  ; preds = %bb.c, %4
  %.pn.i.us = phi ptr [ %.049.i.us, %4 ], [ %i.co, %bb.c ] ; 2 uses
  %.pn67.i.us = phi ptr [ %.045.i.us, %4 ], [ %1, %bb.c ] ; 2 uses
  %.045.i.us = getelementptr inbounds nuw i8, ptr %.pn67.i.us, i64 8 ; 8 uses
  %.049.i.us = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 8 ; 5 uses
  %i.cx = icmp ult ptr %.045.i.us, %i.ci
  br i1 %i.cx, label %4, label %.loopexit.i.loopexit.us

4:                                                ; preds = %.preheader.i.us
  %.049.val.i.us = load i64, ptr %.049.i.us, align 1, !tbaa !24 ; 2 uses
  %.045.val.i.us = load i64, ptr %.045.i.us, align 1, !tbaa !24 ; 2 uses
  %.not59.i.us = icmp eq i64 %.049.val.i.us, %.045.val.i.us
  br i1 %.not59.i.us, label %.preheader.i.us, label %.thread63.i.us

bb.e:                                             ; preds = %.loopexit.i.loopexit.us
  %.251.val.i.us = load i32, ptr %.049.i.us, align 1, !tbaa !3
  %.247.val.i.us = load i32, ptr %.045.i.us, align 1, !tbaa !3
  %i.cy = icmp eq i32 %.251.val.i.us, %.247.val.i.us
  br i1 %i.cy, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn67.i.us, i64 12
  %i.da = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.loopexit.i.loopexit.us
  %.352.i.us = phi ptr [ %i.da, %bb.f ], [ %.049.i.us, %bb.e ], [ %.049.i.us, %.loopexit.i.loopexit.us ] ; 4 uses
  %.348.i.us = phi ptr [ %i.cz, %bb.f ], [ %.045.i.us, %bb.e ], [ %.045.i.us, %.loopexit.i.loopexit.us ] ; 5 uses
  %i.db = icmp ult ptr %.348.i.us, %i.cl
  br i1 %i.db, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.352.val.i.us = load i16, ptr %.352.i.us, align 1, !tbaa !43
  %.348.val.i.us = load i16, ptr %.348.i.us, align 1, !tbaa !43
  %i.dc = icmp eq i16 %.352.val.i.us, %.348.val.i.us
  br i1 %i.dc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dd = getelementptr inbounds nuw i8, ptr %.348.i.us, i64 2
  %i.de = getelementptr inbounds nuw i8, ptr %.352.i.us, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.453.i.us = phi ptr [ %i.de, %bb.i ], [ %.352.i.us, %bb.h ], [ %.352.i.us, %bb.g ]
  %.4.i.us = phi ptr [ %i.dd, %bb.i ], [ %.348.i.us, %bb.h ], [ %.348.i.us, %bb.g ] ; 4 uses
  %i.df = icmp ult ptr %.4.i.us, %2
  br i1 %i.df, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dg = load i8, ptr %.453.i.us, align 1, !tbaa !36
  %i.dh = load i8, ptr %.4.i.us, align 1, !tbaa !36
  %i.di = icmp eq i8 %i.dg, %i.dh
  %spec.select.idx.i.us = zext i1 %i.di to i64
  %spec.select.i.us = getelementptr inbounds nuw i8, ptr %.4.i.us, i64 %spec.select.idx.i.us
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.5.i.us = phi ptr [ %.4.i.us, %bb.j ], [ %spec.select.i.us, %bb.k ]
  %i.dj = ptrtoint ptr %.5.i.us to i64
  %i.dk = sub i64 %i.dj, %i.j
  br label %ZSTD_count.exit.us

.thread63.i.us:                                   ; preds = %4
  %i.dl = xor i64 %.045.val.i.us, %.049.val.i.us
  %i.dm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dl, i1 true)
  %i.dn = lshr i64 %i.dm, 3
  %i.do = getelementptr inbounds nuw i8, ptr %.045.i.us, i64 %i.dn
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.dp, %i.j
  br label %ZSTD_count.exit.us

ZSTD_count.exit.us:                               ; preds = %.thread63.i.us, %bb.l, %bb.d
  %.2154.i.us = phi i64 [ %i.cw, %bb.d ], [ %i.dq, %.thread63.i.us ], [ %i.dk, %bb.l ] ; 4 uses
  %i.dr = icmp ugt i64 %.2154.i.us, %.0146.i19.us
  br i1 %i.dr, label %bb.m, label %ZSTD_count.exit.thread.us

bb.m:                                             ; preds = %ZSTD_count.exit.us
  %i.ds = sub i32 %i.cm, %.0148.i21.us
  %i.dt = zext i32 %i.ds to i64
  store i64 %i.dt, ptr %3, align 8, !tbaa !24
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 %.2154.i.us
  %i.dv = icmp eq ptr %i.du, %2
  br i1 %i.dv, label %ZSTD_HcFindBestMatch.exit, label %ZSTD_count.exit.thread.us

ZSTD_count.exit.thread.us:                        ; preds = %bb.m, %ZSTD_count.exit.us, %.lr.ph22.split.us
  %.1147.i.us = phi i64 [ %.2154.i.us, %bb.m ], [ %.0146.i19.us, %ZSTD_count.exit.us ], [ %.0146.i19.us, %.lr.ph22.split.us ] ; 3 uses
  %.not160.i.us = icmp ugt i32 %.0148.i21.us, %i.y
  br i1 %.not160.i.us, label %bb.n, label %ZSTD_HcFindBestMatch.exit

bb.n:                                             ; preds = %ZSTD_count.exit.thread.us
  %i.dw = and i32 %.0148.i21.us, %i.g
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dx
  %i.dz = add i32 %.0.i20.us, -1                  ; 2 uses
  %.0148.i.us = load i32, ptr %i.dy, align 4, !tbaa !3 ; 2 uses
  %i.ea = icmp uge i32 %.0148.i.us, %i.x
  %i.eb = icmp ne i32 %i.dz, 0
  %i.ec = and i1 %i.eb, %i.ea
  br i1 %i.ec, label %.lr.ph22.split.us, label %ZSTD_HcFindBestMatch.exit, !llvm.loop !181

.loopexit.i.loopexit.us:                          ; preds = %.preheader.i.us
  %i.ed = icmp ult ptr %.045.i.us, %i.ck
  br i1 %i.ed, label %bb.e, label %bb.g

.lr.ph22.split:                                   ; preds = %.lr.ph22
  %i.ee = icmp ult ptr %1, %i.ck
  br i1 %i.ee, label %.lr.ph22.split.split.us, label %.lr.ph22.split.split

.lr.ph22.split.split.us:                          ; preds = %.lr.ph22.split, %bb.t
  %.0148.i21.us28 = phi i32 [ %.0148.i.us50, %bb.t ], [ %.0148.i18, %.lr.ph22.split ] ; 4 uses
  %.0.i20.us29 = phi i32 [ %i.fe, %bb.t ], [ %i.ab, %.lr.ph22.split ]
  %.0146.i19.us30 = phi i64 [ %.1147.i.us48, %bb.t ], [ 3, %.lr.ph22.split ] ; 5 uses
  %i.ef = zext i32 %.0148.i21.us28 to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ef ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.0146.i19.us30
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -3
  %.val4.us31 = load i32, ptr %i.ei, align 1, !tbaa !3
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %.0146.i19.us30
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -3
  %.val.us32 = load i32, ptr %i.ek, align 1, !tbaa !3
  %i.el = icmp eq i32 %.val4.us31, %.val.us32
  br i1 %i.el, label %.loopexit.i.us33, label %ZSTD_count.exit.thread.us47

.loopexit.i.us33:                                 ; preds = %.lr.ph22.split.split.us
  %.251.val.i.us34 = load i32, ptr %i.eg, align 1, !tbaa !3
  %.247.val.i.us35 = load i32, ptr %1, align 1, !tbaa !3
  %i.em = icmp eq i32 %.251.val.i.us34, %.247.val.i.us35
  %spec.select.idx = select i1 %i.em, i64 4, i64 0 ; 2 uses
  %spec.select = getelementptr inbounds nuw i8, ptr %i.eg, i64 %spec.select.idx ; 4 uses
  %spec.select58 = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx ; 5 uses
  %i.en = icmp ult ptr %spec.select58, %i.cl
  br i1 %i.en, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.loopexit.i.us33
  %.352.val.i.us38 = load i16, ptr %spec.select, align 1, !tbaa !43
  %.348.val.i.us39 = load i16, ptr %spec.select58, align 1, !tbaa !43
  %i.eo = icmp eq i16 %.352.val.i.us38, %.348.val.i.us39
  br i1 %i.eo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ep = getelementptr inbounds nuw i8, ptr %spec.select58, i64 2
  %i.eq = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.loopexit.i.us33
  %.453.i.us40 = phi ptr [ %i.eq, %bb.p ], [ %spec.select, %bb.o ], [ %spec.select, %.loopexit.i.us33 ]
  %.4.i.us41 = phi ptr [ %i.ep, %bb.p ], [ %spec.select58, %bb.o ], [ %spec.select58, %.loopexit.i.us33 ] ; 4 uses
  %i.er = icmp ult ptr %.4.i.us41, %2
  br i1 %i.er, label %bb.r, label %ZSTD_count.exit.us44

bb.r:                                             ; preds = %bb.q
  %i.es = load i8, ptr %.453.i.us40, align 1, !tbaa !36
  %i.et = load i8, ptr %.4.i.us41, align 1, !tbaa !36
  %i.eu = icmp eq i8 %i.es, %i.et
  %spec.select.idx.i.us42 = zext i1 %i.eu to i64
  %spec.select.i.us43 = getelementptr inbounds nuw i8, ptr %.4.i.us41, i64 %spec.select.idx.i.us42
  br label %ZSTD_count.exit.us44

ZSTD_count.exit.us44:                             ; preds = %bb.r, %bb.q
  %.5.i.us45 = phi ptr [ %.4.i.us41, %bb.q ], [ %spec.select.i.us43, %bb.r ] ; 2 uses
  %i.ev = ptrtoint ptr %.5.i.us45 to i64
  %i.ew = sub i64 %i.ev, %i.j                     ; 3 uses
  %i.ex = icmp ugt i64 %i.ew, %.0146.i19.us30
  br i1 %i.ex, label %bb.s, label %ZSTD_count.exit.thread.us47

bb.s:                                             ; preds = %ZSTD_count.exit.us44
  %i.ey = sub i32 %i.cm, %.0148.i21.us28
  %i.ez = zext i32 %i.ey to i64
  store i64 %i.ez, ptr %3, align 8, !tbaa !24
  %i.fa = icmp eq ptr %.5.i.us45, %2
  br i1 %i.fa, label %ZSTD_HcFindBestMatch.exit, label %ZSTD_count.exit.thread.us47

ZSTD_count.exit.thread.us47:                      ; preds = %bb.s, %ZSTD_count.exit.us44, %.lr.ph22.split.split.us
  %.1147.i.us48 = phi i64 [ %i.ew, %bb.s ], [ %.0146.i19.us30, %ZSTD_count.exit.us44 ], [ %.0146.i19.us30, %.lr.ph22.split.split.us ] ; 3 uses
  %.not160.i.us49 = icmp ugt i32 %.0148.i21.us28, %i.y
  br i1 %.not160.i.us49, label %bb.t, label %ZSTD_HcFindBestMatch.exit

bb.t:                                             ; preds = %ZSTD_count.exit.thread.us47
  %i.fb = and i32 %.0148.i21.us28, %i.g
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fc
  %i.fe = add i32 %.0.i20.us29, -1                ; 2 uses
  %.0148.i.us50 = load i32, ptr %i.fd, align 4, !tbaa !3 ; 2 uses
  %i.ff = icmp uge i32 %.0148.i.us50, %i.x
  %i.fg = icmp ne i32 %i.fe, 0
  %i.fh = and i1 %i.fg, %i.ff
  br i1 %i.fh, label %.lr.ph22.split.split.us, label %ZSTD_HcFindBestMatch.exit, !llvm.loop !181

.lr.ph22.split.split:                             ; preds = %.lr.ph22.split
  %i.fi = icmp ult ptr %1, %i.cl
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph22.split.split, %bb.z
  %.0148.i21 = phi i32 [ %.0148.i18, %.lr.ph22.split.split ], [ %.0148.i, %bb.z ] ; 4 uses
  %.0.i20 = phi i32 [ %i.ab, %.lr.ph22.split.split ], [ %i.ge, %bb.z ]
  %.0146.i19 = phi i64 [ 3, %.lr.ph22.split.split ], [ %.1147.i, %bb.z ] ; 5 uses
  %i.fj = zext i32 %.0148.i21 to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fj ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.0146.i19
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -3
  %.val4 = load i32, ptr %i.fm, align 1, !tbaa !3
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 %.0146.i19
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -3
  %.val = load i32, ptr %i.fo, align 1, !tbaa !3
  %i.fp = icmp eq i32 %.val4, %.val
  br i1 %i.fp, label %.loopexit.i, label %ZSTD_count.exit.thread

.loopexit.i:                                      ; preds = %bb.u
  br i1 %i.fi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit.i
  %.352.val.i = load i16, ptr %i.fk, align 1, !tbaa !43
  %i.fq = icmp eq i16 %.352.val.i, %i.ch
  %spec.select59.idx = select i1 %i.fq, i64 2, i64 0 ; 2 uses
  %spec.select59 = getelementptr inbounds nuw i8, ptr %i.fk, i64 %spec.select59.idx
  %spec.select60 = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select59.idx
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.loopexit.i
  %.453.i = phi ptr [ %i.fk, %.loopexit.i ], [ %spec.select59, %bb.v ]
  %.4.i = phi ptr [ %1, %.loopexit.i ], [ %spec.select60, %bb.v ] ; 4 uses
  %i.fr = icmp ult ptr %.4.i, %2
  br i1 %i.fr, label %bb.x, label %ZSTD_count.exit

bb.x:                                             ; preds = %bb.w
  %i.fs = load i8, ptr %.453.i, align 1, !tbaa !36
  %i.ft = load i8, ptr %.4.i, align 1, !tbaa !36
  %i.fu = icmp eq i8 %i.fs, %i.ft
  %spec.select.idx.i = zext i1 %i.fu to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.4.i, i64 %spec.select.idx.i
  br label %ZSTD_count.exit

ZSTD_count.exit:                                  ; preds = %bb.x, %bb.w
  %.5.i = phi ptr [ %.4.i, %bb.w ], [ %spec.select.i, %bb.x ] ; 2 uses
  %i.fv = ptrtoint ptr %.5.i to i64
  %i.fw = sub i64 %i.fv, %i.j                     ; 3 uses
  %i.fx = icmp ugt i64 %i.fw, %.0146.i19
  br i1 %i.fx, label %bb.y, label %ZSTD_count.exit.thread

bb.y:                                             ; preds = %ZSTD_count.exit
  %i.fy = sub i32 %i.cm, %.0148.i21
  %i.fz = zext i32 %i.fy to i64
  store i64 %i.fz, ptr %3, align 8, !tbaa !24
  %i.ga = icmp eq ptr %.5.i, %2
  br i1 %i.ga, label %ZSTD_HcFindBestMatch.exit, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.u, %bb.y, %ZSTD_count.exit
  %.1147.i = phi i64 [ %i.fw, %bb.y ], [ %.0146.i19, %ZSTD_count.exit ], [ %.0146.i19, %bb.u ] ; 3 uses
  %.not160.i = icmp ugt i32 %.0148.i21, %i.y
  br i1 %.not160.i, label %bb.z, label %ZSTD_HcFindBestMatch.exit

bb.z:                                             ; preds = %ZSTD_count.exit.thread
  %i.gb = and i32 %.0148.i21, %i.g
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gc
  %i.ge = add i32 %.0.i20, -1                     ; 2 uses
  %.0148.i = load i32, ptr %i.gd, align 4, !tbaa !3 ; 2 uses
  %i.gf = icmp uge i32 %.0148.i, %i.x
  %i.gg = icmp ne i32 %i.ge, 0
  %i.gh = and i1 %i.gg, %i.gf
  br i1 %i.gh, label %bb.u, label %ZSTD_HcFindBestMatch.exit, !llvm.loop !181

ZSTD_HcFindBestMatch.exit:                        ; preds = %bb.z, %bb.y, %ZSTD_count.exit.thread, %bb.t, %bb.s, %ZSTD_count.exit.thread.us47, %bb.n, %bb.m, %ZSTD_count.exit.thread.us, %.split16.us
  %.3.i = phi i64 [ %.1147.i.us, %ZSTD_count.exit.thread.us ], [ 3, %.split16.us ], [ %.1147.i.us48, %ZSTD_count.exit.thread.us47 ], [ %.2154.i.us, %bb.m ], [ %.1147.i.us, %bb.n ], [ %.1147.i.us48, %bb.t ], [ %i.ew, %bb.s ], [ %i.fw, %bb.y ], [ %.1147.i, %ZSTD_count.exit.thread ], [ %.1147.i, %bb.z ]
  ret i64 %.3.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 3, 0) i64 @ZSTD_HcFindBestMatch_noDict_5(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32   ; 2 uses
  %i.f = shl nuw i32 1, %i.e                      ; 2 uses
  %i.g = add i32 %i.f, -1                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7    ; 8 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = trunc i64 %i.l to i32                    ; 6 uses
  %i.n = load i32, ptr %i.a, align 8, !tbaa !179
  %i.o = shl nuw i32 1, %i.n                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !148  ; 2 uses
  %i.r = sub i32 %i.m, %i.q
  %i.s = icmp ugt i32 %i.r, %i.o
  %i.t = sub i32 %i.m, %i.o
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !40
  %.not.i = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not.i, i1 %i.s, i1 false
  %i.x = select i1 %i.w, i32 %i.t, i32 %i.q       ; 4 uses
  %i.y = tail call i32 @llvm.usub.sat.i32(i32 %i.m, i32 %i.f) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !180
  %i.ab = shl nuw i32 1, %i.aa                    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !31
  %notmask.i.i = shl nsw i32 -1, %i.e
  %i.ai = xor i32 %notmask.i.i, -1                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !20 ; 6 uses
  %i.al = sub i32 64, %i.ah
  %i.am = zext nneg i32 %i.al to i64              ; 5 uses
  %.fr61 = freeze i32 %i.ad
  %.not.i.i = icmp eq i32 %.fr61, 0
  %i.an = icmp ult i32 %i.ak, %i.m                ; 2 uses
  br i1 %.not.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %i.an, label %.lr.ph.preheader, label %.split16.us

.lr.ph.preheader:                                 ; preds = %.split.us
  %i.ao = zext i32 %i.ak to i64                   ; 6 uses
  %i.ap = and i64 %i.l, 4294967295                ; 2 uses
  %i.aq = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.ar = sub i64 %i.l, %i.ao
  %.neg = add nuw nsw i64 %i.ao, 1
  %xtraiter = and i64 %i.ar, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ao
  %.val5.us.prol = load i64, ptr %i.as, align 1, !tbaa !24
  %i.at = mul i64 %.val5.us.prol, -3523014627271114752
  %i.au = lshr i64 %i.at, %i.am
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = and i64 %i.ao, %i.aq
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ax
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !3
  store i32 %i.ak, ptr %i.av, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %i.ao, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.ao, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.az = icmp eq i64 %i.ap, %.neg
  br i1 %i.az, label %.split16.us, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %.val5.us = load i64, ptr %i.ba, align 1, !tbaa !24
  %i.bb = mul i64 %.val5.us, -3523014627271114752
  %i.bc = lshr i64 %i.bb, %i.am
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = trunc nuw i64 %indvars.iv to i32
  %i.bg = and i64 %indvars.iv, %i.aq
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bg
  store i32 %i.be, ptr %i.bh, align 4, !tbaa !3
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next
  %.val5.us.1 = load i64, ptr %i.bi, align 1, !tbaa !24
  %i.bj = mul i64 %.val5.us.1, -3523014627271114752
  %i.bk = lshr i64 %i.bj, %i.am
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = trunc nuw i64 %indvars.iv.next to i32
  %i.bo = and i64 %indvars.iv.next, %i.aq
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bo
  store i32 %i.bm, ptr %i.bp, align 4, !tbaa !3
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bq = icmp samesign ult i64 %indvars.iv.next.1, %i.ap
  br i1 %i.bq, label %.lr.ph, label %.split16.us

.split:                                           ; preds = %bb.a
  br i1 %i.an, label %bb.b, label %.split16.us

bb.b:                                             ; preds = %.split
  %i.br = zext i32 %i.ak to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.br
  %.val5 = load i64, ptr %i.bs, align 1, !tbaa !24
  %i.bt = mul i64 %.val5, -3523014627271114752
  %i.bu = lshr i64 %i.bt, %i.am
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = and i32 %i.ak, %i.ai
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.by
  store i32 %i.bw, ptr %i.bz, align 4, !tbaa !3
  store i32 %i.ak, ptr %i.bv, align 4, !tbaa !3
  br label %.split16.us

.split16.us:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.split, %bb.b, %.split.us
  store i32 %i.m, ptr %i.aj, align 4, !tbaa !20
  %.val6 = load i64, ptr %1, align 1, !tbaa !24
  %i.ca = mul i64 %.val6, -3523014627271114752
  %i.cb = lshr i64 %i.ca, %i.am
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.cb
  %.0148.i18 = load i32, ptr %i.cc, align 4, !tbaa !3 ; 4 uses
  %.not = icmp ult i32 %.0148.i18, %i.x
  br i1 %.not, label %ZSTD_HcFindBestMatch.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %.split16.us
  %i.cd = getelementptr i8, ptr %2, i64 -7        ; 2 uses
  %i.ce = icmp ult ptr %1, %i.cd
  %i.cf = getelementptr i8, ptr %2, i64 -3        ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %2, i64 -1 ; 3 uses
  %i.ch = add i32 %i.m, 3                         ; 3 uses
  br i1 %i.ce, label %.lr.ph22.split.us, label %.lr.ph22.split

.lr.ph22.split.us:                                ; preds = %.lr.ph22, %bb.n
  %.0148.i21.us = phi i32 [ %.0148.i.us, %bb.n ], [ %.0148.i18, %.lr.ph22 ] ; 4 uses
  %.0.i20.us = phi i32 [ %i.du, %bb.n ], [ %i.ab, %.lr.ph22 ]
  %.0146.i19.us = phi i64 [ %.1147.i.us, %bb.n ], [ 3, %.lr.ph22 ] ; 5 uses
  %i.ci = zext i32 %.0148.i21.us to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ci ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.0146.i19.us
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -3
  %.val4.us = load i32, ptr %i.cl, align 1, !tbaa !3
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %.0146.i19.us
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -3
  %.val.us = load i32, ptr %i.cn, align 1, !tbaa !3
  %i.co = icmp eq i32 %.val4.us, %.val.us
  br i1 %i.co, label %bb.c, label %ZSTD_count.exit.thread.us

bb.c:                                             ; preds = %.lr.ph22.split.us
  %.val60.i.us = load i64, ptr %i.cj, align 1, !tbaa !24 ; 2 uses
  %.val.i.us = load i64, ptr %1, align 1, !tbaa !24 ; 2 uses
  %.not.i8.us = icmp eq i64 %.val60.i.us, %.val.i.us
  br i1 %.not.i8.us, label %.preheader.i.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cp = xor i64 %.val.i.us, %.val60.i.us
  %i.cq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.cp, i1 true)
  %i.cr = lshr i64 %i.cq, 3
  br label %ZSTD_count.exit.us

.preheader.i.us:                                  ; preds = %bb.c, %4
  %.pn.i.us = phi ptr [ %.049.i.us, %4 ], [ %i.cj, %bb.c ] ; 2 uses
  %.pn67.i.us = phi ptr [ %.045.i.us, %4 ], [ %1, %bb.c ] ; 2 uses
  %.045.i.us = getelementptr inbounds nuw i8, ptr %.pn67.i.us, i64 8 ; 8 uses
  %.049.i.us = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 8 ; 5 uses
  %i.cs = icmp ult ptr %.045.i.us, %i.cd
  br i1 %i.cs, label %4, label %.loopexit.i.loopexit.us

4:                                                ; preds = %.preheader.i.us
  %.049.val.i.us = load i64, ptr %.049.i.us, align 1, !tbaa !24 ; 2 uses
  %.045.val.i.us = load i64, ptr %.045.i.us, align 1, !tbaa !24 ; 2 uses
  %.not59.i.us = icmp eq i64 %.049.val.i.us, %.045.val.i.us
  br i1 %.not59.i.us, label %.preheader.i.us, label %.thread63.i.us

bb.e:                                             ; preds = %.loopexit.i.loopexit.us
  %.251.val.i.us = load i32, ptr %.049.i.us, align 1, !tbaa !3
  %.247.val.i.us = load i32, ptr %.045.i.us, align 1, !tbaa !3
  %i.ct = icmp eq i32 %.251.val.i.us, %.247.val.i.us
  br i1 %i.ct, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn67.i.us, i64 12
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.loopexit.i.loopexit.us
  %.352.i.us = phi ptr [ %i.cv, %bb.f ], [ %.049.i.us, %bb.e ], [ %.049.i.us, %.loopexit.i.loopexit.us ] ; 4 uses
  %.348.i.us = phi ptr [ %i.cu, %bb.f ], [ %.045.i.us, %bb.e ], [ %.045.i.us, %.loopexit.i.loopexit.us ] ; 5 uses
  %i.cw = icmp ult ptr %.348.i.us, %i.cg
  br i1 %i.cw, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.352.val.i.us = load i16, ptr %.352.i.us, align 1, !tbaa !43
  %.348.val.i.us = load i16, ptr %.348.i.us, align 1, !tbaa !43
  %i.cx = icmp eq i16 %.352.val.i.us, %.348.val.i.us
  br i1 %i.cx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cy = getelementptr inbounds nuw i8, ptr %.348.i.us, i64 2
  %i.cz = getelementptr inbounds nuw i8, ptr %.352.i.us, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.453.i.us = phi ptr [ %i.cz, %bb.i ], [ %.352.i.us, %bb.h ], [ %.352.i.us, %bb.g ]
  %.4.i.us = phi ptr [ %i.cy, %bb.i ], [ %.348.i.us, %bb.h ], [ %.348.i.us, %bb.g ] ; 4 uses
  %i.da = icmp ult ptr %.4.i.us, %2
  br i1 %i.da, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.db = load i8, ptr %.453.i.us, align 1, !tbaa !36
  %i.dc = load i8, ptr %.4.i.us, align 1, !tbaa !36
  %i.dd = icmp eq i8 %i.db, %i.dc
  %spec.select.idx.i.us = zext i1 %i.dd to i64
  %spec.select.i.us = getelementptr inbounds nuw i8, ptr %.4.i.us, i64 %spec.select.idx.i.us
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.5.i.us = phi ptr [ %.4.i.us, %bb.j ], [ %spec.select.i.us, %bb.k ]
  %i.de = ptrtoint ptr %.5.i.us to i64
  %i.df = sub i64 %i.de, %i.j
  br label %ZSTD_count.exit.us

.thread63.i.us:                                   ; preds = %4
  %i.dg = xor i64 %.045.val.i.us, %.049.val.i.us
  %i.dh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dg, i1 true)
  %i.di = lshr i64 %i.dh, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %.045.i.us, i64 %i.di
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.dk, %i.j
  br label %ZSTD_count.exit.us

ZSTD_count.exit.us:                               ; preds = %.thread63.i.us, %bb.l, %bb.d
  %.2154.i.us = phi i64 [ %i.cr, %bb.d ], [ %i.dl, %.thread63.i.us ], [ %i.df, %bb.l ] ; 4 uses
  %i.dm = icmp ugt i64 %.2154.i.us, %.0146.i19.us
  br i1 %i.dm, label %bb.m, label %ZSTD_count.exit.thread.us

bb.m:                                             ; preds = %ZSTD_count.exit.us
  %i.dn = sub i32 %i.ch, %.0148.i21.us
  %i.do = zext i32 %i.dn to i64
  store i64 %i.do, ptr %3, align 8, !tbaa !24
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %.2154.i.us
  %i.dq = icmp eq ptr %i.dp, %2
  br i1 %i.dq, label %ZSTD_HcFindBestMatch.exit, label %ZSTD_count.exit.thread.us

ZSTD_count.exit.thread.us:                        ; preds = %bb.m, %ZSTD_count.exit.us, %.lr.ph22.split.us
  %.1147.i.us = phi i64 [ %.2154.i.us, %bb.m ], [ %.0146.i19.us, %ZSTD_count.exit.us ], [ %.0146.i19.us, %.lr.ph22.split.us ] ; 3 uses
  %.not160.i.us = icmp ugt i32 %.0148.i21.us, %i.y
  br i1 %.not160.i.us, label %bb.n, label %ZSTD_HcFindBestMatch.exit

bb.n:                                             ; preds = %ZSTD_count.exit.thread.us
  %i.dr = and i32 %.0148.i21.us, %i.g
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ds
  %i.du = add i32 %.0.i20.us, -1                  ; 2 uses
  %.0148.i.us = load i32, ptr %i.dt, align 4, !tbaa !3 ; 2 uses
  %i.dv = icmp uge i32 %.0148.i.us, %i.x
  %i.dw = icmp ne i32 %i.du, 0
  %i.dx = and i1 %i.dw, %i.dv
  br i1 %i.dx, label %.lr.ph22.split.us, label %ZSTD_HcFindBestMatch.exit, !llvm.loop !181

.loopexit.i.loopexit.us:                          ; preds = %.preheader.i.us
  %i.dy = icmp ult ptr %.045.i.us, %i.cf
  br i1 %i.dy, label %bb.e, label %bb.g

.lr.ph22.split:                                   ; preds = %.lr.ph22
  %i.dz = icmp ult ptr %1, %i.cf
  br i1 %i.dz, label %.lr.ph22.split.split.us, label %.lr.ph22.split.split

.lr.ph22.split.split.us:                          ; preds = %.lr.ph22.split, %bb.t
  %.0148.i21.us28 = phi i32 [ %.0148.i.us50, %bb.t ], [ %.0148.i18, %.lr.ph22.split ] ; 4 uses
  %.0.i20.us29 = phi i32 [ %i.ez, %bb.t ], [ %i.ab, %.lr.ph22.split ]
  %.0146.i19.us30 = phi i64 [ %.1147.i.us48, %bb.t ], [ 3, %.lr.ph22.split ] ; 5 uses
  %i.ea = zext i32 %.0148.i21.us28 to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ea ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.0146.i19.us30
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -3
  %.val4.us31 = load i32, ptr %i.ed, align 1, !tbaa !3
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 %.0146.i19.us30
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -3
  %.val.us32 = load i32, ptr %i.ef, align 1, !tbaa !3
  %i.eg = icmp eq i32 %.val4.us31, %.val.us32
  br i1 %i.eg, label %.loopexit.i.us33, label %ZSTD_count.exit.thread.us47

.loopexit.i.us33:                                 ; preds = %.lr.ph22.split.split.us
  %.251.val.i.us34 = load i32, ptr %i.eb, align 1, !tbaa !3
  %.247.val.i.us35 = load i32, ptr %1, align 1, !tbaa !3
  %i.eh = icmp eq i32 %.251.val.i.us34, %.247.val.i.us35
  %spec.select.idx = select i1 %i.eh, i64 4, i64 0 ; 2 uses
  %spec.select = getelementptr inbounds nuw i8, ptr %i.eb, i64 %spec.select.idx ; 4 uses
  %spec.select58 = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx ; 5 uses
  %i.ei = icmp ult ptr %spec.select58, %i.cg
  br i1 %i.ei, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.loopexit.i.us33
  %.352.val.i.us38 = load i16, ptr %spec.select, align 1, !tbaa !43
  %.348.val.i.us39 = load i16, ptr %spec.select58, align 1, !tbaa !43
  %i.ej = icmp eq i16 %.352.val.i.us38, %.348.val.i.us39
  br i1 %i.ej, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ek = getelementptr inbounds nuw i8, ptr %spec.select58, i64 2
  %i.el = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.loopexit.i.us33
  %.453.i.us40 = phi ptr [ %i.el, %bb.p ], [ %spec.select, %bb.o ], [ %spec.select, %.loopexit.i.us33 ]
  %.4.i.us41 = phi ptr [ %i.ek, %bb.p ], [ %spec.select58, %bb.o ], [ %spec.select58, %.loopexit.i.us33 ] ; 4 uses
  %i.em = icmp ult ptr %.4.i.us41, %2
  br i1 %i.em, label %bb.r, label %ZSTD_count.exit.us44

bb.r:                                             ; preds = %bb.q
  %i.en = load i8, ptr %.453.i.us40, align 1, !tbaa !36
  %i.eo = load i8, ptr %.4.i.us41, align 1, !tbaa !36
  %i.ep = icmp eq i8 %i.en, %i.eo
  %spec.select.idx.i.us42 = zext i1 %i.ep to i64
  %spec.select.i.us43 = getelementptr inbounds nuw i8, ptr %.4.i.us41, i64 %spec.select.idx.i.us42
  br label %ZSTD_count.exit.us44

ZSTD_count.exit.us44:                             ; preds = %bb.r, %bb.q
  %.5.i.us45 = phi ptr [ %.4.i.us41, %bb.q ], [ %spec.select.i.us43, %bb.r ] ; 2 uses
  %i.eq = ptrtoint ptr %.5.i.us45 to i64
  %i.er = sub i64 %i.eq, %i.j                     ; 3 uses
  %i.es = icmp ugt i64 %i.er, %.0146.i19.us30
  br i1 %i.es, label %bb.s, label %ZSTD_count.exit.thread.us47

bb.s:                                             ; preds = %ZSTD_count.exit.us44
  %i.et = sub i32 %i.ch, %.0148.i21.us28
  %i.eu = zext i32 %i.et to i64
  store i64 %i.eu, ptr %3, align 8, !tbaa !24
  %i.ev = icmp eq ptr %.5.i.us45, %2
  br i1 %i.ev, label %ZSTD_HcFindBestMatch.exit, label %ZSTD_count.exit.thread.us47

ZSTD_count.exit.thread.us47:                      ; preds = %bb.s, %ZSTD_count.exit.us44, %.lr.ph22.split.split.us
  %.1147.i.us48 = phi i64 [ %i.er, %bb.s ], [ %.0146.i19.us30, %ZSTD_count.exit.us44 ], [ %.0146.i19.us30, %.lr.ph22.split.split.us ] ; 3 uses
  %.not160.i.us49 = icmp ugt i32 %.0148.i21.us28, %i.y
  br i1 %.not160.i.us49, label %bb.t, label %ZSTD_HcFindBestMatch.exit

bb.t:                                             ; preds = %ZSTD_count.exit.thread.us47
  %i.ew = and i32 %.0148.i21.us28, %i.g
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ex
  %i.ez = add i32 %.0.i20.us29, -1                ; 2 uses
  %.0148.i.us50 = load i32, ptr %i.ey, align 4, !tbaa !3 ; 2 uses
  %i.fa = icmp uge i32 %.0148.i.us50, %i.x
  %i.fb = icmp ne i32 %i.ez, 0
  %i.fc = and i1 %i.fb, %i.fa
  br i1 %i.fc, label %.lr.ph22.split.split.us, label %ZSTD_HcFindBestMatch.exit, !llvm.loop !181

.lr.ph22.split.split:                             ; preds = %.lr.ph22.split
  %i.fd = icmp ult ptr %1, %i.cg
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph22.split.split, %bb.z
  %.0148.i21 = phi i32 [ %.0148.i18, %.lr.ph22.split.split ], [ %.0148.i, %bb.z ] ; 4 uses
  %.0.i20 = phi i32 [ %i.ab, %.lr.ph22.split.split ], [ %i.fz, %bb.z ]
  %.0146.i19 = phi i64 [ 3, %.lr.ph22.split.split ], [ %.1147.i, %bb.z ] ; 5 uses
  %i.fe = zext i32 %.0148.i21 to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fe ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.0146.i19
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -3
  %.val4 = load i32, ptr %i.fh, align 1, !tbaa !3
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 %.0146.i19
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -3
  %.val = load i32, ptr %i.fj, align 1, !tbaa !3
  %i.fk = icmp eq i32 %.val4, %.val
  br i1 %i.fk, label %.loopexit.i, label %ZSTD_count.exit.thread

.loopexit.i:                                      ; preds = %bb.u
  br i1 %i.fd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit.i
  %.352.val.i = load i16, ptr %i.ff, align 1, !tbaa !43
  %.348.val.i = load i16, ptr %1, align 1, !tbaa !43
  %i.fl = icmp eq i16 %.352.val.i, %.348.val.i
  %spec.select59.idx = select i1 %i.fl, i64 2, i64 0 ; 2 uses
  %spec.select59 = getelementptr inbounds nuw i8, ptr %i.ff, i64 %spec.select59.idx
  %spec.select60 = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select59.idx
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.loopexit.i
  %.453.i = phi ptr [ %i.ff, %.loopexit.i ], [ %spec.select59, %bb.v ]
  %.4.i = phi ptr [ %1, %.loopexit.i ], [ %spec.select60, %bb.v ] ; 4 uses
  %i.fm = icmp ult ptr %.4.i, %2
  br i1 %i.fm, label %bb.x, label %ZSTD_count.exit

bb.x:                                             ; preds = %bb.w
  %i.fn = load i8, ptr %.453.i, align 1, !tbaa !36
  %i.fo = load i8, ptr %.4.i, align 1, !tbaa !36
  %i.fp = icmp eq i8 %i.fn, %i.fo
  %spec.select.idx.i = zext i1 %i.fp to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.4.i, i64 %spec.select.idx.i
  br label %ZSTD_count.exit

ZSTD_count.exit:                                  ; preds = %bb.x, %bb.w
  %.5.i = phi ptr [ %.4.i, %bb.w ], [ %spec.select.i, %bb.x ] ; 2 uses
  %i.fq = ptrtoint ptr %.5.i to i64
  %i.fr = sub i64 %i.fq, %i.j                     ; 3 uses
  %i.fs = icmp ugt i64 %i.fr, %.0146.i19
  br i1 %i.fs, label %bb.y, label %ZSTD_count.exit.thread

bb.y:                                             ; preds = %ZSTD_count.exit
  %i.ft = sub i32 %i.ch, %.0148.i21
  %i.fu = zext i32 %i.ft to i64
  store i64 %i.fu, ptr %3, align 8, !tbaa !24
  %i.fv = icmp eq ptr %.5.i, %2
  br i1 %i.fv, label %ZSTD_HcFindBestMatch.exit, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.u, %bb.y, %ZSTD_count.exit
  %.1147.i = phi i64 [ %i.fr, %bb.y ], [ %.0146.i19, %ZSTD_count.exit ], [ %.0146.i19, %bb.u ] ; 3 uses
  %.not160.i = icmp ugt i32 %.0148.i21, %i.y
  br i1 %.not160.i, label %bb.z, label %ZSTD_HcFindBestMatch.exit

bb.z:                                             ; preds = %ZSTD_count.exit.thread
  %i.fw = and i32 %.0148.i21, %i.g
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fx
  %i.fz = add i32 %.0.i20, -1                     ; 2 uses
  %.0148.i = load i32, ptr %i.fy, align 4, !tbaa !3 ; 2 uses
  %i.ga = icmp uge i32 %.0148.i, %i.x
  %i.gb = icmp ne i32 %i.fz, 0
  %i.gc = and i1 %i.gb, %i.ga
  br i1 %i.gc, label %bb.u, label %ZSTD_HcFindBestMatch.exit, !llvm.loop !181

ZSTD_HcFindBestMatch.exit:                        ; preds = %bb.z, %bb.y, %ZSTD_count.exit.thread, %bb.t, %bb.s, %ZSTD_count.exit.thread.us47, %bb.n, %bb.m, %ZSTD_count.exit.thread.us, %.split16.us
  %.3.i = phi i64 [ %.1147.i.us, %ZSTD_count.exit.thread.us ], [ 3, %.split16.us ], [ %.1147.i.us48, %ZSTD_count.exit.thread.us47 ], [ %.2154.i.us, %bb.m ], [ %.1147.i.us, %bb.n ], [ %.1147.i.us48, %bb.t ], [ %i.er, %bb.s ], [ %i.fr, %bb.y ], [ %.1147.i, %ZSTD_count.exit.thread ], [ %.1147.i, %bb.z ]
  ret i64 %.3.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 3, 0) i64 @ZSTD_HcFindBestMatch_noDict_6(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32   ; 2 uses
  %i.f = shl nuw i32 1, %i.e                      ; 2 uses
  %i.g = add i32 %i.f, -1                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7    ; 8 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = trunc i64 %i.l to i32                    ; 6 uses
  %i.n = load i32, ptr %i.a, align 8, !tbaa !179
  %i.o = shl nuw i32 1, %i.n                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !148  ; 2 uses
  %i.r = sub i32 %i.m, %i.q
  %i.s = icmp ugt i32 %i.r, %i.o
  %i.t = sub i32 %i.m, %i.o
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !40
  %.not.i = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not.i, i1 %i.s, i1 false
  %i.x = select i1 %i.w, i32 %i.t, i32 %i.q       ; 4 uses
  %i.y = tail call i32 @llvm.usub.sat.i32(i32 %i.m, i32 %i.f) ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !180
  %i.ab = shl nuw i32 1, %i.aa                    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !31
  %notmask.i.i = shl nsw i32 -1, %i.e
  %i.ai = xor i32 %notmask.i.i, -1                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !20 ; 6 uses
  %i.al = sub i32 64, %i.ah
  %i.am = zext nneg i32 %i.al to i64              ; 5 uses
  %.fr61 = freeze i32 %i.ad
  %.not.i.i = icmp eq i32 %.fr61, 0
  %i.an = icmp ult i32 %i.ak, %i.m                ; 2 uses
  br i1 %.not.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %i.an, label %.lr.ph.preheader, label %.split16.us

.lr.ph.preheader:                                 ; preds = %.split.us
  %i.ao = zext i32 %i.ak to i64                   ; 6 uses
  %i.ap = and i64 %i.l, 4294967295                ; 2 uses
  %i.aq = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.ar = sub i64 %i.l, %i.ao
  %.neg = add nuw nsw i64 %i.ao, 1
  %xtraiter = and i64 %i.ar, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ao
  %.val5.us.prol = load i64, ptr %i.as, align 1, !tbaa !24
  %i.at = mul i64 %.val5.us.prol, -3523014627193847808
  %i.au = lshr i64 %i.at, %i.am
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = and i64 %i.ao, %i.aq
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ax
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !3
  store i32 %i.ak, ptr %i.av, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %i.ao, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.ao, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.az = icmp eq i64 %i.ap, %.neg
  br i1 %i.az, label %.split16.us, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %.val5.us = load i64, ptr %i.ba, align 1, !tbaa !24
  %i.bb = mul i64 %.val5.us, -3523014627193847808
  %i.bc = lshr i64 %i.bb, %i.am
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = trunc nuw i64 %indvars.iv to i32
  %i.bg = and i64 %indvars.iv, %i.aq
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bg
  store i32 %i.be, ptr %i.bh, align 4, !tbaa !3
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next
  %.val5.us.1 = load i64, ptr %i.bi, align 1, !tbaa !24
  %i.bj = mul i64 %.val5.us.1, -3523014627193847808
  %i.bk = lshr i64 %i.bj, %i.am
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = trunc nuw i64 %indvars.iv.next to i32
  %i.bo = and i64 %indvars.iv.next, %i.aq
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bo
  store i32 %i.bm, ptr %i.bp, align 4, !tbaa !3
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bq = icmp samesign ult i64 %indvars.iv.next.1, %i.ap
  br i1 %i.bq, label %.lr.ph, label %.split16.us

.split:                                           ; preds = %bb.a
  br i1 %i.an, label %bb.b, label %.split16.us

bb.b:                                             ; preds = %.split
  %i.br = zext i32 %i.ak to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.br
  %.val5 = load i64, ptr %i.bs, align 1, !tbaa !24
  %i.bt = mul i64 %.val5, -3523014627193847808
  %i.bu = lshr i64 %i.bt, %i.am
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = and i32 %i.ak, %i.ai
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.by
  store i32 %i.bw, ptr %i.bz, align 4, !tbaa !3
  store i32 %i.ak, ptr %i.bv, align 4, !tbaa !3
  br label %.split16.us

.split16.us:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.split, %bb.b, %.split.us
  store i32 %i.m, ptr %i.aj, align 4, !tbaa !20
  %.val6 = load i64, ptr %1, align 1, !tbaa !24
  %i.ca = mul i64 %.val6, -3523014627193847808
  %i.cb = lshr i64 %i.ca, %i.am
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.cb
  %.0148.i18 = load i32, ptr %i.cc, align 4, !tbaa !3 ; 4 uses
  %.not = icmp ult i32 %.0148.i18, %i.x
  br i1 %.not, label %ZSTD_HcFindBestMatch.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %.split16.us
  %i.cd = getelementptr i8, ptr %2, i64 -7        ; 2 uses
  %i.ce = icmp ult ptr %1, %i.cd
  %i.cf = getelementptr i8, ptr %2, i64 -3        ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %2, i64 -1 ; 3 uses
  %i.ch = add i32 %i.m, 3                         ; 3 uses
  br i1 %i.ce, label %.lr.ph22.split.us, label %.lr.ph22.split

.lr.ph22.split.us:                                ; preds = %.lr.ph22, %bb.n
  %.0148.i21.us = phi i32 [ %.0148.i.us, %bb.n ], [ %.0148.i18, %.lr.ph22 ] ; 4 uses
  %.0.i20.us = phi i32 [ %i.du, %bb.n ], [ %i.ab, %.lr.ph22 ]
  %.0146.i19.us = phi i64 [ %.1147.i.us, %bb.n ], [ 3, %.lr.ph22 ] ; 5 uses
  %i.ci = zext i32 %.0148.i21.us to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ci ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.0146.i19.us
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -3
  %.val4.us = load i32, ptr %i.cl, align 1, !tbaa !3
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %.0146.i19.us
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -3
  %.val.us = load i32, ptr %i.cn, align 1, !tbaa !3
  %i.co = icmp eq i32 %.val4.us, %.val.us
  br i1 %i.co, label %bb.c, label %ZSTD_count.exit.thread.us

bb.c:                                             ; preds = %.lr.ph22.split.us
  %.val60.i.us = load i64, ptr %i.cj, align 1, !tbaa !24 ; 2 uses
  %.val.i.us = load i64, ptr %1, align 1, !tbaa !24 ; 2 uses
  %.not.i8.us = icmp eq i64 %.val60.i.us, %.val.i.us
  br i1 %.not.i8.us, label %.preheader.i.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cp = xor i64 %.val.i.us, %.val60.i.us
  %i.cq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.cp, i1 true)
  %i.cr = lshr i64 %i.cq, 3
  br label %ZSTD_count.exit.us

.preheader.i.us:                                  ; preds = %bb.c, %4
  %.pn.i.us = phi ptr [ %.049.i.us, %4 ], [ %i.cj, %bb.c ] ; 2 uses
  %.pn67.i.us = phi ptr [ %.045.i.us, %4 ], [ %1, %bb.c ] ; 2 uses
  %.045.i.us = getelementptr inbounds nuw i8, ptr %.pn67.i.us, i64 8 ; 8 uses
  %.049.i.us = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 8 ; 5 uses
  %i.cs = icmp ult ptr %.045.i.us, %i.cd
  br i1 %i.cs, label %4, label %.loopexit.i.loopexit.us

4:                                                ; preds = %.preheader.i.us
  %.049.val.i.us = load i64, ptr %.049.i.us, align 1, !tbaa !24 ; 2 uses
  %.045.val.i.us = load i64, ptr %.045.i.us, align 1, !tbaa !24 ; 2 uses
  %.not59.i.us = icmp eq i64 %.049.val.i.us, %.045.val.i.us
  br i1 %.not59.i.us, label %.preheader.i.us, label %.thread63.i.us

bb.e:                                             ; preds = %.loopexit.i.loopexit.us
  %.251.val.i.us = load i32, ptr %.049.i.us, align 1, !tbaa !3
  %.247.val.i.us = load i32, ptr %.045.i.us, align 1, !tbaa !3
  %i.ct = icmp eq i32 %.251.val.i.us, %.247.val.i.us
  br i1 %i.ct, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn67.i.us, i64 12
  %i.cv = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.loopexit.i.loopexit.us
  %.352.i.us = phi ptr [ %i.cv, %bb.f ], [ %.049.i.us, %bb.e ], [ %.049.i.us, %.loopexit.i.loopexit.us ] ; 4 uses
  %.348.i.us = phi ptr [ %i.cu, %bb.f ], [ %.045.i.us, %bb.e ], [ %.045.i.us, %.loopexit.i.loopexit.us ] ; 5 uses
  %i.cw = icmp ult ptr %.348.i.us, %i.cg
  br i1 %i.cw, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.352.val.i.us = load i16, ptr %.352.i.us, align 1, !tbaa !43
  %.348.val.i.us = load i16, ptr %.348.i.us, align 1, !tbaa !43
  %i.cx = icmp eq i16 %.352.val.i.us, %.348.val.i.us
  br i1 %i.cx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cy = getelementptr inbounds nuw i8, ptr %.348.i.us, i64 2
  %i.cz = getelementptr inbounds nuw i8, ptr %.352.i.us, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.453.i.us = phi ptr [ %i.cz, %bb.i ], [ %.352.i.us, %bb.h ], [ %.352.i.us, %bb.g ]
  %.4.i.us = phi ptr [ %i.cy, %bb.i ], [ %.348.i.us, %bb.h ], [ %.348.i.us, %bb.g ] ; 4 uses
  %i.da = icmp ult ptr %.4.i.us, %2
  br i1 %i.da, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.db = load i8, ptr %.453.i.us, align 1, !tbaa !36
  %i.dc = load i8, ptr %.4.i.us, align 1, !tbaa !36
  %i.dd = icmp eq i8 %i.db, %i.dc
  %spec.select.idx.i.us = zext i1 %i.dd to i64
  %spec.select.i.us = getelementptr inbounds nuw i8, ptr %.4.i.us, i64 %spec.select.idx.i.us
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.5.i.us = phi ptr [ %.4.i.us, %bb.j ], [ %spec.select.i.us, %bb.k ]
  %i.de = ptrtoint ptr %.5.i.us to i64
  %i.df = sub i64 %i.de, %i.j
  br label %ZSTD_count.exit.us

.thread63.i.us:                                   ; preds = %4
  %i.dg = xor i64 %.045.val.i.us, %.049.val.i.us
  %i.dh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dg, i1 true)
  %i.di = lshr i64 %i.dh, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %.045.i.us, i64 %i.di
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.dk, %i.j
  br label %ZSTD_count.exit.us

ZSTD_count.exit.us:                               ; preds = %.thread63.i.us, %bb.l, %bb.d
  %.2154.i.us = phi i64 [ %i.cr, %bb.d ], [ %i.dl, %.thread63.i.us ], [ %i.df, %bb.l ] ; 4 uses
  %i.dm = icmp ugt i64 %.2154.i.us, %.0146.i19.us
  br i1 %i.dm, label %bb.m, label %ZSTD_count.exit.thread.us

bb.m:                                             ; preds = %ZSTD_count.exit.us
  %i.dn = sub i32 %i.ch, %.0148.i21.us
  %i.do = zext i32 %i.dn to i64
  store i64 %i.do, ptr %3, align 8, !tbaa !24
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %.2154.i.us
  %i.dq = icmp eq ptr %i.dp, %2
  br i1 %i.dq, label %ZSTD_HcFindBestMatch.exit, label %ZSTD_count.exit.thread.us

ZSTD_count.exit.thread.us:                        ; preds = %bb.m, %ZSTD_count.exit.us, %.lr.ph22.split.us
  %.1147.i.us = phi i64 [ %.2154.i.us, %bb.m ], [ %.0146.i19.us, %ZSTD_count.exit.us ], [ %.0146.i19.us, %.lr.ph22.split.us ] ; 3 uses
  %.not160.i.us = icmp ugt i32 %.0148.i21.us, %i.y
  br i1 %.not160.i.us, label %bb.n, label %ZSTD_HcFindBestMatch.exit

bb.n:                                             ; preds = %ZSTD_count.exit.thread.us
  %i.dr = and i32 %.0148.i21.us, %i.g
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ds
  %i.du = add i32 %.0.i20.us, -1                  ; 2 uses
  %.0148.i.us = load i32, ptr %i.dt, align 4, !tbaa !3 ; 2 uses
  %i.dv = icmp uge i32 %.0148.i.us, %i.x
  %i.dw = icmp ne i32 %i.du, 0
  %i.dx = and i1 %i.dw, %i.dv
  br i1 %i.dx, label %.lr.ph22.split.us, label %ZSTD_HcFindBestMatch.exit, !llvm.loop !181

.loopexit.i.loopexit.us:                          ; preds = %.preheader.i.us
  %i.dy = icmp ult ptr %.045.i.us, %i.cf
  br i1 %i.dy, label %bb.e, label %bb.g

.lr.ph22.split:                                   ; preds = %.lr.ph22
  %i.dz = icmp ult ptr %1, %i.cf
  br i1 %i.dz, label %.lr.ph22.split.split.us, label %.lr.ph22.split.split

.lr.ph22.split.split.us:                          ; preds = %.lr.ph22.split, %bb.t
  %.0148.i21.us28 = phi i32 [ %.0148.i.us50, %bb.t ], [ %.0148.i18, %.lr.ph22.split ] ; 4 uses
  %.0.i20.us29 = phi i32 [ %i.ez, %bb.t ], [ %i.ab, %.lr.ph22.split ]
  %.0146.i19.us30 = phi i64 [ %.1147.i.us48, %bb.t ], [ 3, %.lr.ph22.split ] ; 5 uses
  %i.ea = zext i32 %.0148.i21.us28 to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ea ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.0146.i19.us30
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -3
  %.val4.us31 = load i32, ptr %i.ed, align 1, !tbaa !3
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 %.0146.i19.us30
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -3
  %.val.us32 = load i32, ptr %i.ef, align 1, !tbaa !3
  %i.eg = icmp eq i32 %.val4.us31, %.val.us32
  br i1 %i.eg, label %.loopexit.i.us33, label %ZSTD_count.exit.thread.us47

.loopexit.i.us33:                                 ; preds = %.lr.ph22.split.split.us
  %.251.val.i.us34 = load i32, ptr %i.eb, align 1, !tbaa !3
  %.247.val.i.us35 = load i32, ptr %1, align 1, !tbaa !3
  %i.eh = icmp eq i32 %.251.val.i.us34, %.247.val.i.us35
  %spec.select.idx = select i1 %i.eh, i64 4, i64 0 ; 2 uses
  %spec.select = getelementptr inbounds nuw i8, ptr %i.eb, i64 %spec.select.idx ; 4 uses
  %spec.select58 = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx ; 5 uses
  %i.ei = icmp ult ptr %spec.select58, %i.cg
  br i1 %i.ei, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.loopexit.i.us33
  %.352.val.i.us38 = load i16, ptr %spec.select, align 1, !tbaa !43
  %.348.val.i.us39 = load i16, ptr %spec.select58, align 1, !tbaa !43
  %i.ej = icmp eq i16 %.352.val.i.us38, %.348.val.i.us39
  br i1 %i.ej, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ek = getelementptr inbounds nuw i8, ptr %spec.select58, i64 2
  %i.el = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.loopexit.i.us33
  %.453.i.us40 = phi ptr [ %i.el, %bb.p ], [ %spec.select, %bb.o ], [ %spec.select, %.loopexit.i.us33 ]
  %.4.i.us41 = phi ptr [ %i.ek, %bb.p ], [ %spec.select58, %bb.o ], [ %spec.select58, %.loopexit.i.us33 ] ; 4 uses
  %i.em = icmp ult ptr %.4.i.us41, %2
  br i1 %i.em, label %bb.r, label %ZSTD_count.exit.us44

bb.r:                                             ; preds = %bb.q
  %i.en = load i8, ptr %.453.i.us40, align 1, !tbaa !36
  %i.eo = load i8, ptr %.4.i.us41, align 1, !tbaa !36
  %i.ep = icmp eq i8 %i.en, %i.eo
  %spec.select.idx.i.us42 = zext i1 %i.ep to i64
  %spec.select.i.us43 = getelementptr inbounds nuw i8, ptr %.4.i.us41, i64 %spec.select.idx.i.us42
  br label %ZSTD_count.exit.us44

ZSTD_count.exit.us44:                             ; preds = %bb.r, %bb.q
  %.5.i.us45 = phi ptr [ %.4.i.us41, %bb.q ], [ %spec.select.i.us43, %bb.r ] ; 2 uses
  %i.eq = ptrtoint ptr %.5.i.us45 to i64
  %i.er = sub i64 %i.eq, %i.j                     ; 3 uses
  %i.es = icmp ugt i64 %i.er, %.0146.i19.us30
  br i1 %i.es, label %bb.s, label %ZSTD_count.exit.thread.us47

bb.s:                                             ; preds = %ZSTD_count.exit.us44
  %i.et = sub i32 %i.ch, %.0148.i21.us28
  %i.eu = zext i32 %i.et to i64
  store i64 %i.eu, ptr %3, align 8, !tbaa !24
  %i.ev = icmp eq ptr %.5.i.us45, %2
  br i1 %i.ev, label %ZSTD_HcFindBestMatch.exit, label %ZSTD_count.exit.thread.us47

ZSTD_count.exit.thread.us47:                      ; preds = %bb.s, %ZSTD_count.exit.us44, %.lr.ph22.split.split.us
  %.1147.i.us48 = phi i64 [ %i.er, %bb.s ], [ %.0146.i19.us30, %ZSTD_count.exit.us44 ], [ %.0146.i19.us30, %.lr.ph22.split.split.us ] ; 3 uses
  %.not160.i.us49 = icmp ugt i32 %.0148.i21.us28, %i.y
  br i1 %.not160.i.us49, label %bb.t, label %ZSTD_HcFindBestMatch.exit

bb.t:                                             ; preds = %ZSTD_count.exit.thread.us47
  %i.ew = and i32 %.0148.i21.us28, %i.g
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ex
  %i.ez = add i32 %.0.i20.us29, -1                ; 2 uses
  %.0148.i.us50 = load i32, ptr %i.ey, align 4, !tbaa !3 ; 2 uses
  %i.fa = icmp uge i32 %.0148.i.us50, %i.x
  %i.fb = icmp ne i32 %i.ez, 0
  %i.fc = and i1 %i.fb, %i.fa
  br i1 %i.fc, label %.lr.ph22.split.split.us, label %ZSTD_HcFindBestMatch.exit, !llvm.loop !181

.lr.ph22.split.split:                             ; preds = %.lr.ph22.split
  %i.fd = icmp ult ptr %1, %i.cg
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph22.split.split, %bb.z
  %.0148.i21 = phi i32 [ %.0148.i18, %.lr.ph22.split.split ], [ %.0148.i, %bb.z ] ; 4 uses
  %.0.i20 = phi i32 [ %i.ab, %.lr.ph22.split.split ], [ %i.fz, %bb.z ]
  %.0146.i19 = phi i64 [ 3, %.lr.ph22.split.split ], [ %.1147.i, %bb.z ] ; 5 uses
  %i.fe = zext i32 %.0148.i21 to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fe ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %.0146.i19
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -3
  %.val4 = load i32, ptr %i.fh, align 1, !tbaa !3
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 %.0146.i19
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -3
  %.val = load i32, ptr %i.fj, align 1, !tbaa !3
  %i.fk = icmp eq i32 %.val4, %.val
  br i1 %i.fk, label %.loopexit.i, label %ZSTD_count.exit.thread

.loopexit.i:                                      ; preds = %bb.u
  br i1 %i.fd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit.i
  %.352.val.i = load i16, ptr %i.ff, align 1, !tbaa !43
  %.348.val.i = load i16, ptr %1, align 1, !tbaa !43
  %i.fl = icmp eq i16 %.352.val.i, %.348.val.i
  %spec.select59.idx = select i1 %i.fl, i64 2, i64 0 ; 2 uses
  %spec.select59 = getelementptr inbounds nuw i8, ptr %i.ff, i64 %spec.select59.idx
  %spec.select60 = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select59.idx
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.loopexit.i
  %.453.i = phi ptr [ %i.ff, %.loopexit.i ], [ %spec.select59, %bb.v ]
  %.4.i = phi ptr [ %1, %.loopexit.i ], [ %spec.select60, %bb.v ] ; 4 uses
  %i.fm = icmp ult ptr %.4.i, %2
  br i1 %i.fm, label %bb.x, label %ZSTD_count.exit

bb.x:                                             ; preds = %bb.w
  %i.fn = load i8, ptr %.453.i, align 1, !tbaa !36
  %i.fo = load i8, ptr %.4.i, align 1, !tbaa !36
  %i.fp = icmp eq i8 %i.fn, %i.fo
  %spec.select.idx.i = zext i1 %i.fp to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.4.i, i64 %spec.select.idx.i
  br label %ZSTD_count.exit

ZSTD_count.exit:                                  ; preds = %bb.x, %bb.w
  %.5.i = phi ptr [ %.4.i, %bb.w ], [ %spec.select.i, %bb.x ] ; 2 uses
  %i.fq = ptrtoint ptr %.5.i to i64
  %i.fr = sub i64 %i.fq, %i.j                     ; 3 uses
  %i.fs = icmp ugt i64 %i.fr, %.0146.i19
  br i1 %i.fs, label %bb.y, label %ZSTD_count.exit.thread

bb.y:                                             ; preds = %ZSTD_count.exit
  %i.ft = sub i32 %i.ch, %.0148.i21
  %i.fu = zext i32 %i.ft to i64
  store i64 %i.fu, ptr %3, align 8, !tbaa !24
  %i.fv = icmp eq ptr %.5.i, %2
  br i1 %i.fv, label %ZSTD_HcFindBestMatch.exit, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.u, %bb.y, %ZSTD_count.exit
  %.1147.i = phi i64 [ %i.fr, %bb.y ], [ %.0146.i19, %ZSTD_count.exit ], [ %.0146.i19, %bb.u ] ; 3 uses
  %.not160.i = icmp ugt i32 %.0148.i21, %i.y
  br i1 %.not160.i, label %bb.z, label %ZSTD_HcFindBestMatch.exit

bb.z:                                             ; preds = %ZSTD_count.exit.thread
  %i.fw = and i32 %.0148.i21, %i.g
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fx
  %i.fz = add i32 %.0.i20, -1                     ; 2 uses
  %.0148.i = load i32, ptr %i.fy, align 4, !tbaa !3 ; 2 uses
  %i.ga = icmp uge i32 %.0148.i, %i.x
  %i.gb = icmp ne i32 %i.fz, 0
  %i.gc = and i1 %i.gb, %i.ga
  br i1 %i.gc, label %bb.u, label %ZSTD_HcFindBestMatch.exit, !llvm.loop !181
end_hunk_0
begin_hunk_1_@ZSTD_RowFindBestMatch_extDict_6_6:bb.a
  %exitcond62.not = icmp eq i64 %i.ko, %.0255.i.lcssa
  br i1 %exitcond62.not, label %ZSTD_RowFindBestMatch.exit, label %bb.m, !llvm.loop !186

ZSTD_RowFindBestMatch.exit:                       ; preds = %ZSTD_count.exit.thread, %bb.ac, %._crit_edge
  %.3242.i = phi i64 [ 3, %._crit_edge ], [ %.2266.i, %bb.ac ], [ %.2241.i.ph, %ZSTD_count.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i64 %.3242.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_HcFindBestMatch_dictMatchState_4(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32   ; 2 uses
  %i.f = shl nuw i32 1, %i.e                      ; 2 uses
  %i.g = add i32 %i.f, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7    ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !38   ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.n = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = trunc i64 %i.p to i32                    ; 7 uses
  %i.r = load i32, ptr %i.a, align 8, !tbaa !179
  %i.s = shl nuw i32 1, %i.r                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !148  ; 2 uses
  %i.v = sub i32 %i.q, %i.u
  %i.w = icmp ugt i32 %i.v, %i.s
  %i.x = sub i32 %i.q, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !40
  %.not.i = icmp eq i32 %i.z, 0
  %i.aa = select i1 %.not.i, i1 %i.w, i1 false
  %i.ab = select i1 %i.aa, i32 %i.x, i32 %i.u     ; 3 uses
  %i.ac = tail call i32 @llvm.usub.sat.i32(i32 %i.q, i32 %i.f) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !180
  %i.af = shl nuw i32 1, %i.ae                    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !67 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !17 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.an = load i32, ptr %i.am, align 8, !tbaa !31
  %notmask.i.i = shl nsw i32 -1, %i.e
  %i.ao = xor i32 %notmask.i.i, -1                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !20 ; 6 uses
  %i.ar = sub i32 32, %i.an                       ; 5 uses
  %.fr59 = freeze i32 %i.aj
  %.not.i.i = icmp eq i32 %.fr59, 0
  %i.as = icmp ult i32 %i.aq, %i.q                ; 2 uses
  br i1 %.not.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %i.as, label %.lr.ph.preheader, label %.split31.us

.lr.ph.preheader:                                 ; preds = %.split.us
  %i.at = zext i32 %i.aq to i64                   ; 6 uses
  %i.au = and i64 %i.p, 4294967295                ; 2 uses
  %i.av = zext nneg i32 %i.ao to i64              ; 3 uses
  %i.aw = sub i64 %i.p, %i.at
  %.neg = add nuw nsw i64 %i.at, 1
  %xtraiter = and i64 %i.aw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.at
  %.val7.us.prol = load i32, ptr %i.ax, align 1, !tbaa !3
  %i.ay = mul i32 %.val7.us.prol, -1640531535
  %i.az = lshr i32 %i.ay, %i.ar
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = and i64 %i.at, %i.av
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bd
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !3
  store i32 %i.aq, ptr %i.bb, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %i.at, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.at, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bf = icmp eq i64 %i.au, %.neg
  br i1 %i.bf, label %.split31.us, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %.val7.us = load i32, ptr %i.bg, align 1, !tbaa !3
  %i.bh = mul i32 %.val7.us, -1640531535
  %i.bi = lshr i32 %i.bh, %i.ar
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = trunc nuw i64 %indvars.iv to i32
  %i.bn = and i64 %indvars.iv, %i.av
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bn
  store i32 %i.bl, ptr %i.bo, align 4, !tbaa !3
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next
  %.val7.us.1 = load i32, ptr %i.bp, align 1, !tbaa !3
  %i.bq = mul i32 %.val7.us.1, -1640531535
  %i.br = lshr i32 %i.bq, %i.ar
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = trunc nuw i64 %indvars.iv.next to i32
  %i.bw = and i64 %indvars.iv.next, %i.av
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bw
  store i32 %i.bu, ptr %i.bx, align 4, !tbaa !3
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.by = icmp samesign ult i64 %indvars.iv.next.1, %i.au
  br i1 %i.by, label %.lr.ph, label %.split31.us

.split:                                           ; preds = %bb.a
  br i1 %i.as, label %bb.b, label %.split31.us

bb.b:                                             ; preds = %.split
  %i.bz = zext i32 %i.aq to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bz
  %.val7 = load i32, ptr %i.ca, align 1, !tbaa !3
  %i.cb = mul i32 %.val7, -1640531535
  %i.cc = lshr i32 %i.cb, %i.ar
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = and i32 %i.aq, %i.ao
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ch
  store i32 %i.cf, ptr %i.ci, align 4, !tbaa !3
  store i32 %i.aq, ptr %i.ce, align 4, !tbaa !3
  br label %.split31.us

.split31.us:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.split, %bb.b, %.split.us
  store i32 %i.q, ptr %i.ap, align 4, !tbaa !20
  %.val9 = load i32, ptr %1, align 1, !tbaa !3    ; 3 uses
  %i.cj = mul i32 %.val9, -1640531535             ; 2 uses
  %i.ck = lshr i32 %i.cj, %i.ar
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cl
  %.0148.i33 = load i32, ptr %i.cm, align 4, !tbaa !3 ; 3 uses
  %.not = icmp ult i32 %.0148.i33, %i.ab
  br i1 %.not, label %.thread, label %.lr.ph37

.lr.ph37:                                         ; preds = %.split31.us
  %i.cn = getelementptr i8, ptr %2, i64 -7        ; 2 uses
  %i.co = icmp ult ptr %1, %i.cn
  %i.cp = getelementptr inbounds i8, ptr %2, i64 -3 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %2, i64 -1 ; 2 uses
  %i.cr = add i32 %i.q, 3                         ; 2 uses
  br i1 %i.co, label %.lr.ph37.split.us, label %.lr.ph37.split

.lr.ph37.split.us:                                ; preds = %.lr.ph37, %bb.n
  %.0148.i36.us = phi i32 [ %.0148.i.us, %bb.n ], [ %.0148.i33, %.lr.ph37 ] ; 4 uses
  %.0.i35.us = phi i32 [ %i.ee, %bb.n ], [ %i.af, %.lr.ph37 ] ; 3 uses
  %.0146.i34.us = phi i64 [ %.1147.i.us, %bb.n ], [ 3, %.lr.ph37 ] ; 5 uses
  %i.cs = zext i32 %.0148.i36.us to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cs ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.0146.i34.us
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -3
  %.val4.us = load i32, ptr %i.cv, align 1, !tbaa !3
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %.0146.i34.us
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -3
  %.val.us = load i32, ptr %i.cx, align 1, !tbaa !3
  %i.cy = icmp eq i32 %.val4.us, %.val.us
  br i1 %i.cy, label %bb.c, label %ZSTD_count.exit.thread.us

bb.c:                                             ; preds = %.lr.ph37.split.us
  %.val60.i.us = load i64, ptr %i.ct, align 1, !tbaa !24 ; 2 uses
  %.val.i.us = load i64, ptr %1, align 1, !tbaa !24 ; 2 uses
  %.not.i13.us = icmp eq i64 %.val60.i.us, %.val.i.us
  br i1 %.not.i13.us, label %.preheader.i.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cz = xor i64 %.val.i.us, %.val60.i.us
  %i.da = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.cz, i1 true)
  %i.db = lshr i64 %i.da, 3
  br label %ZSTD_count.exit.us

.preheader.i.us:                                  ; preds = %bb.c, %4
  %.pn.i.us = phi ptr [ %.049.i.us, %4 ], [ %i.ct, %bb.c ] ; 2 uses
  %.pn67.i.us = phi ptr [ %.045.i.us, %4 ], [ %1, %bb.c ] ; 2 uses
  %.045.i.us = getelementptr inbounds nuw i8, ptr %.pn67.i.us, i64 8 ; 8 uses
  %.049.i.us = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 8 ; 5 uses
  %i.dc = icmp ult ptr %.045.i.us, %i.cn
  br i1 %i.dc, label %4, label %.loopexit.i.loopexit.us

4:                                                ; preds = %.preheader.i.us
  %.049.val.i.us = load i64, ptr %.049.i.us, align 1, !tbaa !24 ; 2 uses
  %.045.val.i.us = load i64, ptr %.045.i.us, align 1, !tbaa !24 ; 2 uses
  %.not59.i.us = icmp eq i64 %.049.val.i.us, %.045.val.i.us
  br i1 %.not59.i.us, label %.preheader.i.us, label %.thread63.i.us

bb.e:                                             ; preds = %.loopexit.i.loopexit.us
  %.251.val.i.us = load i32, ptr %.049.i.us, align 1, !tbaa !3
  %.247.val.i.us = load i32, ptr %.045.i.us, align 1, !tbaa !3
  %i.dd = icmp eq i32 %.251.val.i.us, %.247.val.i.us
  br i1 %i.dd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.de = getelementptr inbounds nuw i8, ptr %.pn67.i.us, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.loopexit.i.loopexit.us
  %.352.i.us = phi ptr [ %i.df, %bb.f ], [ %.049.i.us, %bb.e ], [ %.049.i.us, %.loopexit.i.loopexit.us ] ; 4 uses
  %.348.i.us = phi ptr [ %i.de, %bb.f ], [ %.045.i.us, %bb.e ], [ %.045.i.us, %.loopexit.i.loopexit.us ] ; 5 uses
  %i.dg = icmp ult ptr %.348.i.us, %i.cq
  br i1 %i.dg, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.352.val.i.us = load i16, ptr %.352.i.us, align 1, !tbaa !43
  %.348.val.i.us = load i16, ptr %.348.i.us, align 1, !tbaa !43
  %i.dh = icmp eq i16 %.352.val.i.us, %.348.val.i.us
  br i1 %i.dh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.di = getelementptr inbounds nuw i8, ptr %.348.i.us, i64 2
  %i.dj = getelementptr inbounds nuw i8, ptr %.352.i.us, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.453.i.us = phi ptr [ %i.dj, %bb.i ], [ %.352.i.us, %bb.h ], [ %.352.i.us, %bb.g ]
  %.4.i10.us = phi ptr [ %i.di, %bb.i ], [ %.348.i.us, %bb.h ], [ %.348.i.us, %bb.g ] ; 4 uses
  %i.dk = icmp ult ptr %.4.i10.us, %2
  br i1 %i.dk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dl = load i8, ptr %.453.i.us, align 1, !tbaa !36
  %i.dm = load i8, ptr %.4.i10.us, align 1, !tbaa !36
  %i.dn = icmp eq i8 %i.dl, %i.dm
  %spec.select.idx.i.us = zext i1 %i.dn to i64
  %spec.select.i.us = getelementptr inbounds nuw i8, ptr %.4.i10.us, i64 %spec.select.idx.i.us
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.5.i11.us = phi ptr [ %.4.i10.us, %bb.j ], [ %spec.select.i.us, %bb.k ]
  %i.do = ptrtoint ptr %.5.i11.us to i64
  %i.dp = sub i64 %i.do, %i.n
  br label %ZSTD_count.exit.us

.thread63.i.us:                                   ; preds = %4
  %i.dq = xor i64 %.045.val.i.us, %.049.val.i.us
  %i.dr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dq, i1 true)
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %.045.i.us, i64 %i.ds
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.du, %i.n
  br label %ZSTD_count.exit.us

ZSTD_count.exit.us:                               ; preds = %.thread63.i.us, %bb.l, %bb.d
  %.2154.i.us = phi i64 [ %i.db, %bb.d ], [ %i.dv, %.thread63.i.us ], [ %i.dp, %bb.l ] ; 4 uses
  %i.dw = icmp ugt i64 %.2154.i.us, %.0146.i34.us
  br i1 %i.dw, label %bb.m, label %ZSTD_count.exit.thread.us

bb.m:                                             ; preds = %ZSTD_count.exit.us
  %i.dx = sub i32 %i.cr, %.0148.i36.us
  %i.dy = zext i32 %i.dx to i64
  store i64 %i.dy, ptr %3, align 8, !tbaa !24
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %.2154.i.us
  %i.ea = icmp eq ptr %i.dz, %2
  br i1 %i.ea, label %.thread, label %ZSTD_count.exit.thread.us

ZSTD_count.exit.thread.us:                        ; preds = %bb.m, %ZSTD_count.exit.us, %.lr.ph37.split.us
  %.1147.i.us = phi i64 [ %.2154.i.us, %bb.m ], [ %.0146.i34.us, %ZSTD_count.exit.us ], [ %.0146.i34.us, %.lr.ph37.split.us ] ; 3 uses
  %.not160.i.us = icmp ugt i32 %.0148.i36.us, %i.ac
  br i1 %.not160.i.us, label %bb.n, label %.thread

bb.n:                                             ; preds = %ZSTD_count.exit.thread.us
  %i.eb = and i32 %.0148.i36.us, %i.g
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ec
  %i.ee = add i32 %.0.i35.us, -1                  ; 3 uses
  %.0148.i.us = load i32, ptr %i.ed, align 4, !tbaa !3 ; 2 uses
  %i.ef = icmp uge i32 %.0148.i.us, %i.ab
  %i.eg = icmp ne i32 %i.ee, 0
  %i.eh = and i1 %i.eg, %i.ef
  br i1 %i.eh, label %.lr.ph37.split.us, label %.thread, !llvm.loop !181

.loopexit.i.loopexit.us:                          ; preds = %.preheader.i.us
  %i.ei = icmp ult ptr %.045.i.us, %i.cp
  br i1 %i.ei, label %bb.e, label %bb.g

.lr.ph37.split:                                   ; preds = %.lr.ph37
  %i.ej = icmp ult ptr %1, %i.cp
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph37.split, %bb.w
  %.0148.i36 = phi i32 [ %.0148.i33, %.lr.ph37.split ], [ %.0148.i, %bb.w ] ; 4 uses
  %.0.i35 = phi i32 [ %i.af, %.lr.ph37.split ], [ %i.fj, %bb.w ] ; 3 uses
  %.0146.i34 = phi i64 [ 3, %.lr.ph37.split ], [ %.1147.i, %bb.w ] ; 5 uses
  %i.ek = zext i32 %.0148.i36 to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ek ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %.0146.i34
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -3
  %.val4 = load i32, ptr %i.en, align 1, !tbaa !3
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 %.0146.i34
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -3
  %.val = load i32, ptr %i.ep, align 1, !tbaa !3
  %i.eq = icmp eq i32 %.val4, %.val
  br i1 %i.eq, label %.loopexit.i, label %ZSTD_count.exit.thread

.loopexit.i:                                      ; preds = %bb.o
  br i1 %i.ej, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit.i
  %.251.val.i = load i32, ptr %i.el, align 1, !tbaa !3
  %i.er = icmp eq i32 %.251.val.i, %.val9
  %spec.select.idx = select i1 %i.er, i64 4, i64 0 ; 2 uses
  %spec.select = getelementptr inbounds nuw i8, ptr %i.el, i64 %spec.select.idx
  %spec.select58 = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit.i
  %.352.i = phi ptr [ %i.el, %.loopexit.i ], [ %spec.select, %bb.p ] ; 4 uses
  %.348.i = phi ptr [ %1, %.loopexit.i ], [ %spec.select58, %bb.p ] ; 5 uses
  %i.es = icmp ult ptr %.348.i, %i.cq
  br i1 %i.es, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !43
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !43
  %i.et = icmp eq i16 %.352.val.i, %.348.val.i
  br i1 %i.et, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eu = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  %i.ev = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.453.i = phi ptr [ %i.ev, %bb.s ], [ %.352.i, %bb.r ], [ %.352.i, %bb.q ]
  %.4.i10 = phi ptr [ %i.eu, %bb.s ], [ %.348.i, %bb.r ], [ %.348.i, %bb.q ] ; 4 uses
  %i.ew = icmp ult ptr %.4.i10, %2
  br i1 %i.ew, label %bb.u, label %ZSTD_count.exit

bb.u:                                             ; preds = %bb.t
  %i.ex = load i8, ptr %.453.i, align 1, !tbaa !36
  %i.ey = load i8, ptr %.4.i10, align 1, !tbaa !36
  %i.ez = icmp eq i8 %i.ex, %i.ey
  %spec.select.idx.i = zext i1 %i.ez to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.4.i10, i64 %spec.select.idx.i
  br label %ZSTD_count.exit

ZSTD_count.exit:                                  ; preds = %bb.u, %bb.t
  %.5.i11 = phi ptr [ %.4.i10, %bb.t ], [ %spec.select.i, %bb.u ] ; 2 uses
  %i.fa = ptrtoint ptr %.5.i11 to i64
  %i.fb = sub i64 %i.fa, %i.n                     ; 3 uses
  %i.fc = icmp ugt i64 %i.fb, %.0146.i34
  br i1 %i.fc, label %bb.v, label %ZSTD_count.exit.thread

bb.v:                                             ; preds = %ZSTD_count.exit
  %i.fd = sub i32 %i.cr, %.0148.i36
  %i.fe = zext i32 %i.fd to i64
  store i64 %i.fe, ptr %3, align 8, !tbaa !24
  %i.ff = icmp eq ptr %.5.i11, %2
  br i1 %i.ff, label %.thread, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.o, %bb.v, %ZSTD_count.exit
  %.1147.i = phi i64 [ %i.fb, %bb.v ], [ %.0146.i34, %ZSTD_count.exit ], [ %.0146.i34, %bb.o ] ; 3 uses
  %.not160.i = icmp ugt i32 %.0148.i36, %i.ac
  br i1 %.not160.i, label %bb.w, label %.thread

bb.w:                                             ; preds = %ZSTD_count.exit.thread
  %i.fg = and i32 %.0148.i36, %i.g
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fh
  %i.fj = add i32 %.0.i35, -1                     ; 3 uses
  %.0148.i = load i32, ptr %i.fi, align 4, !tbaa !3 ; 2 uses
  %i.fk = icmp uge i32 %.0148.i, %i.ab
  %i.fl = icmp ne i32 %i.fj, 0
  %i.fm = and i1 %i.fl, %i.fk
  br i1 %i.fm, label %bb.o, label %.thread, !llvm.loop !181

.thread:                                          ; preds = %bb.w, %bb.v, %ZSTD_count.exit.thread, %bb.n, %bb.m, %ZSTD_count.exit.thread.us, %.split31.us
  %.0.i.lcssa = phi i32 [ %i.af, %.split31.us ], [ %.0.i35.us, %ZSTD_count.exit.thread.us ], [ %.0.i35.us, %bb.m ], [ %i.ee, %bb.n ], [ %.0.i35, %ZSTD_count.exit.thread ], [ %.0.i35, %bb.v ], [ %i.fj, %bb.w ] ; 2 uses
  %.3.i = phi i64 [ 3, %.split31.us ], [ %.1147.i.us, %ZSTD_count.exit.thread.us ], [ %.2154.i.us, %bb.m ], [ %.1147.i.us, %bb.n ], [ %.1147.i, %ZSTD_count.exit.thread ], [ %i.fb, %bb.v ], [ %.1147.i, %bb.w ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ah, i64 260
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !19
  %i.fr = shl nuw i32 1, %i.fq                    ; 2 uses
  %i.fs = add i32 %i.fr, -1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !38 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !7  ; 2 uses
  %i.fx = load ptr, ptr %i.ah, align 8, !tbaa !68 ; 2 uses
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fw to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = trunc i64 %i.ga to i32                  ; 2 uses
  %i.gc = tail call i32 @llvm.usub.sat.i32(i32 %i.gb, i32 %i.fr)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !17
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ah, i64 264
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !22
  %i.gh = sub i32 32, %i.gg
  %i.gi = lshr i32 %i.cj, %i.gh
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gj
  %.2150.i49 = load i32, ptr %i.gk, align 4, !tbaa !3 ; 2 uses
  %i.gl = icmp uge i32 %.2150.i49, %i.fu
  %i.gm = icmp ne i32 %.0.i.lcssa, 0
  %i.gn = and i1 %i.gm, %i.gl
  br i1 %i.gn, label %.lr.ph53, label %ZSTD_HcFindBestMatch.exit

.lr.ph53:                                         ; preds = %.thread
  %invariant.op = add i32 %i.q, %i.gb
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gp = add i32 %invariant.op, 3
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph53, %bb.aa
  %.2150.i52 = phi i32 [ %.2150.i49, %.lr.ph53 ], [ %.2150.i, %bb.aa ] ; 4 uses
  %.1.i51 = phi i32 [ %.0.i.lcssa, %.lr.ph53 ], [ %i.hf, %bb.aa ]
  %.4.i50 = phi i64 [ %.3.i, %.lr.ph53 ], [ %.5.i, %bb.aa ] ; 3 uses
  %i.gq = zext i32 %.2150.i52 to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gq ; 2 uses
  %.val6 = load i32, ptr %i.gr, align 1, !tbaa !3
  %i.gs = icmp eq i32 %.val6, %.val9
  br i1 %i.gs, label %bb.y, label %.thread18

bb.y:                                             ; preds = %bb.x
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gu = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.go, ptr noundef nonnull %i.gt, ptr noundef %2, ptr noundef %i.fx, ptr noundef %i.m)
  %i.gv = add i64 %i.gu, 4                        ; 4 uses
  %i.gw = icmp ugt i64 %i.gv, %.4.i50
  br i1 %i.gw, label %bb.z, label %.thread18

bb.z:                                             ; preds = %bb.y
  %i.gx = add i32 %i.k, %.2150.i52
  %i.gy = sub i32 %i.gp, %i.gx
  %i.gz = zext i32 %i.gy to i64
  store i64 %i.gz, ptr %3, align 8, !tbaa !24
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 %i.gv
  %i.hb = icmp eq ptr %i.ha, %2
  br i1 %i.hb, label %ZSTD_HcFindBestMatch.exit, label %.thread18

.thread18:                                        ; preds = %bb.x, %bb.z, %bb.y
  %.5.i = phi i64 [ %i.gv, %bb.z ], [ %.4.i50, %bb.y ], [ %.4.i50, %bb.x ] ; 3 uses
end_hunk_1
begin_hunk_2_@ZSTD_HcFindBestMatch_dictMatchState_4:bb.a
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.hd
  %i.hf = add i32 %.1.i51, -1                     ; 2 uses
  %.2150.i = load i32, ptr %i.he, align 4, !tbaa !3 ; 2 uses
  %i.hg = icmp uge i32 %.2150.i, %i.fu
  %i.hh = icmp ne i32 %i.hf, 0
  %i.hi = and i1 %i.hh, %i.hg
  br i1 %i.hi, label %bb.x, label %ZSTD_HcFindBestMatch.exit, !llvm.loop !187

ZSTD_HcFindBestMatch.exit:                        ; preds = %bb.aa, %bb.z, %.thread18, %.thread
  %.8.i = phi i64 [ %.3.i, %.thread ], [ %i.gv, %bb.z ], [ %.5.i, %.thread18 ], [ %.5.i, %bb.aa ]
  ret i64 %.8.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_HcFindBestMatch_dictMatchState_5(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32   ; 2 uses
  %i.f = shl nuw i32 1, %i.e                      ; 2 uses
  %i.g = add i32 %i.f, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7    ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !38   ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.n = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = trunc i64 %i.p to i32                    ; 7 uses
  %i.r = load i32, ptr %i.a, align 8, !tbaa !179
  %i.s = shl nuw i32 1, %i.r                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !148  ; 2 uses
  %i.v = sub i32 %i.q, %i.u
  %i.w = icmp ugt i32 %i.v, %i.s
  %i.x = sub i32 %i.q, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !40
  %.not.i = icmp eq i32 %i.z, 0
  %i.aa = select i1 %.not.i, i1 %i.w, i1 false
  %i.ab = select i1 %i.aa, i32 %i.x, i32 %i.u     ; 3 uses
  %i.ac = tail call i32 @llvm.usub.sat.i32(i32 %i.q, i32 %i.f) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !180
  %i.af = shl nuw i32 1, %i.ae                    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !67 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !17 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.an = load i32, ptr %i.am, align 8, !tbaa !31
  %notmask.i.i = shl nsw i32 -1, %i.e
  %i.ao = xor i32 %notmask.i.i, -1                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !20 ; 6 uses
  %i.ar = sub i32 64, %i.an
  %i.as = zext nneg i32 %i.ar to i64              ; 5 uses
  %.fr59 = freeze i32 %i.aj
  %.not.i.i = icmp eq i32 %.fr59, 0
  %i.at = icmp ult i32 %i.aq, %i.q                ; 2 uses
  br i1 %.not.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %i.at, label %.lr.ph.preheader, label %.split31.us

.lr.ph.preheader:                                 ; preds = %.split.us
  %i.au = zext i32 %i.aq to i64                   ; 6 uses
  %i.av = and i64 %i.p, 4294967295                ; 2 uses
  %i.aw = zext nneg i32 %i.ao to i64              ; 3 uses
  %i.ax = sub i64 %i.p, %i.au
  %.neg = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.ax, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.au
  %.val7.us.prol = load i64, ptr %i.ay, align 1, !tbaa !24
  %i.az = mul i64 %.val7.us.prol, -3523014627271114752
  %i.ba = lshr i64 %i.az, %i.as
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = and i64 %i.au, %i.aw
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bd
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !3
  store i32 %i.aq, ptr %i.bb, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %i.au, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.au, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bf = icmp eq i64 %i.av, %.neg
  br i1 %i.bf, label %.split31.us, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %.val7.us = load i64, ptr %i.bg, align 1, !tbaa !24
  %i.bh = mul i64 %.val7.us, -3523014627271114752
  %i.bi = lshr i64 %i.bh, %i.as
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = trunc nuw i64 %indvars.iv to i32
  %i.bm = and i64 %indvars.iv, %i.aw
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bm
  store i32 %i.bk, ptr %i.bn, align 4, !tbaa !3
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next
  %.val7.us.1 = load i64, ptr %i.bo, align 1, !tbaa !24
  %i.bp = mul i64 %.val7.us.1, -3523014627271114752
  %i.bq = lshr i64 %i.bp, %i.as
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = trunc nuw i64 %indvars.iv.next to i32
  %i.bu = and i64 %indvars.iv.next, %i.aw
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bu
  store i32 %i.bs, ptr %i.bv, align 4, !tbaa !3
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bw = icmp samesign ult i64 %indvars.iv.next.1, %i.av
  br i1 %i.bw, label %.lr.ph, label %.split31.us

.split:                                           ; preds = %bb.a
  br i1 %i.at, label %bb.b, label %.split31.us

bb.b:                                             ; preds = %.split
  %i.bx = zext i32 %i.aq to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bx
  %.val7 = load i64, ptr %i.by, align 1, !tbaa !24
  %i.bz = mul i64 %.val7, -3523014627271114752
  %i.ca = lshr i64 %i.bz, %i.as
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = and i32 %i.aq, %i.ao
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ce
  store i32 %i.cc, ptr %i.cf, align 4, !tbaa !3
  store i32 %i.aq, ptr %i.cb, align 4, !tbaa !3
  br label %.split31.us

.split31.us:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.split, %bb.b, %.split.us
  store i32 %i.q, ptr %i.ap, align 4, !tbaa !20
  %.val9 = load i64, ptr %1, align 1, !tbaa !24
  %i.cg = mul i64 %.val9, -3523014627271114752
  %i.ch = lshr i64 %i.cg, %i.as
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ch
  %.0148.i33 = load i32, ptr %i.ci, align 4, !tbaa !3 ; 3 uses
  %.not = icmp ult i32 %.0148.i33, %i.ab
  br i1 %.not, label %.thread, label %.lr.ph37

.lr.ph37:                                         ; preds = %.split31.us
  %i.cj = getelementptr i8, ptr %2, i64 -7        ; 2 uses
  %i.ck = icmp ult ptr %1, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %2, i64 -3 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %2, i64 -1 ; 2 uses
  %i.cn = add i32 %i.q, 3                         ; 2 uses
  br i1 %i.ck, label %.lr.ph37.split.us, label %.lr.ph37.split

.lr.ph37.split.us:                                ; preds = %.lr.ph37, %bb.n
  %.0148.i36.us = phi i32 [ %.0148.i.us, %bb.n ], [ %.0148.i33, %.lr.ph37 ] ; 4 uses
  %.0.i35.us = phi i32 [ %i.ea, %bb.n ], [ %i.af, %.lr.ph37 ] ; 3 uses
  %.0146.i34.us = phi i64 [ %.1147.i.us, %bb.n ], [ 3, %.lr.ph37 ] ; 5 uses
  %i.co = zext i32 %.0148.i36.us to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.co ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.0146.i34.us
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -3
  %.val4.us = load i32, ptr %i.cr, align 1, !tbaa !3
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %.0146.i34.us
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -3
  %.val.us = load i32, ptr %i.ct, align 1, !tbaa !3
  %i.cu = icmp eq i32 %.val4.us, %.val.us
  br i1 %i.cu, label %bb.c, label %ZSTD_count.exit.thread.us

bb.c:                                             ; preds = %.lr.ph37.split.us
  %.val60.i.us = load i64, ptr %i.cp, align 1, !tbaa !24 ; 2 uses
  %.val.i.us = load i64, ptr %1, align 1, !tbaa !24 ; 2 uses
  %.not.i13.us = icmp eq i64 %.val60.i.us, %.val.i.us
  br i1 %.not.i13.us, label %.preheader.i.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cv = xor i64 %.val.i.us, %.val60.i.us
  %i.cw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.cv, i1 true)
  %i.cx = lshr i64 %i.cw, 3
  br label %ZSTD_count.exit.us

.preheader.i.us:                                  ; preds = %bb.c, %4
  %.pn.i.us = phi ptr [ %.049.i.us, %4 ], [ %i.cp, %bb.c ] ; 2 uses
  %.pn67.i.us = phi ptr [ %.045.i.us, %4 ], [ %1, %bb.c ] ; 2 uses
  %.045.i.us = getelementptr inbounds nuw i8, ptr %.pn67.i.us, i64 8 ; 8 uses
  %.049.i.us = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 8 ; 5 uses
  %i.cy = icmp ult ptr %.045.i.us, %i.cj
  br i1 %i.cy, label %4, label %.loopexit.i.loopexit.us

4:                                                ; preds = %.preheader.i.us
  %.049.val.i.us = load i64, ptr %.049.i.us, align 1, !tbaa !24 ; 2 uses
  %.045.val.i.us = load i64, ptr %.045.i.us, align 1, !tbaa !24 ; 2 uses
  %.not59.i.us = icmp eq i64 %.049.val.i.us, %.045.val.i.us
  br i1 %.not59.i.us, label %.preheader.i.us, label %.thread63.i.us

bb.e:                                             ; preds = %.loopexit.i.loopexit.us
  %.251.val.i.us = load i32, ptr %.049.i.us, align 1, !tbaa !3
  %.247.val.i.us = load i32, ptr %.045.i.us, align 1, !tbaa !3
  %i.cz = icmp eq i32 %.251.val.i.us, %.247.val.i.us
  br i1 %i.cz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.da = getelementptr inbounds nuw i8, ptr %.pn67.i.us, i64 12
  %i.db = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.loopexit.i.loopexit.us
  %.352.i.us = phi ptr [ %i.db, %bb.f ], [ %.049.i.us, %bb.e ], [ %.049.i.us, %.loopexit.i.loopexit.us ] ; 4 uses
  %.348.i.us = phi ptr [ %i.da, %bb.f ], [ %.045.i.us, %bb.e ], [ %.045.i.us, %.loopexit.i.loopexit.us ] ; 5 uses
  %i.dc = icmp ult ptr %.348.i.us, %i.cm
  br i1 %i.dc, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.352.val.i.us = load i16, ptr %.352.i.us, align 1, !tbaa !43
  %.348.val.i.us = load i16, ptr %.348.i.us, align 1, !tbaa !43
  %i.dd = icmp eq i16 %.352.val.i.us, %.348.val.i.us
  br i1 %i.dd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.de = getelementptr inbounds nuw i8, ptr %.348.i.us, i64 2
  %i.df = getelementptr inbounds nuw i8, ptr %.352.i.us, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.453.i.us = phi ptr [ %i.df, %bb.i ], [ %.352.i.us, %bb.h ], [ %.352.i.us, %bb.g ]
  %.4.i10.us = phi ptr [ %i.de, %bb.i ], [ %.348.i.us, %bb.h ], [ %.348.i.us, %bb.g ] ; 4 uses
  %i.dg = icmp ult ptr %.4.i10.us, %2
  br i1 %i.dg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dh = load i8, ptr %.453.i.us, align 1, !tbaa !36
  %i.di = load i8, ptr %.4.i10.us, align 1, !tbaa !36
  %i.dj = icmp eq i8 %i.dh, %i.di
  %spec.select.idx.i.us = zext i1 %i.dj to i64
  %spec.select.i.us = getelementptr inbounds nuw i8, ptr %.4.i10.us, i64 %spec.select.idx.i.us
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.5.i11.us = phi ptr [ %.4.i10.us, %bb.j ], [ %spec.select.i.us, %bb.k ]
  %i.dk = ptrtoint ptr %.5.i11.us to i64
  %i.dl = sub i64 %i.dk, %i.n
  br label %ZSTD_count.exit.us

.thread63.i.us:                                   ; preds = %4
  %i.dm = xor i64 %.045.val.i.us, %.049.val.i.us
  %i.dn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dm, i1 true)
  %i.do = lshr i64 %i.dn, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %.045.i.us, i64 %i.do
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.n
  br label %ZSTD_count.exit.us

ZSTD_count.exit.us:                               ; preds = %.thread63.i.us, %bb.l, %bb.d
  %.2154.i.us = phi i64 [ %i.cx, %bb.d ], [ %i.dr, %.thread63.i.us ], [ %i.dl, %bb.l ] ; 4 uses
  %i.ds = icmp ugt i64 %.2154.i.us, %.0146.i34.us
  br i1 %i.ds, label %bb.m, label %ZSTD_count.exit.thread.us

bb.m:                                             ; preds = %ZSTD_count.exit.us
  %i.dt = sub i32 %i.cn, %.0148.i36.us
  %i.du = zext i32 %i.dt to i64
  store i64 %i.du, ptr %3, align 8, !tbaa !24
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %.2154.i.us
  %i.dw = icmp eq ptr %i.dv, %2
  br i1 %i.dw, label %.thread, label %ZSTD_count.exit.thread.us

ZSTD_count.exit.thread.us:                        ; preds = %bb.m, %ZSTD_count.exit.us, %.lr.ph37.split.us
  %.1147.i.us = phi i64 [ %.2154.i.us, %bb.m ], [ %.0146.i34.us, %ZSTD_count.exit.us ], [ %.0146.i34.us, %.lr.ph37.split.us ] ; 3 uses
  %.not160.i.us = icmp ugt i32 %.0148.i36.us, %i.ac
  br i1 %.not160.i.us, label %bb.n, label %.thread

bb.n:                                             ; preds = %ZSTD_count.exit.thread.us
  %i.dx = and i32 %.0148.i36.us, %i.g
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dy
  %i.ea = add i32 %.0.i35.us, -1                  ; 3 uses
  %.0148.i.us = load i32, ptr %i.dz, align 4, !tbaa !3 ; 2 uses
  %i.eb = icmp uge i32 %.0148.i.us, %i.ab
  %i.ec = icmp ne i32 %i.ea, 0
  %i.ed = and i1 %i.ec, %i.eb
  br i1 %i.ed, label %.lr.ph37.split.us, label %.thread, !llvm.loop !181

.loopexit.i.loopexit.us:                          ; preds = %.preheader.i.us
  %i.ee = icmp ult ptr %.045.i.us, %i.cl
  br i1 %i.ee, label %bb.e, label %bb.g

.lr.ph37.split:                                   ; preds = %.lr.ph37
  %i.ef = icmp ult ptr %1, %i.cl
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph37.split, %bb.w
  %.0148.i36 = phi i32 [ %.0148.i33, %.lr.ph37.split ], [ %.0148.i, %bb.w ] ; 4 uses
  %.0.i35 = phi i32 [ %i.af, %.lr.ph37.split ], [ %i.ff, %bb.w ] ; 3 uses
  %.0146.i34 = phi i64 [ 3, %.lr.ph37.split ], [ %.1147.i, %bb.w ] ; 5 uses
  %i.eg = zext i32 %.0148.i36 to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.eg ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.0146.i34
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -3
  %.val4 = load i32, ptr %i.ej, align 1, !tbaa !3
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 %.0146.i34
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -3
  %.val = load i32, ptr %i.el, align 1, !tbaa !3
  %i.em = icmp eq i32 %.val4, %.val
  br i1 %i.em, label %.loopexit.i, label %ZSTD_count.exit.thread

.loopexit.i:                                      ; preds = %bb.o
  br i1 %i.ef, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit.i
  %.251.val.i = load i32, ptr %i.eh, align 1, !tbaa !3
  %.247.val.i = load i32, ptr %1, align 1, !tbaa !3
  %i.en = icmp eq i32 %.251.val.i, %.247.val.i
  %spec.select.idx = select i1 %i.en, i64 4, i64 0 ; 2 uses
  %spec.select = getelementptr inbounds nuw i8, ptr %i.eh, i64 %spec.select.idx
  %spec.select58 = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit.i
  %.352.i = phi ptr [ %i.eh, %.loopexit.i ], [ %spec.select, %bb.p ] ; 4 uses
  %.348.i = phi ptr [ %1, %.loopexit.i ], [ %spec.select58, %bb.p ] ; 5 uses
  %i.eo = icmp ult ptr %.348.i, %i.cm
  br i1 %i.eo, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !43
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !43
  %i.ep = icmp eq i16 %.352.val.i, %.348.val.i
  br i1 %i.ep, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eq = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  %i.er = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.453.i = phi ptr [ %i.er, %bb.s ], [ %.352.i, %bb.r ], [ %.352.i, %bb.q ]
  %.4.i10 = phi ptr [ %i.eq, %bb.s ], [ %.348.i, %bb.r ], [ %.348.i, %bb.q ] ; 4 uses
  %i.es = icmp ult ptr %.4.i10, %2
  br i1 %i.es, label %bb.u, label %ZSTD_count.exit

bb.u:                                             ; preds = %bb.t
  %i.et = load i8, ptr %.453.i, align 1, !tbaa !36
  %i.eu = load i8, ptr %.4.i10, align 1, !tbaa !36
  %i.ev = icmp eq i8 %i.et, %i.eu
  %spec.select.idx.i = zext i1 %i.ev to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.4.i10, i64 %spec.select.idx.i
  br label %ZSTD_count.exit

ZSTD_count.exit:                                  ; preds = %bb.u, %bb.t
  %.5.i11 = phi ptr [ %.4.i10, %bb.t ], [ %spec.select.i, %bb.u ] ; 2 uses
  %i.ew = ptrtoint ptr %.5.i11 to i64
  %i.ex = sub i64 %i.ew, %i.n                     ; 3 uses
  %i.ey = icmp ugt i64 %i.ex, %.0146.i34
  br i1 %i.ey, label %bb.v, label %ZSTD_count.exit.thread

bb.v:                                             ; preds = %ZSTD_count.exit
  %i.ez = sub i32 %i.cn, %.0148.i36
  %i.fa = zext i32 %i.ez to i64
  store i64 %i.fa, ptr %3, align 8, !tbaa !24
  %i.fb = icmp eq ptr %.5.i11, %2
  br i1 %i.fb, label %.thread, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.o, %bb.v, %ZSTD_count.exit
  %.1147.i = phi i64 [ %i.ex, %bb.v ], [ %.0146.i34, %ZSTD_count.exit ], [ %.0146.i34, %bb.o ] ; 3 uses
  %.not160.i = icmp ugt i32 %.0148.i36, %i.ac
  br i1 %.not160.i, label %bb.w, label %.thread

bb.w:                                             ; preds = %ZSTD_count.exit.thread
  %i.fc = and i32 %.0148.i36, %i.g
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fd
  %i.ff = add i32 %.0.i35, -1                     ; 3 uses
  %.0148.i = load i32, ptr %i.fe, align 4, !tbaa !3 ; 2 uses
  %i.fg = icmp uge i32 %.0148.i, %i.ab
  %i.fh = icmp ne i32 %i.ff, 0
  %i.fi = and i1 %i.fh, %i.fg
  br i1 %i.fi, label %bb.o, label %.thread, !llvm.loop !181

.thread:                                          ; preds = %bb.w, %bb.v, %ZSTD_count.exit.thread, %bb.n, %bb.m, %ZSTD_count.exit.thread.us, %.split31.us
  %.0.i.lcssa = phi i32 [ %i.af, %.split31.us ], [ %.0.i35.us, %ZSTD_count.exit.thread.us ], [ %.0.i35.us, %bb.m ], [ %i.ea, %bb.n ], [ %.0.i35, %ZSTD_count.exit.thread ], [ %.0.i35, %bb.v ], [ %i.ff, %bb.w ] ; 2 uses
  %.3.i = phi i64 [ 3, %.split31.us ], [ %.1147.i.us, %ZSTD_count.exit.thread.us ], [ %.2154.i.us, %bb.m ], [ %.1147.i.us, %bb.n ], [ %.1147.i, %ZSTD_count.exit.thread ], [ %i.ex, %bb.v ], [ %.1147.i, %bb.w ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ah, i64 260
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !19
  %i.fn = shl nuw i32 1, %i.fm                    ; 2 uses
  %i.fo = add i32 %i.fn, -1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !38 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !7  ; 2 uses
  %i.ft = load ptr, ptr %i.ah, align 8, !tbaa !68 ; 2 uses
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = trunc i64 %i.fw to i32                  ; 2 uses
  %i.fy = tail call i32 @llvm.usub.sat.i32(i32 %i.fx, i32 %i.fn)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !17
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ah, i64 264
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !22
  %.val8 = load i64, ptr %1, align 1              ; 2 uses
  %i.gd = mul i64 %.val8, -3523014627271114752
  %i.ge = sub i32 64, %i.gc
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = lshr i64 %i.gd, %i.gf
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gg
  %.2150.i49 = load i32, ptr %i.gh, align 4, !tbaa !3 ; 2 uses
  %i.gi = icmp uge i32 %.2150.i49, %i.fq
  %i.gj = icmp ne i32 %.0.i.lcssa, 0
  %i.gk = and i1 %i.gj, %i.gi
  %i.gl = trunc i64 %.val8 to i32
  br i1 %i.gk, label %.lr.ph53, label %ZSTD_HcFindBestMatch.exit

.lr.ph53:                                         ; preds = %.thread
  %invariant.op = add i32 %i.q, %i.fx
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gn = add i32 %invariant.op, 3
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph53, %bb.aa
  %.2150.i52 = phi i32 [ %.2150.i49, %.lr.ph53 ], [ %.2150.i, %bb.aa ] ; 4 uses
  %.1.i51 = phi i32 [ %.0.i.lcssa, %.lr.ph53 ], [ %i.hd, %bb.aa ]
  %.4.i50 = phi i64 [ %.3.i, %.lr.ph53 ], [ %.5.i, %bb.aa ] ; 3 uses
  %i.go = zext i32 %.2150.i52 to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.go ; 2 uses
  %.val6 = load i32, ptr %i.gp, align 1, !tbaa !3
  %i.gq = icmp eq i32 %.val6, %i.gl
  br i1 %i.gq, label %bb.y, label %.thread18

bb.y:                                             ; preds = %bb.x
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gs = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.gm, ptr noundef nonnull %i.gr, ptr noundef %2, ptr noundef %i.ft, ptr noundef %i.m)
  %i.gt = add i64 %i.gs, 4                        ; 4 uses
  %i.gu = icmp ugt i64 %i.gt, %.4.i50
  br i1 %i.gu, label %bb.z, label %.thread18

bb.z:                                             ; preds = %bb.y
  %i.gv = add i32 %i.k, %.2150.i52
  %i.gw = sub i32 %i.gn, %i.gv
  %i.gx = zext i32 %i.gw to i64
  store i64 %i.gx, ptr %3, align 8, !tbaa !24
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 %i.gt
  %i.gz = icmp eq ptr %i.gy, %2
end_hunk_2
begin_hunk_3_@ZSTD_HcFindBestMatch_dictMatchState_5:bb.a
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.hb
  %i.hd = add i32 %.1.i51, -1                     ; 2 uses
  %.2150.i = load i32, ptr %i.hc, align 4, !tbaa !3 ; 2 uses
  %i.he = icmp uge i32 %.2150.i, %i.fq
  %i.hf = icmp ne i32 %i.hd, 0
  %i.hg = and i1 %i.hf, %i.he
  br i1 %i.hg, label %bb.x, label %ZSTD_HcFindBestMatch.exit, !llvm.loop !187

ZSTD_HcFindBestMatch.exit:                        ; preds = %bb.aa, %bb.z, %.thread18, %.thread
  %.8.i = phi i64 [ %.3.i, %.thread ], [ %i.gt, %bb.z ], [ %.5.i, %.thread18 ], [ %.5.i, %bb.aa ]
  ret i64 %.8.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_HcFindBestMatch_dictMatchState_6(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32   ; 2 uses
  %i.f = shl nuw i32 1, %i.e                      ; 2 uses
  %i.g = add i32 %i.f, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7    ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !38   ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.n = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = trunc i64 %i.p to i32                    ; 7 uses
  %i.r = load i32, ptr %i.a, align 8, !tbaa !179
  %i.s = shl nuw i32 1, %i.r                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !148  ; 2 uses
  %i.v = sub i32 %i.q, %i.u
  %i.w = icmp ugt i32 %i.v, %i.s
  %i.x = sub i32 %i.q, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !40
  %.not.i = icmp eq i32 %i.z, 0
  %i.aa = select i1 %.not.i, i1 %i.w, i1 false
  %i.ab = select i1 %i.aa, i32 %i.x, i32 %i.u     ; 3 uses
  %i.ac = tail call i32 @llvm.usub.sat.i32(i32 %i.q, i32 %i.f) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !180
  %i.af = shl nuw i32 1, %i.ae                    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !67 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !17 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.an = load i32, ptr %i.am, align 8, !tbaa !31
  %notmask.i.i = shl nsw i32 -1, %i.e
  %i.ao = xor i32 %notmask.i.i, -1                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !20 ; 6 uses
  %i.ar = sub i32 64, %i.an
  %i.as = zext nneg i32 %i.ar to i64              ; 5 uses
  %.fr59 = freeze i32 %i.aj
  %.not.i.i = icmp eq i32 %.fr59, 0
  %i.at = icmp ult i32 %i.aq, %i.q                ; 2 uses
  br i1 %.not.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %i.at, label %.lr.ph.preheader, label %.split31.us

.lr.ph.preheader:                                 ; preds = %.split.us
  %i.au = zext i32 %i.aq to i64                   ; 6 uses
  %i.av = and i64 %i.p, 4294967295                ; 2 uses
  %i.aw = zext nneg i32 %i.ao to i64              ; 3 uses
  %i.ax = sub i64 %i.p, %i.au
  %.neg = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.ax, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.au
  %.val7.us.prol = load i64, ptr %i.ay, align 1, !tbaa !24
  %i.az = mul i64 %.val7.us.prol, -3523014627193847808
  %i.ba = lshr i64 %i.az, %i.as
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bd = and i64 %i.au, %i.aw
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bd
  store i32 %i.bc, ptr %i.be, align 4, !tbaa !3
  store i32 %i.aq, ptr %i.bb, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %i.au, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.au, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bf = icmp eq i64 %i.av, %.neg
  br i1 %i.bf, label %.split31.us, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %.val7.us = load i64, ptr %i.bg, align 1, !tbaa !24
  %i.bh = mul i64 %.val7.us, -3523014627193847808
  %i.bi = lshr i64 %i.bh, %i.as
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = trunc nuw i64 %indvars.iv to i32
  %i.bm = and i64 %indvars.iv, %i.aw
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bm
  store i32 %i.bk, ptr %i.bn, align 4, !tbaa !3
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next
  %.val7.us.1 = load i64, ptr %i.bo, align 1, !tbaa !24
  %i.bp = mul i64 %.val7.us.1, -3523014627193847808
  %i.bq = lshr i64 %i.bp, %i.as
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = trunc nuw i64 %indvars.iv.next to i32
  %i.bu = and i64 %indvars.iv.next, %i.aw
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bu
  store i32 %i.bs, ptr %i.bv, align 4, !tbaa !3
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bw = icmp samesign ult i64 %indvars.iv.next.1, %i.av
  br i1 %i.bw, label %.lr.ph, label %.split31.us

.split:                                           ; preds = %bb.a
  br i1 %i.at, label %bb.b, label %.split31.us

bb.b:                                             ; preds = %.split
  %i.bx = zext i32 %i.aq to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bx
  %.val7 = load i64, ptr %i.by, align 1, !tbaa !24
  %i.bz = mul i64 %.val7, -3523014627193847808
  %i.ca = lshr i64 %i.bz, %i.as
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = and i32 %i.aq, %i.ao
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ce
  store i32 %i.cc, ptr %i.cf, align 4, !tbaa !3
  store i32 %i.aq, ptr %i.cb, align 4, !tbaa !3
  br label %.split31.us

.split31.us:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.split, %bb.b, %.split.us
  store i32 %i.q, ptr %i.ap, align 4, !tbaa !20
  %.val9 = load i64, ptr %1, align 1, !tbaa !24
  %i.cg = mul i64 %.val9, -3523014627193847808
  %i.ch = lshr i64 %i.cg, %i.as
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ch
  %.0148.i33 = load i32, ptr %i.ci, align 4, !tbaa !3 ; 3 uses
  %.not = icmp ult i32 %.0148.i33, %i.ab
  br i1 %.not, label %.thread, label %.lr.ph37

.lr.ph37:                                         ; preds = %.split31.us
  %i.cj = getelementptr i8, ptr %2, i64 -7        ; 2 uses
  %i.ck = icmp ult ptr %1, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %2, i64 -3 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %2, i64 -1 ; 2 uses
  %i.cn = add i32 %i.q, 3                         ; 2 uses
  br i1 %i.ck, label %.lr.ph37.split.us, label %.lr.ph37.split

.lr.ph37.split.us:                                ; preds = %.lr.ph37, %bb.n
  %.0148.i36.us = phi i32 [ %.0148.i.us, %bb.n ], [ %.0148.i33, %.lr.ph37 ] ; 4 uses
  %.0.i35.us = phi i32 [ %i.ea, %bb.n ], [ %i.af, %.lr.ph37 ] ; 3 uses
  %.0146.i34.us = phi i64 [ %.1147.i.us, %bb.n ], [ 3, %.lr.ph37 ] ; 5 uses
  %i.co = zext i32 %.0148.i36.us to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.co ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.0146.i34.us
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -3
  %.val4.us = load i32, ptr %i.cr, align 1, !tbaa !3
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %.0146.i34.us
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -3
  %.val.us = load i32, ptr %i.ct, align 1, !tbaa !3
  %i.cu = icmp eq i32 %.val4.us, %.val.us
  br i1 %i.cu, label %bb.c, label %ZSTD_count.exit.thread.us

bb.c:                                             ; preds = %.lr.ph37.split.us
  %.val60.i.us = load i64, ptr %i.cp, align 1, !tbaa !24 ; 2 uses
  %.val.i.us = load i64, ptr %1, align 1, !tbaa !24 ; 2 uses
  %.not.i13.us = icmp eq i64 %.val60.i.us, %.val.i.us
  br i1 %.not.i13.us, label %.preheader.i.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cv = xor i64 %.val.i.us, %.val60.i.us
  %i.cw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.cv, i1 true)
  %i.cx = lshr i64 %i.cw, 3
  br label %ZSTD_count.exit.us

.preheader.i.us:                                  ; preds = %bb.c, %4
  %.pn.i.us = phi ptr [ %.049.i.us, %4 ], [ %i.cp, %bb.c ] ; 2 uses
  %.pn67.i.us = phi ptr [ %.045.i.us, %4 ], [ %1, %bb.c ] ; 2 uses
  %.045.i.us = getelementptr inbounds nuw i8, ptr %.pn67.i.us, i64 8 ; 8 uses
  %.049.i.us = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 8 ; 5 uses
  %i.cy = icmp ult ptr %.045.i.us, %i.cj
  br i1 %i.cy, label %4, label %.loopexit.i.loopexit.us

4:                                                ; preds = %.preheader.i.us
  %.049.val.i.us = load i64, ptr %.049.i.us, align 1, !tbaa !24 ; 2 uses
  %.045.val.i.us = load i64, ptr %.045.i.us, align 1, !tbaa !24 ; 2 uses
  %.not59.i.us = icmp eq i64 %.049.val.i.us, %.045.val.i.us
  br i1 %.not59.i.us, label %.preheader.i.us, label %.thread63.i.us

bb.e:                                             ; preds = %.loopexit.i.loopexit.us
  %.251.val.i.us = load i32, ptr %.049.i.us, align 1, !tbaa !3
  %.247.val.i.us = load i32, ptr %.045.i.us, align 1, !tbaa !3
  %i.cz = icmp eq i32 %.251.val.i.us, %.247.val.i.us
  br i1 %i.cz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.da = getelementptr inbounds nuw i8, ptr %.pn67.i.us, i64 12
  %i.db = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.loopexit.i.loopexit.us
  %.352.i.us = phi ptr [ %i.db, %bb.f ], [ %.049.i.us, %bb.e ], [ %.049.i.us, %.loopexit.i.loopexit.us ] ; 4 uses
  %.348.i.us = phi ptr [ %i.da, %bb.f ], [ %.045.i.us, %bb.e ], [ %.045.i.us, %.loopexit.i.loopexit.us ] ; 5 uses
  %i.dc = icmp ult ptr %.348.i.us, %i.cm
  br i1 %i.dc, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.352.val.i.us = load i16, ptr %.352.i.us, align 1, !tbaa !43
  %.348.val.i.us = load i16, ptr %.348.i.us, align 1, !tbaa !43
  %i.dd = icmp eq i16 %.352.val.i.us, %.348.val.i.us
  br i1 %i.dd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.de = getelementptr inbounds nuw i8, ptr %.348.i.us, i64 2
  %i.df = getelementptr inbounds nuw i8, ptr %.352.i.us, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.453.i.us = phi ptr [ %i.df, %bb.i ], [ %.352.i.us, %bb.h ], [ %.352.i.us, %bb.g ]
  %.4.i10.us = phi ptr [ %i.de, %bb.i ], [ %.348.i.us, %bb.h ], [ %.348.i.us, %bb.g ] ; 4 uses
  %i.dg = icmp ult ptr %.4.i10.us, %2
  br i1 %i.dg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dh = load i8, ptr %.453.i.us, align 1, !tbaa !36
  %i.di = load i8, ptr %.4.i10.us, align 1, !tbaa !36
  %i.dj = icmp eq i8 %i.dh, %i.di
  %spec.select.idx.i.us = zext i1 %i.dj to i64
  %spec.select.i.us = getelementptr inbounds nuw i8, ptr %.4.i10.us, i64 %spec.select.idx.i.us
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.5.i11.us = phi ptr [ %.4.i10.us, %bb.j ], [ %spec.select.i.us, %bb.k ]
  %i.dk = ptrtoint ptr %.5.i11.us to i64
  %i.dl = sub i64 %i.dk, %i.n
  br label %ZSTD_count.exit.us

.thread63.i.us:                                   ; preds = %4
  %i.dm = xor i64 %.045.val.i.us, %.049.val.i.us
  %i.dn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dm, i1 true)
  %i.do = lshr i64 %i.dn, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %.045.i.us, i64 %i.do
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.n
  br label %ZSTD_count.exit.us

ZSTD_count.exit.us:                               ; preds = %.thread63.i.us, %bb.l, %bb.d
  %.2154.i.us = phi i64 [ %i.cx, %bb.d ], [ %i.dr, %.thread63.i.us ], [ %i.dl, %bb.l ] ; 4 uses
  %i.ds = icmp ugt i64 %.2154.i.us, %.0146.i34.us
  br i1 %i.ds, label %bb.m, label %ZSTD_count.exit.thread.us

bb.m:                                             ; preds = %ZSTD_count.exit.us
  %i.dt = sub i32 %i.cn, %.0148.i36.us
  %i.du = zext i32 %i.dt to i64
  store i64 %i.du, ptr %3, align 8, !tbaa !24
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %.2154.i.us
  %i.dw = icmp eq ptr %i.dv, %2
  br i1 %i.dw, label %.thread, label %ZSTD_count.exit.thread.us

ZSTD_count.exit.thread.us:                        ; preds = %bb.m, %ZSTD_count.exit.us, %.lr.ph37.split.us
  %.1147.i.us = phi i64 [ %.2154.i.us, %bb.m ], [ %.0146.i34.us, %ZSTD_count.exit.us ], [ %.0146.i34.us, %.lr.ph37.split.us ] ; 3 uses
  %.not160.i.us = icmp ugt i32 %.0148.i36.us, %i.ac
  br i1 %.not160.i.us, label %bb.n, label %.thread

bb.n:                                             ; preds = %ZSTD_count.exit.thread.us
  %i.dx = and i32 %.0148.i36.us, %i.g
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dy
  %i.ea = add i32 %.0.i35.us, -1                  ; 3 uses
  %.0148.i.us = load i32, ptr %i.dz, align 4, !tbaa !3 ; 2 uses
  %i.eb = icmp uge i32 %.0148.i.us, %i.ab
  %i.ec = icmp ne i32 %i.ea, 0
  %i.ed = and i1 %i.ec, %i.eb
  br i1 %i.ed, label %.lr.ph37.split.us, label %.thread, !llvm.loop !181

.loopexit.i.loopexit.us:                          ; preds = %.preheader.i.us
  %i.ee = icmp ult ptr %.045.i.us, %i.cl
  br i1 %i.ee, label %bb.e, label %bb.g

.lr.ph37.split:                                   ; preds = %.lr.ph37
  %i.ef = icmp ult ptr %1, %i.cl
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph37.split, %bb.w
  %.0148.i36 = phi i32 [ %.0148.i33, %.lr.ph37.split ], [ %.0148.i, %bb.w ] ; 4 uses
  %.0.i35 = phi i32 [ %i.af, %.lr.ph37.split ], [ %i.ff, %bb.w ] ; 3 uses
  %.0146.i34 = phi i64 [ 3, %.lr.ph37.split ], [ %.1147.i, %bb.w ] ; 5 uses
  %i.eg = zext i32 %.0148.i36 to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.eg ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.0146.i34
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -3
  %.val4 = load i32, ptr %i.ej, align 1, !tbaa !3
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 %.0146.i34
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -3
  %.val = load i32, ptr %i.el, align 1, !tbaa !3
  %i.em = icmp eq i32 %.val4, %.val
  br i1 %i.em, label %.loopexit.i, label %ZSTD_count.exit.thread

.loopexit.i:                                      ; preds = %bb.o
  br i1 %i.ef, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit.i
  %.251.val.i = load i32, ptr %i.eh, align 1, !tbaa !3
  %.247.val.i = load i32, ptr %1, align 1, !tbaa !3
  %i.en = icmp eq i32 %.251.val.i, %.247.val.i
  %spec.select.idx = select i1 %i.en, i64 4, i64 0 ; 2 uses
  %spec.select = getelementptr inbounds nuw i8, ptr %i.eh, i64 %spec.select.idx
  %spec.select58 = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit.i
  %.352.i = phi ptr [ %i.eh, %.loopexit.i ], [ %spec.select, %bb.p ] ; 4 uses
  %.348.i = phi ptr [ %1, %.loopexit.i ], [ %spec.select58, %bb.p ] ; 5 uses
  %i.eo = icmp ult ptr %.348.i, %i.cm
  br i1 %i.eo, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !43
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !43
  %i.ep = icmp eq i16 %.352.val.i, %.348.val.i
  br i1 %i.ep, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eq = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  %i.er = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.453.i = phi ptr [ %i.er, %bb.s ], [ %.352.i, %bb.r ], [ %.352.i, %bb.q ]
  %.4.i10 = phi ptr [ %i.eq, %bb.s ], [ %.348.i, %bb.r ], [ %.348.i, %bb.q ] ; 4 uses
  %i.es = icmp ult ptr %.4.i10, %2
  br i1 %i.es, label %bb.u, label %ZSTD_count.exit

bb.u:                                             ; preds = %bb.t
  %i.et = load i8, ptr %.453.i, align 1, !tbaa !36
  %i.eu = load i8, ptr %.4.i10, align 1, !tbaa !36
  %i.ev = icmp eq i8 %i.et, %i.eu
  %spec.select.idx.i = zext i1 %i.ev to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.4.i10, i64 %spec.select.idx.i
  br label %ZSTD_count.exit

ZSTD_count.exit:                                  ; preds = %bb.u, %bb.t
  %.5.i11 = phi ptr [ %.4.i10, %bb.t ], [ %spec.select.i, %bb.u ] ; 2 uses
  %i.ew = ptrtoint ptr %.5.i11 to i64
  %i.ex = sub i64 %i.ew, %i.n                     ; 3 uses
  %i.ey = icmp ugt i64 %i.ex, %.0146.i34
  br i1 %i.ey, label %bb.v, label %ZSTD_count.exit.thread

bb.v:                                             ; preds = %ZSTD_count.exit
  %i.ez = sub i32 %i.cn, %.0148.i36
  %i.fa = zext i32 %i.ez to i64
  store i64 %i.fa, ptr %3, align 8, !tbaa !24
  %i.fb = icmp eq ptr %.5.i11, %2
  br i1 %i.fb, label %.thread, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.o, %bb.v, %ZSTD_count.exit
  %.1147.i = phi i64 [ %i.ex, %bb.v ], [ %.0146.i34, %ZSTD_count.exit ], [ %.0146.i34, %bb.o ] ; 3 uses
  %.not160.i = icmp ugt i32 %.0148.i36, %i.ac
  br i1 %.not160.i, label %bb.w, label %.thread

bb.w:                                             ; preds = %ZSTD_count.exit.thread
  %i.fc = and i32 %.0148.i36, %i.g
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fd
  %i.ff = add i32 %.0.i35, -1                     ; 3 uses
  %.0148.i = load i32, ptr %i.fe, align 4, !tbaa !3 ; 2 uses
  %i.fg = icmp uge i32 %.0148.i, %i.ab
  %i.fh = icmp ne i32 %i.ff, 0
  %i.fi = and i1 %i.fh, %i.fg
  br i1 %i.fi, label %bb.o, label %.thread, !llvm.loop !181

.thread:                                          ; preds = %bb.w, %bb.v, %ZSTD_count.exit.thread, %bb.n, %bb.m, %ZSTD_count.exit.thread.us, %.split31.us
  %.0.i.lcssa = phi i32 [ %i.af, %.split31.us ], [ %.0.i35.us, %ZSTD_count.exit.thread.us ], [ %.0.i35.us, %bb.m ], [ %i.ea, %bb.n ], [ %.0.i35, %ZSTD_count.exit.thread ], [ %.0.i35, %bb.v ], [ %i.ff, %bb.w ] ; 2 uses
  %.3.i = phi i64 [ 3, %.split31.us ], [ %.1147.i.us, %ZSTD_count.exit.thread.us ], [ %.2154.i.us, %bb.m ], [ %.1147.i.us, %bb.n ], [ %.1147.i, %ZSTD_count.exit.thread ], [ %i.ex, %bb.v ], [ %.1147.i, %bb.w ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ah, i64 260
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !19
  %i.fn = shl nuw i32 1, %i.fm                    ; 2 uses
  %i.fo = add i32 %i.fn, -1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !38 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !7  ; 2 uses
  %i.ft = load ptr, ptr %i.ah, align 8, !tbaa !68 ; 2 uses
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = trunc i64 %i.fw to i32                  ; 2 uses
  %i.fy = tail call i32 @llvm.usub.sat.i32(i32 %i.fx, i32 %i.fn)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !17
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ah, i64 264
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !22
  %.val8 = load i64, ptr %1, align 1              ; 2 uses
  %i.gd = mul i64 %.val8, -3523014627193847808
  %i.ge = sub i32 64, %i.gc
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = lshr i64 %i.gd, %i.gf
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gg
  %.2150.i49 = load i32, ptr %i.gh, align 4, !tbaa !3 ; 2 uses
  %i.gi = icmp uge i32 %.2150.i49, %i.fq
  %i.gj = icmp ne i32 %.0.i.lcssa, 0
  %i.gk = and i1 %i.gj, %i.gi
  %i.gl = trunc i64 %.val8 to i32
  br i1 %i.gk, label %.lr.ph53, label %ZSTD_HcFindBestMatch.exit

.lr.ph53:                                         ; preds = %.thread
  %invariant.op = add i32 %i.q, %i.fx
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gn = add i32 %invariant.op, 3
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph53, %bb.aa
  %.2150.i52 = phi i32 [ %.2150.i49, %.lr.ph53 ], [ %.2150.i, %bb.aa ] ; 4 uses
  %.1.i51 = phi i32 [ %.0.i.lcssa, %.lr.ph53 ], [ %i.hd, %bb.aa ]
  %.4.i50 = phi i64 [ %.3.i, %.lr.ph53 ], [ %.5.i, %bb.aa ] ; 3 uses
  %i.go = zext i32 %.2150.i52 to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.go ; 2 uses
  %.val6 = load i32, ptr %i.gp, align 1, !tbaa !3
  %i.gq = icmp eq i32 %.val6, %i.gl
  br i1 %i.gq, label %bb.y, label %.thread18

bb.y:                                             ; preds = %bb.x
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gs = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.gm, ptr noundef nonnull %i.gr, ptr noundef %2, ptr noundef %i.ft, ptr noundef %i.m)
  %i.gt = add i64 %i.gs, 4                        ; 4 uses
  %i.gu = icmp ugt i64 %i.gt, %.4.i50
  br i1 %i.gu, label %bb.z, label %.thread18

bb.z:                                             ; preds = %bb.y
  %i.gv = add i32 %i.k, %.2150.i52
  %i.gw = sub i32 %i.gn, %i.gv
  %i.gx = zext i32 %i.gw to i64
  store i64 %i.gx, ptr %3, align 8, !tbaa !24
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 %i.gt
  %i.gz = icmp eq ptr %i.gy, %2
end_hunk_3
