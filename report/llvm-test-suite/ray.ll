inline.NumInlined: 141
inline.NumDeleted: 62
begin_hunk_0_@_ZmiRK3VecS1_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !8
  %i.e = fsub double %i.b, %i.d
  %i.f = load <2 x double>, ptr %1, align 8, !tbaa !11
  %i.g = load <2 x double>, ptr %2, align 8, !tbaa !11
  %i.h = fsub <2 x double> %i.f, %i.g
  store <2 x double> %i.h, ptr %0, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.e, ptr %i.i, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZmldRK3Vec(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Vec) align 8 captures(none) initializes((0, 24)) %0, double noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !8
  %i.c = fmul double %1, %i.b
  %i.d = load <2 x double>, ptr %2, align 8, !tbaa !11
  %i.e = insertelement <2 x double> poison, double %1, i64 0
  %i.f = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> zeroinitializer
  %i.g = fmul <2 x double> %i.f, %i.d
  store <2 x double> %i.g, ptr %0, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.c, ptr %i.h, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_Z3dotRK3VecS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !12
  %i.b = load double, ptr %1, align 8, !tbaa !12
  %i.c = fmul double %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !11
  %i.g = load <2 x double>, ptr %i.e, align 8, !tbaa !11
  %i.h = fmul <2 x double> %i.f, %i.g             ; 2 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %i.j = fadd double %i.c, %i.i
  %i.k = extractelement <2 x double> %i.h, i64 1
  %i.l = fadd double %i.j, %i.k
  ret double %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z7unitiseRK3Vec(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Vec) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !12  ; 3 uses
  %i.b = fmul double %i.a, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !13 ; 3 uses
  %i.e = fmul double %i.d, %i.d
  %i.f = fadd double %i.b, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !8 ; 3 uses
  %i.i = fmul double %i.h, %i.h
  %i.j = fadd double %i.f, %i.i
  %sqrt = tail call double @llvm.sqrt.f64(double %i.j)
  %i.k = fdiv double 1.000000e+00, %sqrt          ; 3 uses
  %i.l = fmul double %i.a, %i.k
  %i.m = fmul double %i.d, %i.k
  %i.n = fmul double %i.h, %i.k
  store double %i.l, ptr %0, align 8, !tbaa !12, !alias.scope !14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.m, ptr %i.o, align 8, !tbaa !13, !alias.scope !14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.n, ptr %i.p, align 8, !tbaa !8, !alias.scope !14
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z9intersectRK3RayRK5Scene(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = load double, ptr @infinity, align 8, !tbaa !11
  store double %i.a, ptr %3, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %2, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_Z9ray_traceRK3VecRK3RayRK5Scene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %"struct.std::pair", align 8        ; 5 uses
  %4 = alloca %"struct.std::pair", align 8        ; 5 uses
  %5 = alloca %"struct.std::pair", align 8        ; 6 uses
  %6 = alloca %"struct.std::pair", align 8        ; 4 uses
  %7 = alloca %struct.Ray, align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14, !noalias !21
  %i.a = load double, ptr @infinity, align 8, !tbaa !11, !noalias !21
  store double %i.a, ptr %4, align 8, !tbaa !17, !noalias !21
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !noalias !21
  %i.c = load ptr, ptr %2, align 8, !tbaa !19, !noalias !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !21
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(48) %1), !inline_history !24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14, !noalias !21
  %i.f = load double, ptr %5, align 8, !tbaa !17  ; 3 uses
  %i.g = load double, ptr @infinity, align 8, !tbaa !11 ; 2 uses
  %i.h = fcmp oeq double %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !11 ; 2 uses
  %i.k = load <2 x double>, ptr %0, align 8, !tbaa !11 ; 2 uses
  %i.l = fmul <2 x double> %i.j, %i.k             ; 2 uses
  %shift = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.l, %shift
  %i.m = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.o = load double, ptr %i.n, align 8, !tbaa !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !8 ; 2 uses
  %i.r = fmul double %i.o, %i.q
  %i.s = fadd double %i.m, %i.r                   ; 2 uses
  %i.t = fcmp ult double %i.s, 0.000000e+00
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load double, ptr %i.v, align 8, !tbaa !8, !noalias !25
  %i.x = fmul double %i.f, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load double, ptr %i.y, align 8, !tbaa !8, !noalias !28
  %i.aa = fadd double %i.x, %i.z
  %i.ab = load double, ptr @delta, align 8, !tbaa !11 ; 2 uses
  %i.ac = fmul double %i.o, %i.ab
  %i.ad = fadd double %i.aa, %i.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.ae = fneg <2 x double> %i.k
  %i.af = fneg double %i.q
  %i.ag = load <2 x double>, ptr %i.u, align 8, !tbaa !11, !noalias !25
  %i.ah = insertelement <2 x double> poison, double %i.f, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x double> %i.ai, %i.ag
  %i.ak = load <2 x double>, ptr %1, align 8, !tbaa !11, !noalias !28
  %i.al = fadd <2 x double> %i.aj, %i.ak
  %i.am = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x double> %i.j, %i.an
  %i.ap = fadd <2 x double> %i.al, %i.ao
  store <2 x double> %i.ap, ptr %7, align 16, !tbaa !11
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.ad, ptr %.sroa.521.0..sroa_idx, align 16, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x double> %i.ae, ptr %i.aq, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store double %i.af, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14, !noalias !31
  store double %i.g, ptr %3, align 8, !tbaa !17, !noalias !31
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false), !noalias !31
  %i.as = load ptr, ptr %2, align 8, !tbaa !19, !noalias !31
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !noalias !31
  call void %i.au(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %7), !inline_history !24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14, !noalias !31
  %i.av = load double, ptr %6, align 8, !tbaa !17
  %i.aw = load double, ptr @infinity, align 8, !tbaa !11
  %i.ax = fcmp olt double %i.av, %i.aw
  %i.ay = fneg double %i.s
  %i.az = select i1 %i.ax, double 0.000000e+00, double %i.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi double [ 0.000000e+00, %bb.a ], [ %i.az, %bb.c ], [ 0.000000e+00, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret double %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_Z6createiRK3Vecd(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, double noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::list", align 8 ; 22 uses
  %4 = alloca %struct.Vec, align 16               ; 19 uses
  %5 = alloca %"class.std::__cxx11::list", align 8 ; 19 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #15 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV6Sphere, i64 16), ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %2, ptr %i.c, align 8, !tbaa !34
  %i.d = icmp eq i32 %0, 1
  br i1 %i.d, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %3, ptr %i.e, align 8, !tbaa !37
  store ptr %3, ptr %3, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  store i64 0, ptr %i.f, align 8, !tbaa !42
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15
          to label %.preheader unwind label %bb.c ; 2 uses

.preheader:                                       ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.a, ptr %i.h, align 8, !tbaa !45
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  %i.i = load i64, ptr %i.f, align 8, !tbaa !47
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.f, align 8, !tbaa !47
  %i.k = fmul double %2, 3.000000e+00             ; 2 uses
  %i.l = fdiv double %i.k, f0x400BB67AE8584CAA    ; 7 uses
  %i.m = add nsw i32 %0, -1                       ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.r = fmul double %2, 5.000000e-01             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.s = load double, ptr %1, align 8, !tbaa !12, !noalias !50
  %i.t = fsub double %i.s, %i.l
  %i.u = load double, ptr %i.n, align 8, !tbaa !13, !noalias !50
  %i.v = fadd double %i.l, %i.u
  %i.w = load double, ptr %i.o, align 8, !tbaa !8, !noalias !50
  %i.x = fsub double %i.w, %i.l
  store double %i.t, ptr %4, align 16, !tbaa !12, !alias.scope !50
  store double %i.v, ptr %i.p, align 8, !tbaa !13, !alias.scope !50
  store double %i.x, ptr %i.q, align 16, !tbaa !8, !alias.scope !50
  %i.y = invoke noundef ptr @_Z6createiRK3Vecd(i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef %i.r)
          to label %bb.d unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.d:                                             ; preds = %.preheader
  %i.aa = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15
          to label %bb.e unwind label %bb.k       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !45
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  %i.ac = load i64, ptr %i.f, align 8, !tbaa !47
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.f, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.ae = load double, ptr %i.o, align 8, !tbaa !8, !noalias !53
  %i.af = fsub double %i.ae, %i.l
  %i.ag = load <2 x double>, ptr %1, align 8, !tbaa !11, !noalias !53
  %i.ah = insertelement <2 x double> poison, double %i.l, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aj = fadd <2 x double> %i.ai, %i.ag
  store <2 x double> %i.aj, ptr %4, align 16, !tbaa !11, !alias.scope !53
  store double %i.af, ptr %i.q, align 16, !tbaa !8, !alias.scope !53
  %i.ak = invoke noundef ptr @_Z6createiRK3Vecd(i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef %i.r)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.al = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15
          to label %.preheader.1 unwind label %bb.k ; 2 uses

.preheader.1:                                     ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !45
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  %i.an = load i64, ptr %i.f, align 8, !tbaa !47
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.f, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.ap = load double, ptr %1, align 8, !tbaa !12, !noalias !55
  %i.aq = fsub double %i.ap, %i.l
  store double %i.aq, ptr %4, align 16, !tbaa !12, !alias.scope !55
  %i.ar = load <2 x double>, ptr %i.n, align 8, !tbaa !11, !noalias !55
  %i.as = fadd <2 x double> %i.ai, %i.ar
  store <2 x double> %i.as, ptr %i.p, align 8, !tbaa !11, !alias.scope !55
  %i.at = invoke noundef ptr @_Z6createiRK3Vecd(i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef %i.r)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %.preheader.1
  %i.au = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.at, ptr %i.av, align 8, !tbaa !45
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  %i.aw = load i64, ptr %i.f, align 8, !tbaa !47
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.f, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.ay = load double, ptr %i.o, align 8, !tbaa !8, !noalias !57
  %i.az = fadd double %i.l, %i.ay
  %i.ba = load <2 x double>, ptr %1, align 8, !tbaa !11, !noalias !57
  %i.bb = fadd <2 x double> %i.ai, %i.ba
  store <2 x double> %i.bb, ptr %4, align 16, !tbaa !11, !alias.scope !57
  store double %i.az, ptr %i.q, align 16, !tbaa !8, !alias.scope !57
  %i.bc = invoke noundef ptr @_Z6createiRK3Vecd(i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef %i.r)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bd = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !45
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  %i.bf = load i64, ptr %i.f, align 8, !tbaa !47
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.f, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.bh = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #15
          to label %bb.l unwind label %bb.o       ; 9 uses

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g, %.preheader.1, %bb.f, %bb.e, %bb.d, %.preheader
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %.sroa.1.sroa.0.0.copyload79 = load <3 x double>, ptr %1, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %5, ptr %i.bj, align 8, !tbaa !37
  store ptr %5, ptr %5, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !42
  %i.bl = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %.not4.i.i = icmp eq ptr %i.bl, %3
  br i1 %.not4.i.i, label %_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.noexc.i
  %.sroa.01.05.i.i = phi ptr [ %i.bs, %.noexc.i ], [ %i.bl, %bb.l ] ; 2 uses
  %i.bm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15
          to label %.noexc.i unwind label %bb.m   ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !45
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !45
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !47
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.bk, align 8, !tbaa !47
  %i.bs = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !41 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bs, %3
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !59

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.bu, %5
  br i1 %.not8.i.i.i, label %.body, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i ], [ %i.bu, %bb.m ] ; 2 uses
  %i.bv = load ptr, ptr %.09.i.i.i, align 8, !tbaa !41 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #16
  %.not.i.i.i = icmp eq ptr %i.bv, %5
  br i1 %.not.i.i.i, label %.body, label %.lr.ph.i.i.i, !llvm.loop !61

_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit.loopexit: ; preds = %.noexc.i
  %.pre = load ptr, ptr %5, align 8, !tbaa !41
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
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !37
  store ptr %i.bz, ptr %i.bz, align 8, !tbaa !41
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 64 ; 3 uses
  store i64 0, ptr %i.cb, align 8, !tbaa !42
  %.not4.i.i.i = icmp eq ptr %i.bw, %5
  br i1 %.not4.i.i.i, label %_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit, %.noexc.i.i
  %.sroa.01.05.i.i.i = phi ptr [ %i.ci, %.noexc.i.i ], [ %i.bw, %_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit ] ; 2 uses
  %i.cc = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #15
          to label %.noexc.i.i unwind label %bb.n ; 2 uses

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i30
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !45
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !45
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.bz) #14
  %i.cg = load i64, ptr %i.cb, align 8, !tbaa !47
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.cb, align 8, !tbaa !47
  %i.ci = load ptr, ptr %.sroa.01.05.i.i.i, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ci, %5
  br i1 %.not.i.i.i31, label %_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit.loopexit, label %.lr.ph.i.i.i30, !llvm.loop !59

bb.n:                                             ; preds = %.lr.ph.i.i.i30
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %i.bz, align 8, !tbaa !41 ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.ck, %i.bz
  br i1 %.not8.i.i.i.i, label %.body32, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %i.ck, %bb.n ] ; 2 uses
  %i.cl = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !41 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #16
  %.not.i.i.i.i = icmp eq ptr %i.cl, %i.bz
  br i1 %.not.i.i.i.i, label %.body32, label %.lr.ph.i.i.i.i, !llvm.loop !61

_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit.loopexit: ; preds = %.noexc.i.i
  %.pre60 = load ptr, ptr %5, align 8, !tbaa !41
  br label %_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit

_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit: ; preds = %_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit.loopexit, %_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit
  %i.cm = phi ptr [ %.pre60, %_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit.loopexit ], [ %i.bw, %_ZNSt7__cxx114listIP5SceneSaIS2_EEC2ERKS4_.exit ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.cm, %5
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit, label %.lr.ph.i.i34

.lr.ph.i.i34:                                     ; preds = %_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit, %.lr.ph.i.i34
  %.09.i.i = phi ptr [ %i.cn, %.lr.ph.i.i34 ], [ %i.cm, %_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit ] ; 2 uses
  %i.cn = load ptr, ptr %.09.i.i, align 8, !tbaa !41 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #16
  %.not.i.i35 = icmp eq ptr %i.cn, %5
  br i1 %.not.i.i35, label %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit, label %.lr.ph.i.i34, !llvm.loop !61

_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i34, %_ZN5GroupC2E6SphereNSt7__cxx114listIP5SceneSaIS4_EEE.exit
  %i.co = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %.not8.i.i36 = icmp eq ptr %i.co, %3
  br i1 %.not8.i.i36, label %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit40, label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit, %.lr.ph.i.i37
  %.09.i.i38 = phi ptr [ %i.cp, %.lr.ph.i.i37 ], [ %i.co, %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit ] ; 2 uses
  %i.cp = load ptr, ptr %.09.i.i38, align 8, !tbaa !41 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i38, i64 noundef 24) #16
  %.not.i.i39 = icmp eq ptr %i.cp, %3
  br i1 %.not.i.i39, label %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit40, label %.lr.ph.i.i37, !llvm.loop !61

_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit40: ; preds = %.lr.ph.i.i37, %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.q

bb.o:                                             ; preds = %bb.j
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.body32:                                          ; preds = %.lr.ph.i.i.i.i, %bb.n
  %i.cr = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %.not8.i.i41 = icmp eq ptr %i.cr, %5
  br i1 %.not8.i.i41, label %.body, label %.lr.ph.i.i42

.lr.ph.i.i42:                                     ; preds = %.body32, %.lr.ph.i.i42
  %.09.i.i43 = phi ptr [ %i.cs, %.lr.ph.i.i42 ], [ %i.cr, %.body32 ] ; 2 uses
  %i.cs = load ptr, ptr %.09.i.i43, align 8, !tbaa !41 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i43, i64 noundef 24) #16
  %.not.i.i44 = icmp eq ptr %i.cs, %5
  br i1 %.not.i.i44, label %.body, label %.lr.ph.i.i42, !llvm.loop !61

.body:                                            ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i42, %.body32, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.m ], [ %i.cj, %.body32 ], [ %i.cj, %.lr.ph.i.i42 ], [ %i.bt, %.lr.ph.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 72) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.o, %.body, %bb.c
  %.pn27.pn = phi { ptr, i32 } [ %i.z, %bb.c ], [ %i.bi, %bb.k ], [ %.pn, %.body ], [ %i.cq, %bb.o ]
  %i.ct = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %.not8.i.i46 = icmp eq ptr %i.ct, %3
  br i1 %.not8.i.i46, label %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit50, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %bb.p, %.lr.ph.i.i47
  %.09.i.i48 = phi ptr [ %i.cu, %.lr.ph.i.i47 ], [ %i.ct, %bb.p ] ; 2 uses
  %i.cu = load ptr, ptr %.09.i.i48, align 8, !tbaa !41 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i48, i64 noundef 24) #16
  %.not.i.i49 = icmp eq ptr %i.cu, %3
  br i1 %.not.i.i49, label %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit50, label %.lr.ph.i.i47, !llvm.loop !61

_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit50: ; preds = %.lr.ph.i.i47, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %.pn27.pn

bb.q:                                             ; preds = %bb.a, %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit40
  %.020 = phi ptr [ %i.bh, %_ZNSt7__cxx1110_List_baseIP5SceneSaIS2_EED2Ev.exit40 ], [ %i.a, %bb.a ]
  ret ptr %.020
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.e = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 10) #14, !inline_history !64
  %i.f = trunc i64 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.036 = phi i32 [ %i.f, %bb.b ], [ 6, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store <2 x double> <double 0.000000e+00, double -1.000000e+00>, ptr %7, align 16, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double 0.000000e+00, ptr %i.g, align 16, !tbaa !8
  %i.h = call noundef ptr @_Z6createiRK3Vecd(i32 noundef %.036, ptr noundef nonnull align 8 dereferenceable(24) %7, double noundef 1.000000e+00) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3) ; 0 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 512) ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i32 noundef 512)
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.2, i64 noundef 5) ; 0 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.preheader51

.preheader51:                                     ; preds = %bb.c, %bb.d
  %.03557 = phi i32 [ 511, %bb.c ], [ %i.v, %bb.d ] ; 3 uses
  %i.t = uitofp nneg i32 %.03557 to double
  br label %.preheader50

.preheader50:                                     ; preds = %.preheader51, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %.03456 = phi i32 [ 0, %.preheader51 ], [ %i.ao, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ] ; 2 uses
  %i.u = uitofp nneg i32 %.03456 to double
  %.pre.pre = load double, ptr @infinity, align 8, !tbaa !11, !noalias !65
  br label %.preheader

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.v = add nsw i32 %.03557, -1
  %.not = icmp eq i32 %.03557, 0
  br i1 %.not, label %bb.l, label %.preheader51, !llvm.loop !68

.preheader:                                       ; preds = %.preheader50, %bb.h
  %.pre = phi double [ %.pre.pre, %.preheader50 ], [ %i.cq, %bb.h ]
end_hunk_0
