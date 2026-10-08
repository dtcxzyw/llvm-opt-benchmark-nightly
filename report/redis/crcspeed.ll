Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/crcspeed?download=true
inline.NumInlined: 10
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@crcspeed16little:bb.a
  %i.ae = and i64 %i.ad, 255
  %i.af = zext i16 %.150 to i32                   ; 2 uses
  %i.ag = lshr i32 %i.af, 8
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = xor i64 %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !22
  %i.al = lshr i64 %i.ad, 8
  %i.am = and i64 %i.al, 255
  %i.an = and i32 %i.af, 255
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = xor i64 %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !22
  %i.as = xor i16 %i.ar, %i.ak
  %i.at = lshr i64 %i.ad, 16
  %i.au = and i64 %i.at, 255
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !22
  %i.ax = xor i16 %i.as, %i.aw
  %i.ay = lshr i64 %i.ad, 24
  %i.az = and i64 %i.ay, 255
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !22
  %i.bc = xor i16 %i.ax, %i.bb
  %i.bd = lshr i64 %i.ad, 32
  %i.be = and i64 %i.bd, 255
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !22
  %i.bh = xor i16 %i.bc, %i.bg
  %i.bi = lshr i64 %i.ad, 40
  %i.bj = and i64 %i.bi, 255
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !22
  %i.bm = xor i16 %i.bh, %i.bl
  %i.bn = lshr i64 %i.ad, 48
  %i.bo = and i64 %i.bn, 255
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !22
  %i.br = xor i16 %i.bm, %i.bq
  %i.bs = lshr i64 %i.ad, 56
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !22
  %i.bv = xor i16 %i.br, %i.bu                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.13749, i64 8 ; 2 uses
  %i.bx = add i64 %.14048, -8                     ; 3 uses
  %i.by = icmp ugt i64 %i.bx, 7
  br i1 %i.by, label %bb.b, label %.preheader, !llvm.loop !41

.lr.ph59:                                         ; preds = %.preheader
  %i.bz = lshr i16 %.1.lcssa, 8
  %i.ca = load i8, ptr %.137.lcssa, align 1, !tbaa !17
  %i.cb = zext i8 %i.ca to i16
  %i.cc = xor i16 %i.bz, %i.cb
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !22 ; 2 uses
  %i.cg = shl i16 %.1.lcssa, 8
  %i.ch = xor i16 %i.cf, %i.cg                    ; 2 uses
  %.not = icmp eq i64 %.140.lcssa, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph59.1

.lr.ph59.1:                                       ; preds = %.lr.ph59
  %i.ci = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 1
  %i.cj = lshr i16 %i.ch, 8
  %i.ck = load i8, ptr %i.ci, align 1, !tbaa !17
  %i.cl = zext i8 %i.ck to i16
  %i.cm = xor i16 %i.cj, %i.cl
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !22 ; 2 uses
  %i.cq = shl i16 %i.cf, 8
  %i.cr = xor i16 %i.cp, %i.cq                    ; 2 uses
  %.not.1 = icmp eq i64 %.140.lcssa, 2
  br i1 %.not.1, label %._crit_edge, label %.lr.ph59.2

.lr.ph59.2:                                       ; preds = %.lr.ph59.1
  %i.cs = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 2
  %i.ct = lshr i16 %i.cr, 8
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !17
  %i.cv = zext i8 %i.cu to i16
  %i.cw = xor i16 %i.ct, %i.cv
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !22 ; 2 uses
  %i.da = shl i16 %i.cp, 8
  %i.db = xor i16 %i.cz, %i.da                    ; 2 uses
  %.not.2 = icmp eq i64 %.140.lcssa, 3
  br i1 %.not.2, label %._crit_edge, label %.lr.ph59.3

.lr.ph59.3:                                       ; preds = %.lr.ph59.2
  %i.dc = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 3
  %i.dd = lshr i16 %i.db, 8
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !17
  %i.df = zext i8 %i.de to i16
  %i.dg = xor i16 %i.dd, %i.df
  %i.dh = zext nneg i16 %i.dg to i64
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dh
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !22 ; 2 uses
  %i.dk = shl i16 %i.cz, 8
  %i.dl = xor i16 %i.dj, %i.dk                    ; 2 uses
  %.not.3 = icmp eq i64 %.140.lcssa, 4
  br i1 %.not.3, label %._crit_edge, label %.lr.ph59.4

.lr.ph59.4:                                       ; preds = %.lr.ph59.3
  %i.dm = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 4
  %i.dn = lshr i16 %i.dl, 8
  %i.do = load i8, ptr %i.dm, align 1, !tbaa !17
  %i.dp = zext i8 %i.do to i16
  %i.dq = xor i16 %i.dn, %i.dp
  %i.dr = zext nneg i16 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !22 ; 2 uses
  %i.du = shl i16 %i.dj, 8
  %i.dv = xor i16 %i.dt, %i.du                    ; 2 uses
  %.not.4 = icmp eq i64 %.140.lcssa, 5
  br i1 %.not.4, label %._crit_edge, label %.lr.ph59.5

.lr.ph59.5:                                       ; preds = %.lr.ph59.4
  %i.dw = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 5
  %i.dx = lshr i16 %i.dv, 8
  %i.dy = load i8, ptr %i.dw, align 1, !tbaa !17
  %i.dz = zext i8 %i.dy to i16
  %i.ea = xor i16 %i.dx, %i.dz
  %i.eb = zext nneg i16 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !22 ; 2 uses
  %i.ee = shl i16 %i.dt, 8
  %i.ef = xor i16 %i.ed, %i.ee                    ; 2 uses
  %.not.5 = icmp eq i64 %.140.lcssa, 6
  br i1 %.not.5, label %._crit_edge, label %.lr.ph59.6

.lr.ph59.6:                                       ; preds = %.lr.ph59.5
  %i.eg = getelementptr inbounds nuw i8, ptr %.137.lcssa, i64 6
  %i.eh = lshr i16 %i.ef, 8
  %i.ei = load i8, ptr %i.eg, align 1, !tbaa !17
  %i.ej = zext i8 %i.ei to i16
  %i.ek = xor i16 %i.eh, %i.ej
  %i.el = zext nneg i16 %i.ek to i64
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.el
  %i.en = load i16, ptr %i.em, align 2, !tbaa !22
  %i.eo = shl i16 %i.ed, 8
  %i.ep = xor i16 %i.en, %i.eo
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph59, %.lr.ph59.1, %.lr.ph59.2, %.lr.ph59.3, %.lr.ph59.4, %.lr.ph59.5, %.lr.ph59.6, %.preheader
  %.2.lcssa = phi i16 [ %.1.lcssa, %.preheader ], [ %i.ch, %.lr.ph59 ], [ %i.cr, %.lr.ph59.1 ], [ %i.db, %.lr.ph59.2 ], [ %i.dl, %.lr.ph59.3 ], [ %i.dv, %.lr.ph59.4 ], [ %i.ef, %.lr.ph59.5 ], [ %i.ep, %.lr.ph59.6 ]
  ret i16 %.2.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef i64 @crcspeed64big(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef i64 @llvm.bswap.i64(i64 %1) ; 2 uses
  %i.b = icmp ne i64 %3, 0
  %i.c = ptrtoint ptr %2 to i64
  %i.d = and i64 %i.c, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = and i1 %i.b, %i.e
  br i1 %i.f, label %.lr.ph, label %.preheader42

.preheader42:                                     ; preds = %.lr.ph, %bb.a
  %.039.lcssa = phi i64 [ %i.a, %bb.a ], [ %i.w, %.lr.ph ] ; 2 uses
  %.036.lcssa = phi i64 [ %3, %bb.a ], [ %i.x, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %.lr.ph ] ; 2 uses
  %i.g = icmp ugt i64 %.036.lcssa, 7
  br i1 %i.g, label %.lr.ph51, label %.preheader

.lr.ph51:                                         ; preds = %.preheader42
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6144
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8192
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10240
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12288
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 14336
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.045 = phi ptr [ %i.p, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.03644 = phi i64 [ %i.x, %.lr.ph ], [ %3, %bb.a ]
  %.03943 = phi i64 [ %i.w, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.o = lshr i64 %.03943, 56
  %i.p = getelementptr inbounds nuw i8, ptr %.045, i64 1 ; 3 uses
  %i.q = load i8, ptr %.045, align 1, !tbaa !17
  %i.r = zext i8 %i.q to i64
  %i.s = xor i64 %i.o, %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19
  %i.v = shl i64 %.03943, 8
  %i.w = xor i64 %i.u, %i.v                       ; 2 uses
  %i.x = add i64 %.03644, -1                      ; 3 uses
  %i.y = icmp ne i64 %i.x, 0
  %i.z = ptrtoint ptr %i.p to i64
  %i.aa = and i64 %i.z, 7
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = select i1 %i.y, i1 %i.ab, i1 false
  br i1 %i.ac, label %.lr.ph, label %.preheader42, !llvm.loop !42

.preheader:                                       ; preds = %bb.b, %.preheader42
  %.140.lcssa = phi i64 [ %.039.lcssa, %.preheader42 ], [ %i.bp, %bb.b ] ; 3 uses
  %.137.lcssa = phi i64 [ %.036.lcssa, %.preheader42 ], [ %i.br, %bb.b ] ; 7 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader42 ], [ %i.bq, %bb.b ] ; 7 uses
  %.not55 = icmp eq i64 %.137.lcssa, 0
  br i1 %.not55, label %._crit_edge, label %.lr.ph59

bb.b:                                             ; preds = %.lr.ph51, %bb.b
  %.150 = phi ptr [ %.0.lcssa, %.lr.ph51 ], [ %i.bq, %bb.b ] ; 2 uses
  %.13749 = phi i64 [ %.036.lcssa, %.lr.ph51 ], [ %i.br, %bb.b ]
  %.14048 = phi i64 [ %.039.lcssa, %.lr.ph51 ], [ %i.bp, %bb.b ]
  %i.ad = load i64, ptr %.150, align 8, !tbaa !19
  %i.ae = xor i64 %i.ad, %.14048                  ; 8 uses
  %i.af = and i64 %i.ae, 255
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !19
  %i.ai = lshr i64 %i.ae, 8
  %i.aj = and i64 %i.ai, 255
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !19
  %i.am = xor i64 %i.al, %i.ah
  %i.an = lshr i64 %i.ae, 16
  %i.ao = and i64 %i.an, 255
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !19
  %i.ar = xor i64 %i.am, %i.aq
  %i.as = lshr i64 %i.ae, 24
  %i.at = and i64 %i.as, 255
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !19
  %i.aw = xor i64 %i.ar, %i.av
  %i.ax = lshr i64 %i.ae, 32
  %i.ay = and i64 %i.ax, 255
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !19
  %i.bb = xor i64 %i.aw, %i.ba
  %i.bc = lshr i64 %i.ae, 40
  %i.bd = and i64 %i.bc, 255
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !19
  %i.bg = xor i64 %i.bb, %i.bf
  %i.bh = lshr i64 %i.ae, 48
  %i.bi = and i64 %i.bh, 255
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !19
  %i.bl = xor i64 %i.bg, %i.bk
  %i.bm = lshr i64 %i.ae, 56
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !19
  %i.bp = xor i64 %i.bl, %i.bo                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.150, i64 8 ; 2 uses
  %i.br = add i64 %.13749, -8                     ; 3 uses
  %i.bs = icmp ugt i64 %i.br, 7
  br i1 %i.bs, label %bb.b, label %.preheader, !llvm.loop !43

.lr.ph59:                                         ; preds = %.preheader
  %4 = lshr i64 %.140.lcssa, 56
  %5 = load i8, ptr %.1.lcssa, align 1, !tbaa !17
  %6 = zext i8 %5 to i64
  %7 = xor i64 %4, %6
  %8 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %7
  %9 = load i64, ptr %8, align 8, !tbaa !19
  %10 = shl i64 %.140.lcssa, 8
  %11 = xor i64 %9, %10                           ; 3 uses
  %.not = icmp eq i64 %.137.lcssa, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph59.1

.lr.ph59.1:                                       ; preds = %.lr.ph59
  %12 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 1
  %13 = lshr i64 %11, 56
  %14 = load i8, ptr %12, align 1, !tbaa !17
  %15 = zext i8 %14 to i64
  %16 = xor i64 %13, %15
  %17 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !19
  %19 = shl i64 %11, 8
  %20 = xor i64 %18, %19                          ; 3 uses
  %.not.1 = icmp eq i64 %.137.lcssa, 2
  br i1 %.not.1, label %._crit_edge, label %.lr.ph59.2

.lr.ph59.2:                                       ; preds = %.lr.ph59.1
  %21 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 2
  %22 = lshr i64 %20, 56
  %23 = load i8, ptr %21, align 1, !tbaa !17
  %24 = zext i8 %23 to i64
  %25 = xor i64 %22, %24
  %26 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %25
  %27 = load i64, ptr %26, align 8, !tbaa !19
  %28 = shl i64 %20, 8
  %29 = xor i64 %27, %28                          ; 3 uses
  %.not.2 = icmp eq i64 %.137.lcssa, 3
  br i1 %.not.2, label %._crit_edge, label %.lr.ph59.3

.lr.ph59.3:                                       ; preds = %.lr.ph59.2
  %30 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 3
  %31 = lshr i64 %29, 56
  %32 = load i8, ptr %30, align 1, !tbaa !17
  %33 = zext i8 %32 to i64
  %34 = xor i64 %31, %33
  %35 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !19
  %37 = shl i64 %29, 8
  %38 = xor i64 %36, %37                          ; 3 uses
  %.not.3 = icmp eq i64 %.137.lcssa, 4
  br i1 %.not.3, label %._crit_edge, label %.lr.ph59.4

.lr.ph59.4:                                       ; preds = %.lr.ph59.3
  %39 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 4
  %40 = lshr i64 %38, 56
  %41 = load i8, ptr %39, align 1, !tbaa !17
  %42 = zext i8 %41 to i64
  %43 = xor i64 %40, %42
  %44 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !19
  %46 = shl i64 %38, 8
  %47 = xor i64 %45, %46                          ; 3 uses
  %.not.4 = icmp eq i64 %.137.lcssa, 5
  br i1 %.not.4, label %._crit_edge, label %.lr.ph59.a

.lr.ph59.a:                                       ; preds = %.lr.ph59.4
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 5
  %i.bu = lshr i64 %47, 56
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !17
  %i.bw = zext i8 %i.bv to i64
  %i.bx = xor i64 %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !19
  %i.ca = shl i64 %47, 8
  %i.cb = xor i64 %i.bz, %i.ca                    ; 3 uses
  %.not.1.a = icmp eq i64 %.137.lcssa, 6
  br i1 %.not.1.a, label %._crit_edge, label %.lr.ph59.6

.lr.ph59.6:                                       ; preds = %.lr.ph59.a
  %48 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 6
  %49 = lshr i64 %i.cb, 56
  %50 = load i8, ptr %48, align 1, !tbaa !17
  %51 = zext i8 %50 to i64
  %52 = xor i64 %49, %51
  %53 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !19
  %55 = shl i64 %i.cb, 8
  %56 = xor i64 %54, %55
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph59, %.lr.ph59.1, %.lr.ph59.2, %.lr.ph59.3, %.lr.ph59.4, %.lr.ph59.a, %.lr.ph59.6, %.preheader
  %.241.lcssa = phi i64 [ %.140.lcssa, %.preheader ], [ %11, %.lr.ph59 ], [ %20, %.lr.ph59.1 ], [ %29, %.lr.ph59.2 ], [ %38, %.lr.ph59.3 ], [ %47, %.lr.ph59.4 ], [ %i.cb, %.lr.ph59.a ], [ %56, %.lr.ph59.6 ]
  %i.cc = tail call noundef i64 @llvm.bswap.i64(i64 %.241.lcssa)
  ret i64 %i.cc
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i16 @crcspeed16big(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = zext i16 %1 to i64
  %i.b = tail call noundef i64 @llvm.bswap.i64(i64 %i.a) ; 2 uses
  %i.c = icmp ne i64 %3, 0
  %i.d = ptrtoint ptr %2 to i64
  %i.e = and i64 %i.d, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.lr.ph, label %.preheader46

.preheader46:                                     ; preds = %.lr.ph, %bb.a
  %.041.lcssa = phi ptr [ %2, %bb.a ], [ %i.q, %.lr.ph ]
  %.038.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.x, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i64 [ %3, %bb.a ], [ %i.y, %.lr.ph ] ; 3 uses
  %i.h = icmp ugt i64 %.0.lcssa, 7
  br i1 %i.h, label %.lr.ph55, label %.lr.ph63.prol

.lr.ph55:                                         ; preds = %.preheader46
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3584
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.049 = phi i64 [ %i.y, %.lr.ph ], [ %3, %bb.a ]
  %.03848 = phi i64 [ %i.x, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.04147 = phi ptr [ %i.q, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.p = lshr i64 %.03848, 48
  %i.q = getelementptr inbounds nuw i8, ptr %.04147, i64 1 ; 3 uses
  %i.r = load i8, ptr %.04147, align 1, !tbaa !17
  %.tr44 = trunc i64 %i.p to i8
  %.narrow45 = xor i8 %i.r, %.tr44
  %i.s = zext i8 %.narrow45 to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !22
  %i.v = zext i16 %i.u to i64
  %i.w = lshr i64 %.03848, 8
  %i.x = xor i64 %i.w, %i.v                       ; 2 uses
  %i.y = add i64 %.049, -1                        ; 3 uses
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = ptrtoint ptr %i.q to i64
  %i.ab = and i64 %i.aa, 7
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = select i1 %i.z, i1 %i.ac, i1 false
  br i1 %i.ad, label %.lr.ph, label %.preheader46, !llvm.loop !44

.lr.ph63.prol:                                    ; preds = %bb.b, %.preheader46
  %.24061.prol = phi i64 [ %.038.lcssa, %.preheader46 ], [ %i.bt, %bb.b ] ; 8 uses
  %prol.iter = phi i64 [ %.0.lcssa, %.preheader46 ], [ %i.bv, %bb.b ] ; 7 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter, 0
  br i1 %prol.iter.cmp.not, label %._crit_edge, label %.lr.ph63

bb.b:                                             ; preds = %.lr.ph55, %bb.b
  %.154 = phi i64 [ %.0.lcssa, %.lr.ph55 ], [ %i.bv, %bb.b ]
  %.13953 = phi i64 [ %.038.lcssa, %.lr.ph55 ], [ %i.bt, %bb.b ] ; 2 uses
  %.14252 = phi ptr [ %.041.lcssa, %.lr.ph55 ], [ %i.bu, %bb.b ] ; 2 uses
  %i.ae = load i64, ptr %.14252, align 8, !tbaa !19 ; 8 uses
  %i.af = lshr i64 %.13953, 48
  %i.ag = xor i64 %i.ae, %i.af
  %i.ah = and i64 %i.ag, 255
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !22
  %i.ak = lshr i64 %i.ae, 8
  %i.al = xor i64 %i.ak, %.13953
  %i.am = and i64 %i.al, 255
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !22
  %i.ap = xor i16 %i.ao, %i.aj
  %i.aq = lshr i64 %i.ae, 16
  %i.ar = and i64 %i.aq, 255
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !22
  %i.au = xor i16 %i.ap, %i.at
  %i.av = lshr i64 %i.ae, 24
  %i.aw = and i64 %i.av, 255
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !22
  %i.az = xor i16 %i.au, %i.ay
  %i.ba = lshr i64 %i.ae, 32
  %i.bb = and i64 %i.ba, 255
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !22
  %i.be = xor i16 %i.az, %i.bd
  %i.bf = lshr i64 %i.ae, 40
  %i.bg = and i64 %i.bf, 255
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !22
  %i.bj = xor i16 %i.be, %i.bi
  %i.bk = lshr i64 %i.ae, 48
  %i.bl = and i64 %i.bk, 255
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !22
  %i.bo = xor i16 %i.bj, %i.bn
  %i.bp = lshr i64 %i.ae, 56
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !22
  %i.bs = xor i16 %i.bo, %i.br
  %i.bt = zext i16 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.14252, i64 8
  %i.bv = add i64 %.154, -8                       ; 3 uses
  %i.bw = icmp ugt i64 %i.bv, 7
  br i1 %i.bw, label %bb.b, label %.lr.ph63.prol, !llvm.loop !45

.lr.ph63:                                         ; preds = %.lr.ph63.prol
  %4 = lshr i64 %.24061.prol, 8
  %.not = icmp eq i64 %prol.iter, 1
  br i1 %.not, label %._crit_edge, label %.lr.ph63.1

.lr.ph63.1:                                       ; preds = %.lr.ph63
  %5 = lshr i64 %.24061.prol, 16
  %.not.1 = icmp eq i64 %prol.iter, 2
  br i1 %.not.1, label %._crit_edge, label %.lr.ph63.2

.lr.ph63.2:                                       ; preds = %.lr.ph63.1
  %6 = lshr i64 %.24061.prol, 24
  %.not.2 = icmp eq i64 %prol.iter, 3
  br i1 %.not.2, label %._crit_edge, label %.lr.ph63.3

.lr.ph63.3:                                       ; preds = %.lr.ph63.2
  %7 = lshr i64 %.24061.prol, 32
  %.not.3 = icmp eq i64 %prol.iter, 4
  br i1 %.not.3, label %._crit_edge, label %.lr.ph63.4

.lr.ph63.4:                                       ; preds = %.lr.ph63.3
  %8 = lshr i64 %.24061.prol, 40
  %.not.4 = icmp eq i64 %prol.iter, 5
  br i1 %.not.4, label %._crit_edge, label %.lr.ph63.a

.lr.ph63.a:                                       ; preds = %.lr.ph63.4
  %9 = lshr i64 %.24061.prol, 48
  %.not.5 = icmp eq i64 %prol.iter, 6
  %10 = lshr i64 %.24061.prol, 56
  %spec.select = select i1 %.not.5, i64 %9, i64 %10
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph63.a, %.lr.ph63, %.lr.ph63.1, %.lr.ph63.2, %.lr.ph63.3, %.lr.ph63.4, %.lr.ph63.prol
  %.240.lcssa = phi i64 [ %.24061.prol, %.lr.ph63.prol ], [ %4, %.lr.ph63 ], [ %5, %.lr.ph63.1 ], [ %6, %.lr.ph63.2 ], [ %7, %.lr.ph63.3 ], [ %8, %.lr.ph63.4 ], [ %spec.select, %.lr.ph63.a ]
  %i.bx = tail call noundef i64 @llvm.bswap.i64(i64 %.240.lcssa)
  %i.by = trunc i64 %i.bx to i16
  ret i16 %i.by
}

; Function Attrs: nounwind uwtable
define dso_local i64 @crcspeed64native(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @crcspeed64little(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local zeroext i16 @crcspeed16native(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, ptr nofree noundef readonly %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call zeroext i16 @crcspeed16little(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, i64 noundef %3)
  ret i16 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @crcspeed64native_init(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = trunc i64 %indvars.iv.i to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !17
  %i.c = call i64 %0(i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef 1) #7, !inline_history !23
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  store i64 %i.c, ptr %i.d, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.b, !llvm.loop !0

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.preheader.i ], [ 0, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv30.i ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = and i64 %i.f, 255
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19
  %i.j = lshr i64 %i.f, 8
  %i.k = xor i64 %i.i, %i.j                       ; 3 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2048
  store i64 %i.k, ptr %gep.i, align 8, !tbaa !19
  %i.l = and i64 %i.k, 255
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  %i.o = lshr i64 %i.k, 8
  %i.p = xor i64 %i.n, %i.o                       ; 3 uses
  %gep.1.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4096
  store i64 %i.p, ptr %gep.1.i, align 8, !tbaa !19
  %i.q = and i64 %i.p, 255
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19
  %i.t = lshr i64 %i.p, 8
  %i.u = xor i64 %i.s, %i.t                       ; 3 uses
  %gep.2.i = getelementptr inbounds nuw i8, ptr %i.e, i64 6144
  store i64 %i.u, ptr %gep.2.i, align 8, !tbaa !19
  %i.v = and i64 %i.u, 255
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !19
  %i.y = lshr i64 %i.u, 8
  %i.z = xor i64 %i.x, %i.y                       ; 3 uses
  %gep.3.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8192
  store i64 %i.z, ptr %gep.3.i, align 8, !tbaa !19
  %i.aa = and i64 %i.z, 255
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !19
  %i.ad = lshr i64 %i.z, 8
  %i.ae = xor i64 %i.ac, %i.ad                    ; 3 uses
  %gep.4.i = getelementptr inbounds nuw i8, ptr %i.e, i64 10240
  store i64 %i.ae, ptr %gep.4.i, align 8, !tbaa !19
  %i.af = and i64 %i.ae, 255
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !19
  %i.ai = lshr i64 %i.ae, 8
  %i.aj = xor i64 %i.ah, %i.ai                    ; 3 uses
  %gep.5.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12288
  store i64 %i.aj, ptr %gep.5.i, align 8, !tbaa !19
  %i.ak = and i64 %i.aj, 255
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !19
  %i.an = lshr i64 %i.aj, 8
  %i.ao = xor i64 %i.am, %i.an
  %gep.6.i = getelementptr inbounds nuw i8, ptr %i.e, i64 14336
  store i64 %i.ao, ptr %gep.6.i, align 8, !tbaa !19
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next31.i, 256
  br i1 %exitcond33.not.i, label %crcspeed64little_init.exit, label %.preheader.i, !llvm.loop !1

crcspeed64little_init.exit:                       ; preds = %.preheader.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @crcspeed16native_init(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !16
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %bb.a
  %i.b = call zeroext i16 %0(i16 noundef zeroext 0, ptr noundef nonnull %i.a, i64 noundef 1) #7, !inline_history !24
  %i.c = load i32, ptr %i.a, align 4, !tbaa !16   ; 3 uses
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [2 x i8], ptr %1, i64 %i.d
  store i16 %i.b, ptr %i.e, align 2, !tbaa !22
  %i.f = add nsw i32 %i.c, 1
  store i32 %i.f, ptr %i.a, align 4, !tbaa !16
  %i.g = icmp slt i32 %i.c, 255
  br i1 %i.g, label %bb.c, label %bb.b, !llvm.loop !2

bb.d:                                             ; preds = %bb.d, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i ; 8 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !22   ; 2 uses
  %i.j = lshr i16 %i.i, 8
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !22   ; 2 uses
  %i.n = shl i16 %i.i, 8
  %i.o = xor i16 %i.m, %i.n                       ; 2 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  store i16 %i.o, ptr %gep.i, align 2, !tbaa !22
  %i.p = lshr i16 %i.o, 8
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !22   ; 2 uses
  %i.t = shl i16 %i.m, 8
  %i.u = xor i16 %i.s, %i.t                       ; 2 uses
  %gep.1.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1024
  store i16 %i.u, ptr %gep.1.i, align 2, !tbaa !22
  %i.v = lshr i16 %i.u, 8
  %i.w = zext nneg i16 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !22   ; 2 uses
  %i.z = shl i16 %i.s, 8
  %i.aa = xor i16 %i.y, %i.z                      ; 2 uses
  %gep.2.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1536
  store i16 %i.aa, ptr %gep.2.i, align 2, !tbaa !22
  %i.ab = lshr i16 %i.aa, 8
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !22 ; 2 uses
  %i.af = shl i16 %i.y, 8
  %i.ag = xor i16 %i.ae, %i.af                    ; 2 uses
  %gep.3.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2048
  store i16 %i.ag, ptr %gep.3.i, align 2, !tbaa !22
  %i.ah = lshr i16 %i.ag, 8
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !22 ; 2 uses
  %i.al = shl i16 %i.ae, 8
  %i.am = xor i16 %i.ak, %i.al                    ; 2 uses
  %gep.4.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2560
  store i16 %i.am, ptr %gep.4.i, align 2, !tbaa !22
  %i.an = lshr i16 %i.am, 8
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !22 ; 2 uses
  %i.ar = shl i16 %i.ak, 8
  %i.as = xor i16 %i.aq, %i.ar                    ; 2 uses
  %gep.5.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3072
  store i16 %i.as, ptr %gep.5.i, align 2, !tbaa !22
  %i.at = lshr i16 %i.as, 8
  %i.au = zext nneg i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !22
  %i.ax = shl i16 %i.aq, 8
  %i.ay = xor i16 %i.aw, %i.ax
  %gep.6.i = getelementptr inbounds nuw i8, ptr %i.h, i64 3584
  store i16 %i.ay, ptr %gep.6.i, align 2, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %crcspeed16little_init.exit, label %bb.d, !llvm.loop !3

crcspeed16little_init.exit:                       ; preds = %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = distinct !{!3, !20}
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{i32 1, !"ThinLTO", i32 0}
!11 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!12 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!14, !14, i64 0}
!18 = !{!"long", !14, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"short", !14, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{ptr @crcspeed64little_init}
!24 = !{ptr @crcspeed16little_init}
!25 = distinct !{!25, !20, !33, !34}
!26 = distinct !{!26, !20, !33, !34}
!27 = distinct !{!27, !20, !33, !34}
!28 = distinct !{!28, !20, !33, !34}
!29 = distinct !{!29, !20, !33, !34}
!30 = distinct !{!30, !20, !33, !34}
!31 = distinct !{!31, !20, !33, !34}
!32 = distinct !{!32, !20, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20}
!39 = distinct !{!39, !20}
!40 = distinct !{!40, !20}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !20}
!43 = distinct !{!43, !20}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !20}
end_hunk_0
