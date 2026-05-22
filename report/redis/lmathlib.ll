begin_hunk_0_@math_atan:bb.a
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.b) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_ceil(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.b = tail call double @llvm.ceil.f64(double %i.a)
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.b) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_cosh(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.b = tail call double @cosh(double noundef %i.a) #8, !tbaa !4
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.b) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_cos(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.b = tail call double @cos(double noundef %i.a) #8, !tbaa !4
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.b) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_deg(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.b = fdiv double %i.a, f0x3F91DF46A2529D39
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.b) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_exp(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.b = tail call double @exp(double noundef %i.a) #8, !tbaa !4
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.b) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_floor(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.b = tail call double @llvm.floor.f64(double %i.a)
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.b) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_fmod(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.b = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 2) #8
  %i.c = tail call double @fmod(double noundef %i.a, double noundef %i.b) #8, !tbaa !4
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.c) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_frexp(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.c = call double @frexp(double noundef %i.b, ptr noundef nonnull %i.a) #8
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.c) #8
  %i.d = load i32, ptr %i.a, align 4, !tbaa !4
  %i.e = sext i32 %i.d to i64
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_ldexp(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.b = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 2) #8
  %i.c = trunc i64 %i.b to i32
  %i.d = tail call double @ldexp(double noundef %i.a, i32 noundef %i.c) #8, !tbaa !4
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.d) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_log10(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.b = tail call double @log10(double noundef %i.a) #8, !tbaa !4
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.b) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_log(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.b = tail call double @log(double noundef %i.a) #8, !tbaa !4
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.b) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_max(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @lua_gettop(ptr noundef %0) #8 ; 2 uses
  %i.b = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8 ; 2 uses
  %.not13 = icmp slt i32 %i.a, 2
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi double [ %.1, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.01114 = phi i32 [ %i.e, %.lr.ph ], [ 2, %bb.a ] ; 3 uses
  %i.c = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef %.01114) #8 ; 2 uses
  %i.d = fcmp ogt double %i.c, %.015
  %.1 = select i1 %i.d, double %i.c, double %.015 ; 2 uses
  %i.e = add nuw i32 %.01114, 1
  %exitcond.not = icmp eq i32 %.01114, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi double [ %i.b, %bb.a ], [ %.1, %.lr.ph ]
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %.0.lcssa) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_min(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @lua_gettop(ptr noundef %0) #8 ; 2 uses
  %i.b = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8 ; 2 uses
  %.not13 = icmp slt i32 %i.a, 2
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi double [ %.1, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.01114 = phi i32 [ %i.e, %.lr.ph ], [ 2, %bb.a ] ; 3 uses
  %i.c = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef %.01114) #8 ; 2 uses
  %i.d = fcmp olt double %i.c, %.015
  %.1 = select i1 %i.d, double %i.c, double %.015 ; 2 uses
  %i.e = add nuw i32 %.01114, 1
  %exitcond.not = icmp eq i32 %.01114, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi double [ %i.b, %bb.a ], [ %.1, %.lr.ph ]
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %.0.lcssa) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_modf(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.b = tail call { double, double } @llvm.modf.f64(double %i.a) ; 2 uses
  %i.c = extractvalue { double, double } %i.b, 0
  %i.d = extractvalue { double, double } %i.b, 1
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.d) #8
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.c) #8
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_pow(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.b = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 2) #8
  %i.c = tail call double @pow(double noundef %i.a, double noundef %i.b) #8, !tbaa !4
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.c) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_rad(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.b = fmul double %i.a, f0x3F91DF46A2529D39
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.b) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @math_random(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @rand() #8
  %i.b = srem i32 %i.a, 2147483647
  %i.c = sitofp i32 %i.b to double
  %i.d = fdiv double %i.c, f0x41DFFFFFFFC00000    ; 3 uses
  %i.e = tail call i32 @lua_gettop(ptr noundef %0) #8
  switch i32 %i.e, label %bb.h [
    i32 0, label %.sink.split
    i32 1, label %bb.b
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 1) #8
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.32) #8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = sitofp i32 %i.g to double
  %i.k = fmul double %i.d, %i.j
  %i.l = tail call double @llvm.floor.f64(double %i.k)
  %i.m = fadd double %i.l, 1.000000e+00
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.n = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 1) #8
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 2) #8
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %.not = icmp sgt i32 %i.o, %i.q
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.32) #8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %reass.sub = sub i32 %i.q, %i.o
  %i.s = add i32 %reass.sub, 1
  %i.t = sitofp i32 %i.s to double
  %i.u = fmul double %i.d, %i.t
  %i.v = tail call double @llvm.floor.f64(double %i.u)
  %i.w = sitofp i32 %i.o to double
  %i.x = fadd double %i.v, %i.w
  br label %.sink.split

bb.h:                                             ; preds = %bb.a
  %i.y = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.33) #8
  br label %bb.i

.sink.split:                                      ; preds = %bb.a, %bb.g, %bb.d
  %.sink = phi double [ %i.x, %bb.g ], [ %i.m, %bb.d ], [ %i.d, %bb.a ]
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %.sink) #8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h
  %.0 = phi i32 [ %i.y, %bb.h ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_randomseed(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 1) #8
  %i.b = trunc i64 %i.a to i32
  tail call void @srand(i32 noundef %i.b) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_sinh(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.b = tail call double @sinh(double noundef %i.a) #8, !tbaa !4
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.b) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_sin(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.b = tail call double @sin(double noundef %i.a) #8, !tbaa !4
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.b) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_sqrt(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.b = tail call double @sqrt(double noundef %i.a) #8, !tbaa !4
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.b) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_tanh(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.b = tail call double @tanh(double noundef %i.a) #8, !tbaa !4
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.b) #8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @math_tan(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call double @luaL_checknumber(ptr noundef %0, i32 noundef 1) #8
  %i.b = tail call double @tan(double noundef %i.a) #8, !tbaa !4
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.b) #8
  ret i32 1
}

declare double @luaL_checknumber(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @cosh(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #5

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #3

declare i64 @luaL_checkinteger(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @log10(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #3

declare i32 @lua_gettop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #7

declare i32 @luaL_argerror(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @luaL_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sinh(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @tanh(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
end_hunk_0
