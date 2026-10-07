Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/codecvt_null?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNK5boost7archive12codecvt_nullIwE11do_encodingEv = comdat any

$_ZNK5boost7archive12codecvt_nullIwE16do_always_noconvEv = comdat any

$_ZNK5boost7archive12codecvt_nullIwE13do_max_lengthEv = comdat any

@_ZTVN5boost7archive12codecvt_nullIwEE = constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN5boost7archive12codecvt_nullIwEE, ptr @_ZN5boost7archive12codecvt_nullIwED1Ev, ptr @_ZN5boost7archive12codecvt_nullIwED0Ev, ptr @_ZNK5boost7archive12codecvt_nullIwE6do_outER11__mbstate_tPKwS6_RS6_PcS8_RS8_, ptr @_ZNKSt7codecvtIwc11__mbstate_tE10do_unshiftERS0_PcS3_RS3_, ptr @_ZNK5boost7archive12codecvt_nullIwE5do_inER11__mbstate_tPKcS6_RS6_PwS8_RS8_, ptr @_ZNK5boost7archive12codecvt_nullIwE11do_encodingEv, ptr @_ZNK5boost7archive12codecvt_nullIwE16do_always_noconvEv, ptr @_ZNKSt7codecvtIwc11__mbstate_tE9do_lengthERS0_PKcS4_m, ptr @_ZNK5boost7archive12codecvt_nullIwE13do_max_lengthEv] }, align 8
@_ZTIN5boost7archive12codecvt_nullIwEE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost7archive12codecvt_nullIwEE, ptr @_ZTISt7codecvtIwc11__mbstate_tE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5boost7archive12codecvt_nullIwEE = constant [34 x i8] c"N5boost7archive12codecvt_nullIwEE\00", align 1
@_ZTISt7codecvtIwc11__mbstate_tE = external constant ptr

@_ZN5boost7archive12codecvt_nullIwEC1Em = unnamed_addr alias void (ptr, i64), ptr @_ZN5boost7archive12codecvt_nullIwEC2Em
@_ZN5boost7archive12codecvt_nullIwED1Ev = unnamed_addr alias void (ptr), ptr @_ZN5boost7archive12codecvt_nullIwED2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i32 0, 2) i32 @_ZNK5boost7archive12codecvt_nullIwE6do_outER11__mbstate_tPKwS6_RS6_PcS8_RS8_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(address) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %7) unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = ptrtoint ptr %6 to i64                   ; 3 uses
  %.not17 = icmp eq ptr %2, %3
  br i1 %.not17, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoint ptr %5 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp slt i64 %i.e, 4
  br i1 %i.f, label %._crit_edge, label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph.preheader
  %i.g = add i64 %i.c, -4
  %i.h = sub i64 %i.g, %i.d
  %i.i = lshr i64 %i.h, 2
  %i.j = add i64 %i.b, -4
  %i.k = sub i64 %i.j, %i.a
  %i.l = lshr i64 %i.k, 2
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.l) ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph32
  %i.o = sub i64 %i.b, %i.a
  %i.p = and i64 %i.o, 3
  %ident.check.not = icmp ne i64 %i.p, 0
  %i.q = sub i64 %i.a, %i.d
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = or i1 %ident.check.not, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.r = and i64 %i.n, 7                          ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 8, i64 %i.r
  %n.vec = sub nsw i64 %i.n, %i.t                 ; 2 uses
  %i.u = shl i64 %n.vec, 2                        ; 2 uses
  %i.v = getelementptr i8, ptr %5, i64 %i.u
  %i.w = getelementptr i8, ptr %2, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.x  ; 2 uses
  %next.gep38 = getelementptr i8, ptr %2, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep38, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep38, align 4, !tbaa !9
  %wide.load39 = load <4 x i32>, ptr %i.y, align 4, !tbaa !9
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !9
  store <4 x i32> %wide.load39, ptr %i.z, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %scalar.ph.preheader, label %vector.body, !llvm.loop !20

scalar.ph.preheader:                              ; preds = %vector.body, %vector.scevcheck, %.lr.ph32
  %.0161831.ph = phi ptr [ %5, %vector.scevcheck ], [ %5, %.lr.ph32 ], [ %i.v, %vector.body ]
  %.0151930.ph = phi ptr [ %2, %vector.scevcheck ], [ %2, %.lr.ph32 ], [ %i.w, %vector.body ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %scalar.ph
  %i.ab = ptrtoint ptr %i.ag to i64
  %i.ac = sub i64 %i.c, %i.ab
  %i.ad = icmp slt i64 %i.ac, 4
  br i1 %i.ad, label %._crit_edge, label %scalar.ph, !llvm.loop !21

scalar.ph:                                        ; preds = %scalar.ph.preheader, %.lr.ph
  %.0161831 = phi ptr [ %i.ag, %.lr.ph ], [ %.0161831.ph, %scalar.ph.preheader ] ; 2 uses
  %.0151930 = phi ptr [ %i.ae, %.lr.ph ], [ %.0151930.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0151930, i64 4 ; 4 uses
  %i.af = load i32, ptr %.0151930, align 4, !tbaa !9
  store i32 %i.af, ptr %.0161831, align 4, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %.0161831, i64 4 ; 4 uses
  %.not = icmp eq ptr %i.ae, %3
  br i1 %.not, label %.._crit_edge.loopexit_crit_edge, label %.lr.ph, !llvm.loop !22

.._crit_edge.loopexit_crit_edge:                  ; preds = %scalar.ph
  br label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %.._crit_edge.loopexit_crit_edge, %bb.a
  %.016.lcssa = phi ptr [ %5, %bb.a ], [ %5, %.lr.ph.preheader ], [ %i.ag, %.._crit_edge.loopexit_crit_edge ], [ %i.ag, %.lr.ph ]
  %.015.lcssa = phi ptr [ %2, %bb.a ], [ %2, %.lr.ph.preheader ], [ %i.ae, %.._crit_edge.loopexit_crit_edge ], [ %i.ae, %.lr.ph ]
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %.lr.ph.preheader ], [ 0, %.._crit_edge.loopexit_crit_edge ], [ 1, %.lr.ph ]
  store ptr %.015.lcssa, ptr %4, align 8, !tbaa !15
  store ptr %.016.lcssa, ptr %7, align 8, !tbaa !17
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i32 0, 2) i32 @_ZNK5boost7archive12codecvt_nullIwE5do_inER11__mbstate_tPKcS6_RS6_PwS8_RS8_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4, ptr noundef %5, ptr nofree noundef readnone captures(address) %6, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %7) unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %6 to i64                  ; 2 uses
  %i.c = ptrtoint ptr %3 to i64                   ; 4 uses
  %.not20 = icmp eq ptr %5, %6
  %i.d = icmp eq ptr %2, %3
  %or.cond21 = or i1 %.not20, %i.d
  br i1 %or.cond21, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp slt i64 %i.f, 4
  br i1 %i.g, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph.preheader
  %i.h = add i64 %i.b, -4
  %i.i = sub i64 %i.h, %i.a
  %i.j = lshr i64 %i.i, 2
  %i.k = add i64 %i.c, -4
  %i.l = sub i64 %i.k, %i.e
  %i.m = lshr i64 %i.l, 2
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.m) ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.n, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph38
  %i.p = sub i64 %i.b, %i.a
  %i.q = sub i64 %i.c, %i.e
  %i.r = or i64 %i.p, %i.q
  %i.s = and i64 %i.r, 3
  %.not48 = icmp ne i64 %i.s, 0
  %i.t = sub i64 %i.e, %i.a
  %diff.check = icmp ugt i64 %i.t, -32
  %or.cond49 = or i1 %.not48, %diff.check
  br i1 %or.cond49, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.u = and i64 %i.o, 7                          ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  %i.w = select i1 %i.v, i64 8, i64 %i.u
  %n.vec = sub nsw i64 %i.o, %i.w                 ; 2 uses
  %i.x = shl i64 %n.vec, 2                        ; 2 uses
  %i.y = getelementptr i8, ptr %5, i64 %i.x
  %i.z = getelementptr i8, ptr %2, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.aa ; 2 uses
  %next.gep45 = getelementptr i8, ptr %2, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep45, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep45, align 4, !tbaa !9
  %wide.load46 = load <4 x i32>, ptr %i.ab, align 4, !tbaa !9
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !9
  store <4 x i32> %wide.load46, ptr %i.ac, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %scalar.ph.preheader, label %vector.body, !llvm.loop !23

scalar.ph.preheader:                              ; preds = %vector.body, %vector.scevcheck, %.lr.ph38
  %.0182237.ph = phi ptr [ %5, %vector.scevcheck ], [ %5, %.lr.ph38 ], [ %i.y, %vector.body ]
  %.0172336.ph = phi ptr [ %2, %vector.scevcheck ], [ %2, %.lr.ph38 ], [ %i.z, %vector.body ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %scalar.ph
  %i.ae = ptrtoint ptr %i.aj to i64
  %i.af = sub i64 %i.c, %i.ae
  %i.ag = icmp slt i64 %i.af, 4
  br i1 %i.ag, label %._crit_edge, label %scalar.ph, !llvm.loop !24

scalar.ph:                                        ; preds = %scalar.ph.preheader, %.lr.ph
  %.0182237 = phi ptr [ %i.ai, %.lr.ph ], [ %.0182237.ph, %scalar.ph.preheader ] ; 2 uses
  %.0172336 = phi ptr [ %i.aj, %.lr.ph ], [ %.0172336.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ah = load i32, ptr %.0172336, align 4, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %.0182237, i64 4 ; 4 uses
  store i32 %i.ah, ptr %.0182237, align 4, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %.0172336, i64 4 ; 5 uses
  %.not = icmp eq ptr %i.ai, %6
  %i.ak = icmp eq ptr %i.aj, %3
  %or.cond = select i1 %.not, i1 true, i1 %i.ak
  br i1 %or.cond, label %.._crit_edge.loopexit_crit_edge, label %.lr.ph, !llvm.loop !25

.._crit_edge.loopexit_crit_edge:                  ; preds = %scalar.ph
  br label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %.._crit_edge.loopexit_crit_edge, %bb.a
  %.018.lcssa = phi ptr [ %5, %bb.a ], [ %5, %.lr.ph.preheader ], [ %i.ai, %.._crit_edge.loopexit_crit_edge ], [ %i.ai, %.lr.ph ]
  %.017.lcssa = phi ptr [ %2, %bb.a ], [ %2, %.lr.ph.preheader ], [ %i.aj, %.._crit_edge.loopexit_crit_edge ], [ %i.aj, %.lr.ph ]
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %.lr.ph.preheader ], [ 0, %.._crit_edge.loopexit_crit_edge ], [ 1, %.lr.ph ]
  store ptr %.017.lcssa, ptr %4, align 8, !tbaa !17
  store ptr %.018.lcssa, ptr %7, align 8, !tbaa !15
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost7archive12codecvt_nullIwEC2Em(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZNSt7codecvtIwc11__mbstate_tEC2Em(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5boost7archive12codecvt_nullIwEE, i64 16), ptr %0, align 8, !tbaa !19
  ret void
}

declare void @_ZNSt7codecvtIwc11__mbstate_tEC2Em(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt7codecvtIwc11__mbstate_tED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost7archive12codecvt_nullIwED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZNSt7codecvtIwc11__mbstate_tED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost7archive12codecvt_nullIwED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN5boost7archive12codecvt_nullIwED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #7
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNKSt7codecvtIwc11__mbstate_tE10do_unshiftERS0_PcS3_RS3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5boost7archive12codecvt_nullIwE11do_encodingEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5boost7archive12codecvt_nullIwE16do_always_noconvEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef i32 @_ZNKSt7codecvtIwc11__mbstate_tE9do_lengthERS0_PKcS4_m(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5boost7archive12codecvt_nullIwE13do_max_lengthEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  ret i32 %i.d
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"wchar_t", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 wchar_t", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"vtable pointer", !3, i64 0}
!19 = !{!18, !18, i64 0}
!20 = distinct !{!20, !10, !11, !12}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10, !11, !12}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10}
end_hunk_0
