inline.NumInlined: 11
begin_hunk_0_@check_unit:bb.a
  %i.b = fcmp ogt double %0, 1.000000e+00
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fptrunc double %0 to float
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sink = phi float [ 0.000000e+00, %bb.a ], [ %i.c, %bb.c ], [ 1.000000e+00, %bb.b ]
  store float %.sink, ptr %1, align 4, !tbaa !31
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local float @gs_currentgray(ptr noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.d = load i8, ptr %i.c, align 1, !tbaa !28
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.f = load i16, ptr %i.e, align 2, !tbaa !32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call zeroext i16 @gx_color_luminance(ptr noundef nonnull %i.b) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi i16 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  %i.h = uitofp i16 %.in to float
  %i.i = fdiv float %i.h, 6.553500e+04
  ret float %i.i
}

declare zeroext i16 @gx_color_luminance(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -21, 1) i32 @gs_setgscolor(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.b = load i8, ptr %i.a, align 4, !tbaa !25
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.d, ptr noundef nonnull align 2 dereferenceable(10) %1, i64 10, i1 false), !tbaa.struct !33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -21, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @gs_currentgscolor(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 10)) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %1, ptr noundef nonnull align 2 dereferenceable(10) %i.b, i64 10, i1 false), !tbaa.struct !33
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -21, 1) i32 @gs_sethsbcolor(ptr noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.b = load i8, ptr %i.a, align 4, !tbaa !25
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp olt double %1, 0.000000e+00
  br i1 %i.c, label %check_unit.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = fcmp ogt double %1, 1.000000e+00
  br i1 %i.d, label %check_unit.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = fptrunc double %1 to float
  %i.f = fmul float %i.e, 6.553500e+04
  %i.g = fptoui float %i.f to i16
  br label %check_unit.exit.i

check_unit.exit.i:                                ; preds = %bb.d, %bb.c, %bb.b
  %.sink.i.i = phi i16 [ 0, %bb.b ], [ %i.g, %bb.d ], [ -1, %bb.c ]
  %i.h = fcmp olt double %2, 0.000000e+00
  br i1 %i.h, label %check_unit.exit12.i, label %bb.e

bb.e:                                             ; preds = %check_unit.exit.i
  %i.i = fcmp ogt double %2, 1.000000e+00
  br i1 %i.i, label %check_unit.exit12.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = fptrunc double %2 to float
  %i.k = fmul float %i.j, 6.553500e+04
  %i.l = fptoui float %i.k to i16
  br label %check_unit.exit12.i

check_unit.exit12.i:                              ; preds = %bb.f, %bb.e, %check_unit.exit.i
  %.sink.i11.i = phi i16 [ 0, %check_unit.exit.i ], [ %i.l, %bb.f ], [ -1, %bb.e ]
  %i.m = fcmp olt double %3, 0.000000e+00
  br i1 %i.m, label %tri_param.exit, label %bb.g

bb.g:                                             ; preds = %check_unit.exit12.i
  %i.n = fcmp ogt double %3, 1.000000e+00
  br i1 %i.n, label %tri_param.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = fptrunc double %3 to float
  %i.p = fmul float %i.o, 6.553500e+04
  %i.q = fptoui float %i.p to i16
  br label %tri_param.exit

tri_param.exit:                                   ; preds = %check_unit.exit12.i, %bb.g, %bb.h
  %.sink.i13.i = phi i16 [ 0, %check_unit.exit12.i ], [ %i.q, %bb.h ], [ -1, %bb.g ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8
  tail call void @gx_color_from_hsb(ptr noundef %i.s, i16 noundef zeroext %.sink.i.i, i16 noundef zeroext %.sink.i11.i, i16 noundef zeroext %.sink.i13.i) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %tri_param.exit
  %.0 = phi i32 [ 0, %tri_param.exit ], [ -21, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @tri_param(double noundef %0, double noundef %1, double noundef %2, ptr noundef writeonly captures(none) initializes((0, 6)) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = fcmp olt double %0, 0.000000e+00
  br i1 %i.a, label %check_unit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ogt double %0, 1.000000e+00
  br i1 %i.b, label %check_unit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fptrunc double %0 to float
  %i.d = fmul float %i.c, 6.553500e+04
  %i.e = fptoui float %i.d to i16
  br label %check_unit.exit

check_unit.exit:                                  ; preds = %bb.a, %bb.b, %bb.c
  %.sink.i = phi i16 [ 0, %bb.a ], [ %i.e, %bb.c ], [ -1, %bb.b ]
  %i.f = fcmp olt double %1, 0.000000e+00
  br i1 %i.f, label %check_unit.exit12, label %bb.d

bb.d:                                             ; preds = %check_unit.exit
  %i.g = fcmp ogt double %1, 1.000000e+00
  br i1 %i.g, label %check_unit.exit12, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = fptrunc double %1 to float
  %i.i = fmul float %i.h, 6.553500e+04
  %i.j = fptoui float %i.i to i16
  br label %check_unit.exit12

check_unit.exit12:                                ; preds = %check_unit.exit, %bb.d, %bb.e
  %.sink.i11 = phi i16 [ 0, %check_unit.exit ], [ %i.j, %bb.e ], [ -1, %bb.d ]
  %i.k = fcmp olt double %2, 0.000000e+00
  br i1 %i.k, label %check_unit.exit14, label %bb.f

bb.f:                                             ; preds = %check_unit.exit12
  %i.l = fcmp ogt double %2, 1.000000e+00
  br i1 %i.l, label %check_unit.exit14, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = fptrunc double %2 to float
  %i.n = fmul float %i.m, 6.553500e+04
  %i.o = fptoui float %i.n to i16
  br label %check_unit.exit14

check_unit.exit14:                                ; preds = %check_unit.exit12, %bb.f, %bb.g
  %.sink.i13 = phi i16 [ 0, %check_unit.exit12 ], [ %i.o, %bb.g ], [ -1, %bb.f ]
  store i16 %.sink.i, ptr %3, align 2, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %.sink.i11, ptr %i.p, align 2, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 %.sink.i13, ptr %i.q, align 2, !tbaa !26
  ret i32 0
}

declare void @gx_color_from_hsb(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_currenthsbcolor(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 12)) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [3 x i16], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  call void @gx_color_to_hsb(ptr noundef %i.c, ptr noundef nonnull %i.a) #11
  %2 = load <3 x i16>, ptr %i.a, align 8, !tbaa !26
  %3 = uitofp <3 x i16> %2 to <3 x float>
  %4 = fdiv <3 x float> %3, splat (float 6.553500e+04)
  store <3 x float> %4, ptr %1, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 0
}

declare void @gx_color_to_hsb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @tri_return(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef writeonly captures(none) initializes((0, 12)) %3) local_unnamed_addr #2 {
bb.a:
  %4 = insertelement <3 x i16> poison, i16 %0, i64 0
  %5 = insertelement <3 x i16> %4, i16 %1, i64 1
  %6 = insertelement <3 x i16> %5, i16 %2, i64 2
  %7 = uitofp <3 x i16> %6 to <3 x float>
  %8 = fdiv <3 x float> %7, splat (float 6.553500e+04)
  store <3 x float> %8, ptr %3, align 4, !tbaa !31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -21, 1) i32 @gs_setrgbcolor(ptr noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.b = load i8, ptr %i.a, align 4, !tbaa !25
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp olt double %1, 0.000000e+00
  br i1 %i.c, label %check_unit.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = fcmp ogt double %1, 1.000000e+00
  br i1 %i.d, label %check_unit.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = fptrunc double %1 to float
  %i.f = fmul float %i.e, 6.553500e+04
  %i.g = fptoui float %i.f to i16
  br label %check_unit.exit.i

check_unit.exit.i:                                ; preds = %bb.d, %bb.c, %bb.b
  %.sink.i.i = phi i16 [ 0, %bb.b ], [ %i.g, %bb.d ], [ -1, %bb.c ]
  %i.h = fcmp olt double %2, 0.000000e+00
  br i1 %i.h, label %check_unit.exit12.i, label %bb.e

bb.e:                                             ; preds = %check_unit.exit.i
  %i.i = fcmp ogt double %2, 1.000000e+00
  br i1 %i.i, label %check_unit.exit12.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = fptrunc double %2 to float
  %i.k = fmul float %i.j, 6.553500e+04
  %i.l = fptoui float %i.k to i16
  br label %check_unit.exit12.i

check_unit.exit12.i:                              ; preds = %bb.f, %bb.e, %check_unit.exit.i
  %.sink.i11.i = phi i16 [ 0, %check_unit.exit.i ], [ %i.l, %bb.f ], [ -1, %bb.e ]
  %i.m = fcmp olt double %3, 0.000000e+00
  br i1 %i.m, label %tri_param.exit, label %bb.g

bb.g:                                             ; preds = %check_unit.exit12.i
  %i.n = fcmp ogt double %3, 1.000000e+00
  br i1 %i.n, label %tri_param.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = fptrunc double %3 to float
  %i.p = fmul float %i.o, 6.553500e+04
  %i.q = fptoui float %i.p to i16
  br label %tri_param.exit

tri_param.exit:                                   ; preds = %check_unit.exit12.i, %bb.g, %bb.h
  %.sink.i13.i = phi i16 [ 0, %check_unit.exit12.i ], [ %i.q, %bb.h ], [ -1, %bb.g ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8    ; 4 uses
  store i16 %.sink.i.i, ptr %i.s, align 2, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 %.sink.i11.i, ptr %i.t, align 2, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i16 %.sink.i13.i, ptr %i.u, align 2, !tbaa !37
  tail call void @gx_color_from_rgb(ptr noundef nonnull %i.s) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %tri_param.exit
  %.0 = phi i32 [ 0, %tri_param.exit ], [ -21, %bb.a ]
  ret i32 %.0
}

declare void @gx_color_from_rgb(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @gs_currentrgbcolor(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 12)) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %2 = load <3 x i16>, ptr %i.b, align 2, !tbaa !26
  %3 = uitofp <3 x i16> %2 to <3 x float>
  %4 = fdiv <3 x float> %3, splat (float 6.553500e+04)
  store <3 x float> %4, ptr %1, align 4, !tbaa !31
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_colorrgb(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 12)) %1) local_unnamed_addr #7 {
bb.a:
  %2 = load <3 x i16>, ptr %0, align 2, !tbaa !26
  %3 = uitofp <3 x i16> %2 to <3 x float>
  %4 = fdiv <3 x float> %3, splat (float 6.553500e+04)
  store <3 x float> %4, ptr %1, align 4, !tbaa !31
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @gs_setscreen(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.gs_screen_enum_s, align 8   ; 9 uses
  %5 = alloca %struct.gs_point_s, align 4         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.a = call i32 @gs_screen_init(ptr noundef nonnull %4, ptr noundef %0, double noundef %1, double noundef %2) ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %gs_screen_next.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = call i32 @gs_screen_currentpoint(ptr noundef nonnull %4, ptr noundef nonnull %5) ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 124 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %gs_screen_next.exit
  %i.j = load float, ptr %5, align 4, !tbaa !38
  %i.k = fpext float %i.j to double
  %i.l = load float, ptr %i.e, align 4, !tbaa !40
  %i.m = fpext float %i.l to double
  %i.n = call float %3(double noundef %i.k, double noundef %i.m) #11
  %i.o = fpext float %i.n to double               ; 2 uses
  %i.p = call double @llvm.fabs.f64(double %i.o)
  %or.cond.i = fcmp ogt double %i.p, 1.000000e+00
  br i1 %or.cond.i, label %gs_screen_next.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.r = fmul double %i.o, 3.276700e+04
  %i.s = fptoui double %i.r to i16
  %i.t = add i16 %i.s, 32767
  %i.u = load i32, ptr %i.g, align 4, !tbaa !44   ; 2 uses
  %i.v = load i32, ptr %i.h, align 8, !tbaa !45   ; 2 uses
  %i.w = mul nsw i32 %i.v, %i.u
  %i.x = load i32, ptr %i.i, align 8, !tbaa !46   ; 2 uses
  %i.y = add nsw i32 %i.w, %i.x
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store i16 %i.t, ptr %i.ab, align 2, !tbaa !47
  %i.ac = add nsw i32 %i.x, 1                     ; 2 uses
  store i32 %i.ac, ptr %i.i, align 8, !tbaa !46
  %.not.i = icmp slt i32 %i.ac, %i.v
  br i1 %.not.i, label %gs_screen_next.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.i, align 8, !tbaa !46
  %i.ad = add nsw i32 %i.u, 1
  store i32 %i.ad, ptr %i.g, align 4, !tbaa !44
  br label %gs_screen_next.exit

gs_screen_next.exit:                              ; preds = %bb.c, %bb.d
  %i.ae = call i32 @gs_screen_currentpoint(ptr noundef nonnull %4, ptr noundef nonnull %5) ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.b, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %gs_screen_next.exit, %.preheader
  %.lcssa = phi i32 [ %i.c, %.preheader ], [ %i.ae, %gs_screen_next.exit ] ; 2 uses
  %i.ag = icmp slt i32 %.lcssa, 0
  br i1 %i.ag, label %gs_screen_next.exit.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %3, ptr %i.ah, align 8, !tbaa !51
  br label %gs_screen_next.exit.thread

gs_screen_next.exit.thread:                       ; preds = %bb.b, %._crit_edge, %bb.a, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ %i.a, %bb.a ], [ %.lcssa, %._crit_edge ], [ -15, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @gs_screen_init(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %struct.gs_point_s, align 8         ; 5 uses
  %5 = alloca %struct.gs_matrix_s, align 8        ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %struct.gs_matrix_s, align 8        ; 8 uses
  %i.c = fcmp olt double %2, 0.000000e+00
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fdiv double 7.200000e+01, %2
  %i.e = fptrunc double %i.d to float
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %5, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.f = tail call ptr @gs_currentdevice(ptr noundef %1) #11
  call void @gs_deviceparams(ptr noundef %i.f, ptr noundef nonnull %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  %i.g = fpext float %i.e to double               ; 2 uses
  %i.h = call i32 @gs_distance_transform(double noundef %i.g, double noundef %i.g, ptr noundef nonnull %5, ptr noundef nonnull %4) #11 ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = load <2 x float>, ptr %4, align 8, !tbaa !31 ; 2 uses
  %i.k = fcmp olt <2 x float> %i.j, zeroinitializer
  %i.l = fptosi <2 x float> %i.j to <2 x i32>     ; 2 uses
  %i.m = sub nsw <2 x i32> zeroinitializer, %i.l
  %i.n = select <2 x i1> %i.k, <2 x i32> %i.m, <2 x i32> %i.l
  %i.o = call <2 x i32> @llvm.umax.v2i32(<2 x i32> %i.n, <2 x i32> splat (i32 1)) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.p = extractelement <2 x i32> %i.o, i64 1     ; 3 uses
  %i.q = sdiv i32 65535, %i.p
  %i.r = extractelement <2 x i32> %i.o, i64 0     ; 3 uses
  %i.s = icmp sgt i32 %i.r, %i.q
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = mul nsw i32 %i.p, %i.r
  %i.u = call ptr @gs_malloc(i32 noundef %i.t, i32 noundef 4, ptr noundef nonnull @.str) #11 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = insertelement <2 x double> poison, double %2, i64 0
  %i.x = insertelement <2 x double> %i.w, double %3, i64 1
  %i.y = fptrunc <2 x double> %i.x to <2 x float>
  store <2 x float> %i.y, ptr %0, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.z, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i32> %i.o, ptr %i.aa, align 8, !tbaa !4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.ab, align 4, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.ac, align 8, !tbaa !46
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.ad, align 8, !tbaa !52
  %i.ae = sitofp i32 %i.r to double
  %i.af = fdiv double 2.000000e+00, %i.ae
  %i.ag = fptrunc double %i.af to float           ; 2 uses
  %i.ah = sitofp i32 %i.p to double
  %i.ai = fdiv double 2.000000e+00, %i.ah
  %i.aj = fptrunc double %i.ai to float           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @gs_make_identity(ptr noundef nonnull %6) #11
  store float %i.ag, ptr %6, align 8, !tbaa !53
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 48
  store float %i.aj, ptr %i.ak, align 8, !tbaa !54
  %i.al = fpext float %i.ag to double
  %i.am = call double @llvm.fmuladd.f64(double %i.al, double 5.000000e-01, double -1.000000e+00)
  %i.an = fptrunc double %i.am to float
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 64
  store float %i.an, ptr %i.ao, align 8, !tbaa !55
  %i.ap = fpext float %i.aj to double
  %i.aq = call double @llvm.fmuladd.f64(double %i.ap, double 5.000000e-01, double -1.000000e+00)
  %i.ar = fptrunc double %i.aq to float
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 80
  store float %i.ar, ptr %i.as, align 8, !tbaa !56
  %i.at = fneg double %3
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = call i32 @gs_matrix_rotate(ptr noundef nonnull %6, double noundef %i.at, ptr noundef nonnull %i.au) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %spec.select = call i32 @llvm.smin.i32(i32 %i.av, i32 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.d, %bb.a
  %.2 = phi i32 [ %i.h, %bb.c ], [ -15, %bb.a ], [ -15, %bb.d ], [ -25, %bb.e ], [ %spec.select, %bb.f ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 2) i32 @gs_screen_currentpoint(ptr noundef %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.gs_point_s, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !57   ; 2 uses
  %.not = icmp slt i32 %i.b, %i.d
  br i1 %.not, label %bb.d, label %bb.b
end_hunk_0
