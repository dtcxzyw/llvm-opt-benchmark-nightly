Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/ed25519_ref10?download=true
inline.NumInlined: 477
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 30
begin_hunk_0_@ge25519_frombytes_negate_vartime:bb.a
  %.neg39.i27 = mul nsw i64 %i.oj, -19
  %reass.sub = sub nuw nsw i64 %.neg39.i27, %i.nz
  %i.om = add nsw i64 %reass.sub, 4503599627370458
  %i.on = add i64 %i.om, %i.ol
  %i.oo = load i64, ptr %i.nt, align 8            ; 2 uses
  %reass.sub39 = sub i64 %i.oo, %i.oc
  %i.op = add i64 %reass.sub39, 4503599627370494
  %i.oq = load i64, ptr %i.nu, align 16           ; 2 uses
  %reass.sub40 = sub i64 %i.oq, %i.of
  %i.or = add i64 %reass.sub40, 4503599627370494
  %i.os = load i64, ptr %i.nv, align 8            ; 2 uses
  %reass.sub41 = sub i64 %i.os, %i.oi
  %i.ot = add i64 %reass.sub41, 4503599627370494
  %i.ou = load i64, ptr %i.nw, align 16           ; 2 uses
  %reass.sub42 = sub i64 %i.ou, %i.ok
  %i.ov = add i64 %reass.sub42, 4503599627370494
  store i64 %i.on, ptr %i.h, align 16
  %i.ow = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.op, ptr %i.ow, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.or, ptr %i.ox, align 16
  %i.oy = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %i.ot, ptr %i.oy, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.ov, ptr %i.oz, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @fe25519_tobytes(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.h)
  %i.pa = call i32 @sodium_is_zero(ptr noundef nonnull %i.c, i64 noundef 32) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.pb = icmp eq i32 %i.pa, 0
  br i1 %i.pb, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.pc = add i64 %i.ol, %i.dz
  %i.pd = add i64 %i.oo, %i.ea
  %i.pe = add i64 %i.oq, %i.eb
  %i.pf = add i64 %i.os, %i.ec
  %i.pg = add i64 %i.ou, %i.ee
  store i64 %i.pc, ptr %i.i, align 16
  %i.ph = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.pd, ptr %i.ph, align 8
  %i.pi = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.pe, ptr %i.pi, align 16
  %i.pj = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %i.pf, ptr %i.pj, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.pg, ptr %i.pk, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @fe25519_tobytes(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.i)
  %i.pl = call i32 @sodium_is_zero(ptr noundef nonnull %i.b, i64 noundef 32) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.pm = icmp eq i32 %i.pl, 0
  br i1 %i.pm, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @fe25519_mul(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull @sqrtm1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @fe25519_tobytes(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %0)
  %i.pn = load i8, ptr %i.a, align 16
  %i.po = and i8 %i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.pp = getelementptr i8, ptr %1, i64 31
  %i.pq = load i8, ptr %i.pp, align 1
  %i.pr = lshr i8 %i.pq, 7
  %i.ps = icmp eq i8 %i.po, %i.pr
  br i1 %i.ps, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.pt = load i64, ptr %0, align 8               ; 2 uses
  %i.pu = load i64, ptr %i.kq, align 8
  %i.pv = load i64, ptr %i.kr, align 8
  %i.pw = load i64, ptr %i.ks, align 8
  %i.px = load i64, ptr %i.kt, align 8
  %i.py = lshr i64 %i.pt, 51
  %i.pz = add i64 %i.pu, %i.py                    ; 2 uses
  %i.qa = and i64 %i.pt, 2251799813685247
  %i.qb = lshr i64 %i.pz, 51
  %i.qc = add i64 %i.qb, %i.pv                    ; 2 uses
  %i.qd = and i64 %i.pz, 2251799813685247
  %i.qe = lshr i64 %i.qc, 51
  %i.qf = add i64 %i.qe, %i.pw                    ; 2 uses
  %i.qg = and i64 %i.qc, 2251799813685247
  %i.qh = lshr i64 %i.qf, 51
  %i.qi = add i64 %i.qh, %i.px                    ; 2 uses
  %i.qj = and i64 %i.qf, 2251799813685247
  %i.qk = lshr i64 %i.qi, 51
  %i.ql = and i64 %i.qi, 2251799813685247
  %.neg39.i.i = mul nsw i64 %i.qk, -19
  %reass.sub43 = sub nsw i64 %.neg39.i.i, %i.qa
  %i.qm = add nsw i64 %reass.sub43, 4503599627370458
  %i.qn = sub nuw nsw i64 4503599627370494, %i.qd
  %i.qo = sub nuw nsw i64 4503599627370494, %i.qg
  %i.qp = sub nuw nsw i64 4503599627370494, %i.qj
  %i.qq = sub nuw nsw i64 4503599627370494, %i.ql
  store i64 %i.qm, ptr %0, align 8
  store i64 %i.qn, ptr %i.kq, align 8
  store i64 %i.qo, ptr %i.kr, align 8
  store i64 %i.qp, ptr %i.ks, align 8
  store i64 %i.qq, ptr %i.kt, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.qr = getelementptr i8, ptr %0, i64 120
  call fastcc void @fe25519_mul(ptr noundef %i.qr, ptr noundef nonnull %0, ptr noundef nonnull %i.j)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(argmem: readwrite) uwtable
define hidden void @ge25519_p1p1_to_p2(ptr nofree noundef writeonly captures(none) initializes((0, 120)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 120        ; 2 uses
  tail call fastcc void @fe25519_mul(ptr noundef %0, ptr noundef %1, ptr noundef %i.a)
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = getelementptr i8, ptr %1, i64 40
  %i.d = getelementptr i8, ptr %1, i64 80         ; 2 uses
  tail call fastcc void @fe25519_mul(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %i.e = getelementptr i8, ptr %0, i64 80
  tail call fastcc void @fe25519_mul(ptr noundef %i.e, ptr noundef %i.d, ptr noundef %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(argmem: readwrite) uwtable
define hidden void @ge25519_p1p1_to_p3(ptr nofree noundef writeonly captures(none) initializes((0, 160)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 120        ; 2 uses
  tail call fastcc void @fe25519_mul(ptr noundef %0, ptr noundef %1, ptr noundef %i.a)
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 80         ; 2 uses
  tail call fastcc void @fe25519_mul(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %i.e = getelementptr i8, ptr %0, i64 80
  tail call fastcc void @fe25519_mul(ptr noundef %i.e, ptr noundef %i.d, ptr noundef %i.a)
  %i.f = getelementptr i8, ptr %0, i64 120
  tail call fastcc void @fe25519_mul(ptr noundef %i.f, ptr noundef %1, ptr noundef %i.c)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable
define hidden void @ge25519_p3_to_cached(ptr noundef initializes((0, 80)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 48
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = getelementptr i8, ptr %1, i64 56
  %i.e = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 64
  %i.g = getelementptr i8, ptr %1, i64 24
  %i.h = getelementptr i8, ptr %1, i64 72
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, %i.i
  %i.m = load <2 x i64>, ptr %i.a, align 8
  %i.n = load <2 x i64>, ptr %1, align 8
  %i.o = add <2 x i64> %i.n, %i.m
  %i.p = getelementptr i8, ptr %0, i64 16
  %i.q = load <2 x i64>, ptr %i.d, align 8
  %i.r = load <2 x i64>, ptr %i.e, align 8
  %i.s = add <2 x i64> %i.r, %i.q
  store <2 x i64> %i.o, ptr %0, align 8
  store <2 x i64> %i.s, ptr %i.p, align 8
  %i.t = getelementptr i8, ptr %0, i64 32
  store i64 %i.l, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %0, i64 40
  %i.v = load i64, ptr %1, align 8                ; 2 uses
  %i.w = load i64, ptr %i.c, align 8
  %i.x = load i64, ptr %i.e, align 8
  %i.y = load i64, ptr %i.g, align 8
  %i.z = load i64, ptr %i.j, align 8
  %i.aa = lshr i64 %i.v, 51
  %i.ab = and i64 %i.v, 2251799813685247
  %i.ac = load i64, ptr %i.a, align 8
  %reass.sub = sub i64 %i.ac, %i.ab
  %i.ad = add i64 %reass.sub, 4503599627370458
  %i.ae = getelementptr i8, ptr %0, i64 48
  %i.af = add i64 %i.w, %i.aa                     ; 2 uses
  %i.ag = lshr i64 %i.af, 51
  %i.ah = add i64 %i.ag, %i.x                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 51
  %i.aj = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %i.ak = insertelement <2 x i64> %i.aj, i64 %i.ah, i64 1
  %i.al = and <2 x i64> %i.ak, splat (i64 2251799813685247)
  %i.am = load <2 x i64>, ptr %i.b, align 8
  %i.an = sub <2 x i64> %i.am, %i.al
  %i.ao = add <2 x i64> %i.an, splat (i64 4503599627370494)
  %i.ap = getelementptr i8, ptr %0, i64 64
  %i.aq = load <2 x i64>, ptr %i.f, align 8
  %i.ar = add i64 %i.ai, %i.y                     ; 2 uses
  %i.as = lshr i64 %i.ar, 51
  %i.at = add i64 %i.as, %i.z                     ; 2 uses
  %i.au = lshr i64 %i.at, 51
  %i.av = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %i.aw = insertelement <2 x i64> %i.av, i64 %i.at, i64 1
  %i.ax = and <2 x i64> %i.aw, splat (i64 2251799813685247)
  %.neg39.i = mul nsw i64 %i.au, -19
  %i.ay = add i64 %i.ad, %.neg39.i
  %2 = add nuw nsw <2 x i64> %i.ax, splat (i64 -4503599627370494)
  %3 = sub <2 x i64> %i.aq, %2
  store i64 %i.ay, ptr %i.u, align 8
  store <2 x i64> %i.ao, ptr %i.ae, align 8
  store <2 x i64> %3, ptr %i.ap, align 8
  %i.az = getelementptr i8, ptr %0, i64 80
  %i.ba = getelementptr i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ba, i64 noundef 40, i1 noundef false) #12
  %i.bb = getelementptr i8, ptr %0, i64 120
  %i.bc = getelementptr i8, ptr %1, i64 120
  tail call fastcc void @fe25519_mul(ptr noundef %i.bb, ptr noundef %i.bc, ptr noundef nonnull @d2)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable
define hidden void @ge25519_p3_tobytes(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [5 x i64], align 16               ; 5 uses
  %i.c = alloca [5 x i64], align 16               ; 4 uses
  %i.d = alloca [5 x i64], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.e = getelementptr i8, ptr %1, i64 80
  call void @fe25519_invert(ptr noundef nonnull %i.b, ptr noundef %i.e)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.c, ptr noundef %1, ptr noundef nonnull %i.b)
  %i.f = getelementptr i8, ptr %1, i64 40
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.d, ptr noundef %i.f, ptr noundef nonnull %i.b)
  call void @fe25519_tobytes(ptr noundef %0, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @fe25519_tobytes(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.c)
  %i.g = load i8, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.h = getelementptr i8, ptr %0, i64 31         ; 2 uses
  %i.i = load i8, ptr %i.h, align 1
  %i.j = shl i8 %i.g, 7
  %i.k = xor i8 %i.i, %i.j
  store i8 %i.k, ptr %i.h, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(argmem: readwrite) uwtable
define hidden void @ge25519_sub(ptr nofree noundef captures(none) initializes((0, 80)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 48
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = getelementptr i8, ptr %1, i64 56
  %i.e = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 64
  %i.g = getelementptr i8, ptr %1, i64 24
  %i.h = getelementptr i8, ptr %1, i64 72         ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, %i.i
  %i.m = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.n = load <2 x i64>, ptr %i.a, align 8
  %i.o = load <2 x i64>, ptr %1, align 8
  %i.p = add <2 x i64> %i.o, %i.n
  %i.q = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.r = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.s = load <2 x i64>, ptr %i.d, align 8
  %i.t = load <2 x i64>, ptr %i.e, align 8
  %i.u = add <2 x i64> %i.t, %i.s
  store <2 x i64> %i.p, ptr %0, align 8
  store <2 x i64> %i.u, ptr %i.q, align 8
  %i.v = getelementptr i8, ptr %0, i64 32         ; 3 uses
  store i64 %i.l, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %0, i64 40         ; 5 uses
  %i.x = load i64, ptr %1, align 8                ; 2 uses
  %i.y = load i64, ptr %i.c, align 8
  %i.z = load i64, ptr %i.e, align 8
  %i.aa = load i64, ptr %i.g, align 8
  %i.ab = load i64, ptr %i.j, align 8
  %i.ac = lshr i64 %i.x, 51
  %i.ad = and i64 %i.x, 2251799813685247
  %i.ae = load i64, ptr %i.a, align 8
  %reass.sub = sub i64 %i.ae, %i.ad
  %i.af = add i64 %reass.sub, 4503599627370458
  %i.ag = load i64, ptr %i.f, align 8
  %i.ah = load i64, ptr %i.h, align 8
  %i.ai = add i64 %i.ah, 4503599627370494
  %i.aj = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %i.ak = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.al = add i64 %i.y, %i.ac                     ; 2 uses
  %i.am = lshr i64 %i.al, 51
  %i.an = add i64 %i.am, %i.z                     ; 2 uses
  %i.ao = lshr i64 %i.an, 51
  %i.ap = add i64 %i.ao, %i.aa                    ; 2 uses
  %i.aq = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %i.ar = insertelement <2 x i64> %i.aq, i64 %i.an, i64 1
  %i.as = and <2 x i64> %i.ar, splat (i64 2251799813685247)
  %i.at = lshr i64 %i.ap, 51
  %i.au = add i64 %i.at, %i.ab                    ; 2 uses
  %i.av = and i64 %i.ap, 2251799813685247
  %i.aw = lshr i64 %i.au, 51
  %i.ax = and i64 %i.au, 2251799813685247
  %.neg39.i = mul nsw i64 %i.aw, -19
  %i.ay = add i64 %i.af, %.neg39.i
  %i.az = load <2 x i64>, ptr %i.b, align 8
  %i.ba = sub <2 x i64> %i.az, %i.as
  %i.bb = add <2 x i64> %i.ba, splat (i64 4503599627370494)
  %reass.sub61 = sub i64 %i.ag, %i.av
  %i.bc = add i64 %reass.sub61, 4503599627370494
  %i.bd = sub i64 %i.ai, %i.ax
  store i64 %i.ay, ptr %i.w, align 8
  store <2 x i64> %i.bb, ptr %i.aj, align 8
  %i.be = getelementptr i8, ptr %0, i64 64        ; 3 uses
  store i64 %i.bc, ptr %i.be, align 8
  %i.bf = getelementptr i8, ptr %0, i64 72        ; 3 uses
  store i64 %i.bd, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %0, i64 80        ; 3 uses
  %i.bh = getelementptr i8, ptr %2, i64 40
  tail call fastcc void @fe25519_mul(ptr noundef %i.bg, ptr noundef nonnull %0, ptr noundef %i.bh)
  tail call fastcc void @fe25519_mul(ptr noundef nonnull %i.w, ptr noundef nonnull %i.w, ptr noundef %2)
  %i.bi = getelementptr i8, ptr %0, i64 120       ; 3 uses
  %i.bj = getelementptr i8, ptr %2, i64 120
  %i.bk = getelementptr i8, ptr %1, i64 120
  tail call fastcc void @fe25519_mul(ptr noundef %i.bi, ptr noundef %i.bj, ptr noundef %i.bk)
  %i.bl = getelementptr i8, ptr %1, i64 80
  %i.bm = getelementptr i8, ptr %2, i64 80
  tail call fastcc void @fe25519_mul(ptr noundef nonnull %0, ptr noundef %i.bl, ptr noundef %i.bm)
  %i.bn = load i64, ptr %0, align 8
  %i.bo = shl i64 %i.bn, 1                        ; 2 uses
  %i.bp = load i64, ptr %i.m, align 8
  %i.bq = shl i64 %i.bp, 1                        ; 2 uses
  %i.br = load i64, ptr %i.q, align 8
  %i.bs = shl i64 %i.br, 1                        ; 2 uses
  %i.bt = load i64, ptr %i.r, align 8
  %i.bu = shl i64 %i.bt, 1                        ; 2 uses
  %i.bv = load i64, ptr %i.v, align 8
  %i.bw = shl i64 %i.bv, 1                        ; 2 uses
  %i.bx = load i64, ptr %i.w, align 8             ; 3 uses
  %i.by = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.bz = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.ca = load i64, ptr %i.be, align 8            ; 2 uses
  %i.cb = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.cc = lshr i64 %i.bx, 51
  %i.cd = add i64 %i.by, %i.cc                    ; 2 uses
  %i.ce = and i64 %i.bx, 2251799813685247
  %i.cf = lshr i64 %i.cd, 51
  %i.cg = add i64 %i.cf, %i.bz                    ; 2 uses
  %i.ch = and i64 %i.cd, 2251799813685247
  %i.ci = lshr i64 %i.cg, 51
  %i.cj = add i64 %i.ci, %i.ca                    ; 2 uses
  %i.ck = and i64 %i.cg, 2251799813685247
  %i.cl = lshr i64 %i.cj, 51
  %i.cm = add i64 %i.cl, %i.cb                    ; 2 uses
  %i.cn = and i64 %i.cj, 2251799813685247
  %i.co = lshr i64 %i.cm, 51
  %i.cp = and i64 %i.cm, 2251799813685247
  %i.cq = load i64, ptr %i.bg, align 8            ; 2 uses
  %.neg39.i30 = mul nsw i64 %i.co, -19
  %reass.sub62 = sub i64 %i.cq, %i.ce
  %i.cr = add i64 %reass.sub62, 4503599627370458
  %i.cs = add i64 %i.cr, %.neg39.i30
  %i.ct = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8            ; 2 uses
  %reass.sub63 = sub i64 %i.cu, %i.ch
  %i.cv = add i64 %reass.sub63, 4503599627370494
  %i.cw = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8            ; 2 uses
  %reass.sub64 = sub i64 %i.cx, %i.ck
  %i.cy = add i64 %reass.sub64, 4503599627370494
  %i.cz = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8            ; 2 uses
  %reass.sub65 = sub i64 %i.da, %i.cn
  %i.db = add i64 %reass.sub65, 4503599627370494
  %i.dc = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8            ; 2 uses
  %i.de = add i64 %i.dd, 4503599627370494
  %i.df = sub i64 %i.de, %i.cp
  store i64 %i.cs, ptr %0, align 8
  store i64 %i.cv, ptr %i.m, align 8
  store i64 %i.cy, ptr %i.q, align 8
  store i64 %i.db, ptr %i.r, align 8
  store i64 %i.df, ptr %i.v, align 8
  %i.dg = add i64 %i.cq, %i.bx
  %i.dh = add i64 %i.cu, %i.by
  %i.di = add i64 %i.cx, %i.bz
  %i.dj = add i64 %i.da, %i.ca
  %i.dk = add i64 %i.dd, %i.cb
  store i64 %i.dg, ptr %i.w, align 8
  store i64 %i.dh, ptr %i.aj, align 8
  store i64 %i.di, ptr %i.ak, align 8
  store i64 %i.dj, ptr %i.be, align 8
  store i64 %i.dk, ptr %i.bf, align 8
  %i.dl = load i64, ptr %i.bi, align 8            ; 3 uses
  %i.dm = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8            ; 2 uses
  %i.do = getelementptr i8, ptr %0, i64 136       ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8            ; 2 uses
  %i.dq = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8            ; 2 uses
  %i.ds = getelementptr i8, ptr %0, i64 152       ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  %i.du = lshr i64 %i.dl, 51
  %i.dv = add i64 %i.dn, %i.du                    ; 2 uses
  %i.dw = and i64 %i.dl, 2251799813685247
  %i.dx = lshr i64 %i.dv, 51
end_hunk_0
begin_hunk_1_@ge25519_is_on_main_subgroup:bb.a
  %i.mi = and i64 %i.me, 2251799813685247
  %i.mj = lshr i64 %i.mh, 51
  %i.mk = add i64 %i.mj, %i.lt                    ; 2 uses
  %i.ml = and i64 %i.mh, 2251799813685247
  %i.mm = lshr i64 %i.mk, 51
  %i.mn = add i64 %i.mm, %i.lw                    ; 2 uses
  %i.mo = and i64 %i.mk, 2251799813685247
  %i.mp = lshr i64 %i.mn, 51
  %i.mq = and i64 %i.mn, 2251799813685247
  %.neg39.i.i36.i = mul nsw i64 %i.mp, -19
  %reass.sub.i37.i = add i64 %i.lj, 4503599627370458
  %i.mr = sub i64 %reass.sub.i37.i, %i.mf
  %i.ms = add i64 %i.mr, %.neg39.i.i36.i
  %reass.sub14.i38.i = add i64 %i.lm, 4503599627370494
  %i.mt = sub i64 %reass.sub14.i38.i, %i.mi
  %reass.sub15.i39.i = add i64 %i.lp, 4503599627370494
  %i.mu = sub i64 %reass.sub15.i39.i, %i.ml
  %reass.sub16.i40.i = add i64 %i.ls, 4503599627370494
  %i.mv = sub i64 %reass.sub16.i40.i, %i.mo
  %i.mw = add i64 %i.lv, 4503599627370494
  %i.mx = sub i64 %i.mw, %i.mq
  store i64 %i.ms, ptr %i.mc, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %3, i64 1008
  store i64 %i.mt, ptr %i.my, align 16
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 1016
  store i64 %i.mu, ptr %i.mz, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %3, i64 1024
  store i64 %i.mv, ptr %i.na, align 16
  %i.nb = getelementptr inbounds nuw i8, ptr %3, i64 1032
  store i64 %i.mx, ptr %i.nb, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 1040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.nc, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bs, i64 noundef 40, i1 noundef false) #12
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 1080
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.nd, ptr noundef nonnull readonly %i.bt, ptr noundef nonnull @d2)
  call void @ge25519_add(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %i.li)
  call fastcc void @fe25519_mul(ptr noundef nonnull %5, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %i.bl)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.br, ptr noundef nonnull readonly %i.bn, ptr noundef nonnull readonly %i.bo)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.bs, ptr noundef nonnull readonly %i.bo, ptr noundef nonnull readonly %i.bl)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.bt, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %i.bn)
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 1120
  %i.nf = load i64, ptr %i.br, align 8            ; 2 uses
  %i.ng = load i64, ptr %5, align 8               ; 3 uses
  %i.nh = add i64 %i.ng, %i.nf
  %i.ni = load i64, ptr %i.by, align 8            ; 2 uses
  %i.nj = load i64, ptr %i.ca, align 8            ; 2 uses
  %i.nk = add i64 %i.nj, %i.ni
  %i.nl = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.nm = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.nn = add i64 %i.nm, %i.nl
  %i.no = load i64, ptr %i.ci, align 8            ; 2 uses
  %i.np = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.nq = add i64 %i.np, %i.no
  %i.nr = load i64, ptr %i.cn, align 8            ; 2 uses
  %i.ns = load i64, ptr %i.cp, align 8            ; 2 uses
  %i.nt = add i64 %i.ns, %i.nr
  store i64 %i.nh, ptr %i.ne, align 16
  %i.nu = getelementptr inbounds nuw i8, ptr %3, i64 1128
  store i64 %i.nk, ptr %i.nu, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %3, i64 1136
  store i64 %i.nn, ptr %i.nv, align 16
  %i.nw = getelementptr inbounds nuw i8, ptr %3, i64 1144
  store i64 %i.nq, ptr %i.nw, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %3, i64 1152
  store i64 %i.nt, ptr %i.nx, align 16
  %i.ny = getelementptr inbounds nuw i8, ptr %3, i64 1160
  %i.nz = lshr i64 %i.ng, 51
  %i.oa = add i64 %i.nj, %i.nz                    ; 2 uses
  %i.ob = and i64 %i.ng, 2251799813685247
  %i.oc = lshr i64 %i.oa, 51
  %i.od = add i64 %i.oc, %i.nm                    ; 2 uses
  %i.oe = and i64 %i.oa, 2251799813685247
  %i.of = lshr i64 %i.od, 51
  %i.og = add i64 %i.of, %i.np                    ; 2 uses
  %i.oh = and i64 %i.od, 2251799813685247
  %i.oi = lshr i64 %i.og, 51
  %i.oj = add i64 %i.oi, %i.ns                    ; 2 uses
  %i.ok = and i64 %i.og, 2251799813685247
  %i.ol = lshr i64 %i.oj, 51
  %i.om = and i64 %i.oj, 2251799813685247
  %.neg39.i.i41.i = mul nsw i64 %i.ol, -19
  %reass.sub.i42.i = add i64 %i.nf, 4503599627370458
  %i.on = sub i64 %reass.sub.i42.i, %i.ob
  %i.oo = add i64 %i.on, %.neg39.i.i41.i
  %reass.sub14.i43.i = add i64 %i.ni, 4503599627370494
  %i.op = sub i64 %reass.sub14.i43.i, %i.oe
  %reass.sub15.i44.i = add i64 %i.nl, 4503599627370494
  %i.oq = sub i64 %reass.sub15.i44.i, %i.oh
  %reass.sub16.i45.i = add i64 %i.no, 4503599627370494
  %i.or = sub i64 %reass.sub16.i45.i, %i.ok
  %i.os = add i64 %i.nr, 4503599627370494
  %i.ot = sub i64 %i.os, %i.om
  store i64 %i.oo, ptr %i.ny, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %3, i64 1168
  store i64 %i.op, ptr %i.ou, align 16
  %i.ov = getelementptr inbounds nuw i8, ptr %3, i64 1176
  store i64 %i.oq, ptr %i.ov, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %3, i64 1184
  store i64 %i.or, ptr %i.ow, align 16
  %i.ox = getelementptr inbounds nuw i8, ptr %3, i64 1192
  store i64 %i.ot, ptr %i.ox, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %3, i64 1200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.oy, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.bs, i64 noundef 40, i1 noundef false) #12
  %i.oz = getelementptr inbounds nuw i8, ptr %3, i64 1240
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.oz, ptr noundef nonnull readonly %i.bt, ptr noundef nonnull @d2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 noundef 0, i64 noundef 40, i1 noundef false) #12
  %i.pa = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  store i64 1, ptr %i.pa, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.pb, i8 noundef 0, i64 noundef 32, i1 noundef false) #12
  %i.pc = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 4 uses
  store i64 1, ptr %i.pc, align 8
  %i.pd = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pd, i8 0, i64 72, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %indvars.iv.i = phi i64 [ 252, %bb.a ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull readonly align 8 dereferenceable(40) %7, i64 noundef 40, i1 noundef false) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.pf, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.pa, i64 noundef 40, i1 noundef false) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.pg, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.pc, i64 noundef 40, i1 noundef false) #12
  call fastcc void @ge25519_p2_dbl(ptr noundef nonnull %4, ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.ph = getelementptr i8, ptr @ge25519_mul_l.aslide, i64 %indvars.iv.i
  %i.pi = load i8, ptr %i.ph, align 1             ; 4 uses
  %i.pj = icmp sgt i8 %i.pi, 0
  br i1 %i.pj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call fastcc void @fe25519_mul(ptr noundef nonnull %5, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %i.bl)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.br, ptr noundef nonnull readonly %i.bn, ptr noundef nonnull readonly %i.bo)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.bs, ptr noundef nonnull readonly %i.bo, ptr noundef nonnull readonly %i.bl)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.bt, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %i.bn)
  %i.pk = lshr i8 %i.pi, 1
  %i.pl = zext nneg i8 %i.pk to i64
  %i.pm = getelementptr [160 x i8], ptr %3, i64 %i.pl
  call void @ge25519_add(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %i.pm)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.pn = icmp slt i8 %i.pi, 0
  br i1 %i.pn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call fastcc void @fe25519_mul(ptr noundef nonnull %5, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %i.bl)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.br, ptr noundef nonnull readonly %i.bn, ptr noundef nonnull readonly %i.bo)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.bs, ptr noundef nonnull readonly %i.bo, ptr noundef nonnull readonly %i.bl)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.bt, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %i.bn)
  %.nonneg.i = sub i8 0, %i.pi
  %i.po = lshr i8 %.nonneg.i, 1
  %i.pp = zext nneg i8 %i.po to i64
  %i.pq = getelementptr [160 x i8], ptr %3, i64 %i.pp
  call void @ge25519_sub(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %i.pq)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  call fastcc void @fe25519_mul(ptr noundef nonnull %7, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %i.bl)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.pa, ptr noundef nonnull readonly %i.bn, ptr noundef nonnull readonly %i.bo)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.pc, ptr noundef nonnull readonly %i.bo, ptr noundef nonnull readonly %i.bl)
  call fastcc void @fe25519_mul(ptr noundef nonnull %i.pe, ptr noundef nonnull readonly %4, ptr noundef nonnull readonly %i.bn)
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i, label %ge25519_mul_l.exit, label %bb.b, !llvm.loop !33

ge25519_mul_l.exit:                               ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.pr = load i64, ptr %i.pc, align 8            ; 2 uses
  %i.ps = load i64, ptr %i.pd, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.pu = load i64, ptr %i.pt, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.pw = load i64, ptr %i.pv, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.py = load i64, ptr %i.px, align 8
  %i.pz = lshr i64 %i.pr, 51
  %i.qa = and i64 %i.pr, 2251799813685247
  %i.qb = load i64, ptr %i.pa, align 8
  %reass.sub = sub i64 %i.qb, %i.qa
  %i.qc = add i64 %reass.sub, 4503599627370458
  %i.qd = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.qe = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.qf = add i64 %i.ps, %i.pz                    ; 2 uses
  %i.qg = lshr i64 %i.qf, 51
  %i.qh = add i64 %i.qg, %i.pu                    ; 2 uses
  %i.qi = lshr i64 %i.qh, 51
  %i.qj = insertelement <2 x i64> poison, i64 %i.qf, i64 0
  %i.qk = insertelement <2 x i64> %i.qj, i64 %i.qh, i64 1
  %i.ql = and <2 x i64> %i.qk, splat (i64 2251799813685247)
  %i.qm = load <2 x i64>, ptr %i.pb, align 8
  %i.qn = sub <2 x i64> %i.qm, %i.ql
  %i.qo = add <2 x i64> %i.qn, splat (i64 4503599627370494)
  store <2 x i64> %i.qo, ptr %i.qe, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.qq = load <2 x i64>, ptr %i.qd, align 8
  %i.qr = add i64 %i.qi, %i.pw                    ; 2 uses
  %i.qs = lshr i64 %i.qr, 51
  %i.qt = add i64 %i.qs, %i.py                    ; 2 uses
  %i.qu = lshr i64 %i.qt, 51
  %i.qv = insertelement <2 x i64> poison, i64 %i.qr, i64 0
  %i.qw = insertelement <2 x i64> %i.qv, i64 %i.qt, i64 1
  %i.qx = and <2 x i64> %i.qw, splat (i64 2251799813685247)
  %.neg39.i = mul nsw i64 %i.qu, -19
  %i.qy = add i64 %i.qc, %.neg39.i
  %8 = add nuw nsw <2 x i64> %i.qx, splat (i64 -4503599627370494)
  %9 = sub <2 x i64> %i.qq, %8
  store i64 %i.qy, ptr %i.c, align 16
  store <2 x i64> %9, ptr %i.qp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @fe25519_tobytes(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %7)
  %i.qz = call i32 @sodium_is_zero(ptr noundef nonnull %i.b, i64 noundef 32) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @fe25519_tobytes(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.c)
  %i.ra = call i32 @sodium_is_zero(ptr noundef nonnull %i.a, i64 noundef 32) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.rb = and i32 %i.ra, %i.qz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret i32 %i.rb
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @ge25519_is_canonical(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 31
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 127
  %i.d = xor i8 %i.c, 127
  %i.e = getelementptr i8, ptr %0, i64 15
  %i.f = load <16 x i8>, ptr %i.e, align 1        ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 7
  %i.h = load <8 x i8>, ptr %i.g, align 1
  %i.i = getelementptr i8, ptr %0, i64 3
  %i.j = load <4 x i8>, ptr %i.i, align 1
  %i.k = getelementptr i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %i.m = getelementptr i8, ptr %0, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %i.o = shufflevector <8 x i8> %i.h, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.p = and <16 x i8> %i.f, %i.o                 ; 2 uses
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> %i.f, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.r = shufflevector <4 x i8> %i.j, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.s = and <16 x i8> %i.p, %i.r
  %i.t = shufflevector <16 x i8> %i.s, <16 x i8> %i.q, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.u = tail call i8 @llvm.vector.reduce.and.v16i8(<16 x i8> %i.t)
  %op.rdx = and i8 %i.u, %i.l
  %op.rdx14 = and i8 %op.rdx, %i.n
  %i.v = xor i8 %op.rdx14, -1
  %i.w = or i8 %i.d, %i.v
  %i.x = zext i8 %i.w to i32
  %i.y = add nuw nsw i32 %i.x, 511
  %i.z = load i8, ptr %0, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = sub nsw i32 236, %i.aa
  %i.ac = and i32 %i.ab, %i.y
  %i.ad = lshr i32 %i.ac, 8
  %i.ae = and i32 %i.ad, 1
  %i.af = xor i32 %i.ae, 1
  ret i32 %i.af
}

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @ge25519_has_small_order(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
vector.ph:
  %wide.load = load <4 x i8>, ptr %0, align 1     ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 4
  %wide.load.1 = load <4 x i8>, ptr %i.a, align 1 ; 7 uses
  %i.b = or <4 x i8> %wide.load, %wide.load.1
  %i.c = getelementptr i8, ptr %0, i64 8
  %wide.load.2 = load <4 x i8>, ptr %i.c, align 1 ; 7 uses
  %i.d = or <4 x i8> %i.b, %wide.load.2
  %i.e = getelementptr i8, ptr %0, i64 12
  %wide.load.3 = load <4 x i8>, ptr %i.e, align 1 ; 7 uses
  %i.f = or <4 x i8> %i.d, %wide.load.3
  %i.g = getelementptr i8, ptr %0, i64 16
  %wide.load.4 = load <4 x i8>, ptr %i.g, align 1 ; 7 uses
  %i.h = or <4 x i8> %i.f, %wide.load.4
  %i.i = getelementptr i8, ptr %0, i64 20
  %wide.load.5 = load <4 x i8>, ptr %i.i, align 1 ; 7 uses
  %i.j = or <4 x i8> %i.h, %wide.load.5
  %i.k = getelementptr i8, ptr %0, i64 24
  %wide.load.6 = load <4 x i8>, ptr %i.k, align 1 ; 7 uses
  %i.l = or <4 x i8> %i.j, %wide.load.6
  %i.m = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.l)
  %i.n = xor <4 x i8> %wide.load, <i8 1, i8 0, i8 0, i8 0>
  %i.o = or <4 x i8> %i.n, %wide.load.1
  %i.p = or <4 x i8> %i.o, %wide.load.2
  %i.q = or <4 x i8> %i.p, %wide.load.3
  %i.r = or <4 x i8> %i.q, %wide.load.4
  %i.s = or <4 x i8> %i.r, %wide.load.5
  %i.t = or <4 x i8> %i.s, %wide.load.6
  %i.u = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.t)
  %i.v = xor <4 x i8> %wide.load, <i8 38, i8 -24, i8 -107, i8 -113>
  %i.w = xor <4 x i8> %wide.load.1, <i8 -62, i8 -78, i8 39, i8 -80>
  %i.x = or <4 x i8> %i.v, %i.w
  %i.y = xor <4 x i8> %wide.load.2, <i8 69, i8 -61, i8 -12, i8 -119>
  %i.z = or <4 x i8> %i.x, %i.y
  %i.aa = xor <4 x i8> %wide.load.3, <i8 -14, i8 -17, i8 -104, i8 -16>
  %i.ab = or <4 x i8> %i.z, %i.aa
  %i.ac = xor <4 x i8> %wide.load.4, <i8 -43, i8 -33, i8 -84, i8 5>
  %i.ad = or <4 x i8> %i.ab, %i.ac
  %i.ae = xor <4 x i8> %wide.load.5, <i8 -45, i8 -58, i8 51, i8 57>
  %i.af = or <4 x i8> %i.ad, %i.ae
  %i.ag = xor <4 x i8> %wide.load.6, <i8 -79, i8 56, i8 2, i8 -120>
  %i.ah = or <4 x i8> %i.af, %i.ag
  %i.ai = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.ah)
  %i.aj = xor <4 x i8> %wide.load, <i8 -57, i8 23, i8 106, i8 112>
  %i.ak = xor <4 x i8> %wide.load.1, <i8 61, i8 77, i8 -40, i8 79>
  %i.al = or <4 x i8> %i.aj, %i.ak
  %i.am = xor <4 x i8> %wide.load.2, <i8 -70, i8 60, i8 11, i8 118>
  %i.an = or <4 x i8> %i.al, %i.am
  %i.ao = xor <4 x i8> %wide.load.3, <i8 13, i8 16, i8 103, i8 15>
  %i.ap = or <4 x i8> %i.an, %i.ao
  %i.aq = xor <4 x i8> %wide.load.4, <i8 42, i8 32, i8 83, i8 -6>
  %i.ar = or <4 x i8> %i.ap, %i.aq
  %i.as = xor <4 x i8> %wide.load.5, <i8 44, i8 57, i8 -52, i8 -58>
  %i.at = or <4 x i8> %i.ar, %i.as
  %i.au = xor <4 x i8> %wide.load.6, <i8 78, i8 -57, i8 -3, i8 119>
  %i.av = or <4 x i8> %i.at, %i.au
  %i.aw = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.av)
  %i.ax = xor <4 x i8> %wide.load, <i8 -20, i8 -1, i8 -1, i8 -1>
  %i.ay = and <4 x i8> %wide.load.1, %wide.load.2
  %i.az = and <4 x i8> %i.ay, %wide.load.3
  %i.ba = and <4 x i8> %i.az, %wide.load.4
  %i.bb = and <4 x i8> %i.ba, %wide.load.5
  %i.bc = and <4 x i8> %i.bb, %wide.load.6
  %i.bd = xor <4 x i8> %i.bc, splat (i8 -1)
  %i.be = or <4 x i8> %i.ax, %i.bd
  %i.bf = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.be)
  %i.bg = xor <4 x i8> %wide.load, <i8 -19, i8 -1, i8 -1, i8 -1>
  %i.bh = and <4 x i8> %wide.load.1, %wide.load.2
  %i.bi = and <4 x i8> %i.bh, %wide.load.3
  %i.bj = and <4 x i8> %i.bi, %wide.load.4
  %i.bk = and <4 x i8> %i.bj, %wide.load.5
  %i.bl = and <4 x i8> %i.bk, %wide.load.6
  %i.bm = xor <4 x i8> %i.bl, splat (i8 -1)
  %i.bn = or <4 x i8> %i.bg, %i.bm
  %i.bo = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.bn)
  %i.bp = xor <4 x i8> %wide.load, <i8 -18, i8 -1, i8 -1, i8 -1>
  %i.bq = and <4 x i8> %wide.load.1, %wide.load.2
  %i.br = and <4 x i8> %i.bq, %wide.load.3
  %i.bs = and <4 x i8> %i.br, %wide.load.4
  %i.bt = and <4 x i8> %i.bs, %wide.load.5
  %i.bu = and <4 x i8> %i.bt, %wide.load.6
  %i.bv = xor <4 x i8> %i.bu, splat (i8 -1)
  %i.bw = or <4 x i8> %i.bp, %i.bv
  %i.bx = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.bw)
  %i.by = getelementptr i8, ptr %0, i64 28
  %i.bz = load i8, ptr %i.by, align 1             ; 7 uses
  %i.ca = or i8 %i.m, %i.bz
  %i.cb = or i8 %i.u, %i.bz
  %i.cc = xor i8 %i.bz, 109
  %i.cd = or i8 %i.ai, %i.cc
  %i.ce = xor i8 %i.bz, -110
  %i.cf = or i8 %i.aw, %i.ce
  %i.cg = getelementptr i8, ptr %0, i64 29
  %i.ch = load i8, ptr %i.cg, align 1             ; 7 uses
  %i.ci = or i8 %i.ca, %i.ch
  %i.cj = or i8 %i.cb, %i.ch
  %i.ck = xor i8 %i.ch, 83
  %i.cl = or i8 %i.cd, %i.ck
  %i.cm = xor i8 %i.ch, -84
  %i.cn = or i8 %i.cf, %i.cm
  %i.co = and i8 %i.bz, %i.ch
  %i.cp = and i8 %i.bz, %i.ch
  %i.cq = and i8 %i.bz, %i.ch
  %i.cr = getelementptr i8, ptr %0, i64 30
  %i.cs = load i8, ptr %i.cr, align 1             ; 7 uses
  %i.ct = or i8 %i.ci, %i.cs
  %i.cu = or i8 %i.cj, %i.cs
  %i.cv = xor i8 %i.cs, -4
  %i.cw = or i8 %i.cl, %i.cv
  %i.cx = xor i8 %i.cs, 3
  %i.cy = or i8 %i.cn, %i.cx
  %i.cz = and i8 %i.co, %i.cs
  %i.da = xor i8 %i.cz, -1
  %i.db = or i8 %i.bf, %i.da
  %i.dc = and i8 %i.cp, %i.cs
  %i.dd = xor i8 %i.dc, -1
  %i.de = or i8 %i.bo, %i.dd
  %i.df = and i8 %i.cq, %i.cs
  %i.dg = xor i8 %i.df, -1
  %i.dh = or i8 %i.bx, %i.dg
  %i.di = getelementptr i8, ptr %0, i64 31
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = and i8 %i.dj, 127                       ; 5 uses
  %i.dl = or i8 %i.ct, %i.dk
  %i.dm = or i8 %i.cu, %i.dk
  %i.dn = xor i8 %i.dk, 5
  %i.do = or i8 %i.cw, %i.dn
  %i.dp = xor i8 %i.dk, 122
  %i.dq = or i8 %i.cy, %i.dp
  %i.dr = xor i8 %i.dk, 127                       ; 3 uses
  %i.ds = or i8 %i.db, %i.dr
  %i.dt = or i8 %i.de, %i.dr
  %i.du = or i8 %i.dh, %i.dr
  %i.dv = zext i8 %i.dl to i32
  %i.dw = add nsw i32 %i.dv, -1
  %i.dx = zext i8 %i.dm to i32
  %i.dy = add nsw i32 %i.dx, -1
  %i.dz = or i32 %i.dy, %i.dw
  %i.ea = zext i8 %i.do to i32
  %i.eb = add nsw i32 %i.ea, -1
  %i.ec = or i32 %i.eb, %i.dz
  %i.ed = zext i8 %i.dq to i32
  %i.ee = add nsw i32 %i.ed, -1
  %i.ef = or i32 %i.ee, %i.ec
end_hunk_1
