Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/crc32c?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@crc32c_hw:bb.a
  %i.gd = tail call { i64, i64, i64 } asm "crc32q\09($3), $0\0A\09crc32q\09256($3), $1\0A\09crc32q\09512($3), $2", "=r,=r,=r,r,*m,0,1,2,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.4.ptr.29, ptr nonnull elementtype(i8) %.4.ptr.29, i64 %i.ga, i64 %i.gb, i64 %i.gc) #10, !srcloc !30 ; 3 uses
  %i.ge = extractvalue { i64, i64, i64 } %i.gd, 0
  %i.gf = extractvalue { i64, i64, i64 } %i.gd, 1
  %i.gg = extractvalue { i64, i64, i64 } %i.gd, 2
  %.4.ptr.30 = getelementptr inbounds nuw i8, ptr %.398, i64 240 ; 2 uses
  %i.gh = tail call { i64, i64, i64 } asm "crc32q\09($3), $0\0A\09crc32q\09256($3), $1\0A\09crc32q\09512($3), $2", "=r,=r,=r,r,*m,0,1,2,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.4.ptr.30, ptr nonnull elementtype(i8) %.4.ptr.30, i64 %i.ge, i64 %i.gf, i64 %i.gg) #10, !srcloc !30 ; 3 uses
  %i.gi = extractvalue { i64, i64, i64 } %i.gh, 0
  %i.gj = extractvalue { i64, i64, i64 } %i.gh, 1
  %i.gk = extractvalue { i64, i64, i64 } %i.gh, 2
  %.4.ptr.31 = getelementptr inbounds nuw i8, ptr %.398, i64 248 ; 2 uses
  %i.gl = tail call { i64, i64, i64 } asm "crc32q\09($3), $0\0A\09crc32q\09256($3), $1\0A\09crc32q\09512($3), $2", "=r,=r,=r,r,*m,0,1,2,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.4.ptr.31, ptr nonnull elementtype(i8) %.4.ptr.31, i64 %i.gi, i64 %i.gj, i64 %i.gk) #10, !srcloc !30 ; 3 uses
  %i.gm = extractvalue { i64, i64, i64 } %i.gl, 0 ; 4 uses
  %i.gn = extractvalue { i64, i64, i64 } %i.gl, 1
  %i.go = extractvalue { i64, i64, i64 } %i.gl, 2
  %i.gp = and i64 %i.gm, 255
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr @crc32c_short, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !13
  %i.gs = lshr i64 %i.gm, 8
  %i.gt = and i64 %i.gs, 255
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_short, i64 1024), i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !13
  %i.gw = lshr i64 %i.gm, 16
  %i.gx = and i64 %i.gw, 255
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_short, i64 2048), i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !13
  %i.ha = lshr i64 %i.gm, 24
  %i.hb = and i64 %i.ha, 255
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_short, i64 3072), i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !13
  %i.he = trunc i64 %i.gn to i32
  %i.hf = xor i32 %i.gr, %i.he
  %i.hg = xor i32 %i.hf, %i.gv
  %i.hh = xor i32 %i.hg, %i.gz
  %i.hi = xor i32 %i.hh, %i.hd                    ; 4 uses
  %i.hj = and i32 %i.hi, 255
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr @crc32c_short, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !13
  %i.hn = lshr i32 %i.hi, 8
  %i.ho = and i32 %i.hn, 255
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_short, i64 1024), i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !13
  %i.hs = xor i32 %i.hr, %i.hm
  %i.ht = lshr i32 %i.hi, 16
  %i.hu = and i32 %i.ht, 255
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_short, i64 2048), i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !13
  %i.hy = xor i32 %i.hs, %i.hx
  %i.hz = lshr i32 %i.hi, 24
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_short, i64 3072), i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !13
  %i.id = xor i32 %i.hy, %i.ic
  %i.ie = zext i32 %i.id to i64
  %i.if = xor i64 %i.go, %i.ie                    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.398, i64 768 ; 2 uses
  %i.ih = add nsw i64 %.27196, -768               ; 3 uses
  %i.ii = icmp ugt i64 %i.ih, 767
  br i1 %i.ii, label %.preheader76, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %.preheader76, %.preheader77
  %.271.lcssa = phi i64 [ %.170.lcssa, %.preheader77 ], [ %i.ih, %.preheader76 ] ; 2 uses
  %.365.lcssa = phi i64 [ %.163.lcssa, %.preheader77 ], [ %i.if, %.preheader76 ] ; 2 uses
  %.3.lcssa = phi ptr [ %.1.lcssa, %.preheader77 ], [ %i.ig, %.preheader76 ] ; 3 uses
  %i.ij = and i64 %.271.lcssa, 7                  ; 2 uses
  %i.ik = and i64 %.271.lcssa, 1016               ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %i.ik
  %.not115 = icmp eq i64 %i.ik, 0
  br i1 %.not115, label %.preheader, label %.lr.ph105

.preheader:                                       ; preds = %.lr.ph105, %._crit_edge
  %.567.lcssa = phi i64 [ %.365.lcssa, %._crit_edge ], [ %i.im, %.lr.ph105 ] ; 2 uses
  %.5.lcssa = phi ptr [ %.3.lcssa, %._crit_edge ], [ %i.in, %.lr.ph105 ]
  %.not108 = icmp eq i64 %i.ij, 0
  br i1 %.not108, label %._crit_edge113, label %.lr.ph112

.lr.ph105:                                        ; preds = %._crit_edge, %.lr.ph105
  %.5103 = phi ptr [ %i.in, %.lr.ph105 ], [ %.3.lcssa, %._crit_edge ] ; 3 uses
  %.567102 = phi i64 [ %i.im, %.lr.ph105 ], [ %.365.lcssa, %._crit_edge ]
  %i.im = tail call i64 asm "crc32q\09($1), $0", "=r,r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr %.5103, ptr elementtype(i8) %.5103, i64 %.567102) #10, !srcloc !31 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.5103, i64 8 ; 3 uses
  %i.io = icmp ult ptr %i.in, %i.il
  br i1 %i.io, label %.lr.ph105, label %.preheader, !llvm.loop !26

.lr.ph112:                                        ; preds = %.preheader, %.lr.ph112
  %.6111 = phi ptr [ %i.iq, %.lr.ph112 ], [ %.5.lcssa, %.preheader ] ; 3 uses
  %.668110 = phi i64 [ %i.ip, %.lr.ph112 ], [ %.567.lcssa, %.preheader ]
  %.372109 = phi i64 [ %i.ir, %.lr.ph112 ], [ %i.ij, %.preheader ]
  %i.ip = tail call i64 asm "crc32b\09($1), $0", "=r,r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr %.6111, ptr elementtype(i8) %.6111, i64 %.668110) #10, !srcloc !32 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.6111, i64 1
  %i.ir = add nsw i64 %.372109, -1                ; 2 uses
  %.not = icmp eq i64 %i.ir, 0
  br i1 %.not, label %._crit_edge113, label %.lr.ph112, !llvm.loop !27

._crit_edge113:                                   ; preds = %.lr.ph112, %.preheader
  %.668.lcssa = phi i64 [ %.567.lcssa, %.preheader ], [ %i.ip, %.lr.ph112 ]
  %i.is = trunc i64 %.668.lcssa to i32
  %i.it = xor i32 %i.is, -1
  ret i32 %i.it
}

; Function Attrs: nounwind uwtable
define dso_local i32 @crc32c_sw(i32 noundef %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = tail call i32 @crc32c_sw_little(i32 noundef %0, ptr noundef %1, i64 noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @crc32c_sw_little(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_once(ptr noundef nonnull @crc32c_once_little, ptr noundef nonnull @crc32c_init_sw_little) #9 ; 0 uses
  %i.b = xor i32 %0, -1                           ; 2 uses
  %i.c = icmp ne i64 %2, 0
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02943 = phi ptr [ %i.h, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.03042 = phi i64 [ %i.o, %.lr.ph ], [ %2, %bb.a ]
  %.03441 = phi i32 [ %i.n, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02943, i64 1 ; 3 uses
  %i.i = load i8, ptr %.02943, align 1, !tbaa !14
  %.034.tr = trunc i32 %.03441 to i8
  %.narrow38 = xor i8 %i.i, %.034.tr
  %i.j = zext i8 %.narrow38 to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_little, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !13
  %i.m = lshr i32 %.03441, 8
  %i.n = xor i32 %i.l, %i.m                       ; 2 uses
  %i.o = add i64 %.03042, -1                      ; 3 uses
  %i.p = icmp ne i64 %i.o, 0
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = and i64 %i.q, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = select i1 %i.p, i1 %i.s, i1 false
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.034.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.n, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi i64 [ %2, %bb.a ], [ %i.o, %.lr.ph ] ; 3 uses
  %.029.lcssa = phi ptr [ %1, %bb.a ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.u = icmp ugt i64 %.030.lcssa, 7
  br i1 %i.u, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge, %.preheader
  %.131 = phi i64 [ %i.bj, %.preheader ], [ %.030.lcssa, %._crit_edge ]
  %.1 = phi ptr [ %i.bi, %.preheader ], [ %.029.lcssa, %._crit_edge ] ; 2 uses
  %.0.in = phi i32 [ %i.bh, %.preheader ], [ %.034.lcssa, %._crit_edge ]
  %.0 = zext i32 %.0.in to i64
  %i.v = load i64, ptr %.1, align 8, !tbaa !16    ; 5 uses
  %i.w = xor i64 %i.v, %.0                        ; 4 uses
  %i.x = and i64 %i.w, 255
  %i.y = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_table_little, i64 7168), i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !13
  %i.aa = lshr i64 %i.w, 8
  %i.ab = and i64 %i.aa, 255
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_table_little, i64 6144), i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !13
  %i.ae = xor i32 %i.ad, %i.z
  %i.af = lshr i64 %i.w, 16
  %i.ag = and i64 %i.af, 255
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_table_little, i64 5120), i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !13
  %i.aj = xor i32 %i.ae, %i.ai
  %i.ak = lshr i64 %i.w, 24
  %i.al = and i64 %i.ak, 255
  %i.am = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_table_little, i64 4096), i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !13
  %i.ao = xor i32 %i.aj, %i.an
  %i.ap = lshr i64 %i.v, 32
  %i.aq = and i64 %i.ap, 255
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_table_little, i64 3072), i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !13
  %i.at = xor i32 %i.ao, %i.as
  %i.au = lshr i64 %i.v, 40
  %i.av = and i64 %i.au, 255
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_table_little, i64 2048), i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !13
  %i.ay = xor i32 %i.at, %i.ax
  %i.az = lshr i64 %i.v, 48
  %i.ba = and i64 %i.az, 255
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_table_little, i64 1024), i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !13
  %i.bd = xor i32 %i.ay, %i.bc
  %i.be = lshr i64 %i.v, 56
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_little, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !13
  %i.bh = xor i32 %i.bd, %i.bg                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 2 uses
  %i.bj = add i64 %.131, -8                       ; 3 uses
  %i.bk = icmp ugt i64 %i.bj, 7
  br i1 %i.bk, label %.preheader, label %.loopexit, !llvm.loop !34

.loopexit:                                        ; preds = %.preheader, %._crit_edge
  %.135 = phi i32 [ %.034.lcssa, %._crit_edge ], [ %i.bh, %.preheader ] ; 3 uses
  %.232 = phi i64 [ %.030.lcssa, %._crit_edge ], [ %i.bj, %.preheader ] ; 7 uses
  %.2 = phi ptr [ %.029.lcssa, %._crit_edge ], [ %i.bi, %.preheader ] ; 7 uses
  %.not46 = icmp eq i64 %.232, 0
  br i1 %.not46, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %.loopexit
  %3 = load i8, ptr %.2, align 1, !tbaa !14
  %.236.tr = trunc i32 %.135 to i8
  %.narrow = xor i8 %3, %.236.tr
  %4 = zext i8 %.narrow to i64
  %5 = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_little, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !13
  %7 = lshr i32 %.135, 8
  %8 = xor i32 %6, %7                             ; 3 uses
  %.not = icmp eq i64 %.232, 1
  br i1 %.not, label %._crit_edge52, label %.lr.ph51.1

.lr.ph51.1:                                       ; preds = %.lr.ph51
  %9 = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !14
  %.236.tr.1 = trunc i32 %8 to i8
  %.narrow.1 = xor i8 %10, %.236.tr.1
  %11 = zext i8 %.narrow.1 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_little, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !13
  %14 = lshr i32 %8, 8
  %15 = xor i32 %13, %14                          ; 3 uses
  %.not.1 = icmp eq i64 %.232, 2
  br i1 %.not.1, label %._crit_edge52, label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %.lr.ph51.1
  %16 = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !14
  %.236.tr.2 = trunc i32 %15 to i8
  %.narrow.2 = xor i8 %17, %.236.tr.2
  %18 = zext i8 %.narrow.2 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_little, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !13
  %21 = lshr i32 %15, 8
  %22 = xor i32 %20, %21                          ; 3 uses
  %lcmp.mod.not = icmp eq i64 %.232, 3
  br i1 %lcmp.mod.not, label %._crit_edge52, label %.lr.ph51.prol

.lr.ph51.prol:                                    ; preds = %.lr.ph51.preheader
  %i.bl = getelementptr inbounds nuw i8, ptr %.2, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !14
  %.236.tr.prol = trunc i32 %22 to i8
  %.narrow.prol = xor i8 %i.bm, %.236.tr.prol
  %i.bn = zext i8 %.narrow.prol to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_little, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !13
  %i.bq = lshr i32 %22, 8
  %i.br = xor i32 %i.bp, %i.bq                    ; 3 uses
  %.not.3 = icmp eq i64 %.232, 4
  br i1 %.not.3, label %._crit_edge52, label %.lr.ph51.prol.loopexit

.lr.ph51.prol.loopexit:                           ; preds = %.lr.ph51.prol
  %23 = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %24 = load i8, ptr %23, align 1, !tbaa !14
  %.236.tr.4 = trunc i32 %i.br to i8
  %.narrow.4 = xor i8 %24, %.236.tr.4
  %25 = zext i8 %.narrow.4 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_little, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !13
  %28 = lshr i32 %i.br, 8
  %29 = xor i32 %27, %28                          ; 3 uses
  %i.bs = icmp eq i64 %.232, 5
  br i1 %i.bs, label %._crit_edge52, label %.lr.ph51.a

.lr.ph51.a:                                       ; preds = %.lr.ph51.prol.loopexit
  %i.bt = getelementptr inbounds nuw i8, ptr %.2, i64 5
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !14
  %.236.tr.1.a = trunc i32 %29 to i8
  %.narrow.1.a = xor i8 %i.bu, %.236.tr.1.a
  %i.bv = zext i8 %.narrow.1.a to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_little, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !13
  %i.by = lshr i32 %29, 8
  %i.bz = xor i32 %i.bx, %i.by                    ; 3 uses
  %.not.1.a = icmp eq i64 %.232, 6
  br i1 %.not.1.a, label %._crit_edge52, label %.lr.ph51.6

.lr.ph51.6:                                       ; preds = %.lr.ph51.a
  %30 = getelementptr inbounds nuw i8, ptr %.2, i64 6
  %31 = load i8, ptr %30, align 1, !tbaa !14
  %.236.tr.6 = trunc i32 %i.bz to i8
  %.narrow.6 = xor i8 %31, %.236.tr.6
  %32 = zext i8 %.narrow.6 to i64
  %33 = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_little, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !13
  %35 = lshr i32 %i.bz, 8
  %36 = xor i32 %34, %35
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %.lr.ph51, %.lr.ph51.1, %.lr.ph51.preheader, %.lr.ph51.prol, %.lr.ph51.prol.loopexit, %.lr.ph51.a, %.lr.ph51.6, %.loopexit
  %.236.lcssa = phi i32 [ %.135, %.loopexit ], [ %8, %.lr.ph51 ], [ %15, %.lr.ph51.1 ], [ %22, %.lr.ph51.preheader ], [ %i.br, %.lr.ph51.prol ], [ %29, %.lr.ph51.prol.loopexit ], [ %i.bz, %.lr.ph51.a ], [ %36, %.lr.ph51.6 ]
  %i.ca = xor i32 %.236.lcssa, -1
  ret i32 %i.ca
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @crc32c_init_sw_little() #4 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.a = and <4 x i32> %vec.ind, splat (i32 1)
  %i.b = icmp eq <4 x i32> %i.a, zeroinitializer
  %i.c = lshr <4 x i32> %vec.ind, splat (i32 1)   ; 2 uses
  %i.d = xor <4 x i32> %i.c, splat (i32 -2097792136)
  %i.e = select <4 x i1> %i.b, <4 x i32> %i.c, <4 x i32> %i.d ; 2 uses
  %i.f = and <4 x i32> %i.e, splat (i32 1)
  %i.g = icmp eq <4 x i32> %i.f, zeroinitializer
  %i.h = lshr <4 x i32> %i.e, splat (i32 1)       ; 2 uses
  %i.i = xor <4 x i32> %i.h, splat (i32 -2097792136)
  %i.j = select <4 x i1> %i.g, <4 x i32> %i.h, <4 x i32> %i.i ; 2 uses
  %i.k = and <4 x i32> %i.j, splat (i32 1)
  %i.l = icmp eq <4 x i32> %i.k, zeroinitializer
  %i.m = lshr <4 x i32> %i.j, splat (i32 1)       ; 2 uses
  %i.n = xor <4 x i32> %i.m, splat (i32 -2097792136)
  %i.o = select <4 x i1> %i.l, <4 x i32> %i.m, <4 x i32> %i.n ; 2 uses
  %i.p = and <4 x i32> %i.o, splat (i32 1)
  %i.q = icmp eq <4 x i32> %i.p, zeroinitializer
  %i.r = lshr <4 x i32> %i.o, splat (i32 1)       ; 2 uses
  %i.s = xor <4 x i32> %i.r, splat (i32 -2097792136)
  %i.t = select <4 x i1> %i.q, <4 x i32> %i.r, <4 x i32> %i.s ; 2 uses
  %i.u = and <4 x i32> %i.t, splat (i32 1)
  %i.v = icmp eq <4 x i32> %i.u, zeroinitializer
  %i.w = lshr <4 x i32> %i.t, splat (i32 1)       ; 2 uses
  %i.x = xor <4 x i32> %i.w, splat (i32 -2097792136)
  %i.y = select <4 x i1> %i.v, <4 x i32> %i.w, <4 x i32> %i.x ; 2 uses
  %i.z = and <4 x i32> %i.y, splat (i32 1)
  %i.aa = icmp eq <4 x i32> %i.z, zeroinitializer
  %i.ab = lshr <4 x i32> %i.y, splat (i32 1)      ; 2 uses
  %i.ac = xor <4 x i32> %i.ab, splat (i32 -2097792136)
  %i.ad = select <4 x i1> %i.aa, <4 x i32> %i.ab, <4 x i32> %i.ac ; 2 uses
  %i.ae = and <4 x i32> %i.ad, splat (i32 1)
  %i.af = icmp eq <4 x i32> %i.ae, zeroinitializer
  %i.ag = lshr <4 x i32> %i.ad, splat (i32 1)     ; 2 uses
  %i.ah = xor <4 x i32> %i.ag, splat (i32 -2097792136)
  %i.ai = select <4 x i1> %i.af, <4 x i32> %i.ag, <4 x i32> %i.ah ; 2 uses
  %i.aj = and <4 x i32> %i.ai, splat (i32 1)
  %i.ak = icmp eq <4 x i32> %i.aj, zeroinitializer
  %i.al = lshr <4 x i32> %i.ai, splat (i32 1)     ; 2 uses
  %i.am = xor <4 x i32> %i.al, splat (i32 -2097792136)
  %i.an = select <4 x i1> %i.ak, <4 x i32> %i.al, <4 x i32> %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_little, i64 %index
  store <4 x i32> %i.an, ptr %i.ao, align 16, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ap = icmp eq i64 %index.next, 256
  br i1 %i.ap, label %.preheader, label %vector.body, !llvm.loop !35

bb.a:                                             ; preds = %.preheader
  ret void

.preheader:                                       ; preds = %vector.body, %.preheader
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %.preheader ], [ 0, %vector.body ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_little, i64 %indvars.iv58 ; 8 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !13 ; 2 uses
  %i.as = and i32 %i.ar, 255
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_little, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !13
  %i.aw = lshr i32 %i.ar, 8
  %i.ax = xor i32 %i.av, %i.aw                    ; 3 uses
  %gep = getelementptr inbounds nuw i8, ptr %i.aq, i64 1024
  store i32 %i.ax, ptr %gep, align 4, !tbaa !13
  %i.ay = and i32 %i.ax, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_little, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !13
  %i.bc = lshr i32 %i.ax, 8
  %i.bd = xor i32 %i.bb, %i.bc                    ; 3 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.aq, i64 2048
  store i32 %i.bd, ptr %gep.1, align 4, !tbaa !13
  %i.be = and i32 %i.bd, 255
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_little, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !13
  %i.bi = lshr i32 %i.bd, 8
  %i.bj = xor i32 %i.bh, %i.bi                    ; 3 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.aq, i64 3072
  store i32 %i.bj, ptr %gep.2, align 4, !tbaa !13
  %i.bk = and i32 %i.bj, 255
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_little, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !13
  %i.bo = lshr i32 %i.bj, 8
  %i.bp = xor i32 %i.bn, %i.bo                    ; 3 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.aq, i64 4096
  store i32 %i.bp, ptr %gep.3, align 4, !tbaa !13
  %i.bq = and i32 %i.bp, 255
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_little, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !13
  %i.bu = lshr i32 %i.bp, 8
  %i.bv = xor i32 %i.bt, %i.bu                    ; 3 uses
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.aq, i64 5120
  store i32 %i.bv, ptr %gep.4, align 4, !tbaa !13
  %i.bw = and i32 %i.bv, 255
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_little, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !13
  %i.ca = lshr i32 %i.bv, 8
  %i.cb = xor i32 %i.bz, %i.ca                    ; 3 uses
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.aq, i64 6144
  store i32 %i.cb, ptr %gep.5, align 4, !tbaa !13
  %i.cc = and i32 %i.cb, 255
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_little, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !13
  %i.cg = lshr i32 %i.cb, 8
  %i.ch = xor i32 %i.cf, %i.cg
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.aq, i64 7168
  store i32 %i.ch, ptr %gep.6, align 4, !tbaa !13
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next59, 256
  br i1 %exitcond61.not, label %bb.a, label %.preheader, !llvm.loop !36
}

; Function Attrs: nounwind uwtable
define dso_local i32 @crc32c_sw_big(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_once(ptr noundef nonnull @crc32c_once_big, ptr noundef nonnull @crc32c_init_sw_big) #9 ; 0 uses
  %i.b = xor i32 %0, -1                           ; 2 uses
  %i.c = icmp ne i64 %2, 0
  %i.d = ptrtoint ptr %1 to i64
  %i.e = and i64 %i.d, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = and i1 %i.c, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02943 = phi ptr [ %i.h, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.03042 = phi i64 [ %i.o, %.lr.ph ], [ %2, %bb.a ]
  %.03441 = phi i32 [ %i.n, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02943, i64 1 ; 3 uses
  %i.i = load i8, ptr %.02943, align 1, !tbaa !14
  %.034.tr = trunc i32 %.03441 to i8
  %.narrow38 = xor i8 %i.i, %.034.tr
  %i.j = zext i8 %.narrow38 to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_big_byte, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !13
  %i.m = lshr i32 %.03441, 8
  %i.n = xor i32 %i.l, %i.m                       ; 2 uses
  %i.o = add i64 %.03042, -1                      ; 3 uses
  %i.p = icmp ne i64 %i.o, 0
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = and i64 %i.q, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = select i1 %i.p, i1 %i.s, i1 false
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.034.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.n, %.lr.ph ] ; 2 uses
  %.030.lcssa = phi i64 [ %2, %bb.a ], [ %i.o, %.lr.ph ] ; 3 uses
  %.029.lcssa = phi ptr [ %1, %bb.a ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.u = icmp ugt i64 %.030.lcssa, 7
  br i1 %i.u, label %bb.b, label %bb.e

bb.b:                                             ; preds = %._crit_edge
  %i.v = zext i32 %.034.lcssa to i64
  %i.w = tail call i64 @llvm.bswap.i64(i64 %i.v)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.131 = phi i64 [ %.030.lcssa, %bb.b ], [ %i.bl, %bb.c ]
  %.1 = phi ptr [ %.029.lcssa, %bb.b ], [ %i.bk, %bb.c ] ; 2 uses
  %.0 = phi i64 [ %i.w, %bb.b ], [ %i.bj, %bb.c ]
  %i.x = load i64, ptr %.1, align 8, !tbaa !16
  %i.y = xor i64 %i.x, %.0                        ; 8 uses
  %i.z = and i64 %i.y, 255
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @crc32c_table_big, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.ac = lshr i64 %i.y, 8
  %i.ad = and i64 %i.ac, 255
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_table_big, i64 2048), i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ag = xor i64 %i.af, %i.ab
  %i.ah = lshr i64 %i.y, 16
  %i.ai = and i64 %i.ah, 255
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_table_big, i64 4096), i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !16
  %i.al = xor i64 %i.ag, %i.ak
  %i.am = lshr i64 %i.y, 24
  %i.an = and i64 %i.am, 255
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_table_big, i64 6144), i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16
  %i.aq = xor i64 %i.al, %i.ap
  %i.ar = lshr i64 %i.y, 32
  %i.as = and i64 %i.ar, 255
  %i.at = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_table_big, i64 8192), i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16
  %i.av = xor i64 %i.aq, %i.au
  %i.aw = lshr i64 %i.y, 40
  %i.ax = and i64 %i.aw, 255
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_table_big, i64 10240), i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.ba = xor i64 %i.av, %i.az
  %i.bb = lshr i64 %i.y, 48
  %i.bc = and i64 %i.bb, 255
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_table_big, i64 12288), i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !16
  %i.bf = xor i64 %i.ba, %i.be
  %i.bg = lshr i64 %i.y, 56
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc32c_table_big, i64 14336), i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !16
  %i.bj = xor i64 %i.bf, %i.bi                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 2 uses
  %i.bl = add i64 %.131, -8                       ; 3 uses
  %i.bm = icmp ugt i64 %i.bl, 7
  br i1 %i.bm, label %bb.c, label %bb.d, !llvm.loop !38

bb.d:                                             ; preds = %bb.c
  %i.bn = tail call i64 @llvm.bswap.i64(i64 %i.bj)
  %i.bo = trunc i64 %i.bn to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.135 = phi i32 [ %i.bo, %bb.d ], [ %.034.lcssa, %._crit_edge ] ; 3 uses
  %.232 = phi i64 [ %i.bl, %bb.d ], [ %.030.lcssa, %._crit_edge ] ; 7 uses
  %.2 = phi ptr [ %i.bk, %bb.d ], [ %.029.lcssa, %._crit_edge ] ; 7 uses
  %.not46 = icmp eq i64 %.232, 0
  br i1 %.not46, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %bb.e
  %3 = load i8, ptr %.2, align 1, !tbaa !14
  %.236.tr = trunc i32 %.135 to i8
  %.narrow = xor i8 %3, %.236.tr
  %4 = zext i8 %.narrow to i64
  %5 = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_big_byte, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !13
  %7 = lshr i32 %.135, 8
  %8 = xor i32 %6, %7                             ; 3 uses
  %.not = icmp eq i64 %.232, 1
  br i1 %.not, label %._crit_edge52, label %.lr.ph51.1

.lr.ph51.1:                                       ; preds = %.lr.ph51
  %9 = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !14
  %.236.tr.1 = trunc i32 %8 to i8
  %.narrow.1 = xor i8 %10, %.236.tr.1
  %11 = zext i8 %.narrow.1 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_big_byte, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !13
  %14 = lshr i32 %8, 8
  %15 = xor i32 %13, %14                          ; 3 uses
  %.not.1 = icmp eq i64 %.232, 2
  br i1 %.not.1, label %._crit_edge52, label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %.lr.ph51.1
  %16 = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !14
  %.236.tr.2 = trunc i32 %15 to i8
  %.narrow.2 = xor i8 %17, %.236.tr.2
  %18 = zext i8 %.narrow.2 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_big_byte, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !13
  %21 = lshr i32 %15, 8
  %22 = xor i32 %20, %21                          ; 3 uses
  %lcmp.mod.not = icmp eq i64 %.232, 3
  br i1 %lcmp.mod.not, label %._crit_edge52, label %.lr.ph51.prol

.lr.ph51.prol:                                    ; preds = %.lr.ph51.preheader
  %i.bp = getelementptr inbounds nuw i8, ptr %.2, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !14
  %.236.tr.prol = trunc i32 %22 to i8
  %.narrow.prol = xor i8 %i.bq, %.236.tr.prol
  %i.br = zext i8 %.narrow.prol to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_big_byte, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !13
  %i.bu = lshr i32 %22, 8
  %i.bv = xor i32 %i.bt, %i.bu                    ; 3 uses
  %.not.3 = icmp eq i64 %.232, 4
  br i1 %.not.3, label %._crit_edge52, label %.lr.ph51.prol.loopexit

.lr.ph51.prol.loopexit:                           ; preds = %.lr.ph51.prol
  %23 = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %24 = load i8, ptr %23, align 1, !tbaa !14
  %.236.tr.4 = trunc i32 %i.bv to i8
  %.narrow.4 = xor i8 %24, %.236.tr.4
  %25 = zext i8 %.narrow.4 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_big_byte, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !13
  %28 = lshr i32 %i.bv, 8
  %29 = xor i32 %27, %28                          ; 3 uses
  %i.bw = icmp eq i64 %.232, 5
  br i1 %i.bw, label %._crit_edge52, label %.lr.ph51.a

.lr.ph51.a:                                       ; preds = %.lr.ph51.prol.loopexit
  %i.bx = getelementptr inbounds nuw i8, ptr %.2, i64 5
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14
  %.236.tr.1.a = trunc i32 %29 to i8
  %.narrow.1.a = xor i8 %i.by, %.236.tr.1.a
  %i.bz = zext i8 %.narrow.1.a to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_big_byte, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !13
  %i.cc = lshr i32 %29, 8
  %i.cd = xor i32 %i.cb, %i.cc                    ; 3 uses
  %.not.1.a = icmp eq i64 %.232, 6
  br i1 %.not.1.a, label %._crit_edge52, label %.lr.ph51.6

.lr.ph51.6:                                       ; preds = %.lr.ph51.a
  %30 = getelementptr inbounds nuw i8, ptr %.2, i64 6
  %31 = load i8, ptr %30, align 1, !tbaa !14
  %.236.tr.6 = trunc i32 %i.cd to i8
  %.narrow.6 = xor i8 %31, %.236.tr.6
  %32 = zext i8 %.narrow.6 to i64
  %33 = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_big_byte, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !13
  %35 = lshr i32 %i.cd, 8
  %36 = xor i32 %34, %35
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %.lr.ph51, %.lr.ph51.1, %.lr.ph51.preheader, %.lr.ph51.prol, %.lr.ph51.prol.loopexit, %.lr.ph51.a, %.lr.ph51.6, %bb.e
  %.236.lcssa = phi i32 [ %.135, %bb.e ], [ %8, %.lr.ph51 ], [ %15, %.lr.ph51.1 ], [ %22, %.lr.ph51.preheader ], [ %i.bv, %.lr.ph51.prol ], [ %29, %.lr.ph51.prol.loopexit ], [ %i.cd, %.lr.ph51.a ], [ %36, %.lr.ph51.6 ]
  %i.ce = xor i32 %.236.lcssa, -1
  ret i32 %i.ce
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @crc32c_init_sw_big() #4 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.a = and <4 x i32> %vec.ind, splat (i32 1)
  %i.b = icmp eq <4 x i32> %i.a, zeroinitializer
  %i.c = lshr <4 x i32> %vec.ind, splat (i32 1)   ; 2 uses
  %i.d = xor <4 x i32> %i.c, splat (i32 -2097792136)
  %i.e = select <4 x i1> %i.b, <4 x i32> %i.c, <4 x i32> %i.d ; 2 uses
  %i.f = and <4 x i32> %i.e, splat (i32 1)
  %i.g = icmp eq <4 x i32> %i.f, zeroinitializer
  %i.h = lshr <4 x i32> %i.e, splat (i32 1)       ; 2 uses
  %i.i = xor <4 x i32> %i.h, splat (i32 -2097792136)
  %i.j = select <4 x i1> %i.g, <4 x i32> %i.h, <4 x i32> %i.i ; 2 uses
  %i.k = and <4 x i32> %i.j, splat (i32 1)
  %i.l = icmp eq <4 x i32> %i.k, zeroinitializer
  %i.m = lshr <4 x i32> %i.j, splat (i32 1)       ; 2 uses
  %i.n = xor <4 x i32> %i.m, splat (i32 -2097792136)
  %i.o = select <4 x i1> %i.l, <4 x i32> %i.m, <4 x i32> %i.n ; 2 uses
  %i.p = and <4 x i32> %i.o, splat (i32 1)
  %i.q = icmp eq <4 x i32> %i.p, zeroinitializer
  %i.r = lshr <4 x i32> %i.o, splat (i32 1)       ; 2 uses
  %i.s = xor <4 x i32> %i.r, splat (i32 -2097792136)
  %i.t = select <4 x i1> %i.q, <4 x i32> %i.r, <4 x i32> %i.s ; 2 uses
  %i.u = and <4 x i32> %i.t, splat (i32 1)
  %i.v = icmp eq <4 x i32> %i.u, zeroinitializer
  %i.w = lshr <4 x i32> %i.t, splat (i32 1)       ; 2 uses
  %i.x = xor <4 x i32> %i.w, splat (i32 -2097792136)
  %i.y = select <4 x i1> %i.v, <4 x i32> %i.w, <4 x i32> %i.x ; 2 uses
  %i.z = and <4 x i32> %i.y, splat (i32 1)
  %i.aa = icmp eq <4 x i32> %i.z, zeroinitializer
  %i.ab = lshr <4 x i32> %i.y, splat (i32 1)      ; 2 uses
  %i.ac = xor <4 x i32> %i.ab, splat (i32 -2097792136)
  %i.ad = select <4 x i1> %i.aa, <4 x i32> %i.ab, <4 x i32> %i.ac ; 2 uses
  %i.ae = and <4 x i32> %i.ad, splat (i32 1)
  %i.af = icmp eq <4 x i32> %i.ae, zeroinitializer
  %i.ag = lshr <4 x i32> %i.ad, splat (i32 1)     ; 2 uses
  %i.ah = xor <4 x i32> %i.ag, splat (i32 -2097792136)
  %i.ai = select <4 x i1> %i.af, <4 x i32> %i.ag, <4 x i32> %i.ah ; 2 uses
  %i.aj = and <4 x i32> %i.ai, splat (i32 1)
  %i.ak = icmp eq <4 x i32> %i.aj, zeroinitializer
  %i.al = lshr <4 x i32> %i.ai, splat (i32 1)     ; 2 uses
  %i.am = xor <4 x i32> %i.al, splat (i32 -2097792136)
  %i.an = select <4 x i1> %i.ak, <4 x i32> %i.al, <4 x i32> %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_big_byte, i64 %index
  store <4 x i32> %i.an, ptr %i.ao, align 16, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ap = icmp eq i64 %index.next, 256
  br i1 %i.ap, label %.preheader, label %vector.body, !llvm.loop !39

bb.a:                                             ; preds = %.preheader
  ret void

.preheader:                                       ; preds = %vector.body, %.preheader
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %.preheader ], [ 0, %vector.body ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_big_byte, i64 %indvars.iv60
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !13 ; 3 uses
  %i.as = zext i32 %i.ar to i64
  %i.at = tail call i64 @llvm.bswap.i64(i64 %i.as)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @crc32c_table_big, i64 %indvars.iv60 ; 8 uses
  store i64 %i.at, ptr %i.au, align 8, !tbaa !16
  %i.av = and i32 %i.ar, 255
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_big_byte, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !13
  %i.az = lshr i32 %i.ar, 8
  %i.ba = xor i32 %i.ay, %i.az                    ; 3 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = tail call i64 @llvm.bswap.i64(i64 %i.bb)
  %gep = getelementptr inbounds nuw i8, ptr %i.au, i64 2048
  store i64 %i.bc, ptr %gep, align 8, !tbaa !16
  %i.bd = and i32 %i.ba, 255
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_big_byte, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !13
  %i.bh = lshr i32 %i.ba, 8
  %i.bi = xor i32 %i.bg, %i.bh                    ; 3 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = tail call i64 @llvm.bswap.i64(i64 %i.bj)
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.au, i64 4096
  store i64 %i.bk, ptr %gep.1, align 8, !tbaa !16
  %i.bl = and i32 %i.bi, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_big_byte, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !13
  %i.bp = lshr i32 %i.bi, 8
  %i.bq = xor i32 %i.bo, %i.bp                    ; 3 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = tail call i64 @llvm.bswap.i64(i64 %i.br)
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.au, i64 6144
  store i64 %i.bs, ptr %gep.2, align 8, !tbaa !16
  %i.bt = and i32 %i.bq, 255
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_big_byte, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !13
  %i.bx = lshr i32 %i.bq, 8
  %i.by = xor i32 %i.bw, %i.bx                    ; 3 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = tail call i64 @llvm.bswap.i64(i64 %i.bz)
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.au, i64 8192
  store i64 %i.ca, ptr %gep.3, align 8, !tbaa !16
  %i.cb = and i32 %i.by, 255
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_big_byte, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !13
  %i.cf = lshr i32 %i.by, 8
  %i.cg = xor i32 %i.ce, %i.cf                    ; 3 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = tail call i64 @llvm.bswap.i64(i64 %i.ch)
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.au, i64 10240
  store i64 %i.ci, ptr %gep.4, align 8, !tbaa !16
  %i.cj = and i32 %i.cg, 255
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_big_byte, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !13
  %i.cn = lshr i32 %i.cg, 8
  %i.co = xor i32 %i.cm, %i.cn                    ; 3 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = tail call i64 @llvm.bswap.i64(i64 %i.cp)
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.au, i64 12288
  store i64 %i.cq, ptr %gep.5, align 8, !tbaa !16
  %i.cr = and i32 %i.co, 255
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr @crc32c_table_big_byte, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !13
  %i.cv = lshr i32 %i.co, 8
  %i.cw = xor i32 %i.cu, %i.cv
  %i.cx = zext i32 %i.cw to i64
  %i.cy = tail call i64 @llvm.bswap.i64(i64 %i.cx)
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.au, i64 14336
  store i64 %i.cy, ptr %gep.6, align 8, !tbaa !16
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next61, 256
  br i1 %exitcond63.not, label %bb.a, label %.preheader, !llvm.loop !40
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @crc32c_init_hw() #6 {
bb.a:
  tail call fastcc void @crc32c_zeros(ptr noundef nonnull @crc32c_long, i64 noundef 8192)
  tail call fastcc void @crc32c_zeros(ptr noundef nonnull @crc32c_short, i64 noundef 256)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @crc32c_zeros(ptr nofree noundef writeonly captures(none) %0, i64 noundef range(i64 256, 8193) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 17 uses
  %i.b = alloca [32 x i32], align 16              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store <4 x i32> <i32 -2097792136, i32 1, i32 2, i32 4>, ptr %i.a, align 16, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> <i32 8, i32 16, i32 32, i32 64>, ptr %i.c, align 16, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i32> <i32 128, i32 256, i32 512, i32 1024>, ptr %i.d, align 16, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i32> <i32 2048, i32 4096, i32 8192, i32 16384>, ptr %i.e, align 16, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <4 x i32> <i32 32768, i32 65536, i32 131072, i32 262144>, ptr %i.f, align 16, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <4 x i32> <i32 524288, i32 1048576, i32 2097152, i32 4194304>, ptr %i.g, align 16, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <4 x i32> <i32 8388608, i32 16777216, i32 33554432, i32 67108864>, ptr %i.h, align 16, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x i32> <i32 134217728, i32 268435456, i32 536870912, i32 1073741824>, ptr %i.i, align 16, !tbaa !13
  br label %.preheader66.i

.preheader66.i:                                   ; preds = %gf2_matrix_times.exit.i.i, %bb.a
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %gf2_matrix_times.exit.i.i ], [ 0, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !13   ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not9.i.i.i, label %gf2_matrix_times.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader66.i, %bb.c
  %.012.i.i.i = phi i32 [ %.1.i.i.i, %bb.c ], [ 0, %.preheader66.i ] ; 2 uses
  %.0611.i.i.i = phi i32 [ %i.o, %bb.c ], [ %i.k, %.preheader66.i ] ; 2 uses
  %.0710.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.a, %.preheader66.i ] ; 2 uses
  %i.l = and i32 %.0611.i.i.i, 1
  %.not8.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not8.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.m = load i32, ptr %.0710.i.i.i, align 4, !tbaa !13
  %i.n = xor i32 %i.m, %.012.i.i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.1.i.i.i = phi i32 [ %i.n, %bb.b ], [ %.012.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.o = lshr i32 %.0611.i.i.i, 1                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 4
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %gf2_matrix_times.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !41

gf2_matrix_times.exit.i.i:                        ; preds = %bb.c, %.preheader66.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %.preheader66.i ], [ %.1.i.i.i, %bb.c ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i
  store i32 %.0.lcssa.i.i.i, ptr %i.q, align 4, !tbaa !13
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 32
  br i1 %exitcond.not.i.i, label %gf2_matrix_square.exit.i, label %.preheader66.i, !llvm.loop !42

gf2_matrix_square.exit.i:                         ; preds = %gf2_matrix_times.exit.i.i, %gf2_matrix_times.exit.i31.i
  %indvars.iv.i22.i = phi i64 [ %indvars.iv.next.i33.i, %gf2_matrix_times.exit.i31.i ], [ 0, %gf2_matrix_times.exit.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i22.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !13   ; 2 uses
  %.not9.i.i23.i = icmp eq i32 %i.s, 0
  br i1 %.not9.i.i23.i, label %gf2_matrix_times.exit.i31.i, label %.lr.ph.i.i24.i

.lr.ph.i.i24.i:                                   ; preds = %gf2_matrix_square.exit.i, %bb.e
  %.012.i.i25.i = phi i32 [ %.1.i.i29.i, %bb.e ], [ 0, %gf2_matrix_square.exit.i ] ; 2 uses
  %.0611.i.i26.i = phi i32 [ %i.w, %bb.e ], [ %i.s, %gf2_matrix_square.exit.i ] ; 2 uses
  %.0710.i.i27.i = phi ptr [ %i.x, %bb.e ], [ %i.b, %gf2_matrix_square.exit.i ] ; 2 uses
  %i.t = and i32 %.0611.i.i26.i, 1
  %.not8.i.i28.i = icmp eq i32 %i.t, 0
  br i1 %.not8.i.i28.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i24.i
  %i.u = load i32, ptr %.0710.i.i27.i, align 4, !tbaa !13
  %i.v = xor i32 %i.u, %.012.i.i25.i
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i24.i
  %.1.i.i29.i = phi i32 [ %i.v, %bb.d ], [ %.012.i.i25.i, %.lr.ph.i.i24.i ] ; 2 uses
  %i.w = lshr i32 %.0611.i.i26.i, 1               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0710.i.i27.i, i64 4
  %.not.i.i30.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i30.i, label %gf2_matrix_times.exit.i31.i, label %.lr.ph.i.i24.i, !llvm.loop !41

gf2_matrix_times.exit.i31.i:                      ; preds = %bb.e, %gf2_matrix_square.exit.i
  %.0.lcssa.i.i32.i = phi i32 [ 0, %gf2_matrix_square.exit.i ], [ %.1.i.i29.i, %bb.e ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i22.i
  store i32 %.0.lcssa.i.i32.i, ptr %i.y, align 4, !tbaa !13
  %indvars.iv.next.i33.i = add nuw nsw i64 %indvars.iv.i22.i, 1 ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %indvars.iv.next.i33.i, 32
  br i1 %exitcond.not.i34.i, label %gf2_matrix_square.exit35.i, label %gf2_matrix_square.exit.i, !llvm.loop !42

gf2_matrix_square.exit35.i:                       ; preds = %gf2_matrix_times.exit.i31.i, %gf2_matrix_square.exit63.i
  %.019.i = phi i64 [ %i.aq, %gf2_matrix_square.exit63.i ], [ %1, %gf2_matrix_times.exit.i31.i ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %gf2_matrix_times.exit.i45.i, %gf2_matrix_square.exit35.i
  %indvars.iv.i36.i = phi i64 [ 0, %gf2_matrix_square.exit35.i ], [ %indvars.iv.next.i47.i, %gf2_matrix_times.exit.i45.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i36.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !13  ; 2 uses
  %.not9.i.i37.i = icmp eq i32 %i.aa, 0
  br i1 %.not9.i.i37.i, label %gf2_matrix_times.exit.i45.i, label %.lr.ph.i.i38.i

.lr.ph.i.i38.i:                                   ; preds = %bb.f, %bb.h
  %.012.i.i39.i = phi i32 [ %.1.i.i43.i, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %.0611.i.i40.i = phi i32 [ %i.ae, %bb.h ], [ %i.aa, %bb.f ] ; 2 uses
  %.0710.i.i41.i = phi ptr [ %i.af, %bb.h ], [ %i.a, %bb.f ] ; 2 uses
  %i.ab = and i32 %.0611.i.i40.i, 1
  %.not8.i.i42.i = icmp eq i32 %i.ab, 0
  br i1 %.not8.i.i42.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i38.i
  %i.ac = load i32, ptr %.0710.i.i41.i, align 4, !tbaa !13
  %i.ad = xor i32 %i.ac, %.012.i.i39.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i38.i
  %.1.i.i43.i = phi i32 [ %i.ad, %bb.g ], [ %.012.i.i39.i, %.lr.ph.i.i38.i ] ; 2 uses
  %i.ae = lshr i32 %.0611.i.i40.i, 1              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0710.i.i41.i, i64 4
  %.not.i.i44.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i44.i, label %gf2_matrix_times.exit.i45.i, label %.lr.ph.i.i38.i, !llvm.loop !41

gf2_matrix_times.exit.i45.i:                      ; preds = %bb.h, %bb.f
  %.0.lcssa.i.i46.i = phi i32 [ 0, %bb.f ], [ %.1.i.i43.i, %bb.h ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i36.i
  store i32 %.0.lcssa.i.i46.i, ptr %i.ag, align 4, !tbaa !13
  %indvars.iv.next.i47.i = add nuw nsw i64 %indvars.iv.i36.i, 1 ; 2 uses
  %exitcond.not.i48.i = icmp eq i64 %indvars.iv.next.i47.i, 32
  br i1 %exitcond.not.i48.i, label %gf2_matrix_square.exit49.i, label %bb.f, !llvm.loop !42

gf2_matrix_square.exit49.i:                       ; preds = %gf2_matrix_times.exit.i45.i
  %i.ah = icmp samesign ult i64 %.019.i, 2
  br i1 %i.ah, label %crc32c_zeros_op.exit, label %.preheader64.i

.preheader64.i:                                   ; preds = %gf2_matrix_square.exit49.i, %gf2_matrix_times.exit.i59.i
  %indvars.iv.i50.i = phi i64 [ %indvars.iv.next.i61.i, %gf2_matrix_times.exit.i59.i ], [ 0, %gf2_matrix_square.exit49.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i50.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !13 ; 2 uses
  %.not9.i.i51.i = icmp eq i32 %i.aj, 0
  br i1 %.not9.i.i51.i, label %gf2_matrix_times.exit.i59.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %.preheader64.i, %bb.j
  %.012.i.i53.i = phi i32 [ %.1.i.i57.i, %bb.j ], [ 0, %.preheader64.i ] ; 2 uses
  %.0611.i.i54.i = phi i32 [ %i.an, %bb.j ], [ %i.aj, %.preheader64.i ] ; 2 uses
  %.0710.i.i55.i = phi ptr [ %i.ao, %bb.j ], [ %i.b, %.preheader64.i ] ; 2 uses
  %i.ak = and i32 %.0611.i.i54.i, 1
  %.not8.i.i56.i = icmp eq i32 %i.ak, 0
  br i1 %.not8.i.i56.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i52.i
  %i.al = load i32, ptr %.0710.i.i55.i, align 4, !tbaa !13
  %i.am = xor i32 %i.al, %.012.i.i53.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i52.i
  %.1.i.i57.i = phi i32 [ %i.am, %bb.i ], [ %.012.i.i53.i, %.lr.ph.i.i52.i ] ; 2 uses
  %i.an = lshr i32 %.0611.i.i54.i, 1              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0710.i.i55.i, i64 4
  %.not.i.i58.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i58.i, label %gf2_matrix_times.exit.i59.i, label %.lr.ph.i.i52.i, !llvm.loop !41

gf2_matrix_times.exit.i59.i:                      ; preds = %bb.j, %.preheader64.i
  %.0.lcssa.i.i60.i = phi i32 [ 0, %.preheader64.i ], [ %.1.i.i57.i, %bb.j ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i50.i
  store i32 %.0.lcssa.i.i60.i, ptr %i.ap, align 4, !tbaa !13
  %indvars.iv.next.i61.i = add nuw nsw i64 %indvars.iv.i50.i, 1 ; 2 uses
  %exitcond.not.i62.i = icmp eq i64 %indvars.iv.next.i61.i, 32
  br i1 %exitcond.not.i62.i, label %gf2_matrix_square.exit63.i, label %.preheader64.i, !llvm.loop !42

gf2_matrix_square.exit63.i:                       ; preds = %gf2_matrix_times.exit.i59.i
  %i.aq = lshr i64 %.019.i, 2                     ; 2 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %.preheader.preheader.i, label %gf2_matrix_square.exit35.i, !llvm.loop !43

.preheader.preheader.i:                           ; preds = %gf2_matrix_square.exit63.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, ptr noundef nonnull align 16 dereferenceable(128) %i.a, i64 128, i1 false), !tbaa !13
  br label %crc32c_zeros_op.exit

crc32c_zeros_op.exit:                             ; preds = %gf2_matrix_square.exit49.i, %.preheader.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %gf2_matrix_times.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void

bb.l:                                             ; preds = %crc32c_zeros_op.exit, %gf2_matrix_times.exit44
  %indvars.iv = phi i64 [ 0, %crc32c_zeros_op.exit ], [ %indvars.iv.next, %gf2_matrix_times.exit44 ] ; 10 uses
  %.not9.i = icmp eq i64 %indvars.iv, 0
  br i1 %.not9.i, label %gf2_matrix_times.exit34.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.l
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph.i

gf2_matrix_times.exit34.thread:                   ; preds = %bb.l
  store i32 0, ptr %0, align 4, !tbaa !13
  store i32 0, ptr %i.as, align 4, !tbaa !13
  store i32 0, ptr %i.at, align 4, !tbaa !13
  br label %gf2_matrix_times.exit44

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.n
  %.012.i = phi i32 [ %.1.i, %bb.n ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.0611.i = phi i32 [ %i.ay, %bb.n ], [ %i.au, %.lr.ph.i.preheader ] ; 2 uses
  %.0710.i = phi ptr [ %i.az, %bb.n ], [ %i.b, %.lr.ph.i.preheader ] ; 2 uses
  %i.av = and i32 %.0611.i, 1
  %.not8.i = icmp eq i32 %i.av, 0
  br i1 %.not8.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.aw = load i32, ptr %.0710.i, align 4, !tbaa !13
  %i.ax = xor i32 %i.aw, %.012.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %.1.i = phi i32 [ %i.ax, %bb.m ], [ %.012.i, %.lr.ph.i ] ; 2 uses
  %i.ay = lshr i32 %.0611.i, 1                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0710.i, i64 4
  %.not.i14 = icmp eq i32 %i.ay, 0
  br i1 %.not.i14, label %gf2_matrix_times.exit, label %.lr.ph.i, !llvm.loop !41

gf2_matrix_times.exit:                            ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %.1.i, ptr %i.ba, align 4, !tbaa !13
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.bb = shl nuw nsw i32 %indvars.iv.tr, 8
  br label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %gf2_matrix_times.exit, %bb.p
  %.012.i17 = phi i32 [ %.1.i21, %bb.p ], [ 0, %gf2_matrix_times.exit ] ; 2 uses
  %.0611.i18 = phi i32 [ %i.bf, %bb.p ], [ %i.bb, %gf2_matrix_times.exit ] ; 2 uses
  %.0710.i19 = phi ptr [ %i.bg, %bb.p ], [ %i.b, %gf2_matrix_times.exit ] ; 2 uses
  %i.bc = and i32 %.0611.i18, 1
  %.not8.i20 = icmp eq i32 %i.bc, 0
  br i1 %.not8.i20, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i16
  %i.bd = load i32, ptr %.0710.i19, align 4, !tbaa !13
  %i.be = xor i32 %i.bd, %.012.i17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i16
  %.1.i21 = phi i32 [ %i.be, %bb.o ], [ %.012.i17, %.lr.ph.i16 ] ; 2 uses
  %i.bf = lshr i32 %.0611.i18, 1                  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0710.i19, i64 4
  %.not.i22 = icmp eq i32 %i.bf, 0
  br i1 %.not.i22, label %gf2_matrix_times.exit24, label %.lr.ph.i16, !llvm.loop !41

gf2_matrix_times.exit24:                          ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  store i32 %.1.i21, ptr %i.bh, align 4, !tbaa !13
  %indvars.iv.tr65 = trunc nuw nsw i64 %indvars.iv to i32
  %i.bi = shl nuw nsw i32 %indvars.iv.tr65, 16
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %gf2_matrix_times.exit24, %bb.r
  %.012.i27 = phi i32 [ %.1.i31, %bb.r ], [ 0, %gf2_matrix_times.exit24 ] ; 2 uses
  %.0611.i28 = phi i32 [ %i.bm, %bb.r ], [ %i.bi, %gf2_matrix_times.exit24 ] ; 2 uses
  %.0710.i29 = phi ptr [ %i.bn, %bb.r ], [ %i.b, %gf2_matrix_times.exit24 ] ; 2 uses
  %i.bj = and i32 %.0611.i28, 1
  %.not8.i30 = icmp eq i32 %i.bj, 0
  br i1 %.not8.i30, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i26
  %i.bk = load i32, ptr %.0710.i29, align 4, !tbaa !13
  %i.bl = xor i32 %i.bk, %.012.i27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i26
  %.1.i31 = phi i32 [ %i.bl, %bb.q ], [ %.012.i27, %.lr.ph.i26 ] ; 2 uses
  %i.bm = lshr i32 %.0611.i28, 1                  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0710.i29, i64 4
  %.not.i32 = icmp eq i32 %i.bm, 0
  br i1 %.not.i32, label %gf2_matrix_times.exit34, label %.lr.ph.i26, !llvm.loop !41

gf2_matrix_times.exit34:                          ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  store i32 %.1.i31, ptr %i.bo, align 4, !tbaa !13
  %indvars.iv.tr66 = trunc nuw i64 %indvars.iv to i32
  %i.bp = shl nuw i32 %indvars.iv.tr66, 24
  br label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %gf2_matrix_times.exit34, %bb.t
  %.012.i37 = phi i32 [ %.1.i41, %bb.t ], [ 0, %gf2_matrix_times.exit34 ] ; 2 uses
  %.0611.i38 = phi i32 [ %i.bt, %bb.t ], [ %i.bp, %gf2_matrix_times.exit34 ] ; 2 uses
  %.0710.i39 = phi ptr [ %i.bu, %bb.t ], [ %i.b, %gf2_matrix_times.exit34 ] ; 2 uses
  %i.bq = and i32 %.0611.i38, 1
  %.not8.i40 = icmp eq i32 %i.bq, 0
  br i1 %.not8.i40, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i36
  %i.br = load i32, ptr %.0710.i39, align 4, !tbaa !13
  %i.bs = xor i32 %i.br, %.012.i37
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i36
  %.1.i41 = phi i32 [ %i.bs, %bb.s ], [ %.012.i37, %.lr.ph.i36 ] ; 2 uses
  %i.bt = lshr i32 %.0611.i38, 1                  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0710.i39, i64 4
  %.not.i42 = icmp eq i32 %i.bt, 0
  br i1 %.not.i42, label %gf2_matrix_times.exit44, label %.lr.ph.i36, !llvm.loop !41

gf2_matrix_times.exit44:                          ; preds = %bb.t, %gf2_matrix_times.exit34.thread
  %.0.lcssa.i43 = phi i32 [ 0, %gf2_matrix_times.exit34.thread ], [ %.1.i41, %bb.t ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  store i32 %.0.lcssa.i43, ptr %i.bv, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.k, label %bb.l, !llvm.loop !44
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!9, !9, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{i64 2147776032}
!20 = !{!"any pointer", !8, i64 0}
!21 = !{!20, !20, i64 0}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = !{i64 6456}
!29 = !{i64 7062, i64 7084, i64 7137}
!30 = !{i64 7792, i64 7814, i64 7868}
!31 = !{i64 8462}
!32 = !{i64 8712}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12, !17, !18}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12, !17, !18}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12}
end_hunk_0
