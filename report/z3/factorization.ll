Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/factorization?download=true
inline.NumInlined: 226
inline.NumDeleted: 129
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%class.svector = type { %class.vector }
%class.vector = type { ptr }
%"class.nla::factorization" = type { %class.svector.2, ptr }
%class.svector.2 = type { %class.vector.3 }
%class.vector.3 = type { ptr }
%"class.nla::factor" = type <{ i32, i32, i8, [3 x i8] }>
%class.rational = type { %class.mpq }
%class.mpq = type { %class.mpz, %class.mpz }
%class.mpz = type { i32, i8, ptr }
%"struct.nla::const_iterator_mon" = type { %class.svector.0, ptr, i8, i32 }
%class.svector.0 = type { %class.vector.1 }
%class.vector.1 = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

$_ZN6vectorIjLb0EjED2Ev = comdat any

$_ZN8rationalD2Ev = comdat any

$_ZN3nla18const_iterator_monD2Ev = comdat any

$_ZN3nla13factorizationD2Ev = comdat any

$_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$__clang_call_terminate = comdat any

$_ZN6vectorIN3nla6factorELb0EjED2Ev = comdat any

$_ZN6vectorIN3nla6factorELb0EjE13expand_vectorEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN17default_exceptionD2Ev = comdat any

$_ZN6vectorIjLb0EjE13expand_vectorEv = comdat any

@.str = private unnamed_addr constant [43 x i8] c"Overflow encountered when expanding vector\00", align 1
@_ZTI17default_exception = external constant ptr
@.str.2 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTV17default_exception = external constant { [6 x ptr] }, align 8
@_ZN8rational13g_mpq_managerE = external local_unnamed_addr global ptr, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN3nla18const_iterator_monC1ERK7svectorIbjEPKNS_21factorization_factoryE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN3nla18const_iterator_monC2ERK7svectorIbjEPKNS_21factorization_factoryE

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK3nla18const_iterator_mon21init_vars_by_the_maskER7svectorIjjES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21, !nonnull !22, !align !23
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNK6vectorIjLb0EjE4backEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !27
  %i.i = add i32 %i.h, -1
  %i.j = zext i32 %i.i to i64
  br label %_ZNK6vectorIjLb0EjE4backEv.exit

_ZNK6vectorIjLb0EjE4backEv.exit:                  ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.j, %bb.b ], [ 4294967295, %bb.a ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0.i.i
  %i.l = load ptr, ptr %1, align 8, !tbaa !26     ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6vectorIjLb0EjE4backEv.exit
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !27   ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !27
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.d:                                             ; preds = %bb.c, %_ZNK6vectorIjLb0EjE4backEv.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !26  ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !27
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.c, %bb.d
  %i.s = phi i32 [ %.pre2.i, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.t = phi ptr [ %.pre.i, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.v = zext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.k, align 4, !tbaa !27
  store i32 %i.x, ptr %i.w, align 4, !tbaa !27
  %i.y = add i32 %i.s, 1
  store i32 %i.y, ptr %i.u, align 4, !tbaa !27
  %i.z = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.critedge, label %_ZNK6vectorIbLb0EjE4sizeEv.exit

_ZNK6vectorIbLb0EjE4sizeEv.exit:                  ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZN6vectorIjLb0EjE9push_backERKj.exit11
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6vectorIjLb0EjE9push_backERKj.exit11 ], [ 0, %_ZN6vectorIjLb0EjE9push_backERKj.exit ] ; 4 uses
  %i.ab = phi ptr [ %i.bh, %_ZN6vectorIjLb0EjE9push_backERKj.exit11 ], [ %i.z, %_ZN6vectorIjLb0EjE9push_backERKj.exit ] ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !27
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv, %i.ae
  br i1 %i.af, label %bb.e, label %.critedge

.critedge:                                        ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit, %_ZN6vectorIjLb0EjE9push_backERKj.exit11, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  ret void

bb.e:                                             ; preds = %_ZNK6vectorIbLb0EjE4sizeEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !29, !range !30, !noundef !22
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !21, !nonnull !22, !align !23
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  br i1 %i.ai, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %1, align 8, !tbaa !26    ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZN6vectorIjLb0EjE9push_backERKj.exit11.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !27 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !27
  %i.au = icmp eq i32 %i.ar, %i.at
  br i1 %i.au, label %_ZN6vectorIjLb0EjE9push_backERKj.exit11.sink.split, label %_ZN6vectorIjLb0EjE9push_backERKj.exit11

bb.h:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %2, align 8, !tbaa !26    ; 4 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN6vectorIjLb0EjE9push_backERKj.exit11.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !27 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 -8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !27
  %i.bb = icmp eq i32 %i.ay, %i.ba
  br i1 %i.bb, label %_ZN6vectorIjLb0EjE9push_backERKj.exit11.sink.split, label %_ZN6vectorIjLb0EjE9push_backERKj.exit11

_ZN6vectorIjLb0EjE9push_backERKj.exit11.sink.split: ; preds = %bb.h, %bb.i, %bb.f, %bb.g
  %.sink32 = phi ptr [ %1, %bb.f ], [ %1, %bb.g ], [ %2, %bb.i ], [ %2, %bb.h ] ; 2 uses
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink32)
  %.pre.i12 = load ptr, ptr %.sink32, align 8, !tbaa !26 ; 2 uses
  %.phi.trans.insert.i13 = getelementptr inbounds i8, ptr %.pre.i12, i64 -4
  %.pre2.i14 = load i32, ptr %.phi.trans.insert.i13, align 4, !tbaa !27
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit11

_ZN6vectorIjLb0EjE9push_backERKj.exit11:          ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit11.sink.split, %bb.i, %bb.g
  %.sink31 = phi ptr [ %i.ao, %bb.g ], [ %i.av, %bb.i ], [ %.pre.i12, %_ZN6vectorIjLb0EjE9push_backERKj.exit11.sink.split ] ; 2 uses
  %.sink30 = phi i32 [ %i.ar, %bb.g ], [ %i.ay, %bb.i ], [ %.pre2.i14, %_ZN6vectorIjLb0EjE9push_backERKj.exit11.sink.split ] ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.sink31, i64 -4
  %i.bd = zext i32 %.sink30 to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sink31, i64 %i.bd
  %i.bf = load i32, ptr %i.an, align 4, !tbaa !27
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !27
  %i.bg = add i32 %.sink30, 1
  store i32 %i.bg, ptr %i.bc, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bh = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.critedge, label %_ZNK6vectorIbLb0EjE4sizeEv.exit, !llvm.loop !55
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK3nla18const_iterator_mon11get_factorsERNS_6factorES2_R8rational(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(9) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(9) %2, ptr nofree nonnull readnone align 8 captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.svector, align 8             ; 10 uses
  %5 = alloca %class.svector, align 8             ; 10 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr null, ptr %4, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr null, ptr %5, align 8, !tbaa !26
  invoke void @_ZNK3nla18const_iterator_mon21init_vars_by_the_maskER7svectorIjjES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %4, align 8, !tbaa !26     ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZSt4sortIPjEvT_S1_.exit, label %_ZN6vectorIjLb0EjE3endEv.exit

_ZN6vectorIjLb0EjE3endEv.exit:                    ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27   ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZSt4sortIPjEvT_S1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6vectorIjLb0EjE3endEv.exit
  %i.j = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = xor i64 %i.k, 126
  invoke void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.i)
          to label %_ZSt4sortIPjEvT_S1_.exit unwind label %bb.f

_ZSt4sortIPjEvT_S1_.exit:                         ; preds = %bb.b, %_ZN6vectorIjLb0EjE3endEv.exit, %.noexc
  %i.m = load ptr, ptr %5, align 8, !tbaa !26     ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZSt4sortIPjEvT_S1_.exit29, label %_ZN6vectorIjLb0EjE3endEv.exit25

_ZN6vectorIjLb0EjE3endEv.exit25:                  ; preds = %_ZSt4sortIPjEvT_S1_.exit
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27   ; 2 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r ; 2 uses
  %.not.i.i26 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i26, label %_ZSt4sortIPjEvT_S1_.exit29, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIjLb0EjE3endEv.exit25
  %i.t = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = xor i64 %i.u, 126
  invoke void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.m, ptr noundef nonnull %i.s, i64 noundef %i.v)
          to label %.noexc27 unwind label %bb.f

.noexc27:                                         ; preds = %bb.d
  invoke void @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.m, ptr noundef nonnull %i.s)
          to label %_ZSt4sortIPjEvT_S1_.exit29 unwind label %bb.f

_ZSt4sortIPjEvT_S1_.exit29:                       ; preds = %_ZSt4sortIPjEvT_S1_.exit, %_ZN6vectorIjLb0EjE3endEv.exit25, %.noexc27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32
  %i.y = icmp ugt i32 %i.x, 1000
  br i1 %i.y, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZSt4sortIPjEvT_S1_.exit29
  %i.z = load ptr, ptr %0, align 8, !tbaa !28     ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %._crit_edge, label %_ZN6vectorIbLb0EjE3endEv.exit

_ZN6vectorIbLb0EjE3endEv.exit:                    ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !27 ; 2 uses
  %.not39 = icmp eq i32 %i.ac, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6vectorIbLb0EjE3endEv.exit
  %i.ad = zext i32 %i.ac to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.z, i8 1, i64 %i.ad, i1 false), !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %.lr.ph.preheader, %_ZN6vectorIbLb0EjE3endEv.exit
  store i8 0, ptr %i.z, align 1, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.ae, align 8, !tbaa !33
  br label %bb.q

bb.f:                                             ; preds = %.noexc27, %bb.d, %.noexc, %bb.c, %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.g:                                             ; preds = %_ZSt4sortIPjEvT_S1_.exit29
  %i.ag = load ptr, ptr %4, align 8, !tbaa !26    ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIjLb0EjE4sizeEv.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit:                  ; preds = %bb.g
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !27
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.h, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread

bb.h:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %i.al = load i32, ptr %i.ag, align 4, !tbaa !27
  store i32 %i.al, ptr %1, align 4, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.am, align 4, !tbaa !37
  br label %bb.l

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread:           ; preds = %bb.g, %_ZNK6vectorIjLb0EjE4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !17 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !39
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread
  br i1 %i.ar, label %.thread, label %bb.k

bb.j:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.v

.thread:                                          ; preds = %bb.i
  %i.at = load i32, ptr %i.a, align 4, !tbaa !27
  store i32 %i.at, ptr %1, align 4, !tbaa !36
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 1, ptr %i.au, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.av = load i32, ptr %i.w, align 4, !tbaa !32
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.w, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.q

bb.l:                                             ; preds = %.thread, %bb.h
  store i32 0, ptr %i.w, align 4, !tbaa !32
  %i.ax = load ptr, ptr %5, align 8, !tbaa !26    ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZNK6vectorIjLb0EjE4sizeEv.exit32.thread, label %_ZNK6vectorIjLb0EjE4sizeEv.exit32

_ZNK6vectorIjLb0EjE4sizeEv.exit32:                ; preds = %bb.l
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !27
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.m, label %_ZNK6vectorIjLb0EjE4sizeEv.exit32.thread

bb.m:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit32
  %i.bc = load i32, ptr %i.ax, align 4, !tbaa !27
  store i32 %i.bc, ptr %2, align 4, !tbaa !36
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.bd, align 4, !tbaa !37
  br label %bb.q

_ZNK6vectorIjLb0EjE4sizeEv.exit32.thread:         ; preds = %bb.l, %_ZNK6vectorIjLb0EjE4sizeEv.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !17 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !39
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = invoke noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit32.thread
  br i1 %i.bi, label %.thread38, label %bb.p

bb.o:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit32.thread
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.v

.thread38:                                        ; preds = %bb.n
  %i.bk = load i32, ptr %i.b, align 4, !tbaa !27
  store i32 %i.bk, ptr %2, align 4, !tbaa !36
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 1, ptr %i.bl, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bm = load i32, ptr %i.w, align 4, !tbaa !32
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.w, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %.thread38, %bb.p, %bb.k, %._crit_edge
  %.3 = phi i1 [ false, %._crit_edge ], [ false, %bb.k ], [ false, %bb.p ], [ true, %.thread38 ], [ true, %bb.m ]
  %i.bo = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i33, label %_ZN6vectorIjLb0EjED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bp)
          to label %_ZN6vectorIjLb0EjED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #19
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit:                      ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.bs = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i34, label %_ZN6vectorIjLb0EjED2Ev.exit35, label %bb.t

bb.t:                                             ; preds = %_ZN6vectorIjLb0EjED2Ev.exit
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bt)
          to label %_ZN6vectorIjLb0EjED2Ev.exit35 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  call void @__clang_call_terminate(ptr %i.bv) #19
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit35:                    ; preds = %_ZN6vectorIjLb0EjED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i1 %.3

bb.v:                                             ; preds = %bb.o, %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.o ], [ %i.as, %bb.j ], [ %i.af, %bb.f ]
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorIjLb0EjE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorIjLb0EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorIjLb0EjE7destroyEv.exit:                ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK3nla18const_iterator_mondeEv(ptr dead_on_unwind noalias writable sret(%"class.nla::factorization") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.nla::factor", align 8       ; 8 uses
  %3 = alloca %"class.nla::factor", align 8       ; 8 uses
  %4 = alloca %class.rational, align 8            ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !33, !range !30, !noundef !22
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  tail call void @_ZNK3nla18const_iterator_mon25create_full_factorizationEPKNS_5monicE(ptr dead_on_unwind writable sret(%"class.nla::factorization") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.g)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store i32 -1, ptr %2, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i32 -1, ptr %3, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i32 0, ptr %4, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = and i8 %i.m, -4
  store i8 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 1, ptr %i.p, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, -4
  store i8 %i.s, ptr %i.q, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr null, ptr %i.t, align 8, !tbaa !60
  %i.u = invoke noundef zeroext i1 @_ZNK3nla18const_iterator_mon11get_factorsERNS_6factorES2_R8rational(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(9) %2, ptr noundef nonnull align 4 dereferenceable(9) %3, ptr nonnull align 8 poison)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.u, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.g, %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.v

bb.g:                                             ; preds = %bb.d
  %.sroa.07.0.copyload = load i64, ptr %2, align 8
  %.sroa.28.0.copyload = load i8, ptr %i.i, align 8, !tbaa !29
  %.sroa.04.0.copyload = load i64, ptr %3, align 8
  %.sroa.25.0.copyload = load i8, ptr %i.k, align 8, !tbaa !29
  invoke void @_ZNK3nla18const_iterator_mon27create_binary_factorizationENS_6factorES1_(ptr dead_on_unwind writable sret(%"class.nla::factorization") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %.sroa.07.0.copyload, i8 %.sroa.28.0.copyload, i64 %.sroa.04.0.copyload, i8 %.sroa.25.0.copyload)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.e, %bb.g
  %i.w = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !42 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.h
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %.noexc.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #19
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.j

bb.j:                                             ; preds = %_ZN8rationalD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK3nla18const_iterator_mon25create_full_factorizationEPKNS_5monicE(ptr dead_on_unwind noalias writable sret(%"class.nla::factorization") align 8 initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN3nla13factorizationC2EPKNS_5monicE.exit, label %_ZNK6vectorIjLb0EjE3endEv.exit.i

_ZNK6vectorIjLb0EjE3endEv.exit.i:                 ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %.not1314.i = icmp eq i32 %i.f, 0
  br i1 %.not1314.i, label %_ZN3nla13factorizationC2EPKNS_5monicE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIjLb0EjE3endEv.exit.i, %._crit_edge.i
  %i.j = phi ptr [ %i.s, %._crit_edge.i ], [ null, %_ZNK6vectorIjLb0EjE3endEv.exit.i ] ; 4 uses
  %.015.i = phi ptr [ %i.x, %._crit_edge.i ], [ %i.c, %_ZNK6vectorIjLb0EjE3endEv.exit.i ] ; 2 uses
end_hunk_0
