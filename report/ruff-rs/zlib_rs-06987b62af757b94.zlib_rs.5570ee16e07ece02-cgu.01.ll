inline.NumInlined: 75
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvNtCs7kNFBubu20U_7zlib_rs7inflate5reset:bb.a
  store i64 -1, ptr %i.ac, align 8, !noalias !89
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 -5, 3) i32 @_RNvNtCs7kNFBubu20U_7zlib_rs7inflate7inflate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %0, i8 noundef range(i8 0, 7) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.100.i.i = alloca [7 x i8], align 1       ; 18 uses
  %i.a = alloca [24 x i8], align 8                ; 22 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [80 x i8], align 16               ; 4 uses
  %i.f = alloca [2 x i8], align 2                 ; 4 uses
  %i.g = alloca [2 x i8], align 2                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [2 x i8], align 2                 ; 4 uses
  %i.j = alloca [2 x i8], align 1                 ; 5 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !noundef !4   ; 3 uses
  %i.p = icmp ne ptr %i.o, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  %or.cond7 = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !align !9, !noundef !4 ; 67 uses
  %i.v = load i8, ptr %i.u, align 64, !range !78, !noundef !4 ; 2 uses
  %i.w = icmp eq i8 %i.v, 12
  br i1 %i.w, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.mw
  %.sroa.0.0 = phi i32 [ %spec.store.select, %bb.mw ], [ -2, %bb.b ], [ -2, %bb.a ]
  ret i32 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  store i8 13, ptr %i.u, align 64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.x = phi i8 [ 13, %bb.e ], [ %i.v, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 5 uses
  store i8 %1, ptr %i.y, align 4
  %i.z = zext i32 %i.r to i64                     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.o, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 102 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 145 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 104 ; 108 uses
  store ptr %i.o, ptr %i.ab, align 16
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 88 ; 48 uses
  store ptr %i.aa, ptr %.sroa.423.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !noundef !4
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 112 ; 22 uses
  store ptr %i.m, ptr %i.ah, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 120 ; 9 uses
  store i64 %i.ag, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 11 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 192 ; 5 uses
  store i64 %i.z, ptr %i.ai, align 64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 200 ; 4 uses
  store i64 %i.ag, ptr %i.aj, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 212 ; 24 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 336 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 344 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 11024 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 5696 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 368 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 13392 ; 14 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 13904
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 14032 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 72 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 352 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 360 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 152 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 144 ; 29 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 160 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 168 ; 12 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 176 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 105 ; 14 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 304 ; 25 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 312 ; 25 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 3 ; 14 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 208 ; 18 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 224 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 320 ; 14 uses
  %.sroa.096.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 240
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 2 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.u, i64 328
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.f
  %.sroa.06.0.i = phi i8 [ %i.x, %bb.f ], [ %.sroa.06.0.i.be, %.backedge.i.backedge ] ; 4 uses
  switch i8 %.sroa.06.0.i, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.l
    i8 3, label %bb.t
    i8 4, label %bb.x
    i8 5, label %bb.y
    i8 6, label %bb.z
    i8 7, label %bb.aa
    i8 8, label %bb.ab
    i8 9, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit.loopexit1607
    i8 10, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit.loopexit2071
    i8 11, label %bb.ac
    i8 12, label %bb.ad
    i8 13, label %bb.ae
    i8 14, label %bb.af
    i8 15, label %.preheader449.i
    i8 16, label %bb.an
    i8 17, label %.backedge.i.backedge
    i8 18, label %bb.ao
    i8 19, label %bb.cq
    i8 20, label %bb.cr
    i8 21, label %.preheader458.i
    i8 22, label %bb.cs
    i8 23, label %.preheader460.i
    i8 24, label %bb.ct
    i8 25, label %.preheader464.i
    i8 26, label %.preheader465.i
    i8 27, label %bb.cx
    i8 28, label %bb.df
    i8 29, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit
    i8 30, label %bb.dg
  ]

.preheader465.i:                                  ; preds = %.backedge.i
  %i.cb = load i64, ptr %i.am, align 64, !alias.scope !92, !noundef !4 ; 2 uses
  %i.cc = load i64, ptr %i.an, align 16, !alias.scope !92, !noundef !4 ; 3 uses
  %i.cd = load i64, ptr %i.ao, align 8, !alias.scope !92, !noundef !4 ; 2 uses
  %i.ce = add i64 %i.cd, %i.cc                    ; 2 uses
  %i.cf = icmp ult i64 %i.cb, %i.ce
  br i1 %i.cf, label %.preheader448.i.preheader, label %._crit_edge1015.i

.preheader448.i.preheader:                        ; preds = %.preheader465.i
  %.promoted = load i64, ptr %i.ac, align 32, !alias.scope !92
  br label %.preheader448.i

.preheader464.i:                                  ; preds = %.backedge.i
  %i.cg = load i64, ptr %i.be, align 8, !alias.scope !92, !noundef !4 ; 3 uses
  %.promoted1021.i = load i64, ptr %i.am, align 64, !alias.scope !92 ; 4 uses
  %i.ch = icmp ult i64 %.promoted1021.i, %i.cg
  br i1 %i.ch, label %.lr.ph1022.i, label %.preheader463.i

.lr.ph1022.i:                                     ; preds = %.preheader464.i
  %.promoted1025.i = load i8, ptr %i.ad, align 8, !alias.scope !92
  %umax.i = call i64 @llvm.umax.i64(i64 %.promoted1021.i, i64 19) ; 2 uses
  br label %bb.kj

.preheader458.i:                                  ; preds = %.backedge.i
  %i.ci = load i64, ptr %i.bc, align 32, !alias.scope !92, !noundef !4
  %i.cj = and i64 %i.ci, 63
  %notmask291.i = shl nsw i64 -1, %i.cj
  %i.ck = xor i64 %notmask291.i, -1
  %i.cl = load i8, ptr %i.bd, align 8, !range !25, !alias.scope !92, !noundef !4 ; 2 uses
  %.promoted1041.i = load i64, ptr %i.ac, align 32, !alias.scope !92
  br label %.preheader458.split.i

.preheader449.i:                                  ; preds = %.backedge.i
  %i.cm = load i64, ptr %i.bi, align 16, !alias.scope !92, !noundef !4 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %.backedge.i.backedge, label %.lr.ph1088.preheader.i

.lr.ph1088.preheader.i:                           ; preds = %.preheader449.i
  %.pre1582.i = load i64, ptr %.sroa.5.0..sroa_idx, align 64, !alias.scope !92
  %.pre1583.i = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !alias.scope !92
  %.pre1584.i = load ptr, ptr %i.ab, align 16, !alias.scope !92
  br label %.lr.ph1088.i

default.unreachable:                              ; preds = %bb.hx, %bb.at, %._crit_edge774.i.i, %.backedge.i, %.preheader458.split.i, %bb.jk, %bb.kx
  unreachable

bb.g:                                             ; preds = %.backedge.i
  %i.co = load i8, ptr %i.bt, align 1, !alias.scope !92, !noundef !4 ; 3 uses
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %.backedge.i.backedge, label %bb.dh

bb.h:                                             ; preds = %.backedge.i
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %.promoted1119.i = load i8, ptr %i.ad, align 8, !alias.scope !98 ; 4 uses
  %i.cq = icmp ult i8 %.promoted1119.i, 16
  br i1 %i.cq, label %.lr.ph1121.i, label %.._crit_edge1122_crit_edge.i

.._crit_edge1122_crit_edge.i:                     ; preds = %bb.h
  %.pre1592.i = load i64, ptr %i.ac, align 32, !alias.scope !92
  br label %._crit_edge1122.i

.lr.ph1121.i:                                     ; preds = %bb.h
  %i.cr = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !alias.scope !98, !noundef !4 ; 2 uses
  %.promoted1123.i = load ptr, ptr %i.ab, align 16, !alias.scope !98 ; 4 uses
  %i.cs = zext nneg i8 %.promoted1119.i to i64    ; 2 uses
  %i.ct = icmp eq ptr %.promoted1123.i, %i.cr
  br i1 %i.ct, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph1121.i
  %i.cu = load i8, ptr %.promoted1123.i, align 1, !noalias !95, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %.promoted1123.i, i64 1 ; 3 uses
  store ptr %i.cv, ptr %i.ab, align 16, !alias.scope !98
  %i.cw = zext i8 %i.cu to i64
  %i.cx = shl nuw nsw i64 %i.cw, %i.cs
  %i.cy = load i64, ptr %i.ac, align 32, !alias.scope !98, !noundef !4
  %i.cz = or i64 %i.cy, %i.cx                     ; 2 uses
  store i64 %i.cz, ptr %i.ac, align 32, !alias.scope !98
  %indvars.iv.next1564.i = add nuw nsw i64 %i.cs, 8 ; 2 uses
  %i.da = trunc nuw nsw i64 %indvars.iv.next1564.i to i8
  store i8 %i.da, ptr %i.ad, align 8, !alias.scope !98
  %i.db = icmp ult i8 %.promoted1119.i, 8
  br i1 %i.db, label %bb.j, label %._crit_edge1122.i

bb.j:                                             ; preds = %bb.i
  %i.dc = icmp eq ptr %i.cv, %i.cr
  br i1 %i.dc, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = load i8, ptr %i.cv, align 1, !noalias !95, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %.promoted1123.i, i64 2
  store ptr %i.de, ptr %i.ab, align 16, !alias.scope !98
  %i.df = zext i8 %i.dd to i64
  %i.dg = shl nuw nsw i64 %i.df, %indvars.iv.next1564.i
  %i.dh = load i64, ptr %i.ac, align 32, !alias.scope !98, !noundef !4
  %i.di = or i64 %i.dh, %i.dg                     ; 2 uses
  store i64 %i.di, ptr %i.ac, align 32, !alias.scope !98
  %indvars.iv.next1564.i.1 = or disjoint i8 %.promoted1119.i, 16
  store i8 %indvars.iv.next1564.i.1, ptr %i.ad, align 8, !alias.scope !98
  br label %._crit_edge1122.i

bb.l:                                             ; preds = %.backedge.i
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %.promoted1114.i = load i8, ptr %i.ad, align 8, !alias.scope !102 ; 6 uses
  %i.dj = icmp ult i8 %.promoted1114.i, 32
  br i1 %i.dj, label %.lr.ph1116.i, label %._crit_edge1117.i

.lr.ph1116.i:                                     ; preds = %bb.l
  %i.dk = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !alias.scope !102, !noundef !4 ; 4 uses
  %.promoted1118.i = load ptr, ptr %i.ab, align 16, !alias.scope !102 ; 6 uses
  %i.dl = zext nneg i8 %.promoted1114.i to i64    ; 4 uses
  %i.dm = icmp eq ptr %.promoted1118.i, %i.dk
  br i1 %i.dm, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph1116.i
  %i.dn = load i8, ptr %.promoted1118.i, align 1, !noalias !99, !noundef !4
  %i.do = getelementptr inbounds nuw i8, ptr %.promoted1118.i, i64 1 ; 3 uses
  store ptr %i.do, ptr %i.ab, align 16, !alias.scope !102
  %i.dp = zext i8 %i.dn to i64
  %i.dq = shl nuw nsw i64 %i.dp, %i.dl
  %i.dr = load i64, ptr %i.ac, align 32, !alias.scope !102, !noundef !4
  %i.ds = or i64 %i.dr, %i.dq
  store i64 %i.ds, ptr %i.ac, align 32, !alias.scope !102
  %indvars.iv.next1561.i = add nuw nsw i64 %i.dl, 8 ; 2 uses
  %i.dt = trunc nuw nsw i64 %indvars.iv.next1561.i to i8
  store i8 %i.dt, ptr %i.ad, align 8, !alias.scope !102
  %i.du = icmp ult i8 %.promoted1114.i, 24
  br i1 %i.du, label %bb.n, label %._crit_edge1117.i

bb.n:                                             ; preds = %bb.m
  %i.dv = icmp eq ptr %i.do, %i.dk
  br i1 %i.dv, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dw = load i8, ptr %i.do, align 1, !noalias !99, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %.promoted1118.i, i64 2 ; 3 uses
  store ptr %i.dx, ptr %i.ab, align 16, !alias.scope !102
  %i.dy = zext i8 %i.dw to i64
  %i.dz = shl nuw nsw i64 %i.dy, %indvars.iv.next1561.i
  %i.ea = load i64, ptr %i.ac, align 32, !alias.scope !102, !noundef !4
  %i.eb = or i64 %i.ea, %i.dz
  store i64 %i.eb, ptr %i.ac, align 32, !alias.scope !102
  %indvars.iv.next1561.i.1 = add nuw nsw i64 %i.dl, 16 ; 2 uses
  %i.ec = trunc nuw nsw i64 %indvars.iv.next1561.i.1 to i8
  store i8 %i.ec, ptr %i.ad, align 8, !alias.scope !102
  %i.ed = icmp ult i8 %.promoted1114.i, 16
  br i1 %i.ed, label %bb.p, label %._crit_edge1117.i

bb.p:                                             ; preds = %bb.o
  %i.ee = icmp eq ptr %i.dx, %i.dk
  br i1 %i.ee, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ef = load i8, ptr %i.dx, align 1, !noalias !99, !noundef !4
  %i.eg = getelementptr inbounds nuw i8, ptr %.promoted1118.i, i64 3 ; 3 uses
  store ptr %i.eg, ptr %i.ab, align 16, !alias.scope !102
  %i.eh = zext i8 %i.ef to i64
  %i.ei = shl nuw nsw i64 %i.eh, %indvars.iv.next1561.i.1
  %i.ej = load i64, ptr %i.ac, align 32, !alias.scope !102, !noundef !4
  %i.ek = or i64 %i.ej, %i.ei
  store i64 %i.ek, ptr %i.ac, align 32, !alias.scope !102
  %indvars.iv.next1561.i.2 = add nuw nsw i64 %i.dl, 24 ; 2 uses
  %i.el = trunc nuw nsw i64 %indvars.iv.next1561.i.2 to i8
  store i8 %i.el, ptr %i.ad, align 8, !alias.scope !102
  %i.em = icmp ult i8 %.promoted1114.i, 8
  br i1 %i.em, label %bb.r, label %._crit_edge1117.i

bb.r:                                             ; preds = %bb.q
  %i.en = icmp eq ptr %i.eg, %i.dk
  br i1 %i.en, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eo = load i8, ptr %i.eg, align 1, !noalias !99, !noundef !4
  %i.ep = getelementptr inbounds nuw i8, ptr %.promoted1118.i, i64 4
  store ptr %i.ep, ptr %i.ab, align 16, !alias.scope !102
  %i.eq = zext i8 %i.eo to i64
  %i.er = shl nuw nsw i64 %i.eq, %indvars.iv.next1561.i.2
  %i.es = load i64, ptr %i.ac, align 32, !alias.scope !102, !noundef !4
  %i.et = or i64 %i.es, %i.er
  store i64 %i.et, ptr %i.ac, align 32, !alias.scope !102
  %indvars.iv.next1561.i.3 = or disjoint i8 %.promoted1114.i, 32
  store i8 %indvars.iv.next1561.i.3, ptr %i.ad, align 8, !alias.scope !102
  br label %._crit_edge1117.i

bb.t:                                             ; preds = %.backedge.i
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %.promoted1109.i = load i8, ptr %i.ad, align 8, !alias.scope !106 ; 4 uses
  %i.eu = icmp ult i8 %.promoted1109.i, 16
  br i1 %i.eu, label %.lr.ph1111.i, label %._crit_edge1112.i

.lr.ph1111.i:                                     ; preds = %bb.t
  %i.ev = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !alias.scope !106, !noundef !4 ; 2 uses
  %.promoted1113.i = load ptr, ptr %i.ab, align 16, !alias.scope !106 ; 4 uses
  %i.ew = zext nneg i8 %.promoted1109.i to i64    ; 2 uses
  %i.ex = icmp eq ptr %.promoted1113.i, %i.ev
  br i1 %i.ex, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph1111.i
  %i.ey = load i8, ptr %.promoted1113.i, align 1, !noalias !103, !noundef !4
  %i.ez = getelementptr inbounds nuw i8, ptr %.promoted1113.i, i64 1 ; 3 uses
  store ptr %i.ez, ptr %i.ab, align 16, !alias.scope !106
  %i.fa = zext i8 %i.ey to i64
  %i.fb = shl nuw nsw i64 %i.fa, %i.ew
  %i.fc = load i64, ptr %i.ac, align 32, !alias.scope !106, !noundef !4
  %i.fd = or i64 %i.fc, %i.fb
  store i64 %i.fd, ptr %i.ac, align 32, !alias.scope !106
  %indvars.iv.next1558.i = add nuw nsw i64 %i.ew, 8 ; 2 uses
  %i.fe = trunc nuw nsw i64 %indvars.iv.next1558.i to i8
  store i8 %i.fe, ptr %i.ad, align 8, !alias.scope !106
  %i.ff = icmp ult i8 %.promoted1109.i, 8
  br i1 %i.ff, label %bb.v, label %._crit_edge1112.i

bb.v:                                             ; preds = %bb.u
  %i.fg = icmp eq ptr %i.ez, %i.ev
  br i1 %i.fg, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fh = load i8, ptr %i.ez, align 1, !noalias !103, !noundef !4
  %i.fi = getelementptr inbounds nuw i8, ptr %.promoted1113.i, i64 2
  store ptr %i.fi, ptr %i.ab, align 16, !alias.scope !106
  %i.fj = zext i8 %i.fh to i64
  %i.fk = shl nuw nsw i64 %i.fj, %indvars.iv.next1558.i
  %i.fl = load i64, ptr %i.ac, align 32, !alias.scope !106, !noundef !4
  %i.fm = or i64 %i.fl, %i.fk
  store i64 %i.fm, ptr %i.ac, align 32, !alias.scope !106
  %indvars.iv.next1558.i.1 = or disjoint i8 %.promoted1109.i, 16
  store i8 %indvars.iv.next1558.i.1, ptr %i.ad, align 8, !alias.scope !106
  br label %._crit_edge1112.i

bb.x:                                             ; preds = %.backedge.i
  %i.fn = load i32, ptr %i.bv, align 16, !alias.scope !92, !noundef !4 ; 2 uses
  %i.fo = and i32 %i.fn, 1024
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.eu, label %bb.ev

bb.y:                                             ; preds = %.backedge.i
  %i.fq = load i32, ptr %i.bv, align 16, !alias.scope !92, !noundef !4 ; 3 uses
  %i.fr = and i32 %i.fq, 1024
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.fg, label %bb.ff

bb.z:                                             ; preds = %.backedge.i
  %i.ft = load i32, ptr %i.bv, align 16, !alias.scope !92, !noundef !4 ; 3 uses
  %i.fu = and i32 %i.ft, 2048
  %i.fv = icmp eq i32 %i.fu, 0
end_hunk_0
begin_hunk_1_@_RNvNtCs7kNFBubu20U_7zlib_rs7inflate7inflate:bb.a

bb.ik:                                            ; preds = %bb.ij
  %i.amy = icmp eq ptr %i.amr, %i.ame
  br i1 %i.amy, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.amz = load i8, ptr %i.amr, align 1, !noalias !167, !noundef !4
  %i.ana = getelementptr inbounds nuw i8, ptr %.promoted1087.i, i64 3 ; 3 uses
  store ptr %i.ana, ptr %i.ab, align 16, !alias.scope !170
  %i.anb = zext i8 %i.amz to i64
  %i.anc = shl nuw nsw i64 %i.anb, %indvars.iv.next1547.i.1
  %i.and = load i64, ptr %i.ac, align 32, !alias.scope !170, !noundef !4
  %i.ane = or i64 %i.and, %i.anc
  store i64 %i.ane, ptr %i.ac, align 32, !alias.scope !170
  %indvars.iv.next1547.i.2 = add nuw nsw i64 %i.amf, 24 ; 2 uses
  %i.anf = trunc nuw nsw i64 %indvars.iv.next1547.i.2 to i8
  store i8 %i.anf, ptr %i.ad, align 8, !alias.scope !170
  %i.ang = icmp ult i8 %.promoted1083.i, 8
  br i1 %i.ang, label %bb.im, label %._crit_edge1086.i

bb.im:                                            ; preds = %bb.il
  %i.anh = icmp eq ptr %i.ana, %i.ame
  br i1 %i.anh, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.ani = load i8, ptr %i.ana, align 1, !noalias !167, !noundef !4
  %i.anj = getelementptr inbounds nuw i8, ptr %.promoted1087.i, i64 4
  store ptr %i.anj, ptr %i.ab, align 16, !alias.scope !170
  %i.ank = zext i8 %i.ani to i64
  %i.anl = shl nuw nsw i64 %i.ank, %indvars.iv.next1547.i.2
  %i.anm = load i64, ptr %i.ac, align 32, !alias.scope !170, !noundef !4
  %i.ann = or i64 %i.anm, %i.anl
  store i64 %i.ann, ptr %i.ac, align 32, !alias.scope !170
  %indvars.iv.next1547.i.3 = or disjoint i8 %.promoted1083.i, 32
  store i8 %indvars.iv.next1547.i.3, ptr %i.ad, align 8, !alias.scope !170
  br label %._crit_edge1086.i

._crit_edge1086.i:                                ; preds = %bb.ih, %bb.ij, %bb.il, %bb.in, %bb.ig
  %i.ano = load i64, ptr %.sroa.5.0..sroa_idx, align 64, !alias.scope !92, !noundef !4 ; 4 uses
  %i.anp = load i64, ptr %i.bu, align 8, !alias.scope !92, !noundef !4
  %i.anq = add i64 %i.anp, %i.ano
  store i64 %i.anq, ptr %i.bu, align 8, !alias.scope !92
  %i.anr = and i8 %i.hw, 4
  %i.ans = icmp eq i8 %i.anr, 0
  br i1 %i.ans, label %.thread, label %bb.io

.thread:                                          ; preds = %._crit_edge1086.i
  %i.ant = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !92, !noundef !4
  %i.anu = sub i64 %i.ant, %i.ano
  store i64 %i.anu, ptr %i.aj, align 8, !alias.scope !92
  br label %bb.it

bb.io:                                            ; preds = %._crit_edge1086.i
  %.pre965 = load i32, ptr %i.bv, align 16, !alias.scope !92
  %i.anv = icmp eq i32 %.pre965, 0
  br i1 %i.anv, label %bb.iq, label %bb.ir

bb.ip:                                            ; preds = %bb.iq, %bb.ir
  %.sink.i = phi i32 [ %i.aoc, %bb.iq ], [ %i.aof, %bb.ir ]
  store i32 %.sink.i, ptr %i.al, align 4, !alias.scope !92
  %.pre = load i32, ptr %i.bv, align 16, !alias.scope !92
  %.pre966 = load i64, ptr %.sroa.5.0..sroa_idx, align 64, !alias.scope !92
  %.pre967 = load i8, ptr %i.bt, align 1, !alias.scope !92
  %.pre968 = and i8 %.pre967, 4
  %i.anw = icmp eq i8 %.pre968, 0
  %i.anx = load i64, ptr %i.ac, align 32, !alias.scope !92, !noundef !4
  %i.any = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !92, !noundef !4
  %i.anz = sub i64 %i.any, %.pre966
  store i64 %i.anz, ptr %i.aj, align 8, !alias.scope !92
  br i1 %i.anw, label %bb.it, label %bb.is

bb.iq:                                            ; preds = %bb.io
  %i.aoa = load i32, ptr %i.al, align 4, !alias.scope !92, !noundef !4
  %i.aob = load ptr, ptr %i.ah, align 16, !alias.scope !92, !noundef !4
  %i.aoc = call noundef i32 @_RNvNtCs7kNFBubu20U_7zlib_rs7adler327adler32(i32 noundef %i.aoa, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aob, i64 noundef %i.ano)
  br label %bb.ip

bb.ir:                                            ; preds = %bb.io
  %i.aod = load ptr, ptr %i.ah, align 16, !alias.scope !92, !noundef !4
  %i.aoe = load i32, ptr %i.al, align 4, !alias.scope !92, !noundef !4
  call void @_RNvMs_NtCs7kNFBubu20U_7zlib_rs5crc32NtB4_9Crc32Fold4fold(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.bw, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aod, i64 noundef %i.ano, i32 noundef %i.aoe)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.e, ptr noundef nonnull align 32 dereferenceable(80) %i.bw, i64 80, i1 false)
  %i.aof = call noundef i32 @_RNvMs_NtCs7kNFBubu20U_7zlib_rs5crc32NtB4_9Crc32Fold6finish(ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(80) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !92
  br label %bb.ip

bb.is:                                            ; preds = %bb.ip
  %i.aog = icmp eq i32 %.pre, 0
  %i.aoh = trunc i64 %i.anx to i32                ; 2 uses
  %i.aoi = call i32 @llvm.bswap.i32(i32 %i.aoh)
  %.sroa.0111.0.i = select i1 %i.aog, i32 %i.aoi, i32 %i.aoh
  %i.aoj = load i32, ptr %i.al, align 4, !alias.scope !92, !noundef !4
  %.not299.i = icmp eq i32 %.sroa.0111.0.i, %i.aoj
  br i1 %.not299.i, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %.thread, %bb.is, %bb.ip
  store i64 0, ptr %i.ac, align 32, !alias.scope !92
  store i8 0, ptr %i.ad, align 8, !alias.scope !92
  br label %.backedge.i.backedge

bb.iu:                                            ; preds = %bb.is
  store ptr @52, ptr %i.br, align 16, !alias.scope !92
  store i64 21, ptr %i.bs, align 8, !alias.scope !92
  br label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit

bb.iv:                                            ; preds = %bb.cq
  %i.aok = icmp ult i64 %i.sf, %i.sg
  br i1 %i.aok, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.aol = load ptr, ptr %i.ah, align 16, !alias.scope !92, !noundef !4
  %i.aom = load i64, ptr %i.bi, align 16, !alias.scope !92, !noundef !4
  %i.aon = trunc i64 %i.aom to i8
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aol, i64 %i.sf
  store i8 %i.aon, ptr %i.aoo, align 1
  %i.aop = load i64, ptr %.sroa.5.0..sroa_idx, align 64, !alias.scope !92, !noundef !4
  %i.aoq = add i64 %i.aop, 1
  store i64 %i.aoq, ptr %.sroa.5.0..sroa_idx, align 64, !alias.scope !92
  br label %.backedge.i.backedge

bb.ix:                                            ; preds = %bb.iv
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.sf, i64 noundef %i.sg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #13
  unreachable

bb.iy:                                            ; preds = %._crit_edge1045.i, %._crit_edge1578.i
  %i.aor = phi i64 [ %.pre1579.i, %._crit_edge1578.i ], [ %i.apq, %._crit_edge1045.i ]
  store i64 %i.aor, ptr %i.bo, align 16, !alias.scope !92
  br label %.backedge.i.backedge

bb.iz:                                            ; preds = %bb.cr
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %.promoted1042.i = load i8, ptr %i.ad, align 8, !alias.scope !174 ; 3 uses
  %i.aos = zext i8 %.promoted1042.i to i64
  %i.aot = icmp ugt i64 %i.si, %i.aos
  br i1 %i.aot, label %.lr.ph1044.i, label %.._crit_edge1045_crit_edge.i

.._crit_edge1045_crit_edge.i:                     ; preds = %bb.iz
  %.pre1577.i = load i64, ptr %i.ac, align 32, !alias.scope !92
  br label %._crit_edge1045.i

.lr.ph1044.i:                                     ; preds = %bb.iz
  %i.aou = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !alias.scope !174, !noundef !4 ; 2 uses
  %.promoted1046.i = load ptr, ptr %i.ab, align 16, !alias.scope !174 ; 2 uses
  %i.aov = icmp eq ptr %.promoted1046.i, %i.aou
  br i1 %i.aov, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %.lr.ph2040.preheader

.lr.ph2040.preheader:                             ; preds = %.lr.ph1044.i
  %.promoted3144 = load i64, ptr %i.ac, align 32, !alias.scope !174
  br label %.lr.ph2040

bb.ja:                                            ; preds = %.lr.ph2040
  %i.aow = icmp eq ptr %i.apb, %i.aou
  br i1 %i.aow, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit.loopexit2058, label %.lr.ph2040

.lr.ph2040:                                       ; preds = %.lr.ph2040.preheader, %bb.ja
  %i.aox = phi i64 [ %i.apg, %bb.ja ], [ %.promoted3144, %.lr.ph2040.preheader ]
  %i.aoy = phi i8 [ %i.aph, %bb.ja ], [ %.promoted1042.i, %.lr.ph2040.preheader ] ; 2 uses
  %i.aoz = phi ptr [ %i.apb, %bb.ja ], [ %.promoted1046.i, %.lr.ph2040.preheader ] ; 2 uses
  %i.apa = load i8, ptr %i.aoz, align 1, !noalias !171, !noundef !4
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aoz, i64 1 ; 4 uses
  %i.apc = zext i8 %i.apa to i64
  %i.apd = and i8 %i.aoy, 63
  %i.ape = zext nneg i8 %i.apd to i64
  %i.apf = shl i64 %i.apc, %i.ape
  %i.apg = or i64 %i.aox, %i.apf                  ; 4 uses
  %i.aph = add i8 %i.aoy, 8                       ; 5 uses
  %i.api = zext i8 %i.aph to i64
  %i.apj = icmp ugt i64 %i.si, %i.api
  br i1 %i.apj, label %bb.ja, label %._crit_edge1045.i.loopexit

._crit_edge1045.i.loopexit:                       ; preds = %.lr.ph2040
  store ptr %i.apb, ptr %i.ab, align 16, !alias.scope !174
  store i64 %i.apg, ptr %i.ac, align 32, !alias.scope !174
  store i8 %i.aph, ptr %i.ad, align 8, !alias.scope !174
  br label %._crit_edge1045.i

._crit_edge1045.i:                                ; preds = %._crit_edge1045.i.loopexit, %.._crit_edge1045_crit_edge.i
  %i.apk = phi i8 [ %.promoted1042.i, %.._crit_edge1045_crit_edge.i ], [ %i.aph, %._crit_edge1045.i.loopexit ]
  %i.apl = phi i64 [ %.pre1577.i, %.._crit_edge1045_crit_edge.i ], [ %i.apg, %._crit_edge1045.i.loopexit ] ; 2 uses
  %i.apm = and i64 %i.si, 63                      ; 2 uses
  %notmask296.i = shl nsw i64 -1, %i.apm
  %i.apn = xor i64 %notmask296.i, -1
  %i.apo = and i64 %i.apl, %i.apn
  %i.app = load i64, ptr %i.bi, align 16, !alias.scope !92, !noundef !4
  %i.apq = add i64 %i.app, %i.apo                 ; 2 uses
  store i64 %i.apq, ptr %i.bi, align 16, !alias.scope !92
  %i.apr = trunc nuw i64 %i.si to i8
  %i.aps = lshr i64 %i.apl, %i.apm
  store i64 %i.aps, ptr %i.ac, align 32, !alias.scope !92
  %i.apt = sub i8 %i.apk, %i.apr
  store i8 %i.apt, ptr %i.ad, align 8, !alias.scope !92
  %i.apu = load i64, ptr %i.bn, align 8, !alias.scope !92, !noundef !4
  %i.apv = add i64 %i.apu, %i.si
  store i64 %i.apv, ptr %i.bn, align 8, !alias.scope !92
  br label %bb.iy

.preheader458.split.i:                            ; preds = %.preheader458.i, %bb.jj
  %.lcssa593.promoted.i = phi i64 [ %i.aqw, %bb.jj ], [ %.promoted1041.i, %.preheader458.i ] ; 4 uses
  %i.apw = and i64 %.lcssa593.promoted.i, %i.ck   ; 3 uses
  switch i8 %i.cl, label %default.unreachable [
    i8 0, label %bb.je
    i8 1, label %bb.jb
    i8 2, label %bb.jc
    i8 3, label %bb.jd
  ]

bb.jb:                                            ; preds = %.preheader458.split.i
  br label %bb.je

bb.jc:                                            ; preds = %.preheader458.split.i
  br label %bb.je

bb.jd:                                            ; preds = %.preheader458.split.i
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jc, %bb.jb, %.preheader458.split.i
  %.sroa.0184.0.i = phi ptr [ %i.ar, %bb.jd ], [ %i.at, %bb.jb ], [ %i.as, %bb.jc ], [ @14, %.preheader458.split.i ]
  %.sroa.10.0.i = phi i64 [ 592, %bb.jd ], [ 1332, %bb.jb ], [ 1332, %bb.jc ], [ 32, %.preheader458.split.i ] ; 2 uses
  %i.apx = icmp samesign ult i64 %i.apw, %.sroa.10.0.i
  br i1 %i.apx, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.apy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0184.0.i, i64 %i.apw ; 3 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 2
  %i.aqa = load i8, ptr %i.apz, align 2, !noundef !4 ; 3 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apy, i64 3
  %i.aqc = load i8, ptr %i.aqb, align 1, !noundef !4 ; 7 uses
  %i.aqd = load i16, ptr %i.apy, align 2, !noundef !4 ; 2 uses
  %i.aqe = load i8, ptr %i.ad, align 8, !alias.scope !92, !noundef !4 ; 5 uses
  %.not292.i = icmp ugt i8 %i.aqc, %i.aqe
  br i1 %.not292.i, label %bb.jh, label %bb.ji

bb.jg:                                            ; preds = %bb.je
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.apw, i64 noundef %.sroa.10.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #13
  unreachable

bb.jh:                                            ; preds = %bb.jf
  %i.aqf = load ptr, ptr %i.ab, align 16, !alias.scope !92, !noundef !4 ; 3 uses
  %i.aqg = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !alias.scope !92, !noundef !4
  %i.aqh = icmp eq ptr %i.aqf, %i.aqg
  br i1 %i.aqh, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %bb.jj

bb.ji:                                            ; preds = %bb.jf
  %i.aqi = icmp ult i8 %i.aqa, 16
  br i1 %i.aqi, label %.preheader456.i, label %bb.ju

.preheader456.i:                                  ; preds = %bb.ji
  %i.aqj = add i8 %i.aqc, %i.aqa
  %i.aqk = and i8 %i.aqj, 63
  %i.aql = zext nneg i8 %i.aqk to i64
  %notmask293.i = shl nsw i64 -1, %i.aql
  %i.aqm = xor i64 %notmask293.i, -1
  %i.aqn = zext i16 %i.aqd to i64
  %i.aqo = and i8 %i.aqc, 63
  %i.aqp = zext nneg i8 %i.aqo to i64             ; 2 uses
  br label %bb.jk

bb.jj:                                            ; preds = %bb.jh
  %i.aqq = load i8, ptr %i.aqf, align 1, !noundef !4
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqf, i64 1
  store ptr %i.aqr, ptr %i.ab, align 16, !alias.scope !92
  %i.aqs = zext i8 %i.aqq to i64
  %i.aqt = and i8 %i.aqe, 63
  %i.aqu = zext nneg i8 %i.aqt to i64
  %i.aqv = shl i64 %i.aqs, %i.aqu
  %i.aqw = or i64 %i.aqv, %.lcssa593.promoted.i   ; 2 uses
  store i64 %i.aqw, ptr %i.ac, align 32, !alias.scope !92
  %i.aqx = add i8 %i.aqe, 8
  store i8 %i.aqx, ptr %i.ad, align 8, !alias.scope !92
  br label %.preheader458.split.i

bb.jk:                                            ; preds = %bb.jt, %.preheader456.i
  %i.aqy = phi i8 [ %i.aqe, %.preheader456.i ], [ %i.asa, %bb.jt ] ; 4 uses
  %i.aqz = phi i64 [ %.lcssa593.promoted.i, %.preheader456.i ], [ %i.arz, %bb.jt ] ; 3 uses
  %i.ara = and i64 %i.aqz, %i.aqm
  %i.arb = lshr i64 %i.ara, %i.aqp
  %i.arc = add nuw i64 %i.arb, %i.aqn             ; 3 uses
  switch i8 %i.cl, label %default.unreachable [
    i8 0, label %bb.jo
    i8 1, label %bb.jl
    i8 2, label %bb.jm
    i8 3, label %bb.jn
  ]

bb.jl:                                            ; preds = %bb.jk
  br label %bb.jo

bb.jm:                                            ; preds = %bb.jk
  br label %bb.jo

bb.jn:                                            ; preds = %bb.jk
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm, %bb.jl, %bb.jk
  %.sroa.0191.0.i = phi ptr [ %i.ar, %bb.jn ], [ %i.at, %bb.jl ], [ %i.as, %bb.jm ], [ @14, %bb.jk ]
  %.sroa.10195.0.i = phi i64 [ 592, %bb.jn ], [ 1332, %bb.jl ], [ 1332, %bb.jm ], [ 32, %bb.jk ] ; 2 uses
  %i.ard = icmp ult i64 %i.arc, %.sroa.10195.0.i
  br i1 %i.ard, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.are = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0191.0.i, i64 %i.arc ; 3 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 3
  %i.arg = load i8, ptr %i.arf, align 1, !noundef !4 ; 2 uses
  %i.arh = add i8 %i.arg, %i.aqc
  %.not294.i = icmp ugt i8 %i.arh, %i.aqy
  br i1 %.not294.i, label %bb.jr, label %bb.js

bb.jq:                                            ; preds = %bb.jo
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.arc, i64 noundef %.sroa.10195.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #13
  unreachable

bb.jr:                                            ; preds = %bb.jp
  %i.ari = load ptr, ptr %i.ab, align 16, !alias.scope !92, !noundef !4 ; 3 uses
  %i.arj = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !alias.scope !92, !noundef !4
  %i.ark = icmp eq ptr %i.ari, %i.arj
  br i1 %i.ark, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %bb.jt

bb.js:                                            ; preds = %bb.jp
  %i.arl = load i16, ptr %i.are, align 2, !noundef !4
  %i.arm = getelementptr inbounds nuw i8, ptr %i.are, i64 2
  %i.arn = load i8, ptr %i.arm, align 2, !noundef !4
  %i.aro = lshr i64 %i.aqz, %i.aqp
  %i.arp = sub i8 %i.aqy, %i.aqc
  %i.arq = zext i8 %i.aqc to i64
  %i.arr = load i64, ptr %i.bn, align 8, !alias.scope !92, !noundef !4
  %i.ars = add i64 %i.arr, %i.arq
  store i64 %i.ars, ptr %i.bn, align 8, !alias.scope !92
  br label %bb.ju

bb.jt:                                            ; preds = %bb.jr
  %i.art = load i8, ptr %i.ari, align 1, !noundef !4
  %i.aru = getelementptr inbounds nuw i8, ptr %i.ari, i64 1
  store ptr %i.aru, ptr %i.ab, align 16, !alias.scope !92
  %i.arv = zext i8 %i.art to i64
  %i.arw = and i8 %i.aqy, 63
  %i.arx = zext nneg i8 %i.arw to i64
  %i.ary = shl i64 %i.arv, %i.arx
  %i.arz = or i64 %i.ary, %i.aqz                  ; 2 uses
  store i64 %i.arz, ptr %i.ac, align 32, !alias.scope !92
  %i.asa = add i8 %i.aqy, 8                       ; 2 uses
  store i8 %i.asa, ptr %i.ad, align 8, !alias.scope !92
  br label %bb.jk

bb.ju:                                            ; preds = %bb.js, %bb.ji
  %i.asb = phi i8 [ %i.arp, %bb.js ], [ %i.aqe, %bb.ji ]
  %i.asc = phi i64 [ %i.aro, %bb.js ], [ %.lcssa593.promoted.i, %bb.ji ]
  %.sroa.0207.0.i = phi i8 [ %i.arn, %bb.js ], [ %i.aqa, %bb.ji ] ; 2 uses
  %.sroa.0211.0.i = phi i8 [ %i.arg, %bb.js ], [ %i.aqc, %bb.ji ] ; 2 uses
  %.sroa.0216.0.i = phi i16 [ %i.arl, %bb.js ], [ %i.aqd, %bb.ji ]
  %i.asd = and i8 %.sroa.0211.0.i, 63
  %i.ase = zext nneg i8 %i.asd to i64
  %i.asf = lshr i64 %i.asc, %i.ase
  store i64 %i.asf, ptr %i.ac, align 32, !alias.scope !92
  %i.asg = sub i8 %i.asb, %.sroa.0211.0.i
  store i8 %i.asg, ptr %i.ad, align 8, !alias.scope !92
  %i.ash = and i8 %.sroa.0207.0.i, 64
  %i.asi = icmp eq i8 %i.ash, 0
  br i1 %i.asi, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  %i.asj = zext i16 %.sroa.0216.0.i to i64
  store i64 %i.asj, ptr %i.bh, align 8, !alias.scope !92
  %i.ask = and i8 %.sroa.0207.0.i, 15
  %i.asl = zext nneg i8 %i.ask to i64
  store i64 %i.asl, ptr %i.bm, align 32, !alias.scope !92
  br label %.backedge.i.backedge

bb.jw:                                            ; preds = %bb.ju
  store ptr @25, ptr %i.br, align 16, !alias.scope !92
  store i64 22, ptr %i.bs, align 8, !alias.scope !92
  br label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit

bb.jx:                                            ; preds = %bb.cs
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %.promoted1036.i = load i8, ptr %i.ad, align 8, !alias.scope !178 ; 3 uses
  %i.asm = zext i8 %.promoted1036.i to i64
  %i.asn = icmp ugt i64 %i.sk, %i.asm
  br i1 %i.asn, label %.lr.ph1038.i, label %.._crit_edge1039_crit_edge.i

.._crit_edge1039_crit_edge.i:                     ; preds = %bb.jx
  %.pre1576.i = load i64, ptr %i.ac, align 32, !alias.scope !92
  br label %._crit_edge1039.i

.lr.ph1038.i:                                     ; preds = %bb.jx
  %i.aso = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !alias.scope !178, !noundef !4 ; 2 uses
  %.promoted1040.i = load ptr, ptr %i.ab, align 16, !alias.scope !178 ; 2 uses
  %i.asp = icmp eq ptr %.promoted1040.i, %i.aso
  br i1 %i.asp, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %.lr.ph2039.preheader

.lr.ph2039.preheader:                             ; preds = %.lr.ph1038.i
  %.promoted3137 = load i64, ptr %i.ac, align 32, !alias.scope !178
  br label %.lr.ph2039

bb.jy:                                            ; preds = %.lr.ph2039
  %i.asq = icmp eq ptr %i.asv, %i.aso
  br i1 %i.asq, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit.loopexit2063, label %.lr.ph2039

.lr.ph2039:                                       ; preds = %.lr.ph2039.preheader, %bb.jy
  %i.asr = phi i64 [ %i.ata, %bb.jy ], [ %.promoted3137, %.lr.ph2039.preheader ]
  %i.ass = phi i8 [ %i.atb, %bb.jy ], [ %.promoted1036.i, %.lr.ph2039.preheader ] ; 2 uses
  %i.ast = phi ptr [ %i.asv, %bb.jy ], [ %.promoted1040.i, %.lr.ph2039.preheader ] ; 2 uses
  %i.asu = load i8, ptr %i.ast, align 1, !noalias !175, !noundef !4
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ast, i64 1 ; 4 uses
  %i.asw = zext i8 %i.asu to i64
  %i.asx = and i8 %i.ass, 63
  %i.asy = zext nneg i8 %i.asx to i64
  %i.asz = shl i64 %i.asw, %i.asy
  %i.ata = or i64 %i.asr, %i.asz                  ; 4 uses
  %i.atb = add i8 %i.ass, 8                       ; 5 uses
  %i.atc = zext i8 %i.atb to i64
  %i.atd = icmp ugt i64 %i.sk, %i.atc
  br i1 %i.atd, label %bb.jy, label %._crit_edge1039.i.loopexit

._crit_edge1039.i.loopexit:                       ; preds = %.lr.ph2039
  store ptr %i.asv, ptr %i.ab, align 16, !alias.scope !178
  store i64 %i.ata, ptr %i.ac, align 32, !alias.scope !178
  store i8 %i.atb, ptr %i.ad, align 8, !alias.scope !178
  br label %._crit_edge1039.i

._crit_edge1039.i:                                ; preds = %._crit_edge1039.i.loopexit, %.._crit_edge1039_crit_edge.i
  %i.ate = phi i8 [ %.promoted1036.i, %.._crit_edge1039_crit_edge.i ], [ %i.atb, %._crit_edge1039.i.loopexit ]
  %i.atf = phi i64 [ %.pre1576.i, %.._crit_edge1039_crit_edge.i ], [ %i.ata, %._crit_edge1039.i.loopexit ] ; 2 uses
  %i.atg = and i64 %i.sk, 63                      ; 2 uses
  %notmask290.i = shl nsw i64 -1, %i.atg
  %i.ath = xor i64 %notmask290.i, -1
  %i.ati = and i64 %i.atf, %i.ath
  %i.atj = load i64, ptr %i.bh, align 8, !alias.scope !92, !noundef !4
  %i.atk = add i64 %i.atj, %i.ati
  store i64 %i.atk, ptr %i.bh, align 8, !alias.scope !92
  %i.atl = trunc nuw i64 %i.sk to i8
  %i.atm = lshr i64 %i.atf, %i.atg
  store i64 %i.atm, ptr %i.ac, align 32, !alias.scope !92
  %i.atn = sub i8 %i.ate, %i.atl
  store i8 %i.atn, ptr %i.ad, align 8, !alias.scope !92
  %i.ato = load i64, ptr %i.bn, align 8, !alias.scope !92, !noundef !4
  %i.atp = add i64 %i.ato, %i.sk
  store i64 %i.atp, ptr %i.bn, align 8, !alias.scope !92
  br label %.backedge.i.backedge

bb.jz:                                            ; preds = %.preheader460.i
  %i.atq = sub i64 %i.sm, %i.sl                   ; 2 uses
  %i.atr = load i64, ptr %i.bh, align 8, !alias.scope !92, !noundef !4 ; 3 uses
  %i.ats = icmp ugt i64 %i.atr, %i.sl
  br i1 %i.ats, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.att = load i64, ptr %i.bi, align 16, !alias.scope !92, !noundef !4
  %.sroa.0.0.i395.i = call noundef i64 @llvm.umin.i64(i64 %i.atq, i64 %i.att) ; 2 uses
  call void @_RNvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB2_6Writer27copy_match_runtime_dispatch(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %i.atr, i64 noundef %.sroa.0.0.i395.i)
  br label %bb.kc

bb.kb:                                            ; preds = %bb.jz
  %i.atu = sub nuw i64 %i.atr, %i.sl              ; 5 uses
  %i.atv = load i64, ptr %i.bj, align 8, !alias.scope !92, !noundef !4
  %i.atw = icmp ugt i64 %i.atu, %i.atv
  br i1 %i.atw, label %bb.ke, label %bb.kd

bb.kc:                                            ; preds = %bb.kd, %bb.ka
  %.sroa.0126.0.i = phi i64 [ %.sroa.0.0.i397.i, %bb.kd ], [ %.sroa.0.0.i395.i, %bb.ka ] ; 2 uses
  %i.atx = load i64, ptr %i.bi, align 16, !alias.scope !92, !noundef !4 ; 2 uses
  %i.aty = sub i64 %i.atx, %.sroa.0126.0.i
  store i64 %i.aty, ptr %i.bi, align 16, !alias.scope !92
  %i.atz = icmp eq i64 %i.atx, %.sroa.0126.0.i
  br i1 %i.atz, label %.backedge.i.backedge, label %.preheader460.i

bb.kd:                                            ; preds = %bb.kb
  %i.aua = load i64, ptr %i.bl, align 32, !alias.scope !92, !noundef !4 ; 3 uses
  %i.aub = call noundef i64 @_RNvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6windowNtB2_6Window4size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bk)
  %i.auc = icmp ugt i64 %i.atu, %i.aua            ; 2 uses
  %i.aud = sub nuw i64 %i.atu, %i.aua             ; 2 uses
  %i.aue = sub i64 %i.aub, %i.aud
  %i.auf = sub nuw i64 %i.aua, %i.atu
  %.sroa.0124.0.i = select i1 %i.auc, i64 %i.aue, i64 %i.auf ; 2 uses
  %.sroa.0126.1.i = select i1 %i.auc, i64 %i.aud, i64 %i.atu
  %i.aug = load i64, ptr %i.bi, align 16, !alias.scope !92, !noundef !4
  %.sroa.0.0.i396.i = call noundef i64 @llvm.umin.i64(i64 %i.aug, i64 %.sroa.0126.1.i)
  %.sroa.0.0.i397.i = call noundef i64 @llvm.umin.i64(i64 %i.atq, i64 %.sroa.0.0.i396.i) ; 2 uses
  %i.auh = add i64 %.sroa.0.0.i397.i, %.sroa.0124.0.i
  call void @_RNvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6writerNtB2_6Writer35extend_from_window_runtime_dispatch(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bk, i64 noundef %.sroa.0124.0.i, i64 noundef %i.auh)
  br label %bb.kc

bb.ke:                                            ; preds = %bb.kb
  %i.aui = load i8, ptr %i.ak, align 1, !alias.scope !92, !noundef !4
  %i.auj = and i8 %i.aui, 4
  %i.auk = icmp eq i8 %i.auj, 0
  br i1 %i.auk, label %bb.kf, label %bb.kg, !prof !17

bb.kf:                                            ; preds = %bb.ke
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @26, ptr noundef nonnull inttoptr (i64 85 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #13
  unreachable
end_hunk_1
begin_hunk_2_@_RNvNtCs7kNFBubu20U_7zlib_rs7inflate7inflate:bb.a
  store i64 %i.auu, ptr %i.be, align 8, !alias.scope !92
  %i.auv = lshr i64 %i.aum, 14
  store i64 %i.auv, ptr %i.ac, align 32, !alias.scope !92
  %i.auw = add i8 %i.aul, -14
  store i8 %i.auw, ptr %i.ad, align 8, !alias.scope !92
  %i.aux = icmp samesign ugt i64 %i.aun, 29
  %i.auy = icmp samesign ugt i64 %i.auq, 29
  %or.cond.i = select i1 %i.aux, i1 true, i1 %i.auy
  br i1 %or.cond.i, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %._crit_edge1034.i
  store i64 0, ptr %i.am, align 64, !alias.scope !92
  br label %.backedge.i.backedge

bb.ki:                                            ; preds = %._crit_edge1034.i
  store ptr @55, ptr %i.br, align 16, !alias.scope !92
  store i64 36, ptr %i.bs, align 8, !alias.scope !92
  br label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit

bb.kj:                                            ; preds = %bb.ko, %.lr.ph1022.i
  %.promoted10161026.i = phi i8 [ %.promoted1025.i, %.lr.ph1022.i ], [ %i.awt, %bb.ko ] ; 4 uses
  %i.auz = phi i64 [ %.promoted1021.i, %.lr.ph1022.i ], [ %i.awr, %bb.ko ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.ava = icmp ult i8 %.promoted10161026.i, 3
  br i1 %i.ava, label %.lr.ph1018.i, label %bb.km

.lr.ph1018.i:                                     ; preds = %bb.kj
  %i.avb = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !alias.scope !182, !noundef !4
  %.promoted1020.i = load ptr, ptr %i.ab, align 16, !alias.scope !182 ; 3 uses
  %i.avc = icmp eq ptr %.promoted1020.i, %i.avb
  br i1 %i.avc, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %._crit_edge1019.i

._crit_edge1019.i:                                ; preds = %.lr.ph1018.i
  %i.avd = load i8, ptr %.promoted1020.i, align 1, !noalias !179, !noundef !4
  %i.ave = getelementptr inbounds nuw i8, ptr %.promoted1020.i, i64 1
  store ptr %i.ave, ptr %i.ab, align 16, !alias.scope !182
  %i.avf = zext i8 %i.avd to i64
  %i.avg = zext nneg i8 %.promoted10161026.i to i64
  %i.avh = shl nuw nsw i64 %i.avf, %i.avg
  %i.avi = load i64, ptr %i.ac, align 32, !alias.scope !182, !noundef !4
  %i.avj = or i64 %i.avi, %i.avh
  store i64 %i.avj, ptr %i.ac, align 32, !alias.scope !182
  %i.avk = or disjoint i8 %.promoted10161026.i, 8 ; 2 uses
  store i8 %i.avk, ptr %i.ad, align 8, !alias.scope !182
  br label %bb.km

._crit_edge1030.loopexit.i:                       ; preds = %.lr.ph1029.i, %.lr.ph1029.i.prol.loopexit
  store i64 19, ptr %i.am, align 64, !alias.scope !92
  br label %._crit_edge1030.i

._crit_edge1030.i:                                ; preds = %._crit_edge1030.loopexit.i, %.preheader463.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !92
  call void @_RNvNtNtCs7kNFBubu20U_7zlib_rs7inflate8inftrees13inflate_table(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i8 noundef 0, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.au, i64 noundef 320, i64 noundef 19, ptr noalias noundef nonnull align 2 %i.at, i64 noundef 1332, i64 noundef 7, ptr noalias noundef nonnull align 2 %i.aw, i64 noundef 288)
  %i.avl = load i32, ptr %i.d, align 8, !range !183, !noalias !92, !noundef !4
  %i.avm = icmp eq i32 %i.avl, 0
  br i1 %i.avm, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %._crit_edge1030.i
  %i.avn = load i64, ptr %i.bf, align 8, !noalias !92, !noundef !4
  %i.avo = load i64, ptr %i.bg, align 8, !noalias !92, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !92
  store i64 %i.avo, ptr %i.az, align 8, !alias.scope !92
  store i8 1, ptr %i.aq, align 8, !alias.scope !92
  store i64 %i.avn, ptr %i.ap, align 16, !alias.scope !92
  store i64 0, ptr %i.am, align 64, !alias.scope !92
  br label %.backedge.i.backedge

bb.kl:                                            ; preds = %._crit_edge1030.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !92
  store ptr @56, ptr %i.br, align 16, !alias.scope !92
  store i64 25, ptr %i.bs, align 8, !alias.scope !92
  br label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit

.lr.ph1029.i:                                     ; preds = %.lr.ph1029.i.prol.loopexit, %.lr.ph1029.i
  %i.avp = phi i64 [ %i.awj, %.lr.ph1029.i ], [ %.unr, %.lr.ph1029.i.prol.loopexit ] ; 5 uses
  %i.avq = getelementptr inbounds nuw i8, ptr @57, i64 %i.avp
  %i.avr = load i8, ptr %i.avq, align 1, !noalias !92, !noundef !4
  %i.avs = zext i8 %i.avr to i64
  %i.avt = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.avs
  store i16 0, ptr %i.avt, align 2, !alias.scope !92
  %i.avu = getelementptr i8, ptr @57, i64 %i.avp
  %i.avv = getelementptr i8, ptr %i.avu, i64 1
  %i.avw = load i8, ptr %i.avv, align 1, !noalias !92, !noundef !4
  %i.avx = zext i8 %i.avw to i64
  %i.avy = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.avx
  store i16 0, ptr %i.avy, align 2, !alias.scope !92
  %i.avz = getelementptr i8, ptr @57, i64 %i.avp
  %i.awa = getelementptr i8, ptr %i.avz, i64 2
  %i.awb = load i8, ptr %i.awa, align 1, !noalias !92, !noundef !4
  %i.awc = zext i8 %i.awb to i64
  %i.awd = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.awc
  store i16 0, ptr %i.awd, align 2, !alias.scope !92
  %i.awe = getelementptr i8, ptr @57, i64 %i.avp
  %i.awf = getelementptr i8, ptr %i.awe, i64 3
  %i.awg = load i8, ptr %i.awf, align 1, !noalias !92, !noundef !4
  %i.awh = zext i8 %i.awg to i64
  %i.awi = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.awh
  store i16 0, ptr %i.awi, align 2, !alias.scope !92
  %i.awj = add i64 %i.avp, 4                      ; 2 uses
  %exitcond1542.not.i.3 = icmp eq i64 %i.awj, 19
  br i1 %exitcond1542.not.i.3, label %._crit_edge1030.loopexit.i, label %.lr.ph1029.i

bb.km:                                            ; preds = %._crit_edge1019.i, %bb.kj
  %.promoted10161027.i = phi i8 [ %i.avk, %._crit_edge1019.i ], [ %.promoted10161026.i, %bb.kj ]
  %exitcond.not.i = icmp eq i64 %i.auz, %umax.i
  br i1 %exitcond.not.i, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %bb.km
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #13
  unreachable

bb.ko:                                            ; preds = %bb.km
  %i.awk = load i64, ptr %i.ac, align 32, !alias.scope !92, !noundef !4 ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr @57, i64 %i.auz
  %i.awm = load i8, ptr %i.awl, align 1, !noalias !92, !noundef !4
  %i.awn = zext i8 %i.awm to i64
  %i.awo = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.awn
  %i.awp = trunc i64 %i.awk to i16
  %i.awq = and i16 %i.awp, 7
  store i16 %i.awq, ptr %i.awo, align 2, !alias.scope !92
  %i.awr = add i64 %i.auz, 1                      ; 3 uses
  store i64 %i.awr, ptr %i.am, align 64, !alias.scope !92
  %i.aws = lshr i64 %i.awk, 3
  store i64 %i.aws, ptr %i.ac, align 32, !alias.scope !92
  %i.awt = add i8 %.promoted10161027.i, -3        ; 2 uses
  store i8 %i.awt, ptr %i.ad, align 8, !alias.scope !92
  %exitcond1541.not.i = icmp eq i64 %i.awr, %i.cg
  br i1 %exitcond1541.not.i, label %.preheader463.i, label %bb.kj

._crit_edge1015.i:                                ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice10specializeStINtB5_8SpecFilltE9spec_fill.exit.i, %.preheader465.i
  %.lcssa524.i = phi i64 [ %i.cc, %.preheader465.i ], [ %i.bbx, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice10specializeStINtB5_8SpecFilltE9spec_fill.exit.i ]
  %i.awu = load i16, ptr %i.av, align 16, !alias.scope !92, !noundef !4
  %i.awv = icmp eq i16 %i.awu, 0
  br i1 %i.awv, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %._crit_edge1015.i
  store ptr @59, ptr %i.br, align 16, !alias.scope !92
  store i64 37, ptr %i.bs, align 8, !alias.scope !92
  br label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit

bb.kq:                                            ; preds = %._crit_edge1015.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !92
  call void @_RNvNtNtCs7kNFBubu20U_7zlib_rs7inflate8inftrees13inflate_table(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i8 noundef 1, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.au, i64 noundef 320, i64 noundef %.lcssa524.i, ptr noalias noundef nonnull align 2 %i.as, i64 noundef 1332, i64 noundef 10, ptr noalias noundef nonnull align 2 %i.aw, i64 noundef 288)
  %i.aww = load i32, ptr %i.c, align 8, !range !183, !noalias !92, !noundef !4
  %i.awx = icmp eq i32 %i.aww, 0
  br i1 %i.awx, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.awy = load i64, ptr %i.ax, align 8, !noalias !92, !noundef !4
  %i.awz = load i64, ptr %i.ay, align 8, !noalias !92, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !92
  store i8 2, ptr %i.aq, align 8, !alias.scope !92
  store i64 %i.awy, ptr %i.ap, align 16, !alias.scope !92
  store i64 %i.awz, ptr %i.az, align 8, !alias.scope !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !92
  %i.axa = load i64, ptr %i.an, align 16, !alias.scope !92, !noundef !4 ; 4 uses
  %i.axb = icmp ugt i64 %i.axa, 320
  br i1 %i.axb, label %bb.ku, label %bb.kt, !prof !17

bb.ks:                                            ; preds = %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !92
  store ptr @62, ptr %i.br, align 16, !alias.scope !92
  store i64 28, ptr %i.bs, align 8, !alias.scope !92
  br label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit

bb.kt:                                            ; preds = %bb.kr
  %i.axc = sub nuw nsw i64 320, %i.axa
  %i.axd = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.axa
  %i.axe = load i64, ptr %i.ao, align 8, !alias.scope !92, !noundef !4
  call void @_RNvNtNtCs7kNFBubu20U_7zlib_rs7inflate8inftrees13inflate_table(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i8 noundef 2, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.axd, i64 noundef %i.axc, i64 noundef %i.axe, ptr noalias noundef nonnull align 2 %i.ar, i64 noundef 592, i64 noundef 9, ptr noalias noundef nonnull align 2 %i.aw, i64 noundef 288)
  %i.axf = load i32, ptr %i.b, align 8, !range !183, !noalias !92, !noundef !4
  %i.axg = icmp eq i32 %i.axf, 0
  br i1 %i.axg, label %bb.kv, label %bb.kw

bb.ku:                                            ; preds = %bb.kr
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.axa, i64 noundef 320, i64 noundef 320, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #13
  unreachable

bb.kv:                                            ; preds = %bb.kt
  %i.axh = load i64, ptr %i.ba, align 8, !noalias !92, !noundef !4
  %i.axi = load i64, ptr %i.bb, align 8, !noalias !92, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !92
  store i64 %i.axh, ptr %i.bc, align 32, !alias.scope !92
  store i8 3, ptr %i.bd, align 8, !alias.scope !92
  %i.axj = load i64, ptr %i.az, align 8, !alias.scope !92, !noundef !4
  %i.axk = add i64 %i.axj, %i.axi
  store i64 %i.axk, ptr %i.az, align 8, !alias.scope !92
  %i.axl = load i8, ptr %i.y, align 4, !range !107, !alias.scope !92, !noundef !4
  %i.axm = icmp eq i8 %i.axl, 6
  br i1 %i.axm, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %.backedge.i.backedge

bb.kw:                                            ; preds = %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !92
  store ptr @60, ptr %i.br, align 16, !alias.scope !92
  store i64 22, ptr %i.bs, align 8, !alias.scope !92
  br label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit

bb.kx:                                            ; preds = %bb.lg, %.preheader448.i
  %i.axn = phi i64 [ %.lcssa31293133, %.preheader448.i ], [ %i.ayf, %bb.lg ] ; 9 uses
  %i.axo = and i64 %i.axn, %i.tx                  ; 3 uses
  switch i8 %i.ty, label %default.unreachable [
    i8 0, label %bb.lb
    i8 1, label %bb.ky
    i8 2, label %bb.kz
    i8 3, label %bb.la
  ]

bb.ky:                                            ; preds = %bb.kx
  br label %bb.lb

bb.kz:                                            ; preds = %bb.kx
  br label %bb.lb

bb.la:                                            ; preds = %bb.kx
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %bb.kz, %bb.ky, %bb.kx
  %.sroa.0199.0.i = phi ptr [ %i.ar, %bb.la ], [ %i.at, %bb.ky ], [ %i.as, %bb.kz ], [ @13, %bb.kx ]
  %.sroa.10203.0.i = phi i64 [ 592, %bb.la ], [ 1332, %bb.ky ], [ 1332, %bb.kz ], [ 512, %bb.kx ] ; 2 uses
  %i.axp = icmp samesign ult i64 %i.axo, %.sroa.10203.0.i
  br i1 %i.axp, label %bb.lc, label %bb.ld

bb.lc:                                            ; preds = %bb.lb
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0199.0.i, i64 %i.axo ; 2 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axq, i64 3
  %i.axs = load i8, ptr %i.axr, align 1, !noundef !4 ; 12 uses
  %i.axt = load i16, ptr %i.axq, align 2, !noundef !4 ; 4 uses
  %i.axu = load i8, ptr %i.ad, align 8, !alias.scope !92, !noundef !4 ; 13 uses
  %.not279.i = icmp ugt i8 %i.axs, %i.axu
  br i1 %.not279.i, label %bb.le, label %bb.lf

bb.ld:                                            ; preds = %bb.lb
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.axo, i64 noundef %.sroa.10203.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #13
  unreachable

bb.le:                                            ; preds = %bb.lc
  %i.axv = load ptr, ptr %i.ab, align 16, !alias.scope !92, !noundef !4 ; 3 uses
  %i.axw = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !alias.scope !92, !noundef !4
  %i.axx = icmp eq ptr %i.axv, %i.axw
  br i1 %i.axx, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %bb.lg

bb.lf:                                            ; preds = %bb.lc
  %i.axy = icmp ult i16 %i.axt, 16
  br i1 %i.axy, label %bb.li, label %bb.lh

bb.lg:                                            ; preds = %bb.le
  %i.axz = load i8, ptr %i.axv, align 1, !noundef !4
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axv, i64 1
  store ptr %i.aya, ptr %i.ab, align 16, !alias.scope !92
  %i.ayb = zext i8 %i.axz to i64
  %i.ayc = and i8 %i.axu, 63
  %i.ayd = zext nneg i8 %i.ayc to i64
  %i.aye = shl i64 %i.ayb, %i.ayd
  %i.ayf = or i64 %i.aye, %i.axn                  ; 2 uses
  store i64 %i.ayf, ptr %i.ac, align 32, !alias.scope !92
  %i.ayg = add i8 %i.axu, 8
  store i8 %i.ayg, ptr %i.ad, align 8, !alias.scope !92
  br label %bb.kx

bb.lh:                                            ; preds = %bb.lf
  switch i16 %i.axt, label %bb.lj [
    i16 16, label %bb.ll
    i16 17, label %bb.ln
  ]

bb.li:                                            ; preds = %bb.lf
  %i.ayh = and i8 %i.axs, 63
  %i.ayi = zext nneg i8 %i.ayh to i64
  %i.ayj = lshr i64 %i.axn, %i.ayi                ; 2 uses
  store i64 %i.ayj, ptr %i.ac, align 32, !alias.scope !92
  %i.ayk = sub i8 %i.axu, %i.axs
  store i8 %i.ayk, ptr %i.ad, align 8, !alias.scope !92
  %i.ayl = icmp ult i64 %i.tu, 320
  br i1 %i.ayl, label %bb.mi, label %bb.mj

bb.lj:                                            ; preds = %bb.lh
  %i.aym = icmp ugt i16 %i.axt, 17
  call void @llvm.assume(i1 %i.aym)
  %i.ayn = zext i8 %i.axs to i64
  %i.ayo = add nuw nsw i64 %i.ayn, 7              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.ayp = zext i8 %i.axu to i64
  %i.ayq = icmp samesign ugt i64 %i.ayo, %i.ayp
  br i1 %i.ayq, label %.lr.ph1012.i, label %._crit_edge1013.i

.lr.ph1012.i:                                     ; preds = %bb.lj
  %i.ayr = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !alias.scope !187, !noundef !4 ; 2 uses
  %.lcssa481.promoted1014.i = load ptr, ptr %i.ab, align 16, !alias.scope !187 ; 2 uses
  %i.ays = icmp eq ptr %.lcssa481.promoted1014.i, %i.ayr
  br i1 %i.ays, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %.lr.ph2038

bb.lk:                                            ; preds = %.lr.ph2038
  %i.ayt = icmp eq ptr %i.ayy, %i.ayr
  br i1 %i.ayt, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit.loopexit2041, label %.lr.ph2038

.lr.ph2038:                                       ; preds = %.lr.ph1012.i, %bb.lk
  %i.ayu = phi i8 [ %i.aze, %bb.lk ], [ %i.axu, %.lr.ph1012.i ] ; 2 uses
  %i.ayv = phi ptr [ %i.ayy, %bb.lk ], [ %.lcssa481.promoted1014.i, %.lr.ph1012.i ] ; 2 uses
  %i.ayw = phi i64 [ %i.azd, %bb.lk ], [ %i.axn, %.lr.ph1012.i ]
  %i.ayx = load i8, ptr %i.ayv, align 1, !noalias !184, !noundef !4
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayv, i64 1 ; 4 uses
  %i.ayz = zext i8 %i.ayx to i64
  %i.aza = and i8 %i.ayu, 63
  %i.azb = zext nneg i8 %i.aza to i64
  %i.azc = shl i64 %i.ayz, %i.azb
  %i.azd = or i64 %i.azc, %i.ayw                  ; 4 uses
  %i.aze = add i8 %i.ayu, 8                       ; 5 uses
  %i.azf = zext i8 %i.aze to i64
  %i.azg = icmp samesign ugt i64 %i.ayo, %i.azf
  br i1 %i.azg, label %bb.lk, label %._crit_edge1013.i.loopexit

bb.ll:                                            ; preds = %bb.lh
  %i.azh = zext i8 %i.axs to i64
  %i.azi = add nuw nsw i64 %i.azh, 2              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.azj = zext i8 %i.axu to i64
  %i.azk = icmp samesign ugt i64 %i.azi, %i.azj
  br i1 %i.azk, label %.lr.ph1007.i, label %._crit_edge1008.i

.lr.ph1007.i:                                     ; preds = %bb.ll
  %i.azl = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !alias.scope !191, !noundef !4 ; 2 uses
  %.lcssa481.promoted1009.i = load ptr, ptr %i.ab, align 16, !alias.scope !191 ; 2 uses
  %i.azm = icmp eq ptr %.lcssa481.promoted1009.i, %i.azl
  br i1 %i.azm, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %.lr.ph2037

bb.lm:                                            ; preds = %.lr.ph2037
  %i.azn = icmp eq ptr %i.azs, %i.azl
  br i1 %i.azn, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit.loopexit2042, label %.lr.ph2037

.lr.ph2037:                                       ; preds = %.lr.ph1007.i, %bb.lm
  %i.azo = phi i8 [ %i.azy, %bb.lm ], [ %i.axu, %.lr.ph1007.i ] ; 2 uses
  %i.azp = phi ptr [ %i.azs, %bb.lm ], [ %.lcssa481.promoted1009.i, %.lr.ph1007.i ] ; 2 uses
  %i.azq = phi i64 [ %i.azx, %bb.lm ], [ %i.axn, %.lr.ph1007.i ]
  %i.azr = load i8, ptr %i.azp, align 1, !noalias !188, !noundef !4
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azp, i64 1 ; 4 uses
  %i.azt = zext i8 %i.azr to i64
  %i.azu = and i8 %i.azo, 63
  %i.azv = zext nneg i8 %i.azu to i64
  %i.azw = shl i64 %i.azt, %i.azv
  %i.azx = or i64 %i.azw, %i.azq                  ; 4 uses
  %i.azy = add i8 %i.azo, 8                       ; 5 uses
  %i.azz = zext i8 %i.azy to i64
  %i.baa = icmp samesign ugt i64 %i.azi, %i.azz
  br i1 %i.baa, label %bb.lm, label %._crit_edge1008.i.loopexit

bb.ln:                                            ; preds = %bb.lh
  %i.bab = zext i8 %i.axs to i64
  %i.bac = add nuw nsw i64 %i.bab, 3              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.bad = zext i8 %i.axu to i64
  %i.bae = icmp samesign ugt i64 %i.bac, %i.bad
  br i1 %i.bae, label %.lr.ph1003.i, label %._crit_edge1004.i

.lr.ph1003.i:                                     ; preds = %bb.ln
  %i.baf = load ptr, ptr %.sroa.423.0..sroa_idx, align 8, !alias.scope !195, !noundef !4 ; 2 uses
  %.lcssa481.promoted.i = load ptr, ptr %i.ab, align 16, !alias.scope !195 ; 2 uses
  %i.bag = icmp eq ptr %.lcssa481.promoted.i, %i.baf
  br i1 %i.bag, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit, label %.lr.ph

bb.lo:                                            ; preds = %.lr.ph
  %i.bah = icmp eq ptr %i.bam, %i.baf
  br i1 %i.bah, label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit.loopexit2043, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph1003.i, %bb.lo
  %i.bai = phi i8 [ %i.bas, %bb.lo ], [ %i.axu, %.lr.ph1003.i ] ; 2 uses
  %i.baj = phi ptr [ %i.bam, %bb.lo ], [ %.lcssa481.promoted.i, %.lr.ph1003.i ] ; 2 uses
  %i.bak = phi i64 [ %i.bar, %bb.lo ], [ %i.axn, %.lr.ph1003.i ]
  %i.bal = load i8, ptr %i.baj, align 1, !noalias !192, !noundef !4
  %i.bam = getelementptr inbounds nuw i8, ptr %i.baj, i64 1 ; 4 uses
  %i.ban = zext i8 %i.bal to i64
  %i.bao = and i8 %i.bai, 63
  %i.bap = zext nneg i8 %i.bao to i64
  %i.baq = shl i64 %i.ban, %i.bap
  %i.bar = or i64 %i.baq, %i.bak                  ; 4 uses
  %i.bas = add i8 %i.bai, 8                       ; 5 uses
  %i.bat = zext i8 %i.bas to i64
  %i.bau = icmp samesign ugt i64 %i.bac, %i.bat
  br i1 %i.bau, label %bb.lo, label %._crit_edge1004.i.loopexit

._crit_edge1008.i.loopexit:                       ; preds = %.lr.ph2037
  store ptr %i.azs, ptr %i.ab, align 16, !alias.scope !191
  store i64 %i.azx, ptr %i.ac, align 32, !alias.scope !191
  store i8 %i.azy, ptr %i.ad, align 8, !alias.scope !191
  br label %._crit_edge1008.i

._crit_edge1008.i:                                ; preds = %._crit_edge1008.i.loopexit, %bb.ll
  %i.bav = phi i8 [ %i.axu, %bb.ll ], [ %i.azy, %._crit_edge1008.i.loopexit ]
  %i.baw = phi i64 [ %i.axn, %bb.ll ], [ %i.azx, %._crit_edge1008.i.loopexit ]
  %i.bax = and i8 %i.axs, 63
  %i.bay = zext nneg i8 %i.bax to i64
  %i.baz = lshr i64 %i.baw, %i.bay                ; 3 uses
  store i64 %i.baz, ptr %i.ac, align 32, !alias.scope !92
  %i.bba = sub i8 %i.bav, %i.axs                  ; 2 uses
  store i8 %i.bba, ptr %i.ad, align 8, !alias.scope !92
  %i.bbb = icmp eq i64 %i.tu, 0
  br i1 %i.bbb, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %._crit_edge1008.i
  store ptr @64, ptr %i.br, align 16, !alias.scope !92
  store i64 26, ptr %i.bs, align 8, !alias.scope !92
  br label %_RNvMs4_NtCs7kNFBubu20U_7zlib_rs7inflateNtB5_5State8dispatch.exit

bb.lq:                                            ; preds = %._crit_edge1008.i
  %i.bbc = add i64 %i.tu, -1                      ; 2 uses
  %i.bbd = icmp ult i64 %i.tu, 321
  br i1 %i.bbd, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %bb.lq
  %i.bbe = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.bbc
  %i.bbf = load i16, ptr %i.bbe, align 2, !alias.scope !92, !noundef !4 ; 6 uses
  %i.bbg = and i64 %i.baz, 3                      ; 2 uses
  %i.bbh = add nuw nsw i64 %i.bbg, 3              ; 6 uses
  %i.bbi = lshr i64 %i.baz, 2                     ; 2 uses
end_hunk_2
