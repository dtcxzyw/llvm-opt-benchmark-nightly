Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/emitter?download=true
inline.NumInlined: 561
inline.NumDeleted: 119
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.YAML::_Tag" = type <{ %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>

$_ZNSt10unique_ptrIN4YAML12EmitterStateESt14default_deleteIS1_EED2Ev = comdat any

$_ZN4YAML4_TagD2Ev = comdat any

$_ZN4YAML4_TagC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_4Type5valueE = comdat any

@.str = private unnamed_addr constant [26 x i8] c"Unexpected begin document\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"...\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"{ ?\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c", ?\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"Null\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"invalid alias\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"invalid anchor\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"invalid tag\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@switch.table._ZN4YAML7Emitter5WriteERKNS_5_NullE = private unnamed_addr constant [3 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39], align 8

@_ZN4YAML7EmitterC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4YAML7EmitterC2Ev
@_ZN4YAML7EmitterC1ERSo = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4YAML7EmitterC2ERSo
@_ZN4YAML7EmitterD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4YAML7EmitterD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7EmitterC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #14 ; 3 uses
  invoke void @_ZN4YAML12EmitterStateC1Ev(ptr noundef nonnull align 8 dereferenceable(224) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4YAML15ostream_wrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(57) %i.b)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 224) #15
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10unique_ptrIN4YAML12EmitterStateESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.c, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare void @_ZN4YAML12EmitterStateC1Ev(ptr noundef nonnull align 8 dereferenceable(224)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN4YAML15ostream_wrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(57)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN4YAML12EmitterStateESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN4YAML12EmitterStateEEclEPS1_.exit

_ZNKSt14default_deleteIN4YAML12EmitterStateEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN4YAML12EmitterStateD1Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %i.a) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 224) #15
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN4YAML12EmitterStateEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7EmitterC2ERSo(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #14 ; 3 uses
  invoke void @_ZN4YAML12EmitterStateC1Ev(ptr noundef nonnull align 8 dereferenceable(224) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4YAML15ostream_wrapperC1ERSo(ptr noundef nonnull align 8 dereferenceable(57) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 224) #15
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10unique_ptrIN4YAML12EmitterStateESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.c, %bb.d ]
  resume { ptr, i32 } %.pn
}

declare void @_ZN4YAML15ostream_wrapperC1ERSo(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4YAML7EmitterD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4YAML15ostream_wrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %i.a) #16
  %i.b = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4YAML12EmitterStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4YAML12EmitterStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4YAML12EmitterStateEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN4YAML12EmitterStateD1Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %i.b) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 224) #15
  br label %_ZNSt10unique_ptrIN4YAML12EmitterStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4YAML12EmitterStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4YAML12EmitterStateEEclEPS1_.exit.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4YAML15ostream_wrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57)) unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZNK4YAML7Emitter5c_strEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZNK4YAML15ostream_wrapper3strEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !22
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !61
  br label %_ZNK4YAML15ostream_wrapper3strEv.exit

_ZNK4YAML15ostream_wrapper3strEv.exit:            ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK4YAML7Emitter4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4YAML7Emitter4goodEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = load i8, ptr %i.a, align 8, !tbaa !40, !range !41, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4YAML7Emitter12GetLastErrorB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !43, !alias.scope !64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !44, !noalias !64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !45, !noalias !64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16, !noalias !64
  store i64 %i.g, ptr %i.a, align 8, !tbaa !46, !noalias !64
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !44, !alias.scope !64
  %i.j = load i64, ptr %i.a, align 8, !tbaa !46, !noalias !64
  store i64 %i.j, ptr %i.d, align 8, !tbaa !22, !alias.scope !64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNK4YAML12EmitterState12GetLastErrorB5cxx11Ev.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !22
  store i8 %i.l, ptr %i.k, align 1, !tbaa !22
  br label %_ZNK4YAML12EmitterState12GetLastErrorB5cxx11Ev.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNK4YAML12EmitterState12GetLastErrorB5cxx11Ev.exit

_ZNK4YAML12EmitterState12GetLastErrorB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !46, !noalias !64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !45, !alias.scope !64
  %i.o = load ptr, ptr %0, align 8, !tbaa !44, !alias.scope !64
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16, !noalias !64
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4YAML7Emitter16SetOutputCharsetENS_13EMITTER_MANIPE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = tail call noundef zeroext i1 @_ZN4YAML12EmitterState16SetOutputCharsetENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i32 noundef %1, i32 noundef 1)
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZN4YAML12EmitterState16SetOutputCharsetENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4YAML7Emitter15SetStringFormatENS_13EMITTER_MANIPE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = tail call noundef zeroext i1 @_ZN4YAML12EmitterState15SetStringFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i32 noundef %1, i32 noundef 1)
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZN4YAML12EmitterState15SetStringFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4YAML7Emitter13SetBoolFormatENS_13EMITTER_MANIPE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = tail call noundef zeroext i1 @_ZN4YAML12EmitterState13SetBoolFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i32 noundef %1, i32 noundef 1)
  %i.c = load ptr, ptr %0, align 8, !tbaa !11
  %i.d = tail call noundef zeroext i1 @_ZN4YAML12EmitterState17SetBoolCaseFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.c, i32 noundef %1, i32 noundef 1)
  %.1 = or i1 %i.b, %i.d
  %i.e = load ptr, ptr %0, align 8, !tbaa !11
  %i.f = tail call noundef zeroext i1 @_ZN4YAML12EmitterState19SetBoolLengthFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.e, i32 noundef %1, i32 noundef 1)
  %.2 = or i1 %.1, %i.f
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

declare noundef zeroext i1 @_ZN4YAML12EmitterState13SetBoolFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4YAML12EmitterState17SetBoolCaseFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4YAML12EmitterState19SetBoolLengthFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4YAML7Emitter13SetNullFormatENS_13EMITTER_MANIPE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = tail call noundef zeroext i1 @_ZN4YAML12EmitterState13SetNullFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i32 noundef %1, i32 noundef 1)
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZN4YAML12EmitterState13SetNullFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4YAML7Emitter10SetIntBaseENS_13EMITTER_MANIPE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = tail call noundef zeroext i1 @_ZN4YAML12EmitterState12SetIntFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i32 noundef %1, i32 noundef 1)
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZN4YAML12EmitterState12SetIntFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4YAML7Emitter12SetSeqFormatENS_13EMITTER_MANIPE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = tail call noundef zeroext i1 @_ZN4YAML12EmitterState11SetFlowTypeENS_9GroupType5valueENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i32 noundef 1, i32 noundef %1, i32 noundef 1)
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZN4YAML12EmitterState11SetFlowTypeENS_9GroupType5valueENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4YAML7Emitter12SetMapFormatENS_13EMITTER_MANIPE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = tail call noundef zeroext i1 @_ZN4YAML12EmitterState11SetFlowTypeENS_9GroupType5valueENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i32 noundef 2, i32 noundef %1, i32 noundef 1)
  %i.c = load ptr, ptr %0, align 8, !tbaa !11
  %i.d = tail call noundef zeroext i1 @_ZN4YAML12EmitterState15SetMapKeyFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.c, i32 noundef %1, i32 noundef 1)
  %.1 = or i1 %i.b, %i.d
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN4YAML12EmitterState15SetMapKeyFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4YAML7Emitter9SetIndentEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = tail call noundef zeroext i1 @_ZN4YAML12EmitterState9SetIndentEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i64 noundef %1, i32 noundef 1)
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZN4YAML12EmitterState9SetIndentEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4YAML7Emitter19SetPreCommentIndentEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = tail call noundef zeroext i1 @_ZN4YAML12EmitterState19SetPreCommentIndentEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i64 noundef %1, i32 noundef 1)
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZN4YAML12EmitterState19SetPreCommentIndentEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4YAML7Emitter20SetPostCommentIndentEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = tail call noundef zeroext i1 @_ZN4YAML12EmitterState20SetPostCommentIndentEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i64 noundef %1, i32 noundef 1)
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZN4YAML12EmitterState20SetPostCommentIndentEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4YAML7Emitter17SetFloatPrecisionEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = tail call noundef zeroext i1 @_ZN4YAML12EmitterState17SetFloatPrecisionEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i64 noundef %1, i32 noundef 1)
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZN4YAML12EmitterState17SetFloatPrecisionEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4YAML7Emitter18SetDoublePrecisionEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = tail call noundef zeroext i1 @_ZN4YAML12EmitterState18SetDoublePrecisionEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i64 noundef %1, i32 noundef 1)
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZN4YAML12EmitterState18SetDoublePrecisionEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter29RestoreGlobalModifiedSettingsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @_ZN4YAML12EmitterState29RestoreGlobalModifiedSettingsEv(ptr noundef nonnull align 8 dereferenceable(224) %i.a)
  ret void
}

declare void @_ZN4YAML12EmitterState29RestoreGlobalModifiedSettingsEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull returned align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !40, !range !41, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.h [
    i32 24, label %bb.c
    i32 25, label %bb.d
    i32 26, label %_ZN4YAML7Emitter12EmitBeginSeqEv.exit
    i32 27, label %bb.e
    i32 30, label %_ZN4YAML7Emitter12EmitBeginMapEv.exit
    i32 31, label %bb.f
    i32 32, label %bb.i
    i32 33, label %bb.i
    i32 1, label %bb.g
    i32 2, label %_ZN4YAML7Emitter11EmitNewlineEv.exit
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4YAML7Emitter12EmitBeginDocEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4YAML7Emitter10EmitEndDocEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %bb.i

_ZN4YAML7Emitter12EmitBeginSeqEv.exit:            ; preds = %bb.b
  %i.d = tail call noundef i32 @_ZNK4YAML12EmitterState13NextGroupTypeENS_9GroupType5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i32 noundef 1)
  tail call void @_ZN4YAML7Emitter11PrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.d)
  %i.e = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @_ZN4YAML12EmitterState12StartedGroupENS_9GroupType5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.e, i32 noundef 1)
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  tail call void @_ZN4YAML7Emitter10EmitEndSeqEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %bb.i

_ZN4YAML7Emitter12EmitBeginMapEv.exit:            ; preds = %bb.b
  %i.f = tail call noundef i32 @_ZNK4YAML12EmitterState13NextGroupTypeENS_9GroupType5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i32 noundef 2)
  tail call void @_ZN4YAML7Emitter11PrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.f)
  %i.g = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @_ZN4YAML12EmitterState12StartedGroupENS_9GroupType5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.g, i32 noundef 2)
  br label %bb.i

end_hunk_0
begin_hunk_1_@_ZN4YAML7Emitter10EmitEndDocEv:bb.a
  %i.u = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.h
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.d
  %i.w = load i64, ptr %i.h, align 8, !tbaa !22
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.c
  %.pn7 = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.t, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.z = load i8, ptr %i.y, align 8, !tbaa !47, !range !41, !noundef !42
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.noexc.i15, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 210
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !48, !range !41, !noundef !42
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.noexc.i15, label %bb.i

.noexc.i15:                                       ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 25, ptr %i.a, align 8, !tbaa !46
  %i.af = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc16 unwind label %bb.g   ; 2 uses

.noexc16:                                         ; preds = %.noexc.i15
  store ptr %i.af, ptr %2, align 8, !tbaa !44
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.af, ptr noundef nonnull align 1 dereferenceable(25) @.str, i64 25, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !45
  %i.ai = load ptr, ptr %2, align 8, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  store i8 0, ptr %i.g, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit19 unwind label %bb.h

_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit19: ; preds = %.noexc16
  %i.al = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ae
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit19
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !22
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.l

bb.g:                                             ; preds = %.noexc.i15
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.h:                                             ; preds = %.noexc16
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ae
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.h
  %i.at = load i64, ptr %i.ae, align 8, !tbaa !22
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.g ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.aq, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.m

bb.i:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !49
  %.not5 = icmp eq i64 %i.ax, 0
  br i1 %.not5, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.av, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.av, ptr noundef nonnull @.str.3, i64 noundef 4)
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %.pn7.pn = phi { ptr, i32 } [ %.pn7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  resume { ptr, i32 } %.pn7.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter12EmitBeginSeqEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !40, !range !41, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK4YAML12EmitterState13NextGroupTypeENS_9GroupType5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i32 noundef 1)
  tail call void @_ZN4YAML7Emitter11PrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.d)
  %i.e = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @_ZN4YAML12EmitterState12StartedGroupENS_9GroupType5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.e, i32 noundef 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter10EmitEndSeqEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !40, !range !41, !noundef !42
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZNK4YAML12EmitterState16CurGroupFlowTypeEv(ptr noundef nonnull align 8 dereferenceable(224) %i.b)
  %i.f = load ptr, ptr %0, align 8, !tbaa !11
  %i.g = tail call noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224) %i.f)
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @_ZN4YAML12EmitterState9ForceFlowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !11
  %i.k = tail call noundef i32 @_ZNK4YAML12EmitterState16CurGroupFlowTypeEv(ptr noundef nonnull align 8 dereferenceable(224) %i.j)
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i8, ptr %i.n, align 8, !tbaa !50, !range !41, !noundef !42
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = load ptr, ptr %0, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.s = load i64, ptr %i.r, align 8, !tbaa !51   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = load i64, ptr %i.t, align 8, !tbaa !49
  %i.x = icmp ult i64 %i.w, %i.s
  br i1 %i.x, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit, !llvm.loop !0

_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit: ; preds = %.lr.ph.i, %bb.g
  %i.y = icmp eq i32 %i.e, 2
  br i1 %i.y, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !11
  %i.aa = call noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224) %i.z)
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %0, align 8, !tbaa !11    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 208
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !47, !range !41, !noundef !42
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 210
  %i.ah = load i8, ptr %i.ag, align 2, !range !41
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %i.aj, label %bb.j, label %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit

_ZNK4YAML12EmitterState12HasBegunNodeEv.exit:     ; preds = %bb.i
  %1 = getelementptr inbounds nuw i8, ptr %i.ac, i64 211
  %2 = load i8, ptr %1, align 1, !tbaa !53, !range !41, !noundef !42
  %3 = trunc nuw i8 %2 to i1
  br i1 %3, label %bb.j, label %.sink.split

.sink.split:                                      ; preds = %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit, %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull @.str.4, i64 noundef 1)
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i, %bb.h, %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull @.str.5, i64 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d
  %i.ak = load ptr, ptr %0, align 8, !tbaa !11
  call void @_ZN4YAML12EmitterState10EndedGroupENS_9GroupType5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.ak, i32 noundef 1)
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter12EmitBeginMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !40, !range !41, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZNK4YAML12EmitterState13NextGroupTypeENS_9GroupType5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i32 noundef 2)
  tail call void @_ZN4YAML7Emitter11PrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.d)
  %i.e = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @_ZN4YAML12EmitterState12StartedGroupENS_9GroupType5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.e, i32 noundef 2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter10EmitEndMapEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !40, !range !41, !noundef !42
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZNK4YAML12EmitterState16CurGroupFlowTypeEv(ptr noundef nonnull align 8 dereferenceable(224) %i.b)
  %i.f = load ptr, ptr %0, align 8, !tbaa !11
  %i.g = tail call noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224) %i.f)
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @_ZN4YAML12EmitterState9ForceFlowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !11
  %i.k = tail call noundef i32 @_ZNK4YAML12EmitterState16CurGroupFlowTypeEv(ptr noundef nonnull align 8 dereferenceable(224) %i.j)
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i8, ptr %i.n, align 8, !tbaa !50, !range !41, !noundef !42
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = load ptr, ptr %0, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.s = load i64, ptr %i.r, align 8, !tbaa !51   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = load i64, ptr %i.t, align 8, !tbaa !49
  %i.x = icmp ult i64 %i.w, %i.s
  br i1 %i.x, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit, !llvm.loop !0

_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit: ; preds = %.lr.ph.i, %bb.g
  %i.y = icmp eq i32 %i.e, 2
  br i1 %i.y, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !11
  %i.aa = call noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224) %i.z)
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %0, align 8, !tbaa !11    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 208
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !47, !range !41, !noundef !42
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 210
  %i.ah = load i8, ptr %i.ag, align 2, !range !41
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %i.aj, label %bb.j, label %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit

_ZNK4YAML12EmitterState12HasBegunNodeEv.exit:     ; preds = %bb.i
  %1 = getelementptr inbounds nuw i8, ptr %i.ac, i64 211
  %2 = load i8, ptr %1, align 1, !tbaa !53, !range !41, !noundef !42
  %3 = trunc nuw i8 %2 to i1
  br i1 %3, label %bb.j, label %.sink.split

.sink.split:                                      ; preds = %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit, %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull @.str.6, i64 noundef 1)
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i, %bb.h, %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull @.str.7, i64 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d
  %i.ak = load ptr, ptr %0, align 8, !tbaa !11
  call void @_ZN4YAML12EmitterState10EndedGroupENS_9GroupType5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.ak, i32 noundef 2)
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter11EmitKindTagEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"struct.YAML::_Tag", align 8       ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !45
  store i8 0, ptr %i.a, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16, !noalias !67
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !43, !noalias !67
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !45, !noalias !67
  store i8 0, ptr %i.c, align 8, !tbaa !22, !noalias !67
  invoke void @_ZN4YAML4_TagC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_4Type5valueE(ptr noundef nonnull align 8 dereferenceable(68) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.e = load ptr, ptr %1, align 8, !tbaa !44, !noalias !67 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.c, align 8, !tbaa !22, !noalias !67
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %1, align 8, !tbaa !44, !noalias !67 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.c, align 8, !tbaa !22, !noalias !67
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16, !noalias !67
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16, !noalias !67
  %i.n = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteERKNS_4_TagE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(68) %2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !tbaa !22
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  %i.u = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN4YAML4_TagD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !22
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #15
  br label %_ZN4YAML4_TagD2Ev.exit

_ZN4YAML4_TagD2Ev.exit:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.z = load ptr, ptr %3, align 8, !tbaa !44     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4YAML4_TagD2Ev.exit
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !22
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4YAML4_TagD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4YAML4_TagD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %2) #16
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.d ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ]
  %i.ae = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.a
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %.body
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !22
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter11EmitNewlineEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = load i8, ptr %i.a, align 8, !tbaa !40, !range !41, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4YAML7Emitter11PrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.d, ptr noundef nonnull @.str.1, i64 noundef 1)
  %i.e = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @_ZN4YAML12EmitterState13SetNonContentEv(ptr noundef nonnull align 8 dereferenceable(224) %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN4YAML12EmitterState13SetLocalValueENS_13EMITTER_MANIPE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter14SetLocalIndentERKNS_7_IndentE(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = load i32, ptr %1, align 4, !tbaa !69
  %i.c = sext i32 %i.b to i64
  %i.d = tail call noundef zeroext i1 @_ZN4YAML12EmitterState9SetIndentEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.a, i64 noundef %i.c, i32 noundef 0) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter17SetLocalPrecisionERKNS_10_PrecisionE(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !71     ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !11
  %i.d = zext nneg i32 %i.a to i64
  %i.e = tail call noundef zeroext i1 @_ZN4YAML12EmitterState17SetFloatPrecisionEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.c, i64 noundef %i.d, i32 noundef 0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !72   ; 2 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !11
  %i.j = zext nneg i32 %i.g to i64
  %i.k = tail call noundef zeroext i1 @_ZN4YAML12EmitterState18SetDoublePrecisionEmNS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.i, i64 noundef %i.j, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret ptr %0
}

declare noundef i32 @_ZNK4YAML12EmitterState12CurGroupTypeEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

declare void @_ZN4YAML12EmitterState10StartedDocEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter11PrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = tail call noundef i32 @_ZNK4YAML12EmitterState16CurGroupNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(224) %i.a)
  switch i32 %i.b, label %bb.g [
    i32 0, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.d
    i32 5, label %bb.e
    i32 6, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4YAML7Emitter14PrepareTopNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4YAML7Emitter18FlowSeqPrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4YAML7Emitter19BlockSeqPrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4YAML7Emitter18FlowMapPrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN4YAML7Emitter19BlockMapPrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

declare noundef i32 @_ZNK4YAML12EmitterState13NextGroupTypeENS_9GroupType5valueE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #2

declare void @_ZN4YAML12EmitterState12StartedGroupENS_9GroupType5valueE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK4YAML12EmitterState16CurGroupFlowTypeEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

declare noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

declare void @_ZN4YAML12EmitterState9ForceFlowEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

declare void @_ZN4YAML12EmitterState10EndedGroupENS_9GroupType5valueE(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #2

declare void @_ZN4YAML12EmitterState13SetNonContentEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK4YAML7Emitter14CanEmitNewlineEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #10 align 2 {
bb.a:
  ret i1 true
}

declare noundef i32 @_ZNK4YAML12EmitterState16CurGroupNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter14PrepareTopNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !11
  %i.c = tail call noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224) %i.b)
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !49
  %.not2 = icmp eq i64 %i.e, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4YAML7Emitter12EmitBeginDocEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  switch i32 %1, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit [
    i32 6, label %bb.j
    i32 1, label %bb.f
    i32 2, label %bb.f
    i32 3, label %bb.f
    i32 5, label %bb.f
    i32 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.f = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.h = load i8, ptr %i.g, align 8, !tbaa !47, !range !41, !noundef !42
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 210
  %i.k = load i8, ptr %i.j, align 2, !range !41
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.i, i1 true, i1 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i8, ptr %i.o, align 8, !tbaa !50, !range !41, !noundef !42
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.n, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load i64, ptr %i.r, align 8, !tbaa !49
  %i.t = icmp ne i64 %i.s, 0
  %or.cond.i = and i1 %i.m, %i.t
  br i1 %or.cond.i, label %bb.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.n, ptr noundef nonnull @.str.13, i64 noundef 1)
  br label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

bb.j:                                             ; preds = %bb.e, %bb.e
  %i.u = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 208
  %i.w = load i8, ptr %i.v, align 8, !tbaa !47, !range !41, !noundef !42
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 210
  %i.z = load i8, ptr %i.y, align 2, !range !41
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = select i1 %i.x, i1 true, i1 %i.aa
  br i1 %i.ab, label %bb.k, label %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit

_ZNK4YAML12EmitterState12HasBegunNodeEv.exit:     ; preds = %bb.j
  %2 = getelementptr inbounds nuw i8, ptr %i.u, i64 211
  %3 = load i8, ptr %2, align 1, !tbaa !53, !range !41, !noundef !42
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb.k, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

bb.k:                                             ; preds = %bb.j, %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.ac, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit:        ; preds = %bb.i, %bb.h, %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit, %bb.k, %bb.a, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter18FlowSeqPrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !11
  %i.d = tail call noundef i64 @_ZNK4YAML12EmitterState10LastIndentEv(ptr noundef nonnull align 8 dereferenceable(224) %i.c) ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.g = load i8, ptr %i.f, align 8, !tbaa !47, !range !41, !noundef !42
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 210
  %i.j = load i8, ptr %i.i, align 2, !range !41
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.h, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit

_ZNK4YAML12EmitterState12HasBegunNodeEv.exit:     ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.e, i64 211
  %3 = load i8, ptr %2, align 1, !tbaa !53, !range !41, !noundef !42
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i8, ptr %i.n, align 8, !tbaa !50, !range !41, !noundef !42
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !49
  %i.s = icmp ult i64 %i.r, %i.d
  br i1 %i.s, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = load i64, ptr %i.q, align 8, !tbaa !49
  %i.u = icmp ult i64 %i.t, %i.d
  br i1 %i.u, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit, !llvm.loop !0

_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit: ; preds = %.lr.ph.i, %bb.d
  %i.v = load ptr, ptr %0, align 8, !tbaa !11
  %i.w = call noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224) %i.v)
  %i.x = icmp eq i64 %i.w, 0
  %.str.4..str.8 = select i1 %i.x, ptr @.str.4, ptr @.str.8
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull %.str.4..str.8, i64 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit, %bb.a, %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit
  switch i32 %1, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit [
    i32 5, label %bb.f
    i32 1, label %bb.f
    i32 2, label %bb.f
    i32 3, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.y = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 208
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !47, !range !41, !noundef !42
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 210
  %i.ad = load i8, ptr %i.ac, align 2, !range !41
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = select i1 %i.ab, i1 true, i1 %i.ae
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = call noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224) %i.y)
  %i.ah = icmp ne i64 %i.ag, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = phi i1 [ true, %bb.f ], [ %i.ah, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !50, !range !41, !noundef !42
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.aj, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !49 ; 2 uses
  %i.ap = icmp ne i64 %i.ao, 0
  %or.cond.i3 = and i1 %i.ai, %i.ap
  br i1 %or.cond.i3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.aj, ptr noundef nonnull @.str.13, i64 noundef 1)
  %.pre.i = load i64, ptr %i.an, align 8, !tbaa !49
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = phi i64 [ %.pre.i, %bb.k ], [ %i.ao, %bb.j ]
  %i.ar = icmp ult i64 %i.aq, %i.d
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.aj, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = load i64, ptr %i.an, align 8, !tbaa !49
  %i.at = icmp ult i64 %i.as, %i.d
  br i1 %i.at, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit, !llvm.loop !0

_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit:        ; preds = %.lr.ph.i.i, %bb.l, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter19BlockSeqPrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load i64, ptr %i.d, align 8, !tbaa !51   ; 3 uses
  %i.f = tail call noundef i64 @_ZNK4YAML12EmitterState14CurGroupIndentEv(ptr noundef nonnull align 8 dereferenceable(224) %i.c)
  %i.g = add i64 %i.f, %i.e                       ; 2 uses
  %i.h = icmp eq i32 %1, 0
  br i1 %i.h, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  %i.k = load i8, ptr %i.j, align 8, !tbaa !47, !range !41, !noundef !42
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 210
  %i.n = load i8, ptr %i.m, align 2, !range !41
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.l, i1 true, i1 %i.o
  br i1 %i.p, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224) %i.i)
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i8, ptr %i.r, align 8, !tbaa !50, !range !41, !noundef !42
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.u, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !49
  %i.y = icmp ult i64 %i.x, %i.e
  br i1 %i.y, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.v, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = load i64, ptr %i.w, align 8, !tbaa !49
  %i.aa = icmp ult i64 %i.z, %i.e
  br i1 %i.aa, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit, !llvm.loop !0

_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit: ; preds = %.lr.ph.i, %bb.f
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.v, ptr noundef nonnull @.str.9, i64 noundef 1)
  br label %bb.g

bb.g:                                             ; preds = %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit, %bb.b
  switch i32 %1, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit [
    i32 6, label %bb.m
    i32 1, label %bb.h
    i32 2, label %bb.h
    i32 3, label %bb.h
    i32 5, label %bb.h
    i32 4, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit.sink.split
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g
  %i.ab = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !47, !range !41, !noundef !42
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 210
  %i.ag = load i8, ptr %i.af, align 2, !range !41
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = select i1 %i.ae, i1 true, i1 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !50, !range !41, !noundef !42
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.aj, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !49 ; 2 uses
  %i.ap = icmp ne i64 %i.ao, 0
  %or.cond.i = and i1 %i.ai, %i.ap
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.aj, ptr noundef nonnull @.str.13, i64 noundef 1)
  %.pre.i = load i64, ptr %i.an, align 8, !tbaa !49
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = phi i64 [ %.pre.i, %bb.k ], [ %i.ao, %bb.j ]
  %i.ar = icmp ult i64 %i.aq, %i.g
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.aj, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = load i64, ptr %i.an, align 8, !tbaa !49
  %i.at = icmp ult i64 %i.as, %i.g
  br i1 %i.at, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit, !llvm.loop !0

bb.m:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 208
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !47, !range !41, !noundef !42
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 210
  %i.az = load i8, ptr %i.ay, align 2, !range !41
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = select i1 %i.ax, i1 true, i1 %i.ba
  br i1 %i.bb, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !50, !range !41, !noundef !42
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit.sink.split, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit.sink.split: ; preds = %bb.m, %bb.n, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.bf, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit:        ; preds = %.lr.ph.i.i, %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit.sink.split, %bb.l, %bb.g, %bb.n, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter18FlowMapPrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = tail call noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224) %i.a)
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  %i.e = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load i32, ptr %i.f, align 4, !tbaa !54
  %i.h = icmp eq i32 %i.g, 34
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4YAML12EmitterState10SetLongKeyEv(ptr noundef nonnull align 8 dereferenceable(224) %i.e)
  %.pre = load ptr, ptr %0, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.e, %bb.b ]
  %i.j = tail call noundef zeroext i1 @_ZNK4YAML12EmitterState15CurGroupLongKeyEv(ptr noundef nonnull align 8 dereferenceable(224) %i.i)
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4YAML7Emitter21FlowMapPrepareLongKeyENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1)
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4YAML7Emitter23FlowMapPrepareSimpleKeyENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1)
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZNK4YAML12EmitterState15CurGroupLongKeyEv(ptr noundef nonnull align 8 dereferenceable(224) %i.e)
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4YAML7Emitter26FlowMapPrepareLongKeyValueENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4YAML7Emitter28FlowMapPrepareSimpleKeyValueENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter19BlockMapPrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = tail call noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224) %i.a)
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  %i.e = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load i32, ptr %i.f, align 4, !tbaa !54
  %i.h = icmp eq i32 %i.g, 34
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4YAML12EmitterState10SetLongKeyEv(ptr noundef nonnull align 8 dereferenceable(224) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  switch i32 %1, label %bb.f [
    i32 6, label %bb.e
    i32 4, label %bb.e
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @_ZN4YAML12EmitterState10SetLongKeyEv(ptr noundef nonnull align 8 dereferenceable(224) %i.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.j = load ptr, ptr %0, align 8, !tbaa !11
  %i.k = tail call noundef zeroext i1 @_ZNK4YAML12EmitterState15CurGroupLongKeyEv(ptr noundef nonnull align 8 dereferenceable(224) %i.j)
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4YAML7Emitter22BlockMapPrepareLongKeyENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1)
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN4YAML7Emitter24BlockMapPrepareSimpleKeyENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1)
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZNK4YAML12EmitterState15CurGroupLongKeyEv(ptr noundef nonnull align 8 dereferenceable(224) %i.e)
  br i1 %i.l, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4YAML7Emitter27BlockMapPrepareLongKeyValueENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @_ZN4YAML7Emitter29BlockMapPrepareSimpleKeyValueENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter15SpaceOrIndentToEbm(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i8, ptr %i.c, align 8, !tbaa !50, !range !41, !noundef !42
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.b, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %i.h = icmp ne i64 %i.g, 0
  %or.cond = and i1 %1, %i.h
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.b, ptr noundef nonnull @.str.13, i64 noundef 1)
  %.pre = load i64, ptr %i.f, align 8, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i64 [ %.pre, %bb.d ], [ %i.g, %bb.c ]
  %i.j = icmp ult i64 %i.i, %2
  br i1 %i.j, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.b, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = load i64, ptr %i.f, align 8, !tbaa !49
  %i.l = icmp ult i64 %i.k, %2
  br i1 %i.l, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit, !llvm.loop !0

_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit: ; preds = %.lr.ph.i, %bb.e
  ret void
}

declare noundef i64 @_ZNK4YAML12EmitterState10LastIndentEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

declare noundef i64 @_ZNK4YAML12EmitterState14CurGroupIndentEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

declare void @_ZN4YAML12EmitterState10SetLongKeyEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4YAML12EmitterState15CurGroupLongKeyEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter21FlowMapPrepareLongKeyENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !11
  %i.d = tail call noundef i64 @_ZNK4YAML12EmitterState10LastIndentEv(ptr noundef nonnull align 8 dereferenceable(224) %i.c) ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.g = load i8, ptr %i.f, align 8, !tbaa !47, !range !41, !noundef !42
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 210
  %i.j = load i8, ptr %i.i, align 2, !range !41
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.h, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit

_ZNK4YAML12EmitterState12HasBegunNodeEv.exit:     ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.e, i64 211
  %3 = load i8, ptr %2, align 1, !tbaa !53, !range !41, !noundef !42
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i8, ptr %i.n, align 8, !tbaa !50, !range !41, !noundef !42
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !49
  %i.s = icmp ult i64 %i.r, %i.d
  br i1 %i.s, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = load i64, ptr %i.q, align 8, !tbaa !49
  %i.u = icmp ult i64 %i.t, %i.d
  br i1 %i.u, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit, !llvm.loop !0

_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit: ; preds = %.lr.ph.i, %bb.d
  %i.v = load ptr, ptr %0, align 8, !tbaa !11
  %i.w = call noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224) %i.v)
  %i.x = icmp eq i64 %i.w, 0
  %.str.10..str.11 = select i1 %i.x, ptr @.str.10, ptr @.str.11
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull %.str.10..str.11, i64 noundef 3)
  br label %bb.e

bb.e:                                             ; preds = %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit, %bb.a, %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit
  switch i32 %1, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit [
    i32 5, label %bb.f
    i32 1, label %bb.f
    i32 2, label %bb.f
    i32 3, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.y = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 208
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !47, !range !41, !noundef !42
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 210
  %i.ad = load i8, ptr %i.ac, align 2, !range !41
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = select i1 %i.ab, i1 true, i1 %i.ae
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = call noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224) %i.y)
  %i.ah = icmp ne i64 %i.ag, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = phi i1 [ true, %bb.f ], [ %i.ah, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !50, !range !41, !noundef !42
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.aj, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !49 ; 2 uses
  %i.ap = icmp ne i64 %i.ao, 0
  %or.cond.i3 = and i1 %i.ai, %i.ap
  br i1 %or.cond.i3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.aj, ptr noundef nonnull @.str.13, i64 noundef 1)
  %.pre.i = load i64, ptr %i.an, align 8, !tbaa !49
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = phi i64 [ %.pre.i, %bb.k ], [ %i.ao, %bb.j ]
  %i.ar = icmp ult i64 %i.aq, %i.d
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.aj, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = load i64, ptr %i.an, align 8, !tbaa !49
  %i.at = icmp ult i64 %i.as, %i.d
  br i1 %i.at, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit, !llvm.loop !0

_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit:        ; preds = %.lr.ph.i.i, %bb.l, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter23FlowMapPrepareSimpleKeyENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !11
  %i.d = tail call noundef i64 @_ZNK4YAML12EmitterState10LastIndentEv(ptr noundef nonnull align 8 dereferenceable(224) %i.c) ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.g = load i8, ptr %i.f, align 8, !tbaa !47, !range !41, !noundef !42
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 210
  %i.j = load i8, ptr %i.i, align 2, !range !41
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.h, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit

_ZNK4YAML12EmitterState12HasBegunNodeEv.exit:     ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.e, i64 211
  %3 = load i8, ptr %2, align 1, !tbaa !53, !range !41, !noundef !42
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i8, ptr %i.n, align 8, !tbaa !50, !range !41, !noundef !42
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !49
  %i.s = icmp ult i64 %i.r, %i.d
  br i1 %i.s, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = load i64, ptr %i.q, align 8, !tbaa !49
  %i.u = icmp ult i64 %i.t, %i.d
  br i1 %i.u, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit, !llvm.loop !0

_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit: ; preds = %.lr.ph.i, %bb.d
  %i.v = load ptr, ptr %0, align 8, !tbaa !11
  %i.w = call noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224) %i.v)
  %i.x = icmp eq i64 %i.w, 0
  %.str.6..str.8 = select i1 %i.x, ptr @.str.6, ptr @.str.8
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull %.str.6..str.8, i64 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit, %bb.a, %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit
  switch i32 %1, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit [
    i32 5, label %bb.f
    i32 1, label %bb.f
    i32 2, label %bb.f
    i32 3, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.y = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 208
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !47, !range !41, !noundef !42
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 210
  %i.ad = load i8, ptr %i.ac, align 2, !range !41
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = select i1 %i.ab, i1 true, i1 %i.ae
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = call noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224) %i.y)
  %i.ah = icmp ne i64 %i.ag, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = phi i1 [ true, %bb.f ], [ %i.ah, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !50, !range !41, !noundef !42
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.aj, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !49 ; 2 uses
  %i.ap = icmp ne i64 %i.ao, 0
  %or.cond.i3 = and i1 %i.ai, %i.ap
  br i1 %or.cond.i3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.aj, ptr noundef nonnull @.str.13, i64 noundef 1)
  %.pre.i = load i64, ptr %i.an, align 8, !tbaa !49
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = phi i64 [ %.pre.i, %bb.k ], [ %i.ao, %bb.j ]
  %i.ar = icmp ult i64 %i.aq, %i.d
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.aj, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = load i64, ptr %i.an, align 8, !tbaa !49
  %i.at = icmp ult i64 %i.as, %i.d
  br i1 %i.at, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit, !llvm.loop !0

_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit:        ; preds = %.lr.ph.i.i, %bb.l, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter26FlowMapPrepareLongKeyValueENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !11
  %i.d = tail call noundef i64 @_ZNK4YAML12EmitterState10LastIndentEv(ptr noundef nonnull align 8 dereferenceable(224) %i.c) ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.g = load i8, ptr %i.f, align 8, !tbaa !47, !range !41, !noundef !42
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 210
  %i.j = load i8, ptr %i.i, align 2, !range !41
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.h, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit

_ZNK4YAML12EmitterState12HasBegunNodeEv.exit:     ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.e, i64 211
  %3 = load i8, ptr %2, align 1, !tbaa !53, !range !41, !noundef !42
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i8, ptr %i.n, align 8, !tbaa !50, !range !41, !noundef !42
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !49
  %i.s = icmp ult i64 %i.r, %i.d
  br i1 %i.s, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = load i64, ptr %i.q, align 8, !tbaa !49
  %i.u = icmp ult i64 %i.t, %i.d
  br i1 %i.u, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit, !llvm.loop !0

_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit: ; preds = %.lr.ph.i, %bb.d
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull @.str.12, i64 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit, %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit
  switch i32 %1, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit [
    i32 5, label %bb.f
    i32 1, label %bb.f
    i32 2, label %bb.f
    i32 3, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.v = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 208
  %i.x = load i8, ptr %i.w, align 8, !tbaa !47, !range !41, !noundef !42
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 210
  %i.aa = load i8, ptr %i.z, align 2, !range !41
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = select i1 %i.y, i1 true, i1 %i.ab
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = call noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224) %i.v)
  %i.ae = icmp ne i64 %i.ad, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = phi i1 [ true, %bb.f ], [ %i.ae, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !50, !range !41, !noundef !42
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.ag, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !49 ; 2 uses
  %i.am = icmp ne i64 %i.al, 0
  %or.cond.i3 = and i1 %i.af, %i.am
  br i1 %or.cond.i3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.ag, ptr noundef nonnull @.str.13, i64 noundef 1)
  %.pre.i = load i64, ptr %i.ak, align 8, !tbaa !49
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.an = phi i64 [ %.pre.i, %bb.k ], [ %i.al, %bb.j ]
  %i.ao = icmp ult i64 %i.an, %i.d
  br i1 %i.ao, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.ag, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !49
  %i.aq = icmp ult i64 %i.ap, %i.d
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit, !llvm.loop !0

_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit:        ; preds = %.lr.ph.i.i, %bb.l, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter28FlowMapPrepareSimpleKeyValueENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !11
  %i.d = tail call noundef i64 @_ZNK4YAML12EmitterState10LastIndentEv(ptr noundef nonnull align 8 dereferenceable(224) %i.c) ; 4 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.g = load i8, ptr %i.f, align 8, !tbaa !47, !range !41, !noundef !42
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 210
  %i.j = load i8, ptr %i.i, align 2, !range !41
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = select i1 %i.h, i1 true, i1 %i.k
  br i1 %i.l, label %bb.g, label %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit

_ZNK4YAML12EmitterState12HasBegunNodeEv.exit:     ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.e, i64 211
  %3 = load i8, ptr %2, align 1, !tbaa !53, !range !41, !noundef !42
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb.g, label %bb.b

bb.b:                                             ; preds = %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i8, ptr %i.n, align 8, !tbaa !50, !range !41, !noundef !42
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !49
  %i.s = icmp ult i64 %i.r, %i.d
  br i1 %i.s, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = load i64, ptr %i.q, align 8, !tbaa !49
  %i.u = icmp ult i64 %i.t, %i.d
  br i1 %i.u, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit, !llvm.loop !0

_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit: ; preds = %.lr.ph.i, %bb.d
  %i.v = load ptr, ptr %0, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 209
  %i.x = load i8, ptr %i.w, align 1, !tbaa !55, !range !41, !noundef !42
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull @.str.13, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.m, ptr noundef nonnull @.str.12, i64 noundef 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit
  switch i32 %1, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit [
    i32 5, label %bb.h
    i32 1, label %bb.h
    i32 2, label %bb.h
    i32 3, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g
  %i.z = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 208
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !47, !range !41, !noundef !42
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 210
  %i.ae = load i8, ptr %i.ad, align 2, !range !41
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = select i1 %i.ac, i1 true, i1 %i.af
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = call noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224) %i.z)
  %i.ai = icmp ne i64 %i.ah, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = phi i1 [ true, %bb.h ], [ %i.ai, %bb.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load i8, ptr %i.al, align 8, !tbaa !50, !range !41, !noundef !42
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.ak, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !49 ; 2 uses
  %i.aq = icmp ne i64 %i.ap, 0
  %or.cond.i3 = and i1 %i.aj, %i.aq
  br i1 %or.cond.i3, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.ak, ptr noundef nonnull @.str.13, i64 noundef 1)
  %.pre.i = load i64, ptr %i.ao, align 8, !tbaa !49
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = phi i64 [ %.pre.i, %bb.m ], [ %i.ap, %bb.l ]
  %i.as = icmp ult i64 %i.ar, %i.d
  br i1 %i.as, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

.lr.ph.i.i:                                       ; preds = %bb.n, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.ak, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.at = load i64, ptr %i.ao, align 8, !tbaa !49
  %i.au = icmp ult i64 %i.at, %i.d
  br i1 %i.au, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit, !llvm.loop !0

_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit:        ; preds = %.lr.ph.i.i, %bb.n, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter22BlockMapPrepareLongKeyENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load i64, ptr %i.d, align 8, !tbaa !51   ; 3 uses
  %i.f = tail call noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224) %i.c)
  %i.g = icmp eq i32 %1, 0
  br i1 %i.g, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %i.j = load i8, ptr %i.i, align 8, !tbaa !47, !range !41, !noundef !42
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 210
  %i.m = load i8, ptr %i.l, align 2, !range !41
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.k, i1 true, i1 %i.n
  br i1 %i.o, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.p, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i8, ptr %i.r, align 8, !tbaa !50, !range !41, !noundef !42
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.q, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !49
  %i.w = icmp ult i64 %i.v, %i.e
  br i1 %i.w, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.q, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = load i64, ptr %i.u, align 8, !tbaa !49
  %i.y = icmp ult i64 %i.x, %i.e
  br i1 %i.y, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit, !llvm.loop !0

_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit: ; preds = %.lr.ph.i, %bb.g
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.q, ptr noundef nonnull @.str.14, i64 noundef 1)
  br label %bb.h

bb.h:                                             ; preds = %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit, %bb.b
  switch i32 %1, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit [
    i32 6, label %bb.n
    i32 1, label %bb.i
    i32 2, label %bb.i
    i32 3, label %bb.i
    i32 5, label %bb.i
    i32 4, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %i.z = add i64 %i.e, 1                          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !50, !range !41, !noundef !42
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.aa, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !49
  %.not6 = icmp eq i64 %i.af, 0
  br i1 %.not6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.aa, ptr noundef nonnull @.str.13, i64 noundef 1)
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !49
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ag = phi i64 [ %.pre.i, %bb.l ], [ 0, %bb.k ]
  %i.ah = icmp ult i64 %i.ag, %i.z
  br i1 %i.ah, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.aa, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = load i64, ptr %i.ae, align 8, !tbaa !49
  %i.aj = icmp ult i64 %i.ai, %i.z
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit, !llvm.loop !0

bb.n:                                             ; preds = %bb.h, %bb.h
  %i.ak = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 208
  %i.am = load i8, ptr %i.al, align 8, !tbaa !47, !range !41, !noundef !42
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 210
  %i.ap = load i8, ptr %i.ao, align 2, !range !41
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = select i1 %i.an, i1 true, i1 %i.aq
  br i1 %i.ar, label %bb.o, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.as, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit:        ; preds = %.lr.ph.i.i, %bb.m, %bb.h, %bb.o, %bb.n, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter24BlockMapPrepareSimpleKeyENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = load i64, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = tail call noundef i64 @_ZNK4YAML12EmitterState18CurGroupChildCountEv(ptr noundef nonnull align 8 dereferenceable(224) %i.b)
  %i.f = icmp eq i32 %1, 0
  br i1 %i.f, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.i = load i8, ptr %i.h, align 8, !tbaa !47, !range !41, !noundef !42
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 210
  %i.l = load i8, ptr %i.k, align 2, !range !41
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 true, i1 %i.m
  br i1 %i.n, label %bb.d, label %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit

_ZNK4YAML12EmitterState12HasBegunNodeEv.exit:     ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 211
  %3 = load i8, ptr %2, align 1, !tbaa !53, !range !41, !noundef !42
  %4 = trunc nuw i8 %3 to i1
  %5 = icmp eq i64 %i.e, 0
  %or.cond.not = or i1 %5, %4
  br i1 %or.cond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.o, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit
  switch i32 %1, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit [
    i32 5, label %bb.e
    i32 1, label %bb.e
    i32 2, label %bb.e
    i32 3, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.p = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %i.r = load i8, ptr %i.q, align 8, !tbaa !47, !range !41, !noundef !42
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 210
  %i.u = load i8, ptr %i.t, align 2, !range !41
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = select i1 %i.s, i1 true, i1 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load i8, ptr %i.y, align 8, !tbaa !50, !range !41, !noundef !42
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.x, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !49 ; 2 uses
  %i.ad = icmp ne i64 %i.ac, 0
  %or.cond.i6 = and i1 %i.w, %i.ad
  br i1 %or.cond.i6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.x, ptr noundef nonnull @.str.13, i64 noundef 1)
  %.pre.i = load i64, ptr %i.ab, align 8, !tbaa !49
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = phi i64 [ %.pre.i, %bb.h ], [ %i.ac, %bb.g ]
  %i.af = icmp ult i64 %i.ae, %i.d
  br i1 %i.af, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.x, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.ah = icmp ult i64 %i.ag, %i.d
  br i1 %i.ah, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit, !llvm.loop !0

_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit:        ; preds = %.lr.ph.i.i, %bb.i, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter27BlockMapPrepareLongKeyValueENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = load i64, ptr %i.e, align 8, !tbaa !51   ; 4 uses
  %i.g = icmp eq i32 %1, 0
  br i1 %i.g, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.i = load i8, ptr %i.h, align 8, !tbaa !47, !range !41, !noundef !42
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 210
  %i.l = load i8, ptr %i.k, align 2, !range !41
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 true, i1 %i.m
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.o, ptr noundef nonnull @.str.1, i64 noundef 1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !49
  %i.r = icmp ult i64 %i.q, %i.f
  br i1 %i.r, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 32, ptr %i.c, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.o, ptr noundef nonnull %i.c, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = load i64, ptr %i.p, align 8, !tbaa !49
  %i.t = icmp ult i64 %i.s, %i.f
  br i1 %i.t, label %.lr.ph.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit, !llvm.loop !0

_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit: ; preds = %.lr.ph.i, %bb.c
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.o, ptr noundef nonnull @.str.12, i64 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_8IndentToE.exit, %bb.b
  switch i32 %1, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit [
    i32 6, label %bb.j
    i32 1, label %bb.e
    i32 2, label %bb.e
    i32 3, label %bb.e
    i32 5, label %bb.e
    i32 4, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.u = add i64 %i.f, 1                          ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load i8, ptr %i.w, align 8, !tbaa !50, !range !41, !noundef !42
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.v, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !49
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.v, ptr noundef nonnull @.str.13, i64 noundef 1)
  %.pre.i = load i64, ptr %i.z, align 8, !tbaa !49
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = phi i64 [ %.pre.i, %bb.h ], [ 0, %bb.g ]
  %i.ac = icmp ult i64 %i.ab, %i.u
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 32, ptr %i.b, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.v, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !49
  %i.ae = icmp ult i64 %i.ad, %i.u
  br i1 %i.ae, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit, !llvm.loop !0

bb.j:                                             ; preds = %bb.d, %bb.d
  %i.af = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 208
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !47, !range !41, !noundef !42
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 210
  %i.ak = load i8, ptr %i.aj, align 2, !range !41
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = select i1 %i.ai, i1 true, i1 %i.al
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.an, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = add i64 %i.f, 1                         ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !50, !range !41, !noundef !42
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.ap, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !49
  %.not9 = icmp eq i64 %i.au, 0
  br i1 %.not9, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.ap, ptr noundef nonnull @.str.13, i64 noundef 1)
  %.pre.i6 = load i64, ptr %i.at, align 8, !tbaa !49
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.av = phi i64 [ %.pre.i6, %bb.o ], [ 0, %bb.n ]
  %i.aw = icmp ult i64 %i.av, %i.ao
  br i1 %i.aw, label %.lr.ph.i.i5, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

.lr.ph.i.i5:                                      ; preds = %bb.p, %.lr.ph.i.i5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.ap, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ax = load i64, ptr %i.at, align 8, !tbaa !49
  %i.ay = icmp ult i64 %i.ax, %i.ao
  br i1 %i.ay, label %.lr.ph.i.i5, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit, !llvm.loop !0

_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit:        ; preds = %.lr.ph.i.i, %.lr.ph.i.i5, %bb.p, %bb.i, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter29BlockMapPrepareSimpleKeyValueENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = load i64, ptr %i.c, align 8, !tbaa !51
  %i.e = tail call noundef i64 @_ZNK4YAML12EmitterState14CurGroupIndentEv(ptr noundef nonnull align 8 dereferenceable(224) %i.b)
  %i.f = add i64 %i.e, %i.d                       ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  %i.i = load i8, ptr %i.h, align 8, !tbaa !47, !range !41, !noundef !42
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 210
  %i.l = load i8, ptr %i.k, align 2, !range !41
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.j, i1 true, i1 %i.m
  br i1 %i.n, label %bb.e, label %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit

_ZNK4YAML12EmitterState12HasBegunNodeEv.exit:     ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 211
  %3 = load i8, ptr %2, align 1, !tbaa !53, !range !41, !noundef !42
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 209
  %i.p = load i8, ptr %i.o, align 1, !tbaa !55, !range !41, !noundef !42
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.r, ptr noundef nonnull @.str.13, i64 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.s, ptr noundef nonnull @.str.12, i64 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_ZNK4YAML12EmitterState12HasBegunNodeEv.exit
  switch i32 %1, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit [
    i32 6, label %bb.k
    i32 1, label %bb.f
    i32 2, label %bb.f
    i32 3, label %bb.f
    i32 5, label %bb.f
    i32 4, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i8, ptr %i.u, align 8, !tbaa !50, !range !41, !noundef !42
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.t, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !49
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.t, ptr noundef nonnull @.str.13, i64 noundef 1)
  %.pre.i = load i64, ptr %i.x, align 8, !tbaa !49
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = phi i64 [ %.pre.i, %bb.i ], [ 0, %bb.h ]
  %i.aa = icmp ult i64 %i.z, %i.f
  br i1 %i.aa, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.t, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !49
  %i.ac = icmp ult i64 %i.ab, %i.f
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit, !llvm.loop !0

bb.k:                                             ; preds = %bb.e, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.ad, ptr noundef nonnull @.str.1, i64 noundef 1)
  br label %_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit

_ZN4YAML7Emitter15SpaceOrIndentToEbm.exit:        ; preds = %.lr.ph.i.i, %bb.j, %bb.k, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK4YAML7Emitter21PrepareIntegralStreamERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load i32, ptr %i.b, align 4, !tbaa !54
  switch i32 %i.c, label %bb.e [
    i32 21, label %bb.b
    i32 22, label %bb.c
    i32 23, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.15, i64 noundef 2) ; 0 uses
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.16, i64 noundef 1) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d
  %.sink10 = phi ptr [ %i.g, %bb.d ], [ %i.e, %bb.c ], [ %i.d, %bb.b ]
  %.sink8 = phi i32 [ 64, %bb.d ], [ 8, %bb.c ], [ 2, %bb.b ]
  %.sink12 = load ptr, ptr %.sink10, align 8, !tbaa !74
  %i.i = getelementptr i8, ptr %.sink12, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 40       ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !83
  %i.n = and i32 %i.m, -75
  %i.o = or disjoint i32 %i.n, %.sink8
  store i32 %i.o, ptr %i.l, align 8, !tbaa !84
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4YAML7Emitter13StartedScalarEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @_ZN4YAML12EmitterState13StartedScalarEv(ptr noundef nonnull align 8 dereferenceable(224) %i.a)
  ret void
}

declare void @_ZN4YAML12EmitterState13StartedScalarEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN4YAML22GetStringEscapingStyleENS_13EMITTER_MANIPE(i32 noundef %0) local_unnamed_addr #10 {
bb.a:
  %switch.selectcmp = icmp eq i32 %0, 5
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  %switch.selectcmp2 = icmp eq i32 %0, 4
  %switch.select3 = select i1 %switch.selectcmp2, i32 1, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull returned align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !40, !range !41, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !54   ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.e, 5
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 0
  %switch.selectcmp2.i = icmp eq i32 %i.e, 4      ; 2 uses
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 1, i32 %switch.select.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !54
  %i.h = tail call noundef i32 @_ZNK4YAML12EmitterState16CurGroupFlowTypeEv(ptr noundef nonnull align 8 dereferenceable(224) %i.a)
  %i.i = tail call noundef i32 @_ZN4YAML5Utils19ComputeStringFormatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13EMITTER_MANIPENS_8FlowType5valueEb(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.g, i32 noundef %i.h, i1 noundef zeroext %switch.selectcmp2.i) ; 2 uses
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !45
  %i.m = icmp ugt i64 %i.l, 1024
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !11
  %i.o = tail call noundef zeroext i1 @_ZN4YAML12EmitterState15SetMapKeyFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(224) %i.n, i32 noundef 34, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN4YAML7Emitter11PrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 2)
  switch i32 %i.i, label %bb.j [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4YAML15ostream_wrapper5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(57) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = tail call noundef zeroext i1 @_ZN4YAML5Utils23WriteSingleQuotedStringERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(57) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = tail call noundef zeroext i1 @_ZN4YAML5Utils23WriteDoubleQuotedStringERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14StringEscaping5valueE(ptr noundef nonnull align 8 dereferenceable(57) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %switch.select3.i) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.x = load i64, ptr %i.w, align 8, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.z = load i64, ptr %i.y, align 8, !tbaa !56
  %i.aa = add i64 %i.z, %i.x
  %i.ab = tail call noundef zeroext i1 @_ZN4YAML5Utils18WriteLiteralStringERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr noundef nonnull align 8 dereferenceable(57) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aa) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ac = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @_ZN4YAML12EmitterState13StartedScalarEv(ptr noundef nonnull align 8 dereferenceable(224) %i.ac)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret ptr %0
}

declare noundef i32 @_ZN4YAML5Utils19ComputeStringFormatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13EMITTER_MANIPENS_8FlowType5valueEb(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4YAML5Utils23WriteSingleQuotedStringERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4YAML5Utils23WriteDoubleQuotedStringERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14StringEscaping5valueE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4YAML5Utils18WriteLiteralStringERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4YAML7Emitter17GetFloatPrecisionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load i64, ptr %i.b, align 8, !tbaa !56
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK4YAML7Emitter18GetDoublePrecisionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load i64, ptr %i.b, align 8, !tbaa !56
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_ZNK4YAML7Emitter19ComputeFullBoolNameEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !54
  %i.d = icmp eq i32 %i.c, 20
  br i1 %i.d, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.f = load i32, ptr %i.e, align 4, !tbaa !54
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load i32, ptr %i.i, align 4, !tbaa !54   ; 3 uses
  switch i32 %i.h, label %bb.o [
    i32 13, label %bb.c
    i32 15, label %bb.g
    i32 14, label %bb.k
  ]

bb.c:                                             ; preds = %.thread, %bb.b
  %i.k = phi i32 [ %i.f, %.thread ], [ %i.j, %bb.b ]
  switch i32 %i.k, label %bb.o [
    i32 16, label %bb.d
    i32 18, label %bb.e
    i32 17, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = select i1 %1, ptr @.str.17, ptr @.str.18
  br label %bb.p

bb.e:                                             ; preds = %bb.c
  %i.m = select i1 %1, ptr @.str.19, ptr @.str.20
  br label %bb.p

bb.f:                                             ; preds = %bb.c
  %i.n = select i1 %1, ptr @.str.21, ptr @.str.22
  br label %bb.p

bb.g:                                             ; preds = %bb.b
  switch i32 %i.j, label %bb.o [
    i32 16, label %bb.h
    i32 18, label %bb.i
    i32 17, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.o = select i1 %1, ptr @.str.23, ptr @.str.24
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.p = select i1 %1, ptr @.str.25, ptr @.str.26
  br label %bb.p

bb.j:                                             ; preds = %bb.g
  %i.q = select i1 %1, ptr @.str.27, ptr @.str.28
  br label %bb.p

bb.k:                                             ; preds = %bb.b
  switch i32 %i.j, label %bb.o [
    i32 16, label %bb.l
    i32 18, label %bb.m
    i32 17, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.r = select i1 %1, ptr @.str.29, ptr @.str.30
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.s = select i1 %1, ptr @.str.31, ptr @.str.32
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.t = select i1 %1, ptr @.str.33, ptr @.str.34
  br label %bb.p

bb.o:                                             ; preds = %bb.b, %bb.k, %bb.g, %bb.c
  %.str.35..str.36 = select i1 %1, ptr @.str.35, ptr @.str.36
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d
  %.0 = phi ptr [ %.str.35..str.36, %bb.o ], [ %i.l, %bb.d ], [ %i.m, %bb.e ], [ %i.n, %bb.f ], [ %i.o, %bb.h ], [ %i.p, %bb.i ], [ %i.q, %bb.j ], [ %i.r, %bb.l ], [ %i.s, %bb.m ], [ %i.t, %bb.n ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_ZNK4YAML7Emitter15ComputeNullNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.c = load i32, ptr %i.b, align 4, !tbaa !54
  %switch.tableidx = add i32 %i.c, -9             ; 2 uses
  %i.d = icmp ult i32 %switch.tableidx, 3
  br i1 %i.d, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4YAML7Emitter5WriteERKNS_5_NullE, i64 %i.e
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.40, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteEb(ptr noundef nonnull returned align 8 dereferenceable(72) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !11
  %i.d = load i8, ptr %i.c, align 8, !tbaa !40, !range !41, !noundef !42
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4YAML7Emitter11PrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 2)
  %i.f = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54
  %i.i = icmp eq i32 %i.h, 20                     ; 2 uses
  br i1 %i.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.m = load i32, ptr %i.l, align 4, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.o = load i32, ptr %i.n, align 4, !tbaa !54   ; 3 uses
  switch i32 %i.m, label %bb.p [
    i32 13, label %bb.d
    i32 15, label %bb.h
    i32 14, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c, %.thread.i
  %i.p = phi i32 [ %i.k, %.thread.i ], [ %i.o, %bb.c ]
  switch i32 %i.p, label %bb.p [
    i32 16, label %bb.e
    i32 18, label %bb.f
    i32 17, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = select i1 %1, ptr @.str.17, ptr @.str.18
  br label %_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit

bb.f:                                             ; preds = %bb.d
  %i.r = select i1 %1, ptr @.str.19, ptr @.str.20
  br label %_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit

bb.g:                                             ; preds = %bb.d
  %i.s = select i1 %1, ptr @.str.21, ptr @.str.22
  br label %_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit

bb.h:                                             ; preds = %bb.c
  switch i32 %i.o, label %bb.p [
    i32 16, label %bb.i
    i32 18, label %bb.j
    i32 17, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.t = select i1 %1, ptr @.str.23, ptr @.str.24
  br label %_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.u = select i1 %1, ptr @.str.25, ptr @.str.26
  br label %_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit.thread

bb.k:                                             ; preds = %bb.h
  %i.v = select i1 %1, ptr @.str.27, ptr @.str.28
  br label %_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit.thread

bb.l:                                             ; preds = %bb.c
  switch i32 %i.o, label %bb.p [
    i32 16, label %bb.m
    i32 18, label %bb.n
    i32 17, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.w = select i1 %1, ptr @.str.29, ptr @.str.30
  br label %_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.x = select i1 %1, ptr @.str.31, ptr @.str.32
  br label %_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit.thread

bb.o:                                             ; preds = %bb.l
  %i.y = select i1 %1, ptr @.str.33, ptr @.str.34
  br label %_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit.thread

bb.p:                                             ; preds = %bb.l, %bb.h, %bb.d, %bb.c
  %.str.35..str.36.i = select i1 %1, ptr @.str.35, ptr @.str.36
  br label %_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit

_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit:    ; preds = %bb.e, %bb.f, %bb.g, %bb.p
  %.0.i = phi ptr [ %.str.35..str.36.i, %bb.p ], [ %i.q, %bb.e ], [ %i.r, %bb.f ], [ %i.s, %bb.g ] ; 2 uses
  br i1 %i.i, label %bb.q, label %_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit.thread

bb.q:                                             ; preds = %_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i8, ptr %.0.i, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.aa, ptr %i.b, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.z, ptr noundef nonnull %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit.thread: ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit
  %.0.i14 = phi ptr [ %.0.i, %_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit ], [ %i.y, %bb.o ], [ %i.x, %bb.n ], [ %i.w, %bb.m ], [ %i.v, %bb.k ], [ %i.u, %bb.j ], [ %i.t, %bb.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !43
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i14) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !46
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit.thread
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !44
  %i.af = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit.thread
  %i.ag = phi ptr [ %i.ae, %.noexc.i ], [ %i.ab, %_ZNK4YAML7Emitter19ComputeFullBoolNameEb.exit.thread ] ; 2 uses
  switch i64 %i.ac, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.ah = load i8, ptr %.0.i14, align 1, !tbaa !22
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !22
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %.0.i14, i64 %i.ac, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !45
  %i.ak = load ptr, ptr %2, align 8, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4YAML15ostream_wrapper5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(57) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN4YAMLlsERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.u

_ZN4YAMLlsERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.t
  %i.an = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ab
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4YAMLlsERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ap = load i64, ptr %i.ab, align 8, !tbaa !22
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4YAMLlsERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ab
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.u
  %i.au = load i64, ptr %i.ab, align 8, !tbaa !22
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.ar

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.q
  %i.aw = load ptr, ptr %0, align 8, !tbaa !11
  call void @_ZN4YAML12EmitterState13StartedScalarEv(ptr noundef nonnull align 8 dereferenceable(224) %i.aw)
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %bb.v
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteEc(ptr noundef nonnull returned align 8 dereferenceable(72) %0, i8 noundef signext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = load i8, ptr %i.a, align 8, !tbaa !40, !range !41, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4YAML7Emitter11PrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %0, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i32, ptr %i.f, align 4, !tbaa !54   ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.g, 5
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 0
  %switch.selectcmp2.i = icmp eq i32 %i.g, 4
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 1, i32 %switch.select.i
  %i.h = tail call noundef zeroext i1 @_ZN4YAML5Utils9WriteCharERNS_15ostream_wrapperEcNS_14StringEscaping5valueE(ptr noundef nonnull align 8 dereferenceable(57) %i.d, i8 noundef signext %1, i32 noundef %switch.select3.i) ; 0 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @_ZN4YAML12EmitterState13StartedScalarEv(ptr noundef nonnull align 8 dereferenceable(224) %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

declare noundef zeroext i1 @_ZN4YAML5Utils9WriteCharERNS_15ostream_wrapperEcNS_14StringEscaping5valueE(ptr noundef nonnull align 8 dereferenceable(57), i8 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteERKNS_6_AliasE(ptr noundef nonnull returned align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 5 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !40, !range !41, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.e = load i8, ptr %i.d, align 8, !tbaa !47, !range !41, !noundef !42
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 210
  %i.h = load i8, ptr %i.g, align 2, !tbaa !48, !range !41, !noundef !42
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.j, ptr noundef nonnull align 1 dereferenceable(13) @.str.41, i64 13, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 13, ptr %i.k, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 29
  store i8 0, ptr %i.l, align 1, !tbaa !22
  store i8 0, ptr %i.a, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d

_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i
  %i.n = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.j
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.p = load i64, ptr %i.j, align 8, !tbaa !22
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.h

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.j
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.d
  %i.u = load i64, ptr %i.j, align 8, !tbaa !22
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4YAML7Emitter11PrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 2)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = tail call noundef zeroext i1 @_ZN4YAML5Utils10WriteAliasERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(57) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.y = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  br i1 %i.x, label %bb.g, label %._crit_edge.i.i16

._crit_edge.i.i16:                                ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.z, ptr noundef nonnull align 1 dereferenceable(13) @.str.41, i64 13, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 13, ptr %i.aa, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 0, ptr %i.ab, align 1, !tbaa !22
  store i8 0, ptr %i.y, align 8, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit21 unwind label %bb.f

_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit21: ; preds = %._crit_edge.i.i16
  %i.ad = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.z
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit21
  %i.af = load i64, ptr %i.z, align 8, !tbaa !22
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge.i.i16
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.z
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.f
  %i.ak = load i64, ptr %i.z, align 8, !tbaa !22
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN4YAML12EmitterState13StartedScalarEv(ptr noundef nonnull align 8 dereferenceable(224) %i.y)
  %i.am = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @_ZN4YAML12EmitterState8SetAliasEv(ptr noundef nonnull align 8 dereferenceable(224) %i.am)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret ptr %0

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn9.pn = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  resume { ptr, i32 } %.pn9.pn
}

declare noundef zeroext i1 @_ZN4YAML5Utils10WriteAliasERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN4YAML12EmitterState8SetAliasEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteERKNS_7_AnchorE(ptr noundef nonnull returned align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !40, !range !41, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.e = load i8, ptr %i.d, align 8, !tbaa !47, !range !41, !noundef !42
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.g, ptr noundef nonnull align 1 dereferenceable(14) @.str.42, i64 14, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 14, ptr %i.h, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 30
  store i8 0, ptr %i.i, align 2, !tbaa !22
  store i8 0, ptr %i.a, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i
  %i.k = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.g
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.m = load i64, ptr %i.g, align 8, !tbaa !22
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.g

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.g
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.c
  %i.r = load i64, ptr %i.g, align 8, !tbaa !22
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4YAML7Emitter11PrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 1)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = tail call noundef zeroext i1 @_ZN4YAML5Utils11WriteAnchorERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(57) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.v = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  br i1 %i.u, label %bb.f, label %._crit_edge.i.i16

._crit_edge.i.i16:                                ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.w, ptr noundef nonnull align 1 dereferenceable(14) @.str.42, i64 14, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 14, ptr %i.x, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i8 0, ptr %i.y, align 2, !tbaa !22
  store i8 0, ptr %i.v, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit21 unwind label %bb.e

_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit21: ; preds = %._crit_edge.i.i16
  %i.aa = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.w
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit21
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !22
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge.i.i16
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.w
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.e
  %i.ah = load i64, ptr %i.w, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4YAML12EmitterState9SetAnchorEv(ptr noundef nonnull align 8 dereferenceable(224) %i.v)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret ptr %0

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn9.pn = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  resume { ptr, i32 } %.pn9.pn
}

declare noundef zeroext i1 @_ZN4YAML5Utils11WriteAnchorERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN4YAML12EmitterState9SetAnchorEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteERKNS_4_TagE(ptr noundef nonnull returned align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !40, !range !41, !noundef !42
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 210
  %i.e = load i8, ptr %i.d, align 2, !tbaa !48, !range !41, !noundef !42
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.g, ptr noundef nonnull align 1 dereferenceable(11) @.str.43, i64 11, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 11, ptr %i.h, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 27
  store i8 0, ptr %i.i, align 1, !tbaa !22
  store i8 0, ptr %i.a, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i
  %i.k = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.g
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.m = load i64, ptr %i.g, align 8, !tbaa !22
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.h

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.g
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.c
  %i.r = load i64, ptr %i.g, align 8, !tbaa !22
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4YAML7Emitter11PrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 1)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !59
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  switch i32 %i.u, label %.split38 [
    i32 0, label %.split
    i32 1, label %bb.e
  ]

.split:                                           ; preds = %bb.d
  %i.x = tail call noundef zeroext i1 @_ZN4YAML5Utils8WriteTagERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(57) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i1 noundef zeroext true)
  br i1 %i.x, label %bb.g, label %._crit_edge.i.i25

.split38:                                         ; preds = %bb.d
  %i.y = tail call noundef zeroext i1 @_ZN4YAML5Utils18WriteTagWithPrefixERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(57) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  br i1 %i.y, label %bb.g, label %._crit_edge.i.i25

bb.e:                                             ; preds = %bb.d
  %i.z = tail call noundef zeroext i1 @_ZN4YAML5Utils8WriteTagERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(57) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i1 noundef zeroext false)
  br i1 %i.z, label %bb.g, label %._crit_edge.i.i25

._crit_edge.i.i25:                                ; preds = %.split38, %.split, %bb.e
  %i.aa = load ptr, ptr %0, align 8, !tbaa !11    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ab, ptr noundef nonnull align 1 dereferenceable(11) @.str.43, i64 11, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 11, ptr %i.ac, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 27
  store i8 0, ptr %i.ad, align 1, !tbaa !22
  store i8 0, ptr %i.aa, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit30 unwind label %bb.f

_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit30: ; preds = %._crit_edge.i.i25
  %i.af = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.ab
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit30
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZN4YAML12EmitterState8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.h

bb.f:                                             ; preds = %._crit_edge.i.i25
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ab
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.f
  %i.am = load i64, ptr %i.ab, align 8, !tbaa !22
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.i

bb.g:                                             ; preds = %.split38, %.split, %bb.e
  %i.ao = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @_ZN4YAML12EmitterState6SetTagEv(ptr noundef nonnull align 8 dereferenceable(224) %i.ao)
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.g, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret ptr %0

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn18.pn = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ]
  resume { ptr, i32 } %.pn18.pn
}

declare noundef zeroext i1 @_ZN4YAML5Utils8WriteTagERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4YAML5Utils18WriteTagWithPrefixERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN4YAML12EmitterState6SetTagEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4YAML4_TagD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !22
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !22
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteERKNS_8_CommentE(ptr noundef nonnull returned align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !11
  %i.c = load i8, ptr %i.b, align 8, !tbaa !40, !range !41, !noundef !42
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4YAML7Emitter11PrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !49
  %.not = icmp eq i64 %i.g, 0
  %.pre4 = load ptr, ptr %0, align 8, !tbaa !11   ; 3 uses
  br i1 %.not, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_11IndentationE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.pre4, i64 80
  %i.i = load i64, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_11IndentationE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.04.i = phi i64 [ %i.j, %.lr.ph.i ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !22
  call void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57) %i.e, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = add nuw i64 %.04.i, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %i.i
  br i1 %exitcond.not, label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_11IndentationE.exit.loopexit, label %.lr.ph.i, !llvm.loop !85

_ZN4YAMLlsERNS_15ostream_wrapperERKNS_11IndentationE.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !11
  br label %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_11IndentationE.exit

_ZN4YAMLlsERNS_15ostream_wrapperERKNS_11IndentationE.exit: ; preds = %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_11IndentationE.exit.loopexit, %bb.c, %bb.b
  %i.k = phi ptr [ %.pre, %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_11IndentationE.exit.loopexit ], [ %.pre4, %bb.c ], [ %.pre4, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.m = load i64, ptr %i.l, align 8, !tbaa !56
  %i.n = call noundef zeroext i1 @_ZN4YAML5Utils12WriteCommentERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr noundef nonnull align 8 dereferenceable(57) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.m) ; 0 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !11
  call void @_ZN4YAML12EmitterState13SetNonContentEv(ptr noundef nonnull align 8 dereferenceable(224) %i.o)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN4YAMLlsERNS_15ostream_wrapperERKNS_11IndentationE.exit
  ret ptr %0
}

declare noundef zeroext i1 @_ZN4YAML5Utils12WriteCommentERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteERKNS_5_NullE(ptr noundef nonnull returned align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !11
  %i.c = load i8, ptr %i.b, align 8, !tbaa !40, !range !41, !noundef !42
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4YAML7Emitter11PrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.e = load ptr, ptr %0, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.g = load i32, ptr %i.f, align 4, !tbaa !54
  %switch.tableidx = add i32 %i.g, -9             ; 2 uses
  %i.h = icmp ult i32 %switch.tableidx, 3
  br i1 %i.h, label %switch.lookup, label %_ZNK4YAML7Emitter15ComputeNullNameEv.exit

switch.lookup:                                    ; preds = %bb.b
  %i.i = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4YAML7Emitter5WriteERKNS_5_NullE, i64 %i.i
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZNK4YAML7Emitter15ComputeNullNameEv.exit

_ZNK4YAML7Emitter15ComputeNullNameEv.exit:        ; preds = %bb.b, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.40, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !43
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.k, ptr %i.a, align 8, !tbaa !46
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNK4YAML7Emitter15ComputeNullNameEv.exit
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !44
  %i.n = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.n, ptr %i.j, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZNK4YAML7Emitter15ComputeNullNameEv.exit
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.j, %_ZNK4YAML7Emitter15ComputeNullNameEv.exit ] ; 2 uses
  switch i64 %i.k, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %.0.i, align 1, !tbaa !22
  store i8 %i.p, ptr %i.o, align 1, !tbaa !22
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %.0.i, i64 %i.k, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !45
  %i.s = load ptr, ptr %2, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4YAML15ostream_wrapper5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(57) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN4YAMLlsERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.f

_ZN4YAMLlsERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e
  %i.v = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4YAMLlsERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.x = load i64, ptr %i.j, align 8, !tbaa !22
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4YAMLlsERNS_15ostream_wrapperERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.z = load ptr, ptr %0, align 8, !tbaa !11
  call void @_ZN4YAML12EmitterState13StartedScalarEv(ptr noundef nonnull align 8 dereferenceable(224) %i.z)
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.j
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.ad = load i64, ptr %i.j, align 8, !tbaa !22
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %i.aa

bb.g:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteERKNS_6BinaryE(ptr noundef nonnull returned align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"struct.YAML::_Tag", align 8       ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.45, i64 6, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 6, ptr %i.b, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i8 0, ptr %i.c, align 2, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !88
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !43, !noalias !88
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !45, !noalias !88
  store i8 0, ptr %i.d, align 8, !tbaa !22, !noalias !88
  invoke void @_ZN4YAML4_TagC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_4Type5valueE(ptr noundef nonnull align 8 dereferenceable(68) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.f = load ptr, ptr %2, align 8, !tbaa !44, !noalias !88 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.d, align 8, !tbaa !22, !noalias !88
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !44, !noalias !88 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.d
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.d, align 8, !tbaa !22, !noalias !88
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !88
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !88
  %i.o = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN4YAML7Emitter5WriteERKNS_4_TagE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(68) %3)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %bb.c
  %i.t = load i64, ptr %i.r, align 8, !tbaa !22
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  %i.v = load ptr, ptr %3, align 8, !tbaa !44     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN4YAML4_TagD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !22
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #15
  br label %_ZN4YAML4_TagD2Ev.exit

_ZN4YAML4_TagD2Ev.exit:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.aa = load ptr, ptr %4, align 8, !tbaa !44    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.a
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4YAML4_TagD2Ev.exit
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !22
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4YAML4_TagD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.ae = load ptr, ptr %0, align 8, !tbaa !11
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !40, !range !41, !noundef !42
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.e, label %bb.f

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4YAML4_TagD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %3) #16
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.d ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ]
  %i.ai = load ptr, ptr %4, align 8, !tbaa !44    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %.body
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !22
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN4YAML7Emitter11PrepareNodeENS_15EmitterNodeType5valueE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 2)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = call noundef zeroext i1 @_ZN4YAML5Utils11WriteBinaryERNS_15ostream_wrapperERKNS_6BinaryE(ptr noundef nonnull align 8 dereferenceable(57) %i.am, ptr noundef nonnull align 8 dereferenceable(40) %1) ; 0 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !11
  call void @_ZN4YAML12EmitterState13StartedScalarEv(ptr noundef nonnull align 8 dereferenceable(224) %i.ao)
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  ret ptr %0
}

declare noundef zeroext i1 @_ZN4YAML5Utils11WriteBinaryERNS_15ostream_wrapperERKNS_6BinaryE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN4YAML15ostream_wrapper5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN4YAML15ostream_wrapper5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4YAML4_TagC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_4Type5valueE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !43
  %i.d = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %i.f, ptr %i.b, align 8, !tbaa !46
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !44
  %i.i = load i64, ptr %i.b, align 8, !tbaa !46
  store i64 %i.i, ptr %i.c, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !22
  store i8 %i.k, ptr %i.j, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !45
  %i.n = load ptr, ptr %0, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !43
  %i.r = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !45   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.t, ptr %i.a, align 8, !tbaa !46
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i6, label %._crit_edge.i.i5

.noexc.i6:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i6
  store ptr %i.v, ptr %i.p, align 8, !tbaa !44
  %i.w = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.w, ptr %i.q, align 8, !tbaa !22
  br label %._crit_edge.i.i5

._crit_edge.i.i5:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.t, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i5
  %i.y = load i8, ptr %i.r, align 1, !tbaa !22
  store i8 %i.y, ptr %i.x, align 1, !tbaa !22
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i5
  %i.z = load i64, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !45
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %3, ptr %i.ad, align 8, !tbaa !59
  ret void

bb.g:                                             ; preds = %.noexc.i6
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4YAML12EmitterStateD1Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !52}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN4YAML12EmitterStateE", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !13, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !14, i64 0}
!16 = !{!"_ZTSSt6vectorIcSaIcEE", !15, i64 0}
!17 = !{!"p1 _ZTSSo", !9, i64 0}
!18 = !{!"long", !5, i64 0}
!19 = !{!"bool", !5, i64 0}
!20 = !{!"_ZTSN4YAML15ostream_wrapperE", !16, i64 0, !17, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !19, i64 56}
!21 = !{!20, !18, i64 32}
!22 = !{!5, !5, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !18, i64 8, !5, i64 16}
!25 = !{!"_ZTSN4YAML13EMITTER_MANIPE", !5, i64 0}
!26 = !{!"_ZTSN4YAML7SettingINS_13EMITTER_MANIPEEE", !25, i64 0}
!27 = !{!"_ZTSN4YAML7SettingImEE", !18, i64 0}
!28 = !{!"p1 _ZTSSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS1_EE", !9, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !29, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE", !30, i64 0}
!32 = !{!"_ZTSSt6vectorISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EESaIS5_EE", !31, i64 0}
!33 = !{!"_ZTSN4YAML14SettingChangesE", !32, i64 0}
!34 = !{!"p1 _ZTSSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EE", !9, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !35, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE", !36, i64 0}
!38 = !{!"_ZTSSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE", !37, i64 0}
!39 = !{!"_ZTSN4YAML12EmitterStateE", !19, i64 0, !24, i64 8, !26, i64 40, !26, i64 44, !26, i64 48, !26, i64 52, !26, i64 56, !26, i64 60, !26, i64 64, !27, i64 72, !27, i64 80, !27, i64 88, !26, i64 96, !26, i64 100, !26, i64 104, !27, i64 112, !27, i64 120, !33, i64 128, !33, i64 152, !38, i64 176, !18, i64 200, !19, i64 208, !19, i64 209, !19, i64 210, !19, i64 211, !18, i64 216}
!40 = !{!39, !19, i64 0}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!23, !12, i64 0}
!44 = !{!24, !12, i64 0}
!45 = !{!24, !18, i64 8}
!46 = !{!18, !18, i64 0}
!47 = !{!39, !19, i64 208}
!48 = !{!39, !19, i64 210}
!49 = !{!20, !18, i64 48}
!50 = !{!20, !19, i64 56}
!51 = !{!39, !18, i64 200}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!39, !19, i64 211}
!54 = !{!26, !25, i64 0}
!55 = !{!39, !19, i64 209}
!56 = !{!27, !18, i64 0}
!57 = !{!"_ZTSN4YAML4_Tag4Type5valueE", !5, i64 0}
!58 = !{!"_ZTSN4YAML4_TagE", !24, i64 0, !24, i64 32, !57, i64 64}
!59 = !{!58, !57, i64 64}
!60 = !{!20, !17, i64 24}
!61 = !{!13, !12, i64 0}
!62 = distinct !{!62, i1 true, !"_ZNK4YAML12EmitterState12GetLastErrorB5cxx11Ev"}
!63 = distinct !{!63, !62, !"_ZNK4YAML12EmitterState12GetLastErrorB5cxx11Ev: argument 0"}
!64 = !{!63}
!65 = distinct !{!65, i1 true, !"_ZN4YAML8LocalTagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!66 = distinct !{!66, !65, !"_ZN4YAML8LocalTagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!67 = !{!66}
!68 = !{!"_ZTSN4YAML7_IndentE", !6, i64 0}
!69 = !{!68, !6, i64 0}
!70 = !{!"_ZTSN4YAML10_PrecisionE", !6, i64 0, !6, i64 4}
!71 = !{!70, !6, i64 0}
!72 = !{!70, !6, i64 4}
!73 = !{!"vtable pointer", !4, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!76 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!77 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!78 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !18, i64 8}
!79 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!80 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!81 = !{!"_ZTSSt6locale", !80, i64 0}
!82 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !75, i64 24, !76, i64 28, !76, i64 32, !77, i64 40, !78, i64 48, !5, i64 64, !6, i64 192, !79, i64 200, !81, i64 208}
!83 = !{!82, !75, i64 24}
!84 = !{!75, !75, i64 0}
!85 = distinct !{!85, !52}
!86 = distinct !{!86, i1 true, !"_ZN4YAML12SecondaryTagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!87 = distinct !{!87, !86, !"_ZN4YAML12SecondaryTagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!88 = !{!87}
end_hunk_1
