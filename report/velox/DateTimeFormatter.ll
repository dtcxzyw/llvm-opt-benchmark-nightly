inline.NumInlined: 2688
inline.NumDeleted: 1028
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN8facebook5velox9functions12_GLOBAL__N_116getSpecifierNameENS1_23DateTimeFormatSpecifierE:bb.a
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK8facebook5velox9functions17DateTimeFormatter6formatERKNS0_9TimestampEPKNS0_2tz8TimeZoneEjPcbRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %6) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.214", align 16 ; 5 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.208", align 16 ; 5 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !38
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %1, align 8, !tbaa !40
  call void @_ZN8facebook5velox9Timestamp10toTimezoneERKNS0_2tz8TimeZoneE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(50) %2)
  %i.p = load i64, ptr %13, align 8, !tbaa !40
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
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !28 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !28 ; 2 uses
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
  %spec.select74.i = call i64 @llvm.abs.i64(i64 %.0150, i1 true) ; 5 uses
  %i.df = udiv i64 %spec.select74.i, 60
  %i.dg = udiv i64 %spec.select74.i, 3600         ; 2 uses
  %i.dh = icmp samesign ult i64 %spec.select74.i, 36000 ; 2 uses
  %i.di = udiv i64 %spec.select74.i, 36000
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
  %i.dw = urem i64 %spec.select74.i, 60           ; 3 uses
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
  %i.ej = trunc i64 %i.bu to i16                  ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  %i.el = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.em = icmp ult i16 %i.ej, 10
  %i.en = icmp ult i16 %i.ej, 100
  %i.eo = urem i16 %i.ej, 10
  %i.ep = trunc nuw nsw i16 %i.eo to i8
  %i.eq = or disjoint i8 %i.ep, 48
  %19 = udiv i16 %i.ej, 10
  %20 = urem i16 %19, 10
  %21 = trunc nuw nsw i16 %20 to i8
  %22 = or disjoint i8 %21, 48
  %23 = udiv i16 %i.ej, 100
  %24 = urem i16 %23, 10
  %25 = trunc nuw nsw i16 %24 to i8
  %i.er = or disjoint i8 %25, 48
  %.lhs.trunc.i = trunc i64 %i.bu to i8           ; 3 uses
  %i.es = urem i8 %.lhs.trunc.i, 10
  %i.et = or disjoint i8 %i.es, 48
  %i.eu = udiv i8 %.lhs.trunc.i, 10
  %i.ev = or disjoint i8 %i.eu, 48
  %i.ew = or disjoint i8 %.lhs.trunc.i, 48
  %i.ex = srem i64 %i.bt, 60
  %i.ey = srem i64 %i.br, 60
  %i.ez = add nuw nsw i64 %i.x, 23
  %i.fa = urem i64 %i.ez, 24
  %i.fb = add nuw nsw i64 %i.fa, 1
  %i.fc = urem i64 %i.x, 12
  %i.fd = add nuw nsw i64 %i.x, 11
  %i.fe = urem i64 %i.fd, 12
  %i.ff = add nuw nsw i64 %i.fe, 1
  %i.fg = icmp samesign ult i64 %spec.select.i.i.i, 43200000
  %i.fh = select i1 %i.fg, i16 19777, i16 19792
  %i.fi = add nsw i32 %i.ce, -1
  %i.fj = zext i32 %i.fi to i64
  %i.fk = add nsw i64 %i.az, -1                   ; 2 uses
  %i.fl = add nsw i64 %i.az, 4294966896
  %i.fm = icmp slt i32 %i.ay, 1                   ; 2 uses
  %i.fn = select i1 %i.fm, i64 %i.fl, i64 %i.fk
  %.lhs.trunc442 = trunc i64 %i.fn to i32
  %i.fo = sdiv i32 %.lhs.trunc442, 400
  %.sext443 = sext i32 %i.fo to i64               ; 2 uses
  %.neg15.i.i184 = mul nsw i64 %.sext443, 4294966896
  %i.fp = add nsw i64 %.neg15.i.i184, %i.fk
  %i.fq = trunc i64 %i.fp to i32                  ; 3 uses
  %i.fr = mul i32 %i.fq, 365
  %i.fs = lshr i32 %i.fq, 2
  %i.ft = udiv i32 %i.fq, 100
  %i.fu = add nuw nsw i32 %i.fs, 306
  %i.fv = add i32 %i.fu, %i.fr
  %i.fw = sub i32 %i.fv, %i.ft
  %i.fx = sext i32 %i.fw to i64
  %reass.add = sub nsw i64 %.sext, %.sext443
  %reass.mul = mul nsw i64 %reass.add, 146097
  %i.fy = add nsw i64 %reass.mul, 1
  %i.fz = sub nsw i64 %i.fy, %i.fx
  %i.ga = add nsw i64 %i.fz, %i.cz
  %i.gb = zext nneg i32 %i.bd to i64
  %i.gc = icmp eq i32 %i.bd, 0
  %i.gd = sub nsw i64 1, %i.az
  %i.ge = select i1 %i.fm, i64 %i.gd, i64 %i.az
  %i.gf = call i64 @llvm.abs.i64(i64 %i.az, i1 true) ; 2 uses
  %.lhs.trunc444 = trunc i64 %i.gf to i32
  %i.gg = urem i32 %.lhs.trunc444, 100
  %.zext = zext nneg i32 %i.gg to i64
  %.lhs.trunc445 = trunc i64 %i.gf to i32
  %i.gh = udiv i32 %.lhs.trunc445, 100
  %.zext446 = zext nneg i32 %i.gh to i64
  %i.gi = icmp sgt i32 %i.ay, 0
  %i.gj = select i1 %i.gi, i16 17473, i16 17218
  %.393 = select i1 %i.dh, i8 48, i8 %i.dk
  %.394 = select i1 %i.dh, i8 %i.dp, i8 %i.dn
  %.463 = select i1 %i.ds, i8 48, i8 %i.du
  %.464.v = select i1 %i.ds, i8 %.lhs.trunc65.i, i8 %i.dv
  %.464 = or disjoint i8 %.464.v, 48
  %.462 = select i1 %i.dx, i8 48, i8 %i.dz
  %.lhs.trunc.i212. = select i1 %i.dx, i8 %.lhs.trunc.i212, i8 %i.ea
  %i.gk = or disjoint i8 %.lhs.trunc.i212., 48
  br label %bb.d

._crit_edge:                                      ; preds = %bb.cf, %bb.c
  %.0.lcssa = phi ptr [ %4, %bb.c ], [ %.4, %bb.cf ]
  %i.gl = ptrtoint ptr %.0.lcssa to i64
  %i.gm = ptrtoint ptr %4 to i64
  %i.gn = sub i64 %i.gl, %i.gm                    ; 3 uses
  %.not158 = icmp sgt i64 %i.gn, %i.be
  br i1 %.not158, label %bb.cg, label %bb.cj, !prof !42

bb.d:                                             ; preds = %.lr.ph, %bb.cf
  %.0392 = phi ptr [ %4, %.lr.ph ], [ %.4, %bb.cf ] ; 56 uses
  %.sroa.0292.0391 = phi ptr [ %i.bh, %.lr.ph ], [ %i.pt, %bb.cf ] ; 22 uses
  %i.go = load i32, ptr %.sroa.0292.0391, align 8, !tbaa !30
  %i.gp = icmp eq i32 %i.go, 1
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 8 ; 3 uses
  br i1 %i.gp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !43
  %i.gt = load i64, ptr %i.gq, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0392, ptr align 1 %i.gs, i64 %i.gt, i1 false)
  %i.gu = load i64, ptr %i.gq, align 8, !tbaa !33
  %i.gv = getelementptr inbounds nuw i8, ptr %.0392, i64 %i.gu
  br label %bb.cf

bb.f:                                             ; preds = %bb.d
  %i.gw = load i8, ptr %i.gq, align 8, !tbaa !14  ; 4 uses
  switch i8 %i.gw, label %bb.cc [
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
  store i16 %i.gj, ptr %.0392, align 1
  %i.gx = getelementptr inbounds nuw i8, ptr %.0392, i64 2
  br label %bb.cf

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i64 %.zext446, ptr %i.a, align 8, !tbaa !39
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !14
  %i.ha = call fastcc noundef i32 @_ZN8facebook5velox9functions12_GLOBAL__N_110padContentIlEEiRKT_cmPcS7_b(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.gz, ptr noundef %i.bf, ptr noundef %.0392)
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds i8, ptr %.0392, i64 %i.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  br label %bb.cf

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #2
  store i64 %i.az, ptr %i.b, align 8, !tbaa !39
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !14 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 2
  br i1 %i.hf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #2
  store i64 %.zext, ptr %i.c, align 8, !tbaa !39
  %i.hg = call fastcc noundef i32 @_ZN8facebook5velox9functions12_GLOBAL__N_110padContentIlEEiRKT_cmPcS7_b(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 2, ptr noundef %i.bf, ptr noundef %.0392)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #2
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i64 %i.ge, ptr %i.b, align 8, !tbaa !39
  %i.hh = call fastcc noundef i32 @_ZN8facebook5velox9functions12_GLOBAL__N_110padContentIlEEiRKT_cmPcS7_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.he, ptr noundef %i.bf, ptr noundef %.0392)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn161.in = phi i32 [ %i.hg, %bb.j ], [ %i.hh, %bb.k ]
  %.pn161 = sext i32 %.pn161.in to i64
  %.1 = getelementptr inbounds i8, ptr %.0392, i64 %.pn161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #2
  br label %bb.cf

bb.m:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #2
  %i.hi = icmp eq i8 %i.gw, 6
  %or.cond = and i1 %i.gc, %i.hi
  %spec.store.select = select i1 %or.cond, i32 7, i32 %i.bd
  store i32 %spec.store.select, ptr %i.d, align 4
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !14
  %i.hl = call fastcc noundef i32 @_ZN8facebook5velox9functions12_GLOBAL__N_110padContentIjEEiRKT_cmPcS7_b(ptr noundef nonnull align 4 dereferenceable(4) %i.d, i64 noundef %i.hk, ptr noundef %i.bf, ptr noundef %.0392)
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds i8, ptr %.0392, i64 %i.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #2
  br label %bb.cf

bb.n:                                             ; preds = %bb.f
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !14
  %i.hq = icmp ult i64 %i.hp, 4
  %.pn349.v = select i1 %i.hq, ptr @_ZN8facebook5velox9functions12_GLOBAL__N_113weekdaysShortE, ptr @_ZN8facebook5velox9functions12_GLOBAL__N_112weekdaysFullE
  %.pn349 = getelementptr inbounds nuw [16 x i8], ptr %.pn349.v, i64 %i.gb ; 2 uses
  %.sroa.0278.0 = load i64, ptr %.pn349, align 16, !tbaa !39 ; 2 uses
  %.sroa.7281.0.in = getelementptr inbounds nuw i8, ptr %.pn349, i64 8
  %.sroa.7281.0 = load ptr, ptr %.sroa.7281.0.in, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0392, ptr align 1 %.sroa.7281.0, i64 %.sroa.0278.0, i1 false)
  %i.hr = getelementptr inbounds nuw i8, ptr %.0392, i64 %.sroa.0278.0
  br label %bb.cf

bb.o:                                             ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #2
  store i64 %i.az, ptr %i.e, align 8, !tbaa !39
  %i.hs = icmp eq i8 %i.gw, 3
  br i1 %i.hs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ht = call { i64, i64 } @_ZN8facebook5velox4date8iso_week20year_weeknum_weekday9from_daysENSt6chrono8durationIlSt5ratioILl86400ELl1EEEE(i64 %i.db) #2
  %.fca.0.extract.i = extractvalue { i64, i64 } %i.ht, 0 ; 2 uses
  %i.hu = add i64 %.fca.0.extract.i, 292275054
  %spec.select.i = icmp ult i64 %i.hu, 584554048
  %spec.select = select i1 %spec.select.i, i64 %.fca.0.extract.i, i64 %i.az ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions17DateTimeFormatter6formatERKNS0_9TimestampEPKNS0_2tz8TimeZoneEjPcbRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE:bb.a

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn160.in = phi i32 [ %i.ia, %bb.r ], [ %i.ib, %bb.s ]
  %.pn160 = sext i32 %.pn160.in to i64
  %.2 = getelementptr inbounds i8, ptr %.0392, i64 %.pn160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #2
  br label %bb.cf

bb.u:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #2
  store i64 %i.ga, ptr %i.g, align 8, !tbaa !39
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !14
  %i.ie = call fastcc noundef i32 @_ZN8facebook5velox9functions12_GLOBAL__N_110padContentIlEEiRKT_cmPcS7_b(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %i.id, ptr noundef %i.bf, ptr noundef %.0392)
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds i8, ptr %.0392, i64 %i.if
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #2
  br label %bb.cf

bb.v:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #2
  store i32 %i.ce, ptr %i.h, align 4, !tbaa !45
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !14
  %i.ij = call fastcc noundef i32 @_ZN8facebook5velox9functions12_GLOBAL__N_110padContentIjEEiRKT_cmPcS7_b(ptr noundef nonnull align 4 dereferenceable(4) %i.h, i64 noundef %i.ii, ptr noundef %i.bf, ptr noundef %.0392)
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds i8, ptr %.0392, i64 %i.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #2
  br label %bb.cf

bb.w:                                             ; preds = %bb.f
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.in = load i64, ptr %i.im, align 8, !tbaa !14
  %i.io = icmp ult i64 %i.in, 4
  %..v = select i1 %i.io, ptr @_ZN8facebook5velox9functions12_GLOBAL__N_111monthsShortE, ptr @_ZN8facebook5velox9functions12_GLOBAL__N_110monthsFullE
  %. = getelementptr inbounds nuw [16 x i8], ptr %..v, i64 %i.fj ; 2 uses
  %.sroa.0255.0 = load i64, ptr %., align 16, !tbaa !39 ; 2 uses
  %.sroa.7.0.in = getelementptr inbounds nuw i8, ptr %., i64 8
  %.sroa.7.0 = load ptr, ptr %.sroa.7.0.in, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0392, ptr align 1 %.sroa.7.0, i64 %.sroa.0255.0, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %.0392, i64 %.sroa.0255.0
  br label %bb.cf

bb.x:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #2
  store i32 %i.bw, ptr %i.i, align 4, !tbaa !45
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !14
  %i.is = call fastcc noundef i32 @_ZN8facebook5velox9functions12_GLOBAL__N_110padContentIjEEiRKT_cmPcS7_b(ptr noundef nonnull align 4 dereferenceable(4) %i.i, i64 noundef %i.ir, ptr noundef %i.bf, ptr noundef %.0392)
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds i8, ptr %.0392, i64 %i.it
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #2
  br label %bb.cf

bb.y:                                             ; preds = %bb.f
  store i16 %i.fh, ptr %.0392, align 1
  %i.iv = getelementptr inbounds nuw i8, ptr %.0392, i64 2
  br label %bb.cf

bb.z:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #2
  store i64 %i.x, ptr %i.j, align 8, !tbaa !39
  switch i8 %i.gw, label %bb.ac [
    i8 15, label %.sink.split
    i8 14, label %bb.aa
    i8 17, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  br label %.sink.split

bb.ab:                                            ; preds = %bb.z
  br label %.sink.split

.sink.split:                                      ; preds = %bb.z, %bb.ab, %bb.aa
  %.sink = phi i64 [ %i.fc, %bb.aa ], [ %i.fb, %bb.ab ], [ %i.ff, %bb.z ]
  store i64 %.sink, ptr %i.j, align 8, !tbaa !39
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.z
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !14
  %i.iy = call fastcc noundef i32 @_ZN8facebook5velox9functions12_GLOBAL__N_110padContentIlEEiRKT_cmPcS7_b(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %i.ix, ptr noundef %i.bf, ptr noundef %.0392)
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds i8, ptr %.0392, i64 %i.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #2
  br label %bb.cf

bb.ad:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #2
  store i64 %i.ey, ptr %i.k, align 8, !tbaa !39
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !14
  %i.jd = call fastcc noundef i32 @_ZN8facebook5velox9functions12_GLOBAL__N_110padContentIlEEiRKT_cmPcS7_b(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef %i.jc, ptr noundef %i.bf, ptr noundef %.0392)
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds i8, ptr %.0392, i64 %i.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #2
  br label %bb.cf

bb.ae:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #2
  store i64 %i.ex, ptr %i.l, align 8, !tbaa !39
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !14
  %i.ji = call fastcc noundef i32 @_ZN8facebook5velox9functions12_GLOBAL__N_110padContentIlEEiRKT_cmPcS7_b(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef %i.jh, ptr noundef %i.bf, ptr noundef %.0392)
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds i8, ptr %.0392, i64 %i.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #2
  br label %bb.cf

bb.af:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #2
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !14 ; 8 uses
  %i.jn = call i64 @llvm.umax.i64(i64 %i.jm, i64 3) ; 6 uses
  store ptr %i.ek, ptr %14, align 8, !tbaa !46, !alias.scope !47
  %i.jo = icmp ugt i64 %i.jm, 15
  br i1 %i.jo, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.jp = icmp slt i64 %i.jn, 0
  br i1 %i.jp, label %.noexc.i.i, label %bb.ah

.noexc.i.i:                                       ; preds = %bb.ag
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.118) #30
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.jq = add nuw i64 %i.jn, 1                    ; 2 uses
  %i.jr = icmp slt i64 %i.jq, 0
  br i1 %i.jr, label %.noexc5.i.i, label %.thread7.i.i.i, !prof !42

.noexc5.i.i:                                      ; preds = %bb.ah
  call void @_ZSt17__throw_bad_allocv() #30
  unreachable

.thread7.i.i.i:                                   ; preds = %bb.ah
  %i.js = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jq) #31 ; 2 uses
  store ptr %i.js, ptr %14, align 8, !tbaa !8, !alias.scope !47
  store i64 %i.jn, ptr %i.ek, align 8, !tbaa !14, !alias.scope !47
  br label %bb.ai

bb.ai:                                            ; preds = %.thread7.i.i.i, %bb.af
  %i.jt = phi ptr [ %i.js, %.thread7.i.i.i ], [ %i.ek, %bb.af ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jt, i8 48, i64 %i.jn, i1 false)
  store i64 %i.jn, ptr %i.el, align 8, !tbaa !50, !alias.scope !47
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jn
  store i8 0, ptr %i.ju, align 1, !tbaa !14
  %i.jv = load ptr, ptr %14, align 8, !tbaa !8, !alias.scope !47 ; 2 uses
  br i1 %i.em, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  store i8 48, ptr %i.jv, align 1, !tbaa !14
  %i.jw = load ptr, ptr %14, align 8, !tbaa !8, !alias.scope !47
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  store i8 48, ptr %i.jx, align 1, !tbaa !14
  %i.jy = load ptr, ptr %14, align 8, !tbaa !8, !alias.scope !47
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 2
  store i8 %i.ew, ptr %i.jz, align 1, !tbaa !14
  br label %bb.ao

.loopexit:                                        ; preds = %bb.ar
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ka = load ptr, ptr %14, align 8, !tbaa !8, !alias.scope !47 ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.ek
  br i1 %i.kb, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ak
  %i.kc = load i64, ptr %i.ek, align 8, !tbaa !14, !alias.scope !47
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #29
  br label %common.resume

bb.al:                                            ; preds = %bb.ai
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jv, i64 2 ; 2 uses
  br i1 %i.en, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i8 %i.et, ptr %i.ke, align 1, !tbaa !14
  %i.kf = load ptr, ptr %14, align 8, !tbaa !8, !alias.scope !47
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 1
  store i8 %i.ev, ptr %i.kg, align 1, !tbaa !14
  %i.kh = load ptr, ptr %14, align 8, !tbaa !8, !alias.scope !47
  store i8 48, ptr %i.kh, align 1, !tbaa !14
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  store i8 %i.eq, ptr %i.ke, align 1, !tbaa !14
  %i.ki = load ptr, ptr %14, align 8, !tbaa !8, !alias.scope !47
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 1
  store i8 %22, ptr %i.kj, align 1, !tbaa !14
  %i.kk = load ptr, ptr %14, align 8, !tbaa !8, !alias.scope !47
  store i8 %i.er, ptr %i.kk, align 1, !tbaa !14
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.aj
  %i.kl = load i64, ptr %i.el, align 8, !tbaa !50, !alias.scope !47 ; 8 uses
  %i.km = icmp ult i64 %i.kl, %i.jm
  br i1 %i.km, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.kn = sub nuw i64 %i.jm, %i.kl                ; 4 uses
  %i.ko = sub i64 9223372036854775807, %i.kl
  %i.kp = icmp ult i64 %i.ko, %i.kn
  br i1 %i.kp, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #30
          to label %.noexc18.i unwind label %.loopexit.split-lp

.noexc18.i:                                       ; preds = %bb.aq
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i: ; preds = %bb.ap
  %i.kq = load ptr, ptr %14, align 8, !tbaa !8, !alias.scope !47 ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.ek
  br i1 %i.kr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i
  %i.ks = icmp ult i64 %i.kl, 16
  call void @llvm.assume(i1 %i.ks)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i
  %i.kt = load i64, ptr %i.ek, align 8, !tbaa !14, !alias.scope !47
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.ku = phi i64 [ %i.kt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.jm, %i.ku
  br i1 %.not.i.i.i.i.i, label %bb.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.kl, i64 noundef 0, ptr noundef null, i64 noundef %i.kn)
          to label %.noexc19.i unwind label %.loopexit

.noexc19.i:                                       ; preds = %bb.ar
  %.pre.i.i.i = load ptr, ptr %14, align 8, !tbaa !8, !alias.scope !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i: ; preds = %.noexc19.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.kv = phi ptr [ %i.kq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i ], [ %.pre.i.i.i, %.noexc19.i ]
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kl ; 2 uses
  %cond.i.i.i.i.i = icmp eq i64 %i.kn, 1
  br i1 %cond.i.i.i.i.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i
  store i8 0, ptr %i.kw, align 1, !tbaa !14
  br label %.sink.split.i.i.i

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.kw, i8 0, i64 %i.kn, i1 false)
  br label %.sink.split.i.i.i

bb.au:                                            ; preds = %bb.ao
  %i.kx = icmp ult i64 %i.jm, %i.kl
  br i1 %i.kx, label %.sink.split.i.i.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_122formatFractionOfSecondB5cxx11Etm.exit

.sink.split.i.i.i:                                ; preds = %bb.au, %bb.at, %bb.as
  store i64 %i.jm, ptr %i.el, align 8, !tbaa !50, !alias.scope !47
  %i.ky = load ptr, ptr %14, align 8, !tbaa !8, !alias.scope !47
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.jm
  store i8 0, ptr %i.kz, align 1, !tbaa !14
  %.pre = load i64, ptr %i.el, align 8, !tbaa !50
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_122formatFractionOfSecondB5cxx11Etm.exit

common.resume:                                    ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198
  %common.resume.op = phi { ptr, i32 } [ %.pn162.pn, %bb.ck ], [ %i.lv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198 ], [ %i.mu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i205 ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %lpad.phi, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

_ZN8facebook5velox9functions12_GLOBAL__N_122formatFractionOfSecondB5cxx11Etm.exit: ; preds = %bb.au, %.sink.split.i.i.i
  %i.la = phi i64 [ %i.kl, %bb.au ], [ %.pre, %.sink.split.i.i.i ]
  %i.lb = load ptr, ptr %14, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0392, ptr align 1 %i.lb, i64 %i.la, i1 false)
  %i.lc = load i64, ptr %i.el, align 8, !tbaa !50 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.0392, i64 %i.lc
  %i.le = load ptr, ptr %14, align 8, !tbaa !8    ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.ek
  br i1 %i.lf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_122formatFractionOfSecondB5cxx11Etm.exit
  %i.lg = icmp ult i64 %i.lc, 16
  call void @llvm.assume(i1 %i.lg)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_122formatFractionOfSecondB5cxx11Etm.exit
  %i.lh = load i64, ptr %i.ek, align 8, !tbaa !14
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.li) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #2
  br label %bb.cf

bb.av:                                            ; preds = %bb.f
  br i1 %.not, label %bb.aw, label %bb.ax, !prof !42

bb.aw:                                            ; preds = %bb.av
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions17DateTimeFormatter6formatERKNS0_9TimestampEPKNS0_2tz8TimeZoneEjPcbRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE18veloxCheckFailArgs, ptr noundef nonnull @.str.100) #30
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0292.0391, i64 16
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !14
  %i.ll = icmp ult i64 %i.lk, 4
  br i1 %i.ll, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #2
  %i.lm = load i64, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.ln = sext i64 %i.lm to i128
  %i.lo = mul nsw i128 %i.ln, 1000
  %i.lp = load i64, ptr %i.ee, align 8, !tbaa !51 ; 2 uses
  %i.lq = udiv i64 %i.lp, 1000000
  %i.lr = zext nneg i64 %i.lq to i128
  %i.ls = add nsw i128 %i.lo, %i.lr               ; 2 uses
  %i.lt = add nsw i128 %i.ls, -9223372036854775808
  %or.cond.i = icmp ult i128 %i.lt, -18446744073709551616
  br i1 %or.cond.i, label %bb.az, label %_ZNK8facebook5velox9Timestamp8toMillisEv.exit

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #2
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #2, !noalias !52
  store i64 %i.lm, ptr %11, align 16, !tbaa !14, !noalias !52
  %i.lu = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.lp, ptr %i.lu, align 16, !tbaa !14, !noalias !52
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull @.str.167, i64 51, i64 67, ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #2, !noalias !52
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9Timestamp8toMillisEvE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr nonnull @.str.167) #30
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.lv = landingpad { ptr, i32 }
          cleanup
  %i.lw = load ptr, ptr %12, align 8, !tbaa !8    ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197: ; preds = %bb.bb
  %i.lz = load i64, ptr %i.lx, align 8, !tbaa !14
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.ma) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #2
  br label %common.resume

_ZNK8facebook5velox9Timestamp8toMillisEv.exit:    ; preds = %bb.ay
  %i.mb = trunc nsw i128 %i.ls to i64
  call void @_ZNK8facebook5velox2tz8TimeZone12getShortNameB5cxx11ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS2_7TChooseE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(50) %2, i64 %i.mb, i32 noundef 1)
  %i.mc = load ptr, ptr %15, align 8, !tbaa !8
  %i.md = load i64, ptr %i.eh, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0392, ptr align 1 %i.mc, i64 %i.md, i1 false)
  %i.me = load i64, ptr %i.eh, align 8, !tbaa !50 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.0392, i64 %i.me
  %i.mg = load ptr, ptr %15, align 8, !tbaa !8    ; 2 uses
  %i.mh = icmp eq ptr %i.mg, %i.ei
  br i1 %i.mh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i201: ; preds = %_ZNK8facebook5velox9Timestamp8toMillisEv.exit
  %i.mi = icmp ult i64 %i.me, 16
  call void @llvm.assume(i1 %i.mi)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %_ZNK8facebook5velox9Timestamp8toMillisEv.exit
  %i.mj = load i64, ptr %i.ei, align 8, !tbaa !14
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #2
  br label %bb.cf

bb.bc:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #2
  %i.ml = load i64, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.mm = sext i64 %i.ml to i128
  %i.mn = mul nsw i128 %i.mm, 1000
  %i.mo = load i64, ptr %i.ee, align 8, !tbaa !51 ; 2 uses
  %i.mp = udiv i64 %i.mo, 1000000
  %i.mq = zext nneg i64 %i.mp to i128
  %i.mr = add nsw i128 %i.mn, %i.mq               ; 2 uses
  %i.ms = add nsw i128 %i.mr, -9223372036854775808
  %or.cond.i203 = icmp ult i128 %i.ms, -18446744073709551616
end_hunk_1
