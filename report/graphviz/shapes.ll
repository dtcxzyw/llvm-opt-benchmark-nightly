Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/shapes?download=true
inline.NumInlined: 197
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@star_inside:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  %i.h = load i32, ptr %i.g, align 4, !tbaa !113
  %i.i = and i32 %i.h, 3
  %i.j = mul nuw nsw i32 %i.i, 90
  %i.k = tail call { double, double } @ccwrotatepf(double %1, double %2, i32 noundef %i.j) #26 ; 2 uses
  %i.l = extractvalue { double, double } %i.k, 0  ; 3 uses
  %i.m = extractvalue { double, double } %i.k, 1  ; 3 uses
  %.not68 = icmp eq ptr %i.b, null
  br i1 %.not68, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load double, ptr %i.b, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload = load double, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !9
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !9
  %i.n = fcmp ugt double %.sroa.0.0.copyload, %i.l
  br i1 %i.n, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !9
  %i.o = fcmp ugt double %i.l, %.sroa.5.0.copyload
  br i1 %i.o, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = fcmp ole double %.sroa.4.0.copyload, %i.m
  %i.q = fcmp ole double %i.m, %.sroa.6.0.copyload
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br label %.loopexit

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !87
  %.not69 = icmp eq ptr %i.c, %i.t
  br i1 %.not69, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !112  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !87
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !89
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !57 ; 3 uses
  %i.ad = load ptr, ptr @N_penwidth, align 8, !tbaa !61
  %i.ae = tail call double @late_double(ptr noundef %i.c, ptr noundef %i.ad, double noundef 1.000000e+00, double noundef 0.000000e+00) #26
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !56 ; 4 uses
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = fcmp ogt double %i.ae, 0.000000e+00
  %or.cond = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = mul i64 %i.ah, %i.ac
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.al = icmp eq i64 %i.ah, 0
  br i1 %i.al, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = add i64 %i.ah, -1
  %i.an = mul i64 %i.am, %i.ac
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.sink = phi i64 [ %i.ak, %bb.h ], [ %i.an, %bb.j ], [ 0, %bb.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sink, ptr %i.ao, align 8, !tbaa !87
  store ptr %i.c, ptr %i.s, align 8, !tbaa !87
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !87 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !89
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !57
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.061 = phi ptr [ %i.aa, %bb.k ], [ %i.as, %bb.l ]
  %.057 = phi i64 [ %i.ac, %bb.k ], [ %i.au, %bb.l ] ; 3 uses
  %.not7173 = icmp eq i64 %.057, 0
  br i1 %.not7173, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !87
  %invariant.gep = getelementptr [16 x i8], ptr %.061, i64 %i.aw ; 2 uses
  %i.ax = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.l, i64 0
  %i.ay = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.m, i64 0
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph
  %.075 = phi i64 [ 0, %.lr.ph ], [ %i.br, %bb.n ] ; 3 uses
  %.05874 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.n ]
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %.075 ; 2 uses
  %.sroa.011.0.copyload = load double, ptr %gep, align 8, !tbaa !9 ; 2 uses
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %.sroa.412.0.copyload = load double, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !9 ; 2 uses
  %i.az = add i64 %.075, 4
  %i.ba = urem i64 %i.az, %.057
  %gep79 = getelementptr [16 x i8], ptr %invariant.gep, i64 %i.ba ; 2 uses
  %.sroa.09.0.copyload = load double, ptr %gep79, align 8, !tbaa !9
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep79, i64 8
  %.sroa.410.0.copyload = load double, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !9
  %i.bb = fsub double %.sroa.410.0.copyload, %.sroa.412.0.copyload
  %i.bc = fneg double %i.bb                       ; 2 uses
  %i.bd = fsub double %.sroa.09.0.copyload, %.sroa.011.0.copyload ; 2 uses
  %i.be = fmul double %.sroa.412.0.copyload, %i.bd
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.bc, double %.sroa.011.0.copyload, double %i.be)
  %i.bg = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x double> %i.ay, %i.bh
  %i.bj = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.ax, <2 x double> %i.bi)
  %i.bm = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = fsub <2 x double> %i.bl, %i.bn
  %i.bp = fcmp oge <2 x double> %i.bo, zeroinitializer ; 2 uses
  %shift = shufflevector <2 x i1> %i.bp, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = xor <2 x i1> %i.bp, %shift
  %.not70 = extractelement <2 x i1> %foldExtExtBinop, i64 0
  %i.bq = zext i1 %.not70 to i32
  %spec.select = add nuw nsw i32 %.05874, %i.bq   ; 2 uses
  %.not86 = icmp ne i32 %spec.select, 2           ; 2 uses
  %i.br = add i64 %.075, 2                        ; 2 uses
  %.not71.not = icmp ult i64 %i.br, %.057
  %or.cond87 = and i1 %.not86, %.not71.not
  br i1 %or.cond87, label %bb.n, label %.loopexit, !llvm.loop !265

.loopexit:                                        ; preds = %bb.n, %bb.m, %bb.e, %bb.d, %bb.c, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ %i.r, %bb.e ], [ false, %bb.d ], [ true, %bb.m ], [ %.not86, %bb.n ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { double, double } @star_size(double %0, double %1) #20 {
bb.a:
  %i.a = insertelement <2 x double> poison, double %0, i64 0
  %i.b = insertelement <2 x double> %i.a, double %1, i64 1
  %i.c = fdiv <2 x double> %i.b, <double f0x3FFE6F0E134454FF, double f0x3FF1E3779B97F4A8> ; 2 uses
  %i.d = extractelement <2 x double> %i.c, i64 0
  %i.e = extractelement <2 x double> %i.c, i64 1
  %i.f = tail call nsz double @llvm.maxnum.f64(double %i.d, double %i.e)
  %i.g = fmul double %i.f, f0x3FEE6F0E134454FF
  %i.h = fmul double %i.g, f0x3FE9E3779B97F4A8
  %i.i = fdiv double %i.h, f0x3FD2CF2304755A5E    ; 2 uses
  %i.j = fmul double %i.i, 2.000000e+00
  %i.k = fmul double %i.j, f0x3FEE6F0E134454FF
  %i.l = fmul double %i.i, f0x3FFCF1BBCDCBFA54
  %.fca.0.insert = insertvalue { double, double } poison, double %i.k, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.l, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @star_vertices(ptr nofree noundef writeonly captures(none) initializes((0, 160)) %0, ptr nofree noundef captures(none) %1) #21 {
bb.a:
  %.sroa.0.0.copyload = load double, ptr %1, align 8, !tbaa !9 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.8.0.copyload = load double, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !9 ; 4 uses
  %i.a = fdiv double %.sroa.8.0.copyload, %.sroa.0.0.copyload ; 2 uses
  %i.b = fcmp ogt double %i.a, f0x3FEE6F0E13445500
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = fdiv double %.sroa.8.0.copyload, f0x3FEE6F0E13445500
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = fcmp olt double %i.a, f0x3FEE6F0E13445500
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = fmul double %.sroa.0.0.copyload, f0x3FEE6F0E13445500
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.8.0 = phi double [ %.sroa.8.0.copyload, %bb.b ], [ %i.e, %bb.d ], [ %.sroa.8.0.copyload, %bb.c ]
  %.sroa.0.0 = phi double [ %i.c, %bb.b ], [ %.sroa.0.0.copyload, %bb.d ], [ %.sroa.0.0.copyload, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = fdiv double %.sroa.0.0, f0x3FFE6F0E134454FF ; 8 uses
  %i.q = fmul double %i.p, f0x3FEE6F0E134454FF    ; 2 uses
  %i.r = fmul double %i.q, f0x3FD3C6EF372FE950
  %i.s = fdiv double %i.r, f0x3FE89F188BDCD7AF    ; 8 uses
  %i.t = fmul double %i.p, f0x3FC8722191A02D60
  %i.u = fmul double %i.t, -5.000000e-01          ; 4 uses
  store double %i.q, ptr %0, align 8, !tbaa !19
  %i.v = insertelement <2 x double> poison, double %i.p, i64 0 ; 2 uses
  %i.w = insertelement <2 x double> %i.v, double %i.s, i64 1 ; 2 uses
  %i.x = insertelement <2 x double> poison, double %i.u, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> <double f0x3FD3C6EF372FE94F, double f0x3FE9E3779B97F4A8>, <2 x double> %i.y) ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 0
  store double %i.aa, ptr %i.f, align 8, !tbaa !17
  %i.ab = fmul double %i.s, f0x3FE2CF2304755A5E
  store double %i.ab, ptr %i.g, align 8, !tbaa !19
  %i.ac = extractelement <2 x double> %i.z, i64 1 ; 2 uses
  store double %i.ac, ptr %i.h, align 8, !tbaa !17
  %i.ad = fmul double %i.p, f0x3C91A62633145C07
  store double %i.ad, ptr %i.i, align 8, !tbaa !19
  %i.ae = fadd double %i.p, %i.u
  store double %i.ae, ptr %i.j, align 8, !tbaa !17
  %i.af = fmul double %i.s, f0xBFE2CF2304755A5D
  store double %i.af, ptr %i.k, align 8, !tbaa !19
  store double %i.ac, ptr %i.l, align 8, !tbaa !17
  %i.ag = fmul double %i.p, f0xBFEE6F0E134454FF
  store double %i.ag, ptr %i.m, align 8, !tbaa !19
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> <double f0x3FD3C6EF372FE951, double f0xBFD3C6EF372FE94D>, <2 x double> %i.y) ; 2 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0
  store double %i.ai, ptr %i.n, align 8, !tbaa !17
  %i.aj = fmul double %i.s, f0xBFEE6F0E13445500
  store double %i.aj, ptr %i.o, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.al = extractelement <2 x double> %i.ah, i64 1
  store double %i.al, ptr %i.ak, align 8, !tbaa !17
  %i.am = fmul double %i.p, f0xBFE2CF2304755A5F
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.am, ptr %i.an, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ap = fmul double %i.s, f0xBCAA79394C9E8A0A
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.ap, ptr %i.aq, align 8, !tbaa !19
  %i.ar = fsub double %i.u, %i.s
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %i.ar, ptr %i.as, align 8, !tbaa !17
  %i.at = fmul double %i.p, f0x3FE2CF2304755A5C
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128
  store double %i.at, ptr %i.au, align 8, !tbaa !19
  %2 = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %3 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %2, <2 x double> <double f0xBFE9E3779B97F4A7, double f0xBFE9E3779B97F4A9>, <2 x double> %i.y) ; 2 uses
  %4 = extractelement <2 x double> %3, i64 0
  store double %4, ptr %i.ao, align 8, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %5 = extractelement <2 x double> %3, i64 1
  store double %5, ptr %i.av, align 8, !tbaa !17
  %i.aw = fmul double %i.s, f0x3FEE6F0E134454FF
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.aw, ptr %i.ax, align 8, !tbaa !19
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.s, double f0xBFD3C6EF372FE953, double %i.u)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.ay, ptr %i.az, align 8, !tbaa !17
  store double %.sroa.0.0, ptr %1, align 8, !tbaa !9
  store double %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define internal fastcc { double, double } @compassPoint(ptr noundef nonnull %0, double noundef %1, double noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca [4 x %struct.pointf_s], align 16    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = load ptr, ptr %0, align 8, !tbaa !87     ; 2 uses
  %i.b = tail call ptr @agraphof(ptr noundef %i.a) #26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  %i.f = load i32, ptr %i.e, align 4, !tbaa !113
  %i.g = and i32 %i.f, 3                          ; 3 uses
  %.not = icmp eq i32 %i.g, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = mul nuw nsw i32 %i.g, 90
  %i.i = tail call { double, double } @cwrotatepf(double %2, double %1, i32 noundef %i.h) #26 ; 2 uses
  %i.j = extractvalue { double, double } %i.i, 0
  %i.k = extractvalue { double, double } %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.03.0 = phi double [ %i.j, %bb.b ], [ %2, %bb.a ]
  %.sroa.6.0 = phi double [ %i.k, %bb.b ], [ %1, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store double %.sroa.03.0, ptr %i.n, align 16, !tbaa !9
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store double %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.m, ptr noundef nonnull align 16 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !266
  call void @bezier_clip(ptr noundef nonnull %0, ptr noundef %i.v, ptr noundef nonnull %3, i1 noundef zeroext true) #26
  %.sroa.013.0.copyload.pre = load double, ptr %3, align 16 ; 2 uses
  %.sroa.2.0.copyload.pre = load double, ptr %i.l, align 8 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = mul nuw nsw i32 %i.g, 90
  %i.x = call { double, double } @ccwrotatepf(double %.sroa.013.0.copyload.pre, double %.sroa.2.0.copyload.pre, i32 noundef %i.w) #26 ; 2 uses
  %i.y = extractvalue { double, double } %i.x, 0
  %i.z = extractvalue { double, double } %i.x, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.2.0.copyload = phi double [ %i.z, %bb.d ], [ %.sroa.2.0.copyload.pre, %bb.c ]
  %.sroa.013.0.copyload = phi double [ %i.y, %bb.d ], [ %.sroa.013.0.copyload.pre, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.013.0.copyload, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.2.0.copyload, 1
  ret { double, double } %.fca.1.insert
}

declare { double, double } @cwrotatepf(double, double, i32 noundef) local_unnamed_addr #7

declare void @bezier_clip(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmax.v2f64(<2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.ceil.v2f64(<2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v12i32(<12 x i32>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind }
attributes #27 = { nounwind allocsize(0,1) }
attributes #28 = { cold nounwind }
attributes #29 = { noreturn }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { nounwind allocsize(1) }
attributes #33 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{i64 0, i64 8, !9, i64 8, i64 8, !9}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = distinct !{!16, !12}
!17 = !{!18, !10, i64 8}
!18 = !{!"pointf_s", !10, i64 0, !10, i64 8}
!19 = !{!18, !10, i64 0}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = !{!26, !29, i64 16}
!26 = !{!"Agobj_s", !27, i64 0, !29, i64 16}
!27 = !{!"Agtag_s", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !28, i64 8}
!28 = !{!"long", !6, i64 0}
!29 = !{!"p1 _ZTS7Agrec_s", !15, i64 0}
!30 = !{!31, !34, i64 16}
!31 = !{!"Agnodeinfo_t", !32, i64 0, !34, i64 16, !15, i64 24, !18, i64 32, !10, i64 48, !10, i64 56, !35, i64 64, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !36, i64 136, !36, i64 144, !15, i64 152, !6, i64 160, !6, i64 161, !37, i64 162, !6, i64 163, !5, i64 164, !5, i64 168, !5, i64 172, !38, i64 176, !10, i64 184, !6, i64 192, !37, i64 193, !39, i64 200, !39, i64 208, !6, i64 216, !28, i64 224, !6, i64 232, !6, i64 233, !6, i64 234, !39, i64 240, !39, i64 248, !40, i64 256, !40, i64 272, !40, i64 288, !40, i64 304, !40, i64 320, !43, i64 336, !5, i64 344, !39, i64 352, !5, i64 360, !5, i64 364, !10, i64 368, !40, i64 376, !40, i64 392, !40, i64 408, !40, i64 424, !44, i64 440, !5, i64 448, !5, i64 452, !5, i64 456, !6, i64 464}
!32 = !{!"Agrec_s", !33, i64 0, !29, i64 8}
!33 = !{!"p1 omnipotent char", !15, i64 0}
!34 = !{!"p1 _ZTS10shape_desc", !15, i64 0}
!35 = !{!"", !18, i64 0, !18, i64 16}
!36 = !{!"p1 _ZTS11textlabel_t", !15, i64 0}
!37 = !{!"_Bool", !6, i64 0}
!38 = !{!"p1 double", !15, i64 0}
!39 = !{!"p1 _ZTS8Agnode_s", !15, i64 0}
!40 = !{!"elist", !41, i64 0, !28, i64 8}
!41 = !{!"p2 _ZTS8Agedge_s", !42, i64 0}
end_hunk_0
