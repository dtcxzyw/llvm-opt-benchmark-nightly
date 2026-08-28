Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCOpenings?download=true
inline.NumInlined: 3954
inline.NumDeleted: 1464
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE:bb.a
  store <2 x double> %i.gk, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gl = insertelement <2 x double> poison, double %i.l, i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = insertelement <2 x double> %i.eq, double 0.000000e+00, i64 1
  %i.go = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.gn, <2 x double> %i.gp) ; 2 uses
  %i.gr = insertelement <2 x double> poison, double %i.u, i64 0
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> %i.gq)
  %i.gu = insertelement <2 x double> %i.fd, double %i.fx, i64 1
  %i.gv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> zeroinitializer, <2 x double> %i.gt) ; 2 uses
  %i.gw = extractelement <2 x double> %i.gv, i64 0
  store double %i.gw, ptr %.sroa.11123.0..sroa_idx, align 8
  %i.gx = shufflevector <2 x double> %i.fv, <2 x double> %i.gq, <2 x i32> <i32 1, i32 3>
  %i.gy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> zeroinitializer, <2 x double> %i.gx)
  %i.gz = fadd <2 x double> %i.gy, zeroinitializer
  %i.ha = extractelement <2 x double> %i.gv, i64 1
  store double %i.ha, ptr %.sroa.43.0..sroa_idx, align 8
  store <2 x double> %i.gz, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %.sroa.57.0..sroa_idx, align 8
  br label %bb.m

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %.lr.ph158
  %.sroa.078.0156 = phi ptr [ %i.hi, %.lr.ph158 ], [ %i.bs, %.lr.ph158.preheader ] ; 3 uses
  %i.hb = load <2 x double>, ptr %.sroa.078.0156, align 8
  %i.hc = fsub <2 x double> %i.hb, %i.bw
  %i.hd = fdiv <2 x double> %i.hc, %i.cc          ; 2 uses
  %i.he = fcmp olt <2 x double> %i.hd, zeroinitializer
  %i.hf = select <2 x i1> %i.he, <2 x double> zeroinitializer, <2 x double> %i.hd ; 2 uses
  %i.hg = fcmp ogt <2 x double> %i.hf, splat (double 1.000000e+00)
  %i.hh = select <2 x i1> %i.hg, <2 x double> splat (double 1.000000e+00), <2 x double> %i.hf
  store <2 x double> %i.hh, ptr %.sroa.078.0156, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.078.0156, i64 16 ; 2 uses
  %.not136 = icmp eq ptr %i.hi, %i.br
  br i1 %.not136, label %._crit_edge159, label %.lr.ph158, !llvm.loop !224

bb.m:                                             ; preds = %bb.d, %._crit_edge159, %bb.b
  ret void
}

declare void @_ZN6Assimp3IFC26DerivePlaneCoordinateSpaceERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind writable sret(%class.aiMatrix3x3t) align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC16GenerateOpeningsERSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshEbbRK10aiVector3tIdE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::vector.91", align 8    ; 14 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.std::vector.5", align 8     ; 10 uses
  %7 = alloca %class.aiVector3t, align 8          ; 9 uses
  %8 = alloca %class.aiMatrix4x4t, align 8        ; 10 uses
  %9 = alloca %class.aiMatrix4x4t, align 8        ; 10 uses
  %10 = alloca %class.aiMatrix4x4t, align 8       ; 5 uses
  %11 = alloca %"class.std::vector.15", align 8   ; 22 uses
  %12 = alloca %"class.std::vector.5", align 8    ; 22 uses
  %.sroa.0419 = alloca ptr, align 8               ; 8 uses
  %.sroa.11424 = alloca ptr, align 8              ; 8 uses
  %.sroa.18 = alloca ptr, align 8                 ; 9 uses
  %13 = alloca %"struct.std::pair.3", align 16    ; 13 uses
  %14 = alloca %"class.std::vector.96", align 8   ; 12 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %15 = alloca %"class.std::vector.43", align 8   ; 19 uses
  %16 = alloca %"class.__gnu_cxx::__normal_iterator.101", align 8 ; 5 uses
  %17 = alloca %"class.__gnu_cxx::__normal_iterator.101", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i8 1, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %..sroa.gep412 = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 11 uses
  %..sroa.gep418 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  invoke void @_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix4x4t) align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 1, !range !131, !noundef !132
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.dd

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %10, ptr noundef nonnull align 8 dereferenceable(128) %8, i64 128, i1 false)
  %i.h = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN12aiMatrix4x4tIdE7InverseEv(ptr noundef nonnull align 8 dereferenceable(128) %10)
          to label %_ZN10aiVector3tIdE9NormalizeEv.exit unwind label %bb.e

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %9, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0419)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11424)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  store ptr null, ptr %.sroa.0419, align 8
  store ptr null, ptr %.sroa.11424, align 8
  store ptr null, ptr %.sroa.18, align 8
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not456651 = icmp eq ptr %i.i, %i.k
  br i1 %.not456651, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit, label %.lr.ph655

.lr.ph655:                                        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 88
  %.sroa.11360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %.sroa.11354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.dc

bb.f:                                             ; preds = %bb.cu, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254

bb.g:                                             ; preds = %.lr.ph655, %bb.ci
  %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420760 = phi ptr [ null, %.lr.ph655 ], [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420761, %bb.ci ] ; 2 uses
  %.sroa.11424.0..sroa.11424.0..sroa.11424.8. = phi ptr [ null, %.lr.ph655 ], [ %.sroa.11424.0..sroa.11424.0..sroa.11424.8.757, %bb.ci ] ; 3 uses
  %.sroa.0419.0..sroa.0419.0..sroa.0419.0. = phi ptr [ null, %.lr.ph655 ], [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.754, %bb.ci ] ; 3 uses
  %.0654 = phi i1 [ undef, %.lr.ph655 ], [ %.8, %bb.ci ] ; 6 uses
  %.sroa.0406.0652 = phi ptr [ %i.i, %.lr.ph655 ], [ %i.tz, %bb.ci ] ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 8
  %.sroa.0385.0.copyload = load double, ptr %i.ab, align 8 ; 3 uses
  %.sroa.10390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 16
  %.sroa.10390.0.copyload = load double, ptr %.sroa.10390.0..sroa_idx, align 8 ; 3 uses
  %.sroa.15396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 24
  %.sroa.15396.0.copyload = load double, ptr %.sroa.15396.0..sroa_idx, align 8 ; 3 uses
  %i.ac = fmul double %.sroa.10390.0.copyload, %.sroa.10390.0.copyload
  %i.ad = call double @llvm.fmuladd.f64(double %.sroa.0385.0.copyload, double %.sroa.0385.0.copyload, double %i.ac)
  %i.ae = call noundef double @llvm.fmuladd.f64(double %.sroa.15396.0.copyload, double %.sroa.15396.0.copyload, double %i.ad) ; 2 uses
  %i.af = fcmp ogt double %i.ae, 1.000000e-10
  br i1 %i.af, label %_ZN10aiVector3tIdEdVEd.exit.i180, label %_ZN10aiVector3tIdE9NormalizeEv.exit182

_ZN10aiVector3tIdEdVEd.exit.i180:                 ; preds = %bb.g
  %sqrt.i.i181 = call noundef double @llvm.sqrt.f64(double %i.ae)
  %i.ag = fdiv double 1.000000e+00, %sqrt.i.i181  ; 3 uses
  %i.ah = fmul double %.sroa.0385.0.copyload, %i.ag
  %i.ai = fmul double %.sroa.10390.0.copyload, %i.ag
  %i.aj = fmul double %.sroa.15396.0.copyload, %i.ag
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit182

_ZN10aiVector3tIdE9NormalizeEv.exit182:           ; preds = %bb.g, %_ZN10aiVector3tIdEdVEd.exit.i180
  %.sroa.0385.0 = phi double [ %i.ah, %_ZN10aiVector3tIdEdVEd.exit.i180 ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %.sroa.10390.0 = phi double [ %i.ai, %_ZN10aiVector3tIdEdVEd.exit.i180 ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %.sroa.15396.0 = phi double [ %i.aj, %_ZN10aiVector3tIdEdVEd.exit.i180 ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 32
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 48
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not457.a = icmp eq ptr %i.an, null
  br i1 %.not457.a, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit182
  %i.ao = fmul double %.sroa.10390.0, %.sroa.10390.0
  %i.ap = call double @llvm.fmuladd.f64(double %.sroa.0385.0, double %.sroa.0385.0, double %i.ao)
  %i.aq = call noundef double @llvm.fmuladd.f64(double %.sroa.15396.0, double %.sroa.15396.0, double %i.ap)
  %i.ar = fcmp ogt double %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = load double, ptr %7, align 8
  %i.at = load double, ptr %i.l, align 8
  %i.au = fmul double %.sroa.10390.0, %i.at
  %i.av = call double @llvm.fmuladd.f64(double %.sroa.0385.0, double %i.as, double %i.au)
  %i.aw = load double, ptr %i.m, align 8
  %i.ax = call noundef double @llvm.fmuladd.f64(double %.sroa.15396.0, double %i.aw, double %i.av)
  %i.ay = call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp ogt double %i.ay, 9.000000e-01
  br i1 %i.az, label %18, label %bb.j

18:                                               ; preds = %bb.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %18, %bb.h, %_ZN10aiVector3tIdE9NormalizeEv.exit182
  %.0144 = phi i1 [ true, %18 ], [ false, %bb.i ], [ false, %bb.h ], [ false, %_ZN10aiVector3tIdE9NormalizeEv.exit182 ] ; 2 uses
  %.0143 = phi ptr [ %i.an, %18 ], [ %i.al, %bb.i ], [ %i.al, %bb.h ], [ %i.al, %_ZN10aiVector3tIdE9NormalizeEv.exit182 ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0143, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bc = load ptr, ptr %.0143, align 8           ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i.i.i, label %.noexc183, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = sdiv exact i64 %i.bf, 24
  %i.bh = icmp ugt i64 %i.bg, 384307168202282325
  br i1 %i.bh, label %.noexc.i.i, label %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i, !prof !225

.noexc.i.i:                                       ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %.loopexit.split-lp468

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #25
          to label %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i..noexc183_crit_edge unwind label %.loopexit467

_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i..noexc183_crit_edge: ; preds = %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %.0143, align 8
  %.pre750 = load ptr, ptr %i.ba, align 8
  br label %.noexc183

.noexc183:                                        ; preds = %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i..noexc183_crit_edge, %bb.j
  %i.bj = phi ptr [ %i.bb, %bb.j ], [ %.pre750, %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i..noexc183_crit_edge ] ; 2 uses
  %i.bk = phi ptr [ %i.bc, %bb.j ], [ %.pre, %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i..noexc183_crit_edge ] ; 2 uses
  %i.bl = phi ptr [ null, %bb.j ], [ %i.bi, %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i..noexc183_crit_edge ] ; 9 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.bk, %i.bj
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc183, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %i.bl, %.noexc183 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i ], [ %i.bk, %.noexc183 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bm, %i.bj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !226

_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.noexc183
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bl, %.noexc183 ], [ %i.bn, %.lr.ph.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0143, i64 24 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0143, i64 32 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 4 uses
  %.not.i.i.i.i184 = icmp eq ptr %i.bq, %i.br
  br i1 %.not.i.i.i.i184, label %.noexc187, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit
  %i.bv = icmp ugt i64 %i.bu, 9223372036854775804
  br i1 %i.bv, label %.noexc.i.i185, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, !prof !225

.noexc.i.i185:                                    ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc186 unwind label %.loopexit.split-lp473

.noexc186:                                        ; preds = %.noexc.i.i185
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #25
          to label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge unwind label %.loopexit472

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge: ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i
  %.pre751 = load ptr, ptr %i.bo, align 8         ; 3 uses
  %.pre752 = load ptr, ptr %i.bp, align 8         ; 2 uses
  %.pre775 = ptrtoint ptr %.pre752 to i64
  %.pre776 = ptrtoint ptr %.pre751 to i64
  %i.bx = icmp eq ptr %.pre752, %.pre751
  br label %.noexc187

.noexc187:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge, %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit
  %.pre-phi777 = phi i64 [ %.pre776, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge ], [ %i.bt, %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit ]
  %.pre-phi = phi i64 [ %.pre775, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge ], [ %i.bs, %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit ]
  %.not661 = phi i1 [ %i.bx, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge ], [ true, %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit ]
  %i.by = phi ptr [ %.pre751, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge ], [ %i.br, %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit ] ; 2 uses
  %i.bz = phi ptr [ %i.bw, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i..noexc187_crit_edge ], [ null, %_ZNSt6vectorI10aiVector3tIdESaIS1_EEC2ERKS3_.exit ] ; 8 uses
  %i.ca = sub i64 %.pre-phi, %.pre-phi777         ; 4 uses
  %i.cb = icmp sgt i64 %i.ca, 4
  br i1 %i.cb, label %bb.m, label %bb.n, !prof !106

bb.m:                                             ; preds = %.noexc187
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bz, ptr align 4 %i.by, i64 %i.ca, i1 false)
  br label %bb.p

bb.n:                                             ; preds = %.noexc187
  %i.cc = icmp eq i64 %i.ca, 4
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cd = load i32, ptr %i.by, align 4
  store i32 %i.cd, ptr %i.bz, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.ce = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.cf = ptrtoint ptr %i.bl to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = sdiv exact i64 %i.cg, 24
  %i.ci = icmp ult i64 %i.ch, 3
  br i1 %i.ci, label %bb.cf, label %bb.q

.loopexit467:                                     ; preds = %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit469 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254

.loopexit.split-lp468:                            ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp470 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254

.loopexit472:                                     ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit474 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit252

.loopexit.split-lp473:                            ; preds = %.noexc.i.i185
  %lpad.loopexit.split-lp475 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit252

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %12, align 8              ; 4 uses
  %i.ck = load ptr, ptr %..sroa.gep412, align 8   ; 2 uses
  %.not.i.i = icmp eq ptr %i.ck, %i.cj
  br i1 %.not.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIP10aiVector2tIdES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP10aiVector2tIdES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.q
  store ptr %i.cj, ptr %..sroa.gep412, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit: ; preds = %bb.q, %_ZSt8_DestroyIP10aiVector2tIdES1_EvT_S3_RSaIT0_E.exit.i.i
  %.pre764773 = phi ptr [ %i.ck, %bb.q ], [ %i.cj, %_ZSt8_DestroyIP10aiVector2tIdES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %.not.i.i188 = icmp eq ptr %.sroa.11424.0..sroa.11424.0..sroa.11424.8., %.sroa.0419.0..sroa.0419.0..sroa.0419.0.
  %spec.store.select = select i1 %.not.i.i188, ptr %.sroa.11424.0..sroa.11424.0..sroa.11424.8., ptr %.sroa.0419.0..sroa.0419.0..sroa.0419.0. ; 2 uses
  store ptr %spec.store.select, ptr %.sroa.11424, align 8
  br i1 %.not661, label %._crit_edge, label %.lr.ph630

.lr.ph630:                                        ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit
  %i.cl = ashr exact i64 %i.ca, 2
  %i.cm = load <8 x double>, ptr %8, align 8      ; 4 uses
  %i.cn = load double, ptr %i.n, align 8
  %i.co = load double, ptr %i.o, align 8
  %i.cp = load double, ptr %i.p, align 8
  %i.cq = load double, ptr %i.q, align 8
  %umax = call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cr = shufflevector <8 x double> %i.cm, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.cs = shufflevector <8 x double> %i.cm, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.ct = shufflevector <8 x double> %i.cm, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.cu = shufflevector <8 x double> %i.cm, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  br label %bb.r

._crit_edge.loopexit:                             ; preds = %.loopexit461.a
  %.sroa.11424.0..sroa.11424.0..sroa.11424.0..sroa.11424.8.425.pre = load ptr, ptr %.sroa.11424, align 8
  %.sroa.0419.0..sroa.0419.0..sroa.0419.0..sroa.0419.0.420.pre = load ptr, ptr %.sroa.0419, align 8
  %.pre764.pre = load ptr, ptr %..sroa.gep412, align 8
  %.pre765.pre = load ptr, ptr %12, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit
  %.pre765.a = phi ptr [ %i.cj, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit ], [ %.pre765.pre, %._crit_edge.loopexit ] ; 3 uses
  %.pre764 = phi ptr [ %.pre764773, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit ], [ %.pre764.pre, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420 = phi ptr [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420760, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit ], [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0..sroa.0419.0.420.pre, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.11424.0..sroa.11424.0..sroa.11424.8.425 = phi ptr [ %spec.store.select, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit ], [ %.sroa.11424.0..sroa.11424.0..sroa.11424.0..sroa.11424.8.425.pre, %._crit_edge.loopexit ] ; 5 uses
  %.0438.lcssa = phi double [ 1.000000e+10, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit ], [ %.2440, %._crit_edge.loopexit ] ; 2 uses
  %.0435.lcssa = phi double [ -1.000000e+10, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit ], [ %.2437, %._crit_edge.loopexit ] ; 2 uses
  %i.cv = phi <2 x double> [ splat (double 1.000000e+10), %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit ], [ %i.iu, %._crit_edge.loopexit ] ; 3 uses
  %i.cw = phi <2 x double> [ splat (double 1.000000e+10), %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit ], [ %i.iv, %._crit_edge.loopexit ] ; 2 uses
  %i.cx = phi <2 x double> [ splat (double -1.000000e+10), %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit ], [ %i.iw, %._crit_edge.loopexit ] ; 3 uses
  %i.cy = phi <2 x double> [ splat (double -1.000000e+10), %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit ], [ %i.ix, %._crit_edge.loopexit ] ; 2 uses
  %i.cz = ptrtoint ptr %.sroa.11424.0..sroa.11424.0..sroa.11424.8.425 to i64
  %i.da = ptrtoint ptr %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420 to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = icmp ugt i64 %i.db, 32
  %i.dd = ptrtoint ptr %.pre764 to i64
  %i.de = ptrtoint ptr %.pre765.a to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = icmp ult i64 %i.df, 33                  ; 2 uses
  br i1 %i.dc, label %bb.ad, label %bb.ag

bb.r:                                             ; preds = %.lr.ph630, %.loopexit461.a
  %.0145629 = phi i64 [ 0, %.lr.ph630 ], [ %i.iy, %.loopexit461.a ] ; 3 uses
  %.0146628 = phi i64 [ 0, %.lr.ph630 ], [ %.4150, %.loopexit461.a ] ; 4 uses
  %.0435619 = phi double [ -1.000000e+10, %.lr.ph630 ], [ %.2437, %.loopexit461.a ] ; 3 uses
  %.0438618 = phi double [ 1.000000e+10, %.lr.ph630 ], [ %.2440, %.loopexit461.a ] ; 3 uses
  %i.dh = phi <2 x double> [ splat (double 1.000000e+10), %.lr.ph630 ], [ %i.iu, %.loopexit461.a ] ; 3 uses
  %i.di = phi <2 x double> [ splat (double 1.000000e+10), %.lr.ph630 ], [ %i.iv, %.loopexit461.a ] ; 3 uses
  %i.dj = phi <2 x double> [ splat (double -1.000000e+10), %.lr.ph630 ], [ %i.iw, %.loopexit461.a ] ; 3 uses
  %i.dk = phi <2 x double> [ splat (double -1.000000e+10), %.lr.ph630 ], [ %i.ix, %.loopexit461.a ] ; 3 uses
end_hunk_0
