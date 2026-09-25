Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfTileDescriptionAttribute?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
begin_hunk_0_@_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE4castERKNS_9AttributeE:bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #14
  resume { ptr, i32 } %i.d

_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE4castEPKNS_9AttributeE.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE4castEPNS_9AttributeE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN7Imf_3_49AttributeE, ptr nonnull @_ZTIN7Imf_3_414TypedAttributeINS_15TileDescriptionEEE, i64 0) #14 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 72) #14 ; 3 uses
  invoke void @_ZN7Iex_3_47TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.thread
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7Iex_3_47TypeExcE, ptr nonnull @_ZN7Iex_3_47TypeExcD1Ev) #17
  unreachable

bb.d:                                             ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #14
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.b
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #11

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN7Iex_3_47TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN7Iex_3_47TypeExcD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE4castEPKNS_9AttributeE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN7Imf_3_49AttributeE, ptr nonnull @_ZTIN7Imf_3_414TypedAttributeINS_15TileDescriptionEEE, i64 0) #14 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 72) #14 ; 3 uses
  invoke void @_ZN7Iex_3_47TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.thread
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7Iex_3_47TypeExcE, ptr nonnull @_ZN7Iex_3_47TypeExcD1Ev) #17
  unreachable

bb.d:                                             ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #14
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.b
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE4castERNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN7Imf_3_49AttributeE, ptr nonnull @_ZTIN7Imf_3_414TypedAttributeINS_15TileDescriptionEEE, i64 0) #14 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread.i, label %_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE4castEPNS_9AttributeE.exit

.thread.i:                                        ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 72) #14 ; 3 uses
  invoke void @_ZN7Iex_3_47TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull @.str)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.thread.i
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN7Iex_3_47TypeExcE, ptr nonnull @_ZN7Iex_3_47TypeExcD1Ev) #17
  unreachable

bb.c:                                             ; preds = %.thread.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #14
  resume { ptr, i32 } %i.d

_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE4castEPNS_9AttributeE.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE21registerAttributeTypeEv() local_unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN7Imf_3_49Attribute21registerAttributeTypeEPKcPFPS0_vE(ptr noundef nonnull @.str.1, ptr noundef nonnull @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE16makeNewAttributeEv)
  ret void
}

declare void @_ZN7Imf_3_49Attribute21registerAttributeTypeEPKcPFPS0_vE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE23unRegisterAttributeTypeEv() local_unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN7Imf_3_49Attribute23unRegisterAttributeTypeEPKc(ptr noundef nonnull @.str.1)
  ret void
}

declare void @_ZN7Imf_3_49Attribute23unRegisterAttributeTypeEPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK7Imf_3_414TypedAttributeINS_15TileDescriptionEE12writeValueToERNS_7OStreamEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 %i.e, ptr %i.c, align 4
  %i.f = load ptr, ptr %1, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.c, i32 noundef 4), !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 %i.j, ptr %i.b, align 4
  %i.k = load ptr, ptr %1, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.b, i32 noundef 4), !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !26
  %i.r = shl i32 %i.q, 4
  %i.s = or i32 %i.r, %i.o
  %i.t = trunc i32 %i.s to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.t, ptr %i.a, align 1, !tbaa !17
  %i.u = load ptr, ptr %1, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 1), !inline_history !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE13readValueFromERNS_7IStreamEii(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((8, 24)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 %2, i32 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.e = load ptr, ptr %1, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.b, i32 noundef 4), !inline_history !27 ; 0 uses
  %i.i = load i32, ptr %i.b, align 4
  store i32 %i.i, ptr %i.d, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.k = load ptr, ptr %1, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 4), !inline_history !27 ; 0 uses
  %i.o = load i32, ptr %i.a, align 4
  store i32 %i.o, ptr %i.j, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.p = load ptr, ptr %1, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i32 noundef 1), !inline_history !28 ; 0 uses
  %i.t = load i8, ptr %i.c, align 1, !tbaa !17    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = and i8 %i.t, 15
  %5 = lshr i8 %i.t, 4
  %i.v = insertelement <2 x i8> poison, i8 %4, i64 0
  %i.w = insertelement <2 x i8> %i.v, i8 %5, i64 1
  %i.x = call <2 x i8> @llvm.umin.v2i8(<2 x i8> %i.w, <2 x i8> <i8 3, i8 2>)
  %i.y = zext nneg <2 x i8> %i.x to <2 x i32>
  store <2 x i32> %i.y, ptr %i.u, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i8> @llvm.umin.v2i8(<2 x i8>, <2 x i8>) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #12 = { cold noreturn }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { noreturn }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"_ZTSN7Imf_3_49LevelModeE", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"_ZTSN7Imf_3_417LevelRoundingModeE", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !13, i64 12, i64 4, !15}
!17 = !{!5, !5, i64 0}
!18 = distinct !{null, null, null}
!19 = distinct !{null, null, null}
!20 = !{!"_ZTSN7Imf_3_49AttributeE"}
!21 = !{!"_ZTSN7Imf_3_415TileDescriptionE", !6, i64 0, !6, i64 4, !12, i64 8, !14, i64 12}
!22 = !{!"_ZTSN7Imf_3_414TypedAttributeINS_15TileDescriptionEEE", !20, i64 0, !21, i64 8}
!23 = !{!22, !6, i64 8}
!24 = !{!22, !6, i64 12}
!25 = !{!22, !12, i64 16}
!26 = !{!22, !14, i64 20}
!27 = distinct !{null, null, null}
!28 = distinct !{null, null, null}
end_hunk_0
