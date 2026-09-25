Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/numbers?download=true
inline.NumInlined: 554
inline.NumDeleted: 144
begin_hunk_0_@_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferENS0_6int128EPc:bb.a
  %i.jy = trunc nuw nsw i64 %i.jw to i32
  %i.jz = insertelement <2 x i32> poison, i32 %i.jy, i64 0
  %i.ka = trunc nuw nsw i64 %i.jx to i32
  %i.kb = insertelement <2 x i32> %i.jz, i32 %i.ka, i64 1
  %.frozen94 = freeze <2 x i32> %i.kb             ; 2 uses
  %i.kc = udiv <2 x i32> %.frozen94, splat (i32 10000) ; 2 uses
  %i.kd = mul <2 x i32> %i.kc, splat (i32 10000)
  %.decomposed95 = sub <2 x i32> %.frozen94, %i.kd
  %i.ke = zext nneg <2 x i32> %i.kc to <2 x i64>
  %i.kf = zext nneg <2 x i32> %.decomposed95 to <2 x i64>
  %i.kg = shl nuw nsw <2 x i64> %i.kf, splat (i64 32)
  %i.kh = or disjoint <2 x i64> %i.kg, %i.ke      ; 2 uses
  %i.ki = mul nuw nsw <2 x i64> %i.kh, splat (i64 5243)
  %i.kj = lshr <2 x i64> %i.ki, splat (i64 19)
  %i.kk = and <2 x i64> %i.kj, splat (i64 545460846719) ; 2 uses
  %i.kl = mul nsw <2 x i64> %i.kk, splat (i64 -100)
  %i.km = add nsw <2 x i64> %i.kl, %i.kh
  %i.kn = shl nsw <2 x i64> %i.km, splat (i64 16)
  %i.ko = add nsw <2 x i64> %i.kn, %i.kk          ; 2 uses
  %i.kp = mul <2 x i64> %i.ko, splat (i64 103)
  %i.kq = lshr <2 x i64> %i.kp, splat (i64 10)
  %i.kr = and <2 x i64> %i.kq, splat (i64 4222189076152335) ; 2 uses
  %i.ks = mul <2 x i64> %i.kr, splat (i64 72057594037927926)
  %i.kt = add <2 x i64> %i.ks, %i.ko
  %i.ku = shl <2 x i64> %i.kt, splat (i64 8)
  %i.kv = or disjoint <2 x i64> %i.kr, splat (i64 3472328296227680304)
  %i.kw = add <2 x i64> %i.kv, %i.ku
  store <2 x i64> %i.kw, ptr %.0.i38.i, align 1
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.i38.i, i64 16
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

bb.t:                                             ; preds = %bb.m
  %i.ky = udiv i128 %i.ft, 100000000000000000000000000000000 ; 2 uses
  %i.kz = trunc nuw nsw i128 %i.ky to i32         ; 3 uses
  %i.la = icmp samesign ult i32 %i.kz, 10
  br i1 %i.la, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.lb = trunc nuw i128 %i.ky to i8
  %i.lc = or disjoint i8 %i.lb, 48
  store i8 %i.lc, ptr %.0, align 1, !tbaa !12
  %i.ld = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit.i

bb.v:                                             ; preds = %bb.t
  %i.le = udiv i32 %i.kz, 10000
  %i.lf = urem i32 %i.kz, 10000
  %i.lg = zext nneg i32 %i.le to i64
  %i.lh = zext nneg i32 %i.lf to i64
  %i.li = shl nuw nsw i64 %i.lh, 32
  %i.lj = or disjoint i64 %i.li, %i.lg            ; 2 uses
  %i.lk = mul nuw nsw i64 %i.lj, 5243
  %i.ll = lshr i64 %i.lk, 19
  %i.lm = and i64 %i.ll, 545460846719             ; 2 uses
  %.neg.i48 = mul nsw i64 %i.lm, -100
  %i.ln = add nsw i64 %.neg.i48, %i.lj
  %i.lo = shl nsw i64 %i.ln, 16
  %i.lp = add nsw i64 %i.lo, %i.lm                ; 2 uses
  %i.lq = mul i64 %i.lp, 103
  %i.lr = lshr i64 %i.lq, 10
  %i.ls = and i64 %i.lr, 4222189076152335         ; 2 uses
  %.neg16.i49 = mul i64 %i.ls, 72057594037927926
  %i.lt = add i64 %.neg16.i49, %i.lp
  %i.lu = shl i64 %i.lt, 8
  %i.lv = add i64 %i.lu, %i.ls                    ; 3 uses
  %i.lw = icmp ne i64 %i.lv, 0
  tail call void @llvm.assume(i1 %i.lw)
  %i.lx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lv, i1 true) ; 2 uses
  %i.ly = and i64 %i.lx, 56
  %i.lz = add i64 %i.lv, 3472328296227680304
  %i.ma = lshr i64 %i.lz, %i.ly
  store i64 %i.ma, ptr %.0, align 1
  %i.mb = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.mc = lshr i64 %i.lx, 3
  %i.md = sub nsw i64 0, %i.mc
  %i.me = getelementptr inbounds i8, ptr %i.mb, i64 %i.md
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit.i

_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit.i: ; preds = %bb.u, %bb.v
  %.0.i.i = phi ptr [ %i.me, %bb.v ], [ %i.ld, %bb.u ] ; 3 uses
  %i.mf = udiv i64 %i.fy, 100000000
  %i.mg = urem i64 %i.fy, 100000000
  %i.mh = trunc nuw nsw i64 %i.mf to i32
  %i.mi = insertelement <2 x i32> poison, i32 %i.mh, i64 0
  %i.mj = trunc nuw nsw i64 %i.mg to i32
  %i.mk = insertelement <2 x i32> %i.mi, i32 %i.mj, i64 1
  %.frozen96 = freeze <2 x i32> %i.mk             ; 2 uses
  %i.ml = udiv <2 x i32> %.frozen96, splat (i32 10000) ; 2 uses
  %i.mm = mul <2 x i32> %i.ml, splat (i32 10000)
  %.decomposed97 = sub <2 x i32> %.frozen96, %i.mm
  %i.mn = zext nneg <2 x i32> %i.ml to <2 x i64>
  %i.mo = zext nneg <2 x i32> %.decomposed97 to <2 x i64>
  %i.mp = shl nuw nsw <2 x i64> %i.mo, splat (i64 32)
  %i.mq = or disjoint <2 x i64> %i.mp, %i.mn      ; 2 uses
  %i.mr = mul nuw nsw <2 x i64> %i.mq, splat (i64 5243)
  %i.ms = lshr <2 x i64> %i.mr, splat (i64 19)
  %i.mt = and <2 x i64> %i.ms, splat (i64 545460846719) ; 2 uses
  %i.mu = mul nsw <2 x i64> %i.mt, splat (i64 -100)
  %i.mv = add nsw <2 x i64> %i.mu, %i.mq
  %i.mw = shl nsw <2 x i64> %i.mv, splat (i64 16)
  %i.mx = add nsw <2 x i64> %i.mw, %i.mt          ; 2 uses
  %i.my = mul <2 x i64> %i.mx, splat (i64 103)
  %i.mz = lshr <2 x i64> %i.my, splat (i64 10)
  %i.na = and <2 x i64> %i.mz, splat (i64 4222189076152335) ; 2 uses
  %i.nb = mul <2 x i64> %i.na, splat (i64 72057594037927926)
  %i.nc = add <2 x i64> %i.nb, %i.mx
  %i.nd = shl <2 x i64> %i.nc, splat (i64 8)
  %i.ne = or disjoint <2 x i64> %i.na, splat (i64 3472328296227680304)
  %i.nf = add <2 x i64> %i.ne, %i.nd
  store <2 x i64> %i.nf, ptr %.0.i.i, align 1
  %i.ng = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.nh = udiv i64 %i.fw, 100000000
  %i.ni = urem i64 %i.fw, 100000000
  %i.nj = trunc nuw nsw i64 %i.nh to i32
  %i.nk = insertelement <2 x i32> poison, i32 %i.nj, i64 0
  %i.nl = trunc nuw nsw i64 %i.ni to i32
  %i.nm = insertelement <2 x i32> %i.nk, i32 %i.nl, i64 1
  %.frozen98 = freeze <2 x i32> %i.nm             ; 2 uses
  %i.nn = udiv <2 x i32> %.frozen98, splat (i32 10000) ; 2 uses
  %i.no = mul <2 x i32> %i.nn, splat (i32 10000)
  %.decomposed99 = sub <2 x i32> %.frozen98, %i.no
  %i.np = zext nneg <2 x i32> %i.nn to <2 x i64>
  %i.nq = zext nneg <2 x i32> %.decomposed99 to <2 x i64>
  %i.nr = shl nuw nsw <2 x i64> %i.nq, splat (i64 32)
  %i.ns = or disjoint <2 x i64> %i.nr, %i.np      ; 2 uses
  %i.nt = mul nuw nsw <2 x i64> %i.ns, splat (i64 5243)
  %i.nu = lshr <2 x i64> %i.nt, splat (i64 19)
  %i.nv = and <2 x i64> %i.nu, splat (i64 545460846719) ; 2 uses
  %i.nw = mul nsw <2 x i64> %i.nv, splat (i64 -100)
  %i.nx = add nsw <2 x i64> %i.nw, %i.ns
  %i.ny = shl nsw <2 x i64> %i.nx, splat (i64 16)
  %i.nz = add nsw <2 x i64> %i.ny, %i.nv          ; 2 uses
  %i.oa = mul <2 x i64> %i.nz, splat (i64 103)
  %i.ob = lshr <2 x i64> %i.oa, splat (i64 10)
  %i.oc = and <2 x i64> %i.ob, splat (i64 4222189076152335) ; 2 uses
  %i.od = mul <2 x i64> %i.oc, splat (i64 72057594037927926)
  %i.oe = add <2 x i64> %i.od, %i.nz
  %i.of = shl <2 x i64> %i.oe, splat (i64 8)
  %i.og = or disjoint <2 x i64> %i.oc, splat (i64 3472328296227680304)
  %i.oh = add <2 x i64> %i.og, %i.of
  store <2 x i64> %i.oh, ptr %i.ng, align 1
  %i.oi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit

_ZN4absl12lts_2026052612_GLOBAL__N_114EncodeFullU128ENS0_7uint128EPc.exit: ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit.i, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i, %bb.i, %bb.h, %bb.f
  %.0.i = phi ptr [ %i.by, %bb.i ], [ %i.fp, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU32EjPc.exit.i52.i ], [ %i.n, %bb.f ], [ %i.ap, %bb.h ], [ %i.kx, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit44.i ], [ %i.oi, %_ZN4absl12lts_2026052612_GLOBAL__N_113EncodeFullU64EmPc.exit.i ] ; 2 uses
  store i8 0, ptr %.0.i, align 1, !tbaa !12
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef ptr @_ZN4absl12lts_2026052616numbers_internal23RoundTripDoubleToBufferEdPc(double noundef %0, ptr nofree noundef returned captures(ret: address, provenance) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = fcmp uno double %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 7233902, ptr %1, align 1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef double @llvm.fabs.f64(double %0)
  %i.c = fcmp ugt double %i.b, f0x7FEFFFFFFFFFFFF5
  br i1 %i.c, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 32, ptr noundef nonnull @.str.15, i32 noundef 15, double noundef %0) #21 ; 0 uses
  %i.e = tail call double @strtod(ptr noundef nonnull captures(none) %1, ptr noundef null) #21
  %i.f = fcmp une double %i.e, %0
  br i1 %i.f, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.g = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 32, ptr noundef nonnull @.str.15, i32 noundef 17, double noundef %0) #21 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge, %bb.b
  ret ptr %1
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef ptr @_ZN4absl12lts_2026052616numbers_internal22RoundTripFloatToBufferEfPc(float noundef %0, ptr nofree noundef returned captures(address, ret: address, provenance) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = fcmp uno float %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 7233902, ptr %1, align 1
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.b = fcmp oeq float %0, 0.000000e+00
  br i1 %i.b, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %2 = bitcast float %0 to i32
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull align 1 dereferenceable(3) @.str.16, i64 3, i1 false) #21
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  store i16 48, ptr %1, align 1
  br label %bb.v

bb.g:                                             ; preds = %bb.c
  %i.c = fcmp olt float %0, 0.000000e+00
  br i1 %i.c, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !12
  %i.e = fneg float %0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.084 = phi float [ %i.e, %bb.h ], [ %0, %bb.g ] ; 10 uses
  %.079 = phi ptr [ %i.d, %bb.h ], [ %1, %bb.g ]  ; 11 uses
  %i.f = fcmp ogt float %.084, f0x7F7FFFFF
  br i1 %i.f, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 6712937, ptr %.079, align 1
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  %i.g = tail call float @nextafterf(float noundef %.084, float noundef 0.000000e+00) #21
  %i.h = fpext float %i.g to double
  %i.i = fpext float %.084 to double              ; 6 uses
  %i.j = fadd double %i.i, %i.h
  %i.k = fmul double %i.j, 5.000000e-01           ; 5 uses
  %i.l = fsub double %i.i, %i.k
  %i.m = fadd double %i.l, %i.i                   ; 4 uses
  %i.n = fcmp olt float %.084, 1.000000e+00
  br i1 %i.n, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.o = fcmp ult float %.084, f0x38D1B717
  br i1 %i.o, label %.lr.ph.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = getelementptr inbounds nuw i8, ptr %.079, i64 1
  store i8 48, ptr %.079, align 1, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %.079, i64 2 ; 2 uses
  store i8 46, ptr %i.p, align 1, !tbaa !12
  %i.r = fcmp olt float %.084, 1.000000e-01
  br i1 %i.r, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.s = getelementptr inbounds nuw i8, ptr %.079, i64 3 ; 2 uses
  store i8 48, ptr %i.q, align 1, !tbaa !12
  %i.t = fcmp olt float %.084, f0x3C23D70A
  br i1 %i.t, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.u = getelementptr inbounds nuw i8, ptr %.079, i64 4 ; 2 uses
  store i8 48, ptr %i.s, align 1, !tbaa !12
  %i.v = fcmp olt float %.084, 1.000000e-03
  br i1 %i.v, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %.079, i64 5
  store i8 48, ptr %i.u, align 1, !tbaa !12
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o, %bb.m
  %.180 = phi ptr [ %i.w, %bb.p ], [ %i.u, %bb.o ], [ %i.s, %bb.n ], [ %i.q, %bb.m ]
  %.0 = phi double [ 1.000000e+14, %bb.p ], [ 1.000000e+13, %bb.o ], [ 1.000000e+12, %bb.n ], [ 1.000000e+11, %bb.m ] ; 2 uses
  %i.x = fmul double %i.k, %.0
  %i.y = fmul double %i.m, %.0
  %i.z = tail call fastcc noundef ptr @_ZN4absl12lts_20260526L21OutputNecessaryDigitsEddPc(double noundef %i.x, double noundef %i.y, ptr noundef nonnull %.180) ; 0 uses
  br label %bb.v

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.04.i.i = phi i64 [ %.1.i.i, %.lr.ph.i.i ], [ 42, %bb.l ] ; 2 uses
  %.0113.i.i = phi ptr [ %.112.i.i, %.lr.ph.i.i ], [ @_ZN4absl12lts_2026052612_GLOBAL__N_112kNegExpTableE, %bb.l ] ; 2 uses
  %i.aa = lshr i64 %.04.i.i, 1                    ; 3 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.0113.i.i, i64 %i.aa ; 2 uses
  %.val.i.i = load double, ptr %i.ab, align 8, !tbaa !42
  %i.ac = fcmp olt double %.val.i.i, %i.i         ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = xor i64 %i.aa, -1
  %i.af = add nsw i64 %.04.i.i, %i.ae
  %.112.i.i = select i1 %i.ac, ptr %i.ad, ptr %.0113.i.i ; 3 uses
  %.1.i.i = select i1 %i.ac, i64 %i.af, i64 %i.aa ; 2 uses
  %i.ag = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt11lower_boundIPKN4absl12lts_2026052612_GLOBAL__N_14SpecEdNS2_10ExpCompareEET_S7_S7_RKT0_T1_.exit, !llvm.loop !40

_ZSt11lower_boundIPKN4absl12lts_2026052612_GLOBAL__N_14SpecEdNS2_10ExpCompareEET_S7_S7_RKT0_T1_.exit: ; preds = %.lr.ph.i.i
  %i.ah = icmp eq ptr %.112.i.i, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_112kNegExpTableE, i64 1008)
  %spec.select = select i1 %i.ah, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_112kNegExpTableE, i64 984), ptr %.112.i.i
  br label %bb.u

bb.r:                                             ; preds = %bb.k
  %i.ai = fcmp olt float %.084, 1.000000e+08
  br i1 %i.ai, label %bb.s, label %.lr.ph.i.i99

bb.s:                                             ; preds = %bb.r
  %i.aj = fptosi float %.084 to i32               ; 2 uses
  %i.ak = tail call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc(i32 noundef %i.aj, ptr noundef %.079) ; 2 uses
  %i.al = sitofp i32 %i.aj to double              ; 4 uses
  %i.am = fcmp olt double %i.k, %i.al
  %i.an = fcmp ogt double %i.m, %i.al
  %or.cond = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store i8 46, ptr %i.ak, align 1, !tbaa !12
  %i.ap = fsub double %i.k, %i.al
  %i.aq = fmul double %i.ap, 1.000000e+11
  %i.ar = fsub double %i.m, %i.al
  %i.as = fmul double %i.ar, 1.000000e+11
  %i.at = tail call fastcc noundef ptr @_ZN4absl12lts_20260526L21OutputNecessaryDigitsEddPc(double noundef %i.aq, double noundef %i.as, ptr noundef nonnull %i.ao) ; 0 uses
  br label %bb.v

.lr.ph.i.i99:                                     ; preds = %bb.r, %.lr.ph.i.i99
  %.04.i.i100 = phi i64 [ %.1.i.i106, %.lr.ph.i.i99 ], [ 32, %bb.r ] ; 2 uses
  %.0113.i.i101 = phi ptr [ %.112.i.i105, %.lr.ph.i.i99 ], [ @_ZN4absl12lts_2026052612_GLOBAL__N_112kPosExpTableE, %bb.r ] ; 2 uses
  %i.au = lshr i64 %.04.i.i100, 1                 ; 3 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %.0113.i.i101, i64 %i.au ; 2 uses
  %.val.i.i104 = load double, ptr %i.av, align 8, !tbaa !42
  %i.aw = fcmp olt double %.val.i.i104, %i.i      ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ay = xor i64 %i.au, -1
  %i.az = add nsw i64 %.04.i.i100, %i.ay
  %.112.i.i105 = select i1 %i.aw, ptr %i.ax, ptr %.0113.i.i101 ; 3 uses
  %.1.i.i106 = select i1 %i.aw, i64 %i.az, i64 %i.au ; 2 uses
  %i.ba = icmp sgt i64 %.1.i.i106, 0
  br i1 %i.ba, label %.lr.ph.i.i99, label %_ZSt11lower_boundIPKN4absl12lts_2026052612_GLOBAL__N_14SpecEdNS2_10ExpCompareEET_S7_S7_RKT0_T1_.exit107, !llvm.loop !40

_ZSt11lower_boundIPKN4absl12lts_2026052612_GLOBAL__N_14SpecEdNS2_10ExpCompareEET_S7_S7_RKT0_T1_.exit107: ; preds = %.lr.ph.i.i99
  %i.bb = icmp eq ptr %.112.i.i105, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_112kPosExpTableE, i64 768)
  %spec.select96 = select i1 %i.bb, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_112kPosExpTableE, i64 744), ptr %.112.i.i105
  br label %bb.u

bb.u:                                             ; preds = %_ZSt11lower_boundIPKN4absl12lts_2026052612_GLOBAL__N_14SpecEdNS2_10ExpCompareEET_S7_S7_RKT0_T1_.exit107, %_ZSt11lower_boundIPKN4absl12lts_2026052612_GLOBAL__N_14SpecEdNS2_10ExpCompareEET_S7_S7_RKT0_T1_.exit
  %.078 = phi ptr [ %spec.select, %_ZSt11lower_boundIPKN4absl12lts_2026052612_GLOBAL__N_14SpecEdNS2_10ExpCompareEET_S7_S7_RKT0_T1_.exit ], [ %spec.select96, %_ZSt11lower_boundIPKN4absl12lts_2026052612_GLOBAL__N_14SpecEdNS2_10ExpCompareEET_S7_S7_RKT0_T1_.exit107 ] ; 2 uses
  %i.bc = load double, ptr %.078, align 8, !tbaa !42
  %i.bd = fcmp ogt double %i.bc, %i.i
  %spec.select97.idx = select i1 %i.bd, i64 -24, i64 0
  %spec.select97 = getelementptr inbounds i8, ptr %.078, i64 %spec.select97.idx ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %spec.select97, i64 8
  %i.bf = load double, ptr %i.be, align 8, !tbaa !43 ; 2 uses
  %i.bg = fmul double %i.k, %i.bf
  %i.bh = fmul double %i.m, %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %.079, i64 1 ; 3 uses
  %i.bj = tail call fastcc noundef ptr @_ZN4absl12lts_20260526L21OutputNecessaryDigitsEddPc(double noundef %i.bg, double noundef %i.bh, ptr noundef nonnull %i.bi) ; 2 uses
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !12
  store i8 %i.bk, ptr %.079, align 1, !tbaa !12
  store i8 46, ptr %i.bi, align 1, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %.079, i64 2
  %i.bm = icmp eq ptr %i.bj, %i.bl
  %.2.idx = sext i1 %i.bm to i64
  %.2 = getelementptr inbounds i8, ptr %i.bj, i64 %.2.idx ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %spec.select97, i64 16
  %i.bo = load i32, ptr %i.bn, align 8
  store i32 %i.bo, ptr %.2, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.2, i64 4
  store i8 0, ptr %i.bp, align 1, !tbaa !12
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

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_20260526L21OutputNecessaryDigitsEddPc:bb.a
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
  %2 = bitcast double %0 to i64
  %3 = icmp slt i64 %2, 0
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0138 = phi ptr [ %i.d, %bb.e ], [ %1, %bb.d ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0138, i64 1 ; 2 uses
  store i8 48, ptr %.0138, align 1, !tbaa !12
  store i8 0, ptr %i.e, align 1, !tbaa !12
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %1 to i64
  %i.h = sub i64 %i.f, %i.g
  br label %bb.av

bb.g:                                             ; preds = %bb.c
  %i.i = fcmp olt double %0, 0.000000e+00
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !12
  %i.k = fneg double %0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1139 = phi ptr [ %i.j, %bb.h ], [ %1, %bb.g ] ; 39 uses
  %.0137 = phi double [ %i.k, %bb.h ], [ %0, %bb.g ] ; 9 uses
  %i.l = fcmp ogt double %.0137, f0x7FEFFFFFFFFFFFFF
  br i1 %i.l, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 6712937, ptr %.1139, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %.1139, i64 3
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %1 to i64
  %i.p = sub i64 %i.n, %i.o
  br label %bb.av

bb.k:                                             ; preds = %bb.i
  %i.q = fcmp ult double %.0137, f0x412E847F00000000
  br i1 %i.q, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = fcmp ult double %.0137, f0x7620427EAD4CFED6 ; 2 uses
  %i.s = fmul nnan double %.0137, f0x0AC8062864AC6F43
  %.085.i = select i1 %i.r, double %.0137, double %i.s ; 3 uses
  %.0.i = select i1 %i.r, i32 5, i32 261          ; 2 uses
  %i.t = fcmp ult double %.085.i, 1.000000e+133   ; 2 uses
  %i.u = or disjoint i32 %.0.i, 128
  %i.v = fmul nnan double %.085.i, 1.000000e-128
  %.186.i = select i1 %i.t, double %.085.i, double %i.v ; 3 uses
  %.1.i = select i1 %i.t, i32 %.0.i, i32 %i.u     ; 2 uses
  %i.w = fcmp ult double %.186.i, 1.000000e+69    ; 2 uses
  %i.x = or disjoint i32 %.1.i, 64
  %i.y = fmul nnan double %.186.i, f0x32A50FFD44F4A73D
  %.287.i = select i1 %i.w, double %.186.i, double %i.y ; 3 uses
  %.2.i = select i1 %i.w, i32 %.1.i, i32 %i.x     ; 2 uses
  %i.z = fcmp ult double %.287.i, f0x479E17B84357691B ; 2 uses
  %i.aa = or disjoint i32 %.2.i, 32
  %i.ab = fmul nnan double %.287.i, 1.000000e-32
  %.388.i = select i1 %i.z, double %.287.i, double %i.ab ; 3 uses
  %.3.i = select i1 %i.z, i32 %.2.i, i32 %i.aa    ; 2 uses
  %i.ac = fcmp ult double %.388.i, 1.000000e+21   ; 2 uses
  %i.ad = add nuw nsw i32 %.3.i, 16
  %i.ae = fmul nnan double %.388.i, f0x3C9CD2B297D889BC
  %.489.i = select i1 %i.ac, double %.388.i, double %i.ae ; 3 uses
  %.4.i = select i1 %i.ac, i32 %.3.i, i32 %i.ad   ; 2 uses
  %i.af = fcmp ult double %.489.i, 1.000000e+13   ; 2 uses
  %i.ag = add nuw nsw i32 %.4.i, 8
  %i.ah = fmul nnan double %.489.i, 1.000000e-08
  %.590.i = select i1 %i.af, double %.489.i, double %i.ah ; 3 uses
  %.5.i = select i1 %i.af, i32 %.4.i, i32 %i.ag   ; 2 uses
  %i.ai = fcmp ult double %.590.i, 1.000000e+09   ; 2 uses
  %i.aj = add nuw nsw i32 %.5.i, 4
  %i.ak = fmul nnan double %.590.i, 1.000000e-04
  %.691.i = select i1 %i.ai, double %.590.i, double %i.ak ; 3 uses
  %.6.i = select i1 %i.ai, i32 %.5.i, i32 %i.aj   ; 2 uses
  %i.al = fcmp ult double %.691.i, 1.000000e+07   ; 2 uses
  %i.am = add nuw nsw i32 %.6.i, 2
  %i.an = fmul nnan double %.691.i, 1.000000e-02
  %.792.i = select i1 %i.al, double %.691.i, double %i.an ; 3 uses
  %.7.i = select i1 %i.al, i32 %.6.i, i32 %i.am   ; 2 uses
  %i.ao = fcmp ult double %.792.i, 1.000000e+06
  br i1 %i.ao, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = add nuw nsw i32 %.7.i, 1
  %i.aq = fmul nnan double %.792.i, 1.000000e-01
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.ar = fcmp olt double %.0137, 1.000000e-250   ; 2 uses
  %i.as = fmul nnan double %.0137, 1.000000e+256
  %.893.i = select i1 %i.ar, double %i.as, double %.0137 ; 3 uses
  %.8.i = select i1 %i.ar, i32 -251, i32 5        ; 2 uses
  %i.at = fcmp olt double %.893.i, 1.000000e-122  ; 2 uses
  %i.au = add nsw i32 %.8.i, -128
  %i.av = fmul nnan double %.893.i, 1.000000e+128
  %.994.i = select i1 %i.at, double %i.av, double %.893.i ; 3 uses
  %.9.i = select i1 %i.at, i32 %i.au, i32 %.8.i   ; 2 uses
  %i.aw = fcmp olt double %.994.i, 1.000000e-58   ; 2 uses
  %i.ax = add nsw i32 %.9.i, -64
  %i.ay = fmul nnan double %.994.i, 1.000000e+64
  %.1095.i = select i1 %i.aw, double %i.ay, double %.994.i ; 3 uses
  %.10.i = select i1 %i.aw, i32 %i.ax, i32 %.9.i  ; 2 uses
  %i.az = fcmp olt double %.1095.i, 1.000000e-26  ; 2 uses
  %i.ba = add nsw i32 %.10.i, -32
  %i.bb = fmul nnan double %.1095.i, 1.000000e+32
  %.1196.i = select i1 %i.az, double %i.bb, double %.1095.i ; 3 uses
  %.11.i = select i1 %i.az, i32 %i.ba, i32 %.10.i ; 2 uses
  %i.bc = fcmp olt double %.1196.i, 1.000000e-10  ; 2 uses
  %i.bd = add nsw i32 %.11.i, -16
  %i.be = fmul nnan double %.1196.i, 1.000000e+16
  %.1297.i = select i1 %i.bc, double %i.be, double %.1196.i ; 3 uses
  %.12.i = select i1 %i.bc, i32 %i.bd, i32 %.11.i ; 2 uses
  %i.bf = fcmp olt double %.1297.i, 1.000000e-02  ; 2 uses
  %i.bg = add nsw i32 %.12.i, -8
  %i.bh = fmul nnan double %.1297.i, 1.000000e+08
  %.1398.i = select i1 %i.bf, double %i.bh, double %.1297.i ; 3 uses
  %.13.i = select i1 %i.bf, i32 %i.bg, i32 %.12.i ; 2 uses
  %i.bi = fcmp olt double %.1398.i, 1.000000e+02  ; 2 uses
  %i.bj = add nsw i32 %.13.i, -4
  %i.bk = fmul nnan double %.1398.i, 1.000000e+04
  %.1499.i = select i1 %i.bi, double %i.bk, double %.1398.i ; 3 uses
  %.14.i = select i1 %i.bi, i32 %i.bj, i32 %.13.i ; 2 uses
  %i.bl = fcmp olt double %.1499.i, 1.000000e+04  ; 2 uses
  %i.bm = add nsw i32 %.14.i, -2
  %i.bn = fmul nnan double %.1499.i, 1.000000e+02
  %.15100.i = select i1 %i.bl, double %i.bn, double %.1499.i ; 3 uses
  %.15.i = select i1 %i.bl, i32 %i.bm, i32 %.14.i ; 2 uses
  %i.bo = fcmp olt double %.15100.i, 1.000000e+05
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bp = add nsw i32 %.15.i, -1
  %i.bq = fmul nnan double %.15100.i, 1.000000e+01
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.16101.i = phi double [ %i.aq, %bb.m ], [ %.792.i, %bb.l ], [ %i.bq, %bb.o ], [ %.15100.i, %bb.n ]
  %.16.i = phi i32 [ %i.ap, %bb.m ], [ %.7.i, %bb.l ], [ %i.bp, %bb.o ], [ %.15.i, %bb.n ] ; 4 uses
  %i.br = fmul double %.16101.i, 6.553600e+04
  %i.bs = fptoui double %i.br to i64              ; 3 uses
  %i.bt = and i64 %i.bs, 65535
  %.off.i = add nsw i64 %i.bt, -32767
  %switch.i = icmp ult i64 %.off.i, 2
  br i1 %switch.i, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bu = lshr i64 %i.bs, 16                      ; 2 uses
  %i.bv = trunc i64 %i.bu to i32                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.bw = call double @frexp(double noundef %.0137, ptr noundef nonnull %i.a) #21
  %i.bx = fmul double %i.bw, f0x43E0000000000000
  %i.by = fptoui double %i.bx to i64
  %i.bz = shl i64 %i.by, 1                        ; 2 uses
  %i.ca = icmp sgt i32 %.16.i, 5
  %i.cb = shl nuw nsw i64 %i.bu, 1
  %i.cc = and i64 %i.cb, 4294967294
  %i.cd = or disjoint i64 %i.cc, 1                ; 3 uses
  br i1 %i.ca, label %bb.r, label %_ZN4absl12lts_20260526L7PowFiveEmi.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ce = add nsw i32 %.16.i, -5
  %i.cf = tail call fastcc { i64, i64 } @_ZN4absl12lts_20260526L7PowFiveEmi(i64 noundef %i.cd, i32 noundef %i.ce) ; 2 uses
  %i.cg = extractvalue { i64, i64 } %i.cf, 0
  %i.ch = extractvalue { i64, i64 } %i.cf, 1
  br label %bb.s

_ZN4absl12lts_20260526L7PowFiveEmi.exit.i:        ; preds = %bb.q
  %i.ci = tail call range(i64 32, 64) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cj = shl i64 %i.cd, %i.ci
  %i.ck = sub nsw i32 5, %.16.i
  %i.cl = tail call fastcc { i64, i64 } @_ZN4absl12lts_20260526L7PowFiveEmi(i64 noundef %i.bz, i32 noundef %i.ck) ; 2 uses
  %i.cm = extractvalue { i64, i64 } %i.cl, 0
  %i.cn = extractvalue { i64, i64 } %i.cl, 1
  br label %bb.s

bb.s:                                             ; preds = %_ZN4absl12lts_20260526L7PowFiveEmi.exit.i, %bb.r
  %.sroa.7.0.i = phi i64 [ 0, %bb.r ], [ %i.cn, %_ZN4absl12lts_20260526L7PowFiveEmi.exit.i ] ; 2 uses
  %.sroa.0116.0.i = phi i64 [ %i.bz, %bb.r ], [ %i.cm, %_ZN4absl12lts_20260526L7PowFiveEmi.exit.i ] ; 3 uses
  %.sroa.7122.0.i = phi i64 [ %i.ch, %bb.r ], [ 0, %_ZN4absl12lts_20260526L7PowFiveEmi.exit.i ] ; 2 uses
  %.sroa.0120.0.i = phi i64 [ %i.cg, %bb.r ], [ %i.cj, %_ZN4absl12lts_20260526L7PowFiveEmi.exit.i ] ; 3 uses
  %i.co = icmp ult i64 %.sroa.0120.0.i, %.sroa.0116.0.i
  br i1 %i.co, label %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = icmp uge i64 %.sroa.0116.0.i, %.sroa.0120.0.i
  %i.cq = icmp ult i64 %.sroa.7122.0.i, %.sroa.7.0.i
  %or.cond.i = select i1 %i.cp, i1 %i.cq, i1 false
  br i1 %or.cond.i, label %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread.i, label %_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread127.i

_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread.i:     ; preds = %bb.t, %bb.s
  %i.cr = add i32 %i.bv, 1
  br label %bb.v

_ZStgtImmEbRKSt4pairIT_T0_ES5_.exit.thread127.i:  ; preds = %bb.t
  %i.cs = icmp eq i64 %.sroa.0116.0.i, %.sroa.0120.0.i
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052616numbers_internal19safe_strtou128_baseESt17basic_string_viewIcSt11char_traitsIcEEPNS0_7uint128Ei:bb.a
  %.sroa.11.0.lcssa.i.i = phi i64 [ 0, %bb.r ], [ %.narrow.i.i.i.i, %bb.y ]
  store i64 %.sroa.051.0.lcssa.i.i, ptr %2, align 16, !tbaa !19
  store i64 %.sroa.11.0.lcssa.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !19
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_118safe_uint_internalINS0_7uint128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit

_ZN4absl12lts_2026052612_GLOBAL__N_118safe_uint_internalINS0_7uint128EEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_i.exit: ; preds = %bb.d, %.critedge.i.i, %bb.a, %bb.f, %bb.k, %bb.p, %bb.q, %_ZN4absl12lts_2026052612_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i, %bb.t, %bb.v, %bb.x, %._crit_edge.i8.i
  %.0.i = phi i1 [ true, %._crit_edge.i8.i ], [ false, %_ZN4absl12lts_2026052612_GLOBAL__N_124safe_parse_sign_and_baseEPSt17basic_string_viewIcSt11char_traitsIcEEPiPb.exit.i ], [ false, %bb.t ], [ false, %bb.v ], [ false, %bb.x ], [ false, %bb.a ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.f ], [ false, %bb.k ], [ false, %.critedge.i.i ], [ false, %bb.d ]
  ret i1 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { i64, ptr } @_ZN4absl12lts_2026052627StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %0 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ashr i64 %0, 2                           ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.f = and i64 %0, -4
  %scevgep = getelementptr i8, ptr %1, i64 %i.f   ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.047.i.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.d, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %i.ad, %bb.e ], [ %1, %.lr.ph.i.i.i.preheader ] ; 9 uses
  %i.g = load i8, ptr %.02946.i.i.i, align 1, !tbaa !12
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !12
  %i.k = and i8 %i.j, 8
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !12
  %i.q = and i8 %i.p, 8
  %.not5 = icmp eq i8 %i.q, 0
  br i1 %.not5, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !12
  %i.w = and i8 %i.v, 8
  %.not6 = icmp eq i8 %i.w, 0
  br i1 %.not6, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !12
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !12
  %i.ac = and i8 %i.ab, 8
  %.not7 = icmp eq i8 %i.ac, 0
  br i1 %.not7, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.ae = add nsw i64 %.047.i.i.i, -1
  %i.af = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.af, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !62

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %.pre.i.i.i = ptrtoint ptr %scevgep to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.c, %bb.a ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep, %._crit_edge.loopexit.i.i.i ], [ %1, %bb.a ] ; 5 uses
  %i.ag = sub i64 %i.b, %.pre-phi.i.i.i
  switch i64 %i.ag, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !12
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !12
  %i.al = and i8 %i.ak, 8
  %.not8 = icmp eq i8 %i.al, 0
  br i1 %.not8, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.1.i.i.i = phi ptr [ %i.am, %bb.g ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.an = load i8, ptr %.1.i.i.i, align 1, !tbaa !12
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !12
  %i.ar = and i8 %i.aq, 8
  %.not9 = icmp eq i8 %i.ar, 0
  br i1 %.not9, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.2.i.i.i = phi ptr [ %i.as, %bb.i ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.at = load i8, ptr %.2.i.i.i, align 1, !tbaa !12
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !12
  %i.ax = and i8 %i.aw, 8
  %.not10 = icmp eq i8 %i.ax, 0
  br i1 %.not10, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26: ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28: ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit:      ; preds = %.lr.ph.i.i.i, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28, %bb.f, %bb.h, %bb.j, %bb.k
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %bb.h ], [ %i.a, %bb.k ], [ %.2.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i, %bb.f ], [ %i.ba, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit28 ], [ %i.az, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit26 ], [ %i.ay, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %.lr.ph.i.i.i ]
  %i.bb = ptrtoint ptr %.028.i.i.i to i64
  %i.bc = sub i64 %i.bb, %i.c                     ; 4 uses
  %i.bd = icmp ugt i64 %i.bc, %0
  br i1 %i.bd, label %bb.l, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.l:                                             ; preds = %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i64 noundef %i.bc, i64 noundef %0) #22
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit
  %i.be = sub nuw i64 %0, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %i.be, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %i.bf, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #13

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_ZN4absl12lts_2026052612_GLOBAL__N_118PrepareEightDigitsEj(i32 noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = icmp ult i32 %0, 100000000
  tail call void @llvm.assume(i1 %i.a)
  %i.b = udiv i32 %0, 10000
  %i.c = urem i32 %0, 10000
  %i.d = zext nneg i32 %i.b to i64
  %i.e = zext nneg i32 %i.c to i64
  %i.f = shl nuw nsw i64 %i.e, 32
  %i.g = or disjoint i64 %i.f, %i.d               ; 2 uses
  %i.h = mul nuw nsw i64 %i.g, 5243
  %i.i = lshr i64 %i.h, 19
  %i.j = and i64 %i.i, 545460846719               ; 2 uses
  %.neg = mul nsw i64 %i.j, -100
  %i.k = add nsw i64 %.neg, %i.g
  %i.l = shl nsw i64 %i.k, 16
  %i.m = add nsw i64 %i.l, %i.j                   ; 2 uses
  %i.n = mul i64 %i.m, 103
  %i.o = lshr i64 %i.n, 10
  %i.p = and i64 %i.o, 4222189076152335           ; 2 uses
  %.neg16 = mul i64 %i.p, 72057594037927926
  %i.q = add i64 %.neg16, %i.m
  %i.r = shl i64 %i.q, 8
  %i.s = add i64 %i.r, %i.p
  ret i64 %i.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc { i64, i64 } @_ZN4absl12lts_20260526L7PowFiveEmi(i64 noundef range(i64 0, -1) %0, i32 noundef range(i32 0, 512) %1) unnamed_addr #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp samesign ugt i32 %1, 12
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit
  %.028 = phi i32 [ %i.af, %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.9.027 = phi i64 [ %.sroa.3.0.i, %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.018.026 = phi i64 [ %.sroa.0.0.i, %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit ], [ %0, %bb.a ] ; 2 uses
  %i.b = and i64 %.sroa.9.027, 4294967295
  %i.c = lshr i64 %.sroa.9.027, 32                ; 2 uses
  %i.d = and i64 %.sroa.018.026, 4294967295
  %i.e = lshr i64 %.sroa.018.026, 32              ; 2 uses
  %i.f = mul nuw nsw i64 %i.b, 1220703125         ; 2 uses
  %i.g = mul nuw nsw i64 %i.c, 1220703125
  %i.h = mul nuw nsw i64 %i.d, 1220703125         ; 2 uses
  %i.i = mul nuw nsw i64 %i.e, 1220703125
  %i.j = mul i64 %i.c, 5242880000000000000
  %i.k = add i64 %i.j, %i.f                       ; 3 uses
  %i.l = mul i64 %i.e, 5242880000000000000
  %i.m = add i64 %i.l, %i.h
  %i.n = lshr i64 %i.g, 32
  %i.o = add i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.k, %i.f
  %i.q = zext i1 %i.p to i64
  %i.r = add i64 %i.o, %i.q                       ; 4 uses
  %i.s = lshr i64 %i.i, 32
  %i.t = icmp ult i64 %i.r, %i.h
  %i.u = zext i1 %i.t to i64
  %i.v = add nuw nsw i64 %i.s, %i.u               ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.x = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.v, i1 true) ; 3 uses
  %i.y = sub nuw nsw i64 64, %i.x                 ; 2 uses
  %i.z = lshr i64 %i.k, %i.y
  %i.aa = shl i64 %i.r, %i.x
  %i.ab = or disjoint i64 %i.z, %i.aa
  %i.ac = lshr i64 %i.r, %i.y
  %i.ad = shl i64 %i.v, %i.x
  %i.ae = or disjoint i64 %i.ac, %i.ad
  br label %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit

_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit:  ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.ae, %bb.b ], [ %i.r, %.lr.ph ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ %i.ab, %bb.b ], [ %i.k, %.lr.ph ] ; 2 uses
  %i.af = add nsw i32 %.028, -13                  ; 2 uses
  %i.ag = icmp sgt i32 %.028, 25
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit, %bb.a
  %.sroa.018.0.lcssa = phi i64 [ %0, %bb.a ], [ %.sroa.0.0.i, %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit ] ; 2 uses
  %.sroa.9.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.3.0.i, %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.af, %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit ]
  %i.ah = zext nneg i32 %.0.lcssa to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN4absl12lts_20260526L7PowFiveEmi.powers_of_five, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !17
  %i.ak = and i64 %.sroa.9.0.lcssa, 4294967295
  %i.al = lshr i64 %.sroa.9.0.lcssa, 32
  %i.am = and i64 %.sroa.018.0.lcssa, 4294967295
  %i.an = lshr i64 %.sroa.018.0.lcssa, 32
  %i.ao = zext i32 %i.aj to i64                   ; 4 uses
  %i.ap = mul nuw i64 %i.ak, %i.ao                ; 2 uses
  %i.aq = mul nuw i64 %i.al, %i.ao                ; 2 uses
  %i.ar = mul nuw i64 %i.am, %i.ao                ; 2 uses
  %i.as = mul nuw i64 %i.an, %i.ao                ; 2 uses
  %i.at = shl i64 %i.aq, 32
  %i.au = add i64 %i.at, %i.ap                    ; 3 uses
  %i.av = shl i64 %i.as, 32
  %i.aw = add i64 %i.av, %i.ar
  %i.ax = lshr i64 %i.aq, 32
  %i.ay = add i64 %i.aw, %i.ax
  %i.az = icmp ult i64 %i.au, %i.ap
  %i.ba = zext i1 %i.az to i64
  %i.bb = add i64 %i.ay, %i.ba                    ; 4 uses
  %i.bc = lshr i64 %i.as, 32
  %i.bd = icmp ult i64 %i.bb, %i.ar
  %i.be = zext i1 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.bc, %i.be            ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit14, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bh = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 true) ; 3 uses
  %i.bi = sub nuw nsw i64 64, %i.bh               ; 2 uses
  %i.bj = lshr i64 %i.au, %i.bi
  %i.bk = shl i64 %i.bb, %i.bh
  %i.bl = or disjoint i64 %i.bj, %i.bk
  %i.bm = lshr i64 %i.bb, %i.bi
  %i.bn = shl i64 %i.bf, %i.bh
  %i.bo = or disjoint i64 %i.bm, %i.bn
  br label %_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit14

_ZN4absl12lts_20260526L5Mul32ESt4pairImmEj.exit14: ; preds = %._crit_edge, %bb.c
  %.sroa.0.0.i10 = phi i64 [ %i.bo, %bb.c ], [ %i.bb, %._crit_edge ] ; 2 uses
  %.sroa.3.0.i11 = phi i64 [ %i.bl, %bb.c ], [ %i.au, %._crit_edge ]
  %i.bp = freeze i64 %.sroa.3.0.i11               ; 2 uses
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.0.0.i10, i1 false) ; 2 uses
  %i.br = shl i64 %i.bp, %i.bq
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %.sroa.0.0.i10, i64 %i.bp, i64 %i.bq)
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.bs, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %i.br, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = distinct !{!2, !13}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"double", !8, i64 0}
!15 = !{!"short", !8, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!9, !9, i64 0}
!18 = !{!"long", !8, i64 0}
!19 = !{!18, !18, i64 0}
!20 = distinct !{!20, !"_ZSt11find_if_notISt16reverse_iteratorIPKcEPFbhEET_S6_S6_T0_"}
!21 = distinct !{!21, !20, !"_ZSt11find_if_notISt16reverse_iteratorIPKcEPFbhEET_S6_S6_T0_: argument 0"}
!22 = distinct !{!22, !"_ZSt13__find_if_notISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops10_Iter_predIPFbhEEEET_SA_SA_T0_"}
!23 = distinct !{!23, !22, !"_ZSt13__find_if_notISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops10_Iter_predIPFbhEEEET_SA_SA_T0_: argument 0"}
!24 = distinct !{!24, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops12_Iter_negateIPFbhEEEET_SA_SA_T0_St26random_access_iterator_tag"}
!25 = distinct !{!25, !24, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops12_Iter_negateIPFbhEEEET_SA_SA_T0_St26random_access_iterator_tag: argument 0"}
!26 = !{!"float", !8, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!25, !23, !21}
!29 = distinct !{!29, !"_ZSt11find_if_notISt16reverse_iteratorIPKcEPFbhEET_S6_S6_T0_"}
!30 = distinct !{!30, !29, !"_ZSt11find_if_notISt16reverse_iteratorIPKcEPFbhEET_S6_S6_T0_: argument 0"}
!31 = distinct !{!31, !"_ZSt13__find_if_notISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops10_Iter_predIPFbhEEEET_SA_SA_T0_"}
!32 = distinct !{!32, !31, !"_ZSt13__find_if_notISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops10_Iter_predIPFbhEEEET_SA_SA_T0_: argument 0"}
!33 = distinct !{!33, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops12_Iter_negateIPFbhEEEET_SA_SA_T0_St26random_access_iterator_tag"}
!34 = distinct !{!34, !33, !"_ZSt9__find_ifISt16reverse_iteratorIPKcEN9__gnu_cxx5__ops12_Iter_negateIPFbhEEEET_SA_SA_T0_St26random_access_iterator_tag: argument 0"}
!35 = !{!14, !14, i64 0}
!36 = !{!34, !32, !30}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!38 = !{!"bool", !8, i64 0}
!39 = !{!38, !38, i64 0}
!40 = distinct !{!40, !13}
!41 = !{!"_ZTSN4absl12lts_2026052612_GLOBAL__N_14SpecE", !14, i64 0, !14, i64 8, !8, i64 16}
!42 = !{!41, !14, i64 0}
!43 = !{!41, !14, i64 8}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
end_hunk_2
