Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/file_utils?download=true
inline.NumInlined: 94
inline.NumDeleted: 77
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::unique_ptr.19" = type { %"struct.std::__uniq_ptr_data.20" }
%"struct.std::__uniq_ptr_data.20" = type { %"class.std::__uniq_ptr_impl.21" }
%"class.std::__uniq_ptr_impl.21" = type { %"class.std::tuple.22" }
%"class.std::tuple.22" = type { %"struct.std::_Tuple_impl.23" }
%"struct.std::_Tuple_impl.23" = type { %"struct.std::_Head_base.26" }
%"struct.std::_Head_base.26" = type { ptr }
%"class.std::shared_ptr.27" = type { %"class.std::__shared_ptr.28" }
%"class.std::__shared_ptr.28" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.photos_editing_formats::image_io::DataRange" = type { i64, i64 }

@__libc_single_threaded = external local_unnamed_addr global i8, align 1

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef zeroext i1 @_ZN22photos_editing_formats8image_io11GetFileSizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = call i32 @stat(ptr noundef %i.a, ptr noundef nonnull %2) #11
  %.not = icmp eq i32 %i.b, 0                     ; 2 uses
  %.not5 = icmp ne ptr %1, null
  %or.cond.not = and i1 %.not5, %.not
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  store i64 %i.d, ptr %1, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i1 %.not
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io14OpenOutputFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_14MessageHandlerE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(528) ptr @_Znwm(i64 noundef 528) #12 ; 6 uses
  invoke void @_ZNSt13basic_fstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 20)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = tail call noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9) %i.b) #13
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #11
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageENS0_7Message4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 528) #14
  resume { ptr, i32 } %i.g

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.h = icmp eq ptr %.0, null
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %spec.select = select i1 %i.h, ptr null, ptr %i.i
  store ptr %spec.select, ptr %0, align 8, !tbaa !19
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
declare void @_ZNSt13basic_fstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #3 align 2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageENS0_7Message4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io13OpenInputFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_14MessageHandlerE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.19") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(528) ptr @_Znwm(i64 noundef 528) #12 ; 6 uses
  invoke void @_ZNSt13basic_fstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 12)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = tail call noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9) %i.b) #13
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #11
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageENS0_7Message4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 528) #14
  resume { ptr, i32 } %i.g

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.d ], [ null, %bb.c ]
  store ptr %.0, ptr %0, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN22photos_editing_formats8image_io14ReadEntireFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_14MessageHandlerE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.27") align 8 initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 5 uses
  %4 = alloca %"class.std::shared_ptr.27", align 16 ; 6 uses
  %5 = alloca %"class.photos_editing_formats::image_io::DataRange", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  %i.b = call i32 @stat(ptr noundef %i.a, ptr noundef nonnull %3) #11
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_ZN22photos_editing_formats8image_io11GetFileSizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm.exit

_ZN22photos_editing_formats8image_io11GetFileSizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit31

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.e = invoke noalias noundef nonnull dereferenceable(528) ptr @_Znwm(i64 noundef 528) #12
          to label %.noexc unwind label %bb.q     ; 11 uses

.noexc:                                           ; preds = %bb.b
  invoke void @_ZNSt13basic_fstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(264) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 12)
          to label %bb.c unwind label %bb.f, !noalias !23

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.g = tail call noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9) %i.f) #13, !noalias !23
  br i1 %i.g, label %_ZN22photos_editing_formats8image_io13OpenInputFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_14MessageHandlerE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !17, !noalias !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !23
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #11, !noalias !23, !inline_history !26
  %.not.i23 = icmp eq ptr %2, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit31.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN22photos_editing_formats8image_io14MessageHandler13ReportMessageENS0_7Message4TypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt10unique_ptrISiSt14default_deleteISiEED2Ev.exit31 unwind label %bb.q

bb.f:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 528) #14, !noalias !23
  br label %.body

_ZN22photos_editing_formats8image_io13OpenInputFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_14MessageHandlerE.exit: ; preds = %bb.c
  %i.l = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #12
          to label %bb.g unwind label %bb.r       ; 2 uses

bb.g:                                             ; preds = %_ZN22photos_editing_formats8image_io13OpenInputFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_14MessageHandlerE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store i64 0, ptr %5, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.d, ptr %i.m, align 8, !tbaa !29
  invoke void @_ZN22photos_editing_formats8image_io11DataSegment6CreateERKNS0_9DataRangeEPKhNS1_23BufferDispositionPolicyE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.27") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.l, i32 noundef 0)
          to label %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.s

_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 8 uses
  %i.p = load <2 x ptr>, ptr %4, align 16, !tbaa !33
  store <2 x ptr> %i.p, ptr %0, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull %i.l, i64 noundef %i.d)
          to label %bb.h unwind label %bb.r       ; 0 uses

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN22photos_editing_formats8image_io11DataSegmentELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.r = invoke { i64, i64 } @_ZNSi5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.i unwind label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.s = extractvalue { i64, i64 } %i.r, 0
  %.not19 = icmp eq i64 %i.s, %i.d
  br i1 %.not19, label %_ZNKSt14default_deleteISiEclEPSi.exit.i30, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i26 = icmp eq ptr %i.o, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br i1 %.not.i.i.i26, label %_ZNKSt14default_deleteISiEclEPSi.exit.i30, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.t, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !36
end_hunk_0
