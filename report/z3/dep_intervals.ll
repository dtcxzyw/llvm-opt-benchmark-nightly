Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dep_intervals?download=true
inline.NumInlined: 1878
inline.NumDeleted: 208
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN16interval_managerIN13dep_intervals9im_configEE7div_mulERK3mpqRKNS1_8intervalERS6_b:bb.a
  br i1 %i.ae, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ai = and i8 %i.w, 3
  %i.aj = or disjoint i8 %i.ai, %i.ah
  store i8 %i.aj, ptr %i.af, align 8
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !12, !nonnull !13, !align !14 ; 2 uses
  br i1 %4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  tail call void @_ZN11mpq_managerILb0EE3invERK3mpqRS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !12, !nonnull !13, !align !14
  call void @_Z3mulI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !12, !nonnull !13, !align !14
  call void @_ZN11mpq_managerILb0EE3invERK3mpqRS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !12, !nonnull !13, !align !14
  call void @_Z3mulI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  call void @_Z3mulI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !12, !nonnull !13, !align !14
  call void @_Z3mulI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %trunc = trunc i8 %i.w to i2
  %rev = tail call i2 @llvm.bitreverse.i2(i2 %trunc)
  %i.aq = zext i2 %rev to i8
  %i.ar = or disjoint i8 %i.ah, %i.aq
  store i8 %i.ar, ptr %i.af, align 8
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !12, !nonnull !13, !align !14 ; 2 uses
  br i1 %4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  tail call void @_ZN11mpq_managerILb0EE3invERK3mpqRS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !12, !nonnull !13, !align !14
  call void @_Z3mulI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !12, !nonnull !13, !align !14
  call void @_ZN11mpq_managerILb0EE3invERK3mpqRS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !12, !nonnull !13, !align !14
  call void @_Z3mulI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @_Z3mulI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !12, !nonnull !13, !align !14
  call void @_Z3mulI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e, %bb.f
  %i.ay = load i32, ptr %3, align 8, !tbaa !50
  %i.az = load i32, ptr %i.ac, align 8, !tbaa !50
  store i32 %i.az, ptr %3, align 8, !tbaa !50
  store i32 %i.ay, ptr %i.ac, align 8, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !59
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !59
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !59
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !59
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.bf = load i8, ptr %i.be, align 4             ; 2 uses
  %i.bg = and i8 %i.bf, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.bi = load i8, ptr %i.bh, align 4
  %i.bj = and i8 %i.bi, 2
  %i.bk = and i8 %i.bf, -3
  %i.bl = or disjoint i8 %i.bj, %i.bk
  store i8 %i.bl, ptr %i.be, align 4
  %i.bm = load i8, ptr %i.bh, align 4             ; 2 uses
  %i.bn = and i8 %i.bm, -3
  %i.bo = or disjoint i8 %i.bn, %i.bg
  store i8 %i.bo, ptr %i.bh, align 4
  %i.bp = load i8, ptr %i.be, align 4             ; 2 uses
  %i.bq = and i8 %i.bp, 1
  %i.br = and i8 %i.bm, 1
  %i.bs = and i8 %i.bp, -2
  %i.bt = or disjoint i8 %i.bs, %i.br
  store i8 %i.bt, ptr %i.be, align 4
  %i.bu = load i8, ptr %i.bh, align 4
  %i.bv = and i8 %i.bu, -2
  %i.bw = or disjoint i8 %i.bv, %i.bq
  store i8 %i.bw, ptr %i.bh, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bz = load i32, ptr %i.bx, align 8, !tbaa !50
  %i.ca = load i32, ptr %i.by, align 8, !tbaa !50
  store i32 %i.ca, ptr %i.bx, align 8, !tbaa !50
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !50
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !59
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !59
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !59
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !59
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.cg = load i8, ptr %i.cf, align 4             ; 2 uses
  %i.ch = and i8 %i.cg, 2
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.cj = load i8, ptr %i.ci, align 4
  %i.ck = and i8 %i.cj, 2
  %i.cl = and i8 %i.cg, -3
  %i.cm = or disjoint i8 %i.ck, %i.cl
  store i8 %i.cm, ptr %i.cf, align 4
  %i.cn = load i8, ptr %i.ci, align 4             ; 2 uses
  %i.co = and i8 %i.cn, -3
  %i.cp = or disjoint i8 %i.co, %i.ch
  store i8 %i.cp, ptr %i.ci, align 4
  %i.cq = load i8, ptr %i.cf, align 4             ; 2 uses
  %i.cr = and i8 %i.cq, 1
  %i.cs = and i8 %i.cn, 1
  %i.ct = and i8 %i.cq, -2
  %i.cu = or disjoint i8 %i.ct, %i.cs
  store i8 %i.cu, ptr %i.cf, align 4
  %i.cv = load i8, ptr %i.ci, align 4
  %i.cw = and i8 %i.cv, -2
  %i.cx = or disjoint i8 %i.cw, %i.cr
  store i8 %i.cx, ptr %i.ci, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !50
  %i.da = load i32, ptr %i.ad, align 8, !tbaa !50
  store i32 %i.da, ptr %i.cy, align 8, !tbaa !50
  store i32 %i.cz, ptr %i.ad, align 8, !tbaa !50
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !59
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !59
  store ptr %i.de, ptr %i.db, align 8, !tbaa !59
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !59
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 4 uses
  %i.dg = load i8, ptr %i.df, align 4             ; 2 uses
  %i.dh = and i8 %i.dg, 2
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 5 uses
  %i.dj = load i8, ptr %i.di, align 4
  %i.dk = and i8 %i.dj, 2
  %i.dl = and i8 %i.dg, -3
  %i.dm = or disjoint i8 %i.dk, %i.dl
  store i8 %i.dm, ptr %i.df, align 4
  %i.dn = load i8, ptr %i.di, align 4             ; 2 uses
  %i.do = and i8 %i.dn, -3
  %i.dp = or disjoint i8 %i.do, %i.dh
  store i8 %i.dp, ptr %i.di, align 4
  %i.dq = load i8, ptr %i.df, align 4             ; 2 uses
  %i.dr = and i8 %i.dq, 1
  %i.ds = and i8 %i.dn, 1
  %i.dt = and i8 %i.dq, -2
  %i.du = or disjoint i8 %i.dt, %i.ds
  store i8 %i.du, ptr %i.df, align 4
  %i.dv = load i8, ptr %i.di, align 4
  %i.dw = and i8 %i.dv, -2
  %i.dx = or disjoint i8 %i.dw, %i.dr
  store i8 %i.dx, ptr %i.di, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ea = load i32, ptr %i.dy, align 8, !tbaa !50
  %i.eb = load i32, ptr %i.dz, align 8, !tbaa !50
  store i32 %i.eb, ptr %i.dy, align 8, !tbaa !50
  store i32 %i.ea, ptr %i.dz, align 8, !tbaa !50
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !59
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !59
  store ptr %i.ef, ptr %i.ec, align 8, !tbaa !59
  store ptr %i.ee, ptr %i.ed, align 8, !tbaa !59
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 4 uses
  %i.eh = load i8, ptr %i.eg, align 4             ; 2 uses
  %i.ei = and i8 %i.eh, 2
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  %i.ek = load i8, ptr %i.ej, align 4
  %i.el = and i8 %i.ek, 2
  %i.em = and i8 %i.eh, -3
  %i.en = or disjoint i8 %i.el, %i.em
  store i8 %i.en, ptr %i.eg, align 4
  %i.eo = load i8, ptr %i.ej, align 4             ; 2 uses
  %i.ep = and i8 %i.eo, -3
  %i.eq = or disjoint i8 %i.ep, %i.ei
  store i8 %i.eq, ptr %i.ej, align 4
  %i.er = load i8, ptr %i.eg, align 4             ; 2 uses
  %i.es = and i8 %i.er, 1
  %i.et = and i8 %i.eo, 1
  %i.eu = and i8 %i.er, -2
  %i.ev = or disjoint i8 %i.eu, %i.et
  store i8 %i.ev, ptr %i.eg, align 4
  %i.ew = load i8, ptr %i.ej, align 4
  %i.ex = and i8 %i.ew, -2
  %i.ey = or disjoint i8 %i.ex, %i.es
  store i8 %i.ey, ptr %i.ej, align 4
  %i.ez = load i32, ptr %i.a, align 4, !tbaa !61
  %i.fa = icmp eq i32 %i.ez, 0
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 8
  %i.fd = select i1 %i.fa, i8 4, i8 0
  %i.fe = and i8 %i.fc, -13
  %i.ff = or disjoint i8 %i.fe, %i.fd
  %i.fg = load i32, ptr %i.b, align 4, !tbaa !61
  %i.fh = icmp eq i32 %i.fg, 2
  %i.fi = select i1 %i.fh, i8 8, i8 0
  %i.fj = or disjoint i8 %i.ff, %i.fi
  store i8 %i.fj, ptr %i.fb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN16interval_managerIN13dep_intervals9im_configEE5resetERNS1_8intervalE(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12, !nonnull !13, !align !14 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  store i32 1, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, -2
  store i8 %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = or i8 %i.h, 5
  store i8 %i.i, ptr %i.g, align 8
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !12, !nonnull !13, !align !14 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  store i32 1, ptr %i.l, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4
  %i.o = and i8 %i.n, -2
  store i8 %i.o, ptr %i.m, align 4
  %i.p = load i8, ptr %i.g, align 8
  %i.q = or i8 %i.p, 10
  store i8 %i.q, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11mpq_managerILb0EE3invERK3mpqRS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !17
  store i32 %i.e, ptr %2, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -2
  store i8 %i.h, ptr %i.f, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  %i.o = load i32, ptr %i.j, align 8, !tbaa !17
  store i32 %i.o, ptr %i.i, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.q = load i8, ptr %i.p, align 4
  %i.r = and i8 %i.q, -2
  store i8 %i.r, ptr %i.p, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit

_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit:       ; preds = %bb.d, %bb.e
  %i.s = load i32, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %_ZN11mpq_managerILb0EE3invER3mpq.exit

bb.f:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit
  tail call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  tail call void @_ZN11mpz_managerILb0EE3negER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  %.pre.i = load i32, ptr %2, align 8, !tbaa !50
  br label %_ZN11mpq_managerILb0EE3invER3mpq.exit

_ZN11mpq_managerILb0EE3invER3mpq.exit:            ; preds = %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit, %bb.f
  %i.u = phi i32 [ %.pre.i, %bb.f ], [ %i.s, %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit ]
  %i.v = load i32, ptr %i.i, align 8, !tbaa !50
  store i32 %i.v, ptr %2, align 8, !tbaa !50
  store i32 %i.u, ptr %i.i, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !59
  store ptr %i.z, ptr %i.w, align 8, !tbaa !59
  store ptr %i.y, ptr %i.x, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4             ; 2 uses
  %i.ae = and i8 %i.ab, -4
  %i.af = and i8 %i.ad, -4
  %i.ag = and i8 %i.ad, 3
  %i.ah = or disjoint i8 %i.ag, %i.ae
  store i8 %i.ah, ptr %i.aa, align 4
  %i.ai = and i8 %i.ab, 3
  %i.aj = or disjoint i8 %i.af, %i.ai
  store i8 %i.aj, ptr %i.ac, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z3mulI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %2, 1
  %i.b = load i32, ptr %1, align 8                ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = select i1 %i.a, i1 %i.c, i1 false
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %4, 1                        ; 2 uses
  %i.f = load i32, ptr %3, align 8                ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = select i1 %i.e, i1 %i.g, i1 false
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  store i32 1, ptr %i.i, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, -2
  store i8 %i.l, ptr %i.j, align 4
  store i32 1, ptr %6, align 4, !tbaa !61
  br label %_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit

bb.d:                                             ; preds = %bb.b
  switch i32 %2, label %.fold.split.i [
    i32 1, label %bb.e
    i32 2, label %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %i.e, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.e
  %i.m = icmp sgt i32 %i.b, 0
  br label %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit

.fold.split.i:                                    ; preds = %bb.d
  br label %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit

_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit: ; preds = %bb.d, %.thread, %.fold.split.i
  %i.n = phi i1 [ true, %bb.d ], [ %i.m, %.thread ], [ false, %.fold.split.i ]
  switch i32 %4, label %.fold.split.i25 [
    i32 2, label %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit26
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit
  %i.o = icmp sgt i32 %i.f, 0
  br label %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit26

.fold.split.i25:                                  ; preds = %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit
  br label %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit26

_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit26: ; preds = %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit, %bb.f, %.fold.split.i25
  %i.p = phi i1 [ true, %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit ], [ %i.o, %bb.f ], [ false, %.fold.split.i25 ]
  %i.q = xor i1 %i.n, %i.p
  %. = select i1 %i.q, i32 0, i32 2
  store i32 %., ptr %6, align 4, !tbaa !61
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  store i32 1, ptr %i.r, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4
  %i.u = and i8 %i.t, -2
  store i8 %i.u, ptr %i.s, align 4
  br label %_ZN11mpq_managerILb0EE3mulERK3mpqS3_RS1_.exit

bb.g:                                             ; preds = %bb.e
  store i32 1, ptr %6, align 4, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20
end_hunk_0
begin_hunk_1_@_ZN16interval_managerIN13dep_intervals9im_configEE7add_jstERKNS1_8intervalES5_R26interval_deps_combine_rule:bb.a
  store i16 5, ptr %3, align 2, !tbaa !66
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 10, ptr %i.a, align 2, !tbaa !67
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN16interval_managerIN13dep_intervals9im_configEE3addERKNS1_8intervalES5_RS3_(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12, !nonnull !13, !align !14 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, 4
  %.not.i = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
  store i32 1, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, -2
  store i8 %i.j, ptr %i.h, align 4
  br label %_Z3addI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.f, align 8
  %i.l = and i8 %i.k, 4
  %.not.i19 = icmp eq i8 %i.l, 0
  br i1 %.not.i19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.m)
  store i32 1, ptr %i.m, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, -2
  store i8 %i.p, ptr %i.n, align 4
  br label %_Z3addI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN11mpq_managerILb0EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %_Z3addI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_.exit

_Z3addI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.q = phi i8 [ 4, %bb.d ], [ 0, %bb.e ], [ 4, %bb.b ]
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !12, !nonnull !13, !align !14 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load i8, ptr %i.c, align 8
  %i.u = and i8 %i.t, 8
  %.not.i21 = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  br i1 %.not.i21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_Z3addI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_.exit
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.x)
  store i32 1, ptr %i.x, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = and i8 %i.z, -2
  store i8 %i.aa, ptr %i.y, align 4
  br label %_Z3addI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_.exit25

bb.g:                                             ; preds = %_Z3addI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_.exit
  %i.ab = load i8, ptr %i.f, align 8
  %i.ac = and i8 %i.ab, 8
  %.not.i22 = icmp eq i8 %i.ac, 0
  br i1 %.not.i22, label %_Z3addI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_.exit25.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  store i32 1, ptr %i.ad, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 4
  %i.ag = and i8 %i.af, -2
  store i8 %i.ag, ptr %i.ae, align 4
  br label %_Z3addI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_.exit25

_Z3addI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_.exit25.thread: ; preds = %bb.g
  tail call void @_ZN11mpq_managerILb0EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  br label %_Z3addI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_.exit25

_Z3addI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_.exit25: ; preds = %bb.h, %bb.f, %_Z3addI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_.exit25.thread
  %i.ah = phi i8 [ 0, %_Z3addI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_.exit25.thread ], [ 8, %bb.f ], [ 8, %bb.h ]
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %.pn.in = load i8, ptr %i.ai, align 8
  %.pn = and i8 %.pn.in, -13
  %i.aj = or disjoint i8 %i.ah, %i.q
  %i.ak = or disjoint i8 %i.aj, %.pn              ; 2 uses
  store i8 %i.ak, ptr %i.ai, align 8
  %i.al = load i8, ptr %i.c, align 8
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_Z3addI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_.exit25
  %i.an = load i8, ptr %i.f, align 8
  %i.ao = and i8 %i.an, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_Z3addI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_.exit25
  %i.ap = phi i8 [ 1, %_Z3addI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_.exit25 ], [ %i.ao, %bb.i ]
  %i.aq = and i8 %i.ak, -2
  %i.ar = or disjoint i8 %i.ap, %i.aq             ; 2 uses
  store i8 %i.ar, ptr %i.ai, align 8
  %i.as = load i8, ptr %i.c, align 8
  %i.at = and i8 %i.as, 2
  %.not = icmp eq i8 %i.at, 0
  br i1 %.not, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.au = load i8, ptr %i.f, align 8
  %.fr31 = freeze i8 %i.au
  %i.av = and i8 %.fr31, 2
  %.not32 = icmp eq i8 %i.av, 0
  br i1 %.not32, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.j, %bb.k
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %i.aw = phi i8 [ 2, %.thread ], [ 0, %bb.k ]
  %i.ax = and i8 %i.ar, -3
  %i.ay = or disjoint i8 %i.aw, %i.ax
  store i8 %i.ay, ptr %i.ai, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN16interval_managerIN13dep_intervals9im_configEE3subERKNS1_8intervalES5_RS3_R26interval_deps_combine_rule(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 2 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store i16 9, ptr %4, align 2, !tbaa !66
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 6, ptr %i.a, align 2, !tbaa !67
  tail call void @_ZN16interval_managerIN13dep_intervals9im_configEE3subERKNS1_8intervalES5_RS3_(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN16interval_managerIN13dep_intervals9im_configEE7sub_jstERKNS1_8intervalES5_R26interval_deps_combine_rule(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 2 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  store i16 9, ptr %3, align 2, !tbaa !66
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 6, ptr %i.a, align 2, !tbaa !67
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN16interval_managerIN13dep_intervals9im_configEE3subERKNS1_8intervalES5_RS3_(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12, !nonnull !13, !align !14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = and i8 %i.f, 4
  %.not.i = icmp eq i8 %i.g, 0
  %i.h = zext i1 %.not.i to i32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 8
  %.not.i19 = icmp eq i8 %i.l, 0
  %i.m = select i1 %.not.i19, i32 1, i32 2
  call void @_Z3subI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !12, !nonnull !13, !align !14
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i8, ptr %i.e, align 8
  %i.q = and i8 %i.p, 8
  %.not.i20 = icmp eq i8 %i.q, 0
  %i.r = select i1 %.not.i20, i32 1, i32 2
  %i.s = load i8, ptr %i.j, align 8
  %i.t = and i8 %i.s, 4
  %.not.i21 = icmp eq i8 %i.t, 0
  %i.u = zext i1 %.not.i21 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @_Z3subI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.w = load i32, ptr %i.a, align 4, !tbaa !61
  %i.x = icmp eq i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = select i1 %i.x, i8 4, i8 0
  %i.ab = and i8 %i.z, -13
  %i.ac = or disjoint i8 %i.ab, %i.aa
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !61
  %i.ae = icmp eq i32 %i.ad, 2
  %i.af = select i1 %i.ae, i8 8, i8 0
  %i.ag = or disjoint i8 %i.ac, %i.af             ; 2 uses
  store i8 %i.ag, ptr %i.y, align 8
  %i.ah = load i8, ptr %i.e, align 8
  %i.ai = trunc i8 %i.ah to i1
  br i1 %i.ai, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = load i8, ptr %i.j, align 8
  %i.ak = lshr i8 %i.aj, 1
  %.lobit = and i8 %i.ak, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.al = phi i8 [ 1, %bb.a ], [ %.lobit, %bb.b ]
  %i.am = and i8 %i.ag, -2
  %i.an = or disjoint i8 %i.al, %i.am             ; 2 uses
  store i8 %i.an, ptr %i.y, align 8
  %i.ao = load i8, ptr %i.e, align 8
  %i.ap = and i8 %i.ao, 2
  %.not = icmp eq i8 %i.ap, 0
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.aq = load i8, ptr %i.j, align 8
  %.fr = freeze i8 %i.aq
  %i.ar = trunc i8 %.fr to i1
  br i1 %i.ar, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.c, %bb.d
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.as = phi i8 [ 2, %.thread ], [ 0, %bb.d ]
  %i.at = and i8 %i.an, -3
  %i.au = or disjoint i8 %i.as, %i.at
  store i8 %i.au, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z3subI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #0 comdat {
bb.a:
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  store i32 1, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, -2
  store i8 %i.d, ptr %i.b, align 4
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  switch i32 %4, label %bb.j [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  store i32 1, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -2
  store i8 %i.h, ptr %i.f, align 4
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, 1
  %i.m = icmp eq i8 %i.l, 0
  %i.n = load i32, ptr %i.i, align 8
  %i.o = icmp eq i32 %i.n, 1
  %i.p = select i1 %i.m, i1 %i.o, i1 false
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.s = load i8, ptr %i.r, align 4
  %i.t = and i8 %i.s, 1
  %i.u = icmp eq i8 %i.t, 0
  %i.v = load i32, ptr %i.q, align 8
  %i.w = icmp eq i32 %i.v, 1
  %i.x = select i1 %i.u, i1 %i.w, i1 false
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.y)
  store i32 1, ptr %i.y, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = and i8 %i.aa, -2
  store i8 %i.ab, ptr %i.z, align 4
  br label %.sink.split

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZN11mpq_managerILb0EE7rat_subERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %.sink.split

bb.i:                                             ; preds = %bb.c
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ac)
  store i32 1, ptr %i.ac, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = and i8 %i.ae, -2
  store i8 %i.af, ptr %i.ad, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g, %bb.b, %bb.i, %bb.d
  %.sink = phi i32 [ 2, %bb.d ], [ %2, %bb.b ], [ 0, %bb.i ], [ 1, %bb.g ], [ 1, %bb.h ]
  store i32 %.sink, ptr %6, align 4, !tbaa !61
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN16interval_managerIN13dep_intervals9im_configEE3mulERK3mpqRKNS1_8intervalERS6_R26interval_deps_combine_rule(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 2 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.d = icmp slt i32 %i.a, 0                     ; 2 uses
  %..i = select i1 %i.d, i16 2, i16 1
  %.10.i = select i1 %i.d, i16 1, i16 2
  %.sink9.i = select i1 %i.b, i16 0, i16 %..i
  %.sink.i = select i1 %i.b, i16 0, i16 %.10.i
  store i16 %.sink9.i, ptr %4, align 2, !tbaa !66
  store i16 %.sink.i, ptr %i.c, align 2, !tbaa !67
  tail call void @_ZN16interval_managerIN13dep_intervals9im_configEE7div_mulERK3mpqRKNS1_8intervalERS6_b(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %3, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN16interval_managerIN13dep_intervals9im_configEE7mul_jstERK3mpqRKNS1_8intervalER26interval_deps_combine_rule(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 2 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.d = icmp slt i32 %i.a, 0                     ; 2 uses
  %. = select i1 %i.d, i16 2, i16 1
  %.10 = select i1 %i.d, i16 1, i16 2
  %.sink9 = select i1 %i.b, i16 0, i16 %.
  %.sink = select i1 %i.b, i16 0, i16 %.10
  store i16 %.sink9, ptr %3, align 2, !tbaa !66
  store i16 %.sink, ptr %i.c, align 2, !tbaa !67
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN16interval_managerIN13dep_intervals9im_configEE3mulERK3mpqRKNS1_8intervalERS6_(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN16interval_managerIN13dep_intervals9im_configEE7div_mulERK3mpqRKNS1_8intervalERS6_b(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %3, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN16interval_managerIN13dep_intervals9im_configEE3mulEiiRKNS1_8intervalERS3_(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(88) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class._scoped_numeral, align 8     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12, !nonnull !13, !align !14 ; 6 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, -4
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, -4
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr null, ptr %i.l, align 8, !tbaa !18
  %i.m = icmp slt i32 %2, 0
  %i.n = sub nsw i32 0, %1
  %.08.i = select i1 %i.m, i32 %i.n, i32 %1
  %.0.i = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  store i32 %.08.i, ptr %i.c, align 8, !tbaa !17
  store i8 %i.f, ptr %i.d, align 4
  store i32 %.0.i, ptr %i.h, align 8, !tbaa !17
  store i8 %i.k, ptr %i.i, align 4
end_hunk_1
begin_hunk_2_@_ZN16interval_managerIN13dep_intervals9im_configEE3mulERKNS1_8intervalES5_RS3_:bb.a
  %i.gh = load ptr, ptr %i.gf, align 8, !tbaa !12, !nonnull !13, !align !14
  call void @_Z3mulI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.gh, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.s

bb.q:                                             ; preds = %_ZNK16interval_managerIN13dep_intervals9im_configEE4is_MERKNS1_8intervalE.exit258.thread
  %i.gi = icmp sgt i32 %i.u, -1
  %.not329 = select i1 %.not.i.i.i236, i1 %i.gi, i1 false
  %i.gj = icmp slt i32 %i.fs, 1
  %.not331 = select i1 %.not.i241, i1 %i.gj, i1 false
  %or.cond347 = select i1 %.not329, i1 true, i1 %.not331
  br i1 %or.cond347, label %_ZNK16interval_managerIN13dep_intervals9im_configEE4is_MERKNS1_8intervalE.exit273.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gk = or i1 %i.al, %i.am
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.gm = zext i1 %i.gk to i8
  %i.gn = load i8, ptr %i.gl, align 8
  %i.go = and i8 %i.gn, -4
  %i.gp = or i8 %.fr305, %.fr308
  %i.gq = and i8 %i.gp, 2
  %i.gr = or disjoint i8 %i.gq, %i.gm
  %i.gs = or disjoint i8 %i.gr, %i.go
  store i8 %i.gs, ptr %i.gl, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !12, !nonnull !13, !align !14
  call void @_Z3mulI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.gu, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !12, !nonnull !13, !align !14
  call void @_Z3mulI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i32 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.s

_ZNK16interval_managerIN13dep_intervals9im_configEE4is_MERKNS1_8intervalE.exit273.thread: ; preds = %bb.q
  %i.gw = xor i1 %i.aj, true
  %or.cond303 = and i1 %i.l, %i.gw
  %i.gx = select i1 %i.w, i8 0, i8 %.fr308
  %spec.select313 = or i8 %.fr305, %i.gx
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.gz = and i8 %spec.select313, 1
  %i.ha = select i1 %or.cond303, i8 0, i8 %i.gz
  %i.hb = load i8, ptr %i.gy, align 8
  %i.hc = and i8 %i.hb, -4
  %i.hd = or i8 %.fr305, %.fr308
  %i.he = and i8 %i.hd, 2
  %i.hf = or disjoint i8 %i.ha, %i.he
  %i.hg = or disjoint i8 %i.hf, %i.hc
  store i8 %i.hg, ptr %i.gy, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !12, !nonnull !13, !align !14
  call void @_Z3mulI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.hi, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.hj = load ptr, ptr %i.hh, align 8, !tbaa !12, !nonnull !13, !align !14
  call void @_Z3mulI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.hj, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i32 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %_ZNK16interval_managerIN13dep_intervals9im_configEE4is_MERKNS1_8intervalE.exit263.thread, %_ZNK16interval_managerIN13dep_intervals9im_configEE4is_NERKNS1_8intervalE.exit260.thread, %bb.r, %_ZNK16interval_managerIN13dep_intervals9im_configEE4is_MERKNS1_8intervalE.exit273.thread, %.thread288, %_ZNK16interval_managerIN13dep_intervals9im_configEE5is_N0ERKNS1_8intervalE.exit249, %.thread, %bb.e
  %i.hk = load i32, ptr %3, align 8, !tbaa !50
  %i.hl = load i32, ptr %i.ap, align 8, !tbaa !50
  store i32 %i.hl, ptr %3, align 8, !tbaa !50
  store i32 %i.hk, ptr %i.ap, align 8, !tbaa !50
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ho = load ptr, ptr %i.hm, align 8, !tbaa !59
  %i.hp = load ptr, ptr %i.hn, align 8, !tbaa !59
  store ptr %i.hp, ptr %i.hm, align 8, !tbaa !59
  store ptr %i.ho, ptr %i.hn, align 8, !tbaa !59
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.hr = load i8, ptr %i.hq, align 4             ; 2 uses
  %i.hs = and i8 %i.hr, 2
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.hu = load i8, ptr %i.ht, align 4
  %i.hv = and i8 %i.hu, 2
  %i.hw = and i8 %i.hr, -3
  %i.hx = or disjoint i8 %i.hv, %i.hw
  store i8 %i.hx, ptr %i.hq, align 4
  %i.hy = load i8, ptr %i.ht, align 4             ; 2 uses
  %i.hz = and i8 %i.hy, -3
  %i.ia = or disjoint i8 %i.hz, %i.hs
  store i8 %i.ia, ptr %i.ht, align 4
  %i.ib = load i8, ptr %i.hq, align 4             ; 2 uses
  %i.ic = and i8 %i.ib, 1
  %i.id = and i8 %i.hy, 1
  %i.ie = and i8 %i.ib, -2
  %i.if = or disjoint i8 %i.ie, %i.id
  store i8 %i.if, ptr %i.hq, align 4
  %i.ig = load i8, ptr %i.ht, align 4
  %i.ih = and i8 %i.ig, -2
  %i.ii = or disjoint i8 %i.ih, %i.ic
  store i8 %i.ii, ptr %i.ht, align 4
  %i.ij = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.il = load i32, ptr %i.ij, align 8, !tbaa !50
  %i.im = load i32, ptr %i.ik, align 8, !tbaa !50
  store i32 %i.im, ptr %i.ij, align 8, !tbaa !50
  store i32 %i.il, ptr %i.ik, align 8, !tbaa !50
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ip = load ptr, ptr %i.in, align 8, !tbaa !59
  %i.iq = load ptr, ptr %i.io, align 8, !tbaa !59
  store ptr %i.iq, ptr %i.in, align 8, !tbaa !59
  store ptr %i.ip, ptr %i.io, align 8, !tbaa !59
  %i.ir = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.is = load i8, ptr %i.ir, align 4             ; 2 uses
  %i.it = and i8 %i.is, 2
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.iv = load i8, ptr %i.iu, align 4
  %i.iw = and i8 %i.iv, 2
  %i.ix = and i8 %i.is, -3
  %i.iy = or disjoint i8 %i.iw, %i.ix
  store i8 %i.iy, ptr %i.ir, align 4
  %i.iz = load i8, ptr %i.iu, align 4             ; 2 uses
  %i.ja = and i8 %i.iz, -3
  %i.jb = or disjoint i8 %i.ja, %i.it
  store i8 %i.jb, ptr %i.iu, align 4
  %i.jc = load i8, ptr %i.ir, align 4             ; 2 uses
  %i.jd = and i8 %i.jc, 1
  %i.je = and i8 %i.iz, 1
  %i.jf = and i8 %i.jc, -2
  %i.jg = or disjoint i8 %i.jf, %i.je
  store i8 %i.jg, ptr %i.ir, align 4
  %i.jh = load i8, ptr %i.iu, align 4
  %i.ji = and i8 %i.jh, -2
  %i.jj = or disjoint i8 %i.ji, %i.jd
  store i8 %i.jj, ptr %i.iu, align 4
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !50
  %i.jm = load i32, ptr %i.aq, align 8, !tbaa !50
  store i32 %i.jm, ptr %i.jk, align 8, !tbaa !50
  store i32 %i.jl, ptr %i.aq, align 8, !tbaa !50
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.jp = load ptr, ptr %i.jn, align 8, !tbaa !59
  %i.jq = load ptr, ptr %i.jo, align 8, !tbaa !59
  store ptr %i.jq, ptr %i.jn, align 8, !tbaa !59
  store ptr %i.jp, ptr %i.jo, align 8, !tbaa !59
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 4 uses
  %i.js = load i8, ptr %i.jr, align 4             ; 2 uses
  %i.jt = and i8 %i.js, 2
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 5 uses
  %i.jv = load i8, ptr %i.ju, align 4
  %i.jw = and i8 %i.jv, 2
  %i.jx = and i8 %i.js, -3
  %i.jy = or disjoint i8 %i.jw, %i.jx
  store i8 %i.jy, ptr %i.jr, align 4
  %i.jz = load i8, ptr %i.ju, align 4             ; 2 uses
  %i.ka = and i8 %i.jz, -3
  %i.kb = or disjoint i8 %i.ka, %i.jt
  store i8 %i.kb, ptr %i.ju, align 4
  %i.kc = load i8, ptr %i.jr, align 4             ; 2 uses
  %i.kd = and i8 %i.kc, 1
  %i.ke = and i8 %i.jz, 1
  %i.kf = and i8 %i.kc, -2
  %i.kg = or disjoint i8 %i.kf, %i.ke
  store i8 %i.kg, ptr %i.jr, align 4
  %i.kh = load i8, ptr %i.ju, align 4
  %i.ki = and i8 %i.kh, -2
  %i.kj = or disjoint i8 %i.ki, %i.kd
  store i8 %i.kj, ptr %i.ju, align 4
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.km = load i32, ptr %i.kk, align 8, !tbaa !50
  %i.kn = load i32, ptr %i.kl, align 8, !tbaa !50
  store i32 %i.kn, ptr %i.kk, align 8, !tbaa !50
  store i32 %i.km, ptr %i.kl, align 8, !tbaa !50
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.kq = load ptr, ptr %i.ko, align 8, !tbaa !59
  %i.kr = load ptr, ptr %i.kp, align 8, !tbaa !59
  store ptr %i.kr, ptr %i.ko, align 8, !tbaa !59
  store ptr %i.kq, ptr %i.kp, align 8, !tbaa !59
  %i.ks = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 4 uses
  %i.kt = load i8, ptr %i.ks, align 4             ; 2 uses
  %i.ku = and i8 %i.kt, 2
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  %i.kw = load i8, ptr %i.kv, align 4
  %i.kx = and i8 %i.kw, 2
  %i.ky = and i8 %i.kt, -3
  %i.kz = or disjoint i8 %i.kx, %i.ky
  store i8 %i.kz, ptr %i.ks, align 4
  %i.la = load i8, ptr %i.kv, align 4             ; 2 uses
  %i.lb = and i8 %i.la, -3
  %i.lc = or disjoint i8 %i.lb, %i.ku
  store i8 %i.lc, ptr %i.kv, align 4
  %i.ld = load i8, ptr %i.ks, align 4             ; 2 uses
  %i.le = and i8 %i.ld, 1
  %i.lf = and i8 %i.la, 1
  %i.lg = and i8 %i.ld, -2
  %i.lh = or disjoint i8 %i.lg, %i.lf
  store i8 %i.lh, ptr %i.ks, align 4
  %i.li = load i8, ptr %i.kv, align 4
  %i.lj = and i8 %i.li, -2
  %i.lk = or disjoint i8 %i.lj, %i.le
  store i8 %i.lk, ptr %i.kv, align 4
  %i.ll = load i32, ptr %i.a, align 4, !tbaa !61
  %i.lm = icmp eq i32 %i.ll, 0
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.lo = load i8, ptr %i.ln, align 8
  %i.lp = select i1 %i.lm, i8 4, i8 0
  %i.lq = and i8 %i.lo, -13
  %i.lr = or disjoint i8 %i.lq, %i.lp
  %i.ls = load i32, ptr %i.b, align 4, !tbaa !61
  %i.lt = icmp eq i32 %i.ls, 2
  %i.lu = select i1 %i.lt, i8 8, i8 0
  %i.lv = or disjoint i8 %i.lr, %i.lu
  store i8 %i.lv, ptr %i.ln, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN16interval_managerIN13dep_intervals9im_configEE5powerERKNS1_8intervalEjRS3_R26interval_deps_combine_rule(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 2 dereferenceable(4) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i16 1, ptr %4, align 2, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 2, ptr %i.b, align 2, !tbaa !67
  br label %_ZN16interval_managerIN13dep_intervals9im_configEE9power_jstERKNS1_8intervalEjR26interval_deps_combine_rule.exit

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %2, 1
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.f = load i8, ptr %i.e, align 8               ; 2 uses
  %i.g = and i8 %i.f, 4
  %.not.i.i.i = icmp eq i8 %i.g, 0                ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %1, align 8
  %i.i = icmp sgt i32 %i.h, 0
  %i.j = select i1 %.not.i.i.i, i1 %i.i, i1 false
  br i1 %i.j, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  store i16 1, ptr %4, align 2, !tbaa !66
  %i.k = load i8, ptr %i.e, align 8
  %i.l = and i8 %i.k, 8
  %.not25.i = icmp eq i8 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  br i1 %.not25.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i16 0, ptr %i.m, align 2, !tbaa !67
  br label %_ZN16interval_managerIN13dep_intervals9im_configEE9power_jstERKNS1_8intervalEjR26interval_deps_combine_rule.exit

bb.g:                                             ; preds = %bb.e
  store i16 3, ptr %i.m, align 2, !tbaa !67
  br label %_ZN16interval_managerIN13dep_intervals9im_configEE9power_jstERKNS1_8intervalEjR26interval_deps_combine_rule.exit

bb.h:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = and i8 %i.f, 8
  %.not.i.i22.i = icmp eq i8 %i.o, 0
  %i.p = load i32, ptr %i.n, align 8
  %i.q = icmp slt i32 %i.p, 0
  %i.r = select i1 %.not.i.i22.i, i1 %i.q, i1 false
  br i1 %i.r, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  store i16 2, ptr %4, align 2, !tbaa !66
  %i.s = load i8, ptr %i.e, align 8
  %i.t = and i8 %i.s, 4
  %.not24.i = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  br i1 %.not24.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i16 0, ptr %i.u, align 2, !tbaa !67
  br label %_ZN16interval_managerIN13dep_intervals9im_configEE9power_jstERKNS1_8intervalEjR26interval_deps_combine_rule.exit

bb.k:                                             ; preds = %bb.i
  store i16 3, ptr %i.u, align 2, !tbaa !67
  br label %_ZN16interval_managerIN13dep_intervals9im_configEE9power_jstERKNS1_8intervalEjR26interval_deps_combine_rule.exit

bb.l:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 3, ptr %i.v, align 2, !tbaa !67
  store i16 0, ptr %4, align 2, !tbaa !66
  br label %_ZN16interval_managerIN13dep_intervals9im_configEE9power_jstERKNS1_8intervalEjR26interval_deps_combine_rule.exit

bb.m:                                             ; preds = %bb.c
  %..i = zext i1 %.not.i.i.i to i16
  store i16 %..i, ptr %4, align 2, !tbaa !66
  %i.w = load i8, ptr %i.e, align 8
  %i.x = and i8 %i.w, 8
  %.not23.i = icmp eq i8 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  br i1 %.not23.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i16 0, ptr %i.y, align 2, !tbaa !67
  br label %_ZN16interval_managerIN13dep_intervals9im_configEE9power_jstERKNS1_8intervalEjR26interval_deps_combine_rule.exit

bb.o:                                             ; preds = %bb.m
  store i16 2, ptr %i.y, align 2, !tbaa !67
  br label %_ZN16interval_managerIN13dep_intervals9im_configEE9power_jstERKNS1_8intervalEjR26interval_deps_combine_rule.exit

_ZN16interval_managerIN13dep_intervals9im_configEE9power_jstERKNS1_8intervalEjR26interval_deps_combine_rule.exit: ; preds = %bb.b, %bb.f, %bb.g, %bb.j, %bb.k, %bb.l, %bb.n, %bb.o
  tail call void @_ZN16interval_managerIN13dep_intervals9im_configEE5powerERKNS1_8intervalEjRS3_(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(88) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN16interval_managerIN13dep_intervals9im_configEE9power_jstERKNS1_8intervalEjR26interval_deps_combine_rule(ptr noundef nonnull align 8 dereferenceable(672) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i32 noundef %2, ptr noundef nonnull align 2 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i16 1, ptr %3, align 2, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 2, ptr %i.b, align 2, !tbaa !67
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %2, 1
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.f = load i8, ptr %i.e, align 8               ; 2 uses
  %i.g = and i8 %i.f, 4
  %.not.i.i = icmp eq i8 %i.g, 0                  ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %1, align 8
  %i.i = icmp sgt i32 %i.h, 0
  %i.j = select i1 %.not.i.i, i1 %i.i, i1 false
  br i1 %i.j, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  store i16 1, ptr %3, align 2, !tbaa !66
  %i.k = load i8, ptr %i.e, align 8
  %i.l = and i8 %i.k, 8
  %.not25 = icmp eq i8 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i16 0, ptr %i.m, align 2, !tbaa !67
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  store i16 3, ptr %i.m, align 2, !tbaa !67
  br label %bb.p

bb.h:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = and i8 %i.f, 8
  %.not.i.i22 = icmp eq i8 %i.o, 0
  %i.p = load i32, ptr %i.n, align 8
  %i.q = icmp slt i32 %i.p, 0
  %i.r = select i1 %.not.i.i22, i1 %i.q, i1 false
  br i1 %i.r, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  store i16 2, ptr %3, align 2, !tbaa !66
  %i.s = load i8, ptr %i.e, align 8
  %i.t = and i8 %i.s, 4
  %.not24 = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  br i1 %.not24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i16 0, ptr %i.u, align 2, !tbaa !67
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  store i16 3, ptr %i.u, align 2, !tbaa !67
  br label %bb.p

bb.l:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 3, ptr %i.v, align 2, !tbaa !67
  store i16 0, ptr %3, align 2, !tbaa !66
  br label %bb.p

bb.m:                                             ; preds = %bb.c
  %. = zext i1 %.not.i.i to i16
  store i16 %., ptr %3, align 2, !tbaa !66
  %i.w = load i8, ptr %i.e, align 8
  %i.x = and i8 %i.w, 8
  %.not23 = icmp eq i8 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  br i1 %.not23, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i16 0, ptr %i.y, align 2, !tbaa !67
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store i16 2, ptr %i.y, align 2, !tbaa !67
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.f, %bb.g, %bb.o, %bb.n, %bb.b
  ret void
}

end_hunk_2
begin_hunk_3_@_ZN16interval_managerIN13dep_intervals9im_configEE3divERKNS1_8intervalES5_RS3_:bb.a
  %i.ff = load i8, ptr %i.fe, align 4
  %i.fg = and i8 %i.ff, -2
  store i8 %i.fg, ptr %i.fe, align 4
  store i32 0, ptr %i.a, align 4, !tbaa !61
  br label %bb.s

bb.r:                                             ; preds = %_ZNK16interval_managerIN13dep_intervals9im_configEE5is_N1ERKNS1_8intervalE.exit162.thread
  call void @_Z3divI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fh = load ptr, ptr %i.ez, align 8, !tbaa !12, !nonnull !13, !align !14
  call void @_Z3divI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.v

_ZNK16interval_managerIN13dep_intervals9im_configEE5is_N1ERKNS1_8intervalE.exit162.thread168: ; preds = %bb.p
  %.not182 = xor i1 %i.h, true
  %i.fi = and i1 %i.as, %.not182
  %i.fj = or i1 %i.fi, %i.an
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.fl = zext i1 %i.fj to i8
  %i.fm = load i8, ptr %i.fk, align 8
  %i.fn = and i8 %i.fm, -4
  %i.fo = or i1 %i.ap, %i.aq
  %i.fp = select i1 %i.fo, i8 2, i8 0
  %i.fq = or disjoint i8 %i.fp, %i.fl
  %i.fr = or disjoint i8 %i.fq, %i.fn
  store i8 %i.fr, ptr %i.fk, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !12, !nonnull !13, !align !14
  call void @_Z3divI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i32 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.fu = load i32, ptr %2, align 8, !tbaa !17
  %i.fv = icmp eq i32 %i.fu, 0
  %i.fw = load ptr, ptr %i.fs, align 8, !tbaa !12, !nonnull !13, !align !14 ; 3 uses
  br i1 %i.fv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK16interval_managerIN13dep_intervals9im_configEE5is_N1ERKNS1_8intervalE.exit162.thread168
  call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.fw, ptr noundef nonnull align 8 dereferenceable(16) %i.fx)
  store i32 1, ptr %i.fx, align 8, !tbaa !17
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 4
  %i.ga = and i8 %i.fz, -2
  store i8 %i.ga, ptr %i.fy, align 4
  store i32 2, ptr %i.b, align 4, !tbaa !61
  br label %bb.v

bb.u:                                             ; preds = %_ZNK16interval_managerIN13dep_intervals9im_configEE5is_N1ERKNS1_8intervalE.exit162.thread168
  call void @_Z3divI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %bb.o, %bb.l, %bb.m, %bb.t, %bb.u, %bb.s, %bb.h, %bb.e, %bb.d
  %i.gb = load i32, ptr %3, align 8, !tbaa !50
  %i.gc = load i32, ptr %i.at, align 8, !tbaa !50
  store i32 %i.gc, ptr %3, align 8, !tbaa !50
  store i32 %i.gb, ptr %i.at, align 8, !tbaa !50
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gf = load ptr, ptr %i.gd, align 8, !tbaa !59
  %i.gg = load ptr, ptr %i.ge, align 8, !tbaa !59
  store ptr %i.gg, ptr %i.gd, align 8, !tbaa !59
  store ptr %i.gf, ptr %i.ge, align 8, !tbaa !59
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.gi = load i8, ptr %i.gh, align 4             ; 2 uses
  %i.gj = and i8 %i.gi, 2
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.gl = load i8, ptr %i.gk, align 4
  %i.gm = and i8 %i.gl, 2
  %i.gn = and i8 %i.gi, -3
  %i.go = or disjoint i8 %i.gm, %i.gn
  store i8 %i.go, ptr %i.gh, align 4
  %i.gp = load i8, ptr %i.gk, align 4             ; 2 uses
  %i.gq = and i8 %i.gp, -3
  %i.gr = or disjoint i8 %i.gq, %i.gj
  store i8 %i.gr, ptr %i.gk, align 4
  %i.gs = load i8, ptr %i.gh, align 4             ; 2 uses
  %i.gt = and i8 %i.gs, 1
  %i.gu = and i8 %i.gp, 1
  %i.gv = and i8 %i.gs, -2
  %i.gw = or disjoint i8 %i.gv, %i.gu
  store i8 %i.gw, ptr %i.gh, align 4
  %i.gx = load i8, ptr %i.gk, align 4
  %i.gy = and i8 %i.gx, -2
  %i.gz = or disjoint i8 %i.gy, %i.gt
  store i8 %i.gz, ptr %i.gk, align 4
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hc = load i32, ptr %i.ha, align 8, !tbaa !50
  %i.hd = load i32, ptr %i.hb, align 8, !tbaa !50
  store i32 %i.hd, ptr %i.ha, align 8, !tbaa !50
  store i32 %i.hc, ptr %i.hb, align 8, !tbaa !50
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hg = load ptr, ptr %i.he, align 8, !tbaa !59
  %i.hh = load ptr, ptr %i.hf, align 8, !tbaa !59
  store ptr %i.hh, ptr %i.he, align 8, !tbaa !59
  store ptr %i.hg, ptr %i.hf, align 8, !tbaa !59
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.hj = load i8, ptr %i.hi, align 4             ; 2 uses
  %i.hk = and i8 %i.hj, 2
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.hm = load i8, ptr %i.hl, align 4
  %i.hn = and i8 %i.hm, 2
  %i.ho = and i8 %i.hj, -3
  %i.hp = or disjoint i8 %i.hn, %i.ho
  store i8 %i.hp, ptr %i.hi, align 4
  %i.hq = load i8, ptr %i.hl, align 4             ; 2 uses
  %i.hr = and i8 %i.hq, -3
  %i.hs = or disjoint i8 %i.hr, %i.hk
  store i8 %i.hs, ptr %i.hl, align 4
  %i.ht = load i8, ptr %i.hi, align 4             ; 2 uses
  %i.hu = and i8 %i.ht, 1
  %i.hv = and i8 %i.hq, 1
  %i.hw = and i8 %i.ht, -2
  %i.hx = or disjoint i8 %i.hw, %i.hv
  store i8 %i.hx, ptr %i.hi, align 4
  %i.hy = load i8, ptr %i.hl, align 4
  %i.hz = and i8 %i.hy, -2
  %i.ia = or disjoint i8 %i.hz, %i.hu
  store i8 %i.ia, ptr %i.hl, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !50
  %i.id = load i32, ptr %i.au, align 8, !tbaa !50
  store i32 %i.id, ptr %i.ib, align 8, !tbaa !50
  store i32 %i.ic, ptr %i.au, align 8, !tbaa !50
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ig = load ptr, ptr %i.ie, align 8, !tbaa !59
  %i.ih = load ptr, ptr %i.if, align 8, !tbaa !59
  store ptr %i.ih, ptr %i.ie, align 8, !tbaa !59
  store ptr %i.ig, ptr %i.if, align 8, !tbaa !59
  %i.ii = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 4 uses
  %i.ij = load i8, ptr %i.ii, align 4             ; 2 uses
  %i.ik = and i8 %i.ij, 2
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 5 uses
  %i.im = load i8, ptr %i.il, align 4
  %i.in = and i8 %i.im, 2
  %i.io = and i8 %i.ij, -3
  %i.ip = or disjoint i8 %i.in, %i.io
  store i8 %i.ip, ptr %i.ii, align 4
  %i.iq = load i8, ptr %i.il, align 4             ; 2 uses
  %i.ir = and i8 %i.iq, -3
  %i.is = or disjoint i8 %i.ir, %i.ik
  store i8 %i.is, ptr %i.il, align 4
  %i.it = load i8, ptr %i.ii, align 4             ; 2 uses
  %i.iu = and i8 %i.it, 1
  %i.iv = and i8 %i.iq, 1
  %i.iw = and i8 %i.it, -2
  %i.ix = or disjoint i8 %i.iw, %i.iv
  store i8 %i.ix, ptr %i.ii, align 4
  %i.iy = load i8, ptr %i.il, align 4
  %i.iz = and i8 %i.iy, -2
  %i.ja = or disjoint i8 %i.iz, %i.iu
  store i8 %i.ja, ptr %i.il, align 4
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.jd = load i32, ptr %i.jb, align 8, !tbaa !50
  %i.je = load i32, ptr %i.jc, align 8, !tbaa !50
  store i32 %i.je, ptr %i.jb, align 8, !tbaa !50
  store i32 %i.jd, ptr %i.jc, align 8, !tbaa !50
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.jh = load ptr, ptr %i.jf, align 8, !tbaa !59
  %i.ji = load ptr, ptr %i.jg, align 8, !tbaa !59
  store ptr %i.ji, ptr %i.jf, align 8, !tbaa !59
  store ptr %i.jh, ptr %i.jg, align 8, !tbaa !59
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 4 uses
  %i.jk = load i8, ptr %i.jj, align 4             ; 2 uses
  %i.jl = and i8 %i.jk, 2
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  %i.jn = load i8, ptr %i.jm, align 4
  %i.jo = and i8 %i.jn, 2
  %i.jp = and i8 %i.jk, -3
  %i.jq = or disjoint i8 %i.jo, %i.jp
  store i8 %i.jq, ptr %i.jj, align 4
  %i.jr = load i8, ptr %i.jm, align 4             ; 2 uses
  %i.js = and i8 %i.jr, -3
  %i.jt = or disjoint i8 %i.js, %i.jl
  store i8 %i.jt, ptr %i.jm, align 4
  %i.ju = load i8, ptr %i.jj, align 4             ; 2 uses
  %i.jv = and i8 %i.ju, 1
  %i.jw = and i8 %i.jr, 1
  %i.jx = and i8 %i.ju, -2
  %i.jy = or disjoint i8 %i.jx, %i.jw
  store i8 %i.jy, ptr %i.jj, align 4
  %i.jz = load i8, ptr %i.jm, align 4
  %i.ka = and i8 %i.jz, -2
  %i.kb = or disjoint i8 %i.ka, %i.jv
  store i8 %i.kb, ptr %i.jm, align 4
  %i.kc = load i32, ptr %i.a, align 4, !tbaa !61
  %i.kd = icmp eq i32 %i.kc, 0
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.kf = load i8, ptr %i.ke, align 8
  %i.kg = select i1 %i.kd, i8 4, i8 0
  %i.kh = and i8 %i.kf, -13
  %i.ki = or disjoint i8 %i.kh, %i.kg
  %i.kj = load i32, ptr %i.b, align 4, !tbaa !61
  %i.kk = icmp eq i32 %i.kj, 2
  %i.kl = select i1 %i.kk, i8 8, i8 0
  %i.km = or disjoint i8 %i.ki, %i.kl
  store i8 %i.km, ptr %i.ke, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z3divI11mpq_managerILb0EEEvRT_RKNS2_7numeralE16ext_numeral_kindS6_S7_RS4_RS7_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %2, 1
  %i.b = load i32, ptr %1, align 8
  %i.c = icmp eq i32 %i.b, 0
  %i.d = select i1 %i.a, i1 %i.c, i1 false
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  store i32 1, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -2
  store i8 %i.h, ptr %i.f, align 4
  store i32 1, ptr %6, align 4, !tbaa !61
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  switch i32 %2, label %.fold.split.i [
    i32 1, label %bb.e
    i32 2, label %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit
  ]

.fold.split.i:                                    ; preds = %bb.c
  br label %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit

_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit: ; preds = %bb.c, %.fold.split.i
  %i.i = phi i1 [ true, %bb.c ], [ false, %.fold.split.i ]
  switch i32 %4, label %.fold.split.i25 [
    i32 2, label %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit26
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit
  %i.j = load i32, ptr %3, align 8, !tbaa !17
  %i.k = icmp sgt i32 %i.j, 0
  br label %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit26

.fold.split.i25:                                  ; preds = %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit
  br label %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit26

_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit26: ; preds = %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit, %bb.d, %.fold.split.i25
  %i.l = phi i1 [ true, %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit ], [ %i.k, %bb.d ], [ false, %.fold.split.i25 ]
  %i.m = xor i1 %i.i, %i.l
  %. = select i1 %i.m, i32 0, i32 2
  store i32 %., ptr %6, align 4, !tbaa !61
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  store i32 1, ptr %i.n, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, -2
  store i8 %i.q, ptr %i.o, align 4
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  store i32 1, ptr %i.r, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4
  %i.u = and i8 %i.t, -2
  store i8 %i.u, ptr %i.s, align 4
  store i32 1, ptr %6, align 4, !tbaa !61
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 1, ptr %6, align 4, !tbaa !61
  tail call void @_ZN11mpq_managerILb0EE3divERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %bb.h

bb.h:                                             ; preds = %_Z6is_posI11mpq_managerILb0EEEbRT_RKNS2_7numeralE16ext_numeral_kind.exit26, %bb.g, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN16interval_managerIN13dep_intervals9im_configEE2piEjRNS1_8intervalE(ptr noundef nonnull align 8 dereferenceable(672) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class._scoped_numeral, align 8     ; 12 uses
  %4 = alloca %class._scoped_numeral, align 8     ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12, !nonnull !13, !align !14 ; 7 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = and i8 %i.e, -4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 5 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, -4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr null, ptr %i.l, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %i.b, ptr %4, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  store i32 0, ptr %i.m, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, -4
  store i8 %i.p, ptr %i.n, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.q, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  store i32 1, ptr %i.r, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 5 uses
  %i.t = load i8, ptr %i.s, align 4
  %i.u = and i8 %i.t, -4
  store i8 %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr null, ptr %i.v, align 8, !tbaa !18
  store i32 1, ptr %i.c, align 8, !tbaa !17
  store i8 %i.f, ptr %i.d, align 4
  store i32 16, ptr %i.h, align 8, !tbaa !17
  store i8 %i.k, ptr %i.i, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 600 ; 4 uses
  invoke void @_ZN11mpz_managerILb0EE3gcdERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 604
  %i.y = load i8, ptr %i.x, align 4
  %i.z = and i8 %i.y, 1
  %i.aa = icmp eq i8 %i.z, 0
  %i.ab = load i32, ptr %i.w, align 8
  %i.ac = icmp eq i32 %i.ab, 1
  %i.ad = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc
  invoke void @_ZN11mpz_managerILb0EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.b
  invoke void @_ZN11mpz_managerILb0EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %.noexc42, %.noexc
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !12, !nonnull !13, !align !14
  invoke void @_ZN11mpq_managerILb0EE5powerERK3mpqjRS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !12, !nonnull !13, !align !14 ; 5 uses
  store i32 1, ptr %i.m, align 8, !tbaa !17
  %i.ag = load i8, ptr %i.n, align 4
  %i.ah = and i8 %i.ag, -2
  store i8 %i.ah, ptr %i.n, align 4
  store i32 15, ptr %i.r, align 8, !tbaa !17
  %i.ai = load i8, ptr %i.s, align 4
  %i.aj = and i8 %i.ai, -2
  store i8 %i.aj, ptr %i.s, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 600 ; 4 uses
  invoke void @_ZN11mpz_managerILb0EE3gcdERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.ak)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 604
  %i.am = load i8, ptr %i.al, align 4
  %i.an = and i8 %i.am, 1
  %i.ao = icmp eq i8 %i.an, 0
  %i.ap = load i32, ptr %i.ak, align 8
  %i.aq = icmp eq i32 %i.ap, 1
  %i.ar = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %i.ar, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc44
  invoke void @_ZN11mpz_managerILb0EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.e
  invoke void @_ZN11mpz_managerILb0EE3divERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %.noexc45, %.noexc44
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !12, !nonnull !13, !align !14 ; 3 uses
  %i.at = load i8, ptr %i.s, align 4
  %i.au = and i8 %i.at, 1
end_hunk_3
