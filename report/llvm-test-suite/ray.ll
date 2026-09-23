Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ray?download=true
inline.NumInlined: 141
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z6createiRK3Vecd:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %.sroa.1.sroa.0.0.copyload79 = load <3 x double>, ptr %1, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %5, ptr %i.bj, align 8, !tbaa !53
  store ptr %5, ptr %5, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !55
  %i.bl = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %.not4.i.i = icmp eq ptr %i.bl, %3
  br i1 %.not4.i.i, label %_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.noexc.i
  %.sroa.01.05.i.i = phi ptr [ %i.bs, %.noexc.i ], [ %i.bl, %bb.l ] ; 2 uses
  %i.bm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15
          to label %.noexc.i unwind label %bb.m   ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !29
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !29
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !58
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bk, align 8, !tbaa !58
  %i.bs = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bs, %3
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !52

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.bu, %5
  br i1 %.not8.i.i.i, label %.body, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i ], [ %i.bu, %bb.m ] ; 2 uses
  %i.bv = load ptr, ptr %.09.i.i.i, align 8, !tbaa !26 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #16
  %.not.i.i.i = icmp eq ptr %i.bv, %5
  br i1 %.not.i.i.i, label %.body, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit.loopexit: ; preds = %.noexc.i
  %.pre = load ptr, ptr %5, align 8, !tbaa !26
  br label %_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit

_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit:  ; preds = %_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit.loopexit, %bb.l
  %i.bw = phi ptr [ %.pre, %_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit.loopexit ], [ %5, %bb.l ] ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV5Group, i64 16), ptr %i.bh, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6Sphere, i64 16), ptr %i.bx, align 8, !tbaa !19
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <3 x double> %.sroa.1.sroa.0.0.copyload79, ptr %i.by, align 8
  %.sroa.3.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store double %i.k, ptr %.sroa.3.8..sroa_idx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 48 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !53
  store ptr %i.bz, ptr %i.bz, align 8, !tbaa !26
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 64 ; 3 uses
  store i64 0, ptr %i.cb, align 8, !tbaa !55
  %.not4.i.i.i = icmp eq ptr %i.bw, %5
  br i1 %.not4.i.i.i, label %_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit, %.noexc.i.i
  %.sroa.01.05.i.i.i = phi ptr [ %i.ci, %.noexc.i.i ], [ %i.bw, %_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit ] ; 2 uses
  %i.cc = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15
          to label %.noexc.i.i unwind label %bb.n ; 2 uses

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i30
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !29
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !29
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.bz) #14
  %i.cg = load i64, ptr %i.cb, align 8, !tbaa !58
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.cb, align 8, !tbaa !58
  %i.ci = load ptr, ptr %.sroa.01.05.i.i.i, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ci, %5
  br i1 %.not.i.i.i31, label %_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit.loopexit, label %.lr.ph.i.i.i30, !llvm.loop !52

bb.n:                                             ; preds = %.lr.ph.i.i.i30
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %i.bz, align 8, !tbaa !26 ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ck, %i.bz
  br i1 %.not8.i.i.i.i, label %.body32, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %i.ck, %bb.n ] ; 2 uses
  %i.cl = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !26 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #16
  %.not.i.i.i.i = icmp eq ptr %i.cl, %i.bz
  br i1 %.not.i.i.i.i, label %.body32, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit.loopexit: ; preds = %.noexc.i.i
  %.pre60 = load ptr, ptr %5, align 8, !tbaa !26
  br label %_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit

_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit: ; preds = %_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit.loopexit, %_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit
  %i.cm = phi ptr [ %.pre60, %_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit.loopexit ], [ %i.bw, %_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.cm, %5
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit, label %.lr.ph.i.i34

.lr.ph.i.i34:                                     ; preds = %_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit, %.lr.ph.i.i34
  %.09.i.i = phi ptr [ %i.cn, %.lr.ph.i.i34 ], [ %i.cm, %_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit ] ; 2 uses
  %i.cn = load ptr, ptr %.09.i.i, align 8, !tbaa !26 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #16
  %.not.i.i35 = icmp eq ptr %i.cn, %5
  br i1 %.not.i.i35, label %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit, label %.lr.ph.i.i34, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i34, %_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit
  %i.co = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %.not8.i.i36 = icmp eq ptr %i.co, %3
  br i1 %.not8.i.i36, label %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit40, label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit, %.lr.ph.i.i37
  %.09.i.i38 = phi ptr [ %i.cp, %.lr.ph.i.i37 ], [ %i.co, %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit ] ; 2 uses
  %i.cp = load ptr, ptr %.09.i.i38, align 8, !tbaa !26 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i38, i64 noundef 24) #16
  %.not.i.i39 = icmp eq ptr %i.cp, %3
  br i1 %.not.i.i39, label %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit40, label %.lr.ph.i.i37, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit40: ; preds = %.lr.ph.i.i37, %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.q

bb.o:                                             ; preds = %bb.j
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.body32:                                          ; preds = %.lr.ph.i.i.i.i, %bb.n
  %i.cr = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %.not8.i.i41 = icmp eq ptr %i.cr, %5
  br i1 %.not8.i.i41, label %.body, label %.lr.ph.i.i42

.lr.ph.i.i42:                                     ; preds = %.body32, %.lr.ph.i.i42
  %.09.i.i43 = phi ptr [ %i.cs, %.lr.ph.i.i42 ], [ %i.cr, %.body32 ] ; 2 uses
  %i.cs = load ptr, ptr %.09.i.i43, align 8, !tbaa !26 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i43, i64 noundef 24) #16
  %.not.i.i44 = icmp eq ptr %i.cs, %5
  br i1 %.not.i.i44, label %.body, label %.lr.ph.i.i42, !llvm.loop !0

.body:                                            ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i42, %.body32, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.m ], [ %i.cj, %.body32 ], [ %i.cj, %.lr.ph.i.i42 ], [ %i.bt, %.lr.ph.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 72) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.o, %.body, %bb.c
  %.pn27.pn = phi { ptr, i32 } [ %i.z, %bb.c ], [ %i.bi, %bb.k ], [ %.pn, %.body ], [ %i.cq, %bb.o ]
  %i.ct = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %.not8.i.i46 = icmp eq ptr %i.ct, %3
  br i1 %.not8.i.i46, label %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit50, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %bb.p, %.lr.ph.i.i47
  %.09.i.i48 = phi ptr [ %i.cu, %.lr.ph.i.i47 ], [ %i.ct, %bb.p ] ; 2 uses
  %i.cu = load ptr, ptr %.09.i.i48, align 8, !tbaa !26 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i48, i64 noundef 24) #16
  %.not.i.i49 = icmp eq ptr %i.cu, %3
  br i1 %.not.i.i49, label %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit50, label %.lr.ph.i.i47, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit50: ; preds = %.lr.ph.i.i47, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %.pn27.pn

bb.q:                                             ; preds = %bb.a, %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit40
  %.024 = phi ptr [ %i.bh, %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit40 ], [ %i.a, %bb.a ]
  ret ptr %.024
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5SceneD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %2 = alloca %"struct.std::pair", align 8        ; 5 uses
  %3 = alloca %"struct.std::pair", align 8        ; 5 uses
  %4 = alloca %"struct.std::pair", align 8        ; 6 uses
  %5 = alloca %"struct.std::pair", align 8        ; 4 uses
  %6 = alloca %struct.Ray, align 16               ; 7 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %7 = alloca %struct.Vec, align 16               ; 5 uses
  %8 = alloca %struct.Ray, align 16               ; 8 uses
  %i.b = icmp eq i32 %0, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 10) #14, !inline_history !63
  %i.f = trunc i64 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.036 = phi i32 [ %i.f, %bb.b ], [ 6, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store <2 x double> <double 0.000000e+00, double -1.000000e+00>, ptr %7, align 16, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double 0.000000e+00, ptr %i.g, align 16, !tbaa !12
  %i.h = call noundef ptr @_Z6createiRK3Vecd(i32 noundef %.036, ptr noundef nonnull align 8 dereferenceable(24) %7, double noundef 1.000000e+00) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3) ; 0 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 512) ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 512)
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.2, i64 noundef 5) ; 0 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.543.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.521.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.preheader51

.preheader51:                                     ; preds = %bb.c, %bb.d
  %.03557 = phi i32 [ 511, %bb.c ], [ %i.u, %bb.d ] ; 3 uses
  %i.s = uitofp nneg i32 %.03557 to double
  br label %.preheader50

.preheader50:                                     ; preds = %.preheader51, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %.03456 = phi i32 [ 0, %.preheader51 ], [ %i.an, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ] ; 2 uses
  %i.t = uitofp nneg i32 %.03456 to double
  %.pre.pre = load double, ptr @infinity, align 8, !tbaa !13, !noalias !78
  br label %.preheader

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.u = add nsw i32 %.03557, -1
  %.not = icmp eq i32 %.03557, 0
  br i1 %.not, label %bb.l, label %.preheader51, !llvm.loop !66

.preheader:                                       ; preds = %.preheader50, %bb.h
  %.pre = phi double [ %.pre.pre, %.preheader50 ], [ %i.cl, %bb.h ]
  %.03255 = phi i32 [ 0, %.preheader50 ], [ %i.ao, %bb.h ] ; 2 uses
  %.03354 = phi double [ 0.000000e+00, %.preheader50 ], [ %i.cm, %bb.h ]
  %i.v = uitofp nneg i32 %.03255 to double
  %i.w = fmul nnan double %i.v, 2.500000e-01
  %i.x = fadd double %i.w, %i.t
  %i.y = fadd double %i.x, -2.560000e+02          ; 3 uses
  %i.z = fmul double %i.y, %i.y
  br label %bb.i

bb.e:                                             ; preds = %bb.h
  %i.aa = fmul double %i.cm, 2.550000e+02
  %i.ab = fmul double %i.aa, 6.250000e-02
  %i.ac = fadd double %i.ab, 5.000000e-01
  %i.ad = fptosi double %i.ac to i32
  %i.ae = trunc i32 %i.ad to i8                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.ae, ptr %i.a, align 1, !tbaa !79
  %i.af = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !88
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.g:                                             ; preds = %bb.e
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %i.ae) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = add nuw nsw i32 %.03456, 1              ; 2 uses
  %exitcond59.not = icmp eq i32 %i.an, 512
  br i1 %exitcond59.not, label %bb.d, label %.preheader50, !llvm.loop !67

bb.h:                                             ; preds = %_Z9ray_traceRK3VecRK3RayRK5Scene.exit
  %i.ao = add nuw nsw i32 %.03255, 1              ; 2 uses
  %exitcond58.not = icmp eq i32 %i.ao, 4
  br i1 %exitcond58.not, label %bb.e, label %.preheader, !llvm.loop !68

bb.i:                                             ; preds = %.preheader, %_Z9ray_traceRK3VecRK3RayRK5Scene.exit
  %i.ap = phi double [ %.pre, %.preheader ], [ %i.cl, %_Z9ray_traceRK3VecRK3RayRK5Scene.exit ]
  %.053 = phi i32 [ 0, %.preheader ], [ %i.cn, %_Z9ray_traceRK3VecRK3RayRK5Scene.exit ] ; 2 uses
  %.152 = phi double [ %.03354, %.preheader ], [ %i.cm, %_Z9ray_traceRK3VecRK3RayRK5Scene.exit ]
  %i.aq = uitofp nneg i32 %.053 to double
  %i.ar = fmul nnan double %i.aq, 2.500000e-01
  %i.as = fadd double %i.ar, %i.s
  %i.at = fadd double %i.as, -2.560000e+02        ; 3 uses
  %i.au = fmul double %i.at, %i.at
  %i.av = fadd double %i.z, %i.au
  %i.aw = fadd double %i.av, 2.621440e+05
  %sqrt.i38 = call double @llvm.sqrt.f64(double %i.aw)
  %i.ax = fdiv double 1.000000e+00, %sqrt.i38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.ay = insertelement <4 x double> <double -4.000000e+00, double poison, double poison, double 5.120000e+02>, double %i.ax, i64 1 ; 2 uses
  %i.az = insertelement <4 x double> %i.ay, double %i.at, i64 2
  %i.ba = shufflevector <4 x double> %i.ay, <4 x double> <double 1.000000e+00, double poison, double poison, double poison>, <4 x i32> <i32 4, i32 poison, i32 1, i32 1>
  %i.bb = insertelement <4 x double> %i.ba, double %i.y, i64 1
  %i.bc = fmul <4 x double> %i.az, %i.bb
  store <4 x double> %i.bc, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14, !noalias !78
  store double %i.ap, ptr %3, align 8, !tbaa !17, !noalias !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !noalias !78
  %i.bd = load ptr, ptr %i.h, align 8, !tbaa !19, !noalias !78
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !78
  call void %i.bf(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %8), !inline_history !89
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14, !noalias !78
  %i.bg = load double, ptr %4, align 8, !tbaa !17 ; 3 uses
  %i.bh = load double, ptr @infinity, align 8, !tbaa !13 ; 4 uses
  %i.bi = fcmp oeq double %i.bg, %i.bh
  br i1 %i.bi, label %_Z9ray_traceRK3VecRK3RayRK5Scene.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = load <2 x double>, ptr %i.o, align 8, !tbaa !13 ; 2 uses
  %i.bk = fmul <2 x double> %i.bj, <double f0xBFD11ACEE560242A, double f0x3FE9A8365810363F> ; 2 uses
  %shift = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.bk, %shift
  %i.bl = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bm = load double, ptr %i.p, align 8, !tbaa !12 ; 2 uses
  %i.bn = fmul double %i.bm, f0x3FE11ACEE560242A
  %i.bo = fadd double %i.bl, %i.bn                ; 2 uses
  %i.bp = fcmp ult double %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.k, label %_Z9ray_traceRK3VecRK3RayRK5Scene.exit

bb.k:                                             ; preds = %bb.j
  %i.bq = load double, ptr %.sroa.543.0..sroa_idx.a, align 8, !tbaa !12, !noalias !90
  %10 = fmul double %i.bg, %i.bq
  %i.br = load double, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !12, !noalias !91
  %11 = fadd double %10, %i.br
  %i.bs = load double, ptr @delta, align 8, !tbaa !13 ; 2 uses
  %12 = fmul double %i.bm, %i.bs
  %13 = fadd double %11, %12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bt = load <2 x double>, ptr %9, align 8, !tbaa !13, !noalias !90
  %i.bu = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x double> %i.bv, %i.bt
  %i.bx = load <2 x double>, ptr %8, align 16, !tbaa !13, !noalias !91
  %i.by = fadd <2 x double> %i.bw, %i.bx
  %i.bz = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x double> %i.bj, %i.ca
  %i.cc = fadd <2 x double> %i.by, %i.cb
  store <2 x double> %i.cc, ptr %6, align 16, !tbaa !13
  store double %13, ptr %.sroa.521.0..sroa_idx.i.a, align 16, !tbaa !13
  store <2 x double> <double f0x3FD11ACEE560242A, double f0x3FE9A8365810363F>, ptr %i.q, align 8, !tbaa !13
  store double f0xBFE11ACEE560242A, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14, !noalias !92
  store double %i.bh, ptr %2, align 8, !tbaa !17, !noalias !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !noalias !92
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !19, !noalias !92
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !92
  call void %i.cf(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(48) %6), !inline_history !89
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14, !noalias !92
  %i.cg = load double, ptr %5, align 8, !tbaa !17
  %i.ch = load double, ptr @infinity, align 8, !tbaa !13 ; 2 uses
  %i.ci = fcmp olt double %i.cg, %i.ch
  %i.cj = fneg double %i.bo
  %i.ck = select i1 %i.ci, double 0.000000e+00, double %i.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %_Z9ray_traceRK3VecRK3RayRK5Scene.exit

_Z9ray_traceRK3VecRK3RayRK5Scene.exit:            ; preds = %bb.i, %bb.j, %bb.k
  %i.cl = phi double [ %i.bh, %bb.i ], [ %i.ch, %bb.k ], [ %i.bh, %bb.j ] ; 2 uses
  %.1.i = phi double [ 0.000000e+00, %bb.i ], [ %i.ck, %bb.k ], [ 0.000000e+00, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.cm = fadd double %.152, %.1.i                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.cn = add nuw nsw i32 %.053, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cn, 4
  br i1 %exitcond.not, label %bb.h, label %bb.i, !llvm.loop !75

bb.l:                                             ; preds = %bb.d
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #14
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6SphereD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK6Sphere9intersectERKSt4pairId3VecERK3Ray(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !14, !noalias !95 ; 2 uses
  %i.c = load double, ptr %3, align 8, !tbaa !14, !noalias !95 ; 2 uses
  %i.d = fsub double %i.b, %i.c                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !15, !noalias !95 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !15, !noalias !95 ; 2 uses
  %i.i = fsub double %i.f, %i.h                   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load double, ptr %i.j, align 8, !tbaa !12, !noalias !95 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !12, !noalias !95 ; 2 uses
  %i.n = fsub double %i.k, %i.m                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !14 ; 2 uses
  %i.q = fmul double %i.d, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load double, ptr %i.r, align 8, !tbaa !15 ; 2 uses
  %i.t = fmul double %i.i, %i.s
  %i.u = fadd double %i.q, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.w = load double, ptr %i.v, align 8, !tbaa !12 ; 2 uses
  %i.x = fmul double %i.n, %i.w
  %i.y = fadd double %i.u, %i.x                   ; 4 uses
  %i.z = fmul double %i.y, %i.y
  %i.aa = fmul double %i.d, %i.d
  %i.ab = fmul double %i.i, %i.i
  %i.ac = fadd double %i.aa, %i.ab
  %i.ad = fmul double %i.n, %i.n
  %i.ae = fadd double %i.ac, %i.ad
  %i.af = fsub double %i.z, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !22 ; 2 uses
  %i.ai = fmul double %i.ah, %i.ah
  %i.aj = fadd double %i.ai, %i.af                ; 2 uses
  %i.ak = fcmp olt double %i.aj, 0.000000e+00
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.al = load double, ptr @infinity, align 8, !tbaa !13
  br label %_ZNK6Sphere10ray_sphereERK3Ray.exit

bb.c:                                             ; preds = %bb.a
  %i.am = tail call double @sqrt(double noundef %i.aj) #14, !tbaa !9 ; 2 uses
  %i.an = fadd double %i.y, %i.am                 ; 2 uses
  %i.ao = fcmp olt double %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = load double, ptr @infinity, align 8, !tbaa !13
  br label %_ZNK6Sphere10ray_sphereERK3Ray.exit

bb.e:                                             ; preds = %bb.c
  %i.aq = fsub double %i.y, %i.am                 ; 2 uses
  %i.ar = fcmp ogt double %i.aq, 0.000000e+00
  %i.as = select i1 %i.ar, double %i.aq, double %i.an
  br label %_ZNK6Sphere10ray_sphereERK3Ray.exit

_ZNK6Sphere10ray_sphereERK3Ray.exit:              ; preds = %bb.b, %bb.d, %bb.e
  %.1.i = phi double [ %i.al, %bb.b ], [ %i.ap, %bb.d ], [ %i.as, %bb.e ] ; 5 uses
  %i.at = load double, ptr %2, align 8, !tbaa !17
  %i.au = fcmp ult double %.1.i, %i.at
  br i1 %i.au, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6Sphere10ray_sphereERK3Ray.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %_ZNK6Sphere10ray_sphereERK3Ray.exit
  %i.av = fmul double %i.p, %.1.i
  %i.aw = fmul double %.1.i, %i.s
  %i.ax = fmul double %.1.i, %i.w
  %i.ay = fadd double %i.c, %i.av
  %i.az = fadd double %i.h, %i.aw
  %i.ba = fadd double %i.m, %i.ax
  %i.bb = fsub double %i.ay, %i.b                 ; 3 uses
  %i.bc = fsub double %i.az, %i.f                 ; 3 uses
  %i.bd = fsub double %i.ba, %i.k                 ; 3 uses
  %i.be = fmul double %i.bb, %i.bb
  %i.bf = fmul double %i.bc, %i.bc
  %i.bg = fadd double %i.be, %i.bf
  %i.bh = fmul double %i.bd, %i.bd
  %i.bi = fadd double %i.bg, %i.bh
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.bi)
  %i.bj = fdiv double 1.000000e+00, %sqrt.i       ; 3 uses
  %i.bk = fmul double %i.bb, %i.bj
  %i.bl = fmul double %i.bc, %i.bj
  %i.bm = fmul double %i.bd, %i.bj
  store double %.1.i, ptr %0, align 8, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.bk, ptr %i.bn, align 8, !tbaa !13
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bl, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !13
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.bm, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5GroupD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV5Group, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %.sroa.03.06 = load ptr, ptr %i.a, align 8, !tbaa !26 ; 3 uses
  %.not7 = icmp eq ptr %.sroa.03.06, %i.a
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.b = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %.sroa.03.06, %bb.a ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %._crit_edge ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i, align 8, !tbaa !26 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #16
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.03.08 = phi ptr [ %.sroa.03.0, %bb.c ], [ %.sroa.03.06, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.03.08, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #14
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.03.0 = load ptr, ptr %.sroa.03.08, align 8, !tbaa !26 ; 2 uses
  %.not = icmp eq ptr %.sroa.03.0, %i.a
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5GroupD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
