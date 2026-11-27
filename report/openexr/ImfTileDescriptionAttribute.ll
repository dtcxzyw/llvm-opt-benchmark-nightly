Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfTileDescriptionAttribute?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

$_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEEC5ERKS1_ = comdat any

$_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEED5Ev = comdat any

$_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE5valueEv = comdat any

$_ZNK7Imf_3_414TypedAttributeINS_15TileDescriptionEE5valueEv = comdat any

$_ZNK7Imf_3_414TypedAttributeINS_15TileDescriptionEE8typeNameEv = comdat any

$_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE16makeNewAttributeEv = comdat any

$_ZNK7Imf_3_414TypedAttributeINS_15TileDescriptionEE4copyEv = comdat any

$_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE13copyValueFromERKNS_9AttributeE = comdat any

$_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE4castERKNS_9AttributeE = comdat any

$_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE4castEPNS_9AttributeE = comdat any

$_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE4castEPKNS_9AttributeE = comdat any

$_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE4castERNS_9AttributeE = comdat any

$_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE21registerAttributeTypeEv = comdat any

$_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE23unRegisterAttributeTypeEv = comdat any

$_ZTVN7Imf_3_414TypedAttributeINS_15TileDescriptionEEE = comdat any

$_ZTIN7Imf_3_414TypedAttributeINS_15TileDescriptionEEE = comdat any

$_ZTSN7Imf_3_414TypedAttributeINS_15TileDescriptionEEE = comdat any

@_ZTVN7Imf_3_414TypedAttributeINS_15TileDescriptionEEE = weak_odr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN7Imf_3_414TypedAttributeINS_15TileDescriptionEEE, ptr @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEED1Ev, ptr @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEED0Ev, ptr @_ZNK7Imf_3_414TypedAttributeINS_15TileDescriptionEE8typeNameEv, ptr @_ZNK7Imf_3_414TypedAttributeINS_15TileDescriptionEE4copyEv, ptr @_ZNK7Imf_3_414TypedAttributeINS_15TileDescriptionEE12writeValueToERNS_7OStreamEi, ptr @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE13readValueFromERNS_7IStreamEii, ptr @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE13copyValueFromERKNS_9AttributeE] }, comdat, align 8
@_ZTIN7Imf_3_49AttributeE = external constant ptr
@_ZTIN7Imf_3_414TypedAttributeINS_15TileDescriptionEEE = weak_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7Imf_3_414TypedAttributeINS_15TileDescriptionEEE, ptr @_ZTIN7Imf_3_49AttributeE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN7Imf_3_414TypedAttributeINS_15TileDescriptionEEE = weak_odr constant [50 x i8] c"N7Imf_3_414TypedAttributeINS_15TileDescriptionEEE\00", comdat, align 1
@.str = private unnamed_addr constant [27 x i8] c"Unexpected attribute type.\00", align 1
@_ZTIN7Iex_3_47TypeExcE = external constant ptr
@.str.1 = private unnamed_addr constant [9 x i8] c"tiledesc\00", align 1

@_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEEC1ERKS1_ = weak_odr unnamed_addr alias void (ptr, ptr), ptr @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEEC2ERKS1_
@_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEED1Ev = weak_odr unnamed_addr alias void (ptr), ptr @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEED2Ev

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #0 comdat($_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEEC5ERKS1_) align 2 {
bb.a:
  tail call void @_ZN7Imf_3_49AttributeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7Imf_3_414TypedAttributeINS_15TileDescriptionEEE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !16
  ret void
}

declare void @_ZN7Imf_3_49AttributeC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat($_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEED5Ev) align 2 {
bb.a:
  tail call void @_ZN7Imf_3_49AttributeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7Imf_3_49AttributeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat($_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEED5Ev) align 2 {
bb.a:
  tail call void @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEED1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr noundef nonnull align 4 dereferenceable(16) ptr @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE5valueEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_414TypedAttributeINS_15TileDescriptionEE5valueEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZNK7Imf_3_414TypedAttributeINS_15TileDescriptionEE8typeNameEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE14staticTypeNameEv() local_unnamed_addr #7 align 2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE16makeNewAttributeEv() #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  invoke void @_ZN7Imf_3_49AttributeC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c, !inline_history !0

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7Imf_3_414TypedAttributeINS_15TileDescriptionEEE, i64 16), ptr %i.a, align 16, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 137438953504, ptr %i.b, align 8
  %0 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %0, align 16
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #15
  resume { ptr, i32 } %i.c
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZNK7Imf_3_414TypedAttributeINS_15TileDescriptionEE4copyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  invoke void @_ZN7Imf_3_49AttributeC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.e, !inline_history !0

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7Imf_3_414TypedAttributeINS_15TileDescriptionEEE, i64 16), ptr %i.a, align 16, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 137438953504, ptr %i.b, align 8
  %1 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %1, align 16
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %0, ptr nonnull @_ZTIN7Imf_3_49AttributeE, ptr nonnull @_ZTIN7Imf_3_414TypedAttributeINS_15TileDescriptionEEE, i64 0) #14 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.thread.i.i.i, label %_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE13copyValueFromERKNS_9AttributeE.exit

.thread.i.i.i:                                    ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 72) #14 ; 3 uses
  invoke void @_ZN7Iex_3_47TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.thread.i.i.i
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN7Iex_3_47TypeExcE, ptr nonnull @_ZN7Iex_3_47TypeExcD1Ev) #17
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %.thread.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #14
  br label %common.resume

_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE13copyValueFromERKNS_9AttributeE.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !16
  ret ptr %i.a

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #15
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE13copyValueFromERKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %1, ptr nonnull @_ZTIN7Imf_3_49AttributeE, ptr nonnull @_ZTIN7Imf_3_414TypedAttributeINS_15TileDescriptionEEE, i64 0) #14 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread.i.i, label %_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE4castERKNS_9AttributeE.exit

.thread.i.i:                                      ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 72) #14 ; 3 uses
  invoke void @_ZN7Iex_3_47TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull @.str)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.thread.i.i
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN7Iex_3_47TypeExcE, ptr nonnull @_ZN7Iex_3_47TypeExcD1Ev) #17
  unreachable

bb.c:                                             ; preds = %.thread.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #14
  resume { ptr, i32 } %i.d

_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE4castERKNS_9AttributeE.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !16
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE4castERKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN7Imf_3_49AttributeE, ptr nonnull @_ZTIN7Imf_3_414TypedAttributeINS_15TileDescriptionEEE, i64 0) #14 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread.i, label %_ZN7Imf_3_414TypedAttributeINS_15TileDescriptionEE4castEPKNS_9AttributeE.exit

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
end_hunk_0
