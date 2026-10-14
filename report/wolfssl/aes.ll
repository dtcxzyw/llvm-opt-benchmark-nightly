Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/aes?download=true
inline.NumInlined: 97
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 70
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@GHASH:bb.a
  br i1 %i.rk, label %bb.k, label %GMULT.exit157, !llvm.loop !199

GMULT.exit157:                                    ; preds = %bb.k
  %i.rl = and i64 %i.pv, 15
  %i.rm = getelementptr inbounds nuw [16 x i8], ptr %i.px, i64 %i.rl ; 2 uses
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !20
  %i.ro = xor i64 %i.rn, %i.rj                    ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !20
  %i.rr = xor i64 %i.rq, %i.qu                    ; 3 uses
  %i.rs = lshr i64 %i.rr, 56
  %i.rt = and i64 %i.rs, 15
  %i.ru = and i64 %i.ro, 1085102592571150095      ; 2 uses
  %i.rv = lshr i64 %i.rr, 4
  %i.rw = and i64 %i.rv, 1085102592571150095
  %i.rx = shl i64 %i.rr, 12
  %i.ry = and i64 %i.rx, -1085102592571150336
  %i.rz = lshr i64 %i.ru, 52
  %i.sa = or disjoint i64 %i.ry, %i.rz
  %i.sb = or disjoint i64 %i.sa, %i.rw
  %i.sc = lshr i64 %i.ro, 4
  %i.sd = and i64 %i.sc, 1085102592571150095
  %i.se = shl i64 %i.ru, 12
  %i.sf = or disjoint i64 %i.sd, %i.se
  %i.sg = lshr i64 %i.pv, 4
  %i.sh = and i64 %i.sg, 15
  %i.si = getelementptr inbounds nuw [16 x i8], ptr %i.px, i64 %i.sh ; 2 uses
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !20
  %i.sk = xor i64 %i.sf, %i.sj
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !20
  %i.sn = xor i64 %i.sb, %i.sm
  %i.so = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.rt
  %i.sp = load i16, ptr %i.so, align 2, !tbaa !203
  %i.sq = zext i16 %i.sp to i64
  %i.sr = xor i64 %i.sk, %i.sq
  br label %.lr.ph.i.i187

.lr.ph.i.i187:                                    ; preds = %._crit_edge262, %GMULT.exit157, %bb.g
  %i.ss = phi i64 [ %i.pp, %._crit_edge262 ], [ %i.sn, %GMULT.exit157 ], [ %i.jf, %bb.g ]
  %i.st = phi i64 [ %i.pq, %._crit_edge262 ], [ %i.sr, %GMULT.exit157 ], [ %i.jg, %bb.g ]
  %i.su = lshr i32 %2, 29
  %i.sv = shl i32 %2, 3                           ; 4 uses
  store i8 0, ptr %i.b, align 16, !tbaa !21
  %.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %.1..sroa_idx, align 1, !tbaa !21
  %.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %.2..sroa_idx, align 2, !tbaa !21
  %i.sw = trunc nuw nsw i32 %i.su to i8
  %.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.sw, ptr %.3..sroa_idx, align 1, !tbaa !21
  %i.sx = lshr i32 %i.sv, 24
  %i.sy = trunc nuw i32 %i.sx to i8
  %.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.sy, ptr %.4..sroa_idx, align 4, !tbaa !21
  %i.sz = lshr i32 %i.sv, 16
  %i.ta = trunc i32 %i.sz to i8
  %.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store i8 %i.ta, ptr %.5..sroa_idx, align 1, !tbaa !21
  %i.tb = lshr i32 %i.sv, 8
  %i.tc = trunc i32 %i.tb to i8
  %.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %i.tc, ptr %.6..sroa_idx, align 2, !tbaa !21
  %i.td = trunc i32 %i.sv to i8
  %.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 %i.td, ptr %.7..sroa_idx, align 1, !tbaa !21
  %i.te = lshr i32 %4, 29
  %i.tf = shl i32 %4, 3                           ; 4 uses
  %.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i8 0, ptr %.8..sroa_idx, align 8, !tbaa !21
  %.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 0, ptr %.9..sroa_idx, align 1, !tbaa !21
  %.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 0, ptr %.10..sroa_idx, align 2, !tbaa !21
  %i.tg = trunc nuw nsw i32 %i.te to i8
  %.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 %i.tg, ptr %.11..sroa_idx, align 1, !tbaa !21
  %i.th = lshr i32 %i.tf, 24
  %i.ti = trunc nuw i32 %i.th to i8
  %.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 %i.ti, ptr %.12..sroa_idx, align 4, !tbaa !21
  %i.tj = lshr i32 %i.tf, 16
  %i.tk = trunc i32 %i.tj to i8
  %.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  store i8 %i.tk, ptr %.13..sroa_idx, align 1, !tbaa !21
  %i.tl = lshr i32 %i.tf, 8
  %i.tm = trunc i32 %i.tl to i8
  %.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 %i.tm, ptr %.14..sroa_idx, align 2, !tbaa !21
  %i.tn = trunc i32 %i.tf to i8
  %.15..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 %i.tn, ptr %.15..sroa_idx, align 1, !tbaa !21
  %.0.280 = load i64, ptr %i.b, align 16, !tbaa !20
  %i.to = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.tp = xor i64 %i.st, %.0.280                  ; 3 uses
  store i64 %i.tp, ptr %i.a, align 16, !tbaa !20
  %.8.282 = load i64, ptr %.8..sroa_idx, align 8, !tbaa !20
  %i.tq = xor i64 %i.ss, %.8.282
  store i64 %i.tq, ptr %i.to, align 8, !tbaa !20
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i187
  %indvars.iv.i190 = phi i64 [ 15, %.lr.ph.i.i187 ], [ %indvars.iv.next.i194, %bb.l ] ; 3 uses
  %.sroa.24.068.i191 = phi i64 [ 0, %.lr.ph.i.i187 ], [ %i.uo, %bb.l ]
  %.sroa.0.067.i192 = phi i64 [ 0, %.lr.ph.i.i187 ], [ %i.vd, %bb.l ]
  %i.ts = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i190
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !21
  %i.tu = zext i8 %i.tt to i32                    ; 2 uses
  %i.tv = and i32 %i.tu, 15
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = getelementptr inbounds nuw [16 x i8], ptr %i.tr, i64 %i.tw ; 2 uses
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !20
  %i.tz = xor i64 %i.ty, %.sroa.0.067.i192        ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !20
  %i.uc = xor i64 %i.ub, %.sroa.24.068.i191       ; 3 uses
  %i.ud = lshr i64 %i.uc, 56
  %i.ue = tail call i64 @llvm.fshl.i64(i64 %i.uc, i64 %i.tz, i64 8)
  %i.uf = shl i64 %i.tz, 8
  %i.ug = lshr i32 %i.tu, 4
  %i.uh = zext nneg i32 %i.ug to i64
  %i.ui = getelementptr inbounds nuw [16 x i8], ptr %i.tr, i64 %i.uh ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 256
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !20
  %i.ul = xor i64 %i.uf, %i.uk
  %i.um = getelementptr inbounds nuw i8, ptr %i.ui, i64 264
  %i.un = load i64, ptr %i.um, align 8, !tbaa !20
  %i.uo = xor i64 %i.ue, %i.un                    ; 2 uses
  %i.up = and i64 %i.ud, 15
  %i.uq = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.up
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 32
  %i.us = load i16, ptr %i.ur, align 2, !tbaa !203
  %i.ut = zext i16 %i.us to i64
  %i.uu = xor i64 %i.ul, %i.ut
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !20
  %i.ux = lshr i64 %i.uw, 56
  %i.uy = lshr i64 %i.uc, 60
  %.masked.i193 = and i64 %i.ux, 15
  %i.uz = xor i64 %.masked.i193, %i.uy
  %i.va = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.uz
  %i.vb = load i16, ptr %i.va, align 2, !tbaa !203
  %i.vc = zext i16 %i.vb to i64
  %i.vd = xor i64 %i.uu, %i.vc                    ; 2 uses
  %indvars.iv.next.i194 = add nsw i64 %indvars.iv.i190, -1
  %i.ve = icmp samesign ugt i64 %indvars.iv.i190, 1
  br i1 %i.ve, label %bb.l, label %GMULT.exit195, !llvm.loop !199

GMULT.exit195:                                    ; preds = %bb.l
  %i.vf = and i64 %i.tp, 15
  %i.vg = getelementptr inbounds nuw [16 x i8], ptr %i.tr, i64 %i.vf ; 2 uses
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !20
  %i.vi = xor i64 %i.vh, %i.vd                    ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !20
  %i.vl = xor i64 %i.vk, %i.uo                    ; 3 uses
  %i.vm = lshr i64 %i.vl, 56
  %i.vn = and i64 %i.vm, 15
  %i.vo = and i64 %i.vi, 1085102592571150095      ; 2 uses
  %i.vp = lshr i64 %i.vl, 4
  %i.vq = and i64 %i.vp, 1085102592571150095
  %i.vr = shl i64 %i.vl, 12
  %i.vs = and i64 %i.vr, -1085102592571150336
  %i.vt = lshr i64 %i.vo, 52
  %i.vu = or disjoint i64 %i.vs, %i.vt
  %i.vv = or disjoint i64 %i.vu, %i.vq
  %i.vw = lshr i64 %i.vi, 4
  %i.vx = and i64 %i.vw, 1085102592571150095
  %i.vy = shl i64 %i.vo, 12
  %i.vz = or disjoint i64 %i.vx, %i.vy
  %i.wa = lshr i64 %i.tp, 4
  %i.wb = and i64 %i.wa, 15
  %i.wc = getelementptr inbounds nuw [16 x i8], ptr %i.tr, i64 %i.wb ; 2 uses
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !20
  %i.we = xor i64 %i.vz, %i.wd
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.wg = load i64, ptr %i.wf, align 8, !tbaa !20
  %i.wh = xor i64 %i.vv, %i.wg
  %i.wi = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.vn
  %i.wj = load i16, ptr %i.wi, align 2, !tbaa !203
  %i.wk = zext i16 %i.wj to i64
  %i.wl = xor i64 %i.we, %i.wk
  store i64 %i.wl, ptr %i.a, align 16, !tbaa !20
  store i64 %i.wh, ptr %i.to, align 8, !tbaa !20
  %i.wm = zext i32 %6 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr nonnull align 16 %i.a, i64 %i.wm, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %GMULT.exit195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -226, 1) i32 @wc_AesGcmEncrypt(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 17 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 37 uses
  %10 = ptrtoaddr ptr %i.c to i64                 ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = icmp eq ptr %0, null
  %i.f = icmp eq ptr %4, null
  %or.cond = or i1 %i.e, %i.f
  %i.g = icmp eq i32 %5, 0
  %or.cond3 = or i1 %or.cond, %i.g
  br i1 %or.cond3, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq ptr %2, null
  %i.i = icmp eq ptr %1, null
  %or.cond5 = or i1 %i.i, %i.h
  %i.j = icmp eq ptr %6, null
  %or.cond7 = or i1 %or.cond5, %i.j
  %i.k = icmp ugt i32 %7, 16
  %or.cond36 = or i1 %or.cond7, %i.k
  br i1 %or.cond36, label %bb.x, label %bb.e

bb.d:                                             ; preds = %bb.b
  %.old6 = icmp eq ptr %6, null
  %.old = icmp ugt i32 %7, 16
  %or.cond37 = or i1 %.old6, %.old
  br i1 %or.cond37, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = icmp ne i32 %9, 0
  %i.m = icmp eq ptr %8, null
  %or.cond10 = and i1 %i.m, %i.l
  %i.n = icmp samesign ult i32 %7, 12
  %or.cond39 = or i1 %i.n, %or.cond10
  br i1 %or.cond39, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = lshr i32 %3, 4                           ; 2 uses
  %i.p = and i32 %3, 15                           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !15
  %i.q = icmp eq i32 %5, 12
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %4, i64 12, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.r, i8 0, i64 3, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 1, ptr %i.s, align 1, !tbaa !21
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @GHASH(ptr noundef nonnull readonly %i.t, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef range(i32 1, 0) %5, ptr noundef nonnull %i.a, i32 noundef 16)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  %.not145.i = icmp eq i32 %i.o, 0
  br i1 %.not145.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 15 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 14 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 13 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.promoted.i = load i8, ptr %i.u, align 1, !tbaa !21
  %.promoted201.i = load i8, ptr %i.v, align 2
  %.promoted202.i = load i8, ptr %i.w, align 1
  %.promoted203.i = load i8, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  br label %bb.j

bb.j:                                             ; preds = %xorbufout.exit.i, %.lr.ph.i
  %i.an = phi i8 [ %.promoted203.i, %.lr.ph.i ], [ %i.aw, %xorbufout.exit.i ] ; 4 uses
  %i.ao = phi i8 [ %.promoted202.i, %.lr.ph.i ], [ %i.ax, %xorbufout.exit.i ] ; 3 uses
  %i.ap = phi i8 [ %.promoted201.i, %.lr.ph.i ], [ %i.ay, %xorbufout.exit.i ] ; 2 uses
  %i.aq = phi i8 [ %.promoted.i, %.lr.ph.i ], [ %i.as, %xorbufout.exit.i ]
  %.in.i = phi i32 [ %i.o, %.lr.ph.i ], [ %i.ar, %xorbufout.exit.i ]
  %.0149.i = phi ptr [ %1, %.lr.ph.i ], [ %i.bp, %xorbufout.exit.i ] ; 21 uses
  %.039146.i = phi ptr [ %2, %.lr.ph.i ], [ %i.bo, %xorbufout.exit.i ] ; 21 uses
  %i.ar = add nsw i32 %.in.i, -1                  ; 2 uses
  %i.as = add i8 %i.aq, 1                         ; 3 uses
  store i8 %i.as, ptr %i.u, align 1, !tbaa !21
  %.not.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i, label %bb.k, label %IncrementGcmCounter.exit.i

bb.k:                                             ; preds = %bb.j
  %i.at = add i8 %i.ap, 1                         ; 3 uses
  store i8 %i.at, ptr %i.v, align 2, !tbaa !21
  %.not.1.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.1.i.i, label %bb.l, label %IncrementGcmCounter.exit.i

bb.l:                                             ; preds = %bb.k
  %i.au = add i8 %i.ao, 1                         ; 3 uses
  store i8 %i.au, ptr %i.w, align 1, !tbaa !21
  %.not.2.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.2.i.i, label %bb.m, label %IncrementGcmCounter.exit.i

bb.m:                                             ; preds = %bb.l
  %i.av = add i8 %i.an, 1                         ; 2 uses
  store i8 %i.av, ptr %i.x, align 4, !tbaa !21
  br label %IncrementGcmCounter.exit.i

IncrementGcmCounter.exit.i:                       ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.aw = phi i8 [ %i.an, %bb.j ], [ %i.an, %bb.k ], [ %i.an, %bb.l ], [ %i.av, %bb.m ]
  %i.ax = phi i8 [ %i.ao, %bb.j ], [ %i.ao, %bb.k ], [ %i.au, %bb.l ], [ 0, %bb.m ]
  %i.ay = phi i8 [ %i.ap, %bb.j ], [ %i.at, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ]
  %i.az = call fastcc i32 @AesEncrypt_preFetchOpt(ptr noundef nonnull readonly %0, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not57.i = icmp eq i32 %i.az, 0
  br i1 %.not57.i, label %bb.n, label %AES_GCM_encrypt_C.exit

bb.n:                                             ; preds = %IncrementGcmCounter.exit.i
  %i.ba = ptrtoint ptr %.0149.i to i64            ; 3 uses
  %i.bb = ptrtoint ptr %.039146.i to i64          ; 3 uses
  %i.bc = or i64 %i.bb, %i.ba
  %i.bd = and i64 %i.bc, 7
  %or.cond44.i.i = icmp eq i64 %i.bd, 0
  br i1 %or.cond44.i.i, label %.lr.ph.i.i.preheader.i, label %.lr.ph83.i.i.preheader

.lr.ph83.i.i.preheader:                           ; preds = %bb.n
  %i.be = add i64 %i.bb, 16
  %i.bf = add i64 %i.ba, 16
  %rt.bound0 = icmp ugt i64 %i.be, %i.ba
  %rt.bound1 = icmp ugt i64 %i.bf, %i.bb
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.lr.ph83.i.i.preheader.rtscalar, label %.lr.ph83.i.i.preheader.rtvec, !prof !24

.lr.ph.i.i.preheader.i:                           ; preds = %bb.n
  %i.bg = load i64, ptr %i.c, align 16, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %.039146.i, i64 8
  %i.bi = load i64, ptr %.039146.i, align 8, !tbaa !20
  %i.bj = xor i64 %i.bi, %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %.0149.i, i64 8
  store i64 %i.bj, ptr %.0149.i, align 8, !tbaa !20
  %i.bl = load i64, ptr %.ptr.1.i, align 8, !tbaa !20
  %i.bm = load i64, ptr %i.bh, align 8, !tbaa !20
  %i.bn = xor i64 %i.bm, %i.bl
  store i64 %i.bn, ptr %i.bk, align 8, !tbaa !20
  br label %xorbufout.exit.i

xorbufout.exit.i:                                 ; preds = %.lr.ph83.i.i.preheader.rtvec, %.lr.ph83.i.i.preheader.rtscalar, %.lr.ph.i.i.preheader.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.039146.i, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0149.i, i64 16 ; 2 uses
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !204

._crit_edge.i:                                    ; preds = %xorbufout.exit.i, %bb.i
  %.039.lcssa.i = phi ptr [ %2, %bb.i ], [ %i.bo, %xorbufout.exit.i ] ; 7 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.i ], [ %i.bp, %xorbufout.exit.i ] ; 7 uses
  %.not53.i = icmp eq i32 %i.p, 0
  br i1 %.not53.i, label %xorbufout.exit102.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 15 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !21
  %i.bs = add i8 %i.br, 1                         ; 2 uses
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !21
  %.not.i59.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i59.i, label %bb.p, label %IncrementGcmCounter.exit62.i

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 14 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 2, !tbaa !21
  %i.bv = add i8 %i.bu, 1                         ; 2 uses
  store i8 %i.bv, ptr %i.bt, align 2, !tbaa !21
  %.not.1.i60.i = icmp eq i8 %i.bv, 0
  br i1 %.not.1.i60.i, label %bb.q, label %IncrementGcmCounter.exit62.i

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 13 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !21
  %i.by = add i8 %i.bx, 1                         ; 2 uses
  store i8 %i.by, ptr %i.bw, align 1, !tbaa !21
  %.not.2.i61.i = icmp eq i8 %i.by, 0
  br i1 %.not.2.i61.i, label %bb.r, label %IncrementGcmCounter.exit62.i

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !21
  %i.cb = add i8 %i.ca, 1
  store i8 %i.cb, ptr %i.bz, align 4, !tbaa !21
  br label %IncrementGcmCounter.exit62.i

IncrementGcmCounter.exit62.i:                     ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.cc = call fastcc i32 @AesEncrypt_preFetchOpt(ptr noundef nonnull readonly %0, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not54.i = icmp eq i32 %i.cc, 0
  br i1 %.not54.i, label %bb.s, label %AES_GCM_encrypt_C.exit

bb.s:                                             ; preds = %IncrementGcmCounter.exit62.i
  %i.cd = ptrtoint ptr %.0.lcssa.i to i64         ; 3 uses
  %i.ce = ptrtoint ptr %.039.lcssa.i to i64       ; 2 uses
  %i.cf = or i64 %i.cd, %i.ce
  %i.cg = and i64 %i.cf, 7
  %or.cond44.i63.i = icmp eq i64 %i.cg, 0
  br i1 %or.cond44.i63.i, label %bb.t, label %.lr.ph83.i70.i.preheader

bb.t:                                             ; preds = %bb.s
  %i.ch = and i32 %3, 8
  %.idx.i.i.i = zext nneg i32 %i.ch to i64        ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i.i
  %.not.i.i.i = icmp samesign ult i32 %i.p, 8
  br i1 %.not.i.i.i, label %XorWordsOut.exit.i93.i, label %.lr.ph.i.i99.i.preheader

.lr.ph.i.i99.i.preheader:                         ; preds = %bb.t
  %i.cj = or disjoint i64 %10, %.idx.i.i.i
  %i.ck = or disjoint i64 %10, 8
  %i.cl = call i64 @llvm.umax.i64(i64 %i.cj, i64 %i.ck)
  %i.cm = xor i64 %10, -1
  %i.cn = add i64 %i.cl, %i.cm                    ; 2 uses
  %i.co = lshr i64 %i.cn, 3
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cn, 120
  br i1 %min.iters.check, label %.lr.ph.i.i99.i.preheader178, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i99.i.preheader
  %i.cq = sub i64 %10, %i.cd
  %diff.check = icmp ugt i64 %i.cq, -32
  %i.cr = sub i64 %i.ce, %i.cd
  %diff.check93 = icmp ugt i64 %i.cr, -32
  %conflict.rdx = or i1 %diff.check, %diff.check93
  br i1 %conflict.rdx, label %.lr.ph.i.i99.i.preheader178, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cp, 4611686018427387900     ; 3 uses
  %i.cs = shl i64 %n.vec, 3                       ; 3 uses
  %i.ct = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cs ; 2 uses
  %i.cu = getelementptr i8, ptr %.039.lcssa.i, i64 %i.cs ; 2 uses
  %i.cv = getelementptr i8, ptr %i.c, i64 %i.cs   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = shl i64 %index, 3                       ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cw ; 2 uses
  %next.gep94 = getelementptr i8, ptr %.039.lcssa.i, i64 %i.cw ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.c, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 16, !tbaa !20
  %wide.load96 = load <2 x i64>, ptr %i.cx, align 16, !tbaa !20
  %i.cy = getelementptr i8, ptr %next.gep94, i64 16
  %wide.load97 = load <2 x i64>, ptr %next.gep94, align 8, !tbaa !20
  %wide.load98 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !20
  %i.cz = xor <2 x i64> %wide.load97, %wide.load
  %i.da = xor <2 x i64> %wide.load98, %wide.load96
  %i.db = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.cz, ptr %next.gep, align 8, !tbaa !20
  store <2 x i64> %i.da, ptr %i.db, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  br i1 %cmp.n, label %XorWordsOut.exit.i93.i, label %.lr.ph.i.i99.i.preheader178

.lr.ph.i.i99.i.preheader178:                      ; preds = %vector.memcheck, %.lr.ph.i.i99.i.preheader, %middle.block
  %.sroa.061.0.i100.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck ], [ %.0.lcssa.i, %.lr.ph.i.i99.i.preheader ], [ %i.ct, %middle.block ]
  %.sroa.0.0.i101.i.ph = phi ptr [ %.039.lcssa.i, %vector.memcheck ], [ %.039.lcssa.i, %.lr.ph.i.i99.i.preheader ], [ %i.cu, %middle.block ]
  %.ph179 = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i99.i.preheader ], [ %i.cv, %middle.block ]
  br label %.lr.ph.i.i99.i

.lr.ph.i.i99.i:                                   ; preds = %.lr.ph.i.i99.i.preheader178, %.lr.ph.i.i99.i
  %.sroa.061.0.i100.i = phi ptr [ %i.dj, %.lr.ph.i.i99.i ], [ %.sroa.061.0.i100.i.ph, %.lr.ph.i.i99.i.preheader178 ] ; 2 uses
  %.sroa.0.0.i101.i = phi ptr [ %i.dg, %.lr.ph.i.i99.i ], [ %.sroa.0.0.i101.i.ph, %.lr.ph.i.i99.i.preheader178 ] ; 2 uses
  %i.dd = phi ptr [ %i.de, %.lr.ph.i.i99.i ], [ %.ph179, %.lr.ph.i.i99.i.preheader178 ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 3 uses
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !20
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i101.i, i64 8 ; 2 uses
  %i.dh = load i64, ptr %.sroa.0.0.i101.i, align 8, !tbaa !20
  %i.di = xor i64 %i.dh, %i.df
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.061.0.i100.i, i64 8 ; 2 uses
  store i64 %i.di, ptr %.sroa.061.0.i100.i, align 8, !tbaa !20
  %i.dk = icmp ult ptr %i.de, %i.ci
  br i1 %i.dk, label %.lr.ph.i.i99.i, label %XorWordsOut.exit.i93.i, !llvm.loop !206

XorWordsOut.exit.i93.i:                           ; preds = %.lr.ph.i.i99.i, %middle.block, %bb.t
  %.134.i95.i = phi ptr [ %.0.lcssa.i, %bb.t ], [ %i.ct, %middle.block ], [ %i.dj, %.lr.ph.i.i99.i ]
  %.131.i96.i = phi ptr [ %i.c, %bb.t ], [ %i.cv, %middle.block ], [ %i.de, %.lr.ph.i.i99.i ]
  %.1.i97.i = phi ptr [ %.039.lcssa.i, %bb.t ], [ %i.cu, %middle.block ], [ %i.dg, %.lr.ph.i.i99.i ]
  %i.dl = and i32 %3, 7                           ; 2 uses
  %.not77.i98.i = icmp eq i32 %i.dl, 0
  br i1 %.not77.i98.i, label %xorbufout.exit102.i, label %.lr.ph83.i70.i.preheader

.lr.ph83.i70.i.preheader:                         ; preds = %bb.s, %XorWordsOut.exit.i93.i
  %.281.i71.i.ph = phi ptr [ %.039.lcssa.i, %bb.s ], [ %.1.i97.i, %XorWordsOut.exit.i93.i ] ; 2 uses
  %.23280.i72.i.ph = phi ptr [ %i.c, %bb.s ], [ %.131.i96.i, %XorWordsOut.exit.i93.i ] ; 2 uses
  %.23579.i73.i.ph = phi ptr [ %.0.lcssa.i, %bb.s ], [ %.134.i95.i, %XorWordsOut.exit.i93.i ] ; 2 uses
  %.23878.i74.i.ph = phi i32 [ %i.p, %bb.s ], [ %i.dl, %XorWordsOut.exit.i93.i ] ; 4 uses
  %xtraiter = and i32 %.23878.i74.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph83.i70.i.prol.loopexit, label %.lr.ph83.i70.i.prol

.lr.ph83.i70.i.prol:                              ; preds = %.lr.ph83.i70.i.preheader, %.lr.ph83.i70.i.prol
  %.281.i71.i.prol = phi ptr [ %i.do, %.lr.ph83.i70.i.prol ], [ %.281.i71.i.ph, %.lr.ph83.i70.i.preheader ] ; 2 uses
  %.23280.i72.i.prol = phi ptr [ %i.dm, %.lr.ph83.i70.i.prol ], [ %.23280.i72.i.ph, %.lr.ph83.i70.i.preheader ] ; 2 uses
  %.23579.i73.i.prol = phi ptr [ %i.dr, %.lr.ph83.i70.i.prol ], [ %.23579.i73.i.ph, %.lr.ph83.i70.i.preheader ] ; 2 uses
  %.23878.i74.i.prol = phi i32 [ %i.ds, %.lr.ph83.i70.i.prol ], [ %.23878.i74.i.ph, %.lr.ph83.i70.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph83.i70.i.prol ], [ 0, %.lr.ph83.i70.i.preheader ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.23280.i72.i.prol, i64 1 ; 2 uses
  %i.dn = load i8, ptr %.23280.i72.i.prol, align 1, !tbaa !21
  %i.do = getelementptr inbounds nuw i8, ptr %.281.i71.i.prol, i64 1 ; 2 uses
  %i.dp = load i8, ptr %.281.i71.i.prol, align 1, !tbaa !21
  %i.dq = xor i8 %i.dp, %i.dn
  %i.dr = getelementptr inbounds nuw i8, ptr %.23579.i73.i.prol, i64 1 ; 2 uses
  store i8 %i.dq, ptr %.23579.i73.i.prol, align 1, !tbaa !21
  %i.ds = add nsw i32 %.23878.i74.i.prol, -1      ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph83.i70.i.prol.loopexit, label %.lr.ph83.i70.i.prol, !llvm.loop !207

.lr.ph83.i70.i.prol.loopexit:                     ; preds = %.lr.ph83.i70.i.prol, %.lr.ph83.i70.i.preheader
  %.281.i71.i.unr = phi ptr [ %.281.i71.i.ph, %.lr.ph83.i70.i.preheader ], [ %i.do, %.lr.ph83.i70.i.prol ]
  %.23280.i72.i.unr = phi ptr [ %.23280.i72.i.ph, %.lr.ph83.i70.i.preheader ], [ %i.dm, %.lr.ph83.i70.i.prol ]
  %.23579.i73.i.unr = phi ptr [ %.23579.i73.i.ph, %.lr.ph83.i70.i.preheader ], [ %i.dr, %.lr.ph83.i70.i.prol ]
  %.23878.i74.i.unr = phi i32 [ %.23878.i74.i.ph, %.lr.ph83.i70.i.preheader ], [ %i.ds, %.lr.ph83.i70.i.prol ]
  %i.dt = icmp samesign ult i32 %.23878.i74.i.ph, 4
  br i1 %i.dt, label %xorbufout.exit102.i, label %.lr.ph83.i70.i

.lr.ph83.i70.i:                                   ; preds = %.lr.ph83.i70.i.prol.loopexit, %.lr.ph83.i70.i
  %.281.i71.i = phi ptr [ %i.eo, %.lr.ph83.i70.i ], [ %.281.i71.i.unr, %.lr.ph83.i70.i.prol.loopexit ] ; 5 uses
  %.23280.i72.i = phi ptr [ %i.em, %.lr.ph83.i70.i ], [ %.23280.i72.i.unr, %.lr.ph83.i70.i.prol.loopexit ] ; 5 uses
  %.23579.i73.i = phi ptr [ %i.er, %.lr.ph83.i70.i ], [ %.23579.i73.i.unr, %.lr.ph83.i70.i.prol.loopexit ] ; 5 uses
  %.23878.i74.i = phi i32 [ %i.es, %.lr.ph83.i70.i ], [ %.23878.i74.i.unr, %.lr.ph83.i70.i.prol.loopexit ]
  %i.du = getelementptr inbounds nuw i8, ptr %.23280.i72.i, i64 1
  %i.dv = load i8, ptr %.23280.i72.i, align 1, !tbaa !21
  %i.dw = getelementptr inbounds nuw i8, ptr %.281.i71.i, i64 1
  %i.dx = load i8, ptr %.281.i71.i, align 1, !tbaa !21
  %i.dy = xor i8 %i.dx, %i.dv
  %i.dz = getelementptr inbounds nuw i8, ptr %.23579.i73.i, i64 1
  store i8 %i.dy, ptr %.23579.i73.i, align 1, !tbaa !21
  %i.ea = getelementptr inbounds nuw i8, ptr %.23280.i72.i, i64 2
  %i.eb = load i8, ptr %i.du, align 1, !tbaa !21
  %i.ec = getelementptr inbounds nuw i8, ptr %.281.i71.i, i64 2
  %i.ed = load i8, ptr %i.dw, align 1, !tbaa !21
  %i.ee = xor i8 %i.ed, %i.eb
  %i.ef = getelementptr inbounds nuw i8, ptr %.23579.i73.i, i64 2
  store i8 %i.ee, ptr %i.dz, align 1, !tbaa !21
  %i.eg = getelementptr inbounds nuw i8, ptr %.23280.i72.i, i64 3
  %i.eh = load i8, ptr %i.ea, align 1, !tbaa !21
  %i.ei = getelementptr inbounds nuw i8, ptr %.281.i71.i, i64 3
  %i.ej = load i8, ptr %i.ec, align 1, !tbaa !21
  %i.ek = xor i8 %i.ej, %i.eh
  %i.el = getelementptr inbounds nuw i8, ptr %.23579.i73.i, i64 3
  store i8 %i.ek, ptr %i.ef, align 1, !tbaa !21
  %i.em = getelementptr inbounds nuw i8, ptr %.23280.i72.i, i64 4
  %i.en = load i8, ptr %i.eg, align 1, !tbaa !21
  %i.eo = getelementptr inbounds nuw i8, ptr %.281.i71.i, i64 4
  %i.ep = load i8, ptr %i.ei, align 1, !tbaa !21
  %i.eq = xor i8 %i.ep, %i.en
  %i.er = getelementptr inbounds nuw i8, ptr %.23579.i73.i, i64 4
  store i8 %i.eq, ptr %i.el, align 1, !tbaa !21
  %i.es = add nsw i32 %.23878.i74.i, -4           ; 2 uses
  %.not.i75.i.3 = icmp eq i32 %i.es, 0
  br i1 %.not.i75.i.3, label %xorbufout.exit102.i, label %.lr.ph83.i70.i, !llvm.loop !208

xorbufout.exit102.i:                              ; preds = %.lr.ph83.i70.i.prol.loopexit, %.lr.ph83.i70.i, %XorWordsOut.exit.i93.i, %._crit_edge.i
  %.not55.i = icmp eq ptr %6, null
  br i1 %.not55.i, label %AES_GCM_encrypt_C.exit, label %bb.u

bb.u:                                             ; preds = %xorbufout.exit102.i
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @GHASH(ptr noundef nonnull readonly %i.et, ptr noundef %8, i32 noundef %9, ptr noundef %1, i32 noundef %3, ptr noundef nonnull %6, i32 noundef range(i32 12, 17) %7)
  %i.eu = call fastcc i32 @AesEncrypt_preFetchOpt(ptr noundef nonnull readonly %0, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not56.i = icmp eq i32 %i.eu, 0
  br i1 %.not56.i, label %bb.v, label %AES_GCM_encrypt_C.exit

bb.v:                                             ; preds = %bb.u
  %i.ev = ptrtoint ptr %6 to i64
  %i.ew = and i64 %i.ev, 7
  %or.cond.i.i = icmp eq i64 %i.ew, 0
  br i1 %or.cond.i.i, label %bb.w, label %iter.check

bb.w:                                             ; preds = %bb.v
  %i.ex = and i32 %7, 24
  %.idx.i.i109.i = zext nneg i32 %i.ex to i64     ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i109.i
  %i.ez = add i64 %10, %.idx.i.i109.i
  %i.fa = or disjoint i64 %10, 8
  %i.fb = call i64 @llvm.umax.i64(i64 %i.ez, i64 %i.fa)
  %i.fc = xor i64 %10, -1
  %i.fd = add i64 %i.fb, %i.fc                    ; 2 uses
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.fd, 24
  br i1 %min.iters.check127, label %.lr.ph.i.i111.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.w
  %n.vec129 = and i64 %i.ff, 4611686018427387900  ; 3 uses
  %i.fg = shl i64 %n.vec129, 3                    ; 2 uses
  %i.fh = getelementptr i8, ptr %6, i64 %i.fg     ; 2 uses
  %i.fi = getelementptr i8, ptr %i.c, i64 %i.fg   ; 2 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph128
  %index131 = phi i64 [ 0, %vector.ph128 ], [ %index.next138, %vector.body130 ] ; 2 uses
  %i.fj = shl i64 %index131, 3                    ; 2 uses
  %next.gep132 = getelementptr i8, ptr %6, i64 %i.fj ; 3 uses
  %next.gep133 = getelementptr i8, ptr %i.c, i64 %i.fj ; 2 uses
  %i.fk = getelementptr i8, ptr %next.gep133, i64 16
  %wide.load134 = load <2 x i64>, ptr %next.gep133, align 16, !tbaa !20
  %wide.load135 = load <2 x i64>, ptr %i.fk, align 16, !tbaa !20
  %i.fl = getelementptr i8, ptr %next.gep132, i64 16 ; 2 uses
  %wide.load136 = load <2 x i64>, ptr %next.gep132, align 8, !tbaa !20
  %wide.load137 = load <2 x i64>, ptr %i.fl, align 8, !tbaa !20
  %i.fm = xor <2 x i64> %wide.load136, %wide.load134
  %i.fn = xor <2 x i64> %wide.load137, %wide.load135
  store <2 x i64> %i.fm, ptr %next.gep132, align 8, !tbaa !20
  store <2 x i64> %i.fn, ptr %i.fl, align 8, !tbaa !20
  %index.next138 = add nuw i64 %index131, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next138, %n.vec129
  br i1 %i.fo, label %middle.block139, label %vector.body130, !llvm.loop !209

middle.block139:                                  ; preds = %vector.body130
  %cmp.n140 = icmp eq i64 %i.ff, %n.vec129
  br i1 %cmp.n140, label %XorWords.exit.i.i, label %.lr.ph.i.i111.i.preheader

.lr.ph.i.i111.i.preheader:                        ; preds = %bb.w, %middle.block139
  %.sroa.039.0.i.i.ph = phi ptr [ %6, %bb.w ], [ %i.fh, %middle.block139 ]
  %.ph = phi ptr [ %i.c, %bb.w ], [ %i.fi, %middle.block139 ]
  br label %.lr.ph.i.i111.i

.lr.ph.i.i111.i:                                  ; preds = %.lr.ph.i.i111.i.preheader, %.lr.ph.i.i111.i
  %.sroa.039.0.i.i = phi ptr [ %i.fs, %.lr.ph.i.i111.i ], [ %.sroa.039.0.i.i.ph, %.lr.ph.i.i111.i.preheader ] ; 3 uses
  %i.fp = phi ptr [ %i.fq, %.lr.ph.i.i111.i ], [ %.ph, %.lr.ph.i.i111.i.preheader ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 3 uses
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !20
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.039.0.i.i, i64 8 ; 2 uses
  %i.ft = load i64, ptr %.sroa.039.0.i.i, align 8, !tbaa !20
  %i.fu = xor i64 %i.ft, %i.fr
  store i64 %i.fu, ptr %.sroa.039.0.i.i, align 8, !tbaa !20
  %i.fv = icmp ult ptr %i.fq, %i.ey
  br i1 %i.fv, label %.lr.ph.i.i111.i, label %XorWords.exit.i.i, !llvm.loop !210

XorWords.exit.i.i:                                ; preds = %.lr.ph.i.i111.i, %middle.block139
  %.lcssa85 = phi ptr [ %i.fi, %middle.block139 ], [ %i.fq, %.lr.ph.i.i111.i ]
  %.lcssa = phi ptr [ %i.fh, %middle.block139 ], [ %i.fs, %.lr.ph.i.i111.i ]
  %i.fw = and i32 %7, 7                           ; 2 uses
  %.not51.i.i = icmp eq i32 %i.fw, 0
  br i1 %.not51.i.i, label %AES_GCM_encrypt_C.exit, label %iter.check

iter.check:                                       ; preds = %XorWords.exit.i.i, %bb.v
  %.172.i.i = phi ptr [ %.lcssa85, %XorWords.exit.i.i ], [ %i.c, %bb.v ] ; 8 uses
  %.12371.i.i = phi ptr [ %.lcssa, %XorWords.exit.i.i ], [ %6, %bb.v ] ; 8 uses
  %.12670.i.i = phi i32 [ %i.fw, %XorWords.exit.i.i ], [ %7, %bb.v ] ; 6 uses
  %i.fx = add nsw i32 %.12670.i.i, -1             ; 3 uses
  %i.fy = zext i32 %i.fx to i64
  %i.fz = add nuw nsw i64 %i.fy, 1                ; 5 uses
  %min.iters.check146 = icmp ult i32 %i.fx, 3
  br i1 %min.iters.check146, label %.lr.ph56.i.i.preheader, label %vector.memcheck147

vector.memcheck147:                               ; preds = %iter.check
  %i.ga = add nsw i32 %.12670.i.i, -1
  %i.gb = zext i32 %i.ga to i64
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %i.gd = getelementptr i8, ptr %.12371.i.i, i64 %i.gc
  %i.ge = getelementptr i8, ptr %.172.i.i, i64 %i.gc
  %bound0 = icmp ult ptr %.12371.i.i, %i.ge
  %bound1 = icmp ult ptr %.172.i.i, %i.gd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph56.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck147
  %min.iters.check148 = icmp ult i32 %i.fx, 31
  br i1 %min.iters.check148, label %vec.epilog.ph, label %vector.ph149

vector.ph149:                                     ; preds = %vector.main.loop.iter.check
  %i.gf = and i64 %i.fz, 28
  %n.vec150 = and i64 %i.fz, 8589934560           ; 6 uses
  %i.gg = getelementptr i8, ptr %.172.i.i, i64 %n.vec150
  %i.gh = getelementptr i8, ptr %.12371.i.i, i64 %n.vec150
  %i.gi = trunc i64 %n.vec150 to i32
  %i.gj = sub i32 %.12670.i.i, %i.gi
  br label %vector.body151

vector.body151:                                   ; preds = %vector.ph149, %vector.body151
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next159, %vector.body151 ] ; 3 uses
  %next.gep153 = getelementptr i8, ptr %.172.i.i, i64 %index152 ; 2 uses
  %next.gep154 = getelementptr i8, ptr %.12371.i.i, i64 %index152 ; 3 uses
  %i.gk = getelementptr i8, ptr %next.gep153, i64 16
  %wide.load155 = load <16 x i8>, ptr %next.gep153, align 1, !tbaa !21, !alias.scope !218
  %wide.load156 = load <16 x i8>, ptr %i.gk, align 1, !tbaa !21, !alias.scope !218
  %i.gl = getelementptr i8, ptr %next.gep154, i64 16 ; 2 uses
  %wide.load157 = load <16 x i8>, ptr %next.gep154, align 1, !tbaa !21, !alias.scope !219, !noalias !218
  %wide.load158 = load <16 x i8>, ptr %i.gl, align 1, !tbaa !21, !alias.scope !219, !noalias !218
  %i.gm = xor <16 x i8> %wide.load157, %wide.load155
  %i.gn = xor <16 x i8> %wide.load158, %wide.load156
  store <16 x i8> %i.gm, ptr %next.gep154, align 1, !tbaa !21, !alias.scope !219, !noalias !218
  store <16 x i8> %i.gn, ptr %i.gl, align 1, !tbaa !21, !alias.scope !219, !noalias !218
  %index.next159 = add nuw i64 %index152, 32      ; 2 uses
  %i.go = icmp eq i64 %index.next159, %n.vec150
  br i1 %i.go, label %middle.block160, label %vector.body151, !llvm.loop !214

middle.block160:                                  ; preds = %vector.body151
  %cmp.n161 = icmp eq i64 %i.fz, %n.vec150
  br i1 %cmp.n161, label %AES_GCM_encrypt_C.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block160
  %min.epilog.iters.check = icmp eq i64 %i.gf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph56.i.i.preheader, label %vec.epilog.ph, !prof !220

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec150, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec165 = and i64 %i.fz, 8589934588           ; 5 uses
  %i.gp = getelementptr i8, ptr %.172.i.i, i64 %n.vec165
  %i.gq = getelementptr i8, ptr %.12371.i.i, i64 %n.vec165
  %i.gr = trunc i64 %n.vec165 to i32
  %i.gs = sub i32 %.12670.i.i, %i.gr
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index166 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next171, %vec.epilog.vector.body ] ; 3 uses
  %next.gep167 = getelementptr i8, ptr %.172.i.i, i64 %index166
  %next.gep168 = getelementptr i8, ptr %.12371.i.i, i64 %index166 ; 2 uses
  %wide.load169 = load <4 x i8>, ptr %next.gep167, align 1, !tbaa !21, !alias.scope !218
  %wide.load170 = load <4 x i8>, ptr %next.gep168, align 1, !tbaa !21, !alias.scope !219, !noalias !218
  %i.gt = xor <4 x i8> %wide.load170, %wide.load169
  store <4 x i8> %i.gt, ptr %next.gep168, align 1, !tbaa !21, !alias.scope !219, !noalias !218
  %index.next171 = add nuw i64 %index166, 4       ; 2 uses
  %i.gu = icmp eq i64 %index.next171, %n.vec165
  br i1 %i.gu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !215

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n172 = icmp eq i64 %i.fz, %n.vec165
  br i1 %cmp.n172, label %AES_GCM_encrypt_C.exit, label %.lr.ph56.i.i.preheader

.lr.ph56.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck147, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.254.i.i.ph = phi ptr [ %.172.i.i, %iter.check ], [ %.172.i.i, %vector.memcheck147 ], [ %i.gg, %vec.epilog.iter.check ], [ %i.gp, %vec.epilog.middle.block ] ; 2 uses
  %.22453.i.i.ph = phi ptr [ %.12371.i.i, %iter.check ], [ %.12371.i.i, %vector.memcheck147 ], [ %i.gh, %vec.epilog.iter.check ], [ %i.gq, %vec.epilog.middle.block ] ; 2 uses
  %.22752.i.i.ph = phi i32 [ %.12670.i.i, %iter.check ], [ %.12670.i.i, %vector.memcheck147 ], [ %i.gj, %vec.epilog.iter.check ], [ %i.gs, %vec.epilog.middle.block ] ; 4 uses
  %i.gv = add nsw i32 %.22752.i.i.ph, -1
  %xtraiter188 = and i32 %.22752.i.i.ph, 3        ; 2 uses
  %lcmp.mod189.not = icmp eq i32 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %.lr.ph56.i.i.prol.loopexit, label %.lr.ph56.i.i.prol

.lr.ph56.i.i.prol:                                ; preds = %.lr.ph56.i.i.preheader, %.lr.ph56.i.i.prol
  %.254.i.i.prol = phi ptr [ %i.gw, %.lr.ph56.i.i.prol ], [ %.254.i.i.ph, %.lr.ph56.i.i.preheader ] ; 2 uses
  %.22453.i.i.prol = phi ptr [ %i.gy, %.lr.ph56.i.i.prol ], [ %.22453.i.i.ph, %.lr.ph56.i.i.preheader ] ; 3 uses
  %.22752.i.i.prol = phi i32 [ %i.hb, %.lr.ph56.i.i.prol ], [ %.22752.i.i.ph, %.lr.ph56.i.i.preheader ]
  %prol.iter190 = phi i32 [ %prol.iter190.next, %.lr.ph56.i.i.prol ], [ 0, %.lr.ph56.i.i.preheader ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.254.i.i.prol, i64 1 ; 2 uses
  %i.gx = load i8, ptr %.254.i.i.prol, align 1, !tbaa !21
  %i.gy = getelementptr inbounds nuw i8, ptr %.22453.i.i.prol, i64 1 ; 2 uses
  %i.gz = load i8, ptr %.22453.i.i.prol, align 1, !tbaa !21
  %i.ha = xor i8 %i.gz, %i.gx
  store i8 %i.ha, ptr %.22453.i.i.prol, align 1, !tbaa !21
  %i.hb = add nsw i32 %.22752.i.i.prol, -1        ; 2 uses
  %prol.iter190.next = add i32 %prol.iter190, 1   ; 2 uses
  %prol.iter190.cmp.not = icmp eq i32 %prol.iter190.next, %xtraiter188
  br i1 %prol.iter190.cmp.not, label %.lr.ph56.i.i.prol.loopexit, label %.lr.ph56.i.i.prol, !llvm.loop !216

.lr.ph56.i.i.prol.loopexit:                       ; preds = %.lr.ph56.i.i.prol, %.lr.ph56.i.i.preheader
  %.254.i.i.unr = phi ptr [ %.254.i.i.ph, %.lr.ph56.i.i.preheader ], [ %i.gw, %.lr.ph56.i.i.prol ]
  %.22453.i.i.unr = phi ptr [ %.22453.i.i.ph, %.lr.ph56.i.i.preheader ], [ %i.gy, %.lr.ph56.i.i.prol ]
  %.22752.i.i.unr = phi i32 [ %.22752.i.i.ph, %.lr.ph56.i.i.preheader ], [ %i.hb, %.lr.ph56.i.i.prol ]
  %i.hc = icmp ult i32 %i.gv, 3
  br i1 %i.hc, label %AES_GCM_encrypt_C.exit, label %.lr.ph56.i.i

.lr.ph56.i.i:                                     ; preds = %.lr.ph56.i.i.prol.loopexit, %.lr.ph56.i.i
  %.254.i.i = phi ptr [ %i.hs, %.lr.ph56.i.i ], [ %.254.i.i.unr, %.lr.ph56.i.i.prol.loopexit ] ; 5 uses
  %.22453.i.i = phi ptr [ %i.hu, %.lr.ph56.i.i ], [ %.22453.i.i.unr, %.lr.ph56.i.i.prol.loopexit ] ; 6 uses
  %.22752.i.i = phi i32 [ %i.hx, %.lr.ph56.i.i ], [ %.22752.i.i.unr, %.lr.ph56.i.i.prol.loopexit ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.254.i.i, i64 1
  %i.he = load i8, ptr %.254.i.i, align 1, !tbaa !21
  %i.hf = getelementptr inbounds nuw i8, ptr %.22453.i.i, i64 1 ; 2 uses
  %i.hg = load i8, ptr %.22453.i.i, align 1, !tbaa !21
  %i.hh = xor i8 %i.hg, %i.he
  store i8 %i.hh, ptr %.22453.i.i, align 1, !tbaa !21
  %i.hi = getelementptr inbounds nuw i8, ptr %.254.i.i, i64 2
  %i.hj = load i8, ptr %i.hd, align 1, !tbaa !21
  %i.hk = getelementptr inbounds nuw i8, ptr %.22453.i.i, i64 2 ; 2 uses
  %i.hl = load i8, ptr %i.hf, align 1, !tbaa !21
  %i.hm = xor i8 %i.hl, %i.hj
  store i8 %i.hm, ptr %i.hf, align 1, !tbaa !21
  %i.hn = getelementptr inbounds nuw i8, ptr %.254.i.i, i64 3
  %i.ho = load i8, ptr %i.hi, align 1, !tbaa !21
  %i.hp = getelementptr inbounds nuw i8, ptr %.22453.i.i, i64 3 ; 2 uses
  %i.hq = load i8, ptr %i.hk, align 1, !tbaa !21
  %i.hr = xor i8 %i.hq, %i.ho
  store i8 %i.hr, ptr %i.hk, align 1, !tbaa !21
  %i.hs = getelementptr inbounds nuw i8, ptr %.254.i.i, i64 4
end_hunk_0
