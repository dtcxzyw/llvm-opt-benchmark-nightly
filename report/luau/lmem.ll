inline.NumInlined: 15
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z14luaM_visitpageP8lua_PagePvPFbS1_S0_P8GCObjectE:bb.a
  %i.w = add nsw i32 %.01218, -1                  ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph, %bb.b
  %.2.ph = phi i32 [ %.01218, %.lr.ph ], [ %.01218, %bb.b ], [ %i.w, %bb.c ]
  %.0 = getelementptr inbounds i8, ptr %.019, i64 %i.g ; 2 uses
  %.not = icmp eq ptr %.0, %i.p
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z13luaM_visitgcoP9lua_StatePvPFbS1_P8lua_PageP8GCObjectE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 744
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %.not8 = icmp eq ptr %i.d, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_Z14luaM_visitpageP8lua_PagePvPFbS1_S0_P8GCObjectE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_Z14luaM_visitpageP8lua_PagePvPFbS1_S0_P8GCObjectE.exit
  %.09 = phi ptr [ %i.f, %_Z14luaM_visitpageP8lua_PagePvPFbS1_S0_P8GCObjectE.exit ], [ %i.d, %bb.a ] ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.09, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.09, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !52
  %i.i = sext i32 %i.h to i64
  %i.j = add nsw i64 %i.i, -64
  %i.k = getelementptr inbounds nuw i8, ptr %.09, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !26   ; 2 uses
  %i.m = sext i32 %i.l to i64                     ; 3 uses
  %i.n = udiv i64 %i.j, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %.09, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !24
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i32 %i.l, %i.o
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.p, i64 %i.u
  %i.w = add nsw i64 %i.s, %i.m                   ; 2 uses
  %.not17.i = icmp eq i64 %i.w, %i.u
  br i1 %.not17.i, label %_Z14luaM_visitpageP8lua_PagePvPFbS1_S0_P8GCObjectE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph
  %.016.i = getelementptr inbounds i8, ptr %i.p, i64 %i.w
  %i.x = getelementptr inbounds nuw i8, ptr %.09, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !27
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.019.i = phi ptr [ %.0.i, %bb.d ], [ %.016.i, %.lr.ph.preheader.i ] ; 3 uses
  %.01218.i = phi i32 [ %.2.ph.i, %bb.d ], [ %i.y, %.lr.ph.preheader.i ] ; 3 uses
  %i.z = load i8, ptr %.019.i, align 8, !tbaa !21
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.ab = tail call noundef zeroext i1 %2(ptr noundef %1, ptr noundef nonnull %.09, ptr noundef nonnull %.019.i), !inline_history !63
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = add nsw i32 %.01218.i, -1               ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_Z14luaM_visitpageP8lua_PagePvPFbS1_S0_P8GCObjectE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %.2.ph.i = phi i32 [ %.01218.i, %.lr.ph.i ], [ %.01218.i, %bb.b ], [ %i.ac, %bb.c ]
  %.0.i = getelementptr inbounds i8, ptr %.019.i, i64 %i.m ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %i.v
  br i1 %.not.i, label %_Z14luaM_visitpageP8lua_PagePvPFbS1_S0_P8GCObjectE.exit, label %.lr.ph.i, !llvm.loop !60

_Z14luaM_visitpageP8lua_PagePvPFbS1_S0_P8GCObjectE.exit: ; preds = %bb.c, %bb.d, %.lr.ph
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !64
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef nonnull ptr @_ZL12newclasspageP9lua_StatePP8lua_PageS3_hb(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(address_is_null) %2, i8 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #7 {
bb.a:
  %i.a = zext i8 %3 to i64                        ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @_ZL16kSizeClassConfig, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !59   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 512
  %i.e = select i1 %i.d, i32 32744, i32 16360     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = zext nneg i32 %i.e to i64                ; 2 uses
  %i.m = tail call noundef ptr %i.i(ptr noundef %i.k, ptr noundef null, i64 noundef 0, i64 noundef %i.l), !inline_history !51 ; 12 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z10luaD_throwP9lua_Statei(ptr noundef nonnull %0, i32 noundef 4) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = add nsw i64 %i.l, -64
  %i.o = select i1 %4, i32 8, i32 0
  %i.p = add i32 %i.c, %i.o                       ; 3 uses
  %i.q = sext i32 %i.p to i64
  %i.r = udiv i64 %i.n, %i.q
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  store i32 %i.e, ptr %i.t, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  store i32 %i.p, ptr %i.u, align 4, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr null, ptr %i.v, align 8, !tbaa !29
  %i.w = add nsw i32 %i.s, -1
  %i.x = mul nsw i32 %i.w, %i.p
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i32 %i.x, ptr %i.y, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  store i32 0, ptr %i.z, align 4, !tbaa !27
  %.not29.i = icmp eq ptr %2, null
  br i1 %.not29.i, label %_ZL7newpageP9lua_StatePP8lua_Pageiii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ab = load ptr, ptr %2, align 8, !tbaa !22    ; 3 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !53
  %.not30.i = icmp eq ptr %i.ab, null
  br i1 %.not30.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.m, ptr %i.ac, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.m, ptr %2, align 8, !tbaa !22
  br label %_ZL7newpageP9lua_StatePP8lua_Pageiii.exit

_ZL7newpageP9lua_StatePP8lua_Pageiii.exit:        ; preds = %bb.c, %bb.f
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.a
  store ptr %i.m, ptr %i.ad, align 8, !tbaa !22
  ret ptr %i.m
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_lmem.cpp() #8 section ".text.startup" {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZL16kSizeClassConfig, i64 144), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1025) getelementptr inbounds nuw (i8, ptr @_ZL16kSizeClassConfig, i64 160), i8 -1, i64 1025, i1 false)
  store <4 x i32> <i32 8, i32 16, i32 24, i32 32>, ptr @_ZL16kSizeClassConfig, align 16, !tbaa !59
  store <4 x i32> <i32 40, i32 48, i32 56, i32 64>, ptr getelementptr inbounds nuw (i8, ptr @_ZL16kSizeClassConfig, i64 16), align 16, !tbaa !59
  store <4 x i32> <i32 80, i32 96, i32 112, i32 128>, ptr getelementptr inbounds nuw (i8, ptr @_ZL16kSizeClassConfig, i64 32), align 16, !tbaa !59
  store <4 x i32> <i32 144, i32 160, i32 176, i32 192>, ptr getelementptr inbounds nuw (i8, ptr @_ZL16kSizeClassConfig, i64 48), align 16, !tbaa !59
  store <4 x i32> <i32 208, i32 224, i32 240, i32 256>, ptr getelementptr inbounds nuw (i8, ptr @_ZL16kSizeClassConfig, i64 64), align 16, !tbaa !59
  store <4 x i32> <i32 288, i32 320, i32 352, i32 384>, ptr getelementptr inbounds nuw (i8, ptr @_ZL16kSizeClassConfig, i64 80), align 16, !tbaa !59
  store <4 x i32> <i32 416, i32 448, i32 480, i32 512>, ptr getelementptr inbounds nuw (i8, ptr @_ZL16kSizeClassConfig, i64 96), align 16, !tbaa !59
  store <4 x i32> <i32 576, i32 640, i32 704, i32 768>, ptr getelementptr inbounds nuw (i8, ptr @_ZL16kSizeClassConfig, i64 112), align 16, !tbaa !59
  store i32 36, ptr getelementptr inbounds nuw (i8, ptr @_ZL16kSizeClassConfig, i64 1188), align 4, !tbaa !65
  store <4 x i32> <i32 832, i32 896, i32 960, i32 1024>, ptr getelementptr inbounds nuw (i8, ptr @_ZL16kSizeClassConfig, i64 128), align 16, !tbaa !59
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.a
  %indvars.iv.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.a = trunc i64 %indvars.iv.i.i to i8
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @_ZL16kSizeClassConfig, i64 %indvars.iv.i.i
  %i.c = load i32, ptr %i.b, align 4, !tbaa !59
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL16kSizeClassConfig, i64 160), i64 %i.d
  store i8 %i.a, ptr %i.e, align 1, !tbaa !21
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL16kSizeClassConfig, i64 1188), align 4, !tbaa !65
  %i.g = sext i32 %i.f to i64
  %i.h = icmp slt i64 %indvars.iv.next.i.i, %i.g
  br i1 %i.h, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !67

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.d
  %indvars.iv37.i.i = phi i64 [ %indvars.iv.next38.i.i.1, %bb.d ], [ 1023, %.lr.ph.i.i ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL16kSizeClassConfig, i64 160), i64 %indvars.iv37.i.i ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !21
  %i.k = icmp slt i8 %i.j, 0
  br i1 %i.k, label %bb.b, label %.preheader.i.i.1

bb.b:                                             ; preds = %.preheader.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !21
  store i8 %i.m, ptr %i.i, align 1, !tbaa !21
  br label %.preheader.i.i.1

.preheader.i.i.1:                                 ; preds = %bb.b, %.preheader.i.i
  %0 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL16kSizeClassConfig, i64 160), i64 %indvars.iv37.i.i ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 -1         ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !21
  %i.p = icmp slt i8 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i.i.1
  %i.q = load i8, ptr %0, align 1, !tbaa !21
  store i8 %i.q, ptr %i.n, align 1, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.i.i.1
  %indvars.iv.next38.i.i.1 = add nsw i64 %indvars.iv37.i.i, -2
  %.not.i.i.1 = icmp eq i64 %indvars.iv37.i.i, 1
  br i1 %.not.i.i.1, label %__cxx_global_var_init.exit, label %.preheader.i.i, !llvm.loop !68

__cxx_global_var_init.exit:                       ; preds = %bb.d
  %i.r = tail call ptr @llvm.invariant.start.p0(i64 1192, ptr nonnull @_ZL16kSizeClassConfig) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !14, i64 24}
!10 = !{!"_ZTS9lua_State", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !11, i64 5, !11, i64 6, !12, i64 8, !12, i64 16, !14, i64 24, !15, i64 32, !12, i64 40, !12, i64 48, !15, i64 56, !15, i64 64, !6, i64 72, !6, i64 76, !16, i64 80, !16, i64 82, !6, i64 84, !17, i64 88, !18, i64 96, !19, i64 104, !20, i64 112, !13, i64 120}
!11 = !{!"bool", !7, i64 0}
!12 = !{!"p1 _ZTS10lua_TValue", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 _ZTS12global_State", !13, i64 0}
!15 = !{!"p1 _ZTS8CallInfo", !13, i64 0}
!16 = !{!"short", !7, i64 0}
!17 = !{!"p1 _ZTS8LuaTable", !13, i64 0}
!18 = !{!"p1 _ZTS5UpVal", !13, i64 0}
!19 = !{!"p1 _ZTS8GCObject", !13, i64 0}
!20 = !{!"p1 _ZTS7TString", !13, i64 0}
!21 = !{!7, !7, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS8lua_Page", !13, i64 0}
!24 = !{!25, !6, i64 48}
!25 = !{!"_ZTS8lua_Page", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !6, i64 32, !6, i64 36, !13, i64 40, !6, i64 48, !6, i64 52, !7, i64 56, !7, i64 64}
!26 = !{!25, !6, i64 36}
!27 = !{!25, !6, i64 52}
!28 = !{!13, !13, i64 0}
!29 = !{!25, !13, i64 40}
!30 = !{!25, !23, i64 8}
!31 = !{!25, !23, i64 0}
!32 = !{!33, !13, i64 16}
!33 = !{!"_ZTS12global_State", !34, i64 0, !13, i64 16, !13, i64 24, !7, i64 32, !7, i64 33, !19, i64 40, !19, i64 48, !19, i64 56, !37, i64 64, !37, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !7, i64 96, !7, i64 416, !23, i64 736, !23, i64 744, !23, i64 752, !38, i64 760, !39, i64 768, !7, i64 808, !7, i64 920, !7, i64 1032, !40, i64 1200, !40, i64 1216, !6, i64 1232, !41, i64 1240, !37, i64 1248, !7, i64 1256, !42, i64 1288, !43, i64 1368, !7, i64 1440, !7, i64 1952, !7, i64 11312, !7, i64 13360, !7, i64 14384, !7, i64 15408, !40, i64 16432, !6, i64 16448, !13, i64 16456, !7, i64 16464, !7, i64 17488, !44, i64 18528, !6, i64 18712}
!34 = !{!"_ZTS11stringtable", !35, i64 0, !6, i64 8, !6, i64 12}
!35 = !{!"p2 _ZTS7TString", !36, i64 0}
!36 = !{!"any p2 pointer", !13, i64 0}
!37 = !{!"long", !7, i64 0}
!38 = !{!"p1 _ZTS9lua_State", !13, i64 0}
!39 = !{!"_ZTS5UpVal", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !12, i64 8, !7, i64 16}
!40 = !{!"_ZTS10lua_TValue", !7, i64 0, !7, i64 8, !6, i64 12}
!41 = !{!"p1 _ZTS10lua_jmpbuf", !13, i64 0}
!42 = !{!"_ZTS13lua_Callbacks", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72}
!43 = !{!"_ZTS22lua_ExecutionCallbacks", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64}
!44 = !{!"_ZTS7GCStats", !7, i64 0, !6, i64 128, !6, i64 132, !37, i64 136, !37, i64 144, !37, i64 152, !45, i64 160, !45, i64 168, !45, i64 176}
!45 = !{!"double", !7, i64 0}
!46 = !{!33, !13, i64 24}
!47 = !{!33, !37, i64 72}
!48 = !{!37, !37, i64 0}
!49 = !{!33, !13, i64 1360}
!50 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!51 = distinct !{null}
!52 = !{!25, !6, i64 32}
!53 = !{!25, !23, i64 24}
!54 = !{!25, !23, i64 16}
!55 = distinct !{null, null, null}
!56 = distinct !{null, null}
!57 = !{!58, !58, i64 0}
!58 = !{!"p1 omnipotent char", !13, i64 0}
!59 = !{!6, !6, i64 0}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!33, !23, i64 744}
!63 = !{ptr @_Z14luaM_visitpageP8lua_PagePvPFbS1_S0_P8GCObjectE}
!64 = distinct !{!64, !61}
!65 = !{!66, !6, i64 1188}
!66 = !{!"_ZTS15SizeClassConfig", !7, i64 0, !7, i64 160, !6, i64 1188}
!67 = distinct !{!67, !61}
!68 = distinct !{!68, !61}
end_hunk_0
