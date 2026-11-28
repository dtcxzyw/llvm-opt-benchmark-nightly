Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmImageToImageFilter?download=true
inline.NumInlined: 378
inline.NumDeleted: 248
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"class.std::logic_error" = type { %"class.std::exception", %"class.std::__1::__libcpp_refstring" }
%"class.std::exception" = type { ptr }
%"class.std::__1::__libcpp_refstring" = type { ptr }
%"class.std::__1::basic_ostringstream" = type { %"class.std::__1::basic_ostream.base", %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ostream.base" = type { ptr }
%"class.std::__1::basic_stringbuf" = type <{ %"class.std::__1::basic_streambuf", %"class.std::__1::basic_string", ptr, i32, [4 x i8] }>
%"class.std::__1::basic_streambuf" = type { ptr, %"class.std::__1::locale", ptr, ptr, ptr, ptr, ptr, ptr }
%"class.std::__1::locale" = type { ptr }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.26" }
%"class.std::__1::__compressed_pair.26" = type { %"struct.std::__1::__compressed_pair_elem.27" }
%"struct.std::__1::__compressed_pair_elem.27" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon.28 }
%union.anon.28 = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.29, i64, ptr }
%struct.anon.29 = type { i64 }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", ptr, i32 }>
%"class.std::__1::ios_base" = type { ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, i64, ptr, i64, i64 }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, ptr }

$_ZN4gdcm5ImageC2Ev = comdat any

$_ZN4gdcm12SmartPointerINS_6BitmapEEaSEPS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt3__16vectorIdNS_9allocatorIdEEE8__appendEm = comdat any

$_ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__120__throw_length_errorB8ne180100EPKc = comdat any

$_ZNSt12length_errorC2B8ne180100EPKc = comdat any

$_ZSt28__throw_bad_array_new_lengthB8ne180100v = comdat any

$_ZNSt3__16vectorIdNS_9allocatorIdEEE8__appendEmRKd = comdat any

$_ZN4gdcm12SmartPointerINS_6BitmapEED2Ev = comdat any

$_ZN4gdcm9ExceptionC2EPKcS2_jS2_ = comdat any

$_ZN4gdcm9ExceptionD2Ev = comdat any

$_ZN4gdcm9Exception10CreateWhatEPKcS2_jS2_ = comdat any

$_ZN4gdcm9ExceptionD0Ev = comdat any

$_ZNK4gdcm9Exception4whatEv = comdat any

$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev = comdat any

$_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = comdat any

$_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = comdat any

$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZTIN4gdcm9ExceptionE = comdat any

$_ZTSN4gdcm9ExceptionE = comdat any

$_ZTVN4gdcm9ExceptionE = comdat any

@_ZTIN4gdcm6BitmapE = external constant ptr
@_ZTIN4gdcm5ImageE = external constant ptr
@_ZTVN4gdcm5ImageE = external constant { [7 x ptr] }, align 8
@.str = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@_ZTISt20bad_array_new_length = external constant ptr
@.str.1 = private unnamed_addr constant [53 x i8] c"An invalid logic behavior occurredReferenceCount > 0\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"/opt-bench/work/tev/tev/dependencies/GDCM/Source/Common/gdcmObject.h\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTIN4gdcm9ExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4gdcm9ExceptionE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4gdcm9ExceptionE = linkonce_odr dso_local constant [18 x i8] c"N4gdcm9ExceptionE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVN4gdcm9ExceptionE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4gdcm9ExceptionE, ptr @_ZN4gdcm9ExceptionD2Ev, ptr @_ZN4gdcm9ExceptionD0Ev, ptr @_ZNK4gdcm9Exception4whatEv] }, comdat, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"):\0A\00", align 1
@_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [16 x ptr] }, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@.str.8 = private unnamed_addr constant [42 x i8] c"An invalid logic behavior occurredPointer\00", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c"/opt-bench/work/tev/tev/dependencies/GDCM/Source/Common/gdcmSmartPointer.h\00", align 1

@_ZN4gdcm18ImageToImageFilterC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4gdcm18ImageToImageFilterC2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4gdcm18ImageToImageFilterC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4gdcm20PixmapToPixmapFilterC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = invoke noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #18
          to label %bb.b unwind label %bb.h       ; 3 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4gdcm5ImageC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4gdcm12SmartPointerINS_6BitmapEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.h       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.c = invoke noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #18
          to label %bb.e unwind label %bb.h       ; 3 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4gdcm5ImageC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.c)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4gdcm12SmartPointerINS_6BitmapEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.c)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  ret void

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.c, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 264) #19
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %1 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 264) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.f, %bb.h ], [ %1, %bb.j ], [ %i.g, %bb.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4gdcm12SmartPointerINS_6BitmapEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #20
  tail call void @_ZN4gdcm12SmartPointerINS_6BitmapEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %0) #20
  resume { ptr, i32 } %.pn
}

declare void @_ZN4gdcm20PixmapToPixmapFilterC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm5ImageC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  tail call void @_ZN4gdcm6PixmapC2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4gdcm5ImageE, i64 16), ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %i.b, i8 0, i64 76, i1 false)
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.e, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke void @_ZNSt3__16vectorIdNS_9allocatorIdEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 3)
          to label %_ZNSt3__16vectorIdNS_9allocatorIdEEE6resizeEm.exit unwind label %bb.h

_ZNSt3__16vectorIdNS_9allocatorIdEEE6resizeEm.exit: ; preds = %bb.a
  %.pre14 = load ptr, ptr %i.d, align 8, !tbaa !19 ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = ptrtoint ptr %.pre to i64
  %i.i = ptrtoint ptr %.pre14 to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = icmp ult i64 %i.k, 6
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt3__16vectorIdNS_9allocatorIdEEE6resizeEm.exit
  %i.m = sub nuw nsw i64 6, %i.k
  invoke void @_ZNSt3__16vectorIdNS_9allocatorIdEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.m)
          to label %._ZNSt3__16vectorIdNS_9allocatorIdEEE6resizeEm.exit5_crit_edge unwind label %bb.h

._ZNSt3__16vectorIdNS_9allocatorIdEEE6resizeEm.exit5_crit_edge: ; preds = %bb.b
  %.pre15 = load ptr, ptr %i.d, align 8, !tbaa !19
  br label %_ZNSt3__16vectorIdNS_9allocatorIdEEE6resizeEm.exit5

bb.c:                                             ; preds = %_ZNSt3__16vectorIdNS_9allocatorIdEEE6resizeEm.exit
  %.not11 = icmp eq i64 %i.j, 48
  br i1 %.not11, label %_ZNSt3__16vectorIdNS_9allocatorIdEEE6resizeEm.exit5, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pre14, i64 48
  store ptr %i.n, ptr %i.g, align 8, !tbaa !20
  br label %_ZNSt3__16vectorIdNS_9allocatorIdEEE6resizeEm.exit5

_ZNSt3__16vectorIdNS_9allocatorIdEEE6resizeEm.exit5: ; preds = %._ZNSt3__16vectorIdNS_9allocatorIdEEE6resizeEm.exit5_crit_edge, %bb.d, %bb.c
  %i.o = phi ptr [ %.pre15, %._ZNSt3__16vectorIdNS_9allocatorIdEEE6resizeEm.exit5_crit_edge ], [ %.pre14, %bb.d ], [ %.pre14, %bb.c ] ; 2 uses
  store double 1.000000e+00, ptr %i.o, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store double 1.000000e+00, ptr %i.p, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp ult i64 %i.w, 3
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt3__16vectorIdNS_9allocatorIdEEE6resizeEm.exit5
  %i.y = sub nuw nsw i64 3, %i.w
  invoke void @_ZNSt3__16vectorIdNS_9allocatorIdEEE8__appendEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt3__16vectorIdNS_9allocatorIdEEE6resizeEmRKd.exit unwind label %bb.i

bb.f:                                             ; preds = %_ZNSt3__16vectorIdNS_9allocatorIdEEE6resizeEm.exit5
  %.not12 = icmp eq i64 %i.v, 24
  br i1 %.not12, label %_ZNSt3__16vectorIdNS_9allocatorIdEEE6resizeEmRKd.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.z, ptr %i.q, align 8, !tbaa !20
  br label %_ZNSt3__16vectorIdNS_9allocatorIdEEE6resizeEmRKd.exit

_ZNSt3__16vectorIdNS_9allocatorIdEEE6resizeEmRKd.exit: ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.aa, %bb.h ]
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !19  ; 4 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ai) #19
  br label %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit: ; preds = %bb.j, %bb.k
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !19  ; 4 uses
  %.not.i.i7 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i7, label %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit8, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit
  store ptr %i.aj, ptr %i.f, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !21
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #19
  br label %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit8

_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit8: ; preds = %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit, %bb.l
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !19  ; 4 uses
  %.not.i.i9 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i9, label %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit10, label %bb.m

bb.m:                                             ; preds = %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.av) #19
  br label %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit10

_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit10: ; preds = %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev.exit8, %bb.m
  call void @_ZN4gdcm6PixmapD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4gdcm12SmartPointerINS_6BitmapEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 5 uses
  %.not = icmp eq ptr %i.a, %1
  br i1 %.not, label %_ZN4gdcm6Object10UnRegisterEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !24
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4gdcm12SmartPointerINS_6BitmapEE8RegisterEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.d = add nsw i64 %i.c, 1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !27
  %i.e = icmp sgt i64 %i.c, -1
  br i1 %i.e, label %_ZN4gdcm12SmartPointerINS_6BitmapEE8RegisterEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 74, ptr noundef nonnull @.str.3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #21
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.f
  %.sink = phi ptr [ %i.k, %bb.j ], [ %i.f, %bb.f ]
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.j ], [ %i.g, %bb.f ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #20
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %common.resume
end_hunk_0
