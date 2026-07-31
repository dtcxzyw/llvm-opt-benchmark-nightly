inline.NumInlined: 218
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 39
begin_hunk_0_@fe_tobytes:bb.a
  %i.cp = lshr i32 %i.az, 21
  %i.cq = shl nuw nsw i32 %i.bc, 5
  %i.cr = or disjoint i32 %i.cq, %i.cp
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.cv = lshr i32 %i.ay, 3
  %i.cw = trunc i32 %i.cv to i16
  store i16 %i.cw, ptr %i.cu, align 1
  %i.cx = lshr i32 %i.bc, 19
  %i.cy = shl i32 %i.bb, 6
  %i.cz = or disjoint i32 %i.cy, %i.cx
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.da, ptr %i.db, align 1, !tbaa !10
  %i.dc = lshr i32 %i.bb, 2
  %i.dd = trunc i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !10
  %i.df = lshr i32 %i.bb, 10
  %i.dg = trunc i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !10
  %i.di = lshr i32 %i.bb, 18
  %i.dj = trunc i32 %i.di to i8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !10
  %i.dl = trunc i32 %i.be to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !10
  %i.dn = lshr i32 %i.be, 8
  %i.do = trunc i32 %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !10
  %i.dq = lshr i32 %i.be, 16
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !10
  %i.dt = lshr i32 %i.be, 24
  %i.du = and i32 %i.dt, 1
  %i.dv = shl nuw nsw i32 %i.bj, 1
  %i.dw = or disjoint i32 %i.dv, %i.du
  %i.dx = trunc i32 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !10
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ea = lshr i32 %i.bg, 7
  %i.eb = trunc i32 %i.ea to i16
  store i16 %i.eb, ptr %i.dz, align 1
  %i.ec = lshr i32 %i.bj, 23
  %i.ed = shl nuw nsw i32 %i.bm, 3
  %i.ee = or disjoint i32 %i.ed, %i.ec
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !10
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.ei = lshr i32 %i.bi, 5
  %i.ej = trunc i32 %i.ei to i16
  store i16 %i.ej, ptr %i.eh, align 1
  %i.ek = lshr i32 %i.bm, 21
  %i.el = shl nuw nsw i32 %i.bp, 4
  %i.em = or disjoint i32 %i.el, %i.ek
  %i.en = trunc i32 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !10
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.eq = lshr i32 %i.bl, 4
  %i.er = trunc i32 %i.eq to i16
  store i16 %i.er, ptr %i.ep, align 1
  %i.es = lshr i32 %i.bp, 20
  %i.et = shl nuw nsw i32 %i.bq, 6
  %i.eu = or disjoint i32 %i.et, %i.es
  %i.ev = trunc i32 %i.eu to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !10
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.ey = lshr i32 %i.bo, 2
  %i.ez = trunc i32 %i.ey to i16
  store i16 %i.ez, ptr %i.ex, align 1
  %i.fa = lshr i32 %i.bq, 18
  %i.fb = trunc nuw nsw i32 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @table_select(ptr nofree noundef nonnull captures(none) initializes((0, 120)) %0, i32 noundef range(i32 -1073741824, 32) %1, i8 noundef signext %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.ge_precomp, align 4         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = lshr i8 %2, 7
  %i.b = tail call i8 @llvm.smin.i8(i8 %2, i8 0)
  %i.c = shl i8 %i.b, 1
  %i.d = sub i8 %2, %i.c                          ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.e, i8 0, i64 36, i1 false)
  store i32 1, ptr %0, align 4, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.g, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.f, align 4, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.h, i8 0, i64 40, i1 false)
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [960 x i8], ptr @k25519Precomp, i64 %i.i ; 8 uses
  %i.k = xor i8 %i.d, 1
  %i.l = zext i8 %i.k to i32
  %i.m = add nsw i32 %i.l, -1
  %i.n = lshr i32 %i.m, 31
  %i.o = trunc nuw nsw i32 %i.n to i8
  tail call fastcc void @cmov(ptr noundef %0, ptr noundef nonnull %i.j, i8 noundef zeroext %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.q = xor i8 %i.d, 2
  %i.r = zext i8 %i.q to i32
  %i.s = add nsw i32 %i.r, -1
  %i.t = lshr i32 %i.s, 31
  %i.u = trunc nuw nsw i32 %i.t to i8
  tail call fastcc void @cmov(ptr noundef %0, ptr noundef nonnull %i.p, i8 noundef zeroext %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.w = xor i8 %i.d, 3
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -1
  %i.z = lshr i32 %i.y, 31
  %i.aa = trunc nuw nsw i32 %i.z to i8
  tail call fastcc void @cmov(ptr noundef %0, ptr noundef nonnull %i.v, i8 noundef zeroext %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 360
  %i.ac = xor i8 %i.d, 4
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -1
  %i.af = lshr i32 %i.ae, 31
  %i.ag = trunc nuw nsw i32 %i.af to i8
  tail call fastcc void @cmov(ptr noundef %0, ptr noundef nonnull %i.ab, i8 noundef zeroext %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 480
  %i.ai = xor i8 %i.d, 5
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -1
  %i.al = lshr i32 %i.ak, 31
  %i.am = trunc nuw nsw i32 %i.al to i8
  tail call fastcc void @cmov(ptr noundef %0, ptr noundef nonnull %i.ah, i8 noundef zeroext %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 600
  %i.ao = xor i8 %i.d, 6
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -1
  %i.ar = lshr i32 %i.aq, 31
  %i.as = trunc nuw nsw i32 %i.ar to i8
  tail call fastcc void @cmov(ptr noundef %0, ptr noundef nonnull %i.an, i8 noundef zeroext %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 720
  %i.au = xor i8 %i.d, 7
  %i.av = zext i8 %i.au to i32
  %i.aw = add nsw i32 %i.av, -1
  %i.ax = lshr i32 %i.aw, 31
  %i.ay = trunc nuw nsw i32 %i.ax to i8
  tail call fastcc void @cmov(ptr noundef %0, ptr noundef nonnull %i.at, i8 noundef zeroext %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 840
  %i.ba = xor i8 %i.d, 8
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, -1
  %i.bd = lshr i32 %i.bc, 31
  %i.be = trunc nuw nsw i32 %i.bd to i8
  tail call fastcc void @cmov(ptr noundef %0, ptr noundef nonnull %i.az, i8 noundef zeroext %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %3, ptr noundef nonnull readonly align 4 dereferenceable(40) %i.f, i64 40, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.bf, ptr noundef nonnull readonly align 4 dereferenceable(40) %0, i64 40, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bh = load <4 x i32>, ptr %i.h, align 4, !tbaa !11
  %i.bi = sub nsw <4 x i32> zeroinitializer, %i.bh
  store <4 x i32> %i.bi, ptr %i.bg, align 4, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bl = load <4 x i32>, ptr %i.bj, align 4, !tbaa !11
  %i.bm = sub nsw <4 x i32> zeroinitializer, %i.bl
  store <4 x i32> %i.bm, ptr %i.bk, align 4, !tbaa !11
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bp = load <2 x i32>, ptr %i.bn, align 4, !tbaa !11
  %i.bq = sub nsw <2 x i32> zeroinitializer, %i.bp
  store <2 x i32> %i.bq, ptr %i.bo, align 4, !tbaa !11
  call fastcc void @cmov(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ge_madd(ptr nofree noundef nonnull initializes((0, 80)) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 120
  %i.d = add i64 %i.a, 160
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load <4 x i32>, ptr %i.e, align 4, !tbaa !11
  %i.i = load <4 x i32>, ptr %1, align 4, !tbaa !11
  %i.j = add nsw <4 x i32> %i.i, %i.h
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <4 x i32> %i.j, ptr %0, align 4, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = load <4 x i32>, ptr %i.k, align 4, !tbaa !11
  %i.r = load <4 x i32>, ptr %i.l, align 4, !tbaa !11
  %i.s = add nsw <4 x i32> %i.r, %i.q
  store <4 x i32> %i.s, ptr %i.m, align 4, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = load <2 x i32>, ptr %i.t, align 4, !tbaa !11
  %i.y = load <2 x i32>, ptr %i.u, align 4, !tbaa !11
  %i.z = add nsw <2 x i32> %i.y, %i.x
  store <2 x i32> %i.z, ptr %i.v, align 4, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ae = load <4 x i32>, ptr %i.e, align 4, !tbaa !11
  %i.af = load <4 x i32>, ptr %1, align 4, !tbaa !11
  %i.ag = sub nsw <4 x i32> %i.ae, %i.af
  store <4 x i32> %i.ag, ptr %i.aa, align 4, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.al = load <4 x i32>, ptr %i.k, align 4, !tbaa !11
  %i.am = load <4 x i32>, ptr %i.l, align 4, !tbaa !11
  %i.an = sub nsw <4 x i32> %i.al, %i.am
  store <4 x i32> %i.an, ptr %i.ah, align 4, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.aq = load <2 x i32>, ptr %i.t, align 4, !tbaa !11
  %i.ar = load <2 x i32>, ptr %i.u, align 4, !tbaa !11
  %i.as = sub nsw <2 x i32> %i.aq, %i.ar
  store <2 x i32> %i.as, ptr %i.ao, align 4, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  tail call fastcc void @fe_mul(ptr noundef %i.at, ptr noundef nonnull %0, ptr noundef %2)
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call fastcc void @fe_mul(ptr noundef %i.aa, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call fastcc void @fe_mul(ptr noundef %i.av, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bb = load i32, ptr %i.at, align 4, !tbaa !11 ; 2 uses
  %i.bc = load i32, ptr %i.aa, align 4, !tbaa !11 ; 2 uses
  %i.bd = sub nsw i32 %i.bb, %i.bc
  store i32 %i.bd, ptr %0, align 4, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !11 ; 2 uses
  %i.bg = load i32, ptr %i.ab, align 4, !tbaa !11 ; 2 uses
  %i.bh = sub nsw i32 %i.bf, %i.bg
  store i32 %i.bh, ptr %i.f, align 4, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !11 ; 2 uses
  %i.bk = load i32, ptr %i.ac, align 4, !tbaa !11 ; 2 uses
  %i.bl = sub nsw i32 %i.bj, %i.bk
  store i32 %i.bl, ptr %i.g, align 4, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !11 ; 2 uses
  %i.bo = load i32, ptr %i.ad, align 4, !tbaa !11 ; 2 uses
  %i.bp = sub nsw i32 %i.bn, %i.bo
  store i32 %i.bp, ptr %3, align 4, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !11 ; 2 uses
  %i.bs = load i32, ptr %i.ah, align 4, !tbaa !11 ; 2 uses
  %i.bt = sub nsw i32 %i.br, %i.bs
  store i32 %i.bt, ptr %i.m, align 4, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !11 ; 2 uses
  %i.bw = load i32, ptr %i.ai, align 4, !tbaa !11 ; 2 uses
  %i.bx = sub nsw i32 %i.bv, %i.bw
  store i32 %i.bx, ptr %i.n, align 4, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !11 ; 2 uses
  %i.ca = load i32, ptr %i.aj, align 4, !tbaa !11 ; 2 uses
  %i.cb = sub nsw i32 %i.bz, %i.ca
  store i32 %i.cb, ptr %i.o, align 4, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !11 ; 2 uses
  %i.ce = load i32, ptr %i.ak, align 4, !tbaa !11 ; 2 uses
  %i.cf = sub nsw i32 %i.cd, %i.ce
  store i32 %i.cf, ptr %i.p, align 4, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !11 ; 2 uses
  %i.ci = load i32, ptr %i.ao, align 4, !tbaa !11 ; 2 uses
  %i.cj = sub nsw i32 %i.ch, %i.ci
  store i32 %i.cj, ptr %i.v, align 4, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !11 ; 2 uses
  %i.cm = load i32, ptr %i.ap, align 4, !tbaa !11 ; 2 uses
  %i.cn = sub nsw i32 %i.cl, %i.cm
  store i32 %i.cn, ptr %i.w, align 4, !tbaa !11
  %i.co = add nsw i32 %i.bc, %i.bb
  store i32 %i.co, ptr %i.aa, align 4, !tbaa !11
  %i.cp = add nsw i32 %i.bg, %i.bf
  store i32 %i.cp, ptr %i.ab, align 4, !tbaa !11
  %i.cq = add nsw i32 %i.bk, %i.bj
  store i32 %i.cq, ptr %i.ac, align 4, !tbaa !11
  %i.cr = add nsw i32 %i.bo, %i.bn
  store i32 %i.cr, ptr %i.ad, align 4, !tbaa !11
  %i.cs = add nsw i32 %i.bs, %i.br
  store i32 %i.cs, ptr %i.ah, align 4, !tbaa !11
  %i.ct = add nsw i32 %i.bw, %i.bv
  store i32 %i.ct, ptr %i.ai, align 4, !tbaa !11
  %i.cu = add nsw i32 %i.ca, %i.bz
  store i32 %i.cu, ptr %i.aj, align 4, !tbaa !11
  %i.cv = add nsw i32 %i.ce, %i.cd
  store i32 %i.cv, ptr %i.ak, align 4, !tbaa !11
  %i.cw = add nsw i32 %i.ci, %i.ch
  store i32 %i.cw, ptr %i.ao, align 4, !tbaa !11
  %i.cx = add nsw i32 %i.cm, %i.cl
  store i32 %i.cx, ptr %i.ap, align 4, !tbaa !11
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.cz = load <4 x i32>, ptr %i.ay, align 4, !tbaa !11
  %i.da = shl nsw <4 x i32> %i.cz, splat (i32 1)  ; 3 uses
  %i.db = load <4 x i32>, ptr %i.av, align 4, !tbaa !11 ; 3 uses
  %i.dc = add nsw <4 x i32> %i.db, %i.da
  store <4 x i32> %i.dc, ptr %i.at, align 4, !tbaa !11
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.df = load <4 x i32>, ptr %i.az, align 4, !tbaa !11
  %i.dg = shl nsw <4 x i32> %i.df, splat (i32 1)  ; 3 uses
  %i.dh = load <4 x i32>, ptr %i.dd, align 4, !tbaa !11 ; 3 uses
  %i.di = add nsw <4 x i32> %i.dh, %i.dg
  store <4 x i32> %i.di, ptr %i.bq, align 4, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.dk = shufflevector <4 x i32> %i.da, <4 x i32> %i.dg, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dl = shufflevector <4 x i32> %i.db, <4 x i32> %i.dh, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dm = sub nsw <4 x i32> %i.dk, %i.dl
  store <4 x i32> %i.dm, ptr %i.cy, align 4, !tbaa !11
  %foldExtExtBinop = sub nsw <4 x i32> %i.dg, %i.dh
  %i.dn = extractelement <4 x i32> %foldExtExtBinop, i64 3
  store i32 %i.dn, ptr %i.de, align 4, !tbaa !11
  %i.do = load <2 x i32>, ptr %i.ba, align 4, !tbaa !11
  %i.dp = shl nsw <2 x i32> %i.do, splat (i32 1)  ; 3 uses
  %i.dq = load <2 x i32>, ptr %i.dj, align 4, !tbaa !11 ; 3 uses
  %foldExtExtBinop38 = add nsw <2 x i32> %i.dq, %i.dp
  %i.dr = extractelement <2 x i32> %foldExtExtBinop38, i64 0
  store i32 %i.dr, ptr %i.cg, align 4, !tbaa !11
  %i.ds = shufflevector <2 x i32> %i.dq, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.dt = shufflevector <4 x i32> %i.da, <4 x i32> %i.ds, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.du = shufflevector <2 x i32> %i.dp, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.dv = shufflevector <4 x i32> %i.db, <4 x i32> %i.du, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.dw = add nsw <4 x i32> %i.dt, %i.dv
  %i.dx = sub nsw <4 x i32> %i.dt, %i.dv
  %i.dy = shufflevector <4 x i32> %i.dw, <4 x i32> %i.dx, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  store <4 x i32> %i.dy, ptr %i.ck, align 4, !tbaa !11
  %i.dz = sub nsw <2 x i32> %i.dp, %i.dq
  store <2 x i32> %i.dz, ptr %i.dj, align 4, !tbaa !11
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !11
  %i.ec = load i32, ptr %1, align 4, !tbaa !11
  %i.ed = add nsw i32 %i.ec, %i.eb
  store i32 %i.ed, ptr %0, align 4, !tbaa !11
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !11
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !11
  %i.ei = add nsw i32 %i.eh, %i.ef
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !11
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !11
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !11
  %i.eo = add nsw i32 %i.en, %i.el
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !11
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !11
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !11
  %i.eu = add nsw i32 %i.et, %i.er
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !11
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !11
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !11
  %i.fa = add nsw i32 %i.ez, %i.ex
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !11
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !11
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !11
  %i.fg = add nsw i32 %i.ff, %i.fd
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
end_hunk_0
begin_hunk_1_@ge_p2_dbl:bb.a
  %i.bp = mul nsw i64 %i.ay, %i.bk
  %i.bq = sext i32 %i.ah to i64                   ; 6 uses
  %i.br = mul nsw i64 %i.bq, %i.bk
  %i.bs = mul nsw i64 %i.bc, %i.bk
  %i.bt = sext i32 %i.aj to i64                   ; 3 uses
  %i.bu = mul nsw i64 %i.bt, %i.bk
  %i.bv = mul nsw i64 %i.bg, %i.bk
  %i.bw = sext i32 %i.ao to i64                   ; 9 uses
  %i.bx = mul nsw i64 %i.bw, %i.bk
  %i.by = mul nsw i64 %i.au, %i.au
  %i.bz = sext i32 %i.ae to i64                   ; 6 uses
  %i.ca = mul nsw i64 %i.bz, %i.aw
  %i.cb = mul nsw i64 %i.ay, %i.bz
  %i.cc = mul nsw i64 %i.ba, %i.bz
  %i.cd = mul nsw i64 %i.bc, %i.bz
  %i.ce = mul nsw i64 %i.be, %i.bz
  %i.cf = sext i32 %i.an to i64                   ; 7 uses
  %i.cg = mul nsw i64 %i.cf, %i.bz
  %i.ch = mul nsw i64 %i.bw, %i.au
  %i.ci = mul nsw i64 %i.bn, %i.aw
  %i.cj = mul nsw i64 %i.bn, %i.ay
  %i.ck = mul nsw i64 %i.bq, %i.bn
  %i.cl = mul nsw i64 %i.bc, %i.bn
  %i.cm = sext i32 %i.am to i64                   ; 5 uses
  %i.cn = mul nsw i64 %i.cm, %i.bn
  %i.co = mul nsw i64 %i.cf, %i.bn
  %i.cp = mul nsw i64 %i.bw, %i.bn
  %i.cq = mul nsw i64 %i.ay, %i.ay
  %i.cr = sext i32 %i.ag to i64                   ; 3 uses
  %i.cs = mul nsw i64 %i.cr, %i.ba
  %i.ct = sext i32 %i.al to i64                   ; 3 uses
  %i.cu = mul nsw i64 %i.ct, %i.cr
  %i.cv = mul nsw i64 %i.cm, %i.ay
  %i.cw = mul nsw i64 %i.cf, %i.cr
  %i.cx = mul nsw i64 %i.bw, %i.ay
  %i.cy = sext i32 %i.ak to i64
  %i.cz = mul nsw i64 %i.cy, %i.ba
  %i.da = mul nsw i64 %i.ct, %i.bq
  %i.db = mul nsw i64 %i.cm, %i.bq
  %i.dc = mul nsw i64 %i.cf, %i.bq
  %i.dd = mul nsw i64 %i.bw, %i.bq
  %i.de = mul nsw i64 %i.ct, %i.bc
  %i.df = mul nsw i64 %i.cm, %i.bc
  %i.dg = sext i32 %i.ai to i64
  %i.dh = mul nsw i64 %i.cf, %i.dg
  %i.di = mul nsw i64 %i.bw, %i.bc
  %i.dj = mul nsw i64 %i.cm, %i.be
  %i.dk = mul nsw i64 %i.cf, %i.bt
  %i.dl = mul nsw i64 %i.bw, %i.bt
  %i.dm = mul nsw i64 %i.cf, %i.bg
  %i.dn = mul nsw i64 %i.bw, %i.bg
  %i.do = mul nsw i64 %i.bw, %i.bi
  %i.dp = add i64 %i.cz, %i.aq
  %i.dq = add i64 %i.dp, %i.cu
  %i.dr = add i64 %i.dq, %i.cn
  %i.ds = add i64 %i.dr, %i.cg
  %i.dt = add i64 %i.ds, %i.bx
  %i.du = add i64 %i.da, %i.at
  %i.dv = add i64 %i.du, %i.cv
  %i.dw = add i64 %i.dv, %i.co
  %i.dx = add i64 %i.dw, %i.ch
  %i.dy = add nsw i64 %i.av, %i.bl
  %i.dz = add i64 %i.dy, %i.de
  %i.ea = add i64 %i.dz, %i.db
  %i.eb = add i64 %i.ea, %i.cw
  %i.ec = add i64 %i.eb, %i.cp
  %i.ed = add nsw i64 %i.ax, %i.bm
  %i.ee = add i64 %i.ed, %i.df
  %i.ef = add i64 %i.ee, %i.dc
  %i.eg = add i64 %i.ef, %i.cx
  %i.eh = add i64 %i.bo, %i.by
  %i.ei = add i64 %i.eh, %i.az
  %i.ej = add i64 %i.ei, %i.dj
  %i.ek = add i64 %i.ej, %i.dh
  %i.el = add i64 %i.ek, %i.dd
  %i.em = add i64 %i.bp, %i.ca
  %i.en = add i64 %i.em, %i.bb
  %i.eo = add i64 %i.en, %i.dk
  %i.ep = add i64 %i.eo, %i.di
  %i.eq = add i64 %i.ci, %i.cb
  %i.er = add i64 %i.eq, %i.br
  %i.es = add i64 %i.er, %i.bd
  %i.et = add i64 %i.es, %i.dm
  %i.eu = add i64 %i.et, %i.dl
  %i.ev = add i64 %i.cc, %i.cj
  %i.ew = add i64 %i.ev, %i.bs
  %i.ex = add i64 %i.ew, %i.bf
  %i.ey = add nsw i64 %i.ex, %i.dn
  %i.ez = add i64 %i.cd, %i.cq
  %i.fa = add i64 %i.ez, %i.ck
  %i.fb = add i64 %i.fa, %i.bu
  %i.fc = add i64 %i.fb, %i.bh
  %i.fd = add nsw i64 %i.fc, %i.do
  %i.fe = add i64 %i.cl, %i.cs
  %i.ff = add i64 %i.fe, %i.ce
  %i.fg = add i64 %i.ff, %i.bv
  %i.fh = add i64 %i.fg, %i.bj
  %i.fi = shl nsw i64 %i.dt, 1                    ; 2 uses
  %i.fj = shl nsw i64 %i.dx, 1
  %i.fk = shl nsw i64 %i.ec, 1
  %i.fl = shl nsw i64 %i.eg, 1
  %i.fm = shl nsw i64 %i.el, 1                    ; 2 uses
  %i.fn = shl nsw i64 %i.ep, 1
  %i.fo = shl nsw i64 %i.eu, 1
  %i.fp = shl nsw i64 %i.ey, 1
  %i.fq = shl nsw i64 %i.fd, 1
  %i.fr = shl nsw i64 %i.fh, 1
  %i.fs = add nsw i64 %i.fi, 33554432             ; 2 uses
  %i.ft = ashr i64 %i.fs, 26
  %i.fu = add nsw i64 %i.ft, %i.fj                ; 2 uses
  %i.fv = and i64 %i.fs, -67108864
  %i.fw = sub nsw i64 %i.fi, %i.fv
  %i.fx = add nsw i64 %i.fm, 33554432             ; 2 uses
  %i.fy = ashr i64 %i.fx, 26
  %i.fz = add nsw i64 %i.fy, %i.fn                ; 2 uses
  %i.ga = and i64 %i.fx, -67108864
  %i.gb = sub nsw i64 %i.fm, %i.ga
  %i.gc = add nsw i64 %i.fu, 16777216             ; 2 uses
  %i.gd = ashr i64 %i.gc, 25
  %i.ge = add nsw i64 %i.gd, %i.fk                ; 2 uses
  %i.gf = and i64 %i.gc, 4261412864
  %i.gg = sub i64 %i.fu, %i.gf
  %i.gh = add nsw i64 %i.fz, 16777216             ; 2 uses
  %i.gi = ashr i64 %i.gh, 25
  %i.gj = add nsw i64 %i.gi, %i.fo                ; 2 uses
  %i.gk = and i64 %i.gh, 4261412864
  %i.gl = sub i64 %i.fz, %i.gk
  %i.gm = add nsw i64 %i.ge, 33554432             ; 2 uses
  %i.gn = ashr i64 %i.gm, 26
  %i.go = add nsw i64 %i.gn, %i.fl                ; 2 uses
  %i.gp = and i64 %i.gm, 4227858432
  %i.gq = sub i64 %i.ge, %i.gp
  %i.gr = add nsw i64 %i.gj, 33554432             ; 2 uses
  %i.gs = ashr i64 %i.gr, 26
  %i.gt = add nsw i64 %i.gs, %i.fp                ; 2 uses
  %i.gu = and i64 %i.gr, 4227858432
  %i.gv = sub i64 %i.gj, %i.gu
  %i.gw = add nsw i64 %i.go, 16777216             ; 2 uses
  %i.gx = ashr i64 %i.gw, 25
  %i.gy = add nsw i64 %i.gx, %i.gb                ; 2 uses
  %i.gz = and i64 %i.gw, 4261412864
  %i.ha = sub i64 %i.go, %i.gz
  %i.hb = add nsw i64 %i.gt, 16777216             ; 2 uses
  %i.hc = ashr i64 %i.hb, 25
  %i.hd = add nsw i64 %i.hc, %i.fq                ; 2 uses
  %i.he = and i64 %i.hb, 4261412864
  %i.hf = sub i64 %i.gt, %i.he
  %i.hg = add nsw i64 %i.gy, 33554432             ; 2 uses
  %i.hh = lshr i64 %i.hg, 26
  %i.hi = add i64 %i.gl, %i.hh
  %i.hj = and i64 %i.hg, 4227858432
  %i.hk = sub i64 %i.gy, %i.hj
  %i.hl = add nsw i64 %i.hd, 33554432             ; 2 uses
  %i.hm = ashr i64 %i.hl, 26
  %i.hn = add nsw i64 %i.hm, %i.fr                ; 2 uses
  %i.ho = and i64 %i.hl, 4227858432
  %i.hp = sub i64 %i.hd, %i.ho
  %i.hq = add nsw i64 %i.hn, 16777216             ; 2 uses
  %i.hr = ashr i64 %i.hq, 25
  %i.hs = mul nsw i64 %i.hr, 19
  %i.ht = add nsw i64 %i.hs, %i.fw                ; 2 uses
  %i.hu = and i64 %i.hq, 4261412864
  %i.hv = sub i64 %i.hn, %i.hu
  %i.hw = add nsw i64 %i.ht, 33554432             ; 2 uses
  %i.hx = lshr i64 %i.hw, 26
  %i.hy = add i64 %i.gg, %i.hx
  %i.hz = and i64 %i.hw, 4227858432
  %i.ia = sub i64 %i.ht, %i.hz
  %i.ib = trunc i64 %i.ia to i32                  ; 2 uses
  store i32 %i.ib, ptr %i.h, align 4, !tbaa !11
  %i.ic = trunc i64 %i.hy to i32                  ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  store i32 %i.ic, ptr %i.id, align 4, !tbaa !11
  %i.ie = trunc i64 %i.gq to i32                  ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !11
  %i.ig = trunc i64 %i.ha to i32                  ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !11
  %i.ii = trunc i64 %i.hk to i32                  ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !11
  %i.ik = trunc i64 %i.hi to i32                  ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !11
  %i.im = trunc i64 %i.gv to i32                  ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i32 %i.im, ptr %i.in, align 4, !tbaa !11
  %i.io = trunc i64 %i.hf to i32                  ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !11
  %i.iq = trunc i64 %i.hp to i32                  ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i32 %i.iq, ptr %i.ir, align 4, !tbaa !11
  %i.is = trunc i64 %i.hv to i32                  ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  store i32 %i.is, ptr %i.it, align 4, !tbaa !11
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ix = load <4 x i32>, ptr %1, align 4, !tbaa !11
  %i.iy = load <4 x i32>, ptr %i.g, align 4, !tbaa !11
  %i.iz = add nsw <4 x i32> %i.iy, %i.ix
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <4 x i32> %i.iz, ptr %i.iu, align 4, !tbaa !11
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.jg = load <4 x i32>, ptr %i.ja, align 4, !tbaa !11
  %i.jh = load <4 x i32>, ptr %i.jb, align 4, !tbaa !11
  %i.ji = add nsw <4 x i32> %i.jh, %i.jg
  store <4 x i32> %i.ji, ptr %i.jc, align 4, !tbaa !11
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.jn = load <2 x i32>, ptr %i.jj, align 4, !tbaa !11
  %i.jo = load <2 x i32>, ptr %i.jk, align 4, !tbaa !11
  %i.jp = add nsw <2 x i32> %i.jo, %i.jn
  store <2 x i32> %i.jp, ptr %i.jl, align 4, !tbaa !11
  call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.iu)
  %i.jq = load i32, ptr %i.f, align 4, !tbaa !11  ; 2 uses
  %i.jr = load i32, ptr %0, align 4, !tbaa !11    ; 2 uses
  %i.js = add nsw i32 %i.jr, %i.jq                ; 2 uses
  store i32 %i.js, ptr %i.iu, align 4, !tbaa !11
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !11 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !11 ; 2 uses
  %i.jx = add nsw i32 %i.jw, %i.ju                ; 2 uses
  store i32 %i.jx, ptr %i.iv, align 4, !tbaa !11
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !11 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !11 ; 2 uses
  %i.kc = add nsw i32 %i.kb, %i.jz                ; 2 uses
  store i32 %i.kc, ptr %i.iw, align 4, !tbaa !11
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !11 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !11 ; 2 uses
  %i.kh = add nsw i32 %i.kg, %i.ke                ; 2 uses
  store i32 %i.kh, ptr %2, align 4, !tbaa !11
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !11 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !11 ; 2 uses
  %i.km = add nsw i32 %i.kl, %i.kj                ; 2 uses
  store i32 %i.km, ptr %i.jc, align 4, !tbaa !11
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !11 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !11 ; 2 uses
  %i.kr = add nsw i32 %i.kq, %i.ko                ; 2 uses
  store i32 %i.kr, ptr %i.jd, align 4, !tbaa !11
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !11 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !11 ; 2 uses
  %i.kw = add nsw i32 %i.kv, %i.kt                ; 2 uses
  store i32 %i.kw, ptr %i.je, align 4, !tbaa !11
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !11 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !11 ; 2 uses
  %i.lb = add nsw i32 %i.la, %i.ky                ; 2 uses
  store i32 %i.lb, ptr %i.jf, align 4, !tbaa !11
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !11 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !11 ; 2 uses
  %i.lg = add nsw i32 %i.lf, %i.ld                ; 2 uses
  store i32 %i.lg, ptr %i.jl, align 4, !tbaa !11
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !11 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !11 ; 2 uses
  %i.ll = add nsw i32 %i.lk, %i.li                ; 2 uses
  store i32 %i.ll, ptr %i.jm, align 4, !tbaa !11
  %i.lm = sub nsw i32 %i.jq, %i.jr                ; 2 uses
  store i32 %i.lm, ptr %i.f, align 4, !tbaa !11
  %i.ln = sub nsw i32 %i.ju, %i.jw                ; 2 uses
  store i32 %i.ln, ptr %i.jt, align 4, !tbaa !11
  %i.lo = sub nsw i32 %i.jz, %i.kb                ; 2 uses
  store i32 %i.lo, ptr %i.jy, align 4, !tbaa !11
  %i.lp = sub nsw i32 %i.ke, %i.kg                ; 2 uses
  store i32 %i.lp, ptr %i.kd, align 4, !tbaa !11
  %i.lq = sub nsw i32 %i.kj, %i.kl                ; 2 uses
  store i32 %i.lq, ptr %i.ki, align 4, !tbaa !11
  %i.lr = sub nsw i32 %i.ko, %i.kq                ; 2 uses
  store i32 %i.lr, ptr %i.kn, align 4, !tbaa !11
  %i.ls = sub nsw i32 %i.kt, %i.kv                ; 2 uses
  store i32 %i.ls, ptr %i.ks, align 4, !tbaa !11
  %i.lt = sub nsw i32 %i.ky, %i.la                ; 2 uses
  store i32 %i.lt, ptr %i.kx, align 4, !tbaa !11
  %i.lu = sub nsw i32 %i.ld, %i.lf                ; 2 uses
  store i32 %i.lu, ptr %i.lc, align 4, !tbaa !11
  %i.lv = sub nsw i32 %i.li, %i.lk                ; 2 uses
  store i32 %i.lv, ptr %i.lh, align 4, !tbaa !11
  %i.lw = load i32, ptr %i.e, align 16, !tbaa !11
  %i.lx = sub nsw i32 %i.lw, %i.js
  store i32 %i.lx, ptr %0, align 4, !tbaa !11
  %i.ly = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !11
  %i.ma = sub nsw i32 %i.lz, %i.jx
  store i32 %i.ma, ptr %i.jv, align 4, !tbaa !11
  %i.mb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !11
  %i.md = sub nsw i32 %i.mc, %i.kc
  store i32 %i.md, ptr %i.ka, align 4, !tbaa !11
  %i.me = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !11
  %i.mg = sub nsw i32 %i.mf, %i.kh
  store i32 %i.mg, ptr %i.kf, align 4, !tbaa !11
  %i.mh = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.mi = load i32, ptr %i.mh, align 16, !tbaa !11
  %i.mj = sub nsw i32 %i.mi, %i.km
  store i32 %i.mj, ptr %i.kk, align 4, !tbaa !11
  %i.mk = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !11
  %i.mm = sub nsw i32 %i.ml, %i.kr
  store i32 %i.mm, ptr %i.kp, align 4, !tbaa !11
  %i.mn = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !11
  %i.mp = sub nsw i32 %i.mo, %i.kw
  store i32 %i.mp, ptr %i.ku, align 4, !tbaa !11
  %i.mq = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !11
  %i.ms = sub nsw i32 %i.mr, %i.lb
  store i32 %i.ms, ptr %i.kz, align 4, !tbaa !11
  %i.mt = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.mu = load i32, ptr %i.mt, align 16, !tbaa !11
  %i.mv = sub nsw i32 %i.mu, %i.lg
  store i32 %i.mv, ptr %i.le, align 4, !tbaa !11
  %i.mw = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !11
  %i.my = sub nsw i32 %i.mx, %i.ll
  store i32 %i.my, ptr %i.lj, align 4, !tbaa !11
  %i.mz = sub nsw i32 %i.ib, %i.lm
  store i32 %i.mz, ptr %i.h, align 4, !tbaa !11
  %i.na = sub nsw i32 %i.ic, %i.ln
  store i32 %i.na, ptr %i.id, align 4, !tbaa !11
  %i.nb = sub nsw i32 %i.ie, %i.lo
  store i32 %i.nb, ptr %i.if, align 4, !tbaa !11
  %i.nc = sub nsw i32 %i.ig, %i.lp
  store i32 %i.nc, ptr %i.ih, align 4, !tbaa !11
  %i.nd = sub nsw i32 %i.ii, %i.lq
  store i32 %i.nd, ptr %i.ij, align 4, !tbaa !11
  %i.ne = sub nsw i32 %i.ik, %i.lr
  store i32 %i.ne, ptr %i.il, align 4, !tbaa !11
  %i.nf = sub nsw i32 %i.im, %i.ls
  store i32 %i.nf, ptr %i.in, align 4, !tbaa !11
  %i.ng = sub nsw i32 %i.io, %i.lt
  store i32 %i.ng, ptr %i.ip, align 4, !tbaa !11
  %i.nh = sub nsw i32 %i.iq, %i.lu
  store i32 %i.nh, ptr %i.ir, align 4, !tbaa !11
  %i.ni = sub nsw i32 %i.is, %i.lv
  store i32 %i.ni, ptr %i.it, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.nj = alloca [10 x i32], align 16             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nj) #7
  tail call fastcc void @fe_sq(ptr noundef %0, ptr noundef %1)
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call fastcc void @fe_sq(ptr noundef %i.nk, ptr noundef %i.nl)
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !11 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !11 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !11 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !11 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !11 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !11 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !11 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !11 ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !11 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.og = load i32, ptr %i.of, align 4, !tbaa !11 ; 2 uses
  %i.oh = shl nsw i32 %i.no, 1
  %i.oi = shl nsw i32 %i.nq, 1
  %i.oj = shl nsw i32 %i.ns, 1
  %i.ok = shl nsw i32 %i.nu, 1
  %i.ol = shl nsw i32 %i.nw, 1
  %i.om = shl nsw i32 %i.ny, 1
  %i.on = shl nsw i32 %i.oa, 1
  %i.oo = shl nsw i32 %i.oc, 1
  %i.op = mul nsw i32 %i.ny, 38
  %i.oq = mul nsw i32 %i.oa, 19
  %i.or = mul nsw i32 %i.oc, 38
  %i.os = mul nsw i32 %i.oe, 19
end_hunk_1
begin_hunk_2_@ge_p3_to_cached:bb.a
  %i.c = add i64 %i.b, 80
  %i.d = add i64 %i.a, 80
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <4 x i32>, ptr %i.e, align 4, !tbaa !11
  %i.i = load <4 x i32>, ptr %1, align 4, !tbaa !11
  %i.j = add nsw <4 x i32> %i.i, %i.h
  store <4 x i32> %i.j, ptr %0, align 4, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load <4 x i32>, ptr %i.k, align 4, !tbaa !11
  %i.q = load <4 x i32>, ptr %i.l, align 4, !tbaa !11
  %i.r = add nsw <4 x i32> %i.q, %i.p
  store <4 x i32> %i.r, ptr %i.m, align 4, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load <2 x i32>, ptr %i.s, align 4, !tbaa !11
  %i.w = load <4 x i32>, ptr %i.t, align 4, !tbaa !11 ; 2 uses
  %i.x = load <2 x i32>, ptr %1, align 4, !tbaa !11
  %i.y = shufflevector <2 x i32> %i.v, <2 x i32> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.z = add nsw <4 x i32> %i.w, %i.y
  %i.aa = sub nsw <4 x i32> %i.w, %i.y
  %i.ab = shufflevector <4 x i32> %i.z, <4 x i32> %i.aa, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ab, ptr %i.u, align 4, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load <4 x i32>, ptr %i.f, align 4, !tbaa !11
  %i.ae = load <4 x i32>, ptr %i.g, align 4, !tbaa !11
  %i.af = sub nsw <4 x i32> %i.ad, %i.ae
  store <4 x i32> %i.af, ptr %i.ac, align 4, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load <4 x i32>, ptr %i.n, align 4, !tbaa !11
  %i.ai = load <4 x i32>, ptr %i.o, align 4, !tbaa !11
  %i.aj = sub nsw <4 x i32> %i.ah, %i.ai
  store <4 x i32> %i.aj, ptr %i.ag, align 4, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.ak, ptr noundef nonnull readonly align 4 dereferenceable(40) %i.al, i64 40, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call fastcc void @fe_mul(ptr noundef %i.am, ptr noundef nonnull %i.an, ptr noundef nonnull @d2)
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !11
  %i.aq = load i32, ptr %1, align 4, !tbaa !11
  %i.ar = add nsw i32 %i.aq, %i.ap
  store i32 %i.ar, ptr %0, align 4, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !11
  %i.aw = add nsw i32 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !11
  %i.bc = add nsw i32 %i.bb, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !11
  %i.bi = add nsw i32 %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !11
  %i.bo = add nsw i32 %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !11
  %i.bu = add nsw i32 %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !11
  %i.ca = add nsw i32 %i.bz, %i.bx
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !11
  %i.cg = add nsw i32 %i.cf, %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !11
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !11
  %i.cm = add nsw i32 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !11
  %i.cs = add nsw i32 %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !11
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cv = load i32, ptr %i.ao, align 4, !tbaa !11
  %i.cw = load i32, ptr %1, align 4, !tbaa !11
  %i.cx = sub nsw i32 %i.cv, %i.cw
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !11
  %i.cy = load i32, ptr %i.as, align 4, !tbaa !11
  %i.cz = load i32, ptr %i.au, align 4, !tbaa !11
  %i.da = sub nsw i32 %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.da, ptr %i.db, align 4, !tbaa !11
  %i.dc = load i32, ptr %i.ay, align 4, !tbaa !11
  %i.dd = load i32, ptr %i.ba, align 4, !tbaa !11
  %i.de = sub nsw i32 %i.dc, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.de, ptr %i.df, align 4, !tbaa !11
  %i.dg = load i32, ptr %i.be, align 4, !tbaa !11
  %i.dh = load i32, ptr %i.bg, align 4, !tbaa !11
  %i.di = sub nsw i32 %i.dg, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !11
  %i.dk = load i32, ptr %i.bk, align 4, !tbaa !11
  %i.dl = load i32, ptr %i.bm, align 4, !tbaa !11
  %i.dm = sub nsw i32 %i.dk, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !11
  %i.do = load i32, ptr %i.bq, align 4, !tbaa !11
  %i.dp = load i32, ptr %i.bs, align 4, !tbaa !11
  %i.dq = sub nsw i32 %i.do, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !11
  %i.ds = load i32, ptr %i.bw, align 4, !tbaa !11
  %i.dt = load i32, ptr %i.by, align 4, !tbaa !11
  %i.du = sub nsw i32 %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !11
  %i.dw = load i32, ptr %i.cc, align 4, !tbaa !11
  %i.dx = load i32, ptr %i.ce, align 4, !tbaa !11
  %i.dy = sub nsw i32 %i.dw, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !11
  %i.ea = load i32, ptr %i.ci, align 4, !tbaa !11
  %i.eb = load i32, ptr %i.ck, align 4, !tbaa !11
  %i.ec = sub nsw i32 %i.ea, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !11
  %i.ee = load i32, ptr %i.co, align 4, !tbaa !11
  %i.ef = load i32, ptr %i.cq, align 4, !tbaa !11
  %i.eg = sub nsw i32 %i.ee, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !11
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.ei, ptr noundef nonnull readonly align 4 dereferenceable(40) %i.ej, i64 40, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call fastcc void @fe_mul(ptr noundef %i.ek, ptr noundef nonnull %i.el, ptr noundef nonnull @d2)
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ge_add(ptr nofree noundef nonnull initializes((0, 80)) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 80
  %i.d = add i64 %i.a, 160
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load <4 x i32>, ptr %i.e, align 4, !tbaa !11
  %i.i = load <4 x i32>, ptr %1, align 4, !tbaa !11
  %i.j = add nsw <4 x i32> %i.i, %i.h
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <4 x i32> %i.j, ptr %0, align 4, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = load <4 x i32>, ptr %i.k, align 4, !tbaa !11
  %i.r = load <4 x i32>, ptr %i.l, align 4, !tbaa !11
  %i.s = add nsw <4 x i32> %i.r, %i.q
  store <4 x i32> %i.s, ptr %i.m, align 4, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = load <2 x i32>, ptr %i.t, align 4, !tbaa !11
  %i.y = load <2 x i32>, ptr %i.u, align 4, !tbaa !11
  %i.z = add nsw <2 x i32> %i.y, %i.x
  store <2 x i32> %i.z, ptr %i.v, align 4, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ae = load <4 x i32>, ptr %i.e, align 4, !tbaa !11
  %i.af = load <4 x i32>, ptr %1, align 4, !tbaa !11
  %i.ag = sub nsw <4 x i32> %i.ae, %i.af
  store <4 x i32> %i.ag, ptr %i.aa, align 4, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.al = load <4 x i32>, ptr %i.k, align 4, !tbaa !11
  %i.am = load <4 x i32>, ptr %i.l, align 4, !tbaa !11
  %i.an = sub nsw <4 x i32> %i.al, %i.am
  store <4 x i32> %i.an, ptr %i.ah, align 4, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.aq = load <2 x i32>, ptr %i.t, align 4, !tbaa !11
  %i.ar = load <2 x i32>, ptr %i.u, align 4, !tbaa !11
  %i.as = sub nsw <2 x i32> %i.aq, %i.ar
  store <2 x i32> %i.as, ptr %i.ao, align 4, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  tail call fastcc void @fe_mul(ptr noundef %i.at, ptr noundef nonnull %0, ptr noundef nonnull %2)
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call fastcc void @fe_mul(ptr noundef %i.aa, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call fastcc void @fe_mul(ptr noundef %i.av, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 80
  tail call fastcc void @fe_mul(ptr noundef %0, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az)
  %i.ba = load i32, ptr %i.at, align 4, !tbaa !11 ; 2 uses
  %i.bb = load i32, ptr %i.aa, align 4, !tbaa !11 ; 2 uses
  %i.bc = sub nsw i32 %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !11 ; 2 uses
  %i.bf = load i32, ptr %i.ab, align 4, !tbaa !11 ; 2 uses
  %i.bg = sub nsw i32 %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !11 ; 2 uses
  %i.bj = load i32, ptr %i.ac, align 4, !tbaa !11 ; 2 uses
  %i.bk = sub nsw i32 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !11 ; 2 uses
  %i.bn = load i32, ptr %i.ad, align 4, !tbaa !11 ; 2 uses
  %i.bo = sub nsw i32 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !11 ; 2 uses
  %i.br = load i32, ptr %i.ah, align 4, !tbaa !11 ; 2 uses
  %i.bs = sub nsw i32 %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !11 ; 2 uses
  %i.bv = load i32, ptr %i.ai, align 4, !tbaa !11 ; 2 uses
  %i.bw = sub nsw i32 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !11 ; 2 uses
  %i.bz = load i32, ptr %i.aj, align 4, !tbaa !11 ; 2 uses
  %i.ca = sub nsw i32 %i.by, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !11 ; 2 uses
  %i.cd = load i32, ptr %i.ak, align 4, !tbaa !11 ; 2 uses
  %i.ce = sub nsw i32 %i.cc, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !11 ; 2 uses
  %i.ch = load i32, ptr %i.ao, align 4, !tbaa !11 ; 2 uses
  %i.ci = sub nsw i32 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !11 ; 2 uses
  %i.cl = load i32, ptr %i.ap, align 4, !tbaa !11 ; 2 uses
  %i.cm = sub nsw i32 %i.ck, %i.cl
  %i.cn = add nsw i32 %i.bb, %i.ba
  store i32 %i.cn, ptr %i.aa, align 4, !tbaa !11
  %i.co = add nsw i32 %i.bf, %i.be
  store i32 %i.co, ptr %i.ab, align 4, !tbaa !11
  %i.cp = add nsw i32 %i.bj, %i.bi
  store i32 %i.cp, ptr %i.ac, align 4, !tbaa !11
  %i.cq = add nsw i32 %i.bn, %i.bm
  store i32 %i.cq, ptr %i.ad, align 4, !tbaa !11
  %i.cr = add nsw i32 %i.br, %i.bq
  store i32 %i.cr, ptr %i.ah, align 4, !tbaa !11
  %i.cs = add nsw i32 %i.bv, %i.bu
  store i32 %i.cs, ptr %i.ai, align 4, !tbaa !11
  %i.ct = add nsw i32 %i.bz, %i.by
  store i32 %i.ct, ptr %i.aj, align 4, !tbaa !11
  %i.cu = add nsw i32 %i.cd, %i.cc
  store i32 %i.cu, ptr %i.ak, align 4, !tbaa !11
  %i.cv = add nsw i32 %i.ch, %i.cg
  store i32 %i.cv, ptr %i.ao, align 4, !tbaa !11
  %i.cw = add nsw i32 %i.cl, %i.ck
  store i32 %i.cw, ptr %i.ap, align 4, !tbaa !11
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.cy = load <4 x i32>, ptr %0, align 4, !tbaa !11
  %i.cz = shl nsw <4 x i32> %i.cy, splat (i32 1)  ; 3 uses
  store i32 %i.bc, ptr %0, align 4, !tbaa !11
  store i32 %i.bg, ptr %i.f, align 4, !tbaa !11
  store i32 %i.bk, ptr %i.g, align 4, !tbaa !11
  store i32 %i.bo, ptr %3, align 4, !tbaa !11
  %i.da = load <4 x i32>, ptr %i.av, align 4, !tbaa !11 ; 3 uses
  %i.db = add nsw <4 x i32> %i.da, %i.cz
  store <4 x i32> %i.db, ptr %i.at, align 4, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.de = load <4 x i32>, ptr %i.m, align 4, !tbaa !11
  %i.df = shl nsw <4 x i32> %i.de, splat (i32 1)  ; 3 uses
  store i32 %i.bs, ptr %i.m, align 4, !tbaa !11
  store i32 %i.bw, ptr %i.n, align 4, !tbaa !11
  store i32 %i.ca, ptr %i.o, align 4, !tbaa !11
  store i32 %i.ce, ptr %i.p, align 4, !tbaa !11
  %i.dg = load <4 x i32>, ptr %i.dc, align 4, !tbaa !11 ; 3 uses
  %i.dh = add nsw <4 x i32> %i.dg, %i.df
  store <4 x i32> %i.dh, ptr %i.bp, align 4, !tbaa !11
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.dj = shufflevector <4 x i32> %i.cz, <4 x i32> %i.df, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dk = shufflevector <4 x i32> %i.da, <4 x i32> %i.dg, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dl = sub nsw <4 x i32> %i.dj, %i.dk
  store <4 x i32> %i.dl, ptr %i.cx, align 4, !tbaa !11
  %foldExtExtBinop = sub nsw <4 x i32> %i.df, %i.dg
  %i.dm = extractelement <4 x i32> %foldExtExtBinop, i64 3
  store i32 %i.dm, ptr %i.dd, align 4, !tbaa !11
  %i.dn = load <2 x i32>, ptr %i.v, align 4, !tbaa !11
  %i.do = shl nsw <2 x i32> %i.dn, splat (i32 1)  ; 3 uses
  store i32 %i.ci, ptr %i.v, align 4, !tbaa !11
  store i32 %i.cm, ptr %i.w, align 4, !tbaa !11
  %i.dp = load <2 x i32>, ptr %i.di, align 4, !tbaa !11 ; 3 uses
  %foldExtExtBinop41 = add nsw <2 x i32> %i.dp, %i.do
  %i.dq = extractelement <2 x i32> %foldExtExtBinop41, i64 0
  store i32 %i.dq, ptr %i.cf, align 4, !tbaa !11
  %i.dr = shufflevector <2 x i32> %i.dp, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.ds = shufflevector <4 x i32> %i.cz, <4 x i32> %i.dr, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.dt = shufflevector <2 x i32> %i.do, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.du = shufflevector <4 x i32> %i.da, <4 x i32> %i.dt, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.dv = add nsw <4 x i32> %i.ds, %i.du
  %i.dw = sub nsw <4 x i32> %i.ds, %i.du
  %i.dx = shufflevector <4 x i32> %i.dv, <4 x i32> %i.dw, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  store <4 x i32> %i.dx, ptr %i.cj, align 4, !tbaa !11
  %i.dy = sub nsw <2 x i32> %i.do, %i.dp
  store <2 x i32> %i.dy, ptr %i.di, align 4, !tbaa !11
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !11
  %i.eb = load i32, ptr %1, align 4, !tbaa !11
  %i.ec = add nsw i32 %i.eb, %i.ea
  store i32 %i.ec, ptr %0, align 4, !tbaa !11
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !11
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !11
  %i.eh = add nsw i32 %i.eg, %i.ee
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !11
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !11
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !11
  %i.en = add nsw i32 %i.em, %i.ek
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !11
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !11
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !11
  %i.et = add nsw i32 %i.es, %i.eq
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !11
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !11
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !11
  %i.ez = add nsw i32 %i.ey, %i.ew
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !11
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !11
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !11
  %i.ff = add nsw i32 %i.fe, %i.fc
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
end_hunk_2
