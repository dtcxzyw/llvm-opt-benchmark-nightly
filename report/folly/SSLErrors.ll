Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/SSLErrors?download=true
inline.NumInlined: 72
inline.NumDeleted: 44
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.0 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.0 = type { i64, [8 x i8] }
%"struct.std::array" = type { [256 x i8] }

$_ZN5folly12SSLExceptionD0Ev = comdat any

$_ZN5folly20AsyncSocketExceptionD0Ev = comdat any

$_ZTVN5folly12SSLExceptionE = comdat any

$_ZTIN5folly12SSLExceptionE = comdat any

$_ZTSN5folly12SSLExceptionE = comdat any

$_ZTIN5folly20AsyncSocketExceptionE = comdat any

$_ZTSN5folly20AsyncSocketExceptionE = comdat any

$_ZTVN5folly20AsyncSocketExceptionE = comdat any

@_ZTVN5folly12SSLExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly12SSLExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5folly12SSLExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTIN5folly12SSLExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly12SSLExceptionE, ptr @_ZTIN5folly20AsyncSocketExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5folly12SSLExceptionE = linkonce_odr constant [23 x i8] c"N5folly12SSLExceptionE\00", comdat, align 1
@_ZTIN5folly20AsyncSocketExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly20AsyncSocketExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN5folly20AsyncSocketExceptionE = linkonce_odr constant [31 x i8] c"N5folly20AsyncSocketExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str = private unnamed_addr constant [15 x i8] c"Connection EOF\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Network error\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"SSL connection closed normally\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTVN5folly20AsyncSocketExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly20AsyncSocketExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5folly20AsyncSocketExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"Client tried to renegotiate with server\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Attempt to start renegotiation, but unsupported\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Attempt to write before SSL connection established\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"SSL error\00", align 1
@switch.table._ZN5folly12SSLExceptionC2ENS_8SSLErrorE = private unnamed_addr constant [6 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @.str.5, i64 39), ptr getelementptr inbounds nuw (i8, ptr @.str.6, i64 47), ptr getelementptr inbounds nuw (i8, ptr @.str.7, i64 50), ptr getelementptr inbounds nuw (i8, ptr @.str.8, i64 9), ptr getelementptr inbounds nuw (i8, ptr @.str.1, i64 13), ptr getelementptr inbounds nuw (i8, ptr @.str.2, i64 30)], align 8
@switch.table._ZN5folly12SSLExceptionC2ENS_8SSLErrorE.1 = private unnamed_addr constant [6 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.1, ptr @.str.2], align 8

@_ZN5folly12SSLExceptionC1Eimii = unnamed_addr alias void (ptr, i32, i64, i32, i32), ptr @_ZN5folly12SSLExceptionC2Eimii
@_ZN5folly12SSLExceptionC1ENS_8SSLErrorE = unnamed_addr alias void (ptr, i32), ptr @_ZN5folly12SSLExceptionC2ENS_8SSLErrorE

; Function Attrs: mustprogress uwtable
define void @_ZN5folly12SSLExceptionC2Eimii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"struct.std::array", align 1       ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  switch i32 %1, label %bb.c [
    i32 6, label %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit.thread38
    i32 5, label %_ZN12_GLOBAL__N_120exTypefromSSLErrInfoEimi.exit
  ]

_ZN12_GLOBAL__N_120exTypefromSSLErrInfoEimi.exit: ; preds = %bb.a
  %i.a = icmp eq i64 %2, 0                        ; 2 uses
  %i.b = icmp eq i32 %3, 0                        ; 2 uses
  %or.cond.i = and i1 %i.a, %i.b
  %..i = select i1 %or.cond.i, i32 4, i32 15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_120exTypefromSSLErrInfoEimi.exit
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.c, ptr %7, align 8, !tbaa !15, !alias.scope !12
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br i1 %i.b, label %._crit_edge.i.i.i, label %._crit_edge.i.i11.i

._crit_edge.i.i.i:                                ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.c, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  store i64 14, ptr %i.d, align 8, !tbaa !19, !alias.scope !12
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 30
  store i8 0, ptr %i.e, align 2, !tbaa !22, !alias.scope !12
  br label %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit.thread

._crit_edge.i.i11.i:                              ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.c, ptr noundef nonnull align 1 dereferenceable(13) @.str.1, i64 13, i1 false)
  store i64 13, ptr %i.d, align 8, !tbaa !19, !alias.scope !12
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 29
  store i8 0, ptr %i.f, align 1, !tbaa !22, !alias.scope !12
  br label %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit.thread

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  br label %.thread

_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit.thread38: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.g, ptr %7, align 8, !tbaa !15, !alias.scope !12
  %8 = call noalias noundef nonnull dereferenceable(31) ptr @_Znwm(i64 noundef 31) #11 ; 3 uses
  store ptr %8, ptr %7, align 8, !tbaa !23, !alias.scope !12
  store i64 30, ptr %i.g, align 8, !tbaa !22, !alias.scope !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %8, ptr noundef nonnull align 1 dereferenceable(30) @.str.2, i64 30, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 30, ptr %i.h, align 8, !tbaa !19, !alias.scope !12
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 30
  store i8 0, ptr %i.i, align 1, !tbaa !22
  br label %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit.thread

.thread:                                          ; preds = %_ZN12_GLOBAL__N_120exTypefromSSLErrInfoEimi.exit, %bb.c
  %.0.i2022 = phi i32 [ 12, %bb.c ], [ 15, %_ZN12_GLOBAL__N_120exTypefromSSLErrInfoEimi.exit ]
  %i.j = phi i1 [ false, %bb.c ], [ true, %_ZN12_GLOBAL__N_120exTypefromSSLErrInfoEimi.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10, !noalias !12
  call void @ERR_error_string_n(i64 noundef %2, ptr noundef nonnull %6, i64 noundef 256), !noalias !12
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.k, ptr %7, align 8, !tbaa !15, !alias.scope !12
  %i.l = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #10, !noalias !12 ; 8 uses
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %bb.d, label %._crit_edge.i.i27.i

bb.d:                                             ; preds = %.thread
  %i.n = icmp slt i64 %i.l, 0
  br i1 %i.n, label %.noexc.i30.i, label %bb.e

.noexc.i30.i:                                     ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %.noexc11.i29.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i28.i, !prof !24

.noexc11.i29.i:                                   ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #12
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i28.i: ; preds = %bb.e
  %i.q = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #11 ; 2 uses
  store ptr %i.q, ptr %7, align 8, !tbaa !23, !alias.scope !12
  store i64 %i.l, ptr %i.k, align 8, !tbaa !22, !alias.scope !12
  br label %._crit_edge.i.i27.i

._crit_edge.i.i27.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i28.i, %.thread
  %i.r = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i28.i ], [ %i.k, %.thread ] ; 3 uses
  switch i64 %i.l, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i27.i
  %i.s = load i8, ptr %6, align 1, !tbaa !22, !noalias !12
  store i8 %i.s, ptr %i.r, align 1, !tbaa !22
  br label %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit

bb.g:                                             ; preds = %._crit_edge.i.i27.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %6, i64 %i.l, i1 false)
  br label %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit

_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit: ; preds = %._crit_edge.i.i27.i, %bb.f, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.l, ptr %i.t, align 8, !tbaa !19, !alias.scope !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l
  store i8 0, ptr %i.u, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10, !noalias !12
  %spec.select40 = select i1 %i.j, i32 %4, i32 0
  %i.v = select i1 %i.j, i32 4, i32 3
  br label %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit.thread

_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit.thread: ; preds = %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit, %._crit_edge.i.i11.i, %._crit_edge.i.i.i, %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit.thread38
  %.0.i1936 = phi i32 [ 4, %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit.thread38 ], [ %.0.i2022, %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit ], [ 15, %._crit_edge.i.i11.i ], [ %..i, %._crit_edge.i.i.i ] ; 2 uses
  %. = phi i32 [ 3, %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit.thread38 ], [ %i.v, %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit ], [ 4, %._crit_edge.i.i11.i ], [ 4, %._crit_edge.i.i.i ]
  %i.w = phi i32 [ 0, %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit.thread38 ], [ %spec.select40, %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit ], [ %4, %._crit_edge.i.i11.i ], [ %4, %._crit_edge.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  invoke void @_ZN5folly20AsyncSocketException10getMessageENS0_24AsyncSocketExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef %.0.i1936, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.w)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit.thread
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.noexc
  %i.x = load ptr, ptr %5, align 8, !tbaa !23     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !22
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #13
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.i:                                             ; preds = %.noexc
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !22
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly20AsyncSocketExceptionE, i64 16), ptr %0, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.0.i1936, ptr %i.ai, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.w, ptr %i.aj, align 4, !tbaa !33
  %i.ak = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.an = load i64, ptr %i.al, align 8, !tbaa !22
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly12SSLExceptionE, i64 16), ptr %0, align 8, !tbaa !25
  %i.ap = icmp eq i32 %1, 6
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sink = select i1 %i.ap, i32 5, i32 %.
  store i32 %.sink, ptr %i.aq, align 8, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.ar, align 8, !tbaa !37
  ret void

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_118decodeOpenSSLErrorB5cxx11Eimi.exit.thread
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.j ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ]
  %i.at = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %.body
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !22
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly12SSLExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #10
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #13
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @ERR_error_string_n(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN5folly20AsyncSocketException10getMessageENS0_24AsyncSocketExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #4

end_hunk_0
