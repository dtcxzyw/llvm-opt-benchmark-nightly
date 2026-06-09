inline.NumInlined: 64
inline.NumDeleted: 40
begin_hunk_0_@_ZNK27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4copyEv:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13copyValueFromERKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %1, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 0) #13 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread.i.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4castERKNS_9AttributeE.exit

.thread.i.i:                                      ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull @.str)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.thread.i.i
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #16
  unreachable

bb.c:                                             ; preds = %.thread.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #13
  resume { ptr, i32 } %i.d

_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4castERKNS_9AttributeE.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4castERKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 0) #13 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4castEPKNS_9AttributeE.exit

.thread.i:                                        ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull @.str)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.thread.i
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #16
  unreachable

bb.c:                                             ; preds = %.thread.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #13
  resume { ptr, i32 } %i.d

_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4castEPKNS_9AttributeE.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4castEPNS_9AttributeE(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 0) #13 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.thread
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #16
  unreachable

bb.d:                                             ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #13
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.b
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #11

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN7Iex_3_37TypeExcD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4castEPKNS_9AttributeE(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 0) #13 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.thread
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #16
  unreachable

bb.d:                                             ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #13
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.b
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4castERNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 0) #13 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4castEPNS_9AttributeE.exit

.thread.i:                                        ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull @.str)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.thread.i
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #16
  unreachable

bb.c:                                             ; preds = %.thread.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #13
  resume { ptr, i32 } %i.d

_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4castEPNS_9AttributeE.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE21registerAttributeTypeEv() local_unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_59Attribute21registerAttributeTypeEPKcPFPS0_vE(ptr noundef nonnull @.str.1, ptr noundef nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE16makeNewAttributeEv)
  ret void
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_59Attribute21registerAttributeTypeEPKcPFPS0_vE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE23unRegisterAttributeTypeEv() local_unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_59Attribute23unRegisterAttributeTypeEPKc(ptr noundef nonnull @.str.1)
  ret void
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_59Attribute23unRegisterAttributeTypeEPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12writeValueToERNS_7OStreamEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.d, 2147483647
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !13, !nonnull !20, !noundef !20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.i, ptr %i.a, align 1, !tbaa !18
  %i.j = load ptr, ptr %1, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 1), !inline_history !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE13readValueFromERNS_7IStreamEii(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = sext i32 %2 to i64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.b, i8 noundef signext 0)
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !13, !nonnull !20, !noundef !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %1, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.e, i32 noundef 1), !inline_history !24 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #12 = { cold noreturn }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !11, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !15, i64 8, !5, i64 16}
!15 = !{!"long", !5, i64 0}
!16 = !{!14, !15, i64 8}
!17 = !{!15, !15, i64 0}
!18 = !{!5, !5, i64 0}
!19 = distinct !{null}
!20 = !{}
!21 = distinct !{null, null}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{null, null}
!25 = distinct !{!25, !23}
end_hunk_0
