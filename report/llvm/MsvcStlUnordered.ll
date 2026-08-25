Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MsvcStlUnordered?download=true
inline.NumInlined: 242
inline.NumDeleted: 178
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.llvm::Expected" = type <{ %union.anon.47, i8, [7 x i8] }>
%union.anon.47 = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.49" }
%"struct.std::_Head_base.49" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.28 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.28 = type { i64, [8 x i8] }
%"class.llvm::Error" = type { ptr }
%"class.llvm::Expected.50" = type <{ %union.anon.51, i8, [7 x i8] }>
%union.anon.51 = type { i64 }
%"class.lldb_private::ConstString" = type { ptr }

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN12lldb_private25SyntheticChildrenFrontEnd20CalculateNumChildrenEj = comdat any

$_ZN12lldb_private25SyntheticChildrenFrontEnd17MightHaveChildrenEv = comdat any

$_ZN12lldb_private25SyntheticChildrenFrontEnd17GetSyntheticValueEv = comdat any

$_ZN12lldb_private25SyntheticChildrenFrontEnd20GetSyntheticTypeNameEv = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [6 x i8] c"_List\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN12_GLOBAL__N_117UnorderedFrontEndE = internal unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr null, ptr @_ZN12_GLOBAL__N_117UnorderedFrontEndD2Ev, ptr @_ZN12_GLOBAL__N_117UnorderedFrontEndD0Ev, ptr @_ZN12_GLOBAL__N_117UnorderedFrontEnd20CalculateNumChildrenEv, ptr @_ZN12lldb_private25SyntheticChildrenFrontEnd20CalculateNumChildrenEj, ptr @_ZN12_GLOBAL__N_117UnorderedFrontEnd15GetChildAtIndexEj, ptr @_ZN12_GLOBAL__N_117UnorderedFrontEnd23GetIndexOfChildWithNameEN12lldb_private11ConstStringE, ptr @_ZN12_GLOBAL__N_117UnorderedFrontEnd6UpdateEv, ptr @_ZN12lldb_private25SyntheticChildrenFrontEnd17MightHaveChildrenEv, ptr @_ZN12lldb_private25SyntheticChildrenFrontEnd17GetSyntheticValueEv, ptr @_ZN12lldb_private25SyntheticChildrenFrontEnd20GetSyntheticTypeNameEv] }, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"missing _List\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private10formatters18IsMsvcStlUnorderedERNS_11ValueObjectE(ptr noundef nonnull align 8 dereferenceable(1034) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %2 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(1034) %0) #10
  %i.d = load ptr, ptr %1, align 8, !tbaa !10     ; 3 uses
  %.not.not = icmp eq ptr %i.d, null
  br i1 %.not.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1034) %i.d, ptr nonnull @.str, i64 5, i1 noundef zeroext true) #10
  %i.h = load ptr, ptr %2, align 8, !tbaa !10
  %i.i = icmp ne ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !19
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #10, !inline_history !20
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #10, !inline_history !20
  br label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.o, %bb.f ], [ %i.y, %bb.g ]
  %i.z = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.z, label %bb.h, label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !23

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #10
  br label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %spec.select = phi i1 [ %i.i, %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ false, %bb.a ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16 ; 8 uses
  %.not.i.i3 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i3, label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ac, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !19
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #10, !inline_history !20
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #10, !inline_history !20
  br label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7

bb.l:                                             ; preds = %bb.j
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i4 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

bb.n:                                             ; preds = %bb.l
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i6 = phi i32 [ %i.af, %bb.m ], [ %i.ap, %bb.n ]
  %i.aq = icmp eq i32 %.0.i.i.i.i6, 1
  br i1 %i.aq, label %bb.o, label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7, !prof !23

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #10
  br label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7

_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit7: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i5, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i1 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef ptr @_ZN12lldb_private10formatters40MsvcStlUnorderedSyntheticFrontEndCreatorEPNS_20CXXSyntheticChildrenESt10shared_ptrINS_11ValueObjectEE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !10
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #11 ; 5 uses
  %2 = load ptr, ptr %1, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN12_GLOBAL__N_117UnorderedFrontEndE, i64 16), ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = tail call noundef i32 @_ZN12_GLOBAL__N_117UnorderedFrontEnd6UpdateEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #10, !inline_history !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !22   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #10, !inline_history !25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117UnorderedFrontEndD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN12_GLOBAL__N_117UnorderedFrontEndE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !19
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #10, !inline_history !20
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #10, !inline_history !20
  br label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !23

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #10
  br label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117UnorderedFrontEndD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN12_GLOBAL__N_117UnorderedFrontEndE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_117UnorderedFrontEndD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !19
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #10, !inline_history !26
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #10, !inline_history !26
  br label %_ZN12_GLOBAL__N_117UnorderedFrontEndD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN12_GLOBAL__N_117UnorderedFrontEndD2Ev.exit, !prof !23

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #10, !inline_history !27
  br label %_ZN12_GLOBAL__N_117UnorderedFrontEndD2Ev.exit

_ZN12_GLOBAL__N_117UnorderedFrontEndD2Ev.exit:    ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117UnorderedFrontEnd20CalculateNumChildrenEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge.i.i.i.i, label %bb.b

._crit_edge.i.i.i.i:                              ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.c = tail call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #10, !noalias !28 ; 2 uses
  %i.d = extractvalue { i32, ptr } %i.c, 0
  %i.e = extractvalue { i32, ptr } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10, !noalias !31
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !34, !noalias !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.f, ptr noundef nonnull align 1 dereferenceable(13) @.str.2, i64 13, i1 false), !noalias !31
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 13, ptr %i.g, align 8, !tbaa !37, !noalias !31
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 29
  store i8 0, ptr %i.h, align 1, !tbaa !21, !noalias !31
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 %i.d, ptr %i.e) #10
  %i.i = load ptr, ptr %2, align 8, !tbaa !40, !noalias !31 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.k = load i64, ptr %i.f, align 8, !tbaa !21, !noalias !31
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #12
  br label %_ZN4llvm5ErrorD2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_117UnorderedFrontEnd20CalculateNumChildrenEv:bb.a

bb.c:                                             ; preds = %bb.b, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private25SyntheticChildrenFrontEnd20CalculateNumChildrenEj(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::Expected", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = load ptr, ptr %1, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %1) #10
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i8, ptr %i.d, align 8
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %.thread, label %_ZN4llvm8ExpectedIjEC2EOS1_.exit

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = or i8 %i.h, 1
  store i8 %i.i, ptr %i.g, align 8
  %i.j = load i64, ptr %3, align 8, !tbaa !47
  store i64 %i.j, ptr %0, align 8, !tbaa !47
  br label %_ZN4llvm8ExpectedIjED2Ev.exit

_ZN4llvm8ExpectedIjEC2EOS1_.exit:                 ; preds = %bb.a
  %i.k = load i32, ptr %3, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = and i8 %i.m, -2
  store i8 %i.n, ptr %i.l, align 8
  %i.o = call i32 @llvm.umin.i32(i32 %i.k, i32 %2)
  store i32 %i.o, ptr %0, align 8, !tbaa !22
  br label %_ZN4llvm8ExpectedIjED2Ev.exit

_ZN4llvm8ExpectedIjED2Ev.exit:                    ; preds = %_ZN4llvm8ExpectedIjEC2EOS1_.exit, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117UnorderedFrontEnd15GetChildAtIndexEj(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1034) %i.b, i32 noundef %2, i1 noundef zeroext true) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117UnorderedFrontEnd23GetIndexOfChildWithNameEN12lldb_private11ConstStringE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.50") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.lldb_private::ConstString", align 8 ; 2 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 4 uses
  store ptr %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge.i.i.i.i, label %bb.b

._crit_edge.i.i.i.i:                              ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.c = tail call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #10, !noalias !48 ; 2 uses
  %i.d = extractvalue { i32, ptr } %i.c, 0
  %i.e = extractvalue { i32, ptr } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10, !noalias !51
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !34, !noalias !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.f, ptr noundef nonnull align 1 dereferenceable(13) @.str.2, i64 13, i1 false), !noalias !51
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 13, ptr %i.g, align 8, !tbaa !37, !noalias !51
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 0, ptr %i.h, align 1, !tbaa !21, !noalias !51
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 %i.d, ptr %i.e) #10
  %i.i = load ptr, ptr %3, align 8, !tbaa !40, !noalias !51 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.k = load i64, ptr %i.f, align 8, !tbaa !21, !noalias !51
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #12
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %._crit_edge.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10, !noalias !51
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8
  %i.o = or i8 %i.n, 1
  store i8 %i.o, ptr %i.m, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.p = load ptr, ptr %5, align 8, !tbaa !44, !noalias !54
  store ptr %i.p, ptr %0, align 8, !tbaa !47, !alias.scope !54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = call noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr dead_on_unwind writable sret(%"class.llvm::Expected.50") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1034) %i.b, ptr %2, i64 %i.q) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZN12_GLOBAL__N_117UnorderedFrontEnd6UpdateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((16, 24)) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %2 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !16
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !19
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #10, !inline_history !57
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #10, !inline_history !57
  br label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !23

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #10
  br label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !58, !nonnull !60, !align !61 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 192
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(1034) %i.t, ptr nonnull @.str, i64 5, i1 noundef zeroext true) #10
  %i.x = load ptr, ptr %1, align 8, !tbaa !10     ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.u, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @_ZN12lldb_private11ValueObject17GetSyntheticValueEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1034) %i.x) #10
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load <2 x ptr>, ptr %2, align 16, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !16  ; 8 uses
  store <2 x ptr> %i.z, ptr %i.a, align 8, !tbaa !62
  %.not.i.i.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i1, label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ab, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !19
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #10, !inline_history !57
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #10, !inline_history !57
  br label %_ZNSt10shared_ptrIN12lldb_private11ValueObjectEEaSEOS2_.exit5

bb.k:                                             ; preds = %bb.i
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i.i2 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3

bb.m:                                             ; preds = %bb.k
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i4 = phi i32 [ %i.ae, %bb.l ], [ %i.ao, %bb.m ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i4, 1
  br i1 %i.ap, label %bb.n, label %_ZNSt10shared_ptrIN12lldb_private11ValueObjectEEaSEOS2_.exit5, !prof !23

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #10
  br label %_ZNSt10shared_ptrIN12lldb_private11ValueObjectEEaSEOS2_.exit5

_ZNSt10shared_ptrIN12lldb_private11ValueObjectEEaSEOS2_.exit5: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3, %bb.n
  %.pr = load ptr, ptr %i.y, align 8, !tbaa !16   ; 8 uses
  %.not.i.i6 = icmp eq ptr %.pr, null
  br i1 %.not.i.i6, label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10, label %bb.o

bb.o:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private11ValueObjectEEaSEOS2_.exit5
  %i.aq = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.aq, align 8, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !19
  %i.av = load ptr, ptr %.pr, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #10, !inline_history !20
  %i.ay = load ptr, ptr %.pr, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #10, !inline_history !20
  br label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10

bb.q:                                             ; preds = %bb.o
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i7 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i7, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8

bb.s:                                             ; preds = %bb.q
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i9 = phi i32 [ %i.at, %bb.r ], [ %i.bd, %bb.s ]
  %i.be = icmp eq i32 %.0.i.i.i.i9, 1
  br i1 %i.be, label %bb.t, label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10, !prof !23

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #10
  br label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10

_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10: ; preds = %bb.h, %_ZNSt10shared_ptrIN12lldb_private11ValueObjectEEaSEOS2_.exit5, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i8, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit10
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !16 ; 8 uses
  %.not.i.i11 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i11, label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bh, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !19
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #10, !inline_history !20
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #10, !inline_history !20
  br label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15

bb.x:                                             ; preds = %bb.v
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i12 = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i12, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13

bb.z:                                             ; preds = %bb.x
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i14 = phi i32 [ %i.bk, %bb.y ], [ %i.bu, %bb.z ]
  %i.bv = icmp eq i32 %.0.i.i.i.i14, 1
  br i1 %i.bv, label %bb.aa, label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15, !prof !23

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #10
  br label %_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15

_ZNSt12__shared_ptrIN12lldb_private11ValueObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit15: ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12lldb_private25SyntheticChildrenFrontEnd17MightHaveChildrenEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private25SyntheticChildrenFrontEnd17GetSyntheticValueEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN12lldb_private25SyntheticChildrenFrontEnd20GetSyntheticTypeNameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

declare { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN12lldb_private11ValueObject14GetNumChildrenEj(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8, ptr noundef nonnull align 8 dereferenceable(1034), i32 noundef) local_unnamed_addr #5

declare void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32, ptr) local_unnamed_addr #5

declare noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN12lldb_private11ValueObject17GetSyntheticValueEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(1034)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9
end_hunk_1
