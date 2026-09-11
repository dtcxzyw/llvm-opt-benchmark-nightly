Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/numbers?download=true
inline.NumInlined: 554
inline.NumDeleted: 144
begin_hunk_0_@_ZN4absl12lts_2026052616numbers_internal22RoundTripFloatToBufferEfPc:bb.a

.lr.ph.i.i99:                                     ; preds = %bb.r, %.lr.ph.i.i99
  %.04.i.i100 = phi i64 [ %.1.i.i106, %.lr.ph.i.i99 ], [ 32, %bb.r ] ; 2 uses
  %.0113.i.i101 = phi ptr [ %.112.i.i105, %.lr.ph.i.i99 ], [ @_ZN4absl12lts_2026052612_GLOBAL__N_112kPosExpTableE, %bb.r ] ; 2 uses
  %i.aw = lshr i64 %.04.i.i100, 1                 ; 3 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %.0113.i.i101, i64 %i.aw ; 2 uses
  %.val.i.i104 = load double, ptr %i.ax, align 8, !tbaa !42
  %i.ay = fcmp olt double %.val.i.i104, %i.k      ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ba = xor i64 %i.aw, -1
  %i.bb = add nsw i64 %.04.i.i100, %i.ba
  %.112.i.i105 = select i1 %i.ay, ptr %i.az, ptr %.0113.i.i101 ; 3 uses
  %.1.i.i106 = select i1 %i.ay, i64 %i.bb, i64 %i.aw ; 2 uses
  %i.bc = icmp sgt i64 %.1.i.i106, 0
  br i1 %i.bc, label %.lr.ph.i.i99, label %_ZSt11lower_boundIPKN4absl12lts_2026052612_GLOBAL__N_14SpecEdNS2_10ExpCompareEET_S7_S7_RKT0_T1_.exit107, !llvm.loop !40

_ZSt11lower_boundIPKN4absl12lts_2026052612_GLOBAL__N_14SpecEdNS2_10ExpCompareEET_S7_S7_RKT0_T1_.exit107: ; preds = %.lr.ph.i.i99
  %i.bd = icmp eq ptr %.112.i.i105, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_112kPosExpTableE, i64 768)
  %spec.select96 = select i1 %i.bd, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_112kPosExpTableE, i64 744), ptr %.112.i.i105
  br label %bb.u

bb.u:                                             ; preds = %_ZSt11lower_boundIPKN4absl12lts_2026052612_GLOBAL__N_14SpecEdNS2_10ExpCompareEET_S7_S7_RKT0_T1_.exit107, %_ZSt11lower_boundIPKN4absl12lts_2026052612_GLOBAL__N_14SpecEdNS2_10ExpCompareEET_S7_S7_RKT0_T1_.exit
  %.078 = phi ptr [ %spec.select, %_ZSt11lower_boundIPKN4absl12lts_2026052612_GLOBAL__N_14SpecEdNS2_10ExpCompareEET_S7_S7_RKT0_T1_.exit ], [ %spec.select96, %_ZSt11lower_boundIPKN4absl12lts_2026052612_GLOBAL__N_14SpecEdNS2_10ExpCompareEET_S7_S7_RKT0_T1_.exit107 ] ; 2 uses
  %i.be = load double, ptr %.078, align 8, !tbaa !42
  %i.bf = fcmp ogt double %i.be, %i.k
  %spec.select97.idx = select i1 %i.bf, i64 -24, i64 0
  %spec.select97 = getelementptr inbounds i8, ptr %.078, i64 %spec.select97.idx ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select97, i64 8
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !43 ; 2 uses
  %i.bi = fmul double %i.m, %i.bh
  %i.bj = fmul double %i.o, %i.bh
  %i.bk = getelementptr inbounds nuw i8, ptr %.079, i64 1 ; 3 uses
  %i.bl = tail call fastcc noundef ptr @_ZN4absl12lts_20260526L21OutputNecessaryDigitsEddPc(double noundef %i.bi, double noundef %i.bj, ptr noundef nonnull %i.bk) ; 2 uses
  %i.bm = load i8, ptr %i.bk, align 1, !tbaa !12
  store i8 %i.bm, ptr %.079, align 1, !tbaa !12
  store i8 46, ptr %i.bk, align 1, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.079, i64 2
  %i.bo = icmp eq ptr %i.bl, %i.bn
  %.2.idx = sext i1 %i.bo to i64
  %.2 = getelementptr inbounds i8, ptr %i.bl, i64 %.2.idx ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %spec.select97, i64 16
  %i.bq = load i32, ptr %i.bp, align 8
  store i32 %i.bq, ptr %.2, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.2, i64 4
  store i8 0, ptr %i.br, align 1, !tbaa !12
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.u, %bb.s, %bb.t, %bb.e, %bb.f, %bb.j, %bb.b
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @nextafterf(float noundef, float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc noundef nonnull ptr @_ZN4absl12lts_20260526L21OutputNecessaryDigitsEddPc(double noundef %0, double noundef %1, ptr nofree noundef writeonly captures(ret: address, provenance) initializes((0, 2)) %2) unnamed_addr #4 {
bb.a:
  %i.a = fadd double %1, f0xBF50000000000000
  %i.b = fptoui double %i.a to i64                ; 4 uses
  %i.c = uitofp i64 %i.b to double
  %i.d = fsub double %1, %i.c
  %i.e = fadd double %0, %i.d
  %i.f = fptoui double %i.e to i64                ; 3 uses
  %i.g = udiv i64 %i.f, 1000000000                ; 3 uses
  %i.h = trunc i64 %i.g to i16
  %i.i = and i64 %i.g, 4294967295
  %i.j = mul nuw nsw i64 %i.i, 1000000000         ; 2 uses
  %i.k = mul nuw nsw i64 %i.g, 103
  %i.l = lshr i64 %i.k, 10
  %i.m = trunc i64 %i.l to i16                    ; 2 uses
  %.neg.i = mul i16 %i.m, 246
  %i.n = add i16 %.neg.i, %i.h
  %i.o = shl i16 %i.n, 8
  %i.p = add i16 %i.m, 12336                      ; 2 uses
  %i.q = add i16 %i.p, %i.o
  store i16 %i.q, ptr %2, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 4 uses
  %i.s = sub i64 %i.b, %i.j                       ; 2 uses
  %i.t = icmp ugt i64 %i.s, 999999999
  br i1 %i.t, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.u = trunc i16 %i.p to i8
  %i.v = udiv i64 %i.b, 1000000000
  %i.w = mul nuw nsw i64 %i.v, 103
  %i.x = lshr i64 %i.w, 10
  %i.y = trunc i64 %i.x to i8
  %.sroa.0.0.extract.trunc = add i8 %i.y, 48
  %.not116 = icmp eq i8 %.sroa.0.0.extract.trunc, %i.u
  %i.z = add i64 %i.f, %i.b                       ; 2 uses
  br i1 %.not116, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = add i64 %i.z, 10000000000
  %i.ab = udiv i64 %i.aa, 20000000000
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = add i8 %i.ac, 48
  store i8 %i.ad, ptr %2, align 1, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.af = add i64 %i.z, 1000000000
  %i.ag = udiv i64 %i.af, 2000000000              ; 2 uses
  %i.ah = trunc i64 %i.ag to i16
  %i.ai = mul nuw nsw i64 %i.ag, 103
  %i.aj = lshr i64 %i.ai, 10
  %i.ak = trunc i64 %i.aj to i16                  ; 2 uses
  %.neg.i118 = mul i16 %i.ak, 246
  %i.al = add i16 %.neg.i118, %i.ah
  %i.am = shl i16 %i.al, 8
  %i.an = add i16 %i.ak, 12336
  %i.ao = add i16 %i.an, %i.am
  store i16 %i.ao, ptr %2, align 1
  br label %bb.t

bb.e:                                             ; preds = %bb.a
  %i.ap = sub i64 %i.f, %i.j
  %i.aq = trunc i64 %i.ap to i32                  ; 3 uses
  %i.ar = trunc nuw nsw i64 %i.s to i32           ; 3 uses
  %i.as = udiv i32 %i.aq, 10000000                ; 3 uses
  %.recomposed = urem i32 %i.aq, 10000000         ; 4 uses
  %i.at = mul nuw i32 %i.as, 10000000
  %narrow = mul nuw nsw i32 %i.as, 103
  %i.au = lshr i32 %narrow, 10                    ; 2 uses
  %.neg.i119 = mul nuw nsw i32 %i.au, 246
  %i.av = add nuw nsw i32 %.neg.i119, %i.as
  %i.aw = shl nuw nsw i32 %i.av, 8
  %i.ax = or disjoint i32 %i.aw, %i.au
  %i.ay = trunc i32 %i.ax to i16
  %i.az = add i16 %i.ay, 12336                    ; 2 uses
  store i16 %i.az, ptr %i.r, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.bb = sub i32 %i.ar, %i.at                    ; 5 uses
  %i.bc = icmp ugt i32 %i.bb, 9999999
  br i1 %i.bc, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bd = trunc i16 %i.az to i8
  %i.be = udiv i32 %i.ar, 10000000
  %narrow154 = mul nuw nsw i32 %i.be, 103
  %i.bf = lshr i32 %narrow154, 10
  %i.bg = trunc nuw nsw i32 %i.bf to i8
  %.sroa.0.0.extract.trunc135 = or disjoint i8 %i.bg, 48
  %.not115 = icmp eq i8 %.sroa.0.0.extract.trunc135, %i.bd
  %i.bh = add i32 %i.ar, %i.aq                    ; 2 uses
  br i1 %.not115, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = add i32 %i.bh, 100000000
  %i.bj = udiv i32 %i.bi, 200000000
  %i.bk = trunc nuw nsw i32 %i.bj to i8
  %i.bl = add nuw nsw i8 %i.bk, 48
  store i8 %i.bl, ptr %i.r, align 1, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 3
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.bn = add i32 %i.bh, 10000000
  %i.bo = udiv i32 %i.bn, 20000000                ; 2 uses
  %narrow155 = mul nuw nsw i32 %i.bo, 103
  %i.bp = lshr i32 %narrow155, 10                 ; 2 uses
  %.neg.i121 = mul nuw nsw i32 %i.bp, 246
  %i.bq = add nuw nsw i32 %.neg.i121, %i.bo
  %i.br = shl nuw nsw i32 %i.bq, 8
  %i.bs = or disjoint i32 %i.br, %i.bp
  %i.bt = trunc i32 %i.bs to i16
  %i.bu = add i16 %i.bt, 12336
  store i16 %i.bu, ptr %i.r, align 1
  br label %bb.t

bb.i:                                             ; preds = %bb.e
  %i.bv = udiv i32 %.recomposed, 100000           ; 3 uses
  %.recomposed160 = urem i32 %.recomposed, 100000 ; 4 uses
  %i.bw = mul nuw i32 %i.bv, 100000
  %narrow147 = mul nuw nsw i32 %i.bv, 103
  %i.bx = lshr i32 %narrow147, 10                 ; 2 uses
  %.neg.i122 = mul nuw nsw i32 %i.bx, 246
  %i.by = add nuw nsw i32 %.neg.i122, %i.bv
  %i.bz = shl nuw nsw i32 %i.by, 8
  %i.ca = add nuw nsw i32 %i.bz, %i.bx
  %i.cb = trunc i32 %i.ca to i16
  %i.cc = add i16 %i.cb, 12336                    ; 2 uses
  store i16 %i.cc, ptr %i.ba, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 4 uses
  %i.ce = sub i32 %i.bb, %i.bw                    ; 5 uses
  %i.cf = icmp ugt i32 %i.ce, 99999
  br i1 %i.cf, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.cg = trunc i16 %i.cc to i8
  %i.ch = udiv i32 %i.bb, 100000
  %narrow152 = mul nuw nsw i32 %i.ch, 103
  %i.ci = lshr i32 %narrow152, 10
  %i.cj = trunc nuw nsw i32 %i.ci to i8
  %.sroa.0.0.extract.trunc136 = add nuw nsw i8 %i.cj, 48
  %.not114 = icmp eq i8 %.sroa.0.0.extract.trunc136, %i.cg
  br i1 %.not114, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = add i32 %.recomposed, 1000000
  %i.cl = add i32 %i.ck, %i.bb
  %i.cm = udiv i32 %i.cl, 2000000
  %i.cn = trunc i32 %i.cm to i8
  %i.co = add i8 %i.cn, 48
  store i8 %i.co, ptr %i.ba, align 1, !tbaa !12
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 5
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  %i.cq = add i32 %.recomposed, 100000
  %i.cr = add i32 %i.cq, %i.bb
  %i.cs = udiv i32 %i.cr, 200000                  ; 2 uses
  %narrow153 = mul nuw nsw i32 %i.cs, 103
  %i.ct = lshr i32 %narrow153, 10                 ; 2 uses
  %.neg.i124 = mul nuw nsw i32 %i.ct, 246
  %i.cu = add nuw nsw i32 %.neg.i124, %i.cs
  %i.cv = shl nuw nsw i32 %i.cu, 8
  %i.cw = add nuw nsw i32 %i.cv, %i.ct
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = add i16 %i.cx, 12336
  store i16 %i.cy, ptr %i.ba, align 1
  br label %bb.t

bb.m:                                             ; preds = %bb.i
  %i.cz = udiv i32 %.recomposed160, 1000          ; 3 uses
  %.recomposed161 = urem i32 %.recomposed160, 1000 ; 3 uses
  %i.da = mul nuw i32 %i.cz, 1000
  %narrow148 = mul nuw nsw i32 %i.cz, 103
  %i.db = lshr i32 %narrow148, 10                 ; 2 uses
  %.neg.i125 = mul nuw nsw i32 %i.db, 246
  %i.dc = add nuw nsw i32 %.neg.i125, %i.cz
  %i.dd = shl i32 %i.dc, 8
  %i.de = add i32 %i.dd, %i.db
  %i.df = trunc i32 %i.de to i16
  %i.dg = add i16 %i.df, 12336                    ; 2 uses
  store i16 %i.dg, ptr %i.cd, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.di = sub i32 %i.ce, %i.da                    ; 4 uses
  %i.dj = icmp ugt i32 %i.di, 999
  br i1 %i.dj, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dk = trunc i16 %i.dg to i8
  %i.dl = udiv i32 %i.ce, 1000
  %narrow150 = mul nuw nsw i32 %i.dl, 103
  %i.dm = lshr i32 %narrow150, 10
  %i.dn = trunc nuw nsw i32 %i.dm to i8
  %.sroa.0.0.extract.trunc137 = add nuw nsw i8 %i.dn, 48
  %.not113 = icmp eq i8 %.sroa.0.0.extract.trunc137, %i.dk
  br i1 %.not113, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.do = add i32 %.recomposed160, 10000
  %i.dp = add i32 %i.do, %i.ce
  %i.dq = udiv i32 %i.dp, 20000
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = add i8 %i.dr, 48
  store i8 %i.ds, ptr %i.cd, align 1, !tbaa !12
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 7
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.du = add i32 %.recomposed160, 1000
  %i.dv = add i32 %i.du, %i.ce
  %i.dw = udiv i32 %i.dv, 2000                    ; 2 uses
  %narrow151 = mul nuw nsw i32 %i.dw, 103
  %i.dx = lshr i32 %narrow151, 10                 ; 2 uses
  %.neg.i127 = mul nuw nsw i32 %i.dx, 246
  %i.dy = add nuw nsw i32 %.neg.i127, %i.dw
  %i.dz = shl i32 %i.dy, 8
  %i.ea = add i32 %i.dz, %i.dx
  %i.eb = trunc i32 %i.ea to i16
  %i.ec = add i16 %i.eb, 12336
  store i16 %i.ec, ptr %i.cd, align 1
  br label %bb.t

bb.q:                                             ; preds = %bb.m
  %i.ed = udiv i32 %.recomposed161, 10            ; 2 uses
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = mul nuw nsw i64 %i.ee, 103
  %i.eg = lshr i64 %i.ef, 10
  %i.eh = trunc nuw nsw i64 %i.eg to i32          ; 2 uses
  %.neg.i128 = mul i32 %i.eh, 246
  %i.ei = add i32 %.neg.i128, %i.ed
  %i.ej = shl i32 %i.ei, 8
  %i.ek = add i32 %i.ej, %i.eh
  %i.el = trunc i32 %i.ek to i16
  %i.em = add i16 %i.el, 12336                    ; 2 uses
  store i16 %i.em, ptr %i.dh, align 1
  %.lhs.trunc = trunc nuw nsw i32 %i.di to i16
  %i.en = udiv i16 %.lhs.trunc, 10
  %narrow149 = mul nuw nsw i16 %i.en, 103
  %i.eo = lshr i16 %narrow149, 10
  %i.ep = trunc nuw nsw i16 %i.eo to i8
  %.sroa.0.0.extract.trunc138 = or i8 %i.ep, 48
  %i.eq = trunc i16 %i.em to i8
  %.not = icmp eq i8 %.sroa.0.0.extract.trunc138, %i.eq
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.er = add i32 %.recomposed161, 100
  %i.es = add i32 %i.er, %i.di
  %i.et = udiv i32 %i.es, 200
  %i.eu = trunc i32 %i.et to i8
  %i.ev = add i8 %i.eu, 48
  store i8 %i.ev, ptr %i.dh, align 1, !tbaa !12
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 9
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ey = add i32 %.recomposed161, 10
  %i.ez = add i32 %i.ey, %i.di
  %i.fa = udiv i32 %i.ez, 20                      ; 2 uses
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = mul nuw nsw i64 %i.fb, 103
  %i.fd = lshr i64 %i.fc, 10
  %i.fe = trunc nuw nsw i64 %i.fd to i32          ; 2 uses
  %.neg.i130 = mul i32 %i.fe, 246
  %i.ff = add i32 %.neg.i130, %i.fa
  %i.fg = shl i32 %i.ff, 8
  %i.fh = add i32 %i.fg, %i.fe
  %i.fi = trunc i32 %i.fh to i16
  %i.fj = add i16 %i.fi, 12336
  store i16 %i.fj, ptr %i.dh, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.o, %bb.p, %bb.k, %bb.l, %bb.g, %bb.h, %bb.c, %bb.d
  %.1.sink = phi ptr [ %i.r, %bb.d ], [ %i.ba, %bb.h ], [ %i.cd, %bb.l ], [ %i.dh, %bb.p ], [ %i.ae, %bb.c ], [ %i.bm, %bb.g ], [ %i.cp, %bb.k ], [ %i.dt, %bb.o ], [ %i.ew, %bb.r ], [ %i.ex, %bb.s ] ; 2 uses
  store i8 0, ptr %.1.sink, align 1, !tbaa !12
  ret ptr %.1.sink
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i64 @_ZN4absl12lts_2026052616numbers_internal17SixDigitsToBufferEdPc(double noundef %0, ptr noundef %1) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = fcmp uno double %0, 0.000000e+00
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 7233902, ptr %1, align 1
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %i.c = fcmp oeq double %0, 0.000000e+00
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.d = bitcast double %0 to i64
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0138 = phi ptr [ %i.f, %bb.e ], [ %1, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0138, i64 1 ; 2 uses
  store i8 48, ptr %.0138, align 1, !tbaa !12
  store i8 0, ptr %i.g, align 1, !tbaa !12
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.h, %i.i
  br label %bb.av

bb.g:                                             ; preds = %bb.c
  %i.k = fcmp olt double %0, 0.000000e+00
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !12
  %i.m = fneg double %0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1139 = phi ptr [ %i.l, %bb.h ], [ %1, %bb.g ] ; 39 uses
  %.0137 = phi double [ %i.m, %bb.h ], [ %0, %bb.g ] ; 9 uses
  %i.n = fcmp ogt double %.0137, f0x7FEFFFFFFFFFFFFF
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 6712937, ptr %.1139, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.1139, i64 3
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %1 to i64
  %i.r = sub i64 %i.p, %i.q
  br label %bb.av

bb.k:                                             ; preds = %bb.i
  %i.s = fcmp ult double %.0137, f0x412E847F00000000
  br i1 %i.s, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = fcmp ult double %.0137, f0x7620427EAD4CFED6 ; 2 uses
  %i.u = fmul nnan double %.0137, f0x0AC8062864AC6F43
  %.085.i = select i1 %i.t, double %.0137, double %i.u ; 3 uses
  %.0.i = select i1 %i.t, i32 5, i32 261          ; 2 uses
  %i.v = fcmp ult double %.085.i, 1.000000e+133   ; 2 uses
  %i.w = or disjoint i32 %.0.i, 128
  %i.x = fmul nnan double %.085.i, 1.000000e-128
  %.186.i = select i1 %i.v, double %.085.i, double %i.x ; 3 uses
  %.1.i = select i1 %i.v, i32 %.0.i, i32 %i.w     ; 2 uses
  %i.y = fcmp ult double %.186.i, 1.000000e+69    ; 2 uses
  %i.z = or disjoint i32 %.1.i, 64
  %i.aa = fmul nnan double %.186.i, f0x32A50FFD44F4A73D
  %.287.i = select i1 %i.y, double %.186.i, double %i.aa ; 3 uses
  %.2.i = select i1 %i.y, i32 %.1.i, i32 %i.z     ; 2 uses
  %i.ab = fcmp ult double %.287.i, f0x479E17B84357691B ; 2 uses
  %i.ac = or disjoint i32 %.2.i, 32
  %i.ad = fmul nnan double %.287.i, 1.000000e-32
  %.388.i = select i1 %i.ab, double %.287.i, double %i.ad ; 3 uses
  %.3.i = select i1 %i.ab, i32 %.2.i, i32 %i.ac   ; 2 uses
  %i.ae = fcmp ult double %.388.i, 1.000000e+21   ; 2 uses
  %i.af = add nuw nsw i32 %.3.i, 16
  %i.ag = fmul nnan double %.388.i, f0x3C9CD2B297D889BC
  %.489.i = select i1 %i.ae, double %.388.i, double %i.ag ; 3 uses
  %.4.i = select i1 %i.ae, i32 %.3.i, i32 %i.af   ; 2 uses
  %i.ah = fcmp ult double %.489.i, 1.000000e+13   ; 2 uses
  %i.ai = add nuw nsw i32 %.4.i, 8
  %i.aj = fmul nnan double %.489.i, 1.000000e-08
  %.590.i = select i1 %i.ah, double %.489.i, double %i.aj ; 3 uses
  %.5.i = select i1 %i.ah, i32 %.4.i, i32 %i.ai   ; 2 uses
  %i.ak = fcmp ult double %.590.i, 1.000000e+09   ; 2 uses
  %i.al = add nuw nsw i32 %.5.i, 4
  %i.am = fmul nnan double %.590.i, 1.000000e-04
  %.691.i = select i1 %i.ak, double %.590.i, double %i.am ; 3 uses
  %.6.i = select i1 %i.ak, i32 %.5.i, i32 %i.al   ; 2 uses
  %i.an = fcmp ult double %.691.i, 1.000000e+07   ; 2 uses
  %i.ao = add nuw nsw i32 %.6.i, 2
  %i.ap = fmul nnan double %.691.i, 1.000000e-02
  %.792.i = select i1 %i.an, double %.691.i, double %i.ap ; 3 uses
  %.7.i = select i1 %i.an, i32 %.6.i, i32 %i.ao   ; 2 uses
  %i.aq = fcmp ult double %.792.i, 1.000000e+06
  br i1 %i.aq, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = add nuw nsw i32 %.7.i, 1
  %i.as = fmul nnan double %.792.i, 1.000000e-01
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.at = fcmp olt double %.0137, 1.000000e-250   ; 2 uses
  %i.au = fmul nnan double %.0137, 1.000000e+256
  %.893.i = select i1 %i.at, double %i.au, double %.0137 ; 3 uses
  %.8.i = select i1 %i.at, i32 -251, i32 5        ; 2 uses
  %i.av = fcmp olt double %.893.i, 1.000000e-122  ; 2 uses
  %i.aw = add nsw i32 %.8.i, -128
  %i.ax = fmul nnan double %.893.i, 1.000000e+128
  %.994.i = select i1 %i.av, double %i.ax, double %.893.i ; 3 uses
  %.9.i = select i1 %i.av, i32 %i.aw, i32 %.8.i   ; 2 uses
  %i.ay = fcmp olt double %.994.i, 1.000000e-58   ; 2 uses
  %i.az = add nsw i32 %.9.i, -64
  %i.ba = fmul nnan double %.994.i, 1.000000e+64
  %.1095.i = select i1 %i.ay, double %i.ba, double %.994.i ; 3 uses
  %.10.i = select i1 %i.ay, i32 %i.az, i32 %.9.i  ; 2 uses
  %i.bb = fcmp olt double %.1095.i, 1.000000e-26  ; 2 uses
  %i.bc = add nsw i32 %.10.i, -32
  %i.bd = fmul nnan double %.1095.i, 1.000000e+32
  %.1196.i = select i1 %i.bb, double %i.bd, double %.1095.i ; 3 uses
  %.11.i = select i1 %i.bb, i32 %i.bc, i32 %.10.i ; 2 uses
  %i.be = fcmp olt double %.1196.i, 1.000000e-10  ; 2 uses
  %i.bf = add nsw i32 %.11.i, -16
  %i.bg = fmul nnan double %.1196.i, 1.000000e+16
  %.1297.i = select i1 %i.be, double %i.bg, double %.1196.i ; 3 uses
  %.12.i = select i1 %i.be, i32 %i.bf, i32 %.11.i ; 2 uses
  %i.bh = fcmp olt double %.1297.i, 1.000000e-02  ; 2 uses
  %i.bi = add nsw i32 %.12.i, -8
  %i.bj = fmul nnan double %.1297.i, 1.000000e+08
  %.1398.i = select i1 %i.bh, double %i.bj, double %.1297.i ; 3 uses
  %.13.i = select i1 %i.bh, i32 %i.bi, i32 %.12.i ; 2 uses
  %i.bk = fcmp olt double %.1398.i, 1.000000e+02  ; 2 uses
  %i.bl = add nsw i32 %.13.i, -4
  %i.bm = fmul nnan double %.1398.i, 1.000000e+04
  %.1499.i = select i1 %i.bk, double %i.bm, double %.1398.i ; 3 uses
  %.14.i = select i1 %i.bk, i32 %i.bl, i32 %.13.i ; 2 uses
  %i.bn = fcmp olt double %.1499.i, 1.000000e+04  ; 2 uses
  %i.bo = add nsw i32 %.14.i, -2
  %i.bp = fmul nnan double %.1499.i, 1.000000e+02
  %.15100.i = select i1 %i.bn, double %i.bp, double %.1499.i ; 3 uses
  %.15.i = select i1 %i.bn, i32 %i.bo, i32 %.14.i ; 2 uses
  %i.bq = fcmp olt double %.15100.i, 1.000000e+05
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = add nsw i32 %.15.i, -1
  %i.bs = fmul nnan double %.15100.i, 1.000000e+01
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.16101.i = phi double [ %i.as, %bb.m ], [ %.792.i, %bb.l ], [ %i.bs, %bb.o ], [ %.15100.i, %bb.n ]
  %.16.i = phi i32 [ %i.ar, %bb.m ], [ %.7.i, %bb.l ], [ %i.br, %bb.o ], [ %.15.i, %bb.n ] ; 4 uses
  %i.bt = fmul double %.16101.i, 6.553600e+04
  %i.bu = fptoui double %i.bt to i64              ; 3 uses
  %i.bv = and i64 %i.bu, 65535
  %.off.i = add nsw i64 %i.bv, -32767
  %switch.i = icmp ult i64 %.off.i, 2
  br i1 %switch.i, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bw = lshr i64 %i.bu, 16                      ; 2 uses
  %i.bx = trunc i64 %i.bw to i32                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.by = call double @frexp(double noundef %.0137, ptr noundef nonnull %i.a) #21
  %i.bz = fmul double %i.by, f0x43E0000000000000
  %i.ca = fptoui double %i.bz to i64
  %i.cb = shl i64 %i.ca, 1                        ; 2 uses
  %i.cc = icmp sgt i32 %.16.i, 5
  %i.cd = shl nuw nsw i64 %i.bw, 1
end_hunk_0
