Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/api_stats?download=true
inline.NumInlined: 195
inline.NumDeleted: 64
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.std::atomic.41" = type { %"struct.std::__atomic_base.42" }
%"struct.std::__atomic_base.42" = type { i8 }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$__clang_call_terminate = comdat any

@_ZTI12z3_exception = external constant ptr
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@g_z3_log_enabled = external global %"struct.std::atomic.41", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"basic_string::_M_replace_aux\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_stats_to_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z22log_Z3_stats_to_stringP11_Z3_contextP9_Z3_stats(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.332 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.p

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK10statistics12display_smt2ERSo(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.l       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !172, !noalias !173 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.e
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %5 = load ptr, ptr %i.j, align 8, !tbaa !174, !noalias !173 ; 2 uses
  %6 = icmp ugt ptr %i.i, %5
  %.08.i.i.i = select i1 %6, ptr %i.i, ptr %5
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !175, !noalias !173
  %i.m = ptrtoint ptr %.08.i.i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.o, ptr %i.p, align 8, !tbaa !176, !noalias !173
  %i.q = load ptr, ptr %4, align 8, !tbaa !177, !noalias !173
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !178, !noalias !173
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !179, !alias.scope !173
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !177, !noalias !173 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.y = load i64, ptr %i.x, align 8, !tbaa !176, !noalias !173 ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.u, ptr %3, align 8, !tbaa !177, !alias.scope !173
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !178, !noalias !173
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !178, !alias.scope !173
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !176, !noalias !173
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %i.ac = phi i64 [ %i.y, %bb.f ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !176, !alias.scope !173
  store ptr %i.v, ptr %i.s, align 8, !tbaa !177, !noalias !173
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ad, i8 0, i64 9, i1 false), !noalias !173
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.ag = load ptr, ptr %3, align 8, !tbaa !177, !alias.scope !173 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.t
  br i1 %i.ah, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ai = load i64, ptr %i.ae, align 8, !tbaa !176 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %.sink.split.i.i

bb.h:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.h
  unreachable

.sink.split.i.i:                                  ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ak = add i64 %i.ai, -1                       ; 2 uses
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !176
  %i.al = load ptr, ptr %3, align 8, !tbaa !177
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !tbaa !178
  %i.an = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.i unwind label %bb.m       ; 2 uses

bb.i:                                             ; preds = %.sink.split.i.i
  %i.ao = load ptr, ptr %3, align 8, !tbaa !177   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.t
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.aq = load i64, ptr %i.t, align 8, !tbaa !178
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.as = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.as, ptr %2, align 8, !tbaa !181
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.au = getelementptr i8, ptr %i.as, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %i.av
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !181
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8, !tbaa !181
  %i.ax = load ptr, ptr %i.s, align 8, !tbaa !177 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.v
  br i1 %i.ay, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = load i64, ptr %i.v, align 8, !tbaa !178
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #15
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i23
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8, !tbaa !181
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bb) #13
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bc) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br i1 %i.b, label %bb.j, label %_ZN10z3_log_ctxD2Ev.exit, !prof !161

bb.j:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.k:                                             ; preds = %bb.c
  %i.bd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.o

bb.l:                                             ; preds = %bb.d
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.n

bb.m:                                             ; preds = %bb.h, %.sink.split.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.bg = load ptr, ptr %3, align 8, !tbaa !177   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.t
  br i1 %i.bh, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.m, %bb.g
  %.sink = phi ptr [ %i.ag, %bb.g ], [ %i.bg, %bb.m ]
  %.pn.ph = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.bf, %bb.m ]
  %i.bi = load i64, ptr %i.t, align 8, !tbaa !178
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bj) #15
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.m, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.bf, %bb.m ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.n

bb.n:                                             ; preds = %.body, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.be, %bb.l ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.n ], [ %i.bd, %bb.k ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.3 = extractvalue { ptr, i32 } %.pn.pn.pn, 1   ; 2 uses
  br i1 %i.b, label %bb.p, label %_ZN10z3_log_ctxD2Ev.exit28, !prof !162

bb.p:                                             ; preds = %.thread, %bb.o
  %.336 = phi i32 [ %.332, %.thread ], [ %.3, %bb.o ]
  %.pn.pn.pn.pn34 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn.pn.pn, %bb.o ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit28

_ZN10z3_log_ctxD2Ev.exit28:                       ; preds = %bb.o, %bb.p
  %.335 = phi i32 [ %.3, %bb.o ], [ %.336, %bb.p ]
  %.pn.pn.pn.pn33 = phi { ptr, i32 } [ %.pn.pn.pn, %bb.o ], [ %.pn.pn.pn.pn34, %bb.p ] ; 2 uses
  %i.bk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #13
  %i.bl = icmp eq i32 %.335, %i.bk
  br i1 %i.bl, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit28
  %.314 = extractvalue { ptr, i32 } %.pn.pn.pn.pn33, 0
  %i.bm = call ptr @__cxa_begin_catch(ptr %.314) #13
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.u

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.j, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.r
  %.016 = phi ptr [ @.str, %bb.r ], [ %i.an, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.an, %bb.j ]
  ret ptr %.016

bb.t:                                             ; preds = %bb.s, %_ZN10z3_log_ctxD2Ev.exit28
  %.merged = phi { ptr, i32 } [ %.pn.pn.pn.pn33, %_ZN10z3_log_ctxD2Ev.exit28 ], [ %i.bn, %bb.s ]
  resume { ptr, i32 } %.merged

bb.u:                                             ; preds = %bb.s
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #16
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

end_hunk_0
