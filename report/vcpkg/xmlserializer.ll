inline.NumInlined: 72
inline.NumDeleted: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.vcpkg::msg::MessageT" = type { i64 }
%"struct.vcpkg::StringLiteral" = type { %"struct.vcpkg::ZStringView" }
%"struct.vcpkg::ZStringView" = type { %"struct.vcpkg::StringView" }
%"struct.vcpkg::StringView" = type { ptr, i64 }
%"struct.vcpkg::LocalizedString" = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.vcpkg::LineInfo" = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [39 x i8] c"<?xml version=\221.0\22 encoding=\22utf-8\22?>\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"=\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"</\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"&apos;\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"/opt-bench/work/vcpkg/vcpkg-tool/src/vcpkg/base/xmlserializer.cpp\00", align 1
@__func__._ZN5vcpkg13XmlSerializer5cdataENS_10StringViewE = private unnamed_addr constant [6 x i8] c"cdata\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"]]>\00", align 1
@_ZN5vcpkg27msgUnsupportedSyntaxInCDATAE = external local_unnamed_addr global %"struct.vcpkg::msg::MessageT", align 8
@.str.11 = private unnamed_addr constant [10 x i8] c"<![CDATA[\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(37) ptr @_ZN5vcpkg13XmlSerializer16emit_declarationEv(ptr noundef nonnull returned align 8 dereferenceable(37) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = add i64 %i.b, -4611686018427387866
  %i.d = icmp ult i64 %i.c, 38
  br i1 %i.d, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #6
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str, i64 noundef 38) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(37) ptr @_ZN5vcpkg13XmlSerializer8open_tagENS_13StringLiteralE(ptr noundef nonnull returned align 8 dereferenceable(37) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.vcpkg::StringLiteral", align 8 ; 3 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !15, !range !18, !noundef !19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 4, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9
  %i.j = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(37) %0, i64 noundef %i.i, i64 noundef 0, i64 noundef %i.g, i8 noundef signext 32) ; 0 uses
  br label %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit

_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 60)
  call void @_ZNK5vcpkg10StringView9to_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %0)
  call void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 62)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !20
  %i.m = add nsw i32 %i.l, 2
  store i32 %i.m, ptr %i.k, align 8, !tbaa !20
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(37) ptr @_ZN5vcpkg13XmlSerializer19emit_pending_indentEv(ptr noundef nonnull returned align 8 dereferenceable(37) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !15, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.h, i64 noundef 0, i64 noundef %i.f, i8 noundef signext 32) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(37) ptr @_ZN5vcpkg13XmlSerializer22start_complex_open_tagENS_13StringLiteralE(ptr noundef nonnull returned align 8 dereferenceable(37) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.vcpkg::StringLiteral", align 8 ; 3 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !15, !range !18, !noundef !19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 4, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9
  %i.j = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(37) %0, i64 noundef %i.i, i64 noundef 0, i64 noundef %i.g, i8 noundef signext 32) ; 0 uses
  br label %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit

_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 60)
  call void @_ZNK5vcpkg10StringView9to_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !20
  %i.m = add nsw i32 %i.l, 2
  store i32 %i.m, ptr %i.k, align 8, !tbaa !20
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(37) ptr @_ZN5vcpkg13XmlSerializer9text_attrENS_13StringLiteralENS_10StringViewE(ptr noundef nonnull returned align 8 dereferenceable(37) %0, ptr %1, i64 %2, ptr nofree readonly captures(address) %3, i64 %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.vcpkg::StringLiteral", align 8 ; 3 uses
  store ptr %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !15, !range !18, !noundef !19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 4, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9
  %i.j = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.i, i64 noundef 0, i64 noundef %i.g, i8 noundef signext 32) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !9    ; 5 uses
  %i.m = add i64 %i.l, 1                          ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.c
  %i.q = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.o, align 8, !tbaa !22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.t = icmp ugt i64 %i.m, %i.s
  br i1 %i.t, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.d
  %i.u = phi ptr [ %.pre.i, %bb.d ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  store i8 32, ptr %i.v, align 1, !tbaa !22
  store i64 %i.m, ptr %i.k, align 8, !tbaa !9
  %i.w = load ptr, ptr %0, align 8, !tbaa !21
  %6 = getelementptr i8, ptr %i.w, i64 %i.l
  %i.x = getelementptr i8, ptr %6, i64 1
  store i8 0, ptr %i.x, align 1, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %bb.b
  call void @_ZNK5vcpkg10StringView9to_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %0)
  call void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.1)
  %i.y = call noundef nonnull align 8 dereferenceable(37) ptr @_ZN5vcpkg13XmlSerializer4textENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr %3, i64 %4) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !9   ; 5 uses
  %i.ab = add i64 %i.aa, 1                        ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i6: ; preds = %bb.e
  %i.af = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.af)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.e
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i4: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i6
  %i.ah = phi i64 [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i6 ]
  %i.ai = icmp ugt i64 %i.ab, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit7

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aa, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i5 = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit7: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i4, %bb.f
  %i.aj = phi ptr [ %.pre.i5, %bb.f ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i4 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.aa
  store i8 34, ptr %i.ak, align 1, !tbaa !22
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !9
  %i.al = load ptr, ptr %0, align 8, !tbaa !21
  %7 = getelementptr i8, ptr %i.al, i64 %i.aa
  %i.am = getelementptr i8, ptr %7, i64 1
  store i8 0, ptr %i.am, align 1, !tbaa !22
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(37) ptr @_ZN5vcpkg13XmlSerializer4textENS_10StringViewE(ptr noundef nonnull returned align 8 dereferenceable(37) %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !15, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(37) %0, i64 noundef %i.h, i64 noundef 0, i64 noundef %i.f, i8 noundef signext 32) ; 0 uses
  br label %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit

_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %.not19 = icmp samesign eq i64 %2, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.p, %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit
  ret ptr %0

bb.c:                                             ; preds = %.lr.ph, %bb.p
  %.020 = phi ptr [ %1, %.lr.ph ], [ %i.ao, %bb.p ] ; 2 uses
  %i.m = load i8, ptr %.020, align 1, !tbaa !22   ; 2 uses
  %i.n = load i64, ptr %i.k, align 8, !tbaa !9    ; 10 uses
  switch i8 %i.m, label %bb.n [
    i8 38, label %bb.d
    i8 60, label %bb.f
    i8 62, label %bb.h
    i8 34, label %bb.j
    i8 39, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = add i64 %i.n, -4611686018427387899
  %i.p = icmp ult i64 %i.o, 5
  br i1 %i.p, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #6
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.d
  %i.q = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.4, i64 noundef 5) ; 0 uses
  br label %bb.p

bb.f:                                             ; preds = %bb.c
  %i.r = and i64 %i.n, -4
  %i.s = icmp eq i64 %i.r, 4611686018427387900
  br i1 %i.s, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit13

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #6
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit13: ; preds = %bb.f
  %i.t = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.5, i64 noundef 4) ; 0 uses
  br label %bb.p

bb.h:                                             ; preds = %bb.c
  %i.u = and i64 %i.n, -4
  %i.v = icmp eq i64 %i.u, 4611686018427387900
  br i1 %i.v, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit14

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #6
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit14: ; preds = %bb.h
  %i.w = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.6, i64 noundef 4) ; 0 uses
  br label %bb.p

bb.j:                                             ; preds = %bb.c
  %i.x = add i64 %i.n, -4611686018427387898
  %i.y = icmp ult i64 %i.x, 6
  br i1 %i.y, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit15

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #6
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit15: ; preds = %bb.j
  %i.z = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.7, i64 noundef 6) ; 0 uses
  br label %bb.p

bb.l:                                             ; preds = %bb.c
  %i.aa = add i64 %i.n, -4611686018427387898
  %i.ab = icmp ult i64 %i.aa, 6
  br i1 %i.ab, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit16

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #6
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit16: ; preds = %bb.l
  %i.ac = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.8, i64 noundef 6) ; 0 uses
  br label %bb.p

bb.n:                                             ; preds = %bb.c
  %i.ad = add i64 %i.n, 1                         ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.l
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.n
  %i.ag = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ai = phi i64 [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.aj = icmp ugt i64 %i.ad, %i.ai
  br i1 %i.aj, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.n, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.o
  %i.ak = phi ptr [ %.pre.i, %bb.o ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.n
  store i8 %i.m, ptr %i.al, align 1, !tbaa !22
  store i64 %i.ad, ptr %i.k, align 8, !tbaa !9
  %i.am = load ptr, ptr %0, align 8, !tbaa !21
  %3 = getelementptr i8, ptr %i.am, i64 %i.n
  %i.an = getelementptr i8, ptr %3, i64 1
  store i8 0, ptr %i.an, align 1, !tbaa !22
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.020, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.j
  br i1 %.not, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(37) ptr @_ZN5vcpkg13XmlSerializer23finish_complex_open_tagEv(ptr noundef nonnull returned align 8 dereferenceable(37) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !15, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(37) %0, i64 noundef %i.h, i64 noundef 0, i64 noundef %i.f, i8 noundef signext 32) ; 0 uses
  br label %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit

_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !9    ; 5 uses
  %i.l = add i64 %i.k, 1                          ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit
  %i.p = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit
  %i.q = load i64, ptr %i.n, align 8, !tbaa !22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.s = icmp ugt i64 %i.l, %i.r
  br i1 %i.s, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.c
  %i.t = phi ptr [ %.pre.i, %bb.c ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.k
  store i8 62, ptr %i.u, align 1, !tbaa !22
  store i64 %i.l, ptr %i.j, align 8, !tbaa !9
  %i.v = load ptr, ptr %0, align 8, !tbaa !21
  %1 = getelementptr i8, ptr %i.v, i64 %i.k
  %i.w = getelementptr i8, ptr %1, i64 1
  store i8 0, ptr %i.w, align 1, !tbaa !22
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(37) ptr @_ZN5vcpkg13XmlSerializer31finish_self_closing_complex_tagEv(ptr noundef nonnull returned align 8 dereferenceable(37) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !15, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(37) %0, i64 noundef %i.h, i64 noundef 0, i64 noundef %i.f, i8 noundef signext 32) ; 0 uses
  br label %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit

_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !9
  %i.l = and i64 %i.k, -2
  %i.m = icmp eq i64 %i.l, 4611686018427387902
  br i1 %i.m, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.c:                                             ; preds = %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #6
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit
  %i.n = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.2, i64 noundef 2) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !20
  %i.q = add nsw i32 %i.p, -2
  store i32 %i.q, ptr %i.o, align 8, !tbaa !20
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(37) ptr @_ZN5vcpkg13XmlSerializer9close_tagENS_13StringLiteralE(ptr noundef nonnull returned align 8 dereferenceable(37) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.vcpkg::StringLiteral", align 8 ; 3 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = add nsw i32 %i.c, -2                     ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !15, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.e, align 4, !tbaa !15
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(37) %0, i64 noundef %i.j, i64 noundef 0, i64 noundef %i.h, i8 noundef signext 32) ; 0 uses
  br label %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit

_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.3)
  call void @_ZNK5vcpkg10StringView9to_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %0)
  call void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 62)
  ret ptr %0
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(37) ptr @_ZN5vcpkg13XmlSerializer5cdataENS_10StringViewE(ptr noundef nonnull returned align 8 dereferenceable(37) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 6 uses
  %4 = alloca %"struct.vcpkg::LineInfo", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !15, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 4, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(37) %0, i64 noundef %i.h, i64 noundef 0, i64 noundef %i.f, i8 noundef signext 32) ; 0 uses
  br label %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit

_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store i32 98, ptr %4, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.9, ptr %i.j, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @__func__._ZN5vcpkg13XmlSerializer5cdataENS_10StringViewE, ptr %i.k, align 8, !tbaa !26
  %i.l = tail call noundef ptr @_ZN5vcpkg7Strings6searchENS_10StringViewES1_(ptr %1, i64 %2, ptr nonnull @.str.10, i64 3)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN5vcpkg6Checks14msg_check_exitIJEJEEEvRKNS_8LineInfoEbNS_3msg8MessageTIJDpT_EEEDpNS5_6TagArgINS_8identityIS7_E4typeET0_EE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit
  %.sroa.0.0.copyload = load i64, ptr @_ZN5vcpkg27msgUnsupportedSyntaxInCDATAE, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %3, i64 %.sroa.0.0.copyload)
  invoke void @_ZN5vcpkg6Checks21msg_exit_with_messageERKNS_8LineInfoERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %3) #6
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !tbaa !22
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #8
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i

_ZN5vcpkg15LocalizedStringD2Ev.exit.i:            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %i.o

_ZN5vcpkg6Checks14msg_check_exitIJEJEEEvRKNS_8LineInfoEbNS_3msg8MessageTIJDpT_EEEDpNS5_6TagArgINS_8identityIS7_E4typeET0_EE.exit: ; preds = %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !9
  %i.w = add i64 %i.v, -4611686018427387895
  %i.x = icmp ult i64 %i.w, 9
  br i1 %i.x, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %_ZN5vcpkg6Checks14msg_check_exitIJEJEEEvRKNS_8LineInfoEbNS_3msg8MessageTIJDpT_EEEDpNS5_6TagArgINS_8identityIS7_E4typeET0_EE.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #6
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZN5vcpkg6Checks14msg_check_exitIJEJEEEvRKNS_8LineInfoEbNS_3msg8MessageTIJDpT_EEEDpNS5_6TagArgINS_8identityIS7_E4typeET0_EE.exit
  %i.y = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.11, i64 noundef 9) ; 0 uses
  %i.z = load i64, ptr %i.u, align 8, !tbaa !9
  %i.aa = sub i64 4611686018427387903, %i.z
  %i.ab = icmp ult i64 %i.aa, %2
  br i1 %i.ab, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #6
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.ac = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) ; 0 uses
  %i.ad = load i64, ptr %i.u, align 8, !tbaa !9
  %i.ae = add i64 %i.ad, -4611686018427387901
  %i.af = icmp ult i64 %i.ae, 3
  br i1 %i.af, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit2

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #6
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.ag = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.10, i64 noundef 3) ; 0 uses
  ret ptr %0
}

declare noundef ptr @_ZN5vcpkg7Strings6searchENS_10StringViewES1_(ptr, i64, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(37) ptr @_ZN5vcpkg13XmlSerializer10simple_tagENS_13StringLiteralENS_10StringViewE(ptr noundef nonnull returned align 8 dereferenceable(37) %0, ptr %1, i64 %2, ptr nofree readonly captures(address) %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.vcpkg::StringLiteral", align 8 ; 5 uses
  %6 = alloca %"struct.vcpkg::StringLiteral", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 6 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !15, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit, label %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit.thread

_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %1, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.d, align 8
  br label %_ZN5vcpkg13XmlSerializer8open_tagENS_13StringLiteralE.exit

_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit: ; preds = %bb.a
  store i8 0, ptr %i.a, align 4, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9
  %i.j = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(37) %0, i64 noundef %i.i, i64 noundef 0, i64 noundef %i.g, i8 noundef signext 32) ; 0 uses
  %.pre = load i8, ptr %i.a, align 4, !tbaa !15, !range !18
  %i.k = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %1, ptr %6, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.l, align 8
  br i1 %i.k, label %bb.b, label %_ZN5vcpkg13XmlSerializer8open_tagENS_13StringLiteralE.exit

bb.b:                                             ; preds = %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit
  store i8 0, ptr %i.a, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !9
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(37) %0, i64 noundef %i.q, i64 noundef 0, i64 noundef %i.o, i8 noundef signext 32) ; 0 uses
  br label %_ZN5vcpkg13XmlSerializer8open_tagENS_13StringLiteralE.exit

_ZN5vcpkg13XmlSerializer8open_tagENS_13StringLiteralE.exit: ; preds = %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit.thread, %_ZN5vcpkg13XmlSerializer19emit_pending_indentEv.exit, %bb.b
  tail call void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull align 8 dereferenceable(37) %0, i8 noundef signext 60)
  call void @_ZNK5vcpkg10StringView9to_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(37) %0)
  call void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull align 8 dereferenceable(37) %0, i8 noundef signext 62)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !20
  %i.u = add nsw i32 %i.t, 2
  store i32 %i.u, ptr %i.s, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.v = call noundef nonnull align 8 dereferenceable(37) ptr @_ZN5vcpkg13XmlSerializer4textENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr %3, i64 %4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %1, ptr %5, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.w, align 8
  %i.x = load i32, ptr %i.s, align 8, !tbaa !20
  %i.y = add nsw i32 %i.x, -2                     ; 2 uses
  store i32 %i.y, ptr %i.s, align 8, !tbaa !20
  %i.z = load i8, ptr %i.a, align 4, !tbaa !15, !range !18, !noundef !19
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.c, label %_ZN5vcpkg13XmlSerializer9close_tagENS_13StringLiteralE.exit

bb.c:                                             ; preds = %_ZN5vcpkg13XmlSerializer8open_tagENS_13StringLiteralE.exit
  store i8 0, ptr %i.a, align 4, !tbaa !15
  %i.ab = sext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !9
  %i.ae = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(37) %0, i64 noundef %i.ad, i64 noundef 0, i64 noundef %i.ab, i8 noundef signext 32) ; 0 uses
  br label %_ZN5vcpkg13XmlSerializer9close_tagENS_13StringLiteralE.exit

_ZN5vcpkg13XmlSerializer9close_tagENS_13StringLiteralE.exit: ; preds = %_ZN5vcpkg13XmlSerializer8open_tagENS_13StringLiteralE.exit, %bb.c
  call void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr noundef nonnull @.str.3)
  call void @_ZNK5vcpkg10StringView9to_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(37) %0)
  call void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull align 8 dereferenceable(37) %0, i8 noundef signext 62)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(37) ptr @_ZN5vcpkg13XmlSerializer10line_breakEv(ptr noundef nonnull returned align 8 dereferenceable(37) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 5 uses
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.a
  %i.g = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.g)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.e, align 8, !tbaa !22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.i = phi i64 [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %bb.b ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  store i8 10, ptr %i.l, align 1, !tbaa !22
  store i64 %i.c, ptr %i.a, align 8, !tbaa !9
  %i.m = load ptr, ptr %0, align 8, !tbaa !21
  %1 = getelementptr i8, ptr %i.m, i64 %i.b
  %i.n = getelementptr i8, ptr %1, i64 1
  store i8 0, ptr %i.n, align 1, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 1, ptr %i.o, align 4, !tbaa !15
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #2

declare void @_ZNK5vcpkg10StringView9to_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZN5vcpkg6Checks21msg_exit_with_messageERKNS_8LineInfoERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind writable sret(%"struct.vcpkg::LocalizedString") align 8, i64) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { noreturn }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !14, i64 8}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !14, i64 8, !7, i64 16}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!16, !17, i64 36}
!16 = !{!"_ZTSN5vcpkg13XmlSerializerE", !10, i64 0, !6, i64 32, !17, i64 36}
!17 = !{!"bool", !7, i64 0}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!16, !6, i64 32}
!21 = !{!10, !12, i64 0}
!22 = !{!7, !7, i64 0}
!23 = !{!24, !6, i64 0}
!24 = !{!"_ZTSN5vcpkg8LineInfoE", !6, i64 0, !12, i64 8, !12, i64 16}
!25 = !{!24, !12, i64 8}
!26 = !{!24, !12, i64 16}
!27 = !{!14, !14, i64 0}
end_hunk_0
