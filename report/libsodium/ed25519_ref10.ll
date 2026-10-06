Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/ed25519_ref10?download=true
inline.NumInlined: 477
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 30
begin_hunk_0_@sc25519_reduce:bb.a
  %i.ok = add i64 %i.lx, %.neg518
  %i.ol = sub i64 %i.ok, %i.na
  %i.om = add i64 %i.ol, %i.oj                    ; 2 uses
  %i.on = and i64 %i.oh, 2097151
  %i.oo = ashr i64 %i.om, 21
  %i.op = add i64 %i.nx, %i.lo
  %i.oq = sub i64 %i.op, %i.mc
  %i.or = add i64 %i.oq, %i.mz
  %i.os = add i64 %i.or, %i.oo                    ; 2 uses
  %i.ot = and i64 %i.om, 2097151
  %i.ou = ashr i64 %i.os, 21
  %i.ov = add i64 %i.mb, %.neg519
  %i.ow = sub i64 %i.ov, %i.ne
  %i.ox = add i64 %i.ow, %i.ou                    ; 2 uses
  %i.oy = and i64 %i.os, 2097151
  %i.oz = ashr i64 %i.ox, 21
  %i.pa = add i64 %i.nd, %i.oz                    ; 2 uses
  %i.pb = and i64 %i.ox, 2097151
  %i.pc = ashr i64 %i.pa, 21
  %i.pd = add i64 %i.pc, %i.nj                    ; 2 uses
  %i.pe = and i64 %i.pa, 2097151
  %i.pf = ashr i64 %i.pd, 21
  %i.pg = add i64 %i.nh, %i.pf                    ; 2 uses
  %i.ph = and i64 %i.pd, 2097151
  %i.pi = ashr i64 %i.pg, 21
  %i.pj = add i64 %i.pi, %i.no                    ; 2 uses
  %i.pk = and i64 %i.pg, 2097151
  %i.pl = ashr i64 %i.pj, 21
  %i.pm = add nsw i64 %i.nm, %i.pl                ; 2 uses
  %i.pn = and i64 %i.pj, 2097151
  %i.po = ashr i64 %i.pm, 21
  %i.pp = add nsw i64 %i.po, %i.ns                ; 2 uses
  %i.pq = and i64 %i.pm, 2097151
  %i.pr = ashr i64 %i.pp, 21                      ; 6 uses
  %i.ps = and i64 %i.pp, 2097151
  %i.pt = mul nsw i64 %i.pr, 666643
  %i.pu = add nsw i64 %i.pt, %i.oc                ; 3 uses
  %i.pv = mul nsw i64 %i.pr, 470296
  %i.pw = add nsw i64 %i.pv, %i.oi
  %i.px = mul nsw i64 %i.pr, 654183
  %i.py = add nsw i64 %i.px, %i.on
  %.neg520 = mul nsw i64 %i.pr, -997805
  %i.pz = add nsw i64 %.neg520, %i.ot
  %i.qa = mul nsw i64 %i.pr, 136657
  %i.qb = add nsw i64 %i.qa, %i.oy
  %.neg521 = mul nsw i64 %i.pr, -683901
  %i.qc = add nsw i64 %.neg521, %i.pb
  %i.qd = ashr i64 %i.pu, 21
  %i.qe = add nsw i64 %i.pw, %i.qd                ; 3 uses
  %i.qf = ashr i64 %i.qe, 21
  %i.qg = add nsw i64 %i.py, %i.qf                ; 3 uses
  %i.qh = and i64 %i.qe, 2097151                  ; 2 uses
  %i.qi = ashr i64 %i.qg, 21
  %i.qj = add nsw i64 %i.pz, %i.qi                ; 3 uses
  %i.qk = and i64 %i.qg, 2097151                  ; 2 uses
  %i.ql = ashr i64 %i.qj, 21
  %i.qm = add nsw i64 %i.qb, %i.ql                ; 3 uses
  %i.qn = and i64 %i.qj, 2097151                  ; 2 uses
  %i.qo = ashr i64 %i.qm, 21
  %i.qp = add nsw i64 %i.qc, %i.qo                ; 3 uses
  %i.qq = and i64 %i.qm, 2097151                  ; 2 uses
  %i.qr = ashr i64 %i.qp, 21
  %i.qs = add nsw i64 %i.qr, %i.pe                ; 3 uses
  %i.qt = and i64 %i.qp, 2097151                  ; 2 uses
  %i.qu = ashr i64 %i.qs, 21
  %i.qv = add nsw i64 %i.qu, %i.ph                ; 3 uses
  %i.qw = and i64 %i.qs, 2097151                  ; 2 uses
  %i.qx = ashr i64 %i.qv, 21
  %i.qy = add nsw i64 %i.qx, %i.pk                ; 3 uses
  %i.qz = ashr i64 %i.qy, 21
  %i.ra = add nsw i64 %i.qz, %i.pn                ; 3 uses
  %i.rb = ashr i64 %i.ra, 21
  %i.rc = add nsw i64 %i.rb, %i.pq                ; 3 uses
  %i.rd = and i64 %i.ra, 2097151                  ; 2 uses
  %i.re = ashr i64 %i.rc, 21
  %i.rf = add nsw i64 %i.re, %i.ps                ; 4 uses
  %i.rg = and i64 %i.rc, 2097151                  ; 2 uses
  %i.rh = trunc i64 %i.pu to i16
  store i16 %i.rh, ptr %0, align 1
  %i.ri = lshr i64 %i.pu, 16
  %i.rj = and i64 %i.ri, 31
  %i.rk = shl nuw nsw i64 %i.qh, 5
  %i.rl = or disjoint i64 %i.rk, %i.rj
  %i.rm = trunc i64 %i.rl to i8
  store i8 %i.rm, ptr %i.c, align 1
  %i.rn = getelementptr i8, ptr %0, i64 3
  %i.ro = lshr i64 %i.qe, 3
  %i.rp = trunc i64 %i.ro to i16
  store i16 %i.rp, ptr %i.rn, align 1
  %i.rq = lshr i64 %i.qh, 19
  %i.rr = shl nuw nsw i64 %i.qk, 2
  %i.rs = or disjoint i64 %i.rr, %i.rq
  %i.rt = trunc i64 %i.rs to i8
  store i8 %i.rt, ptr %i.l, align 1
  %i.ru = lshr i64 %i.qg, 6
  %i.rv = trunc i64 %i.ru to i8
  %i.rw = getelementptr i8, ptr %0, i64 6
  store i8 %i.rv, ptr %i.rw, align 1
  %i.rx = lshr i64 %i.qk, 14
  %i.ry = shl nuw nsw i64 %i.qn, 7
  %i.rz = or disjoint i64 %i.ry, %i.rx
  %i.sa = trunc i64 %i.rz to i8
  store i8 %i.sa, ptr %i.o, align 1
  %i.sb = getelementptr i8, ptr %0, i64 8
  %i.sc = lshr i64 %i.qj, 1
  %i.sd = trunc i64 %i.sc to i16
  store i16 %i.sd, ptr %i.sb, align 1
  %i.se = lshr i64 %i.qn, 17
  %i.sf = shl nuw nsw i64 %i.qq, 4
  %i.sg = or disjoint i64 %i.sf, %i.se
  %i.sh = trunc i64 %i.sg to i8
  store i8 %i.sh, ptr %i.z, align 1
  %i.si = getelementptr i8, ptr %0, i64 11
  %i.sj = lshr i64 %i.qm, 4
  %i.sk = trunc i64 %i.sj to i16
  store i16 %i.sk, ptr %i.si, align 1
  %i.sl = lshr i64 %i.qq, 20
  %i.sm = shl nuw nsw i64 %i.qt, 1
  %i.sn = or disjoint i64 %i.sm, %i.sl
  %i.so = trunc i64 %i.sn to i8
  store i8 %i.so, ptr %i.ae, align 1
  %i.sp = lshr i64 %i.qp, 7
  %i.sq = trunc i64 %i.sp to i8
  %i.sr = getelementptr i8, ptr %0, i64 14
  store i8 %i.sq, ptr %i.sr, align 1
  %i.ss = lshr i64 %i.qt, 15
  %i.st = shl nuw nsw i64 %i.qw, 6
  %i.su = or disjoint i64 %i.st, %i.ss
  %i.sv = trunc i64 %i.su to i8
  store i8 %i.sv, ptr %i.ah, align 1
  %i.sw = getelementptr i8, ptr %0, i64 16
  %i.sx = lshr i64 %i.qs, 2
  %i.sy = trunc i64 %i.sx to i16
  store i16 %i.sy, ptr %i.sw, align 1
  %i.sz = lshr i64 %i.qw, 18
  %i.ta = shl nsw i64 %i.qv, 3
  %i.tb = or disjoint i64 %i.ta, %i.sz
  %i.tc = trunc i64 %i.tb to i8
  store i8 %i.tc, ptr %i.as, align 1
  %i.td = getelementptr i8, ptr %0, i64 19
  %i.te = lshr i64 %i.qv, 5
  %i.tf = trunc i64 %i.te to i16
  store i16 %i.tf, ptr %i.td, align 1
  %i.tg = trunc i64 %i.qy to i16
  store i16 %i.tg, ptr %i.bb, align 1
  %i.th = lshr i64 %i.qy, 16
  %i.ti = and i64 %i.th, 31
  %i.tj = shl nuw nsw i64 %i.rd, 5
  %i.tk = or disjoint i64 %i.tj, %i.ti
  %i.tl = trunc i64 %i.tk to i8
  store i8 %i.tl, ptr %i.be, align 1
  %i.tm = getelementptr i8, ptr %0, i64 24
  %i.tn = lshr i64 %i.ra, 3
  %i.to = trunc i64 %i.tn to i16
  store i16 %i.to, ptr %i.tm, align 1
  %i.tp = lshr i64 %i.rd, 19
  %i.tq = shl nuw nsw i64 %i.rg, 2
  %i.tr = or disjoint i64 %i.tq, %i.tp
  %i.ts = trunc i64 %i.tr to i8
  store i8 %i.ts, ptr %i.bn, align 1
  %i.tt = lshr i64 %i.rc, 6
  %i.tu = trunc i64 %i.tt to i8
  %i.tv = getelementptr i8, ptr %0, i64 27
  store i8 %i.tu, ptr %i.tv, align 1
  %i.tw = lshr i64 %i.rg, 14
  %i.tx = shl nsw i64 %i.rf, 7
  %i.ty = or disjoint i64 %i.tx, %i.tw
  %i.tz = trunc i64 %i.ty to i8
  store i8 %i.tz, ptr %i.bq, align 1
  %i.ua = lshr i64 %i.rf, 1
  %i.ub = trunc i64 %i.ua to i8
  %i.uc = getelementptr i8, ptr %0, i64 29
  store i8 %i.ub, ptr %i.uc, align 1
  %i.ud = lshr i64 %i.rf, 9
  %i.ue = trunc i64 %i.ud to i8
  %i.uf = getelementptr i8, ptr %0, i64 30
  store i8 %i.ue, ptr %i.uf, align 1
  %i.ug = lshr i64 %i.rf, 17
  %i.uh = trunc i64 %i.ug to i8
  store i8 %i.uh, ptr %i.cb, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @sc25519_is_canonical(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ 32, %bb.a ], [ %indvars.iv.next.1, %bb.b ] ; 2 uses
  %.012 = phi i32 [ 0, %bb.a ], [ %i.u, %bb.b ]
  %.011 = phi i32 [ 1, %bb.a ], [ %i.x, %bb.b ]   ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 %indvars.iv.next
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = getelementptr i8, ptr @sc25519_is_canonical.L, i64 %indvars.iv.next
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = sub nsw i32 %i.c, %i.f
  %1 = ashr i32 %i.g, 8
  %i.h = and i32 %1, %.011
  %i.i = or i32 %i.h, %.012
  %i.j = xor i32 %i.f, %i.c
  %i.k = add nsw i32 %i.j, -1
  %2 = ashr i32 %i.k, 8
  %i.l = and i32 %2, %.011                        ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 4 uses
  %i.m = getelementptr i8, ptr %0, i64 %indvars.iv.next.1
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = getelementptr i8, ptr @sc25519_is_canonical.L, i64 %indvars.iv.next.1
  %i.q = load i8, ptr %i.p, align 2
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = sub nsw i32 %i.o, %i.r
  %3 = ashr i32 %i.s, 8
  %i.t = and i32 %3, %i.l
  %i.u = or i32 %i.t, %i.i                        ; 2 uses
  %i.v = xor i32 %i.r, %i.o
  %i.w = add nsw i32 %i.v, -1
  %4 = ashr i32 %i.w, 8
  %i.x = and i32 %4, %i.l
  %.not.1 = icmp eq i64 %indvars.iv.next.1, 0
  br i1 %.not.1, label %bb.c, label %bb.b, !llvm.loop !35

bb.c:                                             ; preds = %bb.b
  %5 = icmp ne i32 %i.u, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind ssp uwtable
define hidden void @ge25519_from_uniform(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [5 x i64], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 noundef 32, i1 noundef false) #12
  %i.b = getelementptr i8, ptr %0, i64 31         ; 2 uses
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = and i8 %i.c, -128
  %i.e = and i8 %i.c, 127
  store i8 %i.e, ptr %i.b, align 1
  %i.f = load i64, ptr %0, align 1
  %i.g = and i64 %i.f, 2251799813685247
  %i.h = getelementptr i8, ptr %0, i64 6
  %i.i = load i64, ptr %i.h, align 1
  %i.j = lshr i64 %i.i, 3
  %i.k = and i64 %i.j, 2251799813685247
  %i.l = getelementptr i8, ptr %0, i64 12
  %i.m = load i64, ptr %i.l, align 1
  %i.n = lshr i64 %i.m, 6
  %i.o = and i64 %i.n, 2251799813685247
  %i.p = getelementptr i8, ptr %0, i64 19
  %i.q = load i64, ptr %i.p, align 1
  %i.r = lshr i64 %i.q, 1
  %i.s = and i64 %i.r, 2251799813685247
  %i.t = getelementptr i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 1
  %i.v = lshr i64 %i.u, 12
  %i.w = and i64 %i.v, 2251799813685247
  store i64 %i.g, ptr %i.a, align 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.k, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.o, ptr %i.y, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.s, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.w, ptr %i.aa, align 16
  call fastcc void @ge25519_elligator2(ptr noundef nonnull %0, ptr noundef %i.a, i8 noundef zeroext %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @ge25519_elligator2(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i8 noundef zeroext range(i8 0, -127) %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [5 x i64], align 16               ; 5 uses
  %i.c = alloca [5 x i64], align 16               ; 4 uses
  %i.d = alloca [5 x i64], align 16               ; 4 uses
  %3 = alloca %struct.ge25519_p2, align 8         ; 6 uses
  %4 = alloca %struct.ge25519_p1p1, align 8       ; 12 uses
  %5 = alloca %struct.ge25519_p2, align 8         ; 8 uses
  %i.e = alloca [5 x i64], align 16               ; 4 uses
  %i.f = alloca [5 x i64], align 16               ; 11 uses
  %i.g = alloca [5 x i64], align 16               ; 8 uses
  %i.h = alloca [5 x i64], align 16               ; 9 uses
  %i.i = alloca [5 x i64], align 16               ; 8 uses
  %i.j = alloca [5 x i64], align 16               ; 22 uses
  %i.k = alloca [5 x i64], align 16               ; 6 uses
  %i.l = alloca [5 x i64], align 16               ; 8 uses
  %i.m = alloca [32 x i8], align 16               ; 4 uses
  %i.n = alloca [5 x i64], align 16               ; 10 uses
  %i.o = alloca [5 x i64], align 16               ; 10 uses
  %i.p = alloca [5 x i64], align 16               ; 8 uses
  %i.q = alloca [5 x i64], align 16               ; 8 uses
  %i.r = alloca [5 x i64], align 16               ; 8 uses
  %6 = alloca %struct.ge25519_p3, align 8         ; 9 uses
  %i.s = alloca [5 x i64], align 16               ; 8 uses
  %i.t = alloca [5 x i64], align 16               ; 4 uses
  %i.u = alloca [5 x i64], align 16               ; 8 uses
  %i.v = alloca [5 x i64], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.w = load i64, ptr %1, align 8                ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr i8, ptr %1, i64 24
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr i8, ptr %1, i64 32
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = shl i64 %i.w, 1
  %i.ag = shl i64 %i.y, 1
  %i.ah = mul i64 %i.y, 38
  %i.ai = mul i64 %i.aa, 38
  %i.aj = mul i64 %i.ac, 38
  %i.ak = mul i64 %i.ac, 19
  %i.al = mul i64 %i.ae, 19
  %i.am = zext i64 %i.w to i128                   ; 2 uses
  %i.an = mul nuw i128 %i.am, %i.am
  %i.ao = zext i64 %i.ah to i128
  %i.ap = zext i64 %i.ae to i128                  ; 5 uses
  %i.aq = mul nuw i128 %i.ap, %i.ao
  %i.ar = zext i64 %i.ai to i128                  ; 2 uses
  %i.as = zext i64 %i.ac to i128                  ; 4 uses
  %i.at = mul nuw i128 %i.ar, %i.as
  %i.au = add i128 %i.at, %i.an
  %i.av = add i128 %i.au, %i.aq
  %i.aw = zext i64 %i.af to i128                  ; 4 uses
  %i.ax = zext i64 %i.y to i128                   ; 3 uses
  %i.ay = mul nuw i128 %i.aw, %i.ax
  %i.az = mul nuw i128 %i.ap, %i.ar
  %i.ba = add i128 %i.az, %i.ay
  %i.bb = zext i64 %i.ak to i128
  %i.bc = mul nuw i128 %i.bb, %i.as
  %i.bd = add i128 %i.ba, %i.bc
  %i.be = zext i64 %i.aa to i128                  ; 4 uses
  %i.bf = mul nuw i128 %i.be, %i.aw
  %i.bg = mul nuw i128 %i.ax, %i.ax
  %i.bh = add i128 %i.bf, %i.bg
  %i.bi = zext i64 %i.aj to i128
  %i.bj = mul nuw i128 %i.bi, %i.ap
  %i.bk = add i128 %i.bh, %i.bj
  %i.bl = mul nuw i128 %i.as, %i.aw
  %i.bm = zext i64 %i.ag to i128                  ; 2 uses
  %i.bn = mul nuw i128 %i.bm, %i.be
  %i.bo = add i128 %i.bl, %i.bn
  %i.bp = zext i64 %i.al to i128
  %i.bq = mul nuw i128 %i.bp, %i.ap
  %i.br = add i128 %i.bo, %i.bq
  %i.bs = mul nuw i128 %i.ap, %i.aw
  %i.bt = mul nuw i128 %i.as, %i.bm
  %i.bu = mul nuw i128 %i.be, %i.be
  %i.bv = add i128 %i.bt, %i.bu
  %i.bw = add i128 %i.bv, %i.bs
  %i.bx = shl i128 %i.av, 1                       ; 2 uses
  %i.by = shl i128 %i.bd, 1
  %i.bz = shl i128 %i.bk, 1
  %i.ca = shl i128 %i.br, 1
  %i.cb = shl i128 %i.bw, 1
  %i.cc = trunc i128 %i.bx to i64
  %i.cd = and i64 %i.cc, 2251799813685246
  %i.ce = lshr i128 %i.bx, 51
  %i.cf = add i128 %i.ce, %i.by                   ; 2 uses
  %i.cg = trunc i128 %i.cf to i64
  %i.ch = and i64 %i.cg, 2251799813685247
  %i.ci = lshr i128 %i.cf, 51
  %i.cj = add i128 %i.ci, %i.bz                   ; 2 uses
  %i.ck = trunc i128 %i.cj to i64
  %i.cl = and i64 %i.ck, 2251799813685247
  %i.cm = lshr i128 %i.cj, 51
  %i.cn = add i128 %i.cm, %i.ca                   ; 2 uses
  %i.co = trunc i128 %i.cn to i64
  %i.cp = and i64 %i.co, 2251799813685247
  %i.cq = lshr i128 %i.cn, 51
  %i.cr = add i128 %i.cq, %i.cb                   ; 2 uses
  %i.cs = trunc i128 %i.cr to i64
  %i.ct = and i64 %i.cs, 2251799813685247
  %i.cu = lshr i128 %i.cr, 51
  %i.cv = trunc i128 %i.cu to i64
  %i.cw = mul i64 %i.cv, 19
  %i.cx = add i64 %i.cw, %i.cd                    ; 2 uses
  %i.cy = lshr i64 %i.cx, 51
  %i.cz = and i64 %i.cx, 2251799813685247
  %i.da = add nuw nsw i64 %i.cy, %i.ch            ; 2 uses
  %i.db = lshr i64 %i.da, 51
  %i.dc = and i64 %i.da, 2251799813685247
  %i.dd = add nuw nsw i64 %i.db, %i.cl
  %i.de = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store i64 %i.dc, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 %i.dd, ptr %i.df, align 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  store i64 %i.cp, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  store i64 %i.ct, ptr %i.dh, align 16
  %i.di = add nuw nsw i64 %i.cz, 1
  store i64 %i.di, ptr %i.o, align 16
  call void @fe25519_invert(ptr noundef nonnull %i.o, ptr noundef nonnull %i.o)
  %i.dj = load i64, ptr %i.o, align 16
  %i.dk = zext i64 %i.dj to i128
  %i.dl = mul nuw nsw i128 %i.dk, 486662          ; 2 uses
  %i.dm = load i64, ptr %i.de, align 8
  %i.dn = zext i64 %i.dm to i128
  %i.do = mul nuw nsw i128 %i.dn, 486662
  %i.dp = lshr i128 %i.dl, 51
  %i.dq = add nuw nsw i128 %i.do, %i.dp           ; 2 uses
  %i.dr = trunc i128 %i.dq to i64
  %i.ds = and i64 %i.dr, 2251799813685247
  %i.dt = load i64, ptr %i.df, align 16
  %i.du = zext i64 %i.dt to i128
  %i.dv = mul nuw nsw i128 %i.du, 486662
  %i.dw = lshr i128 %i.dq, 51
  %i.dx = add nuw nsw i128 %i.dw, %i.dv           ; 2 uses
  %i.dy = trunc i128 %i.dx to i64
  %i.dz = and i64 %i.dy, 2251799813685247
  %i.ea = load i64, ptr %i.dg, align 8
  %i.eb = zext i64 %i.ea to i128
  %i.ec = mul nuw nsw i128 %i.eb, 486662
  %i.ed = lshr i128 %i.dx, 51
  %i.ee = add nuw nsw i128 %i.ed, %i.ec           ; 2 uses
  %i.ef = trunc i128 %i.ee to i64
end_hunk_0
