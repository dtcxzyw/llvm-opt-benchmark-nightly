Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btContactProcessing?download=true
inline.NumInlined: 113
inline.NumDeleted: 53
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN14btContactArray14merge_contactsERKS_b:bb.a
  %or.cond.i.i = select i1 %.not.i.i.i105, i1 %i.lp, i1 false
  br i1 %or.cond.i.i, label %bb.ao, label %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENED2Ev.exit

bb.ao:                                            ; preds = %._crit_edge117
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ln)
          to label %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENED2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lq = landingpad { ptr, i32 }
          catch ptr null
  %i.lr = extractvalue { ptr, i32 } %i.lq, 0
  call void @__clang_call_terminate(ptr %i.lr) #10
  unreachable

_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENED2Ev.exit: ; preds = %._crit_edge117, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN20btAlignedObjectArrayI11GIM_CONTACTE5clearEv.exit, %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENED2Ev.exit, %_ZN20btAlignedObjectArrayI11GIM_CONTACTE9push_backERKS0_.exit
  ret void

bb.ar:                                            ; preds = %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.ho, %bb.aa ], [ %i.hn, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.y, %bb.n, %bb.m
  %.pn52 = phi { ptr, i32 } [ %i.et, %bb.n ], [ %.pn, %bb.ar ], [ %i.hm, %bb.y ], [ %i.es, %bb.m ]
  call void @_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  resume { ptr, i32 } %.pn52
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !16
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #10
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN14btContactArray21merge_contacts_uniqueERKS_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) initializes((4, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load i8, ptr %i.c, align 8, !range !16
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN20btAlignedObjectArrayI11GIM_CONTACTE5clearEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
  br label %_ZN20btAlignedObjectArrayI11GIM_CONTACTE5clearEv.exit

_ZN20btAlignedObjectArrayI11GIM_CONTACTE5clearEv.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  store i8 1, ptr %i.c, align 8, !tbaa !17
  store ptr null, ptr %i.a, align 8, !tbaa !15
  store i32 0, ptr %i.f, align 4, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !18
  %cond = icmp eq i32 %i.i, 1
  br i1 %cond, label %_ZN20btAlignedObjectArrayI11GIM_CONTACTE8allocateEi.exit.i.i, label %.loopexit

_ZN20btAlignedObjectArrayI11GIM_CONTACTE8allocateEi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayI11GIM_CONTACTE5clearEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 4 uses
  %i.l = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 48, i32 noundef 16) ; 3 uses
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !18 ; 2 uses
  %i.m = icmp sgt i32 %.pre.i, 0
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI11GIM_CONTACTE8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv.i.i.i ; 4 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %indvars.iv.i.i.i ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.n, ptr noundef nonnull align 4 dereferenceable(48) %i.p, i64 16, i1 false), !tbaa.struct !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.u = load float, ptr %i.t, align 4, !tbaa !25
  store float %i.u, ptr %i.s, align 4, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.x = load <2 x i32>, ptr %i.w, align 4, !tbaa !26
  store <2 x i32> %i.x, ptr %i.v, align 4, !tbaa !26
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i, label %bb.c, !llvm.loop !0

_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i: ; preds = %bb.c, %_ZN20btAlignedObjectArrayI11GIM_CONTACTE8allocateEi.exit.i.i
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI11GIM_CONTACTE9push_backERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i
  %i.z = load i8, ptr %i.c, align 8, !tbaa !17, !range !16, !noundef !28
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %_ZN20btAlignedObjectArrayI11GIM_CONTACTE9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.y)
  br label %_ZN20btAlignedObjectArrayI11GIM_CONTACTE9push_backERKS0_.exit

_ZN20btAlignedObjectArrayI11GIM_CONTACTE9push_backERKS0_.exit: ; preds = %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i, %bb.d, %bb.e
  store i8 1, ptr %i.c, align 8, !tbaa !17
  store ptr %i.l, ptr %i.a, align 8, !tbaa !15
  store i32 1, ptr %i.g, align 8, !tbaa !19
  %.pre2.i = load i32, ptr %i.f, align 4, !tbaa !18
  %i.ab = sext i32 %.pre2.i to i64
  %i.ac = getelementptr inbounds [48 x i8], ptr %i.l, i64 %i.ab ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.ac, ptr noundef nonnull align 4 dereferenceable(48) %i.k, i64 16, i1 false), !tbaa.struct !21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !25
  store float %i.ah, ptr %i.af, align 4, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ak = load <2 x i32>, ptr %i.aj, align 4, !tbaa !26
  store <2 x i32> %i.ak, ptr %i.ai, align 4, !tbaa !26
  %i.al = load i32, ptr %i.f, align 4, !tbaa !18
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.f, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN20btAlignedObjectArrayI11GIM_CONTACTE5clearEv.exit, %_ZN20btAlignedObjectArrayI11GIM_CONTACTE9push_backERKS0_.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #4

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE17quickSortInternalI22CONTACT_KEY_TOKEN_COMPEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.j, %bb.a
  %.tr36 = phi i32 [ %2, %bb.a ], [ %.230, %bb.j ] ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = add nsw i32 %.tr36, %3
  %i.d = sdiv i32 %i.c, 2
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !34   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %tailrecurse
  %.028 = phi i32 [ %.tr36, %tailrecurse ], [ %.230, %bb.g ]
  %.0 = phi i32 [ %3, %tailrecurse ], [ %.2, %bb.g ]
  %4 = load ptr, ptr %i.a, align 8, !tbaa !32     ; 4 uses
  %i.h = sext i32 %.028 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.h, %bb.b ] ; 5 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !34
  %i.k = icmp ult i32 %i.j, %i.g
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.k, label %bb.c, label %.preheader, !llvm.loop !54

.preheader:                                       ; preds = %bb.c
  %i.l = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.m = sext i32 %.0 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %bb.d ], [ %i.m, %.preheader ] ; 6 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv45
  %i.o = load i32, ptr %i.n, align 4, !tbaa !34
  %i.p = icmp ult i32 %i.g, %i.o
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1
  br i1 %i.p, label %bb.d, label %bb.e, !llvm.loop !55

bb.e:                                             ; preds = %bb.d
  %i.q = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.r = trunc nsw i64 %indvars.iv45 to i32       ; 2 uses
  %.not = icmp sgt i64 %indvars.iv, %indvars.iv45
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv45
  %i.t = load i64, ptr %i.l, align 4
  %i.u = load i64, ptr %i.s, align 4
  store i64 %i.u, ptr %i.l, align 4
  %5 = load ptr, ptr %i.a, align 8, !tbaa !32
  %6 = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv45
  store i64 %i.t, ptr %6, align 4
  %i.v = add nsw i32 %i.q, 1
  %i.w = add nsw i32 %i.r, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.230 = phi i32 [ %i.v, %bb.f ], [ %i.q, %bb.e ] ; 4 uses
  %.2 = phi i32 [ %i.w, %bb.f ], [ %i.r, %bb.e ]  ; 4 uses
  %.not33 = icmp sgt i32 %.230, %.2
  br i1 %.not33, label %bb.h, label %bb.b, !llvm.loop !56

bb.h:                                             ; preds = %bb.g
  %i.x = icmp slt i32 %.tr36, %.2
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE17quickSortInternalI22CONTACT_KEY_TOKEN_COMPEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.tr36, i32 noundef %.2)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = icmp slt i32 %.230, %3
  br i1 %i.y, label %tailrecurse, label %bb.k

bb.k:                                             ; preds = %bb.j
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !27}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"_ZTS18btAlignedAllocatorI11GIM_CONTACTLj16EE"}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS11GIM_CONTACT", !11, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{!"_ZTS20btAlignedObjectArrayI11GIM_CONTACTE", !10, i64 0, !7, i64 4, !7, i64 8, !12, i64 16, !13, i64 24}
!15 = !{!14, !12, i64 16}
!16 = !{i8 0, i8 2}
!17 = !{!14, !13, i64 24}
!18 = !{!14, !7, i64 4}
!19 = !{!14, !7, i64 8}
!20 = !{!6, !6, i64 0}
!21 = !{i64 0, i64 16, !20}
!22 = !{!"_ZTS9btVector3", !6, i64 0}
!23 = !{!"float", !6, i64 0}
!24 = !{!"_ZTS11GIM_CONTACT", !22, i64 0, !22, i64 16, !23, i64 32, !23, i64 36, !7, i64 40, !7, i64 44}
!25 = !{!24, !23, i64 32}
!26 = !{!7, !7, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{}
!29 = !{!"_ZTS18btAlignedAllocatorI17CONTACT_KEY_TOKENLj16EE"}
!30 = !{!"p1 _ZTS17CONTACT_KEY_TOKEN", !11, i64 0}
!31 = !{!"_ZTS20btAlignedObjectArrayI17CONTACT_KEY_TOKENE", !29, i64 0, !7, i64 4, !7, i64 8, !30, i64 16, !13, i64 24}
!32 = !{!31, !30, i64 16}
!33 = !{!"_ZTS17CONTACT_KEY_TOKEN", !7, i64 0, !7, i64 4}
!34 = !{!33, !7, i64 0}
!35 = distinct !{!35, !27, !48, !49}
!36 = distinct !{!36, !50}
!37 = distinct !{!37, !27, !48}
!38 = distinct !{!38, !27, !48, !49}
!39 = distinct !{!39, !50}
!40 = distinct !{!40, !27, !48}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !50}
!43 = distinct !{!43, !27}
!44 = distinct !{!44, !27}
!45 = !{!31, !13, i64 24}
!46 = !{!31, !7, i64 4}
!47 = !{!31, !7, i64 8}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!23, !23, i64 0}
!52 = !{!33, !7, i64 4}
!53 = !{i64 0, i64 16, !20, i64 16, i64 16, !20, i64 32, i64 4, !51, i64 36, i64 4, !51, i64 40, i64 4, !26, i64 44, i64 4, !26}
!54 = distinct !{!54, !27}
!55 = distinct !{!55, !27}
!56 = distinct !{!56, !27}
end_hunk_0
