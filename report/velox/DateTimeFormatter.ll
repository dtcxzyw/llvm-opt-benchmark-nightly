Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/DateTimeFormatter?download=true
inline.NumInlined: 2688
inline.NumDeleted: 1028
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK8facebook5velox9functions17DateTimeFormatter6formatERKNS0_9TimestampEPKNS0_2tz8TimeZoneEjPcbRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE:bb.a
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"struct.facebook::velox::Timestamp", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !196
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %1, align 8, !tbaa !198
  call void @_ZN8facebook5velox9Timestamp10toTimezoneERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(50) %2)
  %i.p = load i64, ptr %13, align 8, !tbaa !198
  %i.q = sub nsw i64 %i.p, %i.o
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0150 = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %i.r = call i64 @_ZNK8facebook5velox9Timestamp13toTimePointMsEb(ptr noundef nonnull align 8 dereferenceable(16) %13, i1 noundef zeroext %5) ; 3 uses
  %i.s = sdiv i64 %i.r, 86400000                  ; 2 uses
  %i.t = mul nsw i64 %i.s, 86400000
  %i.u = icmp sgt i64 %i.t, %i.r
  %i.v = sext i1 %i.u to i64
  %spec.select.i.i = add nsw i64 %i.s, %i.v       ; 6 uses
  %.neg.i.i = mul i64 %spec.select.i.i, -86400000
  %i.w = add i64 %.neg.i.i, %i.r
  %spec.select.i.i.i = call i64 @llvm.abs.i64(i64 %i.w, i1 true) ; 4 uses
  %i.x = udiv i64 %spec.select.i.i.i, 3600000     ; 6 uses
  %i.y = add nsw i64 %spec.select.i.i, 719468     ; 2 uses
  %i.z = icmp sgt i64 %spec.select.i.i, -719469
  %i.aa = add nsw i64 %spec.select.i.i, 573372
  %i.ab = select i1 %i.z, i64 %i.y, i64 %i.aa
  %i.ac = sdiv i64 %i.ab, 146097                  ; 2 uses
  %.neg.i.i166 = mul nsw i64 %i.ac, 4294821199
  %i.ad = add nsw i64 %.neg.i.i166, %i.y
  %i.ae = trunc i64 %i.ad to i32                  ; 5 uses
  %i.af = udiv i32 %i.ae, 1460
  %i.ag = udiv i32 %i.ae, 36524
  %i.ah = udiv i32 %i.ae, 146096
  %.neg351 = add i32 %i.ag, %i.ae
  %i.ai = add nuw nsw i32 %i.ah, %i.af
  %i.aj = sub i32 %.neg351, %i.ai                 ; 3 uses
  %i.ak = udiv i32 %i.aj, 365                     ; 2 uses
  %i.al = trunc nsw i64 %i.ac to i32
  %i.am = mul nsw i32 %i.al, 400
  %i.an = add nsw i32 %i.ak, %i.am
  %i.ao = udiv i32 %i.aj, 1460
  %i.ap = udiv i32 %i.aj, 36500
  %.neg37.i.i = mul i32 %i.ak, -365
  %.neg38.i.i = sub i32 %i.ae, %i.ao
  %.neg25.i.i = add i32 %.neg38.i.i, %i.ap
  %i.aq = add i32 %.neg25.i.i, %.neg37.i.i        ; 2 uses
  %i.ar = mul i32 %i.aq, 5
  %i.as = add i32 %i.ar, 2                        ; 2 uses
  %i.at = udiv i32 %i.as, 153                     ; 2 uses
  %i.au = icmp ult i32 %i.as, 1530
  %.v.i.i = select i1 %i.au, i32 3, i32 -9
  %i.av = add nsw i32 %.v.i.i, %i.at              ; 3 uses
  %i.aw = icmp ult i32 %i.av, 3
  %i.ax = zext i1 %i.aw to i32
  %i.ay = add nsw i32 %i.an, %i.ax                ; 3 uses
  %i.az = sext i32 %i.ay to i64                   ; 10 uses
  %i.ba = trunc i64 %spec.select.i.i to i32       ; 2 uses
  %i.bb = icmp sgt i64 %spec.select.i.i, -5
  %i.bc = add i32 %i.ba, 4
  %.in.i.i = select i1 %i.bb, i32 %i.bc, i32 %i.ba
  %i.bd = urem i32 %.in.i.i, 7                    ; 4 uses
  %i.be = zext i32 %3 to i64                      ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 %i.be ; 14 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !43 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !43 ; 2 uses
  %i.bk = icmp eq ptr %i.bh, %i.bj
  br i1 %i.bk, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.bl = mul nuw i32 %i.at, 153
  %i.bm = add nuw i32 %i.bl, 2
  %i.bn = udiv i32 %i.bm, 5
  %i.bo = sub i32 %i.aq, %i.bn
  %.neg.i7.i.i = mul nsw i64 %i.x, -3600000
  %i.bp = add nsw i64 %.neg.i7.i.i, %spec.select.i.i.i
  %.neg.i.i.i = mul nsw i64 %i.x, -60
  %i.bq = udiv i64 %spec.select.i.i.i, 60000
  %i.br = add nsw i64 %.neg.i.i.i, %i.bq          ; 2 uses
  %.neg.i8.i.i = mul nsw i64 %i.br, -60000
  %i.bs = add i64 %i.bp, %.neg.i8.i.i             ; 2 uses
  %i.bt = sdiv i64 %i.bs, 1000                    ; 2 uses
  %.neg.i.i.i.i = mul i64 %i.bt, 64536
  %i.bu = add i64 %.neg.i.i.i.i, %i.bs            ; 2 uses
  %i.bv = add i32 %i.bo, 1
  %i.bw = and i32 %i.bv, 255                      ; 3 uses
  %reass.sub = sub nsw i32 %i.bw, %i.bd
  %i.bx = add nsw i32 %reass.sub, 6
  %i.by = uitofp nneg i32 %i.bx to double
  %i.bz = fdiv double %i.by, 7.000000e+00
  %i.ca = call double @llvm.ceil.f64(double %i.bz)
  %i.cb = fptoui double %i.ca to i32
  %.sroa.12.8.extract.trunc315 = trunc i32 %i.av to i8 ; 2 uses
  %i.cc = icmp ult i8 %.sroa.12.8.extract.trunc315, 3
  %.neg.i.i213 = sext i1 %i.cc to i64
  %i.cd = add nsw i64 %i.az, %.neg.i.i213         ; 4 uses
  %i.ce = and i32 %i.av, 255                      ; 3 uses
  %i.cf = add nsw i64 %i.cd, 4294966897
  %i.cg = icmp slt i64 %i.cd, 0
  %i.ch = select i1 %i.cg, i64 %i.cf, i64 %i.cd
  %.lhs.trunc = trunc i64 %i.ch to i32
  %i.ci = sdiv i32 %.lhs.trunc, 400
  %.sext = sext i32 %i.ci to i64                  ; 3 uses
  %.neg15.i.i214 = mul nsw i64 %.sext, 4294966896
  %i.cj = add nsw i64 %.neg15.i.i214, %i.cd
  %i.ck = trunc i64 %i.cj to i32                  ; 3 uses
  %i.cl = icmp ugt i8 %.sroa.12.8.extract.trunc315, 2
  %.v.i.i215 = select i1 %i.cl, i32 -3, i32 9
  %i.cm = add nsw i32 %.v.i.i215, %i.ce
  %i.cn = mul nsw i32 %i.cm, 153
  %i.co = add nsw i32 %i.cn, 2
  %i.cp = udiv i32 %i.co, 5
  %i.cq = mul i32 %i.ck, 365
  %i.cr = lshr i32 %i.ck, 2
  %i.cs = udiv i32 %i.ck, 100
  %i.ct = add nsw i32 %i.bw, -1
  %i.cu = add nsw i32 %i.ct, %i.cp
  %i.cv = add nsw i32 %i.cu, %i.cr
  %i.cw = add i32 %i.cv, %i.cq
  %i.cx = sub i32 %i.cw, %i.cs
  %i.cy = mul nsw i64 %.sext, 146097
  %i.cz = sext i32 %i.cx to i64                   ; 2 uses
  %i.da = add nsw i64 %i.cy, -719468
  %i.db = add nsw i64 %i.da, %i.cz                ; 2 uses
  %i.dc = icmp eq i64 %.0150, 0
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.de = icmp sgt i64 %.0150, -1
  %spec.select.i211 = select i1 %i.de, i8 43, i8 45
  %spec.select73.i = call i64 @llvm.abs.i64(i64 %.0150, i1 true) ; 5 uses
  %i.df = udiv i64 %spec.select73.i, 60
  %i.dg = udiv i64 %spec.select73.i, 3600         ; 2 uses
  %i.dh = icmp samesign ult i64 %spec.select73.i, 36000 ; 2 uses
  %i.di = udiv i64 %spec.select73.i, 36000
  %i.dj = trunc i64 %i.di to i8
  %i.dk = add i8 %i.dj, 48
  %i.dl = urem i64 %i.dg, 10
  %i.dm = trunc nuw nsw i64 %i.dl to i8
  %i.dn = or disjoint i8 %i.dm, 48
  %i.do = trunc nuw i64 %i.dg to i8
  %i.dp = add nuw nsw i8 %i.do, 48
  %i.dq = urem i64 %i.df, 60                      ; 3 uses
  %i.dr = icmp eq i64 %i.dq, 0
  %i.ds = icmp samesign ult i64 %i.dq, 10         ; 2 uses
  %.lhs.trunc65.i = trunc nuw nsw i64 %i.dq to i8 ; 3 uses
  %i.dt = udiv i8 %.lhs.trunc65.i, 10
  %i.du = or disjoint i8 %i.dt, 48
  %i.dv = urem i8 %.lhs.trunc65.i, 10
  %i.dw = urem i64 %spec.select73.i, 60           ; 3 uses
  %.not.i = icmp eq i64 %i.dw, 0
  %i.dx = icmp samesign ult i64 %i.dw, 10         ; 2 uses
  %.lhs.trunc.i212 = trunc nuw nsw i64 %i.dw to i8 ; 3 uses
  %i.dy = udiv i8 %.lhs.trunc.i212, 10
  %i.dz = or disjoint i8 %i.dy, 48
  %i.ea = urem i8 %.lhs.trunc.i212, 10
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ej = trunc i64 %i.bu to i16                  ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  %i.el = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.em = icmp ult i16 %i.ej, 10
  %i.en = icmp ult i16 %i.ej, 100
  %i.eo = urem i16 %i.ej, 10
  %i.ep = trunc nuw nsw i16 %i.eo to i8
  %i.eq = or disjoint i8 %i.ep, 48
  %i.er = insertelement <2 x i16> poison, i16 %i.ej, i64 0
  %i.es = shufflevector <2 x i16> %i.er, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.et = udiv <2 x i16> %i.es, <i16 10, i16 100>
  %i.eu = urem <2 x i16> %i.et, splat (i16 10)    ; 2 uses
  %19 = bitcast <2 x i16> %i.eu to <4 x i8>
  %i.ev = extractelement <4 x i8> %19, i64 0
  %i.ew = or disjoint i8 %i.ev, 48
  %20 = bitcast <2 x i16> %i.eu to <4 x i8>
  %i.ex = extractelement <4 x i8> %20, i64 2
  %i.ey = or disjoint i8 %i.ex, 48
  %.lhs.trunc.i = trunc i64 %i.bu to i8           ; 3 uses
  %i.ez = urem i8 %.lhs.trunc.i, 10
  %i.fa = or disjoint i8 %i.ez, 48
  %i.fb = udiv i8 %.lhs.trunc.i, 10
  %i.fc = or disjoint i8 %i.fb, 48
  %i.fd = or disjoint i8 %.lhs.trunc.i, 48
  %i.fe = srem i64 %i.bt, 60
  %i.ff = srem i64 %i.br, 60
  %i.fg = add nuw nsw i64 %i.x, 23
  %i.fh = urem i64 %i.fg, 24
  %i.fi = add nuw nsw i64 %i.fh, 1
  %i.fj = urem i64 %i.x, 12
  %i.fk = add nuw nsw i64 %i.x, 11
  %i.fl = urem i64 %i.fk, 12
  %i.fm = add nuw nsw i64 %i.fl, 1
  %i.fn = icmp samesign ult i64 %spec.select.i.i.i, 43200000
  %i.fo = select i1 %i.fn, i16 19777, i16 19792
  %i.fp = add nsw i32 %i.ce, -1
  %i.fq = zext i32 %i.fp to i64
  %i.fr = add nsw i64 %i.az, -1                   ; 2 uses
  %i.fs = add nsw i64 %i.az, 4294966896
  %i.ft = icmp slt i32 %i.ay, 1                   ; 2 uses
  %i.fu = select i1 %i.ft, i64 %i.fs, i64 %i.fr
  %.lhs.trunc442 = trunc i64 %i.fu to i32
  %i.fv = sdiv i32 %.lhs.trunc442, 400
  %.sext443 = sext i32 %i.fv to i64               ; 2 uses
  %.neg15.i.i184 = mul nsw i64 %.sext443, 4294966896
  %i.fw = add nsw i64 %.neg15.i.i184, %i.fr
  %i.fx = trunc i64 %i.fw to i32                  ; 3 uses
  %i.fy = mul i32 %i.fx, 365
  %i.fz = lshr i32 %i.fx, 2
  %i.ga = udiv i32 %i.fx, 100
  %i.gb = add nuw nsw i32 %i.fz, 306
  %i.gc = add i32 %i.gb, %i.fy
  %i.gd = sub i32 %i.gc, %i.ga
  %i.ge = sext i32 %i.gd to i64
  %reass.add = sub nsw i64 %.sext, %.sext443
  %reass.mul = mul nsw i64 %reass.add, 146097
  %i.gf = add nsw i64 %reass.mul, 1
  %i.gg = sub nsw i64 %i.gf, %i.ge
  %i.gh = add nsw i64 %i.gg, %i.cz
  %i.gi = zext nneg i32 %i.bd to i64
  %i.gj = icmp eq i32 %i.bd, 0
  %i.gk = sub nsw i64 1, %i.az
  %i.gl = select i1 %i.ft, i64 %i.gk, i64 %i.az
  %i.gm = call i64 @llvm.abs.i64(i64 %i.az, i1 true) ; 2 uses
  %.lhs.trunc444 = trunc i64 %i.gm to i32
  %i.gn = urem i32 %.lhs.trunc444, 100
  %.zext = zext nneg i32 %i.gn to i64
  %.lhs.trunc445 = trunc i64 %i.gm to i32
  %i.go = udiv i32 %.lhs.trunc445, 100
  %.zext446 = zext nneg i32 %i.go to i64
  %i.gp = icmp sgt i32 %i.ay, 0
  %i.gq = select i1 %i.gp, i16 17473, i16 17218
  %.393 = select i1 %i.dh, i8 48, i8 %i.dk
  %.394 = select i1 %i.dh, i8 %i.dp, i8 %i.dn
  %.463 = select i1 %i.ds, i8 48, i8 %i.du
  %.464.v = select i1 %i.ds, i8 %.lhs.trunc65.i, i8 %i.dv
  %.464 = or disjoint i8 %.464.v, 48
  %.462 = select i1 %i.dx, i8 48, i8 %i.dz
  %.lhs.trunc.i212. = select i1 %i.dx, i8 %.lhs.trunc.i212, i8 %i.ea
  %i.gr = or disjoint i8 %.lhs.trunc.i212., 48
  br label %bb.d

._crit_edge:                                      ; preds = %bb.cf, %bb.c
  %.0.lcssa = phi ptr [ %4, %bb.c ], [ %.4, %bb.cf ]
  %i.gs = ptrtoint ptr %.0.lcssa to i64
  %i.gt = ptrtoint ptr %4 to i64
  %i.gu = sub i64 %i.gs, %i.gt                    ; 3 uses
  %.not158 = icmp sgt i64 %i.gu, %i.be
  br i1 %.not158, label %bb.cg, label %bb.cj, !prof !50

bb.d:                                             ; preds = %.lr.ph, %bb.cf
  %.0392 = phi ptr [ %4, %.lr.ph ], [ %.4, %bb.cf ] ; 56 uses
  %.sroa.0292.0391 = phi ptr [ %i.bh, %.lr.ph ], [ %i.qa, %bb.cf ] ; 22 uses
  %i.gv = load i32, ptr %.sroa.0292.0391, align 8, !tbaa !46
  %i.gw = icmp eq i32 %i.gv, 1
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 8 ; 3 uses
  br i1 %i.gw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !51
  %i.ha = load i64, ptr %i.gx, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0392, ptr align 1 %i.gz, i64 %i.ha, i1 false)
  %i.hb = load i64, ptr %i.gx, align 8, !tbaa !48
  %i.hc = getelementptr inbounds nuw i8, ptr %.0392, i64 %i.hb
  br label %bb.cf

bb.f:                                             ; preds = %bb.d
  %i.hd = load i8, ptr %i.gx, align 8, !tbaa !29  ; 4 uses
  switch i8 %i.hd, label %bb.cc [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 5, label %bb.m
    i8 6, label %bb.m
    i8 7, label %bb.n
    i8 3, label %bb.o
    i8 8, label %bb.o
    i8 9, label %bb.u
    i8 10, label %bb.v
    i8 11, label %bb.w
    i8 12, label %bb.x
    i8 13, label %bb.y
    i8 14, label %bb.z
    i8 15, label %bb.z
    i8 16, label %bb.z
    i8 17, label %bb.z
    i8 18, label %bb.ad
    i8 19, label %bb.ae
    i8 20, label %bb.af
    i8 21, label %bb.av
    i8 22, label %bb.bg
    i8 4, label %bb.ca
    i8 24, label %bb.cb
  ]

bb.g:                                             ; preds = %bb.f
  store i16 %i.gq, ptr %.0392, align 1
  %i.he = getelementptr inbounds nuw i8, ptr %.0392, i64 2
  br label %bb.cf

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i64 %.zext446, ptr %i.a, align 8, !tbaa !49
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !29
  %i.hh = call fastcc noundef i32 @_ZN8facebook5velox9functions12_GLOBAL__N_110padContentIlEEiRKT_cmPcS7_b(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.hg, ptr noundef %i.bf, ptr noundef %.0392)
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds i8, ptr %.0392, i64 %i.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  br label %bb.cf

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #2
  store i64 %i.az, ptr %i.b, align 8, !tbaa !49
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !29 ; 2 uses
  %i.hm = icmp eq i64 %i.hl, 2
  br i1 %i.hm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #2
  store i64 %.zext, ptr %i.c, align 8, !tbaa !49
  %i.hn = call fastcc noundef i32 @_ZN8facebook5velox9functions12_GLOBAL__N_110padContentIlEEiRKT_cmPcS7_b(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 2, ptr noundef %i.bf, ptr noundef %.0392)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #2
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i64 %i.gl, ptr %i.b, align 8, !tbaa !49
  %i.ho = call fastcc noundef i32 @_ZN8facebook5velox9functions12_GLOBAL__N_110padContentIlEEiRKT_cmPcS7_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.hl, ptr noundef %i.bf, ptr noundef %.0392)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn161.in = phi i32 [ %i.hn, %bb.j ], [ %i.ho, %bb.k ]
  %.pn161 = sext i32 %.pn161.in to i64
  %.1 = getelementptr inbounds i8, ptr %.0392, i64 %.pn161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #2
  br label %bb.cf

bb.m:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #2
  %i.hp = icmp eq i8 %i.hd, 6
  %or.cond = and i1 %i.gj, %i.hp
  %spec.store.select = select i1 %or.cond, i32 7, i32 %i.bd
  store i32 %spec.store.select, ptr %i.d, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !29
  %i.hs = call fastcc noundef i32 @_ZN8facebook5velox9functions12_GLOBAL__N_110padContentIjEEiRKT_cmPcS7_b(ptr noundef nonnull align 4 dereferenceable(4) %i.d, i64 noundef %i.hr, ptr noundef %i.bf, ptr noundef %.0392)
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds i8, ptr %.0392, i64 %i.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #2
  br label %bb.cf

bb.n:                                             ; preds = %bb.f
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !29
  %i.hx = icmp ult i64 %i.hw, 4
  %.pn349.v = select i1 %i.hx, ptr @_ZN8facebook5velox9functions12_GLOBAL__N_113weekdaysShortE, ptr @_ZN8facebook5velox9functions12_GLOBAL__N_112weekdaysFullE
  %.pn349 = getelementptr inbounds nuw [16 x i8], ptr %.pn349.v, i64 %i.gi ; 2 uses
  %.sroa.0278.0 = load i64, ptr %.pn349, align 16, !tbaa !49 ; 2 uses
  %.sroa.7281.0.in = getelementptr inbounds nuw i8, ptr %.pn349, i64 8
  %.sroa.7281.0 = load ptr, ptr %.sroa.7281.0.in, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0392, ptr align 1 %.sroa.7281.0, i64 %.sroa.0278.0, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %.0392, i64 %.sroa.0278.0
  br label %bb.cf

bb.o:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #2
  store i64 %i.az, ptr %i.e, align 8, !tbaa !49
  %i.hz = icmp eq i8 %i.hd, 3
  br i1 %i.hz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ia = call { i64, i64 } @_ZN8facebook5velox4date8iso_week20year_weeknum_weekday9from_daysENSt6chrono8durationIlSt5ratioILl86400ELl1EEEE(i64 %i.db) #2
  %.fca.0.extract.i = extractvalue { i64, i64 } %i.ia, 0 ; 2 uses
  %i.ib = add i64 %.fca.0.extract.i, 292275054
  %spec.select.i = icmp ult i64 %i.ib, 584554048
end_hunk_0
