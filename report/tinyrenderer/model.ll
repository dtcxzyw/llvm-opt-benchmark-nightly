Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinyrenderer/original/model?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.18 }
%union.anon.18 = type { i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_istringstream" = type { %"class.std::basic_istream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%struct.vec = type { double, double, double, double }
%struct.vec.19 = type { double, double }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

@.str = private unnamed_addr constant [3 x i8] c"v \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vn \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"vt \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"f \00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"Error: the obj file is supposed to be triangulated\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"# v# \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" f# \00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"_diffuse.tga\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"_nm_tangent.tga\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"_spec.tga\00", align 1
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.10 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@.str.14 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"texture file \00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c" loading \00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN5ModelC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN5ModelC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ModelC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(264) initializes((0, 264)) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_ifstream", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 33 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 12 uses
  %6 = alloca %struct.vec, align 8                ; 10 uses
  %7 = alloca %struct.vec, align 16               ; 8 uses
  %8 = alloca %struct.vec.19, align 8             ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %1, align 8, !tbaa !10
  %i.r = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240) %i.p, ptr noundef %i.q, i32 noundef 8)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  %.not.i = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %2, align 8, !tbaa !16
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %2, i64 %i.u ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !18
  %i.y = or i32 %i.x, 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  %.sink.i = phi i32 [ %i.y, %bb.c ], [ 0, %.noexc ]
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.v, i32 noundef %.sink.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %2, align 8, !tbaa !16
  %i.aa = getelementptr i8, ptr %i.z, i64 -24     ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !18
  %i.af = and i32 %i.ae, 5
  %.not318 = icmp eq i32 %i.af, 0
  br i1 %.not318, label %bb.h, label %bb.cd

bb.f:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.g:                                             ; preds = %bb.d, %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !28
  store i8 0, ptr %i.ai, align 8, !tbaa !29
  %i.ak = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %2, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !18
  %i.ao = and i32 %i.an, 2
  %.not319400 = icmp eq i32 %i.ao, 0
  br i1 %.not319400, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %spec.select.i.1.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %spec.select.i.2.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bf = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 3 uses
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bm, i64 -24    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.bt = phi i64 [ %i.ak, %.lr.ph ], [ %i.kv, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  %i.bu = getelementptr inbounds i8, ptr %2, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 240
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

.invoke:                                          ; preds = %bb.i, %bb.bx
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.cont unwind label %.loopexit.split-lp327

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !38
  %.not.i1.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i1.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 67
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !29
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bw)
          to label %.noexc86.a unwind label %.loopexit326

.noexc86.a:                                       ; preds = %bb.k
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = invoke noundef signext i8 %i.cd(ptr noundef nonnull align 8 dereferenceable(570) %i.bw, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit326, !inline_history !44

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc86.a, %bb.j
  %.0.i.i.i = phi i8 [ %i.ca, %bb.j ], [ %i.ce, %.noexc86.a ]
  %i.cf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %.0.i.i.i)
          to label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit326 ; 0 uses

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.cg = load ptr, ptr %3, align 8, !tbaa !10    ; 4 uses
  store ptr %i.ap, ptr %5, align 8, !tbaa !27
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #20
          to label %.noexc89 unwind label %.loopexit.split-lp332

.noexc89:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ci = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cg) #19 ; 8 uses
  %i.cj = icmp ugt i64 %i.ci, 15
  br i1 %i.cj, label %bb.n, label %._crit_edge.i.i

bb.n:                                             ; preds = %bb.m
  %i.ck = icmp slt i64 %i.ci, 0
  br i1 %i.ck, label %.noexc.i, label %bb.o

.noexc.i:                                         ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
          to label %.noexc90.a unwind label %.loopexit.split-lp332

.noexc90.a:                                       ; preds = %.noexc.i
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.cl = add nuw i64 %i.ci, 1                    ; 2 uses
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !45

.noexc11.i:                                       ; preds = %bb.o
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc91.a unwind label %.loopexit.split-lp332

.noexc91.a:                                       ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.o
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #21
          to label %.noexc92 unwind label %.loopexit331 ; 2 uses

.noexc92:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.cn, ptr %5, align 8, !tbaa !10
  store i64 %i.ci, ptr %i.ap, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc92, %bb.m
  %i.co = phi ptr [ %i.cn, %.noexc92 ], [ %i.ap, %bb.m ] ; 3 uses
  switch i64 %i.ci, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.cp = load i8, ptr %i.cg, align 1, !tbaa !29
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !29
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.co, ptr nonnull align 1 %i.cg, i64 %i.ci, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i
  store i64 %i.ci, ptr %i.aq, align 8, !tbaa !28
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ci
  store i8 0, ptr %i.cq, align 1, !tbaa !29
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 8)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.cr = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ap
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.ct = load i64, ptr %i.ap, align 8, !tbaa !29
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.cv = load i64, ptr %i.aj, align 8, !tbaa !28 ; 6 uses
  %spec.select.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 2) ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.critedge75, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cx = load ptr, ptr %3, align 8, !tbaa !10
  %bcmp = call i32 @bcmp(ptr %i.cx, ptr nonnull @.str, i64 %spec.select.i.i)
  %.not.i93 = icmp eq i32 %bcmp, 0
  %.not = icmp ne i64 %i.cv, 1
  %or.cond = and i1 %.not, %.not.i93
  br i1 %or.cond, label %bb.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i105

bb.t:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %i.cy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.u unwind label %bb.aa      ; 0 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.ar, align 8, !tbaa !46
  %i.cz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZNSirsERd.exit unwind label %bb.ab ; 0 uses

bb.v:                                             ; preds = %_ZNSirsERd.exit.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !49
  %i.da = load ptr, ptr %i.as, align 8, !tbaa !51
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store ptr %i.db, ptr %i.as, align 8, !tbaa !51
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backERKS1_.exit

bb.w:                                             ; preds = %_ZNSirsERd.exit.2
  %i.dc = load ptr, ptr %0, align 8, !tbaa !54    ; 5 uses
  %i.dd = ptrtoint ptr %i.eb to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 4 uses
  %i.dg = icmp eq i64 %i.df, 9223372036854775776
  br i1 %i.dg, label %bb.x, label %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc96 unwind label %.loopexit.split-lp337

.noexc96:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.dh = ashr exact i64 %i.df, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %i.di = add nsw i64 %.sroa.speculated.i.i.i, %i.dh ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dh
  %i.dk = call i64 @llvm.umin.i64(i64 %i.di, i64 288230376151711743)
  %i.dl = select i1 %i.dj, i64 288230376151711743, i64 %i.dk ; 3 uses
  %.not.i.i.i95 = icmp ne i64 %i.dl, 0
  call void @llvm.assume(i1 %.not.i.i.i95)
  %i.dm = shl nuw nsw i64 %i.dl, 5
  %i.dn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #21
          to label %.noexc97 unwind label %.loopexit336 ; 5 uses

.noexc97:                                         ; preds = %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !49
  %.not10.i.i.i.i.i = icmp eq ptr %i.dc, %i.eb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc97, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i ], [ %i.dn, %.noexc97 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i ], [ %i.dc, %.noexc97 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !49, !alias.scope !55
  %i.dp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dp, %i.eb
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !59

_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc97
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dn, %.noexc97 ], [ %i.dq, %.lr.ph.i.i.i.i.i ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i23.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.df) #22
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.dn, ptr %0, align 8, !tbaa !54
  store ptr %i.dr, ptr %i.as, align 8, !tbaa !51
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %i.dl
  store ptr %i.ds, ptr %i.at, align 8, !tbaa !61
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backERKS1_.exit

.loopexit326:                                     ; preds = %bb.k, %.noexc86.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %lpad.loopexit328 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

.loopexit.split-lp327:                            ; preds = %.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191, %._crit_edge, %bb.bw, %bb.bz, %.noexc272, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i269, %.noexc274
  %lpad.loopexit.split-lp329 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

.loopexit331:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit333 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

.loopexit.split-lp332:                            ; preds = %bb.l, %.noexc.i, %.noexc11.i
  %lpad.loopexit.split-lp334 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.z:                                             ; preds = %bb.r
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %5, align 8, !tbaa !10    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.ap
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.z
  %i.dw = load i64, ptr %i.ap, align 8, !tbaa !29
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.z, %.loopexit331, %.loopexit.split-lp332, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  %.pn53 = phi { ptr, i32 } [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %lpad.loopexit.split-lp334, %.loopexit.split-lp332 ], [ %lpad.loopexit333, %.loopexit331 ], [ %i.dt, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.bv

bb.aa:                                            ; preds = %bb.an, %bb.am, %bb.ae, %bb.ad, %bb.t
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

_ZNSirsERd.exit:                                  ; preds = %bb.u
  %i.dz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %_ZNSirsERd.exit.1 unwind label %bb.ab ; 0 uses

_ZNSirsERd.exit.1:                                ; preds = %_ZNSirsERd.exit
  %i.ea = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %_ZNSirsERd.exit.2 unwind label %bb.ab ; 0 uses

_ZNSirsERd.exit.2:                                ; preds = %_ZNSirsERd.exit.1
  %i.eb = load ptr, ptr %i.as, align 8, !tbaa !51 ; 5 uses
  %i.ec = load ptr, ptr %i.at, align 8, !tbaa !61
  %.not.i94 = icmp eq ptr %i.eb, %i.ec
  br i1 %.not.i94, label %bb.w, label %bb.v

bb.ab:                                            ; preds = %_ZNSirsERd.exit.1, %_ZNSirsERd.exit, %bb.u
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.critedge75

.loopexit336:                                     ; preds = %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit338 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp337:                            ; preds = %bb.x
  %lpad.loopexit.split-lp339 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit336, %.loopexit.split-lp337, %bb.ab
  %.pn56 = phi { ptr, i32 } [ %i.ed, %bb.ab ], [ %lpad.loopexit338, %.loopexit336 ], [ %lpad.loopexit.split-lp339, %.loopexit.split-lp337 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bu

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i105:  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %spec.select.i.i103 = call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 3) ; 2 uses
  %i.ee = load ptr, ptr %3, align 8, !tbaa !10    ; 3 uses
  %bcmp320 = call i32 @bcmp(ptr %i.ee, ptr nonnull @.str.1, i64 %spec.select.i.i103)
  %.not.i106 = icmp eq i32 %bcmp320, 0
  %.not58 = icmp ugt i64 %i.cv, 2                 ; 2 uses
  %or.cond323 = and i1 %.not58, %.not.i106
  br i1 %or.cond323, label %bb.ad, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i123

bb.ad:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i105
  %i.ef = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.ae unwind label %bb.aa

bb.ae:                                            ; preds = %bb.ad
  %i.eg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.af unwind label %bb.aa     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.eh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZNSirsERd.exit118 unwind label %bb.ag ; 0 uses

_ZNSirsERd.exit118:                               ; preds = %bb.af
  %i.ei = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %spec.select.i.2.i.i.i)
          to label %_ZNSirsERd.exit118.1 unwind label %bb.ag ; 0 uses

_ZNSirsERd.exit118.1:                             ; preds = %_ZNSirsERd.exit118
  %i.ej = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %spec.select.i.1.i.i.i)
          to label %_ZNSirsERd.exit118.2 unwind label %bb.ag ; 0 uses

_ZNSirsERd.exit118.2:                             ; preds = %_ZNSirsERd.exit118.1
  %i.ek = load <2 x double>, ptr %spec.select.i.1.i.i.i, align 16, !tbaa !50, !noalias !62 ; 3 uses
  %i.el = extractelement <2 x double> %i.ek, i64 1 ; 2 uses
  %i.em = call double @llvm.fmuladd.f64(double %i.el, double %i.el, double 0.000000e+00)
  %i.en = extractelement <2 x double> %i.ek, i64 0 ; 2 uses
  %i.eo = call double @llvm.fmuladd.f64(double %i.en, double %i.en, double %i.em)
  %i.ep = load <2 x double>, ptr %7, align 16, !tbaa !50, !noalias !62 ; 3 uses
  %i.eq = extractelement <2 x double> %i.ep, i64 1 ; 2 uses
  %i.er = call double @llvm.fmuladd.f64(double %i.eq, double %i.eq, double %i.eo)
  %i.es = extractelement <2 x double> %i.ep, i64 0 ; 2 uses
  %i.et = call noundef double @llvm.fmuladd.f64(double %i.es, double %i.es, double %i.er)
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.et)
  %i.eu = insertelement <2 x double> poison, double %sqrt.i.i, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ew = fdiv <2 x double> %i.ek, %i.ev          ; 2 uses
  %i.ex = fdiv <2 x double> %i.ep, %i.ev          ; 2 uses
  %i.ey = load ptr, ptr %i.au, align 8, !tbaa !51 ; 7 uses
  %i.ez = load ptr, ptr %i.av, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.ey, %i.ez
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %_ZNSirsERd.exit118.1, %_ZNSirsERd.exit118, %bb.af
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ah:                                            ; preds = %_ZNSirsERd.exit118.2
  store <2 x double> %i.ex, ptr %i.ey, align 8, !tbaa !50
  %.sroa.10.0..sroa_idx295 = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <2 x double> %i.ew, ptr %.sroa.10.0..sroa_idx295, align 8, !tbaa !50
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  store ptr %i.fb, ptr %i.au, align 8, !tbaa !51
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backEOS1_.exit

bb.ai:                                            ; preds = %_ZNSirsERd.exit118.2
  %i.fc = load ptr, ptr %i.e, align 8, !tbaa !54  ; 5 uses
  %i.fd = ptrtoint ptr %i.ey to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 4 uses
  %i.fg = icmp eq i64 %i.ff, 9223372036854775776
  br i1 %i.fg, label %bb.aj, label %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc119 unwind label %.loopexit.split-lp342

.noexc119:                                        ; preds = %bb.aj
  unreachable

_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.fh = ashr exact i64 %i.ff, 5                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fi = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fh ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fi, i64 288230376151711743)
  %i.fl = select i1 %i.fj, i64 288230376151711743, i64 %i.fk ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fm = shl nuw nsw i64 %i.fl, 5
  %i.fn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #21
          to label %.noexc120 unwind label %.loopexit341 ; 5 uses

.noexc120:                                        ; preds = %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ff ; 2 uses
  store <2 x double> %i.ex, ptr %i.fo, align 8, !tbaa !50
  %.sroa.10.0..sroa_idx297 = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <2 x double> %i.ew, ptr %.sroa.10.0..sroa_idx297, align 8, !tbaa !50
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.fc, %i.ey
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc120, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i ], [ %i.fn, %.noexc120 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i ], [ %i.fc, %.noexc120 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !49, !alias.scope !65
  %i.fp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fp, %i.ey
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !59

_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc120
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fn, %.noexc120 ], [ %i.fq, %.lr.ph.i.i.i.i.i.i ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 32
  %.not.i23.i.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.ff) #22
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorI3vecILi4EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.fn, ptr %i.e, align 8, !tbaa !54
  store ptr %i.fr, ptr %i.au, align 8, !tbaa !51
  %i.fs = getelementptr inbounds nuw [32 x i8], ptr %i.fn, i64 %i.fl
  store ptr %i.fs, ptr %i.av, align 8, !tbaa !61
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %.critedge75

.loopexit341:                                     ; preds = %_ZNKSt6vectorI3vecILi4EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit343 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp342:                            ; preds = %bb.aj
  %lpad.loopexit.split-lp344 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit341, %.loopexit.split-lp342, %bb.ag
  %.pn60 = phi { ptr, i32 } [ %i.fa, %bb.ag ], [ %lpad.loopexit343, %.loopexit341 ], [ %lpad.loopexit.split-lp344, %.loopexit.split-lp342 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.bu

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i123:  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i105
  %bcmp321 = call i32 @bcmp(ptr %i.ee, ptr nonnull @.str.2, i64 %spec.select.i.i103)
  %.not.i124 = icmp eq i32 %bcmp321, 0
  %or.cond324 = and i1 %.not58, %.not.i124
  br i1 %or.cond324, label %bb.am, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i149

bb.am:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i123
  %i.ft = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.an unwind label %bb.aa

bb.an:                                            ; preds = %bb.am
  %i.fu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.ao unwind label %bb.aa     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.fv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZNSirsERd.exit146 unwind label %bb.at ; 0 uses

bb.ap:                                            ; preds = %_ZNSirsERd.exit146.1
  store double %i.gp, ptr %i.gs, align 8, !tbaa !50
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store double %i.gr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !50
  %i.fw = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store ptr %i.fw, ptr %i.bd, align 8, !tbaa !69
  br label %_ZNSt6vectorI3vecILi2EESaIS1_EE9push_backEOS1_.exit

bb.aq:                                            ; preds = %_ZNSirsERd.exit146.1
  %i.fx = load ptr, ptr %i.f, align 8, !tbaa !72  ; 5 uses
  %i.fy = ptrtoint ptr %i.gs to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz                    ; 4 uses
  %i.gb = icmp eq i64 %i.ga, 9223372036854775792
  br i1 %i.gb, label %bb.ar, label %_ZNKSt6vectorI3vecILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.noexc141 unwind label %.loopexit.split-lp350

.noexc141:                                        ; preds = %bb.ar
  unreachable

_ZNKSt6vectorI3vecILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aq
  %i.gc = ashr exact i64 %i.ga, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i132 = call i64 @llvm.umax.i64(i64 %i.gc, i64 1)
  %i.gd = add nsw i64 %.sroa.speculated.i.i.i.i132, %i.gc ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.gc
  %i.gf = call i64 @llvm.umin.i64(i64 %i.gd, i64 576460752303423487)
  %i.gg = select i1 %i.ge, i64 576460752303423487, i64 %i.gf ; 3 uses
  %.not.i.i.i.i133 = icmp ne i64 %i.gg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i133)
  %i.gh = shl nuw nsw i64 %i.gg, 4
  %i.gi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gh) #21
          to label %.noexc142 unwind label %.loopexit349 ; 5 uses

.noexc142:                                        ; preds = %_ZNKSt6vectorI3vecILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ga ; 2 uses
  store double %i.gp, ptr %i.gj, align 8, !tbaa !50
  %.sroa.6.0..sroa_idx282 = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store double %i.gr, ptr %.sroa.6.0..sroa_idx282, align 8, !tbaa !50
  %.not10.i.i.i.i.i.i134 = icmp eq ptr %i.fx, %i.gs
  br i1 %.not10.i.i.i.i.i.i134, label %_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i135

.lr.ph.i.i.i.i.i.i135:                            ; preds = %.noexc142, %.lr.ph.i.i.i.i.i.i135
  %.012.i.i.i.i.i.i136 = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i.i135 ], [ %i.gi, %.noexc142 ] ; 2 uses
  %.0911.i.i.i.i.i.i137 = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i135 ], [ %i.fx, %.noexc142 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i136, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i137, i64 16, i1 false), !tbaa.struct !73, !alias.scope !74
  %i.gk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i137, i64 16 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i136, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i138 = icmp eq ptr %i.gk, %i.gs
  br i1 %.not.i.i.i.i.i.i138, label %_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i135, !llvm.loop !78

_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i135, %.noexc142
  %.0.lcssa.i.i.i.i.i.i139 = phi ptr [ %i.gi, %.noexc142 ], [ %i.gl, %.lr.ph.i.i.i.i.i.i135 ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i139, i64 16
  %.not.i23.i.i.i140 = icmp eq ptr %i.fx, null
  br i1 %.not.i23.i.i.i140, label %_ZNSt6vectorI3vecILi2EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.ga) #22
  br label %_ZNSt6vectorI3vecILi2EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorI3vecILi2EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.as, %_ZNSt6vectorI3vecILi2EESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.gi, ptr %i.f, align 8, !tbaa !72
  store ptr %i.gm, ptr %i.bd, align 8, !tbaa !69
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %i.gg
  store ptr %i.gn, ptr %i.be, align 8, !tbaa !79
  br label %_ZNSt6vectorI3vecILi2EESaIS1_EE9push_backEOS1_.exit

_ZNSirsERd.exit146:                               ; preds = %bb.ao
  %i.go = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %_ZNSirsERd.exit146.1 unwind label %bb.at ; 0 uses

_ZNSirsERd.exit146.1:                             ; preds = %_ZNSirsERd.exit146
  %i.gp = load double, ptr %8, align 8, !tbaa !80 ; 2 uses
  %i.gq = load double, ptr %i.bc, align 8, !tbaa !82
  %i.gr = fsub double 1.000000e+00, %i.gq         ; 2 uses
  %i.gs = load ptr, ptr %i.bd, align 8, !tbaa !69 ; 7 uses
  %i.gt = load ptr, ptr %i.be, align 8, !tbaa !79
  %.not.i.i131 = icmp eq ptr %i.gs, %i.gt
  br i1 %.not.i.i131, label %bb.aq, label %bb.ap

bb.at:                                            ; preds = %_ZNSirsERd.exit146, %bb.ao
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZNSt6vectorI3vecILi2EESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorI3vecILi2EESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.critedge75

.loopexit349:                                     ; preds = %_ZNKSt6vectorI3vecILi2EESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit351 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp350:                            ; preds = %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %.loopexit349, %.loopexit.split-lp350, %bb.at
  %.pn64 = phi { ptr, i32 } [ %i.gu, %bb.at ], [ %lpad.loopexit351, %.loopexit349 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp350 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.bu

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i149:  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i123
  %bcmp322 = call i32 @bcmp(ptr %i.ee, ptr nonnull @.str.3, i64 %spec.select.i.i)
  %.not.i150 = icmp eq i32 %bcmp322, 0
  %.not66 = icmp ne i64 %i.cv, 1
  %or.cond325 = and i1 %.not66, %.not.i150
  br i1 %or.cond325, label %bb.av, label %.critedge75

bb.av:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.gv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit ; 0 uses

.preheader:                                       ; preds = %bb.av, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit182
  %.0 = phi i32 [ %i.jt, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit182 ], [ 0, %bb.av ] ; 2 uses
  %i.gw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.aw unwind label %.loopexit

bb.aw:                                            ; preds = %.preheader
  %i.gx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.ax unwind label %.loopexit

bb.ax:                                            ; preds = %bb.aw
  %i.gy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.ay unwind label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  %i.gz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.az unwind label %.loopexit

bb.az:                                            ; preds = %bb.ay
  %i.ha = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.ba unwind label %.loopexit ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !16
  %i.hc = getelementptr i8, ptr %i.hb, i64 -24
  %i.hd = load i64, ptr %i.hc, align 8
  %i.he = getelementptr inbounds i8, ptr %i.ha, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !18
  %i.hh = and i32 %i.hg, 5
  %.not.i157.a = icmp eq i32 %i.hh, 0
  br i1 %.not.i157.a, label %bb.bb, label %bb.bo

bb.bb:                                            ; preds = %bb.ba
  %i.hi = load i32, ptr %i.b, align 4, !tbaa !83
  %i.hj = add nsw i32 %i.hi, -1                   ; 3 uses
  store i32 %i.hj, ptr %i.b, align 4, !tbaa !83
  %i.hk = load ptr, ptr %i.aw, align 8, !tbaa !84 ; 4 uses
  %i.hl = load ptr, ptr %i.ax, align 8, !tbaa !86
  %.not.i158 = icmp eq ptr %i.hk, %i.hl
  br i1 %.not.i158, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !83
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  store ptr %i.hm, ptr %i.aw, align 8, !tbaa !84
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.bd:                                            ; preds = %bb.bb
  %i.hn = load ptr, ptr %i.g, align 8, !tbaa !87  ; 4 uses
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp                    ; 6 uses
  %i.hr = icmp eq i64 %i.hq, 9223372036854775804
  br i1 %i.hr, label %.invoke488, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bd
  %i.hs = ashr exact i64 %i.hq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i159.a = call i64 @llvm.umax.i64(i64 %i.hs, i64 1)
  %i.ht = add nsw i64 %.sroa.speculated.i.i.i159.a, %i.hs ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %i.hs
  %i.hv = call i64 @llvm.umin.i64(i64 %i.ht, i64 2305843009213693951)
  %i.hw = select i1 %i.hu, i64 2305843009213693951, i64 %i.hv ; 3 uses
  %.not.i.i.i160.a = icmp ne i64 %i.hw, 0
  call void @llvm.assume(i1 %.not.i.i.i160.a)
  %i.hx = shl nuw nsw i64 %i.hw, 2
  %i.hy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hx) #21
          to label %.noexc162 unwind label %.loopexit ; 4 uses

.noexc162:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.hz = getelementptr inbounds i8, ptr %i.hy, i64 %i.hq ; 2 uses
  store i32 %i.hj, ptr %i.hz, align 4, !tbaa !83
  %i.ia = icmp sgt i64 %i.hq, 0
  br i1 %i.ia, label %bb.be, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.be:                                            ; preds = %.noexc162
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hy, ptr align 4 %i.hn, i64 %i.hq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.be, %.noexc162
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %.not.i17.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hq) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.bf, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.hy, ptr %i.g, align 8, !tbaa !87
  store ptr %i.ib, ptr %i.aw, align 8, !tbaa !84
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.hw
  store ptr %i.ic, ptr %i.ax, align 8, !tbaa !86
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.bc
  %i.id = load i32, ptr %i.c, align 4, !tbaa !83
  %i.ie = add nsw i32 %i.id, -1                   ; 3 uses
  store i32 %i.ie, ptr %i.c, align 4, !tbaa !83
  %i.if = load ptr, ptr %i.ay, align 8, !tbaa !84 ; 4 uses
  %i.ig = load ptr, ptr %i.az, align 8, !tbaa !86
  %.not.i163 = icmp eq ptr %i.if, %i.ig
  br i1 %.not.i163, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !83
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  store ptr %i.ih, ptr %i.ay, align 8, !tbaa !84
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit172

bb.bh:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ii = load ptr, ptr %i.i, align 8, !tbaa !87  ; 4 uses
  %i.ij = ptrtoint ptr %i.if to i64
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = sub i64 %i.ij, %i.ik                    ; 6 uses
  %i.im = icmp eq i64 %i.il, 9223372036854775804
  br i1 %i.im, label %.invoke488, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i164

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i164: ; preds = %bb.bh
  %i.in = ashr exact i64 %i.il, 2                 ; 3 uses
  %.sroa.speculated.i.i.i165 = call i64 @llvm.umax.i64(i64 %i.in, i64 1)
  %i.io = add nsw i64 %.sroa.speculated.i.i.i165, %i.in ; 2 uses
  %i.ip = icmp ult i64 %i.io, %i.in
  %i.iq = call i64 @llvm.umin.i64(i64 %i.io, i64 2305843009213693951)
  %i.ir = select i1 %i.ip, i64 2305843009213693951, i64 %i.iq ; 3 uses
  %.not.i.i.i166 = icmp ne i64 %i.ir, 0
  call void @llvm.assume(i1 %.not.i.i.i166)
  %i.is = shl nuw nsw i64 %i.ir, 2
  %i.it = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.is) #21
          to label %.noexc171 unwind label %.loopexit ; 4 uses

.noexc171:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i164
  %i.iu = getelementptr inbounds i8, ptr %i.it, i64 %i.il ; 2 uses
  store i32 %i.ie, ptr %i.iu, align 4, !tbaa !83
  %i.iv = icmp sgt i64 %i.il, 0
  br i1 %i.iv, label %bb.bi, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i167

bb.bi:                                            ; preds = %.noexc171
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.it, ptr align 4 %i.ii, i64 %i.il, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i167

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i167: ; preds = %bb.bi, %.noexc171
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %.not.i17.i.i168 = icmp eq ptr %i.ii, null
  br i1 %.not.i17.i.i168, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i169, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i167
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.il) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i169

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i169: ; preds = %bb.bj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i167
  store ptr %i.it, ptr %i.i, align 8, !tbaa !87
  store ptr %i.iw, ptr %i.ay, align 8, !tbaa !84
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.ir
  store ptr %i.ix, ptr %i.az, align 8, !tbaa !86
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit172

_ZNSt6vectorIiSaIiEE9push_backERKi.exit172:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i169, %bb.bg
  %i.iy = load i32, ptr %i.d, align 4, !tbaa !83
  %i.iz = add nsw i32 %i.iy, -1                   ; 3 uses
  store i32 %i.iz, ptr %i.d, align 4, !tbaa !83
  %i.ja = load ptr, ptr %i.ba, align 8, !tbaa !84 ; 4 uses
  %i.jb = load ptr, ptr %i.bb, align 8, !tbaa !86
  %.not.i173 = icmp eq ptr %i.ja, %i.jb
  br i1 %.not.i173, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit172
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !83
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  store ptr %i.jc, ptr %i.ba, align 8, !tbaa !84
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit182

bb.bl:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit172
  %i.jd = load ptr, ptr %i.h, align 8, !tbaa !87  ; 4 uses
  %i.je = ptrtoint ptr %i.ja to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf                    ; 6 uses
  %i.jh = icmp eq i64 %i.jg, 9223372036854775804
  br i1 %i.jh, label %.invoke488, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i174

.invoke488:                                       ; preds = %bb.bl, %bb.bh, %bb.bd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #20
          to label %.cont489 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont489:                                         ; preds = %.invoke488
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i174: ; preds = %bb.bl
  %i.ji = ashr exact i64 %i.jg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i175 = call i64 @llvm.umax.i64(i64 %i.ji, i64 1)
  %i.jj = add nsw i64 %.sroa.speculated.i.i.i175, %i.ji ; 2 uses
  %i.jk = icmp ult i64 %i.jj, %i.ji
  %i.jl = call i64 @llvm.umin.i64(i64 %i.jj, i64 2305843009213693951)
  %i.jm = select i1 %i.jk, i64 2305843009213693951, i64 %i.jl ; 3 uses
  %.not.i.i.i176 = icmp ne i64 %i.jm, 0
  call void @llvm.assume(i1 %.not.i.i.i176)
  %i.jn = shl nuw nsw i64 %i.jm, 2
  %i.jo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jn) #21
          to label %.noexc181 unwind label %.loopexit ; 4 uses

.noexc181:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i174
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 %i.jg ; 2 uses
  store i32 %i.iz, ptr %i.jp, align 4, !tbaa !83
  %i.jq = icmp sgt i64 %i.jg, 0
  br i1 %i.jq, label %bb.bm, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i177

bb.bm:                                            ; preds = %.noexc181
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jo, ptr align 4 %i.jd, i64 %i.jg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i177

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i177: ; preds = %bb.bm, %.noexc181
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %.not.i17.i.i178 = icmp eq ptr %i.jd, null
  br i1 %.not.i17.i.i178, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i179, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i177
  call void @_ZdlPvm(ptr noundef nonnull %i.jd, i64 noundef %i.jg) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i179

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i179: ; preds = %bb.bn, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i177
  store ptr %i.jo, ptr %i.h, align 8, !tbaa !87
  store ptr %i.jr, ptr %i.ba, align 8, !tbaa !84
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.jm
  store ptr %i.js, ptr %i.bb, align 8, !tbaa !86
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit182

_ZNSt6vectorIiSaIiEE9push_backERKi.exit182:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i179, %bb.bk
  %i.jt = add nuw nsw i32 %.0, 1
  br label %.preheader, !llvm.loop !88

.loopexit:                                        ; preds = %.preheader, %bb.aw, %bb.ax, %bb.ay, %bb.az, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i164, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i174
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.av
  %lpad.loopexit346 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke488, %.noexc264, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i259, %.noexc262, %bb.bs, %bb.bq, %bb.bp
  %lpad.loopexit.split-lp347 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit346, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp347, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.bu

bb.bo:                                            ; preds = %bb.ba
  %.not67 = icmp eq i32 %.0, 3
  br i1 %.not67, label %.critedge, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ju = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.4, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bp
  %i.jv = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !16
  %i.jw = getelementptr i8, ptr %i.jv, i64 -24
  %i.jx = load i64, ptr %i.jw, align 8
  %i.jy = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 240
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i256 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i.i256, label %bb.bq, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i257

bb.bq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.noexc261 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc261:                                        ; preds = %bb.bq
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i257: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 56
  %i.kc = load i8, ptr %i.kb, align 8, !tbaa !38
  %.not.i1.i.i258 = icmp eq i8 %i.kc, 0
  br i1 %.not.i1.i.i258, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i257
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 67
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !29
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i259

bb.bs:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i257
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ka)
          to label %.noexc262 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc262:                                        ; preds = %bb.bs
  %i.kf = load ptr, ptr %i.ka, align 8, !tbaa !16
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = invoke noundef signext i8 %i.kh(ptr noundef nonnull align 8 dereferenceable(570) %i.ka, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i259 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i259: ; preds = %.noexc262, %bb.br
  %.0.i.i.i260 = phi i8 [ %i.ke, %bb.br ], [ %i.ki, %.noexc262 ]
  %i.kj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i260)
          to label %.noexc264 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc264:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i259
  %i.kk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kj)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

.critedge:                                        ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.critedge75

.critedge75:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i149, %.critedge, %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorI3vecILi2EESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorI3vecILi4EESaIS1_EE9push_backERKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store ptr %i.bf, ptr %4, align 8, !tbaa !16
  %i.kl = load i64, ptr %i.bh, align 8
  %i.km = getelementptr inbounds i8, ptr %4, i64 %i.kl
  store ptr %i.bg, ptr %i.km, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bi, align 8, !tbaa !16
  %i.kn = load ptr, ptr %i.bj, align 8, !tbaa !10 ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.bk
  br i1 %i.ko, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.critedge75
  %i.kp = load i64, ptr %i.bk, align 8, !tbaa !29
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #22
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %.critedge75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bi, align 8, !tbaa !16
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bl) #19
  store ptr %i.bm, ptr %4, align 8, !tbaa !16
  %i.kr = load i64, ptr %i.bo, align 8
  %i.ks = getelementptr inbounds i8, ptr %4, i64 %i.kr
  store ptr %i.bn, ptr %i.ks, align 8, !tbaa !16
  store i64 0, ptr %i.bp, align 8, !tbaa !90
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bq) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.kt = load ptr, ptr %2, align 8, !tbaa !16
  %i.ku = getelementptr i8, ptr %i.kt, i64 -24
  %i.kv = load i64, ptr %i.ku, align 8            ; 2 uses
  %i.kw = getelementptr inbounds i8, ptr %2, i64 %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !18
  %i.kz = and i32 %i.ky, 2
  %.not319 = icmp eq i32 %i.kz, 0
  br i1 %.not319, label %bb.i, label %._crit_edge

bb.bt:                                            ; preds = %.noexc264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store ptr %i.bf, ptr %4, align 8, !tbaa !16
  %i.la = load i64, ptr %i.bh, align 8
  %i.lb = getelementptr inbounds i8, ptr %4, i64 %i.la
  store ptr %i.bg, ptr %i.lb, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bi, align 8, !tbaa !16
  %i.lc = load ptr, ptr %i.bj, align 8, !tbaa !10 ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.bk
  br i1 %i.ld, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i185: ; preds = %bb.bt
  %i.le = load i64, ptr %i.bk, align 8, !tbaa !29
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lf) #22
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit187

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit187: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i185
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bi, align 8, !tbaa !16
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bl) #19
  store ptr %i.bm, ptr %4, align 8, !tbaa !16
  %i.lg = load i64, ptr %i.bo, align 8
  %i.lh = getelementptr inbounds i8, ptr %4, i64 %i.lg
  store ptr %i.bn, ptr %i.lh, align 8, !tbaa !16
  store i64 0, ptr %i.bp, align 8, !tbaa !90
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bq) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.a, !llvm.loop !92

bb.bu:                                            ; preds = %.loopexit.split-lp, %bb.au, %bb.al, %bb.ac, %bb.aa
  %.pn68 = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.dy, %bb.aa ], [ %.pn64, %bb.au ], [ %.pn60, %bb.al ], [ %.pn56, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %4) #19
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %.pn68.pn = phi { ptr, i32 } [ %.pn68, %bb.bu ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

._crit_edge:                                      ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.h
  %i.li = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.5, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189 unwind label %.loopexit.split-lp327 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189: ; preds = %._crit_edge
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !51
  %i.ll = load ptr, ptr %0, align 8, !tbaa !54
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = sub i64 %i.lm, %i.ln
  %i.lp = lshr exact i64 %i.lo, 5
  %i.lq = trunc i64 %i.lp to i32
  %i.lr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.lq)
          to label %bb.bw unwind label %.loopexit.split-lp327 ; 2 uses

bb.bw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit189
  %i.ls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.lr, ptr noundef nonnull @.str.6, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191 unwind label %.loopexit.split-lp327 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191: ; preds = %bb.bw
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !84
  %i.lv = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = ptrtoint ptr %i.lv to i64
  %i.ly = sub i64 %i.lw, %i.lx
  %i.lz = ashr exact i64 %i.ly, 2
  %i.ma = udiv i64 %i.lz, 3
  %i.mb = trunc i64 %i.ma to i32
  %i.mc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.lr, i32 noundef %i.mb)
          to label %bb.bx unwind label %.loopexit.split-lp327 ; 3 uses

bb.bx:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit191
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !16
  %i.me = getelementptr i8, ptr %i.md, i64 -24
  %i.mf = load i64, ptr %i.me, align 8
  %i.mg = getelementptr inbounds i8, ptr %i.mc, i64 %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 240
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i266 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i266, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i267

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i267: ; preds = %bb.bx
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 56
  %i.mk = load i8, ptr %i.mj, align 8, !tbaa !38
  %.not.i1.i.i268 = icmp eq i8 %i.mk, 0
  br i1 %.not.i1.i.i268, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i267
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 67
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !29
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i269

bb.bz:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i267
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.mi)
          to label %.noexc272 unwind label %.loopexit.split-lp327

.noexc272:                                        ; preds = %bb.bz
  %i.mn = load ptr, ptr %i.mi, align 8, !tbaa !16
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 48
  %i.mp = load ptr, ptr %i.mo, align 8
  %i.mq = invoke noundef signext i8 %i.mp(ptr noundef nonnull align 8 dereferenceable(570) %i.mi, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i269 unwind label %.loopexit.split-lp327, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i269: ; preds = %.noexc272, %bb.by
  %.0.i.i.i270 = phi i8 [ %i.mm, %bb.by ], [ %i.mq, %.noexc272 ]
  %i.mr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.mc, i8 noundef signext %.0.i.i.i270)
          to label %.noexc274 unwind label %.loopexit.split-lp327

.noexc274:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i269
  %i.ms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mr)
          to label %_ZNSolsEPFRSoS_E.exit193 unwind label %.loopexit.split-lp327 ; 0 uses

_ZNSolsEPFRSoS_E.exit193:                         ; preds = %.noexc274
  %i.mt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.mt, ptr %9, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.mt, ptr noundef nonnull align 1 dereferenceable(12) @.str.7, i64 12, i1 false)
  %i.mu = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 12, ptr %i.mu, align 8, !tbaa !28
  %i.mv = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i8 0, ptr %i.mv, align 4, !tbaa !29
  invoke fastcc void @"_ZZN5ModelC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES5_R8TGAImage"(ptr nonnull %1, ptr nonnull %i.mt, i64 12, ptr noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %bb.ca unwind label %bb.ce

bb.ca:                                            ; preds = %_ZNSolsEPFRSoS_E.exit193
  %i.mw = load ptr, ptr %9, align 8, !tbaa !10    ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.mt
  br i1 %i.mx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %bb.ca
  %i.my = load i64, ptr %i.mt, align 8, !tbaa !29
  %i.mz = add i64 %i.my, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.mz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202
  %i.na = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.na, ptr %10, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.na, ptr noundef nonnull align 1 dereferenceable(15) @.str.8, i64 15, i1 false)
  %i.nb = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 15, ptr %i.nb, align 8, !tbaa !28
  %i.nc = getelementptr inbounds nuw i8, ptr %10, i64 31
  store i8 0, ptr %i.nc, align 1, !tbaa !29
  invoke fastcc void @"_ZZN5ModelC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES5_R8TGAImage"(ptr nonnull %1, ptr nonnull %i.na, i64 15, ptr noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %bb.cb unwind label %bb.cf

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204
  %i.nd = load ptr, ptr %10, align 8, !tbaa !10   ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.na
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.cb
  %i.nf = load i64, ptr %i.na, align 8, !tbaa !29
  %i.ng = add i64 %i.nf, 1
  call void @_ZdlPvm(ptr noundef %i.nd, i64 noundef %i.ng) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  %i.nh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.nh, ptr %11, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.nh, ptr noundef nonnull align 1 dereferenceable(9) @.str.9, i64 9, i1 false)
  %i.ni = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 9, ptr %i.ni, align 8, !tbaa !28
  %i.nj = getelementptr inbounds nuw i8, ptr %11, i64 25
  store i8 0, ptr %i.nj, align 1, !tbaa !29
  invoke fastcc void @"_ZZN5ModelC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES5_R8TGAImage"(ptr nonnull %1, ptr nonnull %i.nh, i64 9, ptr noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %bb.cc unwind label %bb.cg

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %i.nk = load ptr, ptr %11, align 8, !tbaa !10   ; 2 uses
  %i.nl = icmp eq ptr %i.nk, %i.nh
  br i1 %i.nl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224.a: ; preds = %bb.cc
  %i.nm = load i64, ptr %i.nh, align 8, !tbaa !29
  %i.nn = add i64 %i.nm, 1
  call void @_ZdlPvm(ptr noundef %i.nk, i64 noundef %i.nn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.a: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224.a, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit187
  %i.no = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.np = icmp eq ptr %i.no, %i.ai
  br i1 %i.np, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.a
  %i.nq = load i64, ptr %i.ai, align 8, !tbaa !29
  %i.nr = add i64 %i.nq, 1
  call void @_ZdlPvm(ptr noundef %i.no, i64 noundef %i.nr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit226.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.cd

bb.cd:                                            ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.ce:                                            ; preds = %_ZNSolsEPFRSoS_E.exit193
  %i.ns = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nt = load ptr, ptr %9, align 8, !tbaa !10    ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %i.mt
  br i1 %i.nu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230.a: ; preds = %bb.ce
  %i.nv = load i64, ptr %i.mt, align 8, !tbaa !29
  %i.nw = add i64 %i.nv, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204
  %i.nx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ny = load ptr, ptr %10, align 8, !tbaa !10   ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.na
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233.a: ; preds = %bb.cf
  %i.oa = load i64, ptr %i.na, align 8, !tbaa !29
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.ob) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %i.oc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.od = load ptr, ptr %11, align 8, !tbaa !10   ; 2 uses
  %i.oe = icmp eq ptr %i.od, %i.nh
  br i1 %i.oe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %bb.cg
  %i.of = load i64, ptr %i.nh, align 8, !tbaa !29
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.og) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %bb.cg, %bb.cf, %bb.ce, %.loopexit326, %.loopexit.split-lp327, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236, %bb.bv
  %.pn68.pn.pn = phi { ptr, i32 } [ %.pn68.pn, %bb.bv ], [ %i.ns, %bb.ce ], [ %i.nx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233.a ], [ %i.ns, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230.a ], [ %i.oc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236 ], [ %lpad.loopexit.split-lp329, %.loopexit.split-lp327 ], [ %i.nx, %bb.cf ], [ %lpad.loopexit328, %.loopexit326 ], [ %i.oc, %bb.cg ]
  %i.oh = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.oi = icmp eq ptr %i.oh, %i.ai
  br i1 %i.oi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %i.oj = load i64, ptr %i.ai, align 8, !tbaa !29
  %i.ok = add i64 %i.oj, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.ok) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %bb.g
  %.pn68.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ %i.ah, %bb.g ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %2) #19
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.f
  %.pn68.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn.pn, %bb.ch ], [ %i.ag, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.ol = load ptr, ptr %i.o, align 8, !tbaa !93  ; 3 uses
  %.not.i.i.i.i242 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i.i.i242, label %_ZN8TGAImageD2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !95
  %i.oo = ptrtoint ptr %i.on to i64
  %i.op = ptrtoint ptr %i.ol to i64
  %i.oq = sub i64 %i.oo, %i.op
  call void @_ZdlPvm(ptr noundef nonnull %i.ol, i64 noundef %i.oq) #22
  br label %_ZN8TGAImageD2Ev.exit

_ZN8TGAImageD2Ev.exit:                            ; preds = %bb.ci, %bb.cj
  %i.or = load ptr, ptr %i.m, align 8, !tbaa !93  ; 3 uses
  %.not.i.i.i.i243 = icmp eq ptr %i.or, null
  br i1 %.not.i.i.i.i243, label %_ZN8TGAImageD2Ev.exit244, label %bb.ck

bb.ck:                                            ; preds = %_ZN8TGAImageD2Ev.exit
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !95
  %i.ou = ptrtoint ptr %i.ot to i64
  %i.ov = ptrtoint ptr %i.or to i64
  %i.ow = sub i64 %i.ou, %i.ov
  call void @_ZdlPvm(ptr noundef nonnull %i.or, i64 noundef %i.ow) #22
  br label %_ZN8TGAImageD2Ev.exit244

_ZN8TGAImageD2Ev.exit244:                         ; preds = %_ZN8TGAImageD2Ev.exit, %bb.ck
  %i.ox = load ptr, ptr %i.k, align 8, !tbaa !93  ; 3 uses
  %.not.i.i.i.i245 = icmp eq ptr %i.ox, null
  br i1 %.not.i.i.i.i245, label %_ZN8TGAImageD2Ev.exit246, label %bb.cl

bb.cl:                                            ; preds = %_ZN8TGAImageD2Ev.exit244
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !95
  %i.pa = ptrtoint ptr %i.oz to i64
  %i.pb = ptrtoint ptr %i.ox to i64
  %i.pc = sub i64 %i.pa, %i.pb
  call void @_ZdlPvm(ptr noundef nonnull %i.ox, i64 noundef %i.pc) #22
  br label %_ZN8TGAImageD2Ev.exit246

_ZN8TGAImageD2Ev.exit246:                         ; preds = %_ZN8TGAImageD2Ev.exit244, %bb.cl
  %i.pd = load ptr, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i247.a = icmp eq ptr %i.pd, null
  br i1 %.not.i.i.i247.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %_ZN8TGAImageD2Ev.exit246
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !86
  %i.pg = ptrtoint ptr %i.pf to i64
  %i.ph = ptrtoint ptr %i.pd to i64
  %i.pi = sub i64 %i.pg, %i.ph
  call void @_ZdlPvm(ptr noundef nonnull %i.pd, i64 noundef %i.pi) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8TGAImageD2Ev.exit246, %bb.cm
  %i.pj = load ptr, ptr %i.h, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i248.a = icmp eq ptr %i.pj, null
  br i1 %.not.i.i.i248.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit249, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !86
  %i.pm = ptrtoint ptr %i.pl to i64
  %i.pn = ptrtoint ptr %i.pj to i64
  %i.po = sub i64 %i.pm, %i.pn
  call void @_ZdlPvm(ptr noundef nonnull %i.pj, i64 noundef %i.po) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit249

_ZNSt6vectorIiSaIiEED2Ev.exit249:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.cn
  %i.pp = load ptr, ptr %i.g, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i250 = icmp eq ptr %i.pp, null
  br i1 %.not.i.i.i250, label %_ZNSt6vectorIiSaIiEED2Ev.exit251, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit249
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !86
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = ptrtoint ptr %i.pp to i64
  %i.pu = sub i64 %i.ps, %i.pt
  call void @_ZdlPvm(ptr noundef nonnull %i.pp, i64 noundef %i.pu) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit251

_ZNSt6vectorIiSaIiEED2Ev.exit251:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit249, %bb.co
  %i.pv = load ptr, ptr %i.f, align 8, !tbaa !72  ; 3 uses
  %.not.i.i.i252 = icmp eq ptr %i.pv, null
  br i1 %.not.i.i.i252, label %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit251
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !79
  %i.py = ptrtoint ptr %i.px to i64
  %i.pz = ptrtoint ptr %i.pv to i64
  %i.qa = sub i64 %i.py, %i.pz
  call void @_ZdlPvm(ptr noundef nonnull %i.pv, i64 noundef %i.qa) #22
  br label %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit

_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit:         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit251, %bb.cp
  %i.qb = load ptr, ptr %i.e, align 8, !tbaa !54  ; 3 uses
  %.not.i.i.i253 = icmp eq ptr %i.qb, null
  br i1 %.not.i.i.i253, label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !61
  %i.qe = ptrtoint ptr %i.qd to i64
  %i.qf = ptrtoint ptr %i.qb to i64
  %i.qg = sub i64 %i.qe, %i.qf
  call void @_ZdlPvm(ptr noundef nonnull %i.qb, i64 noundef %i.qg) #22
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit

_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit:         ; preds = %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit, %bb.cq
  %i.qh = load ptr, ptr %0, align 8, !tbaa !54    ; 3 uses
  %.not.i.i.i254 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i.i254, label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit255, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !61
  %i.qk = ptrtoint ptr %i.qj to i64
  %i.ql = ptrtoint ptr %i.qh to i64
  %i.qm = sub i64 %i.qk, %i.ql
  call void @_ZdlPvm(ptr noundef nonnull %i.qh, i64 noundef %i.qm) #22
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit255

_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit255:      ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit, %bb.cr
  resume { ptr, i32 } %.pn68.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK5Model6nvertsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = load ptr, ptr %0, align 8, !tbaa !54
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5
  %i.h = trunc i64 %i.g to i32
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK5Model6nfacesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %i.i = udiv i64 %i.h, 3
  %i.j = trunc i64 %i.i to i32
  ret i32 %i.j
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN5ModelC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES5_R8TGAImage"(ptr nofree readonly captures(none) %.0.val, ptr %.0.val1, i64 %.8.val, ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %.0.val, align 8, !tbaa !10 ; 3 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.c, %bb.b
  %.1.i.i.in = phi i64 [ %i.b, %bb.b ], [ %.1.i.i, %bb.c ]
  %.1.i.i = add i64 %.1.i.i.in, -1                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29
  %memchr.char0cmp.not = icmp eq i8 %i.e, 46
  br i1 %memchr.char0cmp.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not17.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !27, !alias.scope !97
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.1.i.i, i64 %i.b) ; 8 uses
  %i.g = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.g, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit
  %i.h = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.h, label %.noexc10.i.i, label %bb.e

.noexc10.i.i:                                     ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

bb.e:                                             ; preds = %bb.d
  %4 = add nuw i64 %spec.select.i.i.i, 1          ; 2 uses
  %i.i = icmp slt i64 %4, 0
  br i1 %i.i, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !45

.noexc11.i.i:                                     ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.e
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #21 ; 2 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !10, !alias.scope !97
  store i64 %spec.select.i.i.i, ptr %i.f, align 8, !tbaa !29, !alias.scope !97
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !29
  store i8 %i.l, ptr %i.k, align 1, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %i.c, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i64 %spec.select.i.i.i, ptr %i.m, align 8, !tbaa !28, !alias.scope !97
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %spec.select.i.i.i
  store i8 0, ptr %i.n, align 1, !tbaa !29
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.o = load i64, ptr %i.m, align 8, !tbaa !28, !noalias !100 ; 5 uses
  %i.p = sub i64 9223372036854775807, %i.o
  %i.q = icmp ult i64 %i.p, %.8.val
  br i1 %i.q, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #20
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.r = add i64 %i.o, %.8.val                    ; 3 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !10, !noalias !100 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.f
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.u = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.u)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.v = load i64, ptr %i.f, align 8, !tbaa !29, !noalias !100
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.w = phi i64 [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.r, %i.w
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %.8.val, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.o ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %.8.val, 1
  br i1 %cond.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = load i8, ptr %.0.val1, align 1, !tbaa !29, !noalias !100
  store i8 %i.y, ptr %i.x, align 1, !tbaa !29, !noalias !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %.0.val1, i64 %.8.val, i1 false), !noalias !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.o, i64 noundef 0, ptr noundef %.0.val1, i64 noundef %.8.val)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  store i64 %i.r, ptr %i.m, align 8, !tbaa !28, !noalias !100
  %i.z = load ptr, ptr %2, align 8, !tbaa !10, !noalias !100
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  store i8 0, ptr %i.aa, align 1, !tbaa !29, !noalias !100
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.ab, ptr %1, align 8, !tbaa !27, !alias.scope !100
  %i.ac = load ptr, ptr %2, align 8, !tbaa !10, !noalias !100 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.f
  br i1 %i.ad, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !28, !noalias !100 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.ac, ptr %1, align 8, !tbaa !10, !alias.scope !100
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !29, !noalias !100
  store i64 %i.ah, ptr %i.ab, align 8, !tbaa !29, !alias.scope !100
  %.pre.i = load i64, ptr %i.m, align 8, !tbaa !28, !noalias !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %i.ai = phi i64 [ %i.ae, %bb.n ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !28, !alias.scope !100
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.16, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = load ptr, ptr %1, align 8, !tbaa !10
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !28
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.al, i64 noundef %i.am)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.aa ; 5 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull @.str.17, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ap = load ptr, ptr %1, align 8, !tbaa !10    ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.aq, ptr %3, align 8, !tbaa !27
  %i.ar = icmp eq ptr %i.ap, null
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #20
          to label %.noexc18 unwind label %bb.ab

.noexc18:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.as = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #19 ; 8 uses
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %bb.q, label %._crit_edge.i.i

bb.q:                                             ; preds = %bb.p
  %i.au = icmp slt i64 %i.as, 0
  br i1 %i.au, label %.noexc.i, label %bb.r

.noexc.i:                                         ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
          to label %.noexc19 unwind label %bb.ab

.noexc19:                                         ; preds = %.noexc.i
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.av = add nuw i64 %i.as, 1                    ; 2 uses
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !45

.noexc11.i:                                       ; preds = %bb.r
  invoke void @_ZSt17__throw_bad_allocv() #20
          to label %.noexc20 unwind label %bb.ab

.noexc20:                                         ; preds = %.noexc11.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.r
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #21
          to label %.noexc21 unwind label %bb.ab  ; 2 uses

.noexc21:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.ax, ptr %3, align 8, !tbaa !10
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc21, %bb.p
  %i.ay = phi ptr [ %i.ax, %.noexc21 ], [ %i.aq, %bb.p ] ; 3 uses
  switch i64 %i.as, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.az = load i8, ptr %i.ap, align 1, !tbaa !29
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !29
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %i.ap, i64 %i.as, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.as, ptr %i.ba, align 8, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.as
  store i8 0, ptr %i.bb, align 1, !tbaa !29
  %i.bc = invoke noundef zeroext i1 @_ZN8TGAImage13read_tga_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.v unwind label %bb.ac      ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bd = select i1 %i.bc, ptr @.str.18, ptr @.str.19
  %i.be = select i1 %i.bc, i64 2, i64 6
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull %i.bd, i64 noundef %i.be)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23 unwind label %bb.ac ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23: ; preds = %bb.v
  %i.bg = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.an, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 240
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !30 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i, label %bb.w, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.noexc40 unwind label %bb.ac

.noexc40:                                         ; preds = %bb.w
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !38
  %.not.i1.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i1.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 67
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !29
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bl)
          to label %.noexc41 unwind label %bb.ac

.noexc41:                                         ; preds = %bb.y
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef signext i8 %i.bs(ptr noundef nonnull align 8 dereferenceable(570) %i.bl, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.ac, !inline_history !89

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc41, %bb.x
  %.0.i.i.i = phi i8 [ %i.bp, %bb.x ], [ %i.bt, %.noexc41 ]
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i8 noundef signext %.0.i.i.i)
          to label %.noexc43 unwind label %bb.ac

.noexc43:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.ac ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc43
  %i.bw = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.aq
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.by = load i64, ptr %i.aq, align 8, !tbaa !29
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.ca = load ptr, ptr %1, align 8, !tbaa !10    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.ab
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.cc = load i64, ptr %i.ab, align 8, !tbaa !29
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.thread: ; preds = %bb.c, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  ret void

bb.z:                                             ; preds = %bb.m, %bb.h
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %2, align 8, !tbaa !10    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.f
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.z
  %i.ch = load i64, ptr %i.f, align 8, !tbaa !29
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.aa:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc11.i, %.noexc.i, %bb.o
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.ac:                                            ; preds = %.noexc43, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc41, %bb.y, %bb.w, %bb.v, %bb.u
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %3, align 8, !tbaa !10    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.aq
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.ac
  %i.co = load i64, ptr %i.aq, align 8, !tbaa !29
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.ac, %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.aa ], [ %i.ck, %bb.ab ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.cl, %bb.ac ] ; 2 uses
  %i.cq = load ptr, ptr %1, align 8, !tbaa !10    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ab
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.cs = load i64, ptr %i.ab, align 8, !tbaa !29
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #4 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN8TGAImage13read_tga_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !10     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !45

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #21 ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !29
  store i8 %i.t, ptr %i.s, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.i, %bb.h
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1, !tbaa !29
  store i8 %i.x, ptr %i.w, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !29
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %5 = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %5)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = load i64, ptr %i.h, align 8, !tbaa !29
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !10
  store i64 %.0, ptr %i.h, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK5Model4vertEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.vec) align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %1, i32 noundef %2) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = load ptr, ptr %1, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !tbaa.struct !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK5Model4vertEii(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.vec) align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = mul nsw i32 %2, 3
  %i.c = add nsw i32 %i.b, %3
  %i.d = sext i32 %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4, !tbaa !83
  %i.h = sext i32 %i.g to i64
  %i.i = load ptr, ptr %1, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !tbaa.struct !49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK5Model6normalEii(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.vec) align 8 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.c = mul nsw i32 %2, 3
  %i.d = add nsw i32 %i.c, %3
  %i.e = sext i32 %i.d to i64
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e
  %i.h = load i32, ptr %i.g, align 4, !tbaa !83
  %i.i = sext i32 %i.h to i64
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !tbaa.struct !49
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK5Model6normalERK3vecILi2EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.vec) align 8 captures(none) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(264) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.b = load double, ptr %2, align 8, !tbaa !50
  %i.c = tail call noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.d = sitofp i32 %i.c to double
  %i.e = fmul double %i.b, %i.d
  %i.f = fptosi double %i.e to i32
  %.in.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load double, ptr %.in.i, align 8, !tbaa !50
  %i.h = tail call noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.i = sitofp i32 %i.h to double
  %i.j = fmul double %i.g, %i.i
  %i.k = fptosi double %i.j to i32
  %i.l = tail call i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef %i.f, i32 noundef %i.k) ; 3 uses
  %.sroa.018.0.extract.trunc = trunc i40 %i.l to i8
  %i.m = uitofp i8 %.sroa.018.0.extract.trunc to double
  %i.n = fmul nnan double %i.m, 2.000000e+00
  %i.o = fdiv double %i.n, 2.550000e+02
  %i.p = fadd double %i.o, -1.000000e+00          ; 3 uses
  %i.q = tail call double @llvm.fmuladd.f64(double %i.p, double %i.p, double 0.000000e+00)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.419.0.extract.shift = lshr i40 %i.l, 8
  %.sroa.520.0.extract.shift = lshr i40 %i.l, 16
  %.sroa.419.0.extract.trunc = trunc i40 %.sroa.419.0.extract.shift to i8
  %.sroa.520.0.extract.trunc = trunc i40 %.sroa.520.0.extract.shift to i8
  %i.r = insertelement <2 x i8> poison, i8 %.sroa.520.0.extract.trunc, i64 0
  %i.s = insertelement <2 x i8> %i.r, i8 %.sroa.419.0.extract.trunc, i64 1
  %i.t = uitofp <2 x i8> %i.s to <2 x double>
  %i.u = fmul nnan <2 x double> %i.t, splat (double 2.000000e+00)
  %i.v = fdiv <2 x double> %i.u, splat (double 2.550000e+02)
  %i.w = fadd <2 x double> %i.v, splat (double -1.000000e+00) ; 3 uses
  %i.x = extractelement <2 x double> %i.w, i64 1  ; 2 uses
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.q)
  %i.z = extractelement <2 x double> %i.w, i64 0  ; 2 uses
  %i.aa = tail call noundef double @llvm.fmuladd.f64(double %i.z, double %i.z, double %i.y)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.aa)
  %i.ab = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.p, i64 0
  %i.ac = insertelement <2 x double> poison, double %sqrt.i.i, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ae = fdiv <2 x double> %i.ab, %i.ad
  store <2 x double> %i.ae, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !50, !alias.scope !103
  %i.af = fdiv <2 x double> %i.w, %i.ad
  store <2 x double> %i.af, ptr %0, align 8, !tbaa !50, !alias.scope !103
  ret void
}

declare i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { double, double } @_ZNK5Model2uvEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = mul nsw i32 %1, 3
  %i.d = add nsw i32 %i.c, %2
  %i.e = sext i32 %i.d to i64
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e
  %i.h = load i32, ptr %i.g, align 4, !tbaa !83
  %i.i = sext i32 %i.h to i64
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.k, align 8, !tbaa !50
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !50
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.2.0.copyload, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model7diffuseEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(264) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model8specularEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(264) %0) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !13, i64 0}
end_hunk_0
