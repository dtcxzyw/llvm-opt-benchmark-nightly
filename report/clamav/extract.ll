Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/extract?download=true
inline.NumInlined: 198
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.ErrorHandler = type <{ i32, i32, i8, i8, i8, i8, i8, i8, [2 x i8] }>
%class.uiMsgStore = type <{ [8 x ptr], [8 x i32], i32, i32, i32, [4 x i8] }>
%struct.FindData = type <{ [2048 x i32], i64, i32, i8, i8, [2 x i8], %class.RarTime, %class.RarTime, %class.RarTime, i32, i8, [3 x i8] }>
%class.RarTime = type { i64 }
%class.Archive = type <{ %class.File, %class.CryptData, %class.ComprDataIO, i8, [7 x i8], ptr, %class.RarTime, i32, i32, i8, [7 x i8], %class.QuickOpen, i8, [3 x i8], %struct.BaseBlock, %struct.MarkHeader, [4 x i8], %struct.MainHeader, %struct.CryptHeader, [4 x i8], %struct.FileHeader, %struct.EndArcHeader, %struct.SubBlockHeader, [4 x i8], %struct.FileHeader, %struct.CommentHeader, %struct.ProtectHeader, %struct.EAHeader, %struct.StreamHeader, [4 x i8], i64, i64, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], i64, i8, i8, [16 x i8], i8, i8, i32, i64, i64, i64, i8, [3 x i8], [2048 x i32], [4 x i8] }>
%class.File = type { ptr, i64, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i64, i8, [2048 x i32], i32, ptr }
%class.CryptData = type { [4 x %"struct.CryptData::KDF3CacheItem"], i32, [4 x i8], [4 x %"struct.CryptData::KDF5CacheItem"], i32, i32, %class.Rijndael, [256 x i32], [256 x i8], [4 x i32], [3 x i8], [4 x i16], [4 x i8] }
%"struct.CryptData::KDF3CacheItem" = type { %class.SecPassword, [8 x i8], [16 x i8], [16 x i8], i8, [7 x i8] }
%class.SecPassword = type <{ %"class.std::vector", i8, [7 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<wchar_t, std::allocator<wchar_t>>::_Vector_impl" }
%"struct.std::_Vector_base<wchar_t, std::allocator<wchar_t>>::_Vector_impl" = type { %"struct.std::_Vector_base<wchar_t, std::allocator<wchar_t>>::_Vector_impl_data" }
%"struct.std::_Vector_base<wchar_t, std::allocator<wchar_t>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.CryptData::KDF5CacheItem" = type { %class.SecPassword, [16 x i8], [32 x i8], i32, [32 x i8], [32 x i8], [4 x i8] }
%class.Rijndael = type { i8, i32, [16 x i8], [15 x [4 x [4 x i8]]] }
%class.ComprDataIO = type <{ i8, [7 x i8], i64, ptr, i8, [7 x i8], i64, ptr, i64, ptr, i64, i64, i8, i8, i8, i8, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, [5 x i8], i64, i64, i64, i64, i64, i64, i64, %class.DataHash, %class.DataHash, %class.DataHash, i8, i8, [6 x i8] }>
%class.DataHash = type { i32, i32, ptr }
%class.QuickOpen = type <{ ptr, i8, [7 x i8], ptr, ptr, ptr, i64, %class.CryptData, i8, [7 x i8], i64, i64, i64, i64, i64, i64, %class.Array.0, i64, i64, i8, [7 x i8] }>
%class.Array.0 = type { ptr, i64, i64, i64 }
%struct.BaseBlock = type { i32, i32, i32, i32, i8 }
%struct.MarkHeader = type { [8 x i8], i32 }
%struct.MainHeader = type { %struct.BaseBlock, i16, i32, i8, i8, i8, i64, i64, i64, i64, i64, %"class.std::__cxx11::basic_string", %class.RarTime }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<wchar_t>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<wchar_t>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.CryptHeader = type { %struct.BaseBlock, i8, i32, [16 x i8], [8 x i8] }
%struct.EndArcHeader = type { %struct.BaseBlock, i32, i32, i8, i8, i8, i8 }
%struct.SubBlockHeader = type <{ %struct.BlockHeader, i16, i8, i8 }>
%struct.BlockHeader = type { %struct.BaseBlock, i32 }
%struct.FileHeader = type { %struct.BlockHeader, i8, i32, i8, %union.anon.10, [2048 x i32], %class.Array.0, %class.RarTime, %class.RarTime, %class.RarTime, i64, i64, i64, %struct.HashValue, i32, i8, i8, i8, i8, i32, i8, [16 x i8], [16 x i8], i8, [8 x i8], i8, [32 x i8], i32, i8, i8, i8, i8, i64, i8, i8, i8, i32, i32, [2048 x i32], i8, i8, i8, i8, [256 x i8], [256 x i8], i32, i32 }
%union.anon.10 = type { i32 }
%struct.HashValue = type { i32, %union.anon.11 }
%union.anon.11 = type { i32, [28 x i8] }
%struct.CommentHeader = type <{ %struct.BaseBlock, i16, i8, i8, i16, [2 x i8] }>
%struct.ProtectHeader = type { %struct.BlockHeader, i8, i16, i32, [8 x i8] }
%struct.EAHeader = type { %struct.SubBlockHeader.base, i32, i8, i8, i32 }
%struct.SubBlockHeader.base = type <{ %struct.BlockHeader, i16, i8 }>
%struct.StreamHeader = type <{ %struct.SubBlockHeader.base, i8, i32, i8, i8, [2 x i8], i32, i16, [260 x i8], [2 x i8] }>
%class.RarCheckPassword = type <{ %class.CheckPassword, ptr, i32, [16 x i8], [16 x i8], [8 x i8], [4 x i8] }>
%class.CheckPassword = type { ptr }

$__clang_call_terminate = comdat any

$_Z5uiMsgIJRA2048_wS1_EEv14UIMESSAGE_CODEDpOT_ = comdat any

$_ZN16RarCheckPassword3SetEPhS0_jS0_ = comdat any

$_ZN11SecPasswordC2ERKS_ = comdat any

$_ZN16RarCheckPasswordD2Ev = comdat any

$_Z5uiMsgIJRA2048_wS1_S1_EEv14UIMESSAGE_CODEDpOT_ = comdat any

$_Z5uiMsgIJEEv14UIMESSAGE_CODEDpOT_ = comdat any

$_ZN16RarCheckPassword13GetConfidenceEv = comdat any

$_ZN16RarCheckPassword5CheckEP11SecPassword = comdat any

$_ZN9CryptDataD2Ev = comdat any

$_ZTV16RarCheckPassword = comdat any

$_ZTI16RarCheckPassword = comdat any

$_ZTS16RarCheckPassword = comdat any

$_ZTI13CheckPassword = comdat any

$_ZTS13CheckPassword = comdat any

@ErrHandler = external global %class.ErrorHandler, align 4
@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 114, i32 97, i32 114, i32 0], align 4
@.str.2 = private unnamed_addr constant [24 x i32] [i32 95, i32 95, i32 116, i32 109, i32 112, i32 95, i32 114, i32 101, i32 102, i32 101, i32 114, i32 101, i32 110, i32 99, i32 101, i32 95, i32 115, i32 111, i32 117, i32 114, i32 99, i32 101, i32 95, i32 0], align 4
@.str.10 = private unnamed_addr constant [2 x i32] [i32 42, i32 0], align 4
@.str.11 = private unnamed_addr constant [4 x i32] [i32 42, i32 46, i32 42, i32 0], align 4
@_ZTV16RarCheckPassword = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI16RarCheckPassword, ptr @_ZN16RarCheckPassword13GetConfidenceEv, ptr @_ZN16RarCheckPassword5CheckEP11SecPassword] }, comdat, align 8
@_ZTI16RarCheckPassword = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16RarCheckPassword, ptr @_ZTI13CheckPassword }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS16RarCheckPassword = linkonce_odr constant [19 x i8] c"16RarCheckPassword\00", comdat, align 1
@_ZTI13CheckPassword = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13CheckPassword }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS13CheckPassword = linkonce_odr constant [16 x i8] c"13CheckPassword\00", comdat, align 1
@.str.12 = private unnamed_addr constant [44 x i32] [i32 77, i32 97, i32 120, i32 105, i32 109, i32 117, i32 109, i32 32, i32 97, i32 108, i32 108, i32 111, i32 119, i32 101, i32 100, i32 32, i32 97, i32 114, i32 114, i32 97, i32 121, i32 32, i32 115, i32 105, i32 122, i32 101, i32 32, i32 40, i32 37, i32 117, i32 41, i32 32, i32 105, i32 115, i32 32, i32 101, i32 120, i32 99, i32 101, i32 101, i32 100, i32 101, i32 100, i32 0], align 4

@_ZN10CmdExtractC1EP11CommandData = unnamed_addr alias void (ptr, ptr), ptr @_ZN10CmdExtractC2EP11CommandData
@_ZN10CmdExtractD1Ev = unnamed_addr alias void (ptr), ptr @_ZN10CmdExtractD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN10CmdExtractC2EP11CommandData(ptr noundef nonnull align 8 dereferenceable(16800) initializes((0, 32), (48, 56)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  invoke void @_ZN11ComprDataIOC1Ev(ptr noundef nonnull align 8 dereferenceable(266) %i.b)
          to label %bb.b unwind label %2

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16768 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16784 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16776
  store i64 0, ptr %i.e, align 8, !tbaa !15
  store i32 0, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i32 0, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8572
  store i32 0, ptr %i.h, align 4, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.i, align 8, !tbaa !37
  %i.j = invoke noalias noundef nonnull dereferenceable(16400) ptr @_Znwm(i64 noundef 16400) #19
          to label %bb.c unwind label %bb.f       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.k, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16400) %i.j, i8 0, i64 16400, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 0, ptr %i.l, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16765
  store i8 1, ptr %i.m, align 1, !tbaa !40
  %i.n = invoke noalias noundef nonnull dereferenceable(59688) ptr @_Znwm(i64 noundef 59688) #19
          to label %bb.d unwind label %bb.f       ; 3 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6UnpackC1EP11ComprDataIO(ptr noundef nonnull align 8 dereferenceable(59688) %i.n, ptr noundef nonnull %i.b)
          to label %bb.e unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.n, ptr %i.o, align 8, !tbaa !41
  ret void

2:                                                ; preds = %bb.a
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.thread:                                          ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.n) #20
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.pn = phi { ptr, i32 } [ %i.q, %.thread ], [ %i.p, %bb.f ]
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !42  ; 2 uses
  %i.r = icmp eq ptr %.pre, %i.d
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  tail call void @_ZdlPv(ptr noundef %.pre) #20
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  tail call void @_ZN11ComprDataIOD1Ev(ptr noundef nonnull align 8 dead_on_return(266) dereferenceable(266) %i.b) #21
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %2
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit ], [ %3, %2 ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5ArrayIN10CmdExtract10ExtractRefEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.s) #21
  br label %_ZN5ArrayIN10CmdExtract10ExtractRefEED2Ev.exit

_ZN5ArrayIN10CmdExtract10ExtractRefEED2Ev.exit:   ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %.pn.pn
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11ComprDataIOC1Ev(ptr noundef nonnull align 8 dereferenceable(266)) unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @_ZN6UnpackC1EP11ComprDataIO(ptr noundef nonnull align 8 dereferenceable(59688), ptr noundef) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11ComprDataIOD1Ev(ptr noundef nonnull align 8 dead_on_return(266) dereferenceable(266)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN10CmdExtractD2Ev(ptr noundef nonnull align 8 dead_on_return(16800) dereferenceable(16800) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44
  %.not7.i = icmp eq i64 %i.b, 0
  br i1 %.not7.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  tail call void @free(ptr noundef nonnull %i.c) #21
  store ptr null, ptr %0, align 8, !tbaa !43
  br label %bb.e

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.06.i = phi i64 [ %i.p, %bb.d ], [ 0, %bb.a ]  ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.06.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = invoke noundef zeroext i1 @_Z7DelFilePKw(ptr noundef nonnull %i.g)
          to label %.noexc unwind label %bb.k     ; 0 uses

.noexc:                                           ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %.lr.ph.i
  %i.i = phi ptr [ %.pre.i, %.noexc ], [ %i.d, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.06.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  tail call void @free(ptr noundef %i.k) #21
  %i.l = load ptr, ptr %0, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.06.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45
  tail call void @free(ptr noundef %i.o) #21
  %i.p = add nuw i64 %.06.i, 1                    ; 2 uses
  %i.q = load i64, ptr %i.a, align 8, !tbaa !44
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !48

bb.e:                                             ; preds = %bb.b, %._crit_edge.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16400) %i.t, i8 0, i64 16400, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41   ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6UnpackD1Ev(ptr noundef nonnull align 8 dead_on_return(59688) dereferenceable(59688) %i.v) #21
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !38   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16768
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16784
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef %i.aa) #20
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN11ComprDataIOD1Ev(ptr noundef nonnull align 8 dead_on_return(266) dereferenceable(266) %i.ad) #21
  %i.ae = load ptr, ptr %0, align 8, !tbaa !43    ; 2 uses
  %.not.i2 = icmp eq ptr %i.ae, null
  br i1 %.not.i2, label %_ZN5ArrayIN10CmdExtract10ExtractRefEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  tail call void @free(ptr noundef nonnull %i.ae) #21
  br label %_ZN5ArrayIN10CmdExtract10ExtractRefEED2Ev.exit

_ZN5ArrayIN10CmdExtract10ExtractRefEED2Ev.exit:   ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, %bb.j
  ret void

bb.k:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN10CmdExtract15FreeAnalyzeDataEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16800) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44
  %.not7 = icmp eq i64 %i.b, 0
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN5ArrayIN10CmdExtract10ExtractRefEE5ResetEv.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.c) #21
  store ptr null, ptr %0, align 8, !tbaa !43
  br label %_ZN5ArrayIN10CmdExtract10ExtractRefEE5ResetEv.exit

_ZN5ArrayIN10CmdExtract10ExtractRefEE5ResetEv.exit: ; preds = %._crit_edge, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16400) %i.e, i8 0, i64 16400, i1 false)
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.06 = phi i64 [ %i.r, %bb.d ], [ 0, %bb.a ]    ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.06
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = tail call noundef zeroext i1 @_Z7DelFilePKw(ptr noundef nonnull %i.i) ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.k = phi ptr [ %.pre, %bb.c ], [ %i.f, %.lr.ph ]
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.06
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  tail call void @free(ptr noundef %i.m) #21
  %i.n = load ptr, ptr %0, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.06
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45
  tail call void @free(ptr noundef %i.q) #21
  %i.r = add nuw i64 %.06, 1                      ; 2 uses
  %i.s = load i64, ptr %i.a, align 8, !tbaa !44
  %i.t = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !48
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

end_hunk_0
