Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ostream_ref_data_destination?download=true
inline.NumInlined: 26
inline.NumDeleted: 22
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

@_ZTVN22photos_editing_formats8image_io25OStreamRefDataDestinationE = unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN22photos_editing_formats8image_io25OStreamRefDataDestinationE, ptr @_ZN22photos_editing_formats8image_io25OStreamRefDataDestinationD2Ev, ptr @_ZN22photos_editing_formats8image_io25OStreamRefDataDestinationD0Ev, ptr @_ZN22photos_editing_formats8image_io25OStreamRefDataDestination13StartTransferEv, ptr @_ZN22photos_editing_formats8image_io25OStreamRefDataDestination8TransferERKNS0_9DataRangeERKNS0_11DataSegmentE, ptr @_ZN22photos_editing_formats8image_io25OStreamRefDataDestination14FinishTransferEv, ptr @_ZNK22photos_editing_formats8image_io25OStreamRefDataDestination19GetBytesTransferredEv] }, align 8
@_ZTIN22photos_editing_formats8image_io25OStreamRefDataDestinationE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN22photos_editing_formats8image_io25OStreamRefDataDestinationE, ptr @_ZTIN22photos_editing_formats8image_io15DataDestinationE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN22photos_editing_formats8image_io25OStreamRefDataDestinationE = constant [63 x i8] c"N22photos_editing_formats8image_io25OStreamRefDataDestinationE\00", align 1
@_ZTIN22photos_editing_formats8image_io15DataDestinationE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN22photos_editing_formats8image_io15DataDestinationE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN22photos_editing_formats8image_io15DataDestinationE = linkonce_odr constant [53 x i8] c"N22photos_editing_formats8image_io15DataDestinationE\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN22photos_editing_formats8image_io25OStreamRefDataDestination13StartTransferEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN22photos_editing_formats8image_io25OStreamRefDataDestination8TransferERKNS0_9DataRangeERKNS0_11DataSegmentE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !26     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !28, !range !29, !noundef !17
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select.i27 = sub nuw i64 %i.c, %i.a       ; 2 uses
  %i.h = load i64, ptr %2, align 8, !tbaa !26     ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.a, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp uge i64 %i.a, %i.j
  %.not26 = select i1 %.not.i.i.i, i1 true, i1 %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not24 = icmp eq ptr %i.m, null
  %.not = select i1 %.not26, i1 true, i1 %.not24
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = sub nuw i64 %i.a, %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18, !nonnull !17, !align !19
  %i.r = tail call { i64, i64 } @_ZNSo5tellpEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !18, !nonnull !17, !align !19
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.o, i64 noundef %spec.select.i27) ; 0 uses
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !18, !nonnull !17, !align !19
  %i.v = tail call { i64, i64 } @_ZNSo5tellpEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %.not17 = icmp eq i64 %i.w, -1
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = extractvalue { i64, i64 } %i.r, 0
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !18, !nonnull !17, !align !19
  %i.z = tail call { i64, i64 } @_ZNSo5tellpEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = sub nsw i64 %i.aa, %i.x                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !20
  %i.ae = add i64 %i.ab, %i.ad
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.1 = phi i64 [ 0, %bb.c ], [ %i.ab, %bb.e ], [ 0, %bb.d ]
  %.not18.not = icmp eq i64 %.1, %spec.select.i27
  br i1 %.not18.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30 ; 2 uses
  %.not19 = icmp eq ptr %i.ag, null
  br i1 %.not19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageENS0_7Message4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  store i8 1, ptr %i.e, align 8, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.a, %bb.b, %bb.i
  %.114 = phi i32 [ 0, %bb.i ], [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.f ]
  ret i32 %.114
}

declare { i64, i64 } @_ZNSo5tellpEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageENS0_7Message4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io25OStreamRefDataDestination14FinishTransferEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(65) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18, !nonnull !17, !align !19
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io25OStreamRefDataDestinationD2Ev(ptr noundef nonnull align 8 dereferenceable(65) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN22photos_editing_formats8image_io25OStreamRefDataDestinationE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #6
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN22photos_editing_formats8image_io25OStreamRefDataDestinationD0Ev(ptr noundef nonnull align 8 dereferenceable(65) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN22photos_editing_formats8image_io25OStreamRefDataDestinationE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN22photos_editing_formats8image_io25OStreamRefDataDestinationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #6, !inline_history !31
  br label %_ZN22photos_editing_formats8image_io25OStreamRefDataDestinationD2Ev.exit

_ZN22photos_editing_formats8image_io25OStreamRefDataDestinationD2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK22photos_editing_formats8image_io25OStreamRefDataDestination19GetBytesTransferredEv(ptr noundef nonnull align 8 dereferenceable(65) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  ret i64 %i.b
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"long", !4, i64 0}
!8 = !{!"_ZTSN22photos_editing_formats8image_io15DataDestinationE"}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTSSo", !9, i64 0}
!11 = !{!"p1 _ZTSN22photos_editing_formats8image_io14MessageHandlerE", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !7, i64 8, !4, i64 16}
!15 = !{!"bool", !4, i64 0}
!16 = !{!"_ZTSN22photos_editing_formats8image_io25OStreamRefDataDestinationE", !8, i64 0, !10, i64 8, !11, i64 16, !7, i64 24, !14, i64 32, !15, i64 64}
!17 = !{}
!18 = !{!16, !10, i64 8}
!19 = !{i64 8}
!20 = !{!16, !7, i64 24}
!21 = !{!"vtable pointer", !3, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!14, !12, i64 0}
!24 = !{!4, !4, i64 0}
!25 = !{!"_ZTSN22photos_editing_formats8image_io9DataRangeE", !7, i64 0, !7, i64 8}
!26 = !{!25, !7, i64 0}
!27 = !{!25, !7, i64 8}
!28 = !{!16, !15, i64 64}
!29 = !{i8 0, i8 2}
!30 = !{!16, !11, i64 16}
!31 = !{ptr @_ZN22photos_editing_formats8image_io25OStreamRefDataDestinationD2Ev}
end_hunk_0
