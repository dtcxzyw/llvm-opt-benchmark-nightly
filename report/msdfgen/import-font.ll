Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/import-font?download=true
inline.NumInlined: 170
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7msdfgenL9ftConicToEPK10FT_Vector_S2_Pv:bb.a
  %i.p = sitofp i64 %.val19 to double
  %i.q = fmul double %i.a, %i.p
  %i.r = tail call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_NS_9EdgeColorE(double %.sroa.05.0.copyload, double %.sroa.26.0.copyload, double %i.o, double %i.q, double %i.d, double %i.f, i32 noundef 7)
  store ptr %i.r, ptr %3, align 8, !tbaa !39
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  store double %i.d, ptr %i.g, align 8, !tbaa !33
  store double %i.f, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !33
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.s

bb.e:                                             ; preds = %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN7msdfgenL9ftCubicToEPK10FT_Vector_S2_S2_Pv(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.msdfgen::EdgeHolder", align 8 ; 7 uses
  %i.a = load double, ptr %3, align 8, !tbaa !27  ; 10 uses
  %.val46 = load i64, ptr %2, align 8, !tbaa !35
  %i.b = getelementptr i8, ptr %2, i64 8
  %.val47 = load i64, ptr %i.b, align 8, !tbaa !36
  %i.c = sitofp i64 %.val46 to double
  %i.d = fmul double %i.a, %i.c                   ; 5 uses
  %i.e = sitofp i64 %.val47 to double
  %i.f = fmul double %i.a, %i.e                   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.019.0.copyload = load double, ptr %i.g, align 8, !tbaa !33 ; 2 uses
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.220.0.copyload = load double, ptr %.sroa.220.0..sroa_idx, align 8, !tbaa !33 ; 2 uses
  %i.h = fcmp une double %i.d, %.sroa.019.0.copyload
  %i.i = fcmp une double %i.f, %.sroa.220.0.copyload
  %i.j = select i1 %i.h, i1 true, i1 %i.i
  %.val40.pre = load i64, ptr %0, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 8
  %.val41.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !36 ; 2 uses
  br i1 %i.j, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.val.pre = load i64, ptr %1, align 8, !tbaa !35
  %.phi.trans.insert62 = getelementptr i8, ptr %1, i64 8
  %.val39.pre = load i64, ptr %.phi.trans.insert62, align 8, !tbaa !36
  %.pre = sitofp i64 %.val40.pre to double
  %.pre64 = fmul double %i.a, %.pre
  %.pre66 = sitofp i64 %.val41.pre to double
  %.pre68 = fmul double %i.a, %.pre66
  %.pre70 = sitofp i64 %.val.pre to double
  %.pre72 = fmul double %i.a, %.pre70
  %.pre74 = sitofp i64 %.val39.pre to double
  %.pre76 = fmul double %i.a, %.pre74
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sitofp i64 %.val40.pre to double
  %i.l = fmul double %i.a, %i.k                   ; 2 uses
  %i.m = sitofp i64 %.val41.pre to double
  %i.n = fmul double %i.a, %i.m                   ; 2 uses
  %i.o = fsub double %i.l, %i.d
  %i.p = fsub double %i.n, %i.f
  %.val42 = load i64, ptr %1, align 8, !tbaa !35
  %i.q = getelementptr i8, ptr %1, i64 8
  %.val43 = load i64, ptr %i.q, align 8, !tbaa !36
  %i.r = sitofp i64 %.val42 to double
  %i.s = fmul double %i.a, %i.r                   ; 2 uses
  %i.t = sitofp i64 %.val43 to double
  %i.u = fmul double %i.a, %i.t                   ; 2 uses
  %i.v = fsub double %i.s, %i.d
  %i.w = fsub double %i.u, %i.f
  %i.x = fneg double %i.v
  %i.y = fmul double %i.p, %i.x
  %i.z = tail call noundef double @llvm.fmuladd.f64(double %i.o, double %i.w, double %i.y)
  %i.aa = fcmp une double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.c, label %bb.f

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi77 = phi double [ %.pre76, %._crit_edge ], [ %i.u, %bb.b ]
  %.pre-phi73 = phi double [ %.pre72, %._crit_edge ], [ %i.s, %bb.b ]
  %.pre-phi69 = phi double [ %.pre68, %._crit_edge ], [ %i.n, %bb.b ]
  %.pre-phi65 = phi double [ %.pre64, %._crit_edge ], [ %i.l, %bb.b ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ad = tail call noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_S1_NS_9EdgeColorE(double %.sroa.019.0.copyload, double %.sroa.220.0.copyload, double %.pre-phi65, double %.pre-phi69, double %.pre-phi73, double %.pre-phi77, double %i.d, double %i.f, i32 noundef 7)
  store ptr %i.ad, ptr %4, align 8, !tbaa !39
  invoke void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  store double %i.d, ptr %i.g, align 8, !tbaa !33
  store double %i.f, ptr %.sroa.220.0..sroa_idx, align 8, !tbaa !33
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.ae

bb.f:                                             ; preds = %bb.d, %bb.b
  ret i32 0
}

declare i32 @FT_Outline_Decompose(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7msdfgen8loadFontEPNS_14FreetypeHandleEPKc(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #17 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !14
  %i.c = tail call i32 @FT_New_Face(ptr noundef %i.b, ptr noundef %1, i64 noundef 0, ptr noundef nonnull %i.a)
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #18
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 1, ptr %i.d, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.a, %bb.d ]
  ret ptr %.1
}

declare i32 @FT_New_Face(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7msdfgen12loadFontDataEPNS_14FreetypeHandleEPKhi(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #17 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !14
  %i.c = sext i32 %2 to i64
  %i.d = tail call i32 @FT_New_Memory_Face(ptr noundef %i.b, ptr noundef %1, i64 noundef %i.c, i64 noundef 0, ptr noundef nonnull %i.a)
  %.not10 = icmp eq i32 %i.d, 0
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #18
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 1, ptr %i.e, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.a, %bb.d ]
  ret ptr %.1
}

declare i32 @FT_New_Memory_Face(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen11destroyFontEPNS_10FontHandleE(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !19, !range !102, !noundef !103
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !18
  %i.e = tail call i32 @FT_Done_Face(ptr noundef %i.d) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

declare i32 @FT_Done_Face(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7msdfgen14getFontMetricsERNS_11FontMetricsEPNS_10FontHandleENS_21FontCoordinateScalingE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %.val = load ptr, ptr %1, align 8               ; 5 uses
  switch i32 %2, label %bb.c [
    i32 2, label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.b = load i16, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i = icmp eq i16 %i.b, 0
  %i.c = uitofp i16 %i.b to double
  %i.d = fdiv double 1.000000e+00, %i.c
  %i.e = select i1 %.not.i, double 1.000000e+00, double %i.d
  br label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit

_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi double [ 1.000000e+00, %bb.c ], [ %i.e, %bb.b ], [ 1.562500e-02, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %3 = load i16, ptr %i.f, align 8, !tbaa !57
  %4 = uitofp i16 %3 to double
  %5 = fmul double %.0.i, %4
  store double %5, ptr %0, align 8, !tbaa !105
  %6 = getelementptr inbounds nuw i8, ptr %.val, i64 138
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load <2 x i16>, ptr %6, align 2, !tbaa !106
  %9 = sitofp <2 x i16> %8 to <2 x double>
  %10 = insertelement <2 x double> poison, double %.0.i, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %12 = fmul <2 x double> %11, %9
  store <2 x double> %12, ptr %7, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 142
  %13 = load i16, ptr %i.g, align 2, !tbaa !107
  %14 = sitofp i16 %13 to double
  %15 = fmul double %.0.i, %14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %15, ptr %i.h, align 8, !tbaa !108
  %16 = getelementptr inbounds nuw i8, ptr %.val, i64 148
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %18 = load <2 x i16>, ptr %16, align 4, !tbaa !106
  %19 = sitofp <2 x i16> %18 to <2 x double>
  %i.i = fmul <2 x double> %11, %19
  store <2 x double> %i.i, ptr %17, align 8, !tbaa !33
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen22getFontWhitespaceWidthERdS0_PNS_10FontHandleENS_21FontCoordinateScalingE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %.val = load ptr, ptr %2, align 8               ; 2 uses
  switch i32 %3, label %bb.c [
    i32 2, label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.b = load i16, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not.i = icmp eq i16 %i.b, 0
  %i.c = uitofp i16 %i.b to double
  %i.d = fdiv double 1.000000e+00, %i.c
  %i.e = select i1 %.not.i, double 1.000000e+00, double %i.d
  br label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit

_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi double [ 1.000000e+00, %bb.c ], [ %i.e, %bb.b ], [ 1.562500e-02, %bb.a ] ; 2 uses
  %i.f = tail call i32 @FT_Load_Char(ptr noundef %.val, i64 noundef 32, i32 noundef 1)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit
  %i.g = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = load i64, ptr %i.j, align 8, !tbaa !68
  %i.l = sitofp i64 %i.k to double
  %i.m = fmul double %.0.i, %i.l
  store double %i.m, ptr %0, align 8, !tbaa !33
  %i.n = tail call i32 @FT_Load_Char(ptr noundef %i.g, i64 noundef 9, i32 noundef 1)
  %.not12 = icmp eq i32 %i.n, 0
  br i1 %.not12, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %2, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !68
  %i.t = sitofp i64 %i.s to double
  %i.u = fmul double %.0.i, %i.t
  store double %i.u, ptr %1, align 8, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit, %bb.e
  %.0 = phi i1 [ true, %bb.e ], [ false, %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit ], [ false, %bb.d ]
  ret i1 %.0
}

declare i32 @FT_Load_Char(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7msdfgen13getGlyphCountERjPNS_10FontHandleE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !109
  %i.d = trunc i64 %i.c to i32
  store i32 %i.d, ptr %0, align 4, !tbaa !69
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen13getGlyphIndexERNS_10GlyphIndexEPNS_10FontHandleEj(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %"class.msdfgen::GlyphIndex", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = zext i32 %2 to i64
  %i.c = tail call i32 @FT_Get_Char_Index(ptr noundef %i.a, i64 noundef %i.b)
  call void @_ZN7msdfgen10GlyphIndexC1Ej(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef %i.c)
  %i.d = load i32, ptr %3, align 4, !tbaa !69     ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.e = icmp ne i32 %i.d, 0
  ret i1 %i.e
}

declare i32 @FT_Get_Char_Index(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen9loadGlyphERNS_5ShapeEPNS_10FontHandleENS_10GlyphIndexENS_21FontCoordinateScalingEPd(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = tail call i32 @FT_Load_Glyph(ptr noundef %i.a, i32 noundef %2, i32 noundef 1)
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  switch i32 %3, label %bb.e [
    i32 2, label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.d = load i16, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i = icmp eq i16 %i.d, 0
  %i.e = uitofp i16 %i.d to double
  %i.f = fdiv double 1.000000e+00, %i.e
  %i.g = select i1 %.not.i, double 1.000000e+00, double %i.f
  br label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit

bb.e:                                             ; preds = %bb.c
  br label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit

_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi double [ 1.000000e+00, %bb.e ], [ %i.g, %bb.d ], [ 1.562500e-02, %bb.c ] ; 2 uses
  %.not15 = icmp eq ptr %4, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 152
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !58 ; 2 uses
  br i1 %.not15, label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge, label %bb.f

bb.f:                                             ; preds = %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.pre, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !68
  %i.j = sitofp i64 %i.i to double
  %i.k = fmul double %.0.i, %i.j
  store double %i.k, ptr %4, align 8, !tbaa !33
  br label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge

_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge: ; preds = %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %i.m = tail call noundef i32 @_ZN7msdfgen19readFreetypeOutlineERNS_5ShapeEP11FT_Outline_d(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull %i.l, double noundef %.0.i)
  %.not16 = icmp eq i32 %i.m, 0
  br label %bb.g

bb.g:                                             ; preds = %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %.not16, %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge ], [ false, %bb.b ]
  ret i1 %.1
}

declare i32 @FT_Load_Glyph(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen9loadGlyphERNS_5ShapeEPNS_10FontHandleEjNS_21FontCoordinateScalingEPd(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %"class.msdfgen::GlyphIndex", align 4 ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = zext i32 %2 to i64
  %i.c = tail call i32 @FT_Get_Char_Index(ptr noundef %i.a, i64 noundef %i.b)
  call void @_ZN7msdfgen10GlyphIndexC1Ej(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef %i.c)
  %i.d = load i32, ptr %5, align 4
  %i.e = load ptr, ptr %1, align 8, !tbaa !18
  %i.f = call i32 @FT_Load_Glyph(ptr noundef %i.e, i32 noundef %i.d, i32 noundef 1)
  %.not14.i = icmp eq i32 %i.f, 0
  br i1 %.not14.i, label %bb.b, label %_ZN7msdfgen9loadGlyphERNS_5ShapeEPNS_10FontHandleENS_10GlyphIndexENS_21FontCoordinateScalingEPd.exit

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %1, align 8             ; 2 uses
  switch i32 %3, label %bb.d [
    i32 2, label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit.i
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 136
  %i.h = load i16, ptr %i.g, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq i16 %i.h, 0
  %i.i = uitofp i16 %i.h to double
  %i.j = fdiv double 1.000000e+00, %i.i
  %i.k = select i1 %.not.i.i, double 1.000000e+00, double %i.j
  br label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit.i

bb.d:                                             ; preds = %bb.b
  br label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit.i

_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i = phi double [ 1.000000e+00, %bb.d ], [ %i.k, %bb.c ], [ 1.562500e-02, %bb.b ] ; 2 uses
  %.not15.i = icmp eq ptr %4, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 152
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !58 ; 2 uses
  br i1 %.not15.i, label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %.pre.i, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !68
  %i.n = sitofp i64 %i.m to double
  %i.o = fmul double %.0.i.i, %i.n
  store double %i.o, ptr %4, align 8, !tbaa !33
  br label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge.i

_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge.i: ; preds = %bb.e, %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.pre.i, i64 200
  %i.q = call noundef i32 @_ZN7msdfgen19readFreetypeOutlineERNS_5ShapeEP11FT_Outline_d(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull %i.p, double noundef %.0.i.i)
  %.not16.i = icmp eq i32 %i.q, 0
  br label %_ZN7msdfgen9loadGlyphERNS_5ShapeEPNS_10FontHandleENS_10GlyphIndexENS_21FontCoordinateScalingEPd.exit

_ZN7msdfgen9loadGlyphERNS_5ShapeEPNS_10FontHandleENS_10GlyphIndexENS_21FontCoordinateScalingEPd.exit: ; preds = %bb.a, %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge.i
  %.1.i = phi i1 [ false, %bb.a ], [ %.not16.i, %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge.i ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen9loadGlyphERNS_5ShapeEPNS_10FontHandleENS_10GlyphIndexEPd(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN7msdfgen9loadGlyphERNS_5ShapeEPNS_10FontHandleENS_10GlyphIndexENS_21FontCoordinateScalingEPd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = tail call i32 @FT_Load_Glyph(ptr noundef %i.a, i32 noundef %2, i32 noundef 1)
  %.not14.i = icmp eq i32 %i.b, 0
  br i1 %.not14.i, label %bb.c, label %_ZN7msdfgen9loadGlyphERNS_5ShapeEPNS_10FontHandleENS_10GlyphIndexENS_21FontCoordinateScalingEPd.exit

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %1, align 8
  %.not15.i = icmp eq ptr %3, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 152
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !58 ; 2 uses
  br i1 %.not15.i, label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %.pre.i, i64 128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !68
  %i.e = sitofp i64 %i.d to double
  %i.f = fmul nnan double %i.e, 1.562500e-02
  store double %i.f, ptr %3, align 8, !tbaa !33
  br label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge.i

_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge.i: ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.pre.i, i64 200
  %i.h = tail call noundef i32 @_ZN7msdfgen19readFreetypeOutlineERNS_5ShapeEP11FT_Outline_d(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull %i.g, double noundef 1.562500e-02)
  %.not16.i = icmp eq i32 %i.h, 0
  br label %_ZN7msdfgen9loadGlyphERNS_5ShapeEPNS_10FontHandleENS_10GlyphIndexENS_21FontCoordinateScalingEPd.exit

_ZN7msdfgen9loadGlyphERNS_5ShapeEPNS_10FontHandleENS_10GlyphIndexENS_21FontCoordinateScalingEPd.exit: ; preds = %bb.a, %bb.b, %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge.i
  %.1.i = phi i1 [ false, %bb.a ], [ %.not16.i, %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge.i ], [ false, %bb.b ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen9loadGlyphERNS_5ShapeEPNS_10FontHandleEjPd(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %"class.msdfgen::GlyphIndex", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = zext i32 %2 to i64
  %i.c = tail call i32 @FT_Get_Char_Index(ptr noundef %i.a, i64 noundef %i.b)
  call void @_ZN7msdfgen10GlyphIndexC1Ej(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef %i.c)
  %i.d = load i32, ptr %4, align 4
  %i.e = load ptr, ptr %1, align 8, !tbaa !18
  %i.f = call i32 @FT_Load_Glyph(ptr noundef %i.e, i32 noundef %i.d, i32 noundef 1)
  %.not14.i.i = icmp eq i32 %i.f, 0
  br i1 %.not14.i.i, label %bb.b, label %_ZN7msdfgen9loadGlyphERNS_5ShapeEPNS_10FontHandleEjNS_21FontCoordinateScalingEPd.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %1, align 8
  %.not15.i.i = icmp eq ptr %3, null
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 152
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !58 ; 2 uses
  br i1 %.not15.i.i, label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 128
  %i.h = load i64, ptr %i.g, align 8, !tbaa !68
  %i.i = sitofp i64 %i.h to double
  %i.j = fmul nnan double %i.i, 1.562500e-02
  store double %i.j, ptr %3, align 8, !tbaa !33
  br label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge.i.i

_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge.i.i: ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 200
  %i.l = call noundef i32 @_ZN7msdfgen19readFreetypeOutlineERNS_5ShapeEP11FT_Outline_d(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull %i.k, double noundef 1.562500e-02)
  %.not16.i.i = icmp eq i32 %i.l, 0
  br label %_ZN7msdfgen9loadGlyphERNS_5ShapeEPNS_10FontHandleEjNS_21FontCoordinateScalingEPd.exit

_ZN7msdfgen9loadGlyphERNS_5ShapeEPNS_10FontHandleEjNS_21FontCoordinateScalingEPd.exit: ; preds = %bb.a, %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge.i.i
  %.1.i.i = phi i1 [ false, %bb.a ], [ %.not16.i.i, %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit._crit_edge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i1 %.1.i.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen10getKerningERdPNS_10FontHandleENS_10GlyphIndexES3_NS_21FontCoordinateScalingE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.FT_Vector_, align 8         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = call i32 @FT_Get_Kerning(ptr noundef %i.a, i32 noundef %2, i32 noundef %3, i32 noundef 2, ptr noundef nonnull %5)
  %.not = icmp eq i32 %i.b, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %bb.d [
    i32 2, label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.d = load i16, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not.i = icmp eq i16 %i.d, 0
  %i.e = uitofp i16 %i.d to double
  %i.f = fdiv nnan double 1.000000e+00, %i.e
  %i.g = select i1 %.not.i, double 1.000000e+00, double %i.f
  br label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit

bb.d:                                             ; preds = %bb.b
  br label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit

_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi double [ 1.000000e+00, %bb.d ], [ %i.g, %bb.c ], [ 1.562500e-02, %bb.b ]
  %i.h = load i64, ptr %5, align 8, !tbaa !35
  %i.i = sitofp i64 %i.h to double
  %i.j = fmul double %.0.i, %i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit
  %storemerge = phi double [ %i.j, %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit ], [ 0.000000e+00, %bb.a ]
  store double %storemerge, ptr %0, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i1 %.not
}

declare i32 @FT_Get_Kerning(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen10getKerningERdPNS_10FontHandleEjjNS_21FontCoordinateScalingE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.FT_Vector_, align 8         ; 4 uses
  %6 = alloca %"class.msdfgen::GlyphIndex", align 4 ; 2 uses
  %7 = alloca %"class.msdfgen::GlyphIndex", align 4 ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = zext i32 %2 to i64
  %i.c = tail call i32 @FT_Get_Char_Index(ptr noundef %i.a, i64 noundef %i.b)
  call void @_ZN7msdfgen10GlyphIndexC1Ej(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef %i.c)
  %i.d = load ptr, ptr %1, align 8, !tbaa !18
  %i.e = zext i32 %3 to i64
  %i.f = call i32 @FT_Get_Char_Index(ptr noundef %i.d, i64 noundef %i.e)
  call void @_ZN7msdfgen10GlyphIndexC1Ej(ptr noundef nonnull align 4 dereferenceable(4) %7, i32 noundef %i.f)
  %i.g = load i32, ptr %6, align 4
  %i.h = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.i = load ptr, ptr %1, align 8, !tbaa !18
  %i.j = call i32 @FT_Get_Kerning(ptr noundef %i.i, i32 noundef %i.g, i32 noundef %i.h, i32 noundef 2, ptr noundef nonnull %5)
  %.not.i = icmp eq i32 %i.j, 0                   ; 2 uses
  br i1 %.not.i, label %bb.b, label %_ZN7msdfgen10getKerningERdPNS_10FontHandleENS_10GlyphIndexES3_NS_21FontCoordinateScalingE.exit

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %bb.d [
    i32 2, label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit.i
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 136
  %i.l = load i16, ptr %i.k, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq i16 %i.l, 0
  %i.m = uitofp i16 %i.l to double
  %i.n = fdiv nnan double 1.000000e+00, %i.m
  %i.o = select i1 %.not.i.i, double 1.000000e+00, double %i.n
  br label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit.i

bb.d:                                             ; preds = %bb.b
  br label %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit.i

_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i = phi double [ 1.000000e+00, %bb.d ], [ %i.o, %bb.c ], [ 1.562500e-02, %bb.b ]
  %i.p = load i64, ptr %5, align 8, !tbaa !35
  %i.q = sitofp i64 %i.p to double
  %i.r = fmul double %.0.i.i, %i.q
  br label %_ZN7msdfgen10getKerningERdPNS_10FontHandleENS_10GlyphIndexES3_NS_21FontCoordinateScalingE.exit

_ZN7msdfgen10getKerningERdPNS_10FontHandleENS_10GlyphIndexES3_NS_21FontCoordinateScalingE.exit: ; preds = %bb.a, %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit.i
  %storemerge.i = phi double [ %i.r, %_ZN7msdfgenL22getFontCoordinateScaleERKP11FT_FaceRec_NS_21FontCoordinateScalingE.exit.i ], [ 0.000000e+00, %bb.a ]
  store double %storemerge.i, ptr %0, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i1 %.not.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen20setFontVariationAxisEPNS_14FreetypeHandleEPNS_10FontHandleENS_17FontVariationAxis3TagEd(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, double noundef %3) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70
  %i.e = and i64 %i.d, 256
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8, !tbaa !72
  %i.f = call i32 @FT_Get_MM_Var(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %.not23 = icmp eq ptr %i.g, null
  br i1 %.not23, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.g, align 8, !tbaa !76   ; 2 uses
  %.not24 = icmp eq i32 %i.h, 0
  br i1 %.not24, label %bb.j, label %.noexc

.noexc:                                           ; preds = %bb.d
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 3                  ; 3 uses
  %i.k = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #17 ; 8 uses
  store i64 0, ptr %i.k, align 8, !tbaa !32
  %i.l = getelementptr i8, ptr %i.k, i64 8        ; 3 uses
  %i.m = add nsw i64 %i.i, -1                     ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 3   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc
  %.0.i.i.i.i.i = phi ptr [ %i.o, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.l, %.noexc ]
  %i.p = load ptr, ptr %1, align 8, !tbaa !18
  %i.q = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.r = ptrtoint ptr %i.k to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 3
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = invoke i32 @FT_Get_Var_Design_Coordinates(ptr noundef %i.p, i32 noundef %i.u, ptr noundef nonnull %i.k)
          to label %bb.e unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %.not25 = icmp eq i32 %i.v, 0
  br i1 %.not25, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.w = call i32 @llvm.bswap.i32(i32 %2)
  %i.x = zext i32 %i.w to i64
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !76   ; 2 uses
  %.not42 = icmp eq i32 %i.z, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !77
  %wide.trip.count = zext i32 %i.z to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !110

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %.loopexit, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  resume { ptr, i32 } %i.ac

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !79
  %i.ag = icmp eq i64 %i.af, %i.x
  br i1 %i.ag, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.ah = fmul double %3, 6.553600e+04
  %i.ai = fptosi double %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.i, %bb.e
  %.1 = phi i1 [ false, %bb.e ], [ true, %bb.i ], [ false, %bb.f ], [ false, %bb.g ]
  %i.ak = load ptr, ptr %1, align 8, !tbaa !18
  %i.al = invoke i32 @FT_Set_Var_Design_Coordinates(ptr noundef %i.ak, i32 noundef %i.u, ptr noundef nonnull %i.k)
          to label %_ZNSt6vectorIlSaIlEED2Ev.exit30 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit30:                  ; preds = %.loopexit
  %.not27 = icmp eq i32 %i.al, 0
  %spec.select = and i1 %.1, %.not27
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.j) #18
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !72
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit30, %bb.d, %bb.c
  %i.am = phi ptr [ %.pre, %_ZNSt6vectorIlSaIlEED2Ev.exit30 ], [ %i.g, %bb.d ], [ null, %bb.c ]
  %.3 = phi i1 [ %spec.select, %_ZNSt6vectorIlSaIlEED2Ev.exit30 ], [ false, %bb.d ], [ false, %bb.c ]
  %i.an = load ptr, ptr %0, align 8, !tbaa !14
  %i.ao = call i32 @FT_Done_MM_Var(ptr noundef %i.an, ptr noundef %i.am) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.j
  %.120.ph = phi i1 [ %.3, %bb.j ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.a
  %.120 = phi i1 [ false, %bb.a ], [ %.120.ph, %.sink.split ]
  ret i1 %.120
}

declare i32 @FT_Get_MM_Var(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

declare i32 @FT_Get_Var_Design_Coordinates(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @FT_Set_Var_Design_Coordinates(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare i32 @FT_Done_MM_Var(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen20setFontVariationAxisEPNS_14FreetypeHandleEPNS_10FontHandleEPKcd(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, double noundef %3) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70
  %i.e = and i64 %i.d, 256
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8, !tbaa !72
  %i.f = call i32 @FT_Get_MM_Var(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %.not23 = icmp eq ptr %i.g, null
  br i1 %.not23, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.g, align 8, !tbaa !76   ; 2 uses
  %.not24 = icmp eq i32 %i.h, 0
  br i1 %.not24, label %bb.i, label %.noexc

.noexc:                                           ; preds = %bb.d
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 3                  ; 3 uses
  %i.k = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #17 ; 8 uses
  store i64 0, ptr %i.k, align 8, !tbaa !32
  %i.l = getelementptr i8, ptr %i.k, i64 8        ; 3 uses
  %i.m = add nsw i64 %i.i, -1                     ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.m, 3   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc
  %.0.i.i.i.i.i = phi ptr [ %i.o, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.l, %.noexc ]
  %i.p = load ptr, ptr %1, align 8, !tbaa !18
  %i.q = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.r = ptrtoint ptr %i.k to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 3
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = invoke i32 @FT_Get_Var_Design_Coordinates(ptr noundef %i.p, i32 noundef %i.u, ptr noundef nonnull %i.k)
          to label %bb.e unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %.not25 = icmp eq i32 %i.v, 0
  br i1 %.not25, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.e
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !76   ; 2 uses
  %.not43 = icmp eq i32 %i.x, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !77
  %wide.trip.count = zext i32 %i.x to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !111

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %.loopexit, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.j) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  resume { ptr, i32 } %i.aa

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.z, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !80
  %i.ad = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %i.ac) #20
  %.not26 = icmp eq i32 %i.ad, 0
  br i1 %.not26, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.ae = fmul double %3, 6.553600e+04
  %i.af = fptosi double %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.preheader, %bb.h, %bb.e
  %.1 = phi i1 [ false, %bb.e ], [ true, %bb.h ], [ false, %.preheader ], [ false, %bb.f ]
  %i.ah = load ptr, ptr %1, align 8, !tbaa !18
  %i.ai = invoke i32 @FT_Set_Var_Design_Coordinates(ptr noundef %i.ah, i32 noundef %i.u, ptr noundef nonnull %i.k)
          to label %_ZNSt6vectorIlSaIlEED2Ev.exit31 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit31:                  ; preds = %.loopexit
  %.not28 = icmp eq i32 %i.ai, 0
  %spec.select = and i1 %.1, %.not28
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.j) #18
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !72
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit31, %bb.d, %bb.c
  %i.aj = phi ptr [ %.pre, %_ZNSt6vectorIlSaIlEED2Ev.exit31 ], [ %i.g, %bb.d ], [ null, %bb.c ]
  %.3 = phi i1 [ %spec.select, %_ZNSt6vectorIlSaIlEED2Ev.exit31 ], [ false, %bb.d ], [ false, %bb.c ]
  %i.ak = load ptr, ptr %0, align 8, !tbaa !14
  %i.al = call i32 @FT_Done_MM_Var(ptr noundef %i.ak, ptr noundef %i.aj) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.i
  %.120.ph = phi i1 [ %.3, %bb.i ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.a
  %.120 = phi i1 [ false, %bb.a ], [ %.120.ph, %.sink.split ]
  ret i1 %.120
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7msdfgen21listFontVariationAxesERSt6vectorINS_17FontVariationAxisESaIS1_EEPNS_14FreetypeHandleEPNS_10FontHandleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %"struct.msdfgen::FontVariationAxis::Tag", align 4 ; 4 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70
  %i.e = and i64 %i.d, 256
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8, !tbaa !72
  %i.f = call i32 @FT_Get_MM_Var(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %.not19 = icmp eq i32 %i.f, 0                   ; 2 uses
  br i1 %.not19, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !72   ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !76   ; 4 uses
  %i.i = zext i32 %i.h to i64                     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83   ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !84     ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 40                  ; 3 uses
  %i.q = icmp ult i64 %i.p, %i.i
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = sub nuw nsw i64 %i.i, %i.p
  call void @_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.r)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %.pre24 = load i32, ptr %.pre, align 8, !tbaa !76
  br label %_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp ugt i64 %i.p, %i.i
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN7msdfgen17FontVariationAxisES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7msdfgen17FontVariationAxisES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.f
  store ptr %i.t, ptr %i.j, align 8, !tbaa !83
  br label %_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE6resizeEm.exit: ; preds = %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPN7msdfgen17FontVariationAxisES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = phi i32 [ %.pre24, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %_ZSt8_DestroyIPN7msdfgen17FontVariationAxisES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %i.v = phi ptr [ %.pre, %bb.d ], [ %i.g, %bb.e ], [ %i.g, %bb.f ], [ %i.g, %_ZSt8_DestroyIPN7msdfgen17FontVariationAxisES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %.not21 = icmp eq i32 %i.u, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE6resizeEm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.pre25 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !77
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE6resizeEm.exit
  %.lcssa = phi ptr [ %i.v, %_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE6resizeEm.exit ], [ %i.af, %.lr.ph ]
  %i.w = load ptr, ptr %1, align 8, !tbaa !14
  %i.x = call i32 @FT_Done_MM_Var(ptr noundef %i.w, ptr noundef nonnull %.lcssa) ; 0 uses
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.y = phi ptr [ %.pre25, %.lr.ph.preheader ], [ %i.ah, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !84
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %indvars.iv ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !79
  call void @_ZN7msdfgen17FontVariationAxis3TagC1Em(ptr noundef nonnull align 1 dereferenceable(4) %3, i64 noundef %i.ad)
  %i.ae = load i32, ptr %3, align 4, !tbaa !10
  store i32 %i.ae, ptr %i.aa, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !72  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !77 ; 2 uses
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.ah, i64 %indvars.iv ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !115
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !116
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !117
  %i.aq = sitofp i64 %i.ap to double
  %i.ar = sitofp i64 %i.am to double
  %i.as = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.aq, i64 1
  %i.au = fmul nnan <2 x double> %i.at, splat (double f0x3EF0000000000000)
  store <2 x double> %i.au, ptr %i.an, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !118
  %i.ax = sitofp i64 %i.aw to double
  %i.ay = fmul nnan double %i.ax, f0x3EF0000000000000
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store double %i.ay, ptr %i.az, align 8, !tbaa !119
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = load i32, ptr %i.af, align 8, !tbaa !76
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next, %i.bb
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !112

bb.g:                                             ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.1 = phi i1 [ %.not19, %bb.g ], [ false, %bb.a ]
  ret i1 %.1
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN7msdfgen5Shape10addContourEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #7

declare void @_ZN7msdfgen7Contour7addEdgeEONS_10EdgeHolderE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN7msdfgen10EdgeHolderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

declare noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_NS_9EdgeColorE(double, double, double, double, i32 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_NS_9EdgeColorE(double, double, double, double, double, double, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

declare noundef ptr @_ZN7msdfgen11EdgeSegment6createENS_7Vector2ES1_S1_S1_NS_9EdgeColorE(double, double, double, double, double, double, double, double, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !84     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 40                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 40                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 230584300921369396
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 230584300921369395, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.g, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.01013.i.i.i = phi i64 [ %i.p, %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i ], [ %1, %bb.b ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.014.i.i.i, i8 0, i64 40, i1 false)
  invoke void @_ZN7msdfgen17FontVariationAxis3TagC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %.014.i.i.i)
          to label %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i unwind label %bb.c

_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = add nsw i64 %.01013.i.i.i, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN7msdfgen17FontVariationAxisEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !120

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #19 ; 0 uses
  invoke void @__cxa_rethrow() #22
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.e

common.resume:                                    ; preds = %bb.m, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.an, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #21
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

_ZSt27__uninitialized_default_n_aIPN7msdfgen17FontVariationAxisEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !83
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.x = icmp ult i64 %i.n, %1
  br i1 %i.x, label %bb.h, label %_ZNKSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE12_M_check_lenEmPKc.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #22
  unreachable

_ZNKSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.g
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.y = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.y, i64 230584300921369395) ; 2 uses
  %i.aa = mul nuw nsw i64 %i.z, 40                ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #17 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNKSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE12_M_check_lenEmPKc.exit, %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i33
  %.014.i.i.i31 = phi ptr [ %i.ae, %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i33 ], [ %i.ac, %_ZNKSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.01013.i.i.i32 = phi i64 [ %i.ad, %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i33 ], [ %1, %_ZNKSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE12_M_check_lenEmPKc.exit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.014.i.i.i31, i8 0, i64 40, i1 false)
  invoke void @_ZN7msdfgen17FontVariationAxis3TagC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %.014.i.i.i31)
          to label %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i33 unwind label %bb.i

_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i33: ; preds = %.lr.ph.i.i.i30
  %i.ad = add nsw i64 %.01013.i.i.i32, -1         ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.i.i31, i64 40
  %.not.i.i.i34 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i34, label %_ZSt27__uninitialized_default_n_aIPN7msdfgen17FontVariationAxisEmS1_ET_S3_T0_RSaIT1_E.exit36, label %.lr.ph.i.i.i30, !llvm.loop !120

bb.i:                                             ; preds = %.lr.ph.i.i.i30
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = tail call ptr @__cxa_begin_catch(ptr %i.ag) #19 ; 0 uses
  invoke void @__cxa_rethrow() #22
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #21
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable

.body:                                            ; preds = %bb.j
  %i.al = extractvalue { ptr, i32 } %i.ai, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %i.al) #19 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.aa) #18
  invoke void @__cxa_rethrow() #22
          to label %bb.q unwind label %bb.m

bb.m:                                             ; preds = %.body
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.p

_ZSt27__uninitialized_default_n_aIPN7msdfgen17FontVariationAxisEmS1_ET_S3_T0_RSaIT1_E.exit36: ; preds = %_ZSt10_ConstructIN7msdfgen17FontVariationAxisEJEEvPT_DpOT0_.exit.i.i.i33
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i38

.lr.ph.i.i.i38:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN7msdfgen17FontVariationAxisEmS1_ET_S3_T0_RSaIT1_E.exit36, %.lr.ph.i.i.i38
  %.012.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i38 ], [ %i.ab, %_ZSt27__uninitialized_default_n_aIPN7msdfgen17FontVariationAxisEmS1_ET_S3_T0_RSaIT1_E.exit36 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i38 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN7msdfgen17FontVariationAxisEmS1_ET_S3_T0_RSaIT1_E.exit36 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 40, i1 false), !tbaa.struct !127, !alias.scope !128
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i39 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i38, !llvm.loop !124

_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i38, %_ZSt27__uninitialized_default_n_aIPN7msdfgen17FontVariationAxisEmS1_ET_S3_T0_RSaIT1_E.exit36
  %.not.i41 = icmp eq ptr %i.c, null
  br i1 %.not.i41, label %_ZNSt12_Vector_baseIN7msdfgen17FontVariationAxisESaIS1_EE13_M_deallocateEPS1_m.exit42, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.as) #18
  br label %_ZNSt12_Vector_baseIN7msdfgen17FontVariationAxisESaIS1_EE13_M_deallocateEPS1_m.exit42

_ZNSt12_Vector_baseIN7msdfgen17FontVariationAxisESaIS1_EE13_M_deallocateEPS1_m.exit42: ; preds = %_ZNSt6vectorIN7msdfgen17FontVariationAxisESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.n
  store ptr %i.ab, ptr %0, align 8, !tbaa !84
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %1
  store ptr %i.at, ptr %i.a, align 8, !tbaa !83
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.au, ptr %i.h, align 8, !tbaa !125
  br label %bb.o

bb.o:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7msdfgen17FontVariationAxisEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN7msdfgen17FontVariationAxisESaIS1_EE13_M_deallocateEPS1_m.exit42, %bb.a
  ret void

bb.p:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #21
  unreachable

bb.q:                                             ; preds = %.body
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTSN7msdfgen10GlyphIndexE", !5, i64 0}
!9 = !{!8, !5, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 _ZTS14FT_LibraryRec_", !11, i64 0}
!13 = !{!"_ZTSN7msdfgen14FreetypeHandleE", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"p1 _ZTS11FT_FaceRec_", !11, i64 0}
!16 = !{!"bool", !4, i64 0}
!17 = !{!"_ZTSN7msdfgen10FontHandleE", !15, i64 0, !16, i64 8}
!18 = !{!17, !15, i64 0}
!19 = !{!17, !16, i64 8}
!20 = !{!"p1 _ZTSN7msdfgen7ContourE", !11, i64 0}
!21 = !{!"p1 _ZTSN7msdfgen10EdgeHolderE", !11, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"double", !4, i64 0}
!24 = !{!"_ZTSN7msdfgen7Vector2E", !23, i64 0, !23, i64 8}
!25 = !{!"p1 _ZTSN7msdfgen5ShapeE", !11, i64 0}
!26 = !{!"_ZTSN7msdfgen9FtContextE", !23, i64 0, !24, i64 8, !25, i64 24, !20, i64 32}
!27 = !{!26, !23, i64 0}
!28 = !{!26, !25, i64 24}
!29 = !{!"long", !4, i64 0}
!30 = !{!21, !21, i64 0}
!31 = !{!26, !20, i64 32}
!32 = !{!29, !29, i64 0}
!33 = !{!23, !23, i64 0}
!34 = !{!"_ZTS10FT_Vector_", !29, i64 0, !29, i64 8}
!35 = !{!34, !29, i64 0}
!36 = !{!34, !29, i64 8}
!37 = !{!"p1 _ZTSN7msdfgen11EdgeSegmentE", !11, i64 0}
!38 = !{!"_ZTSN7msdfgen10EdgeHolderE", !37, i64 0}
!39 = !{!38, !37, i64 0}
!40 = !{!"p1 omnipotent char", !11, i64 0}
!41 = !{!"p1 _ZTS15FT_Bitmap_Size_", !11, i64 0}
!42 = !{!"any p2 pointer", !11, i64 0}
!43 = !{!"p2 _ZTS14FT_CharMapRec_", !42, i64 0}
!44 = !{!"_ZTS11FT_Generic_", !11, i64 0, !11, i64 8}
!45 = !{!"_ZTS8FT_BBox_", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24}
!46 = !{!"short", !4, i64 0}
!47 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !11, i64 0}
!48 = !{!"p1 _ZTS11FT_SizeRec_", !11, i64 0}
!49 = !{!"p1 _ZTS14FT_CharMapRec_", !11, i64 0}
!50 = !{!"p1 _ZTS13FT_DriverRec_", !11, i64 0}
!51 = !{!"p1 _ZTS13FT_MemoryRec_", !11, i64 0}
!52 = !{!"p1 _ZTS13FT_StreamRec_", !11, i64 0}
!53 = !{!"p1 _ZTS15FT_ListNodeRec_", !11, i64 0}
!54 = !{!"_ZTS11FT_ListRec_", !53, i64 0, !53, i64 8}
!55 = !{!"p1 _ZTS20FT_Face_InternalRec_", !11, i64 0}
!56 = !{!"_ZTS11FT_FaceRec_", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !40, i64 40, !40, i64 48, !5, i64 56, !41, i64 64, !5, i64 72, !43, i64 80, !44, i64 88, !45, i64 104, !46, i64 136, !46, i64 138, !46, i64 140, !46, i64 142, !46, i64 144, !46, i64 146, !46, i64 148, !46, i64 150, !47, i64 152, !48, i64 160, !49, i64 168, !50, i64 176, !51, i64 184, !52, i64 192, !54, i64 200, !44, i64 216, !11, i64 232, !55, i64 240}
!57 = !{!56, !46, i64 136}
!58 = !{!56, !47, i64 152}
!59 = !{!"_ZTS17FT_Glyph_Metrics_", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !29, i64 56}
!60 = !{!"_ZTS16FT_Glyph_Format_", !4, i64 0}
!61 = !{!"_ZTS10FT_Bitmap_", !5, i64 0, !5, i64 4, !5, i64 8, !40, i64 16, !46, i64 24, !4, i64 26, !4, i64 27, !11, i64 32}
!62 = !{!"p1 _ZTS10FT_Vector_", !11, i64 0}
!63 = !{!"p1 short", !11, i64 0}
!64 = !{!"_ZTS11FT_Outline_", !46, i64 0, !46, i64 2, !62, i64 8, !40, i64 16, !63, i64 24, !5, i64 32}
!65 = !{!"p1 _ZTS15FT_SubGlyphRec_", !11, i64 0}
!66 = !{!"p1 _ZTS20FT_Slot_InternalRec_", !11, i64 0}
!67 = !{!"_ZTS16FT_GlyphSlotRec_", !12, i64 0, !15, i64 8, !47, i64 16, !5, i64 24, !44, i64 32, !59, i64 48, !29, i64 112, !29, i64 120, !34, i64 128, !60, i64 144, !61, i64 152, !5, i64 192, !5, i64 196, !64, i64 200, !5, i64 240, !65, i64 248, !11, i64 256, !29, i64 264, !29, i64 272, !29, i64 280, !11, i64 288, !66, i64 296}
!68 = !{!67, !29, i64 128}
!69 = !{!5, !5, i64 0}
!70 = !{!56, !29, i64 16}
!71 = !{!"p1 _ZTS10FT_MM_Var_", !11, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"p1 _ZTS12FT_Var_Axis_", !11, i64 0}
!74 = !{!"p1 _ZTS19FT_Var_Named_Style_", !11, i64 0}
!75 = !{!"_ZTS10FT_MM_Var_", !5, i64 0, !5, i64 4, !5, i64 8, !73, i64 16, !74, i64 24}
!76 = !{!75, !5, i64 0}
!77 = !{!75, !73, i64 16}
!78 = !{!"_ZTS12FT_Var_Axis_", !40, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !5, i64 40}
!79 = !{!78, !29, i64 32}
!80 = !{!78, !40, i64 0}
!81 = !{!"p1 _ZTSN7msdfgen17FontVariationAxisE", !11, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen17FontVariationAxisESaIS1_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!83 = !{!82, !81, i64 8}
!84 = !{!82, !81, i64 0}
!85 = distinct !{!85, !22}
!86 = distinct !{!86, !22}
!87 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen7ContourESaIS1_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!88 = !{!87, !20, i64 0}
!89 = !{!87, !20, i64 8}
!90 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen10EdgeHolderESaIS1_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!91 = !{!90, !21, i64 0}
!92 = !{!90, !21, i64 8}
!93 = !{!90, !21, i64 16}
!94 = !{!"_ZTS17FT_Outline_Funcs_", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !5, i64 32, !29, i64 40}
!95 = !{!94, !11, i64 0}
!96 = !{!94, !11, i64 8}
!97 = !{!94, !11, i64 16}
!98 = !{!94, !11, i64 24}
!99 = !{!94, !5, i64 32}
!100 = !{!94, !29, i64 40}
!101 = !{!20, !20, i64 0}
!102 = !{i8 0, i8 2}
!103 = !{}
!104 = !{!"_ZTSN7msdfgen11FontMetricsE", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40}
!105 = !{!104, !23, i64 0}
!106 = !{!46, !46, i64 0}
!107 = !{!56, !46, i64 142}
!108 = !{!104, !23, i64 24}
!109 = !{!56, !29, i64 32}
!110 = distinct !{!110, !22}
!111 = distinct !{!111, !22}
!112 = distinct !{!112, !22}
!113 = !{!"_ZTSN7msdfgen17FontVariationAxis3TagE", !4, i64 0}
!114 = !{!"_ZTSN7msdfgen17FontVariationAxisE", !113, i64 0, !40, i64 8, !23, i64 16, !23, i64 24, !23, i64 32}
!115 = !{!114, !40, i64 8}
!116 = !{!78, !29, i64 8}
!117 = !{!78, !29, i64 24}
!118 = !{!78, !29, i64 16}
!119 = !{!114, !23, i64 32}
!120 = distinct !{!120, !22}
!121 = distinct !{!121, !"_ZSt19__relocate_object_aIN7msdfgen17FontVariationAxisES1_SaIS1_EEvPT_PT0_RT1_"}
!122 = distinct !{!122, !121, !"_ZSt19__relocate_object_aIN7msdfgen17FontVariationAxisES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!123 = distinct !{!123, !121, !"_ZSt19__relocate_object_aIN7msdfgen17FontVariationAxisES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!124 = distinct !{!124, !22}
!125 = !{!82, !81, i64 16}
!126 = !{!40, !40, i64 0}
!127 = !{i64 0, i64 4, !10, i64 8, i64 8, !126, i64 16, i64 8, !33, i64 24, i64 8, !33, i64 32, i64 8, !33}
!128 = !{!123, !122}
end_hunk_0
