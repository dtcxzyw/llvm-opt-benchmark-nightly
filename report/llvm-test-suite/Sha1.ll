inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b:bb.a
  %i.pv = xor i32 %i.ps, %i.pu
  %i.pw = xor i32 %i.pv, %i.no
  %i.px = xor i32 %i.pw, %i.of                    ; 2 uses
  %i.py = tail call i32 @llvm.fshl.i32(i32 %i.px, i32 %i.px, i32 1) ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.nc, i64 12
  store i32 %i.py, ptr %i.pz, align 4, !tbaa !4
  %i.qa = tail call i32 @llvm.fshl.i32(i32 %i.pl, i32 %i.pl, i32 5)
  %i.qb = add i32 %i.nu, -1894007588
  %i.qc = add i32 %i.qb, %i.pq
  %i.qd = add i32 %i.qc, %i.py
  %i.qe = add i32 %i.qd, %i.qa                    ; 4 uses
  %i.qf = tail call i32 @llvm.fshl.i32(i32 %i.oq, i32 %i.oq, i32 30) ; 4 uses
  %i.qg = and i32 %i.pl, %i.qf
  %i.qh = or i32 %i.pl, %i.qf
  %i.qi = and i32 %i.qh, %i.pm
  %i.qj = or i32 %i.qi, %i.qg
  %i.qk = getelementptr i8, ptr %i.nc, i64 -16
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !4
  %i.qm = getelementptr i8, ptr %i.nc, i64 -40
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !4
  %i.qo = xor i32 %i.ql, %i.qn
  %i.qp = xor i32 %i.qo, %i.ok
  %i.qq = xor i32 %i.qp, %i.pb                    ; 2 uses
  %i.qr = tail call i32 @llvm.fshl.i32(i32 %i.qq, i32 %i.qq, i32 1) ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  store i32 %i.qr, ptr %i.qs, align 4, !tbaa !4
  %i.qt = tail call i32 @llvm.fshl.i32(i32 %i.qe, i32 %i.qe, i32 5)
  %i.qu = add i32 %i.or, -1894007588
  %i.qv = add i32 %i.qu, %i.qr
  %i.qw = add i32 %i.qv, %i.qj
  %i.qx = add i32 %i.qw, %i.qt                    ; 2 uses
  %i.qy = tail call i32 @llvm.fshl.i32(i32 %i.pl, i32 %i.pl, i32 30) ; 2 uses
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 5
  %i.qz = icmp samesign ult i64 %indvars.iv477, 55
  br i1 %i.qz, label %.lr.ph, label %.lr.ph447, !llvm.loop !13

.lr.ph447:                                        ; preds = %.lr.ph, %.lr.ph447
  %indvars.iv480 = phi i64 [ %indvars.iv.next481, %.lr.ph447 ], [ 60, %.lr.ph ] ; 3 uses
  %.3399445 = phi i32 [ %i.ti, %.lr.ph447 ], [ %i.pm, %.lr.ph ]
  %.3403444 = phi i32 [ %i.tz, %.lr.ph447 ], [ %i.qf, %.lr.ph ] ; 2 uses
  %.3407443 = phi i32 [ %i.uq, %.lr.ph447 ], [ %i.qy, %.lr.ph ] ; 3 uses
  %.3411442 = phi i32 [ %i.ty, %.lr.ph447 ], [ %i.qe, %.lr.ph ] ; 3 uses
  %.3415441 = phi i32 [ %i.up, %.lr.ph447 ], [ %i.qx, %.lr.ph ] ; 5 uses
  %i.ra = xor i32 %.3407443, %.3411442
  %i.rb = xor i32 %i.ra, %.3403444
  %i.rc = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv480 ; 20 uses
  %i.rd = getelementptr i8, ptr %i.rc, i64 -12
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !4
  %i.rf = getelementptr i8, ptr %i.rc, i64 -32
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !4
  %i.rh = xor i32 %i.rg, %i.re
  %i.ri = getelementptr i8, ptr %i.rc, i64 -56
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !4  ; 2 uses
  %i.rk = getelementptr i8, ptr %i.rc, i64 -64
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !4
  %i.rm = xor i32 %i.rh, %i.rl
  %i.rn = xor i32 %i.rm, %i.rj                    ; 2 uses
  %i.ro = tail call i32 @llvm.fshl.i32(i32 %i.rn, i32 %i.rn, i32 1) ; 3 uses
  store i32 %i.ro, ptr %i.rc, align 4, !tbaa !4
  %i.rp = tail call i32 @llvm.fshl.i32(i32 %.3415441, i32 %.3415441, i32 5)
  %i.rq = add i32 %i.rp, -899497514
  %i.rr = add i32 %i.rq, %i.rb
  %i.rs = add i32 %i.rr, %.3399445
  %i.rt = add i32 %i.rs, %i.ro                    ; 5 uses
  %i.ru = tail call i32 @llvm.fshl.i32(i32 %.3411442, i32 %.3411442, i32 30) ; 3 uses
  %i.rv = xor i32 %i.ru, %.3415441
  %i.rw = xor i32 %i.rv, %.3407443
  %i.rx = getelementptr i8, ptr %i.rc, i64 -8
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !4
  %i.rz = getelementptr i8, ptr %i.rc, i64 -28
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !4
  %i.sb = xor i32 %i.sa, %i.ry
  %i.sc = getelementptr i8, ptr %i.rc, i64 -52
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !4  ; 2 uses
  %i.se = getelementptr i8, ptr %i.rc, i64 -60
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !4
  %i.sg = xor i32 %i.sb, %i.sf
  %i.sh = xor i32 %i.sg, %i.sd                    ; 2 uses
  %i.si = tail call i32 @llvm.fshl.i32(i32 %i.sh, i32 %i.sh, i32 1) ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  store i32 %i.si, ptr %i.sj, align 4, !tbaa !4
  %i.sk = tail call i32 @llvm.fshl.i32(i32 %i.rt, i32 %i.rt, i32 5)
  %i.sl = add i32 %.3403444, -899497514
  %i.sm = add i32 %i.sl, %i.rw
  %i.sn = add i32 %i.sm, %i.si
  %i.so = add i32 %i.sn, %i.sk                    ; 5 uses
  %i.sp = tail call i32 @llvm.fshl.i32(i32 %.3415441, i32 %.3415441, i32 30) ; 3 uses
  %i.sq = xor i32 %i.ru, %i.sp
  %i.sr = xor i32 %i.sq, %i.rt
  %i.ss = getelementptr i8, ptr %i.rc, i64 -4
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !4
  %i.su = getelementptr i8, ptr %i.rc, i64 -24
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !4
  %i.sw = getelementptr i8, ptr %i.rc, i64 -48
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !4  ; 2 uses
  %i.sy = xor i32 %i.st, %i.sv
  %i.sz = xor i32 %i.sy, %i.rj
  %i.ta = xor i32 %i.sz, %i.sx                    ; 2 uses
  %i.tb = tail call i32 @llvm.fshl.i32(i32 %i.ta, i32 %i.ta, i32 1) ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  store i32 %i.tb, ptr %i.tc, align 4, !tbaa !4
  %i.td = tail call i32 @llvm.fshl.i32(i32 %i.so, i32 %i.so, i32 5)
  %i.te = add i32 %.3407443, -899497514
  %i.tf = add i32 %i.te, %i.sr
  %i.tg = add i32 %i.tf, %i.tb
  %i.th = add i32 %i.tg, %i.td                    ; 5 uses
  %i.ti = tail call i32 @llvm.fshl.i32(i32 %i.rt, i32 %i.rt, i32 30) ; 4 uses
  %i.tj = xor i32 %i.ti, %i.sp
  %i.tk = xor i32 %i.tj, %i.so
  %i.tl = getelementptr i8, ptr %i.rc, i64 -20
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !4
  %i.tn = getelementptr i8, ptr %i.rc, i64 -44
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !4
  %i.tp = xor i32 %i.tm, %i.to
  %i.tq = xor i32 %i.tp, %i.ro
  %i.tr = xor i32 %i.tq, %i.sd                    ; 2 uses
  %i.ts = tail call i32 @llvm.fshl.i32(i32 %i.tr, i32 %i.tr, i32 1) ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.rc, i64 12
  store i32 %i.ts, ptr %i.tt, align 4, !tbaa !4
  %i.tu = tail call i32 @llvm.fshl.i32(i32 %i.th, i32 %i.th, i32 5)
  %i.tv = add i32 %i.ru, -899497514
  %i.tw = add i32 %i.tv, %i.tk
  %i.tx = add i32 %i.tw, %i.ts
  %i.ty = add i32 %i.tx, %i.tu                    ; 4 uses
  %i.tz = tail call i32 @llvm.fshl.i32(i32 %i.so, i32 %i.so, i32 30) ; 3 uses
  %i.ua = xor i32 %i.tz, %i.ti
  %i.ub = xor i32 %i.ua, %i.th
  %i.uc = getelementptr i8, ptr %i.rc, i64 -16
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !4
  %i.ue = getelementptr i8, ptr %i.rc, i64 -40
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !4
  %i.ug = xor i32 %i.ud, %i.uf
  %i.uh = xor i32 %i.ug, %i.si
  %i.ui = xor i32 %i.uh, %i.sx                    ; 2 uses
  %i.uj = tail call i32 @llvm.fshl.i32(i32 %i.ui, i32 %i.ui, i32 1) ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  store i32 %i.uj, ptr %i.uk, align 4, !tbaa !4
  %i.ul = tail call i32 @llvm.fshl.i32(i32 %i.ty, i32 %i.ty, i32 5)
  %i.um = add i32 %i.sp, -899497514
  %i.un = add i32 %i.um, %i.ub
  %i.uo = add i32 %i.un, %i.uj
  %i.up = add i32 %i.uo, %i.ul                    ; 2 uses
  %i.uq = tail call i32 @llvm.fshl.i32(i32 %i.th, i32 %i.th, i32 30) ; 2 uses
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 5
  %i.ur = icmp samesign ult i64 %indvars.iv480, 75
  br i1 %i.ur, label %.lr.ph447, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph447
  %i.us = add i32 %i.up, %i.b
  store i32 %i.us, ptr %2, align 4, !tbaa !4
  %i.ut = load i32, ptr %i.c, align 4, !tbaa !4
  %i.uu = add i32 %i.ut, %i.ty
  %i.uv = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.uu, ptr %i.uv, align 4, !tbaa !4
  %i.uw = load i32, ptr %i.e, align 8, !tbaa !4
  %i.ux = add i32 %i.uw, %i.uq
  %i.uy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ux, ptr %i.uy, align 4, !tbaa !4
  %i.uz = load i32, ptr %i.g, align 4, !tbaa !4
  %i.va = add i32 %i.uz, %i.tz
  %i.vb = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.va, ptr %i.vb, align 4, !tbaa !4
  %i.vc = load i32, ptr %i.i, align 8, !tbaa !4
  %i.vd = add i32 %i.vc, %i.ti
  %i.ve = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.vd, ptr %i.ve, align 4, !tbaa !4
  br i1 %3, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %._crit_edge
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %scevgep, i64 64, i1 false), !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZNK7NCrypto5NSha112CContextBase12PrepareBlockEPjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = and i32 %2, 15                           ; 4 uses
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.b
  store i32 -2147483648, ptr %i.c, align 4, !tbaa !4
  %.013 = add nuw nsw i32 %i.a, 1                 ; 4 uses
  %.not14 = icmp eq i32 %.013, 14
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = sub nsw i32 13, %i.a                     ; 3 uses
  %min.iters.check = icmp ult i32 %i.d, 8
  %i.e = icmp samesign ugt i32 %i.a, 12
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.e
  br i1 %or.cond, label %.lr.ph.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %i.d, -8                       ; 3 uses
  %3 = add nuw nsw i32 %.013, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = add i32 %.013, %index
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x i32> zeroinitializer, ptr %i.h, align 4, !tbaa !4
  store <4 x i32> zeroinitializer, ptr %i.i, align 4, !tbaa !4
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.j = icmp eq i32 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %.lr.ph.preheader, %middle.block
  %.015.ph = phi i32 [ %.013, %.lr.ph.preheader ], [ %3, %middle.block ] ; 4 uses
  %i.k = sub nsw i32 6, %.015.ph
  %xtraiter = and i32 %i.k, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader16, %.lr.ph.prol
  %.015.prol = phi i32 [ %.0.prol, %.lr.ph.prol ], [ %.015.ph, %.lr.ph.preheader16 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader16 ]
  %i.l = zext i32 %.015.prol to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.l
  store i32 0, ptr %i.m, align 4, !tbaa !4
  %.0.prol = add i32 %.015.prol, 1                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !18

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader16
  %.015.unr = phi i32 [ %.015.ph, %.lr.ph.preheader16 ], [ %.0.prol, %.lr.ph.prol ]
  %i.n = add nsw i32 %.015.ph, -7
  %i.o = icmp ult i32 %i.n, 7
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.015 = phi i32 [ %.0.7, %.lr.ph ], [ %.015.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.p = zext i32 %.015 to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.p
  store i32 0, ptr %i.q, align 4, !tbaa !4
  %.0 = add i32 %.015, 1
  %i.r = zext i32 %.0 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.r
  store i32 0, ptr %i.s, align 4, !tbaa !4
  %.0.1 = add i32 %.015, 2
  %i.t = zext i32 %.0.1 to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.t
  store i32 0, ptr %i.u, align 4, !tbaa !4
  %.0.2 = add i32 %.015, 3
  %i.v = zext i32 %.0.2 to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.v
  store i32 0, ptr %i.w, align 4, !tbaa !4
  %.0.3 = add i32 %.015, 4
  %i.x = zext i32 %.0.3 to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.x
  store i32 0, ptr %i.y, align 4, !tbaa !4
  %.0.4 = add i32 %.015, 5
  %i.z = zext i32 %.0.4 to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.z
  store i32 0, ptr %i.aa, align 4, !tbaa !4
  %.0.5 = add i32 %.015, 6
  %i.ab = zext i32 %.0.5 to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ab
  store i32 0, ptr %i.ac, align 4, !tbaa !4
  %.0.6 = add i32 %.015, 7
  %i.ad = zext i32 %.0.6 to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ad
  store i32 0, ptr %i.ae, align 4, !tbaa !4
  %.0.7 = add i32 %.015, 8                        ; 2 uses
  %.not.7 = icmp eq i32 %.0.7, 14
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !8
  %i.ah = shl i64 %i.ag, 9
  %i.ai = zext i32 %2 to i64
  %i.aj = shl nuw nsw i64 %i.ai, 5
  %i.ak = add i64 %i.ah, %i.aj                    ; 2 uses
  %i.al = lshr i64 %i.ak, 32
  %i.am = trunc nuw i64 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.am, ptr %i.an, align 4, !tbaa !4
  %i.ao = trunc i64 %i.ak to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN7NCrypto5NSha18CContext6UpdateEPKhm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(100) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not12 = icmp eq i64 %2, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.in = phi i64 [ %2, %.lr.ph ], [ %i.e, %bb.e ]
  %.014 = phi ptr [ %1, %.lr.ph ], [ %i.k, %bb.e ] ; 2 uses
  %.0913 = phi i32 [ %i.b, %.lr.ph ], [ %.1, %bb.e ] ; 3 uses
  %i.e = add i64 %.in, -1                         ; 2 uses
  %i.f = and i32 %.0913, 3                        ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = lshr i32 %.0913, 2
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  br i1 %i.g, label %bb.c, label %._crit_edge15

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.i
  store i32 0, ptr %i.j, align 4, !tbaa !4
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.014, i64 1
  %i.l = load i8, ptr %.014, align 1, !tbaa !23
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.f, 3
  %i.o = xor i32 %i.n, 24
  %i.p = shl nuw i32 %i.m, %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.i ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = or i32 %i.p, %i.r
  store i32 %i.s, ptr %i.q, align 4, !tbaa !4
  %i.t = add i32 %.0913, 1                        ; 2 uses
  %i.u = icmp eq i32 %i.t, 64
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge15
  tail call void @_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext false)
  %i.v = load i64, ptr %i.d, align 8, !tbaa !8
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.d, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge15
  %.1 = phi i32 [ 0, %bb.d ], [ %i.t, %._crit_edge15 ] ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.09.lcssa = phi i32 [ %i.b, %bb.a ], [ %.1, %bb.e ]
  store i32 %.09.lcssa, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN7NCrypto5NSha18CContext9UpdateRarEPhmb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(100) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not34 = icmp eq i64 %2, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.in = phi i64 [ %2, %.lr.ph ], [ %i.t, %.loopexit ]
  %.037 = phi ptr [ %1, %.lr.ph ], [ %i.z, %.loopexit ] ; 66 uses
  %.02936 = phi i32 [ %i.b, %.lr.ph ], [ %.1, %.loopexit ] ; 3 uses
  %.03035 = phi i1 [ false, %.lr.ph ], [ %.131, %.loopexit ] ; 3 uses
  %i.t = add i64 %.in, -1                         ; 2 uses
  %i.u = and i32 %.02936, 3                       ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  %i.w = lshr i32 %.02936, 2
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  br i1 %i.v, label %bb.c, label %._crit_edge39

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.x
  store i32 0, ptr %i.y, align 4, !tbaa !4
  br label %._crit_edge39

._crit_edge39:                                    ; preds = %bb.b, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.037, i64 1
  %i.aa = load i8, ptr %.037, align 1, !tbaa !23
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.u, 3
  %i.ad = xor i32 %i.ac, 24
  %i.ae = shl nuw i32 %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.x ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = or i32 %i.ae, %i.ag
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !4
  %i.ai = add i32 %.02936, 1                      ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 64
  br i1 %i.aj, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %._crit_edge39
  tail call void @_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %.03035)
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !8
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.d, align 8, !tbaa !8
  br i1 %.03035, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.d
  %i.am = load i32, ptr %i.c, align 4, !tbaa !4   ; 4 uses
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %.037, i64 4294967233
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !23
  %i.ap = lshr i32 %i.am, 8
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %.037, i64 4294967234
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !23
  %i.as = lshr i32 %i.am, 16
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %.037, i64 4294967235
  store i8 %i.at, ptr %i.au, align 1, !tbaa !23
  %i.av = lshr i32 %i.am, 24
  %i.aw = trunc nuw i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %.037, i64 4294967236
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !23
  %i.ay = load i32, ptr %i.e, align 8, !tbaa !4   ; 4 uses
  %i.az = trunc i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %.037, i64 4294967237
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !23
  %i.bb = lshr i32 %i.ay, 8
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.037, i64 4294967238
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !23
  %i.be = lshr i32 %i.ay, 16
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %.037, i64 4294967239
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !23
  %i.bh = lshr i32 %i.ay, 24
  %i.bi = trunc nuw i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %.037, i64 4294967240
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !23
  %i.bk = load i32, ptr %i.f, align 4, !tbaa !4   ; 4 uses
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %.037, i64 4294967241
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !23
  %i.bn = lshr i32 %i.bk, 8
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %.037, i64 4294967242
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !23
  %i.bq = lshr i32 %i.bk, 16
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %.037, i64 4294967243
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !23
  %i.bt = lshr i32 %i.bk, 24
  %i.bu = trunc nuw i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.037, i64 4294967244
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !23
  %i.bw = load i32, ptr %i.g, align 8, !tbaa !4   ; 4 uses
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.037, i64 4294967245
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !23
  %i.bz = lshr i32 %i.bw, 8
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %.037, i64 4294967246
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !23
  %i.cc = lshr i32 %i.bw, 16
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.037, i64 4294967247
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !23
  %i.cf = lshr i32 %i.bw, 24
  %i.cg = trunc nuw i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %.037, i64 4294967248
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !23
  %i.ci = load i32, ptr %i.h, align 4, !tbaa !4   ; 4 uses
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.037, i64 4294967249
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !23
  %i.cl = lshr i32 %i.ci, 8
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %.037, i64 4294967250
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !23
  %i.co = lshr i32 %i.ci, 16
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %.037, i64 4294967251
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !23
  %i.cr = lshr i32 %i.ci, 24
  %i.cs = trunc nuw i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.037, i64 4294967252
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !23
  %i.cu = load i32, ptr %i.i, align 8, !tbaa !4   ; 4 uses
  %i.cv = trunc i32 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %.037, i64 4294967253
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !23
  %i.cx = lshr i32 %i.cu, 8
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %.037, i64 4294967254
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !23
  %i.da = lshr i32 %i.cu, 16
  %i.db = trunc i32 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %.037, i64 4294967255
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !23
  %i.dd = lshr i32 %i.cu, 24
  %i.de = trunc nuw i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %.037, i64 4294967256
  store i8 %i.de, ptr %i.df, align 1, !tbaa !23
  %i.dg = load i32, ptr %i.j, align 4, !tbaa !4   ; 4 uses
  %i.dh = trunc i32 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %.037, i64 4294967257
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !23
  %i.dj = lshr i32 %i.dg, 8
  %i.dk = trunc i32 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %.037, i64 4294967258
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !23
  %i.dm = lshr i32 %i.dg, 16
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %.037, i64 4294967259
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !23
  %i.dp = lshr i32 %i.dg, 24
  %i.dq = trunc nuw i32 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %.037, i64 4294967260
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !23
  %i.ds = load i32, ptr %i.k, align 8, !tbaa !4   ; 4 uses
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %.037, i64 4294967261
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !23
  %i.dv = lshr i32 %i.ds, 8
  %i.dw = trunc i32 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %.037, i64 4294967262
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !23
  %i.dy = lshr i32 %i.ds, 16
  %i.dz = trunc i32 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %.037, i64 4294967263
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !23
  %i.eb = lshr i32 %i.ds, 24
  %i.ec = trunc nuw i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %.037, i64 4294967264
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !23
  %i.ee = load i32, ptr %i.l, align 4, !tbaa !4   ; 4 uses
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %.037, i64 4294967265
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !23
  %i.eh = lshr i32 %i.ee, 8
  %i.ei = trunc i32 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %.037, i64 4294967266
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !23
  %i.ek = lshr i32 %i.ee, 16
  %i.el = trunc i32 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %.037, i64 4294967267
  store i8 %i.el, ptr %i.em, align 1, !tbaa !23
  %i.en = lshr i32 %i.ee, 24
  %i.eo = trunc nuw i32 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %.037, i64 4294967268
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !23
  %i.eq = load i32, ptr %i.m, align 8, !tbaa !4   ; 4 uses
  %i.er = trunc i32 %i.eq to i8
  %i.es = getelementptr inbounds nuw i8, ptr %.037, i64 4294967269
  store i8 %i.er, ptr %i.es, align 1, !tbaa !23
  %i.et = lshr i32 %i.eq, 8
  %i.eu = trunc i32 %i.et to i8
  %i.ev = getelementptr inbounds nuw i8, ptr %.037, i64 4294967270
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !23
  %i.ew = lshr i32 %i.eq, 16
  %i.ex = trunc i32 %i.ew to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %.037, i64 4294967271
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !23
  %i.ez = lshr i32 %i.eq, 24
  %i.fa = trunc nuw i32 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %.037, i64 4294967272
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !23
  %i.fc = load i32, ptr %i.n, align 4, !tbaa !4   ; 4 uses
  %i.fd = trunc i32 %i.fc to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %.037, i64 4294967273
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !23
  %i.ff = lshr i32 %i.fc, 8
  %i.fg = trunc i32 %i.ff to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %.037, i64 4294967274
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !23
  %i.fi = lshr i32 %i.fc, 16
  %i.fj = trunc i32 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %.037, i64 4294967275
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !23
  %i.fl = lshr i32 %i.fc, 24
  %i.fm = trunc nuw i32 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %.037, i64 4294967276
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !23
  %i.fo = load i32, ptr %i.o, align 8, !tbaa !4   ; 4 uses
  %i.fp = trunc i32 %i.fo to i8
  %i.fq = getelementptr inbounds nuw i8, ptr %.037, i64 4294967277
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !23
  %i.fr = lshr i32 %i.fo, 8
  %i.fs = trunc i32 %i.fr to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %.037, i64 4294967278
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !23
  %i.fu = lshr i32 %i.fo, 16
  %i.fv = trunc i32 %i.fu to i8
  %i.fw = getelementptr inbounds nuw i8, ptr %.037, i64 4294967279
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !23
  %i.fx = lshr i32 %i.fo, 24
  %i.fy = trunc nuw i32 %i.fx to i8
  %i.fz = getelementptr inbounds nuw i8, ptr %.037, i64 4294967280
  store i8 %i.fy, ptr %i.fz, align 1, !tbaa !23
  %i.ga = load i32, ptr %i.p, align 4, !tbaa !4   ; 4 uses
  %i.gb = trunc i32 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %.037, i64 4294967281
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !23
  %i.gd = lshr i32 %i.ga, 8
  %i.ge = trunc i32 %i.gd to i8
  %i.gf = getelementptr inbounds nuw i8, ptr %.037, i64 4294967282
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !23
  %i.gg = lshr i32 %i.ga, 16
  %i.gh = trunc i32 %i.gg to i8
  %i.gi = getelementptr inbounds nuw i8, ptr %.037, i64 4294967283
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !23
  %i.gj = lshr i32 %i.ga, 24
  %i.gk = trunc nuw i32 %i.gj to i8
  %i.gl = getelementptr inbounds nuw i8, ptr %.037, i64 4294967284
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !23
  %i.gm = load i32, ptr %i.q, align 8, !tbaa !4   ; 4 uses
  %i.gn = trunc i32 %i.gm to i8
  %i.go = getelementptr inbounds nuw i8, ptr %.037, i64 4294967285
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !23
  %i.gp = lshr i32 %i.gm, 8
  %i.gq = trunc i32 %i.gp to i8
  %i.gr = getelementptr inbounds nuw i8, ptr %.037, i64 4294967286
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !23
  %i.gs = lshr i32 %i.gm, 16
  %i.gt = trunc i32 %i.gs to i8
  %i.gu = getelementptr inbounds nuw i8, ptr %.037, i64 4294967287
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !23
  %i.gv = lshr i32 %i.gm, 24
  %i.gw = trunc nuw i32 %i.gv to i8
  %i.gx = getelementptr inbounds nuw i8, ptr %.037, i64 4294967288
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !23
  %i.gy = load i32, ptr %i.r, align 4, !tbaa !4   ; 4 uses
  %i.gz = trunc i32 %i.gy to i8
  %i.ha = getelementptr inbounds nuw i8, ptr %.037, i64 4294967289
  store i8 %i.gz, ptr %i.ha, align 1, !tbaa !23
  %i.hb = lshr i32 %i.gy, 8
  %i.hc = trunc i32 %i.hb to i8
  %i.hd = getelementptr inbounds nuw i8, ptr %.037, i64 4294967290
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !23
  %i.he = lshr i32 %i.gy, 16
  %i.hf = trunc i32 %i.he to i8
  %i.hg = getelementptr inbounds nuw i8, ptr %.037, i64 4294967291
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !23
  %i.hh = lshr i32 %i.gy, 24
  %i.hi = trunc nuw i32 %i.hh to i8
  %i.hj = getelementptr inbounds nuw i8, ptr %.037, i64 4294967292
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !23
  %i.hk = load i32, ptr %i.s, align 8, !tbaa !4   ; 4 uses
  %i.hl = trunc i32 %i.hk to i8
  %i.hm = getelementptr inbounds nuw i8, ptr %.037, i64 4294967293
  store i8 %i.hl, ptr %i.hm, align 1, !tbaa !23
  %i.hn = lshr i32 %i.hk, 8
  %i.ho = trunc i32 %i.hn to i8
  %i.hp = getelementptr inbounds nuw i8, ptr %.037, i64 4294967294
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !23
  %i.hq = lshr i32 %i.hk, 16
  %i.hr = trunc i32 %i.hq to i8
  %i.hs = getelementptr inbounds nuw i8, ptr %.037, i64 4294967295
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !23
  %i.ht = lshr i32 %i.hk, 24
  %i.hu = trunc nuw i32 %i.ht to i8
  %i.hv = getelementptr inbounds nuw i8, ptr %.037, i64 4294967296
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.d, %._crit_edge39
  %.131 = phi i1 [ %.03035, %._crit_edge39 ], [ %3, %bb.d ], [ %3, %.preheader.preheader ]
  %.1 = phi i32 [ %i.ai, %._crit_edge39 ], [ 0, %bb.d ], [ 0, %.preheader.preheader ] ; 2 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !25

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.029.lcssa = phi i32 [ %i.b, %bb.a ], [ %.1, %.loopexit ]
  store i32 %.029.lcssa, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN7NCrypto5NSha18CContext5FinalEPh(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(100) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 3 uses
  %i.e = and i32 %i.d, 3                          ; 2 uses
  %i.f = lshr i32 %i.d, 2                         ; 2 uses
  %i.g = icmp eq i32 %i.e, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.i = zext nneg i32 %i.f to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i ; 2 uses
  br i1 %i.g, label %bb.b, label %._crit_edge33

._crit_edge33:                                    ; preds = %bb.a
  %.pre = load i32, ptr %i.j, align 4, !tbaa !4
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.j, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge33, %bb.b
  %i.k = phi i32 [ %.pre, %._crit_edge33 ], [ 0, %bb.b ]
  %i.l = shl nuw nsw i32 %i.e, 3
  %i.m = lshr exact i32 -2147483648, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.i
  %i.p = or i32 %i.k, %i.m
  store i32 %i.p, ptr %i.o, align 4, !tbaa !4
  %.02627 = add nuw nsw i32 %i.f, 1               ; 2 uses
  %.not28 = icmp eq i32 %.02627, 14
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.02629 = phi i32 [ %.026, %bb.e ], [ %.02627, %bb.c ]
  %i.q = and i32 %.02629, 15                      ; 3 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(100) %0, i1 noundef zeroext false)
  %i.s = load i64, ptr %i.a, align 8, !tbaa !8
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.a, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.u = zext nneg i32 %i.q to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.u
  store i32 0, ptr %i.v, align 4, !tbaa !4
  %.026 = add nuw nsw i32 %i.q, 1                 ; 2 uses
  %.not = icmp eq i32 %.026, 14
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %i.w = zext i32 %i.d to i64
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = shl i64 %i.b, 9
  %i.z = add i64 %i.x, %i.y                       ; 2 uses
  %i.aa = lshr i64 %i.z, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !4
  %i.ad = trunc i64 %i.z to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !4
  tail call void @_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(100) %0, i1 noundef zeroext false)
  %i.af = load i32, ptr %0, align 8, !tbaa !4     ; 4 uses
  %i.ag = lshr i32 %i.af, 24
  %i.ah = trunc nuw i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.ah, ptr %1, align 1, !tbaa !23
  %i.aj = lshr i32 %i.af, 16
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.ak, ptr %i.ai, align 1, !tbaa !23
  %i.am = lshr i32 %i.af, 8
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.an, ptr %i.al, align 1, !tbaa !23
  %i.ap = trunc i32 %i.af to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4  ; 4 uses
  %i.at = lshr i32 %i.as, 24
  %i.au = trunc nuw i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.au, ptr %i.aq, align 1, !tbaa !23
  %i.aw = lshr i32 %i.as, 16
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !23
  %i.az = lshr i32 %i.as, 8
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !23
  %i.bc = trunc i32 %i.as to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !23
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !4  ; 4 uses
  %i.bg = lshr i32 %i.bf, 24
  %i.bh = trunc nuw i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.bh, ptr %i.bd, align 1, !tbaa !23
  %i.bj = lshr i32 %i.bf, 16
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !23
  %i.bm = lshr i32 %i.bf, 8
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !23
  %i.bp = trunc i32 %i.bf to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4  ; 4 uses
  %i.bt = lshr i32 %i.bs, 24
  %i.bu = trunc nuw i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 13
  store i8 %i.bu, ptr %i.bq, align 1, !tbaa !23
  %i.bw = lshr i32 %i.bs, 16
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !23
  %i.bz = lshr i32 %i.bs, 8
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !23
  %i.cc = trunc i32 %i.bs to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !23
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !4  ; 4 uses
  %i.cg = lshr i32 %i.cf, 24
  %i.ch = trunc nuw i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.ch, ptr %i.cd, align 1, !tbaa !23
  %i.cj = lshr i32 %i.cf, 16
  %i.ck = trunc i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !23
  %i.cm = lshr i32 %i.cf, 8
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !23
  %i.cp = trunc i32 %i.cf to i8
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !23
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 8, !tbaa !4
  store i32 -1009589776, ptr %i.ce, align 8, !tbaa !4
  store i64 0, ptr %i.a, align 8, !tbaa !8
  store i32 0, ptr %i.c, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN7NCrypto5NSha110CContext326UpdateEPKjm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(100) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %.not3 = icmp eq i64 %2, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.in = phi i64 [ %2, %.lr.ph ], [ %i.d, %bb.d ]
  %.024 = phi ptr [ %1, %.lr.ph ], [ %i.e, %bb.d ] ; 2 uses
  %i.d = add i64 %.in, -1                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.024, i64 4
  %i.f = load i32, ptr %.024, align 4, !tbaa !4
  %i.g = load i32, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %i.b, align 8, !tbaa !21
  %i.i = zext i32 %i.g to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.i
  store i32 %i.f, ptr %i.j, align 4, !tbaa !4
  %i.k = icmp eq i32 %i.h, 16
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !21
  tail call void @_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(100) %0, i1 noundef zeroext false)
  %i.l = load i64, ptr %i.c, align 8, !tbaa !8
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.c, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN7NCrypto5NSha110CContext325FinalEPj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(100) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e
  store i32 -2147483648, ptr %i.g, align 4, !tbaa !4
  %.010 = add i32 %i.d, 1                         ; 2 uses
  %.not11 = icmp eq i32 %.010, 14
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.012 = phi i32 [ %.0, %bb.c ], [ %.010, %bb.a ]
  %i.h = and i32 %.012, 15                        ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(100) %0, i1 noundef zeroext false)
  %i.j = load i64, ptr %i.a, align 8, !tbaa !8
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.a, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.l = zext nneg i32 %i.h to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.l
  store i32 0, ptr %i.m, align 4, !tbaa !4
  %.0 = add nuw nsw i32 %i.h, 1                   ; 2 uses
  %.not = icmp eq i32 %.0, 14
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.n = shl i64 %i.b, 9
  %i.o = shl nuw nsw i64 %i.e, 5
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.r, ptr %i.s, align 4, !tbaa !4
  %i.t = trunc i64 %i.p to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.t, ptr %i.u, align 8, !tbaa !4
  tail call void @_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.f, ptr noundef %1, i1 noundef zeroext false)
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 8, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.v, align 8, !tbaa !4
  store i64 0, ptr %i.a, align 8, !tbaa !8
  store i32 0, ptr %i.c, align 8, !tbaa !21
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 24}
!9 = !{!"_ZTSN7NCrypto5NSha112CContextBaseE", !6, i64 0, !10, i64 24}
!10 = !{!"long long", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !12, !16}
!21 = !{!22, !5, i64 32}
!22 = !{!"_ZTSN7NCrypto5NSha113CContextBase2E", !9, i64 0, !5, i64 32, !6, i64 36}
!23 = !{!6, !6, i64 0}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
end_hunk_0
