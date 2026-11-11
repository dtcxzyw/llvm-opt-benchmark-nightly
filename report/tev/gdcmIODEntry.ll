Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmIODEntry?download=true
inline.NumInlined: 246
inline.NumDeleted: 162
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
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.0, i64, ptr }
%struct.anon.0 = type { i64 }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", ptr, i32 }>
%"class.std::__1::ios_base" = type { ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, i64, ptr, i64, i64 }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, ptr }

$_ZN4gdcm9ExceptionC2EPKcS2_jS2_ = comdat any

$_ZN4gdcm9ExceptionD2Ev = comdat any

$_ZN4gdcm9Exception10CreateWhatEPKcS2_jS2_ = comdat any

$_ZN4gdcm9ExceptionD0Ev = comdat any

$_ZNK4gdcm9Exception4whatEv = comdat any

$_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = comdat any

$_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = comdat any

$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__120__throw_length_errorB8ne180100EPKc = comdat any

$_ZNSt12length_errorC2B8ne180100EPKc = comdat any

$_ZTIN4gdcm9ExceptionE = comdat any

$_ZTSN4gdcm9ExceptionE = comdat any

$_ZTVN4gdcm9ExceptionE = comdat any

@.str = private unnamed_addr constant [49 x i8] c"An invalid logic behavior occurred!usage.empty()\00", align 1
@.str.1 = private unnamed_addr constant [94 x i8] c"/opt-bench/work/tev/tev/dependencies/GDCM/Source/InformationObjectDefinition/gdcmIODEntry.cxx\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTIN4gdcm9ExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4gdcm9ExceptionE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4gdcm9ExceptionE = linkonce_odr dso_local constant [18 x i8] c"N4gdcm9ExceptionE\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@.str.8 = private unnamed_addr constant [36 x i8] c"An invalid logic behavior occurred0\00", align 1
@_ZTVN4gdcm9ExceptionE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4gdcm9ExceptionE, ptr @_ZN4gdcm9ExceptionD2Ev, ptr @_ZN4gdcm9ExceptionD0Ev, ptr @_ZNK4gdcm9Exception4whatEv] }, comdat, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"):\0A\00", align 1
@_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [16 x ptr] }, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZNK4gdcm8IODEntry12GetUsageTypeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = trunc i8 %i.b to i1                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i64, ptr %i.d, align 8
  %i.f = lshr i8 %i.b, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 10 uses
  switch i64 %i.h, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit10.thread [
    i64 0, label %bb.b
    i64 1, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 40) #16 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 23, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.n = select i1 %i.c, ptr %i.l, ptr %i.m       ; 2 uses
  %lhsc = load i8, ptr %i.n, align 1
  %i.o = icmp eq i8 %lhsc, 77
  br i1 %i.o, label %bb.m, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit10

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit10: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
  %lhsc50 = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %lhsc50, 85
  br i1 %i.p, label %bb.m, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit30.thread

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit10.thread: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.r = select i1 %i.c, ptr %.pre, ptr %i.q      ; 7 uses
  %i.s = getelementptr i8, ptr %i.r, i64 %i.h     ; 4 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.u = icmp slt i64 %i.h, 4                     ; 2 uses
  br i1 %i.u, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit10.thread, %bb.f
  %i.v = phi i64 [ %i.ae, %bb.f ], [ %i.h, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit10.thread ]
  %.02529.i.i.i = phi ptr [ %i.ac, %bb.f ], [ %i.r, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit10.thread ]
  %.reass.i.reass.i.reass.i = add nsw i64 %i.v, -3
  %i.w = tail call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02529.i.i.i, i32 noundef 85, i64 noundef %.reass.i.reass.i.reass.i) #16 ; 5 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.y = load i32, ptr %i.w, align 1
  %i.z = icmp ne i32 %i.y, 539828309
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.t, %i.ad                     ; 2 uses
  %i.af = icmp slt i64 %i.ae, 4
  br i1 %i.af, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit.thread, label %.lr.ph.i.i.i, !llvm.loop !21

_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i: ; preds = %bb.e
  %.pre20.i.i = ptrtoint ptr %i.w to i64
  %i.ag = icmp ne ptr %i.w, %i.s
  %i.ah = ptrtoint ptr %i.r to i64
  %i.ai = sub i64 %.pre20.i.i, %i.ah
  %i.aj = icmp ult i64 %i.ai, %i.h
  %or.cond = select i1 %i.ag, i1 %i.aj, i1 false
  br i1 %or.cond, label %bb.m, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit.thread

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit.thread: ; preds = %.lr.ph.i.i.i, %bb.f, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit10.thread, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i
  %i.ak = icmp slt i64 %i.h, 3
  br i1 %i.ak, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit20.thread, label %.lr.ph.i.i.i11

.lr.ph.i.i.i11:                                   ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit.thread, %bb.h
  %i.al = phi i64 [ %i.ba, %bb.h ], [ %i.h, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit.thread ]
  %.02529.i.i.i12 = phi ptr [ %i.ay, %bb.h ], [ %i.r, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit.thread ]
  %.reass.i.reass.i.reass.i14 = add nsw i64 %i.al, -2
  %i.am = tail call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02529.i.i.i12, i32 noundef 67, i64 noundef %.reass.i.reass.i.reass.i14) #16 ; 6 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i11
  %i.ao = load i16, ptr %i.am, align 1
  %i.ap = xor i16 %i.ao, 11587
  %i.aq = getelementptr i8, ptr %i.am, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i16
  %i.at = xor i16 %i.as, 32
  %i.au = or i16 %i.ap, %i.at
  %i.av = icmp ne i16 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i18, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.t, %i.az                     ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 3
  br i1 %i.bb, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit20.thread, label %.lr.ph.i.i.i11, !llvm.loop !21

_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i18: ; preds = %bb.g
  %.pre20.i.i19 = ptrtoint ptr %i.am to i64
  %i.bc = icmp ne ptr %i.am, %i.s
  %1 = ptrtoint ptr %i.r to i64
  %i.bd = sub i64 %.pre20.i.i19, %1
  %i.be = icmp ult i64 %i.bd, %i.h
  %or.cond36 = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond36, label %bb.m, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit20.thread

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit20.thread: ; preds = %.lr.ph.i.i.i11, %bb.h, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit.thread, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i18
  br i1 %i.u, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit30.thread, label %.lr.ph.i.i.i21

.lr.ph.i.i.i21:                                   ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit20.thread, %bb.j
  %i.bf = phi i64 [ %i.bo, %bb.j ], [ %i.h, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit20.thread ]
  %.02529.i.i.i22 = phi ptr [ %i.bm, %bb.j ], [ %i.r, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit20.thread ]
  %.reass.i.reass.i.reass.i24 = add nsw i64 %i.bf, -3
  %i.bg = tail call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02529.i.i.i22, i32 noundef 67, i64 noundef %.reass.i.reass.i.reass.i24) #16 ; 5 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit30.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i21
  %i.bi = load i32, ptr %i.bg, align 1
  %i.bj = icmp ne i32 %i.bi, 539828291
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i28, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.t, %i.bn                     ; 2 uses
  %i.bp = icmp slt i64 %i.bo, 4
  br i1 %i.bp, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit30.thread, label %.lr.ph.i.i.i21, !llvm.loop !21

_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i28: ; preds = %bb.i
  %.pre20.i.i29 = ptrtoint ptr %i.bg to i64
  %i.bq = icmp ne ptr %i.bg, %i.s
  %2 = ptrtoint ptr %i.r to i64
  %i.br = sub i64 %.pre20.i.i29, %2
  %i.bs = icmp ult i64 %i.br, %i.h
  %or.cond37 = select i1 %i.bq, i1 %i.bs, i1 false
  br i1 %or.cond37, label %bb.m, label %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit30.thread

_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit30.thread: ; preds = %bb.j, %.lr.ph.i.i.i21, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit10, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i28, %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit20.thread
  %i.bt = tail call ptr @__cxa_allocate_exception(i64 40) #16 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 45, ptr noundef nonnull @.str.2)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit30.thread
  tail call void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #17
  unreachable

bb.l:                                             ; preds = %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findB8ne180100EPKcm.exit30.thread
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i28, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i18, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit10, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit
  %.04 = phi i32 [ 1, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i18 ], [ 0, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit ], [ 2, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_.exit10 ], [ 2, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i ], [ 1, %_ZNSt3__118__search_substringB8ne180100IcNS_11char_traitsIcEEEEPKT_S5_S5_S5_S5_.exit.i.i28 ]
  ret i32 %.04

bb.n:                                             ; preds = %bb.l, %bb.d
  %.sink = phi ptr [ %i.bt, %bb.l ], [ %i.i, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.l ], [ %i.j, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #16
  resume { ptr, i32 } %.pn
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4gdcm9ExceptionE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN4gdcm9Exception10CreateWhatEPKcS2_jS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::logic_error") align 8 %i.a, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.c, %bb.d ]
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4gdcm9ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4gdcm9ExceptionE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #16
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm9Exception10CreateWhatEPKcS2_jS2_(ptr dead_on_unwind noalias writable sret(%"class.std::logic_error") align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__1::basic_ostringstream", align 8 ; 25 uses
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8), align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !10
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !10
  %i.h = load ptr, ptr %5, align 8, !tbaa !10
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %5, i64 %i.j ; 3 uses
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %i.k, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store ptr null, ptr %i.l, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  store i32 -1, ptr %i.m, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), ptr %5, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.a, align 8, !tbaa !10
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(100) %i.b)
          to label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #16
  br label %bb.e

common.resume:                                    ; preds = %bb.x, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %.pn.pn, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.n, %bb.c ]
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.a) #16
  br label %common.resume

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit: ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.b, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  store i32 16, ptr %i.q, align 8, !tbaa !39
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %2, i64 noundef %i.r)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit unwind label %bb.t

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit: ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.9, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit9 unwind label %bb.t

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit9: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef %3)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit9
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.10, i64 noundef 2)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit10 unwind label %bb.t

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit10: ; preds = %bb.f
  %i.w = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %4, i64 noundef %i.w)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit11 unwind label %bb.t

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit11: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit10
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.11, i64 noundef 3)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit12 unwind label %bb.t ; 0 uses

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit12: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit11
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %1, i64 noundef %i.z)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit13 unwind label %bb.t ; 0 uses

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit13: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.ab = load i32, ptr %i.q, align 8, !tbaa !39, !noalias !43 ; 2 uses
  %i.ac = and i32 %i.ab, 16
  %.not.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit13
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44, !noalias !43 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !45, !noalias !43 ; 3 uses
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !44, !noalias !43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = phi ptr [ %i.ag, %bb.h ], [ %i.ae, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 48
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

bb.j:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit13
  %i.ak = and i32 %i.ab, 8
  %.not1.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not1.i.i.i.i, label %.thread15.i.i.i, label %bb.k

.thread15.i.i.i:                                  ; preds = %bb.j
end_hunk_0
