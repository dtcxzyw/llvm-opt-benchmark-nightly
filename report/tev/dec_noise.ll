Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dec_noise?download=true
inline.NumInlined: 91
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN3jxl6N_SSE413Random3PlanesEmmmmRKNSt3__14pairIPNS_5PlaneIfEENS_5RectTImEEEESA_SA_:bb.a
  %i.dm = xor i64 %i.dl, %i.da
  %i.dn = mul i64 %i.dm, -4658895280553007687     ; 2 uses
  %i.do = lshr i64 %i.dn, 27
  %i.dp = xor i64 %i.do, %i.dn
  %i.dq = mul i64 %i.dp, -7723592293110705685     ; 2 uses
  %i.dr = lshr i64 %i.dq, 31
  %i.ds = xor i64 %i.dr, %i.dq                    ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 %i.ds, ptr %i.dt, align 16, !tbaa !11
  %i.du = lshr i64 %i.dj, 30
  %i.dv = xor i64 %i.du, %i.dj
  %i.dw = mul i64 %i.dv, -4658895280553007687     ; 2 uses
  %i.dx = lshr i64 %i.dw, 27
  %i.dy = xor i64 %i.dx, %i.dw
  %i.dz = mul i64 %i.dy, -7723592293110705685     ; 2 uses
  %i.ea = lshr i64 %i.dz, 31
  %i.eb = xor i64 %i.ea, %i.dz                    ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 112
  store i64 %i.eb, ptr %i.ec, align 16, !tbaa !11
  %i.ed = lshr i64 %i.ds, 30
  %i.ee = xor i64 %i.ed, %i.ds
  %i.ef = mul i64 %i.ee, -4658895280553007687     ; 2 uses
  %i.eg = lshr i64 %i.ef, 27
  %i.eh = xor i64 %i.eg, %i.ef
  %i.ei = mul i64 %i.eh, -7723592293110705685     ; 2 uses
  %i.ej = lshr i64 %i.ei, 31
  %i.ek = xor i64 %i.ej, %i.ei
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !11
  %i.em = lshr i64 %i.eb, 30
  %i.en = xor i64 %i.em, %i.eb
  %i.eo = mul i64 %i.en, -4658895280553007687     ; 2 uses
  %i.ep = lshr i64 %i.eo, 27
  %i.eq = xor i64 %i.ep, %i.eo
  %i.er = mul i64 %i.eq, -7723592293110705685     ; 2 uses
  %i.es = lshr i64 %i.er, 31
  %i.et = xor i64 %i.es, %i.er
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 120
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !11
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ew = load ptr, ptr %4, align 8, !tbaa !16
  call fastcc void @_ZN3jxl6N_SSE411RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ev, ptr noundef %i.ew) #18
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ey = load ptr, ptr %5, align 8, !tbaa !16
  call fastcc void @_ZN3jxl6N_SSE411RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ex, ptr noundef %i.ey) #18
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fa = load ptr, ptr %6, align 8, !tbaa !16
  call fastcc void @_ZN3jxl6N_SSE411RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ez, ptr noundef %i.fa) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_ZN3jxl6N_SSE411RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge65, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.k = icmp ugt i64 %i.c, 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  br i1 %i.k, label %.preheader.lr.ph.us.preheader, label %.lr.ph64.split

.preheader.lr.ph.us.preheader:                    ; preds = %.lr.ph64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.sroa.11.0..sroa_idx82.le = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.15.0..sroa_idx88.le = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.19.0..sroa_idx94.le = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.preheader, %._crit_edge.us
  %.02762.us = phi i64 [ %i.an, %._crit_edge.us ], [ 0, %.preheader.lr.ph.us.preheader ] ; 2 uses
  %i.y = load i64, ptr %i.f, align 8, !tbaa !24
  %i.z = add i64 %i.y, %.02762.us
  %i.aa = mul i64 %i.j, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aa ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ab, i64 64) ]
  %i.ac = load i64, ptr %1, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  br label %.preheader.us

.lr.ph.us:                                        ; preds = %..preheader55_crit_edge.us, %.lr.ph.us
  %.061.us = phi i64 [ %i.ak, %.lr.ph.us ], [ 0, %..preheader55_crit_edge.us ] ; 2 uses
  %.160.us = phi i64 [ %i.al, %.lr.ph.us ], [ %i.ao, %..preheader55_crit_edge.us ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.061.us
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.160.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.ag = load <4 x i32>, ptr %i.ae, align 16, !tbaa !9, !alias.scope !61, !noalias !62
  %i.ah = lshr <4 x i32> %i.ag, splat (i32 9)
  %i.ai = bitcast <4 x i32> %i.ah to <2 x i64>
  %i.aj = or disjoint <2 x i64> %i.ai, splat (i64 4575657222473777152)
  store <2 x i64> %i.aj, ptr %i.af, align 16, !tbaa !9, !alias.scope !62, !noalias !61
  %i.ak = add nuw nsw i64 %.061.us, 4
  %i.al = add i64 %.160.us, 4                     ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.c
  br i1 %i.am, label %.lr.ph.us, label %._crit_edge.us, !llvm.loop !42

._crit_edge.us:                                   ; preds = %.lr.ph.us, %..preheader55_crit_edge.us
  %i.an = add nuw i64 %.02762.us, 1               ; 2 uses
  %exitcond78.not = icmp eq i64 %i.an, %i.e
  br i1 %exitcond78.not, label %._crit_edge65, label %.preheader.lr.ph.us, !llvm.loop !43

.preheader.us:                                    ; preds = %.preheader.lr.ph.us, %.preheader.us
  %i.ao = phi i64 [ 16, %.preheader.lr.ph.us ], [ %i.cx, %.preheader.us ] ; 4 uses
  %.02658.us = phi i64 [ 0, %.preheader.lr.ph.us ], [ %i.ao, %.preheader.us ]
  %i.ap = load <2 x i64>, ptr %0, align 16, !tbaa !9 ; 3 uses
  %i.aq = load <2 x i64>, ptr %i.l, align 16, !tbaa !9 ; 4 uses
  %i.ar = add <2 x i64> %i.aq, %i.ap
  store <2 x i64> %i.aq, ptr %0, align 16, !tbaa !9
  %i.as = shl <2 x i64> %i.ap, splat (i64 23)
  %i.at = xor <2 x i64> %i.as, %i.ap              ; 2 uses
  %i.au = lshr <2 x i64> %i.at, splat (i64 18)
  %i.av = lshr <2 x i64> %i.aq, splat (i64 5)
  %i.aw = xor <2 x i64> %i.av, %i.au
  %i.ax = xor <2 x i64> %i.aw, %i.aq
  %i.ay = xor <2 x i64> %i.ax, %i.at
  store <2 x i64> %i.ay, ptr %i.l, align 16, !tbaa !9
  %i.az = load <2 x i64>, ptr %i.m, align 16, !tbaa !9 ; 3 uses
  %i.ba = load <2 x i64>, ptr %i.n, align 16, !tbaa !9 ; 4 uses
  %i.bb = add <2 x i64> %i.ba, %i.az
  store <2 x i64> %i.ba, ptr %i.m, align 16, !tbaa !9
  %i.bc = shl <2 x i64> %i.az, splat (i64 23)
  %i.bd = xor <2 x i64> %i.bc, %i.az              ; 2 uses
  %i.be = lshr <2 x i64> %i.bd, splat (i64 18)
  %i.bf = lshr <2 x i64> %i.ba, splat (i64 5)
  %i.bg = xor <2 x i64> %i.bf, %i.be
  %i.bh = xor <2 x i64> %i.bg, %i.ba
  %i.bi = xor <2 x i64> %i.bh, %i.bd
  store <2 x i64> %i.bi, ptr %i.n, align 16, !tbaa !9
  %i.bj = load <2 x i64>, ptr %i.o, align 16, !tbaa !9 ; 3 uses
  %i.bk = load <2 x i64>, ptr %i.p, align 16, !tbaa !9 ; 4 uses
  %i.bl = add <2 x i64> %i.bk, %i.bj
  store <2 x i64> %i.bk, ptr %i.o, align 16, !tbaa !9
  %i.bm = shl <2 x i64> %i.bj, splat (i64 23)
  %i.bn = xor <2 x i64> %i.bm, %i.bj              ; 2 uses
  %i.bo = lshr <2 x i64> %i.bn, splat (i64 18)
  %i.bp = lshr <2 x i64> %i.bk, splat (i64 5)
  %i.bq = xor <2 x i64> %i.bp, %i.bo
  %i.br = xor <2 x i64> %i.bq, %i.bk
  %i.bs = xor <2 x i64> %i.br, %i.bn
  store <2 x i64> %i.bs, ptr %i.p, align 16, !tbaa !9
  %i.bt = load <2 x i64>, ptr %i.q, align 16, !tbaa !9 ; 3 uses
  %i.bu = load <2 x i64>, ptr %i.r, align 16, !tbaa !9 ; 4 uses
  %i.bv = add <2 x i64> %i.bu, %i.bt
  store <2 x i64> %i.bu, ptr %i.q, align 16, !tbaa !9
  %i.bw = shl <2 x i64> %i.bt, splat (i64 23)
  %i.bx = xor <2 x i64> %i.bw, %i.bt              ; 2 uses
  %i.by = lshr <2 x i64> %i.bx, splat (i64 18)
  %i.bz = lshr <2 x i64> %i.bu, splat (i64 5)
  %i.ca = xor <2 x i64> %i.bz, %i.by
  %i.cb = xor <2 x i64> %i.ca, %i.bu
  %i.cc = xor <2 x i64> %i.cb, %i.bx
  store <2 x i64> %i.cc, ptr %i.r, align 16, !tbaa !9
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.02658.us ; 4 uses
  %i.ce = bitcast <2 x i64> %i.ar to <4 x i32>
  %i.cf = lshr <4 x i32> %i.ce, splat (i32 9)
  %i.cg = bitcast <4 x i32> %i.cf to <2 x i64>
  %i.ch = or disjoint <2 x i64> %i.cg, splat (i64 4575657222473777152)
  store <2 x i64> %i.ch, ptr %i.cd, align 16, !tbaa !9, !alias.scope !63, !noalias !64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cj = bitcast <2 x i64> %i.bb to <4 x i32>
  %i.ck = lshr <4 x i32> %i.cj, splat (i32 9)
  %i.cl = bitcast <4 x i32> %i.ck to <2 x i64>
  %i.cm = or disjoint <2 x i64> %i.cl, splat (i64 4575657222473777152)
  store <2 x i64> %i.cm, ptr %i.ci, align 16, !tbaa !9, !alias.scope !65, !noalias !66
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.co = bitcast <2 x i64> %i.bl to <4 x i32>
  %i.cp = lshr <4 x i32> %i.co, splat (i32 9)
  %i.cq = bitcast <4 x i32> %i.cp to <2 x i64>
  %i.cr = or disjoint <2 x i64> %i.cq, splat (i64 4575657222473777152)
  store <2 x i64> %i.cr, ptr %i.cn, align 16, !tbaa !9, !alias.scope !67, !noalias !68
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.ct = bitcast <2 x i64> %i.bv to <4 x i32>
  %i.cu = lshr <4 x i32> %i.ct, splat (i32 9)
  %i.cv = bitcast <4 x i32> %i.cu to <2 x i64>
  %i.cw = or disjoint <2 x i64> %i.cv, splat (i64 4575657222473777152)
  store <2 x i64> %i.cw, ptr %i.cs, align 16, !tbaa !9, !alias.scope !69, !noalias !70
  %i.cx = add i64 %i.ao, 16                       ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.c
  br i1 %i.cy, label %.preheader.us, label %..preheader55_crit_edge.us, !llvm.loop !53

..preheader55_crit_edge.us:                       ; preds = %.preheader.us
  %i.cz = load <2 x i64>, ptr %0, align 16, !tbaa !9 ; 3 uses
  %i.da = load <2 x i64>, ptr %i.l, align 16, !tbaa !9 ; 4 uses
  %i.db = add <2 x i64> %i.da, %i.cz
  store <2 x i64> %i.da, ptr %0, align 16, !tbaa !9
  %i.dc = shl <2 x i64> %i.cz, splat (i64 23)
  %i.dd = xor <2 x i64> %i.dc, %i.cz              ; 2 uses
  %i.de = lshr <2 x i64> %i.dd, splat (i64 18)
  %i.df = lshr <2 x i64> %i.da, splat (i64 5)
  %i.dg = xor <2 x i64> %i.df, %i.de
  %i.dh = xor <2 x i64> %i.dg, %i.da
  %i.di = xor <2 x i64> %i.dh, %i.dd
  store <2 x i64> %i.di, ptr %i.l, align 16, !tbaa !9
  %i.dj = load <2 x i64>, ptr %i.s, align 16, !tbaa !9 ; 3 uses
  %i.dk = load <2 x i64>, ptr %i.t, align 16, !tbaa !9 ; 4 uses
  %i.dl = add <2 x i64> %i.dk, %i.dj
  store <2 x i64> %i.dk, ptr %i.s, align 16, !tbaa !9
  %i.dm = shl <2 x i64> %i.dj, splat (i64 23)
  %i.dn = xor <2 x i64> %i.dm, %i.dj              ; 2 uses
  %i.do = lshr <2 x i64> %i.dn, splat (i64 18)
  %i.dp = lshr <2 x i64> %i.dk, splat (i64 5)
  %i.dq = xor <2 x i64> %i.dp, %i.do
  %i.dr = xor <2 x i64> %i.dq, %i.dk
  %i.ds = xor <2 x i64> %i.dr, %i.dn
  store <2 x i64> %i.ds, ptr %i.t, align 16, !tbaa !9
  %i.dt = load <2 x i64>, ptr %i.u, align 16, !tbaa !9 ; 3 uses
  %i.du = load <2 x i64>, ptr %i.v, align 16, !tbaa !9 ; 4 uses
  %i.dv = add <2 x i64> %i.du, %i.dt
  store <2 x i64> %i.du, ptr %i.u, align 16, !tbaa !9
  %i.dw = shl <2 x i64> %i.dt, splat (i64 23)
  %i.dx = xor <2 x i64> %i.dw, %i.dt              ; 2 uses
  %i.dy = lshr <2 x i64> %i.dx, splat (i64 18)
  %i.dz = lshr <2 x i64> %i.du, splat (i64 5)
  %i.ea = xor <2 x i64> %i.dz, %i.dy
  %i.eb = xor <2 x i64> %i.ea, %i.du
  %i.ec = xor <2 x i64> %i.eb, %i.dx
  store <2 x i64> %i.ec, ptr %i.v, align 16, !tbaa !9
  %i.ed = load <2 x i64>, ptr %i.w, align 16, !tbaa !9 ; 3 uses
  %i.ee = load <2 x i64>, ptr %i.x, align 16, !tbaa !9 ; 4 uses
  %i.ef = add <2 x i64> %i.ee, %i.ed
  store <2 x i64> %i.ee, ptr %i.w, align 16, !tbaa !9
  %i.eg = shl <2 x i64> %i.ed, splat (i64 23)
  %i.eh = xor <2 x i64> %i.eg, %i.ed              ; 2 uses
  %i.ei = lshr <2 x i64> %i.eh, splat (i64 18)
  %i.ej = lshr <2 x i64> %i.ee, splat (i64 5)
  %i.ek = xor <2 x i64> %i.ej, %i.ei
  %i.el = xor <2 x i64> %i.ek, %i.ee
  %i.em = xor <2 x i64> %i.el, %i.eh
  store <2 x i64> %i.em, ptr %i.x, align 16, !tbaa !9
  store <2 x i64> %i.db, ptr %i.a, align 16
  store <2 x i64> %i.dl, ptr %.sroa.11.0..sroa_idx82.le, align 16
  store <2 x i64> %i.dv, ptr %.sroa.15.0..sroa_idx88.le, align 16
  store <2 x i64> %i.ef, ptr %.sroa.19.0..sroa_idx94.le, align 16
  %i.en = icmp ult i64 %i.ao, %i.c
  br i1 %i.en, label %.lr.ph.us, label %._crit_edge.us

.lr.ph64.split:                                   ; preds = %.lr.ph64
  %.not74 = icmp eq i64 %i.c, 0
  br i1 %.not74, label %.preheader55.preheader, label %.preheader55.us66.preheader

.preheader55.us66.preheader:                      ; preds = %.lr.ph64.split
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.sroa.11.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.15.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.19.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.eu = add nsw i64 %i.c, -1
  %i.ev = lshr i64 %i.eu, 2
  %i.ew = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %xtraiter = and i64 %i.ew, 3                    ; 3 uses
  %i.ex = icmp ult i64 %i.c, 13
  %unroll_iter = and i64 %i.ew, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod133 = icmp ne i64 %xtraiter, 0
  br label %.preheader55.us66

.preheader55.preheader:                           ; preds = %.lr.ph64.split
  %.pre = load <2 x i64>, ptr %0, align 16, !tbaa !9
  %.pre100 = load <2 x i64>, ptr %i.l, align 16, !tbaa !9
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre101 = load <2 x i64>, ptr %.phi.trans.insert, align 16, !tbaa !9
  %.phi.trans.insert102 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.pre103 = load <2 x i64>, ptr %.phi.trans.insert102, align 16, !tbaa !9
  %.phi.trans.insert104 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre105 = load <2 x i64>, ptr %.phi.trans.insert104, align 16, !tbaa !9
  %.phi.trans.insert106 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.pre107 = load <2 x i64>, ptr %.phi.trans.insert106, align 16, !tbaa !9
  %.phi.trans.insert108 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.pre109 = load <2 x i64>, ptr %.phi.trans.insert108, align 16, !tbaa !9
  %.phi.trans.insert110 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.pre111 = load <2 x i64>, ptr %.phi.trans.insert110, align 16, !tbaa !9
  br label %.preheader55

.preheader55.us66:                                ; preds = %.preheader55.us66.preheader, %._crit_edge.us73
  %.02762.us67 = phi i64 [ %i.ib, %._crit_edge.us73 ], [ 0, %.preheader55.us66.preheader ] ; 2 uses
  %i.ey = load i64, ptr %i.f, align 8, !tbaa !24
  %i.ez = add i64 %i.ey, %.02762.us67
  %i.fa = mul i64 %i.j, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fa ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fb, i64 64) ]
  %i.fc = load i64, ptr %1, align 8, !tbaa !25
  %i.fd = load <2 x i64>, ptr %0, align 16, !tbaa !9 ; 3 uses
  %i.fe = load <2 x i64>, ptr %i.l, align 16, !tbaa !9 ; 4 uses
  %i.ff = add <2 x i64> %i.fe, %i.fd
  store <2 x i64> %i.fe, ptr %0, align 16, !tbaa !9
  %i.fg = shl <2 x i64> %i.fd, splat (i64 23)
  %i.fh = xor <2 x i64> %i.fg, %i.fd              ; 2 uses
  %i.fi = lshr <2 x i64> %i.fh, splat (i64 18)
  %i.fj = lshr <2 x i64> %i.fe, splat (i64 5)
  %i.fk = xor <2 x i64> %i.fj, %i.fi
  %i.fl = xor <2 x i64> %i.fk, %i.fe
  %i.fm = xor <2 x i64> %i.fl, %i.fh
  store <2 x i64> %i.fm, ptr %i.l, align 16, !tbaa !9
  %i.fn = load <2 x i64>, ptr %i.eo, align 16, !tbaa !9 ; 3 uses
  %i.fo = load <2 x i64>, ptr %i.ep, align 16, !tbaa !9 ; 4 uses
  %i.fp = add <2 x i64> %i.fo, %i.fn
  store <2 x i64> %i.fo, ptr %i.eo, align 16, !tbaa !9
  %i.fq = shl <2 x i64> %i.fn, splat (i64 23)
  %i.fr = xor <2 x i64> %i.fq, %i.fn              ; 2 uses
  %i.fs = lshr <2 x i64> %i.fr, splat (i64 18)
  %i.ft = lshr <2 x i64> %i.fo, splat (i64 5)
  %i.fu = xor <2 x i64> %i.ft, %i.fs
  %i.fv = xor <2 x i64> %i.fu, %i.fo
  %i.fw = xor <2 x i64> %i.fv, %i.fr
  store <2 x i64> %i.fw, ptr %i.ep, align 16, !tbaa !9
  %i.fx = load <2 x i64>, ptr %i.eq, align 16, !tbaa !9 ; 3 uses
  %i.fy = load <2 x i64>, ptr %i.er, align 16, !tbaa !9 ; 4 uses
  %i.fz = add <2 x i64> %i.fy, %i.fx
  store <2 x i64> %i.fy, ptr %i.eq, align 16, !tbaa !9
  %i.ga = shl <2 x i64> %i.fx, splat (i64 23)
  %i.gb = xor <2 x i64> %i.ga, %i.fx              ; 2 uses
  %i.gc = lshr <2 x i64> %i.gb, splat (i64 18)
  %i.gd = lshr <2 x i64> %i.fy, splat (i64 5)
  %i.ge = xor <2 x i64> %i.gd, %i.gc
  %i.gf = xor <2 x i64> %i.ge, %i.fy
  %i.gg = xor <2 x i64> %i.gf, %i.gb
  store <2 x i64> %i.gg, ptr %i.er, align 16, !tbaa !9
  %i.gh = load <2 x i64>, ptr %i.es, align 16, !tbaa !9 ; 3 uses
  %i.gi = load <2 x i64>, ptr %i.et, align 16, !tbaa !9 ; 4 uses
  %i.gj = add <2 x i64> %i.gi, %i.gh
  store <2 x i64> %i.gi, ptr %i.es, align 16, !tbaa !9
  %i.gk = shl <2 x i64> %i.gh, splat (i64 23)
  %i.gl = xor <2 x i64> %i.gk, %i.gh              ; 2 uses
  %i.gm = lshr <2 x i64> %i.gl, splat (i64 18)
  %i.gn = lshr <2 x i64> %i.gi, splat (i64 5)
  %i.go = xor <2 x i64> %i.gn, %i.gm
  %i.gp = xor <2 x i64> %i.go, %i.gi
  %i.gq = xor <2 x i64> %i.gp, %i.gl
  store <2 x i64> %i.gq, ptr %i.et, align 16, !tbaa !9
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fc ; 5 uses
  store <2 x i64> %i.ff, ptr %i.a, align 16
  store <2 x i64> %i.fp, ptr %.sroa.11.0..sroa_idx86, align 16
  store <2 x i64> %i.fz, ptr %.sroa.15.0..sroa_idx92, align 16
  store <2 x i64> %i.gj, ptr %.sroa.19.0..sroa_idx98, align 16
  br i1 %i.ex, label %.epil.preheader, label %.preheader55.us66.new

.preheader55.us66.new:                            ; preds = %.preheader55.us66, %.preheader55.us66.new
  %.061.us71 = phi i64 [ %i.ht, %.preheader55.us66.new ], [ 0, %.preheader55.us66 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader55.us66.new ], [ 0, %.preheader55.us66 ]
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.061.us71
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.061.us71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.gu = load <4 x i32>, ptr %i.gs, align 16, !tbaa !9, !alias.scope !61, !noalias !62
  %i.gv = lshr <4 x i32> %i.gu, splat (i32 9)
  %i.gw = bitcast <4 x i32> %i.gv to <2 x i64>
  %i.gx = or disjoint <2 x i64> %i.gw, splat (i64 4575657222473777152)
  store <2 x i64> %i.gx, ptr %i.gt, align 16, !tbaa !9, !alias.scope !62, !noalias !61
  %i.gy = or disjoint i64 %.061.us71, 4           ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gy
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gy
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.hb = load <4 x i32>, ptr %i.gz, align 16, !tbaa !9, !alias.scope !71, !noalias !72
  %i.hc = lshr <4 x i32> %i.hb, splat (i32 9)
  %i.hd = bitcast <4 x i32> %i.hc to <2 x i64>
  %i.he = or disjoint <2 x i64> %i.hd, splat (i64 4575657222473777152)
  store <2 x i64> %i.he, ptr %i.ha, align 16, !tbaa !9, !alias.scope !72, !noalias !71
  %i.hf = or disjoint i64 %.061.us71, 8           ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hf
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.hf
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.hi = load <4 x i32>, ptr %i.hg, align 16, !tbaa !9, !alias.scope !73, !noalias !74
  %i.hj = lshr <4 x i32> %i.hi, splat (i32 9)
  %i.hk = bitcast <4 x i32> %i.hj to <2 x i64>
  %i.hl = or disjoint <2 x i64> %i.hk, splat (i64 4575657222473777152)
  store <2 x i64> %i.hl, ptr %i.hh, align 16, !tbaa !9, !alias.scope !74, !noalias !73
  %i.hm = or disjoint i64 %.061.us71, 12          ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hm
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.hm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_AVX213Random3PlanesEmmmmRKNSt3__14pairIPNS_5PlaneIfEENS_5RectTImEEEESA_SA_:bb.a
  %i.bm = mul i64 %i.bl, -7723592293110705685     ; 2 uses
  %i.bn = lshr i64 %i.bm, 31
  %i.bo = xor i64 %i.bn, %i.bm                    ; 3 uses
  %.sroa.0.24.vec.insert = insertelement <4 x i64> %.sroa.0.16.vec.insert, i64 %i.bo, i64 3 ; 2 uses
  %i.bp = lshr i64 %i.bg, 30
  %i.bq = xor i64 %i.bp, %i.bg
  %i.br = mul i64 %i.bq, -4658895280553007687     ; 2 uses
  %i.bs = lshr i64 %i.br, 27
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = mul i64 %i.bt, -7723592293110705685     ; 2 uses
  %i.bv = lshr i64 %i.bu, 31
  %i.bw = xor i64 %i.bv, %i.bu                    ; 3 uses
  %.sroa.34.88.vec.insert = insertelement <4 x i64> %.sroa.34.80.vec.insert, i64 %i.bw, i64 3 ; 2 uses
  %i.bx = lshr i64 %i.bo, 30
  %i.by = xor i64 %i.bx, %i.bo
  %i.bz = mul i64 %i.by, -4658895280553007687     ; 2 uses
  %i.ca = lshr i64 %i.bz, 27
  %i.cb = xor i64 %i.ca, %i.bz
  %i.cc = mul i64 %i.cb, -7723592293110705685     ; 2 uses
  %i.cd = lshr i64 %i.cc, 31
  %i.ce = xor i64 %i.cd, %i.cc                    ; 3 uses
  %.sroa.18.32.vec.insert = insertelement <4 x i64> poison, i64 %i.ce, i64 0
  %i.cf = lshr i64 %i.bw, 30
  %i.cg = xor i64 %i.cf, %i.bw
  %i.ch = mul i64 %i.cg, -4658895280553007687     ; 2 uses
  %i.ci = lshr i64 %i.ch, 27
  %i.cj = xor i64 %i.ci, %i.ch
  %i.ck = mul i64 %i.cj, -7723592293110705685     ; 2 uses
  %i.cl = lshr i64 %i.ck, 31
  %i.cm = xor i64 %i.cl, %i.ck                    ; 3 uses
  %.sroa.50.96.vec.insert = insertelement <4 x i64> poison, i64 %i.cm, i64 0
  %i.cn = lshr i64 %i.ce, 30
  %i.co = xor i64 %i.cn, %i.ce
  %i.cp = mul i64 %i.co, -4658895280553007687     ; 2 uses
  %i.cq = lshr i64 %i.cp, 27
  %i.cr = xor i64 %i.cq, %i.cp
  %i.cs = mul i64 %i.cr, -7723592293110705685     ; 2 uses
  %i.ct = lshr i64 %i.cs, 31
  %i.cu = xor i64 %i.ct, %i.cs                    ; 3 uses
  %.sroa.18.40.vec.insert = insertelement <4 x i64> %.sroa.18.32.vec.insert, i64 %i.cu, i64 1
  %i.cv = lshr i64 %i.cm, 30
  %i.cw = xor i64 %i.cv, %i.cm
  %i.cx = mul i64 %i.cw, -4658895280553007687     ; 2 uses
  %i.cy = lshr i64 %i.cx, 27
  %i.cz = xor i64 %i.cy, %i.cx
  %i.da = mul i64 %i.cz, -7723592293110705685     ; 2 uses
  %i.db = lshr i64 %i.da, 31
  %i.dc = xor i64 %i.db, %i.da                    ; 3 uses
  %.sroa.50.104.vec.insert = insertelement <4 x i64> %.sroa.50.96.vec.insert, i64 %i.dc, i64 1
  %i.dd = lshr i64 %i.cu, 30
  %i.de = xor i64 %i.dd, %i.cu
  %i.df = mul i64 %i.de, -4658895280553007687     ; 2 uses
  %i.dg = lshr i64 %i.df, 27
  %i.dh = xor i64 %i.dg, %i.df
  %i.di = mul i64 %i.dh, -7723592293110705685     ; 2 uses
  %i.dj = lshr i64 %i.di, 31
  %i.dk = xor i64 %i.dj, %i.di                    ; 3 uses
  %.sroa.18.48.vec.insert = insertelement <4 x i64> %.sroa.18.40.vec.insert, i64 %i.dk, i64 2
  %i.dl = lshr i64 %i.dc, 30
  %i.dm = xor i64 %i.dl, %i.dc
  %i.dn = mul i64 %i.dm, -4658895280553007687     ; 2 uses
  %i.do = lshr i64 %i.dn, 27
  %i.dp = xor i64 %i.do, %i.dn
  %i.dq = mul i64 %i.dp, -7723592293110705685     ; 2 uses
  %i.dr = lshr i64 %i.dq, 31
  %i.ds = xor i64 %i.dr, %i.dq                    ; 3 uses
  %.sroa.50.112.vec.insert = insertelement <4 x i64> %.sroa.50.104.vec.insert, i64 %i.ds, i64 2
  %i.dt = lshr i64 %i.dk, 30
  %i.du = xor i64 %i.dt, %i.dk
  %i.dv = mul i64 %i.du, -4658895280553007687     ; 2 uses
  %i.dw = lshr i64 %i.dv, 27
  %i.dx = xor i64 %i.dw, %i.dv
  %i.dy = mul i64 %i.dx, -7723592293110705685     ; 2 uses
  %i.dz = lshr i64 %i.dy, 31
  %i.ea = xor i64 %i.dz, %i.dy
  %.sroa.18.56.vec.insert = insertelement <4 x i64> %.sroa.18.48.vec.insert, i64 %i.ea, i64 3 ; 2 uses
  %i.eb = lshr i64 %i.ds, 30
  %i.ec = xor i64 %i.eb, %i.ds
  %i.ed = mul i64 %i.ec, -4658895280553007687     ; 2 uses
  %i.ee = lshr i64 %i.ed, 27
  %i.ef = xor i64 %i.ee, %i.ed
  %i.eg = mul i64 %i.ef, -7723592293110705685     ; 2 uses
  %i.eh = lshr i64 %i.eg, 31
  %i.ei = xor i64 %i.eh, %i.eg
  %.sroa.50.120.vec.insert = insertelement <4 x i64> %.sroa.50.112.vec.insert, i64 %i.ei, i64 3 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ek = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.em = load i64, ptr %i.el, align 8, !tbaa !17, !noalias !119 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !18, !noalias !119 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17, !noalias !119
  %.not.i = icmp eq i64 %i.eo, 0
  br i1 %.not.i, label %_ZN3jxl6N_AVX211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE.exit, label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !21, !alias.scope !119
  %i.es = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.et = load i64, ptr %i.es, align 8, !tbaa !23, !alias.scope !119
  %i.eu = icmp ugt i64 %i.em, 16
  %.sroa.7.0..sroa_idx67.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph64.i
  %.sroa.50.0 = phi <4 x i64> [ %.sroa.50.120.vec.insert, %.lr.ph64.i ], [ %i.fq, %._crit_edge.i ] ; 2 uses
  %.sroa.34.0 = phi <4 x i64> [ %.sroa.34.88.vec.insert, %.lr.ph64.i ], [ %i.fi, %._crit_edge.i ] ; 2 uses
  %.sroa.18.0 = phi <4 x i64> [ %.sroa.18.56.vec.insert, %.lr.ph64.i ], [ %.sroa.50.1, %._crit_edge.i ] ; 2 uses
  %.sroa.0.0 = phi <4 x i64> [ %.sroa.0.24.vec.insert, %.lr.ph64.i ], [ %.sroa.34.1, %._crit_edge.i ] ; 2 uses
  %.02762.i = phi i64 [ 0, %.lr.ph64.i ], [ %i.he, %._crit_edge.i ] ; 2 uses
  %i.ev = load i64, ptr %i.ep, align 8, !tbaa !24, !noalias !119
  %i.ew = add i64 %i.ev, %.02762.i
  %i.ex = mul i64 %i.ew, %i.et
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ex ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ey, i64 64) ]
  %i.ez = load i64, ptr %i.ej, align 8, !tbaa !25, !noalias !119
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.ez ; 2 uses
  br i1 %i.eu, label %.preheader.i, label %.preheader55.i

.preheader55.i:                                   ; preds = %.preheader.i, %bb.b
  %.sroa.50.1 = phi <4 x i64> [ %.sroa.50.0, %bb.b ], [ %i.gi, %.preheader.i ] ; 5 uses
  %.sroa.34.1 = phi <4 x i64> [ %.sroa.34.0, %bb.b ], [ %i.ga, %.preheader.i ] ; 5 uses
  %.sroa.18.1 = phi <4 x i64> [ %.sroa.18.0, %bb.b ], [ %.sroa.50.2, %.preheader.i ] ; 3 uses
  %.sroa.0.1 = phi <4 x i64> [ %.sroa.0.0, %bb.b ], [ %.sroa.34.2, %.preheader.i ] ; 3 uses
  %.026.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.fs, %.preheader.i ] ; 2 uses
  %i.fb = add <4 x i64> %.sroa.0.1, %.sroa.34.1
  %i.fc = shl <4 x i64> %.sroa.0.1, splat (i64 23)
  %i.fd = xor <4 x i64> %i.fc, %.sroa.0.1         ; 2 uses
  %i.fe = lshr <4 x i64> %i.fd, splat (i64 18)
  %i.ff = lshr <4 x i64> %.sroa.34.1, splat (i64 5)
  %i.fg = xor <4 x i64> %i.ff, %i.fe
  %i.fh = xor <4 x i64> %i.fg, %.sroa.34.1
  %i.fi = xor <4 x i64> %i.fh, %i.fd              ; 2 uses
  %i.fj = add <4 x i64> %.sroa.18.1, %.sroa.50.1
  %i.fk = shl <4 x i64> %.sroa.18.1, splat (i64 23)
  %i.fl = xor <4 x i64> %i.fk, %.sroa.18.1        ; 2 uses
  %i.fm = lshr <4 x i64> %i.fl, splat (i64 18)
  %i.fn = lshr <4 x i64> %.sroa.50.1, splat (i64 5)
  %i.fo = xor <4 x i64> %i.fn, %i.fm
  %i.fp = xor <4 x i64> %i.fo, %.sroa.50.1
  %i.fq = xor <4 x i64> %i.fp, %i.fl              ; 2 uses
  store <4 x i64> %i.fb, ptr %i.c, align 32, !noalias !119
  store <4 x i64> %i.fj, ptr %.sroa.7.0..sroa_idx67.i, align 32, !noalias !119
  %i.fr = icmp ult i64 %.026.lcssa.i, %i.em
  br i1 %i.fr, label %.lr.ph.i, label %._crit_edge.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.sroa.50.2 = phi <4 x i64> [ %i.gi, %.preheader.i ], [ %.sroa.50.0, %bb.b ] ; 5 uses
  %.sroa.34.2 = phi <4 x i64> [ %i.ga, %.preheader.i ], [ %.sroa.34.0, %bb.b ] ; 5 uses
  %.sroa.18.2 = phi <4 x i64> [ %.sroa.50.2, %.preheader.i ], [ %.sroa.18.0, %bb.b ] ; 3 uses
  %.sroa.0.2 = phi <4 x i64> [ %.sroa.34.2, %.preheader.i ], [ %.sroa.0.0, %bb.b ] ; 3 uses
  %i.fs = phi i64 [ %i.gt, %.preheader.i ], [ 16, %bb.b ] ; 3 uses
  %.02658.i = phi i64 [ %i.fs, %.preheader.i ], [ 0, %bb.b ]
  %i.ft = add <4 x i64> %.sroa.0.2, %.sroa.34.2
  %i.fu = shl <4 x i64> %.sroa.0.2, splat (i64 23)
  %i.fv = xor <4 x i64> %i.fu, %.sroa.0.2         ; 2 uses
  %i.fw = lshr <4 x i64> %i.fv, splat (i64 18)
  %i.fx = lshr <4 x i64> %.sroa.34.2, splat (i64 5)
  %i.fy = xor <4 x i64> %i.fx, %i.fw
  %i.fz = xor <4 x i64> %i.fy, %.sroa.34.2
  %i.ga = xor <4 x i64> %i.fz, %i.fv              ; 2 uses
  %i.gb = add <4 x i64> %.sroa.18.2, %.sroa.50.2
  %i.gc = shl <4 x i64> %.sroa.18.2, splat (i64 23)
  %i.gd = xor <4 x i64> %i.gc, %.sroa.18.2        ; 2 uses
  %i.ge = lshr <4 x i64> %i.gd, splat (i64 18)
  %i.gf = lshr <4 x i64> %.sroa.50.2, splat (i64 5)
  %i.gg = xor <4 x i64> %i.gf, %i.ge
  %i.gh = xor <4 x i64> %i.gg, %.sroa.50.2
  %i.gi = xor <4 x i64> %i.gh, %i.gd              ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %.02658.i ; 2 uses
  %i.gk = bitcast <4 x i64> %i.ft to <8 x i32>
  %i.gl = lshr <8 x i32> %i.gk, splat (i32 9)
  %i.gm = bitcast <8 x i32> %i.gl to <4 x i64>
  %i.gn = or disjoint <4 x i64> %i.gm, splat (i64 4575657222473777152)
  store <4 x i64> %i.gn, ptr %i.gj, align 32, !tbaa !9, !alias.scope !120, !noalias !121
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.gp = bitcast <4 x i64> %i.gb to <8 x i32>
  %i.gq = lshr <8 x i32> %i.gp, splat (i32 9)
  %i.gr = bitcast <8 x i32> %i.gq to <4 x i64>
  %i.gs = or disjoint <4 x i64> %i.gr, splat (i64 4575657222473777152)
  store <4 x i64> %i.gs, ptr %i.go, align 32, !tbaa !9, !alias.scope !122, !noalias !123
  %i.gt = add nuw i64 %i.fs, 16                   ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.em
  br i1 %i.gu, label %.preheader.i, label %.preheader55.i, !llvm.loop !87

.lr.ph.i:                                         ; preds = %.preheader55.i, %.lr.ph.i
  %.061.i = phi i64 [ %i.hb, %.lr.ph.i ], [ 0, %.preheader55.i ] ; 2 uses
  %.160.i = phi i64 [ %i.hc, %.lr.ph.i ], [ %.026.lcssa.i, %.preheader55.i ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.061.i
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %.160.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.gx = load <8 x i32>, ptr %i.gv, align 32, !tbaa !9, !alias.scope !126, !noalias !127
  %i.gy = lshr <8 x i32> %i.gx, splat (i32 9)
  %i.gz = bitcast <8 x i32> %i.gy to <4 x i64>
  %i.ha = or disjoint <4 x i64> %i.gz, splat (i64 4575657222473777152)
  store <4 x i64> %i.ha, ptr %i.gw, align 32, !tbaa !9, !alias.scope !125, !noalias !128
  %i.hb = add nuw nsw i64 %.061.i, 8
  %i.hc = add i64 %.160.i, 8                      ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.em
  br i1 %i.hd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !93

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader55.i
  %i.he = add nuw i64 %.02762.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.he, %i.eo
  br i1 %exitcond.not.i, label %_ZN3jxl6N_AVX211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE.exit, label %bb.b, !llvm.loop !94

_ZN3jxl6N_AVX211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE.exit: ; preds = %._crit_edge.i, %bb.a
  %.sroa.50.3 = phi <4 x i64> [ %.sroa.50.120.vec.insert, %bb.a ], [ %i.fq, %._crit_edge.i ] ; 2 uses
  %.sroa.34.3 = phi <4 x i64> [ %.sroa.34.88.vec.insert, %bb.a ], [ %i.fi, %._crit_edge.i ] ; 2 uses
  %.sroa.18.3 = phi <4 x i64> [ %.sroa.18.56.vec.insert, %bb.a ], [ %.sroa.50.1, %._crit_edge.i ] ; 2 uses
  %.sroa.0.3 = phi <4 x i64> [ %.sroa.0.24.vec.insert, %bb.a ], [ %.sroa.34.1, %._crit_edge.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17, !noalias !119
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hg = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !17, !noalias !129 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !18, !noalias !129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !129
  %.not.i9 = icmp eq i64 %i.hk, 0
  br i1 %.not.i9, label %_ZN3jxl6N_AVX211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE.exit22, label %.lr.ph64.i10

.lr.ph64.i10:                                     ; preds = %_ZN3jxl6N_AVX211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !21, !alias.scope !129
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !23, !alias.scope !129
  %i.hq = icmp ugt i64 %i.hi, 16
  %.sroa.7.0..sroa_idx67.i11 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i15, %.lr.ph64.i10
  %.sroa.50.4 = phi <4 x i64> [ %.sroa.50.3, %.lr.ph64.i10 ], [ %i.im, %._crit_edge.i15 ] ; 2 uses
  %.sroa.34.4 = phi <4 x i64> [ %.sroa.34.3, %.lr.ph64.i10 ], [ %i.ie, %._crit_edge.i15 ] ; 2 uses
  %.sroa.18.4 = phi <4 x i64> [ %.sroa.18.3, %.lr.ph64.i10 ], [ %.sroa.50.5, %._crit_edge.i15 ] ; 2 uses
  %.sroa.0.4 = phi <4 x i64> [ %.sroa.0.3, %.lr.ph64.i10 ], [ %.sroa.34.5, %._crit_edge.i15 ] ; 2 uses
  %.02762.i12 = phi i64 [ 0, %.lr.ph64.i10 ], [ %i.ka, %._crit_edge.i15 ] ; 2 uses
  %i.hr = load i64, ptr %i.hl, align 8, !tbaa !24, !noalias !129
  %i.hs = add i64 %i.hr, %.02762.i12
  %i.ht = mul i64 %i.hs, %i.hp
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ht ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hu, i64 64) ]
  %i.hv = load i64, ptr %i.hf, align 8, !tbaa !25, !noalias !129
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hv ; 2 uses
  br i1 %i.hq, label %.preheader.i20, label %.preheader55.i13

.preheader55.i13:                                 ; preds = %.preheader.i20, %bb.c
  %.sroa.50.5 = phi <4 x i64> [ %.sroa.50.4, %bb.c ], [ %i.je, %.preheader.i20 ] ; 5 uses
  %.sroa.34.5 = phi <4 x i64> [ %.sroa.34.4, %bb.c ], [ %i.iw, %.preheader.i20 ] ; 5 uses
  %.sroa.18.5 = phi <4 x i64> [ %.sroa.18.4, %bb.c ], [ %.sroa.50.6, %.preheader.i20 ] ; 3 uses
  %.sroa.0.5 = phi <4 x i64> [ %.sroa.0.4, %bb.c ], [ %.sroa.34.6, %.preheader.i20 ] ; 3 uses
  %.026.lcssa.i14 = phi i64 [ 0, %bb.c ], [ %i.io, %.preheader.i20 ] ; 2 uses
  %i.hx = add <4 x i64> %.sroa.0.5, %.sroa.34.5
  %i.hy = shl <4 x i64> %.sroa.0.5, splat (i64 23)
  %i.hz = xor <4 x i64> %i.hy, %.sroa.0.5         ; 2 uses
  %i.ia = lshr <4 x i64> %i.hz, splat (i64 18)
  %i.ib = lshr <4 x i64> %.sroa.34.5, splat (i64 5)
  %i.ic = xor <4 x i64> %i.ib, %i.ia
  %i.id = xor <4 x i64> %i.ic, %.sroa.34.5
  %i.ie = xor <4 x i64> %i.id, %i.hz              ; 2 uses
  %i.if = add <4 x i64> %.sroa.18.5, %.sroa.50.5
  %i.ig = shl <4 x i64> %.sroa.18.5, splat (i64 23)
  %i.ih = xor <4 x i64> %i.ig, %.sroa.18.5        ; 2 uses
  %i.ii = lshr <4 x i64> %i.ih, splat (i64 18)
  %i.ij = lshr <4 x i64> %.sroa.50.5, splat (i64 5)
  %i.ik = xor <4 x i64> %i.ij, %i.ii
  %i.il = xor <4 x i64> %i.ik, %.sroa.50.5
  %i.im = xor <4 x i64> %i.il, %i.ih              ; 2 uses
  store <4 x i64> %i.hx, ptr %i.b, align 32, !noalias !129
  store <4 x i64> %i.if, ptr %.sroa.7.0..sroa_idx67.i11, align 32, !noalias !129
  %i.in = icmp ult i64 %.026.lcssa.i14, %i.hi
  br i1 %i.in, label %.lr.ph.i17, label %._crit_edge.i15

.preheader.i20:                                   ; preds = %bb.c, %.preheader.i20
  %.sroa.50.6 = phi <4 x i64> [ %i.je, %.preheader.i20 ], [ %.sroa.50.4, %bb.c ] ; 5 uses
  %.sroa.34.6 = phi <4 x i64> [ %i.iw, %.preheader.i20 ], [ %.sroa.34.4, %bb.c ] ; 5 uses
  %.sroa.18.6 = phi <4 x i64> [ %.sroa.50.6, %.preheader.i20 ], [ %.sroa.18.4, %bb.c ] ; 3 uses
  %.sroa.0.6 = phi <4 x i64> [ %.sroa.34.6, %.preheader.i20 ], [ %.sroa.0.4, %bb.c ] ; 3 uses
  %i.io = phi i64 [ %i.jp, %.preheader.i20 ], [ 16, %bb.c ] ; 3 uses
  %.02658.i21 = phi i64 [ %i.io, %.preheader.i20 ], [ 0, %bb.c ]
  %i.ip = add <4 x i64> %.sroa.0.6, %.sroa.34.6
  %i.iq = shl <4 x i64> %.sroa.0.6, splat (i64 23)
  %i.ir = xor <4 x i64> %i.iq, %.sroa.0.6         ; 2 uses
  %i.is = lshr <4 x i64> %i.ir, splat (i64 18)
  %i.it = lshr <4 x i64> %.sroa.34.6, splat (i64 5)
  %i.iu = xor <4 x i64> %i.it, %i.is
  %i.iv = xor <4 x i64> %i.iu, %.sroa.34.6
  %i.iw = xor <4 x i64> %i.iv, %i.ir              ; 2 uses
  %i.ix = add <4 x i64> %.sroa.18.6, %.sroa.50.6
  %i.iy = shl <4 x i64> %.sroa.18.6, splat (i64 23)
  %i.iz = xor <4 x i64> %i.iy, %.sroa.18.6        ; 2 uses
  %i.ja = lshr <4 x i64> %i.iz, splat (i64 18)
  %i.jb = lshr <4 x i64> %.sroa.50.6, splat (i64 5)
  %i.jc = xor <4 x i64> %i.jb, %i.ja
  %i.jd = xor <4 x i64> %i.jc, %.sroa.50.6
  %i.je = xor <4 x i64> %i.jd, %i.iz              ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %.02658.i21 ; 2 uses
  %i.jg = bitcast <4 x i64> %i.ip to <8 x i32>
  %i.jh = lshr <8 x i32> %i.jg, splat (i32 9)
  %i.ji = bitcast <8 x i32> %i.jh to <4 x i64>
  %i.jj = or disjoint <4 x i64> %i.ji, splat (i64 4575657222473777152)
  store <4 x i64> %i.jj, ptr %i.jf, align 32, !tbaa !9, !alias.scope !130, !noalias !131
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  %i.jl = bitcast <4 x i64> %i.ix to <8 x i32>
  %i.jm = lshr <8 x i32> %i.jl, splat (i32 9)
  %i.jn = bitcast <8 x i32> %i.jm to <4 x i64>
  %i.jo = or disjoint <4 x i64> %i.jn, splat (i64 4575657222473777152)
  store <4 x i64> %i.jo, ptr %i.jk, align 32, !tbaa !9, !alias.scope !132, !noalias !133
  %i.jp = add nuw i64 %i.io, 16                   ; 2 uses
  %i.jq = icmp ult i64 %i.jp, %i.hi
  br i1 %i.jq, label %.preheader.i20, label %.preheader55.i13, !llvm.loop !87

.lr.ph.i17:                                       ; preds = %.preheader55.i13, %.lr.ph.i17
  %.061.i18 = phi i64 [ %i.jx, %.lr.ph.i17 ], [ 0, %.preheader55.i13 ] ; 2 uses
  %.160.i19 = phi i64 [ %i.jy, %.lr.ph.i17 ], [ %.026.lcssa.i14, %.preheader55.i13 ] ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.061.i18
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %.160.i19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.jt = load <8 x i32>, ptr %i.jr, align 32, !tbaa !9, !alias.scope !136, !noalias !137
  %i.ju = lshr <8 x i32> %i.jt, splat (i32 9)
  %i.jv = bitcast <8 x i32> %i.ju to <4 x i64>
  %i.jw = or disjoint <4 x i64> %i.jv, splat (i64 4575657222473777152)
  store <4 x i64> %i.jw, ptr %i.js, align 32, !tbaa !9, !alias.scope !135, !noalias !138
  %i.jx = add nuw nsw i64 %.061.i18, 8
  %i.jy = add i64 %.160.i19, 8                    ; 2 uses
  %i.jz = icmp ult i64 %i.jy, %i.hi
  br i1 %i.jz, label %.lr.ph.i17, label %._crit_edge.i15, !llvm.loop !93

._crit_edge.i15:                                  ; preds = %.lr.ph.i17, %.preheader55.i13
  %i.ka = add nuw i64 %.02762.i12, 1              ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %i.ka, %i.hk
  br i1 %exitcond.not.i16, label %_ZN3jxl6N_AVX211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE.exit22, label %bb.c, !llvm.loop !94

_ZN3jxl6N_AVX211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE.exit22: ; preds = %._crit_edge.i15, %_ZN3jxl6N_AVX211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE.exit
  %.sroa.50.7 = phi <4 x i64> [ %.sroa.50.3, %_ZN3jxl6N_AVX211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE.exit ], [ %i.im, %._crit_edge.i15 ]
  %.sroa.34.7 = phi <4 x i64> [ %.sroa.34.3, %_ZN3jxl6N_AVX211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE.exit ], [ %i.ie, %._crit_edge.i15 ]
  %.sroa.18.7 = phi <4 x i64> [ %.sroa.18.3, %_ZN3jxl6N_AVX211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE.exit ], [ %.sroa.50.5, %._crit_edge.i15 ]
  %.sroa.0.7 = phi <4 x i64> [ %.sroa.0.3, %_ZN3jxl6N_AVX211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE.exit ], [ %.sroa.34.5, %._crit_edge.i15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !129
  %i.kb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.kc = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.kd = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !17, !noalias !139 ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !18, !noalias !139 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !139
  %.not.i23 = icmp eq i64 %i.kg, 0
  br i1 %.not.i23, label %_ZN3jxl6N_AVX211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE.exit36, label %.lr.ph64.i24

.lr.ph64.i24:                                     ; preds = %_ZN3jxl6N_AVX211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE.exit22
  %i.kh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kc, i64 40
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !21, !alias.scope !139
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !23, !alias.scope !139
  %i.km = icmp ugt i64 %i.ke, 16
  %.sroa.7.0..sroa_idx67.i25 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i29, %.lr.ph64.i24
  %.sroa.50.8 = phi <4 x i64> [ %.sroa.50.7, %.lr.ph64.i24 ], [ %i.li, %._crit_edge.i29 ] ; 2 uses
  %.sroa.34.8 = phi <4 x i64> [ %.sroa.34.7, %.lr.ph64.i24 ], [ %i.la, %._crit_edge.i29 ] ; 2 uses
  %.sroa.18.8 = phi <4 x i64> [ %.sroa.18.7, %.lr.ph64.i24 ], [ %.sroa.50.9, %._crit_edge.i29 ] ; 2 uses
  %.sroa.0.8 = phi <4 x i64> [ %.sroa.0.7, %.lr.ph64.i24 ], [ %.sroa.34.9, %._crit_edge.i29 ] ; 2 uses
  %.02762.i26 = phi i64 [ 0, %.lr.ph64.i24 ], [ %i.mw, %._crit_edge.i29 ] ; 2 uses
  %i.kn = load i64, ptr %i.kh, align 8, !tbaa !24, !noalias !139
  %i.ko = add i64 %i.kn, %.02762.i26
  %i.kp = mul i64 %i.ko, %i.kl
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kp ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kq, i64 64) ]
  %i.kr = load i64, ptr %i.kb, align 8, !tbaa !25, !noalias !139
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.kr ; 2 uses
  br i1 %i.km, label %.preheader.i34, label %.preheader55.i27

.preheader55.i27:                                 ; preds = %.preheader.i34, %bb.d
  %.sroa.50.9 = phi <4 x i64> [ %.sroa.50.8, %bb.d ], [ %i.ma, %.preheader.i34 ] ; 4 uses
  %.sroa.34.9 = phi <4 x i64> [ %.sroa.34.8, %bb.d ], [ %i.ls, %.preheader.i34 ] ; 4 uses
  %.sroa.18.9 = phi <4 x i64> [ %.sroa.18.8, %bb.d ], [ %.sroa.50.10, %.preheader.i34 ] ; 3 uses
  %.sroa.0.9 = phi <4 x i64> [ %.sroa.0.8, %bb.d ], [ %.sroa.34.10, %.preheader.i34 ] ; 3 uses
  %.026.lcssa.i28 = phi i64 [ 0, %bb.d ], [ %i.lk, %.preheader.i34 ] ; 2 uses
  %i.kt = add <4 x i64> %.sroa.0.9, %.sroa.34.9
  %i.ku = shl <4 x i64> %.sroa.0.9, splat (i64 23)
  %i.kv = xor <4 x i64> %i.ku, %.sroa.0.9         ; 2 uses
  %i.kw = lshr <4 x i64> %i.kv, splat (i64 18)
  %i.kx = lshr <4 x i64> %.sroa.34.9, splat (i64 5)
  %i.ky = xor <4 x i64> %i.kx, %i.kw
  %i.kz = xor <4 x i64> %i.ky, %.sroa.34.9
  %i.la = xor <4 x i64> %i.kz, %i.kv
  %i.lb = add <4 x i64> %.sroa.18.9, %.sroa.50.9
  %i.lc = shl <4 x i64> %.sroa.18.9, splat (i64 23)
  %i.ld = xor <4 x i64> %i.lc, %.sroa.18.9        ; 2 uses
  %i.le = lshr <4 x i64> %i.ld, splat (i64 18)
  %i.lf = lshr <4 x i64> %.sroa.50.9, splat (i64 5)
  %i.lg = xor <4 x i64> %i.lf, %i.le
  %i.lh = xor <4 x i64> %i.lg, %.sroa.50.9
  %i.li = xor <4 x i64> %i.lh, %i.ld
  store <4 x i64> %i.kt, ptr %i.a, align 32, !noalias !139
  store <4 x i64> %i.lb, ptr %.sroa.7.0..sroa_idx67.i25, align 32, !noalias !139
  %i.lj = icmp ult i64 %.026.lcssa.i28, %i.ke
  br i1 %i.lj, label %.lr.ph.i31, label %._crit_edge.i29

.preheader.i34:                                   ; preds = %bb.d, %.preheader.i34
  %.sroa.50.10 = phi <4 x i64> [ %i.ma, %.preheader.i34 ], [ %.sroa.50.8, %bb.d ] ; 5 uses
  %.sroa.34.10 = phi <4 x i64> [ %i.ls, %.preheader.i34 ], [ %.sroa.34.8, %bb.d ] ; 5 uses
  %.sroa.18.10 = phi <4 x i64> [ %.sroa.50.10, %.preheader.i34 ], [ %.sroa.18.8, %bb.d ] ; 3 uses
  %.sroa.0.10 = phi <4 x i64> [ %.sroa.34.10, %.preheader.i34 ], [ %.sroa.0.8, %bb.d ] ; 3 uses
  %i.lk = phi i64 [ %i.ml, %.preheader.i34 ], [ 16, %bb.d ] ; 3 uses
  %.02658.i35 = phi i64 [ %i.lk, %.preheader.i34 ], [ 0, %bb.d ]
  %i.ll = add <4 x i64> %.sroa.0.10, %.sroa.34.10
  %i.lm = shl <4 x i64> %.sroa.0.10, splat (i64 23)
  %i.ln = xor <4 x i64> %i.lm, %.sroa.0.10        ; 2 uses
  %i.lo = lshr <4 x i64> %i.ln, splat (i64 18)
  %i.lp = lshr <4 x i64> %.sroa.34.10, splat (i64 5)
  %i.lq = xor <4 x i64> %i.lp, %i.lo
  %i.lr = xor <4 x i64> %i.lq, %.sroa.34.10
  %i.ls = xor <4 x i64> %i.lr, %i.ln              ; 2 uses
  %i.lt = add <4 x i64> %.sroa.18.10, %.sroa.50.10
  %i.lu = shl <4 x i64> %.sroa.18.10, splat (i64 23)
  %i.lv = xor <4 x i64> %i.lu, %.sroa.18.10       ; 2 uses
  %i.lw = lshr <4 x i64> %i.lv, splat (i64 18)
  %i.lx = lshr <4 x i64> %.sroa.50.10, splat (i64 5)
  %i.ly = xor <4 x i64> %i.lx, %i.lw
  %i.lz = xor <4 x i64> %i.ly, %.sroa.50.10
  %i.ma = xor <4 x i64> %i.lz, %i.lv              ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %.02658.i35 ; 2 uses
  %i.mc = bitcast <4 x i64> %i.ll to <8 x i32>
  %i.md = lshr <8 x i32> %i.mc, splat (i32 9)
  %i.me = bitcast <8 x i32> %i.md to <4 x i64>
  %i.mf = or disjoint <4 x i64> %i.me, splat (i64 4575657222473777152)
  store <4 x i64> %i.mf, ptr %i.mb, align 32, !tbaa !9, !alias.scope !140, !noalias !141
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mb, i64 32
  %i.mh = bitcast <4 x i64> %i.lt to <8 x i32>
  %i.mi = lshr <8 x i32> %i.mh, splat (i32 9)
  %i.mj = bitcast <8 x i32> %i.mi to <4 x i64>
  %i.mk = or disjoint <4 x i64> %i.mj, splat (i64 4575657222473777152)
  store <4 x i64> %i.mk, ptr %i.mg, align 32, !tbaa !9, !alias.scope !142, !noalias !143
  %i.ml = add nuw i64 %i.lk, 16                   ; 2 uses
  %i.mm = icmp ult i64 %i.ml, %i.ke
  br i1 %i.mm, label %.preheader.i34, label %.preheader55.i27, !llvm.loop !87

.lr.ph.i31:                                       ; preds = %.preheader55.i27, %.lr.ph.i31
  %.061.i32 = phi i64 [ %i.mt, %.lr.ph.i31 ], [ 0, %.preheader55.i27 ] ; 2 uses
  %.160.i33 = phi i64 [ %i.mu, %.lr.ph.i31 ], [ %.026.lcssa.i28, %.preheader55.i27 ] ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.061.i32
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %.160.i33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.mp = load <8 x i32>, ptr %i.mn, align 32, !tbaa !9, !alias.scope !146, !noalias !147
  %i.mq = lshr <8 x i32> %i.mp, splat (i32 9)
  %i.mr = bitcast <8 x i32> %i.mq to <4 x i64>
  %i.ms = or disjoint <4 x i64> %i.mr, splat (i64 4575657222473777152)
  store <4 x i64> %i.ms, ptr %i.mo, align 32, !tbaa !9, !alias.scope !145, !noalias !148
  %i.mt = add nuw nsw i64 %.061.i32, 8
  %i.mu = add i64 %.160.i33, 8                    ; 2 uses
  %i.mv = icmp ult i64 %i.mu, %i.ke
  br i1 %i.mv, label %.lr.ph.i31, label %._crit_edge.i29, !llvm.loop !93

._crit_edge.i29:                                  ; preds = %.lr.ph.i31, %.preheader55.i27
  %i.mw = add nuw i64 %.02762.i26, 1              ; 2 uses
  %exitcond.not.i30 = icmp eq i64 %i.mw, %i.kg
  br i1 %exitcond.not.i30, label %_ZN3jxl6N_AVX211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE.exit36, label %bb.d, !llvm.loop !94

_ZN3jxl6N_AVX211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE.exit36: ; preds = %._crit_edge.i29, %_ZN3jxl6N_AVX211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE.exit22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !139
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN3jxl6N_SSE211BitsToFloatEPKjPf(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) initializes((0, 16)) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load <4 x i32>, ptr %0, align 16, !tbaa !9
  %i.b = lshr <4 x i32> %i.a, splat (i32 9)
  %i.c = bitcast <4 x i32> %i.b to <2 x i64>
  %i.d = or disjoint <2 x i64> %i.c, splat (i64 4575657222473777152)
  store <2 x i64> %i.d, ptr %1, align 16, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @_ZN3jxl6N_SSE213Random3PlanesEmmmmRKNSt3__14pairIPNS_5PlaneIfEENS_5RectTImEEEESA_SA_(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %6) #7 {
bb.a:
  %7 = alloca %"class.jxl::N_SSE2::(anonymous namespace)::Xorshift128Plus", align 16 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.a = shl i64 %0, 32
  %i.b = and i64 %1, 4294967295
  %i.c = add i64 %i.a, -7046029254386353131
  %i.d = add i64 %i.c, %i.b                       ; 2 uses
  %i.e = lshr i64 %i.d, 30
  %i.f = xor i64 %i.e, %i.d
  %i.g = mul i64 %i.f, -4658895280553007687       ; 2 uses
  %i.h = lshr i64 %i.g, 27
  %i.i = xor i64 %i.h, %i.g
  %i.j = mul i64 %i.i, -7723592293110705685       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j                       ; 3 uses
  store i64 %i.l, ptr %7, align 16, !tbaa !11
  %i.m = shl i64 %2, 32
  %i.n = and i64 %3, 4294967295
  %i.o = add i64 %i.m, -7046029254386353131
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %i.q = lshr i64 %i.p, 30
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, -4658895280553007687       ; 2 uses
  %i.t = lshr i64 %i.s, 27
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, -7723592293110705685       ; 2 uses
  %i.w = lshr i64 %i.v, 31
  %i.x = xor i64 %i.w, %i.v                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 %i.x, ptr %i.y, align 16, !tbaa !11
  %i.z = lshr i64 %i.l, 30
  %i.aa = xor i64 %i.z, %i.l
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 27
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = mul i64 %i.ad, -7723592293110705685     ; 2 uses
  %i.af = lshr i64 %i.ae, 31
  %i.ag = xor i64 %i.af, %i.ae                    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !11
  %i.ai = lshr i64 %i.x, 30
  %i.aj = xor i64 %i.ai, %i.x
  %i.ak = mul i64 %i.aj, -4658895280553007687     ; 2 uses
  %i.al = lshr i64 %i.ak, 27
  %i.am = xor i64 %i.al, %i.ak
  %i.an = mul i64 %i.am, -7723592293110705685     ; 2 uses
  %i.ao = lshr i64 %i.an, 31
  %i.ap = xor i64 %i.ao, %i.an                    ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !11
  %i.ar = lshr i64 %i.ag, 30
  %i.as = xor i64 %i.ar, %i.ag
  %i.at = mul i64 %i.as, -4658895280553007687     ; 2 uses
  %i.au = lshr i64 %i.at, 27
  %i.av = xor i64 %i.au, %i.at
  %i.aw = mul i64 %i.av, -7723592293110705685     ; 2 uses
  %i.ax = lshr i64 %i.aw, 31
  %i.ay = xor i64 %i.ax, %i.aw                    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.ay, ptr %i.az, align 16, !tbaa !11
  %i.ba = lshr i64 %i.ap, 30
  %i.bb = xor i64 %i.ba, %i.ap
  %i.bc = mul i64 %i.bb, -4658895280553007687     ; 2 uses
  %i.bd = lshr i64 %i.bc, 27
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = mul i64 %i.be, -7723592293110705685     ; 2 uses
  %i.bg = lshr i64 %i.bf, 31
  %i.bh = xor i64 %i.bg, %i.bf                    ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 80
  store i64 %i.bh, ptr %i.bi, align 16, !tbaa !11
  %i.bj = lshr i64 %i.ay, 30
  %i.bk = xor i64 %i.bj, %i.ay
  %i.bl = mul i64 %i.bk, -4658895280553007687     ; 2 uses
  %i.bm = lshr i64 %i.bl, 27
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = mul i64 %i.bn, -7723592293110705685     ; 2 uses
  %i.bp = lshr i64 %i.bo, 31
  %i.bq = xor i64 %i.bp, %i.bo                    ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !11
  %i.bs = lshr i64 %i.bh, 30
  %i.bt = xor i64 %i.bs, %i.bh
  %i.bu = mul i64 %i.bt, -4658895280553007687     ; 2 uses
  %i.bv = lshr i64 %i.bu, 27
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = mul i64 %i.bw, -7723592293110705685     ; 2 uses
  %i.by = lshr i64 %i.bx, 31
  %i.bz = xor i64 %i.by, %i.bx                    ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !11
  %i.cb = lshr i64 %i.bq, 30
  %i.cc = xor i64 %i.cb, %i.bq
  %i.cd = mul i64 %i.cc, -4658895280553007687     ; 2 uses
  %i.ce = lshr i64 %i.cd, 27
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = mul i64 %i.cf, -7723592293110705685     ; 2 uses
  %i.ch = lshr i64 %i.cg, 31
  %i.ci = xor i64 %i.ch, %i.cg                    ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %i.ci, ptr %i.cj, align 16, !tbaa !11
  %i.ck = lshr i64 %i.bz, 30
  %i.cl = xor i64 %i.ck, %i.bz
  %i.cm = mul i64 %i.cl, -4658895280553007687     ; 2 uses
  %i.cn = lshr i64 %i.cm, 27
  %i.co = xor i64 %i.cn, %i.cm
  %i.cp = mul i64 %i.co, -7723592293110705685     ; 2 uses
  %i.cq = lshr i64 %i.cp, 31
  %i.cr = xor i64 %i.cq, %i.cp                    ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 96
  store i64 %i.cr, ptr %i.cs, align 16, !tbaa !11
  %i.ct = lshr i64 %i.ci, 30
  %i.cu = xor i64 %i.ct, %i.ci
  %i.cv = mul i64 %i.cu, -4658895280553007687     ; 2 uses
  %i.cw = lshr i64 %i.cv, 27
  %i.cx = xor i64 %i.cw, %i.cv
  %i.cy = mul i64 %i.cx, -7723592293110705685     ; 2 uses
  %i.cz = lshr i64 %i.cy, 31
  %i.da = xor i64 %i.cz, %i.cy                    ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %i.da, ptr %i.db, align 8, !tbaa !11
  %i.dc = lshr i64 %i.cr, 30
  %i.dd = xor i64 %i.dc, %i.cr
  %i.de = mul i64 %i.dd, -4658895280553007687     ; 2 uses
  %i.df = lshr i64 %i.de, 27
  %i.dg = xor i64 %i.df, %i.de
  %i.dh = mul i64 %i.dg, -7723592293110705685     ; 2 uses
  %i.di = lshr i64 %i.dh, 31
  %i.dj = xor i64 %i.di, %i.dh                    ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 104
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !11
  %i.dl = lshr i64 %i.da, 30
  %i.dm = xor i64 %i.dl, %i.da
  %i.dn = mul i64 %i.dm, -4658895280553007687     ; 2 uses
  %i.do = lshr i64 %i.dn, 27
  %i.dp = xor i64 %i.do, %i.dn
  %i.dq = mul i64 %i.dp, -7723592293110705685     ; 2 uses
  %i.dr = lshr i64 %i.dq, 31
  %i.ds = xor i64 %i.dr, %i.dq                    ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 %i.ds, ptr %i.dt, align 16, !tbaa !11
  %i.du = lshr i64 %i.dj, 30
  %i.dv = xor i64 %i.du, %i.dj
  %i.dw = mul i64 %i.dv, -4658895280553007687     ; 2 uses
  %i.dx = lshr i64 %i.dw, 27
  %i.dy = xor i64 %i.dx, %i.dw
  %i.dz = mul i64 %i.dy, -7723592293110705685     ; 2 uses
  %i.ea = lshr i64 %i.dz, 31
  %i.eb = xor i64 %i.ea, %i.dz                    ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 112
  store i64 %i.eb, ptr %i.ec, align 16, !tbaa !11
  %i.ed = lshr i64 %i.ds, 30
  %i.ee = xor i64 %i.ed, %i.ds
  %i.ef = mul i64 %i.ee, -4658895280553007687     ; 2 uses
  %i.eg = lshr i64 %i.ef, 27
  %i.eh = xor i64 %i.eg, %i.ef
  %i.ei = mul i64 %i.eh, -7723592293110705685     ; 2 uses
  %i.ej = lshr i64 %i.ei, 31
  %i.ek = xor i64 %i.ej, %i.ei
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !11
  %i.em = lshr i64 %i.eb, 30
  %i.en = xor i64 %i.em, %i.eb
  %i.eo = mul i64 %i.en, -4658895280553007687     ; 2 uses
  %i.ep = lshr i64 %i.eo, 27
  %i.eq = xor i64 %i.ep, %i.eo
  %i.er = mul i64 %i.eq, -7723592293110705685     ; 2 uses
  %i.es = lshr i64 %i.er, 31
  %i.et = xor i64 %i.es, %i.er
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 120
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !11
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ew = load ptr, ptr %4, align 8, !tbaa !16
  call fastcc void @_ZN3jxl6N_SSE211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ev, ptr noundef %i.ew) #18
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ey = load ptr, ptr %5, align 8, !tbaa !16
  call fastcc void @_ZN3jxl6N_SSE211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ex, ptr noundef %i.ey) #18
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fa = load ptr, ptr %6, align 8, !tbaa !16
  call fastcc void @_ZN3jxl6N_SSE211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %i.ez, ptr noundef %i.fa) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_ZN3jxl6N_SSE211RandomImageEPNS0_12_GLOBAL__N_115Xorshift128PlusERKNS_5RectTImEEPNS_5PlaneIfEE(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly captures(none) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge65, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.k = icmp ugt i64 %i.c, 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  br i1 %i.k, label %.preheader.lr.ph.us.preheader, label %.lr.ph64.split

.preheader.lr.ph.us.preheader:                    ; preds = %.lr.ph64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.sroa.11.0..sroa_idx82.le = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.15.0..sroa_idx88.le = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.19.0..sroa_idx94.le = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.preheader, %._crit_edge.us
  %.02762.us = phi i64 [ %i.an, %._crit_edge.us ], [ 0, %.preheader.lr.ph.us.preheader ] ; 2 uses
  %i.y = load i64, ptr %i.f, align 8, !tbaa !24
  %i.z = add i64 %i.y, %.02762.us
  %i.aa = mul i64 %i.j, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aa ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ab, i64 64) ]
  %i.ac = load i64, ptr %1, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  br label %.preheader.us

.lr.ph.us:                                        ; preds = %..preheader55_crit_edge.us, %.lr.ph.us
  %.061.us = phi i64 [ %i.ak, %.lr.ph.us ], [ 0, %..preheader55_crit_edge.us ] ; 2 uses
  %.160.us = phi i64 [ %i.al, %.lr.ph.us ], [ %i.ao, %..preheader55_crit_edge.us ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.061.us
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.160.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.ag = load <4 x i32>, ptr %i.ae, align 16, !tbaa !9, !alias.scope !187, !noalias !188
  %i.ah = lshr <4 x i32> %i.ag, splat (i32 9)
  %i.ai = bitcast <4 x i32> %i.ah to <2 x i64>
  %i.aj = or disjoint <2 x i64> %i.ai, splat (i64 4575657222473777152)
  store <2 x i64> %i.aj, ptr %i.af, align 16, !tbaa !9, !alias.scope !188, !noalias !187
  %i.ak = add nuw nsw i64 %.061.us, 4
  %i.al = add i64 %.160.us, 4                     ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.c
  br i1 %i.am, label %.lr.ph.us, label %._crit_edge.us, !llvm.loop !152

._crit_edge.us:                                   ; preds = %.lr.ph.us, %..preheader55_crit_edge.us
  %i.an = add nuw i64 %.02762.us, 1               ; 2 uses
  %exitcond78.not = icmp eq i64 %i.an, %i.e
  br i1 %exitcond78.not, label %._crit_edge65, label %.preheader.lr.ph.us, !llvm.loop !153

.preheader.us:                                    ; preds = %.preheader.lr.ph.us, %.preheader.us
  %i.ao = phi i64 [ 16, %.preheader.lr.ph.us ], [ %i.cx, %.preheader.us ] ; 4 uses
  %.02658.us = phi i64 [ 0, %.preheader.lr.ph.us ], [ %i.ao, %.preheader.us ]
  %i.ap = load <2 x i64>, ptr %0, align 16, !tbaa !9, !alias.scope !189 ; 3 uses
  %i.aq = load <2 x i64>, ptr %i.l, align 16, !tbaa !9, !alias.scope !190 ; 4 uses
  %i.ar = add <2 x i64> %i.aq, %i.ap
  store <2 x i64> %i.aq, ptr %0, align 16, !tbaa !9, !alias.scope !191
  %i.as = shl <2 x i64> %i.ap, splat (i64 23)
  %i.at = xor <2 x i64> %i.as, %i.ap              ; 2 uses
  %i.au = lshr <2 x i64> %i.at, splat (i64 18)
  %i.av = lshr <2 x i64> %i.aq, splat (i64 5)
  %i.aw = xor <2 x i64> %i.av, %i.au
  %i.ax = xor <2 x i64> %i.aw, %i.aq
  %i.ay = xor <2 x i64> %i.ax, %i.at
  store <2 x i64> %i.ay, ptr %i.l, align 16, !tbaa !9, !alias.scope !192
  %i.az = load <2 x i64>, ptr %i.m, align 16, !tbaa !9, !alias.scope !189 ; 3 uses
  %i.ba = load <2 x i64>, ptr %i.n, align 16, !tbaa !9, !alias.scope !190 ; 4 uses
  %i.bb = add <2 x i64> %i.ba, %i.az
  store <2 x i64> %i.ba, ptr %i.m, align 16, !tbaa !9, !alias.scope !191
  %i.bc = shl <2 x i64> %i.az, splat (i64 23)
  %i.bd = xor <2 x i64> %i.bc, %i.az              ; 2 uses
  %i.be = lshr <2 x i64> %i.bd, splat (i64 18)
  %i.bf = lshr <2 x i64> %i.ba, splat (i64 5)
  %i.bg = xor <2 x i64> %i.bf, %i.be
  %i.bh = xor <2 x i64> %i.bg, %i.ba
  %i.bi = xor <2 x i64> %i.bh, %i.bd
  store <2 x i64> %i.bi, ptr %i.n, align 16, !tbaa !9, !alias.scope !192
  %i.bj = load <2 x i64>, ptr %i.o, align 16, !tbaa !9, !alias.scope !189 ; 3 uses
  %i.bk = load <2 x i64>, ptr %i.p, align 16, !tbaa !9, !alias.scope !190 ; 4 uses
  %i.bl = add <2 x i64> %i.bk, %i.bj
  store <2 x i64> %i.bk, ptr %i.o, align 16, !tbaa !9, !alias.scope !191
  %i.bm = shl <2 x i64> %i.bj, splat (i64 23)
  %i.bn = xor <2 x i64> %i.bm, %i.bj              ; 2 uses
  %i.bo = lshr <2 x i64> %i.bn, splat (i64 18)
  %i.bp = lshr <2 x i64> %i.bk, splat (i64 5)
  %i.bq = xor <2 x i64> %i.bp, %i.bo
  %i.br = xor <2 x i64> %i.bq, %i.bk
  %i.bs = xor <2 x i64> %i.br, %i.bn
  store <2 x i64> %i.bs, ptr %i.p, align 16, !tbaa !9, !alias.scope !192
  %i.bt = load <2 x i64>, ptr %i.q, align 16, !tbaa !9, !alias.scope !189 ; 3 uses
  %i.bu = load <2 x i64>, ptr %i.r, align 16, !tbaa !9, !alias.scope !190 ; 4 uses
  %i.bv = add <2 x i64> %i.bu, %i.bt
  store <2 x i64> %i.bu, ptr %i.q, align 16, !tbaa !9, !alias.scope !191
  %i.bw = shl <2 x i64> %i.bt, splat (i64 23)
  %i.bx = xor <2 x i64> %i.bw, %i.bt              ; 2 uses
  %i.by = lshr <2 x i64> %i.bx, splat (i64 18)
  %i.bz = lshr <2 x i64> %i.bu, splat (i64 5)
  %i.ca = xor <2 x i64> %i.bz, %i.by
  %i.cb = xor <2 x i64> %i.ca, %i.bu
  %i.cc = xor <2 x i64> %i.cb, %i.bx
  store <2 x i64> %i.cc, ptr %i.r, align 16, !tbaa !9, !alias.scope !192
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.02658.us ; 4 uses
  %i.ce = bitcast <2 x i64> %i.ar to <4 x i32>
  %i.cf = lshr <4 x i32> %i.ce, splat (i32 9)
  %i.cg = bitcast <4 x i32> %i.cf to <2 x i64>
  %i.ch = or disjoint <2 x i64> %i.cg, splat (i64 4575657222473777152)
  store <2 x i64> %i.ch, ptr %i.cd, align 16, !tbaa !9, !alias.scope !193, !noalias !194
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cj = bitcast <2 x i64> %i.bb to <4 x i32>
  %i.ck = lshr <4 x i32> %i.cj, splat (i32 9)
  %i.cl = bitcast <4 x i32> %i.ck to <2 x i64>
  %i.cm = or disjoint <2 x i64> %i.cl, splat (i64 4575657222473777152)
  store <2 x i64> %i.cm, ptr %i.ci, align 16, !tbaa !9, !alias.scope !195, !noalias !196
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.co = bitcast <2 x i64> %i.bl to <4 x i32>
  %i.cp = lshr <4 x i32> %i.co, splat (i32 9)
  %i.cq = bitcast <4 x i32> %i.cp to <2 x i64>
  %i.cr = or disjoint <2 x i64> %i.cq, splat (i64 4575657222473777152)
  store <2 x i64> %i.cr, ptr %i.cn, align 16, !tbaa !9, !alias.scope !197, !noalias !198
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.ct = bitcast <2 x i64> %i.bv to <4 x i32>
  %i.cu = lshr <4 x i32> %i.ct, splat (i32 9)
  %i.cv = bitcast <4 x i32> %i.cu to <2 x i64>
  %i.cw = or disjoint <2 x i64> %i.cv, splat (i64 4575657222473777152)
  store <2 x i64> %i.cw, ptr %i.cs, align 16, !tbaa !9, !alias.scope !199, !noalias !200
  %i.cx = add i64 %i.ao, 16                       ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.c
  br i1 %i.cy, label %.preheader.us, label %..preheader55_crit_edge.us, !llvm.loop !171

..preheader55_crit_edge.us:                       ; preds = %.preheader.us
  %i.cz = load <2 x i64>, ptr %0, align 16, !tbaa !9, !alias.scope !201 ; 3 uses
  %i.da = load <2 x i64>, ptr %i.l, align 16, !tbaa !9, !alias.scope !202 ; 4 uses
  %i.db = add <2 x i64> %i.da, %i.cz
  store <2 x i64> %i.da, ptr %0, align 16, !tbaa !9, !alias.scope !203
  %i.dc = shl <2 x i64> %i.cz, splat (i64 23)
  %i.dd = xor <2 x i64> %i.dc, %i.cz              ; 2 uses
  %i.de = lshr <2 x i64> %i.dd, splat (i64 18)
  %i.df = lshr <2 x i64> %i.da, splat (i64 5)
  %i.dg = xor <2 x i64> %i.df, %i.de
  %i.dh = xor <2 x i64> %i.dg, %i.da
  %i.di = xor <2 x i64> %i.dh, %i.dd
  store <2 x i64> %i.di, ptr %i.l, align 16, !tbaa !9, !alias.scope !204
  %i.dj = load <2 x i64>, ptr %i.s, align 16, !tbaa !9, !alias.scope !201 ; 3 uses
  %i.dk = load <2 x i64>, ptr %i.t, align 16, !tbaa !9, !alias.scope !202 ; 4 uses
  %i.dl = add <2 x i64> %i.dk, %i.dj
  store <2 x i64> %i.dk, ptr %i.s, align 16, !tbaa !9, !alias.scope !203
  %i.dm = shl <2 x i64> %i.dj, splat (i64 23)
  %i.dn = xor <2 x i64> %i.dm, %i.dj              ; 2 uses
  %i.do = lshr <2 x i64> %i.dn, splat (i64 18)
  %i.dp = lshr <2 x i64> %i.dk, splat (i64 5)
  %i.dq = xor <2 x i64> %i.dp, %i.do
  %i.dr = xor <2 x i64> %i.dq, %i.dk
  %i.ds = xor <2 x i64> %i.dr, %i.dn
  store <2 x i64> %i.ds, ptr %i.t, align 16, !tbaa !9, !alias.scope !204
  %i.dt = load <2 x i64>, ptr %i.u, align 16, !tbaa !9, !alias.scope !201 ; 3 uses
  %i.du = load <2 x i64>, ptr %i.v, align 16, !tbaa !9, !alias.scope !202 ; 4 uses
  %i.dv = add <2 x i64> %i.du, %i.dt
  store <2 x i64> %i.du, ptr %i.u, align 16, !tbaa !9, !alias.scope !203
  %i.dw = shl <2 x i64> %i.dt, splat (i64 23)
  %i.dx = xor <2 x i64> %i.dw, %i.dt              ; 2 uses
  %i.dy = lshr <2 x i64> %i.dx, splat (i64 18)
  %i.dz = lshr <2 x i64> %i.du, splat (i64 5)
  %i.ea = xor <2 x i64> %i.dz, %i.dy
  %i.eb = xor <2 x i64> %i.ea, %i.du
  %i.ec = xor <2 x i64> %i.eb, %i.dx
  store <2 x i64> %i.ec, ptr %i.v, align 16, !tbaa !9, !alias.scope !204
  %i.ed = load <2 x i64>, ptr %i.w, align 16, !tbaa !9, !alias.scope !201 ; 3 uses
  %i.ee = load <2 x i64>, ptr %i.x, align 16, !tbaa !9, !alias.scope !202 ; 4 uses
  %i.ef = add <2 x i64> %i.ee, %i.ed
  store <2 x i64> %i.ee, ptr %i.w, align 16, !tbaa !9, !alias.scope !203
  %i.eg = shl <2 x i64> %i.ed, splat (i64 23)
  %i.eh = xor <2 x i64> %i.eg, %i.ed              ; 2 uses
  %i.ei = lshr <2 x i64> %i.eh, splat (i64 18)
  %i.ej = lshr <2 x i64> %i.ee, splat (i64 5)
  %i.ek = xor <2 x i64> %i.ej, %i.ei
  %i.el = xor <2 x i64> %i.ek, %i.ee
  %i.em = xor <2 x i64> %i.el, %i.eh
  store <2 x i64> %i.em, ptr %i.x, align 16, !tbaa !9, !alias.scope !204
  store <2 x i64> %i.db, ptr %i.a, align 16
  store <2 x i64> %i.dl, ptr %.sroa.11.0..sroa_idx82.le, align 16
  store <2 x i64> %i.dv, ptr %.sroa.15.0..sroa_idx88.le, align 16
  store <2 x i64> %i.ef, ptr %.sroa.19.0..sroa_idx94.le, align 16
  %i.en = icmp ult i64 %i.ao, %i.c
  br i1 %i.en, label %.lr.ph.us, label %._crit_edge.us

.lr.ph64.split:                                   ; preds = %.lr.ph64
  %.not74 = icmp eq i64 %i.c, 0
  br i1 %.not74, label %.preheader55.preheader, label %.preheader55.us66.preheader

.preheader55.us66.preheader:                      ; preds = %.lr.ph64.split
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.sroa.11.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.15.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.19.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.eu = add nsw i64 %i.c, -1
  %i.ev = lshr i64 %i.eu, 2
  %i.ew = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %xtraiter = and i64 %i.ew, 3                    ; 3 uses
  %i.ex = icmp ult i64 %i.c, 13
  %unroll_iter = and i64 %i.ew, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod133 = icmp ne i64 %xtraiter, 0
  br label %.preheader55.us66

.preheader55.preheader:                           ; preds = %.lr.ph64.split
  %.pre = load <2 x i64>, ptr %0, align 16, !tbaa !9, !alias.scope !201
  %.pre100 = load <2 x i64>, ptr %i.l, align 16, !tbaa !9, !alias.scope !202
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre101 = load <2 x i64>, ptr %.phi.trans.insert, align 16, !tbaa !9, !alias.scope !201
  %.phi.trans.insert102 = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.pre103 = load <2 x i64>, ptr %.phi.trans.insert102, align 16, !tbaa !9, !alias.scope !202
  %.phi.trans.insert104 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre105 = load <2 x i64>, ptr %.phi.trans.insert104, align 16, !tbaa !9, !alias.scope !201
  %.phi.trans.insert106 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.pre107 = load <2 x i64>, ptr %.phi.trans.insert106, align 16, !tbaa !9, !alias.scope !202
  %.phi.trans.insert108 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.pre109 = load <2 x i64>, ptr %.phi.trans.insert108, align 16, !tbaa !9, !alias.scope !201
  %.phi.trans.insert110 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.pre111 = load <2 x i64>, ptr %.phi.trans.insert110, align 16, !tbaa !9, !alias.scope !202
  br label %.preheader55

.preheader55.us66:                                ; preds = %.preheader55.us66.preheader, %._crit_edge.us73
  %.02762.us67 = phi i64 [ %i.ib, %._crit_edge.us73 ], [ 0, %.preheader55.us66.preheader ] ; 2 uses
  %i.ey = load i64, ptr %i.f, align 8, !tbaa !24
  %i.ez = add i64 %i.ey, %.02762.us67
  %i.fa = mul i64 %i.j, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.fa ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fb, i64 64) ]
  %i.fc = load i64, ptr %1, align 8, !tbaa !25
  %i.fd = load <2 x i64>, ptr %0, align 16, !tbaa !9, !alias.scope !201 ; 3 uses
  %i.fe = load <2 x i64>, ptr %i.l, align 16, !tbaa !9, !alias.scope !202 ; 4 uses
  %i.ff = add <2 x i64> %i.fe, %i.fd
  store <2 x i64> %i.fe, ptr %0, align 16, !tbaa !9, !alias.scope !203
  %i.fg = shl <2 x i64> %i.fd, splat (i64 23)
  %i.fh = xor <2 x i64> %i.fg, %i.fd              ; 2 uses
  %i.fi = lshr <2 x i64> %i.fh, splat (i64 18)
  %i.fj = lshr <2 x i64> %i.fe, splat (i64 5)
  %i.fk = xor <2 x i64> %i.fj, %i.fi
  %i.fl = xor <2 x i64> %i.fk, %i.fe
  %i.fm = xor <2 x i64> %i.fl, %i.fh
  store <2 x i64> %i.fm, ptr %i.l, align 16, !tbaa !9, !alias.scope !204
  %i.fn = load <2 x i64>, ptr %i.eo, align 16, !tbaa !9, !alias.scope !201 ; 3 uses
  %i.fo = load <2 x i64>, ptr %i.ep, align 16, !tbaa !9, !alias.scope !202 ; 4 uses
  %i.fp = add <2 x i64> %i.fo, %i.fn
  store <2 x i64> %i.fo, ptr %i.eo, align 16, !tbaa !9, !alias.scope !203
  %i.fq = shl <2 x i64> %i.fn, splat (i64 23)
  %i.fr = xor <2 x i64> %i.fq, %i.fn              ; 2 uses
  %i.fs = lshr <2 x i64> %i.fr, splat (i64 18)
  %i.ft = lshr <2 x i64> %i.fo, splat (i64 5)
  %i.fu = xor <2 x i64> %i.ft, %i.fs
  %i.fv = xor <2 x i64> %i.fu, %i.fo
  %i.fw = xor <2 x i64> %i.fv, %i.fr
  store <2 x i64> %i.fw, ptr %i.ep, align 16, !tbaa !9, !alias.scope !204
  %i.fx = load <2 x i64>, ptr %i.eq, align 16, !tbaa !9, !alias.scope !201 ; 3 uses
  %i.fy = load <2 x i64>, ptr %i.er, align 16, !tbaa !9, !alias.scope !202 ; 4 uses
  %i.fz = add <2 x i64> %i.fy, %i.fx
  store <2 x i64> %i.fy, ptr %i.eq, align 16, !tbaa !9, !alias.scope !203
  %i.ga = shl <2 x i64> %i.fx, splat (i64 23)
  %i.gb = xor <2 x i64> %i.ga, %i.fx              ; 2 uses
  %i.gc = lshr <2 x i64> %i.gb, splat (i64 18)
  %i.gd = lshr <2 x i64> %i.fy, splat (i64 5)
  %i.ge = xor <2 x i64> %i.gd, %i.gc
  %i.gf = xor <2 x i64> %i.ge, %i.fy
  %i.gg = xor <2 x i64> %i.gf, %i.gb
  store <2 x i64> %i.gg, ptr %i.er, align 16, !tbaa !9, !alias.scope !204
  %i.gh = load <2 x i64>, ptr %i.es, align 16, !tbaa !9, !alias.scope !201 ; 3 uses
  %i.gi = load <2 x i64>, ptr %i.et, align 16, !tbaa !9, !alias.scope !202 ; 4 uses
  %i.gj = add <2 x i64> %i.gi, %i.gh
  store <2 x i64> %i.gi, ptr %i.es, align 16, !tbaa !9, !alias.scope !203
  %i.gk = shl <2 x i64> %i.gh, splat (i64 23)
  %i.gl = xor <2 x i64> %i.gk, %i.gh              ; 2 uses
  %i.gm = lshr <2 x i64> %i.gl, splat (i64 18)
  %i.gn = lshr <2 x i64> %i.gi, splat (i64 5)
  %i.go = xor <2 x i64> %i.gn, %i.gm
  %i.gp = xor <2 x i64> %i.go, %i.gi
  %i.gq = xor <2 x i64> %i.gp, %i.gl
  store <2 x i64> %i.gq, ptr %i.et, align 16, !tbaa !9, !alias.scope !204
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fc ; 5 uses
  store <2 x i64> %i.ff, ptr %i.a, align 16
  store <2 x i64> %i.fp, ptr %.sroa.11.0..sroa_idx86, align 16
  store <2 x i64> %i.fz, ptr %.sroa.15.0..sroa_idx92, align 16
  store <2 x i64> %i.gj, ptr %.sroa.19.0..sroa_idx98, align 16
  br i1 %i.ex, label %.epil.preheader, label %.preheader55.us66.new

.preheader55.us66.new:                            ; preds = %.preheader55.us66, %.preheader55.us66.new
  %.061.us71 = phi i64 [ %i.ht, %.preheader55.us66.new ], [ 0, %.preheader55.us66 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader55.us66.new ], [ 0, %.preheader55.us66 ]
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.061.us71
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.061.us71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.gu = load <4 x i32>, ptr %i.gs, align 16, !tbaa !9, !alias.scope !187, !noalias !188
  %i.gv = lshr <4 x i32> %i.gu, splat (i32 9)
  %i.gw = bitcast <4 x i32> %i.gv to <2 x i64>
  %i.gx = or disjoint <2 x i64> %i.gw, splat (i64 4575657222473777152)
  store <2 x i64> %i.gx, ptr %i.gt, align 16, !tbaa !9, !alias.scope !188, !noalias !187
  %i.gy = or disjoint i64 %.061.us71, 4           ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gy
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gy
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.hb = load <4 x i32>, ptr %i.gz, align 16, !tbaa !9, !alias.scope !205, !noalias !206
  %i.hc = lshr <4 x i32> %i.hb, splat (i32 9)
  %i.hd = bitcast <4 x i32> %i.hc to <2 x i64>
  %i.he = or disjoint <2 x i64> %i.hd, splat (i64 4575657222473777152)
  store <2 x i64> %i.he, ptr %i.ha, align 16, !tbaa !9, !alias.scope !206, !noalias !205
  %i.hf = or disjoint i64 %.061.us71, 8           ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hf
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.hf
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.hi = load <4 x i32>, ptr %i.hg, align 16, !tbaa !9, !alias.scope !207, !noalias !208
  %i.hj = lshr <4 x i32> %i.hi, splat (i32 9)
  %i.hk = bitcast <4 x i32> %i.hj to <2 x i64>
  %i.hl = or disjoint <2 x i64> %i.hk, splat (i64 4575657222473777152)
  store <2 x i64> %i.hl, ptr %i.hh, align 16, !tbaa !9, !alias.scope !208, !noalias !207
  %i.hm = or disjoint i64 %.061.us71, 12          ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hm
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.hm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
end_hunk_1
