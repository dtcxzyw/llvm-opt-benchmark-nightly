Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/aho-corasick?download=true
inline.NumInlined: 234
inline.NumDeleted: 133
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::queue" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl" }
%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl" = type { %"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data" }
%"struct.std::_Deque_base<int, std::allocator<int>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }

$_ZN4mold7Counter9instancesE = comdat any

$_ZNSt6vectorIPN4mold7CounterESaIS2_EED2Ev = comdat any

$_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_ = comdat any

$_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb = comdat any

@_ZN4mold7Counter9instancesE = linkonce_odr dso_local global { { ptr, ptr, ptr } } zeroinitializer, comdat, align 8
@_ZGVN4mold7Counter9instancesE = linkonce_odr dso_local global i64 0, comdat($_ZN4mold7Counter9instancesE), align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [5 x i8] c"*?[\\\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN4mold7Counter9instancesE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN4mold7Counter9instancesE], section "llvm.metadata"

; Function Attrs: nounwind
define internal void @__cxx_global_var_init() #0 section ".text.startup" comdat($_ZN4mold7Counter9instancesE) {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVN4mold7Counter9instancesE acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVN4mold7Counter9instancesE) #13
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPN4mold7CounterESaIS2_EED2Ev, ptr nonnull @_ZN4mold7Counter9instancesE, ptr nonnull @__dso_handle) #13 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVN4mold7Counter9instancesE) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIPN4mold7CounterESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIPN4mold7CounterESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #14
  br label %_ZNSt12_Vector_baseIPN4mold7CounterESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIPN4mold7CounterESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local noundef zeroext i1 @_ZN4mold11AhoCorasick10can_handleESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.thread21, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEc.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEc.exit: ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !14
  %i.c = icmp eq i8 %i.b, 42
  br i1 %i.c, label %bb.b, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit

bb.b:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEc.exit
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = add i64 %0, -1                           ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.thread21, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEc.exit, %bb.b
  %.sroa.0.017 = phi i64 [ %i.e, %bb.b ], [ %0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEc.exit ] ; 3 uses
  %.sroa.9.016 = phi ptr [ %i.d, %bb.b ], [ %1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEc.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.9.016, i64 %.sroa.0.017
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14
  %i.j = icmp eq i8 %i.i, 42
  br i1 %i.j, label %bb.c, label %.thread24

bb.c:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit
  %i.k = add i64 %.sroa.0.017, -1                 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.thread21, label %.thread24

.thread24:                                        ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit, %bb.c
  %.sroa.0.128 = phi i64 [ %i.k, %bb.c ], [ %.sroa.0.017, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit ]
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.thread24, %bb.d
  %.0111420.i.i = phi i64 [ %i.q, %bb.d ], [ 0, %.thread24 ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.9.016, i64 %.0111420.i.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  %i.o = sext i8 %i.n to i32
  %i.p = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.o, i64 noundef 4) #13
  %.not13.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not13.not.i.i, label %bb.d, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.q = add i64 %.0111420.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.q, %.sroa.0.128
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.d
  %.2.i.i = phi i64 [ %.0111420.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ -1, %bb.d ]
  %i.r = icmp eq i64 %.2.i.i, -1
  br label %.thread21

.thread21:                                        ; preds = %bb.b, %bb.a, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit, %bb.c
  %i.s = phi i1 [ false, %bb.c ], [ %i.r, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none)
define dso_local noundef i32 @_ZNK4mold11AhoCorasick10find_childEih(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %2 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.f = sext i32 %1 to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.01014 = load i32, ptr %i.i, align 4, !tbaa !15 ; 2 uses
  %.not15 = icmp eq i32 %.01014, -1
  br i1 %.not15, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.010 = load i32, ptr %i.j, align 4, !tbaa !15  ; 2 uses
  %.not = icmp eq i32 %.010, -1
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !19

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.01016 = phi i32 [ %.010, %bb.d ], [ %.01014, %bb.c ] ; 2 uses
  %i.k = sext i32 %.01016 to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.n = load i8, ptr %i.m, align 4, !tbaa !21
  %i.o = icmp eq i8 %i.n, %2
  br i1 %i.o, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %.lr.ph, %bb.c, %bb.b
  %.1 = phi i32 [ %i.d, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ], [ %.01016, %.lr.ph ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nounwind
define dso_local noundef i32 @_ZN4mold11AhoCorasick9add_childEih(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1048) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0                        ; 2 uses
  br i1 %i.a, label %_ZNK4mold11AhoCorasick10find_childEih.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.c = sext i32 %1 to i64                       ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !16   ; 4 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.01014.i = load i32, ptr %i.f, align 4, !tbaa !15 ; 2 uses
  %.not15.i = icmp eq i32 %.01014.i, -1
  br i1 %.not15.i, label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.010.i = load i32, ptr %i.g, align 4, !tbaa !15 ; 2 uses
  %.not.i = icmp eq i32 %.010.i, -1
  br i1 %.not.i, label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread, label %.lr.ph.i, !llvm.loop !19

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.01016.i = phi i32 [ %.010.i, %bb.c ], [ %.01014.i, %bb.b ] ; 2 uses
  %i.h = sext i32 %.01016.i to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i8, ptr %i.j, align 4, !tbaa !21
  %i.l = icmp eq i8 %i.k, %2
  br i1 %i.l, label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread21, label %bb.c

_ZNK4mold11AhoCorasick10find_childEih.exit:       ; preds = %bb.a
  %i.m = zext i8 %2 to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !15   ; 2 uses
  %.not.not = icmp eq i32 %i.o, -1
  br i1 %.not.not, label %_ZNK4mold11AhoCorasick10find_childEih.exit._ZNK4mold11AhoCorasick10find_childEih.exit.thread_crit_edge, label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread21

_ZNK4mold11AhoCorasick10find_childEih.exit._ZNK4mold11AhoCorasick10find_childEih.exit.thread_crit_edge: ; preds = %_ZNK4mold11AhoCorasick10find_childEih.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread

_ZNK4mold11AhoCorasick10find_childEih.exit.thread: ; preds = %bb.c, %_ZNK4mold11AhoCorasick10find_childEih.exit._ZNK4mold11AhoCorasick10find_childEih.exit.thread_crit_edge, %bb.b
  %.pre-phi = phi i64 [ 0, %_ZNK4mold11AhoCorasick10find_childEih.exit._ZNK4mold11AhoCorasick10find_childEih.exit.thread_crit_edge ], [ %i.c, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.pre, %_ZNK4mold11AhoCorasick10find_childEih.exit._ZNK4mold11AhoCorasick10find_childEih.exit.thread_crit_edge ], [ %i.d, %bb.b ], [ %i.d, %bb.c ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !24   ; 6 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = sdiv exact i64 %i.v, 24                  ; 5 uses
  %i.x = trunc i64 %i.w to i32                    ; 4 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.pre-phi
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26
  %.not.i18 = icmp eq ptr %i.s, %i.ac
  br i1 %.not.i18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4mold11AhoCorasick10find_childEih.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %i.ad, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.s, i8 -1, i64 20, i1 false)
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.af, ptr %i.r, align 8, !tbaa !24
  %.pre26 = load ptr, ptr %i.q, align 8, !tbaa !16
  br label %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

bb.e:                                             ; preds = %_ZNK4mold11AhoCorasick10find_childEih.exit.thread
  %i.ag = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.ag, label %bb.f, label %_ZNKSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #15
  unreachable

_ZNKSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.w
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 384307168202282325)
  %i.ak = select i1 %i.ai, i64 384307168202282325, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = mul nuw nsw i64 %i.ak, 24
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #16 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.v ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 0, ptr %i.ao, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.an, i8 -1, i64 20, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.p, %i.s
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.am, %_ZNKSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !27, !alias.scope !29
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.s
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !33

_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aq, %.lr.ph.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.au) #14
  store ptr %i.am, ptr %i.q, align 8, !tbaa !16
  store ptr %i.ar, ptr %i.r, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.av, ptr %i.ab, align 8, !tbaa !26
  br label %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.aw = phi ptr [ %.pre26, %bb.d ], [ %i.am, %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 2 uses
  %sext = shl i64 %i.w, 32
  %i.ax = ashr exact i64 %sext, 32
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i32 %i.aa, ptr %i.az, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  store i8 %2, ptr %i.ba, align 4, !tbaa !21
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %.pre-phi
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 %i.x, ptr %i.bc, align 4, !tbaa !25
  br i1 %i.a, label %bb.g, label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread21

bb.g:                                             ; preds = %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.bd = zext i8 %2 to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bd
  store i32 %i.x, ptr %i.be, align 4, !tbaa !15
  br label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread21

_ZNK4mold11AhoCorasick10find_childEih.exit.thread21: ; preds = %.lr.ph.i, %_ZNK4mold11AhoCorasick10find_childEih.exit, %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit, %bb.g
  %.1 = phi i32 [ %i.o, %_ZNK4mold11AhoCorasick10find_childEih.exit ], [ %i.x, %bb.g ], [ %i.x, %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit ], [ %.01016.i, %.lr.ph.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none)
define dso_local noundef range(i64 -1, -9223372036854775808) i64 @_ZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0, i64 %1, ptr nofree readonly captures(address) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit27", label %.preheader65

.preheader65:                                     ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8
  %.fr = freeze i32 %i.f                          ; 5 uses
  %.not11.i = icmp eq i32 %.fr, -1
  br i1 %.not11.i, label %.preheader65.split.us, label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i

.preheader65.split.us:                            ; preds = %.preheader65, %.critedge.i.us
  %.09.in.i.sroa.speculated.us = phi i32 [ %.09.in.i.sroa.speculate.load..critedge.i.us, %.critedge.i.us ], [ 0, %.preheader65 ] ; 2 uses
  switch i32 %.09.in.i.sroa.speculated.us, label %bb.b [
    i32 -1, label %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit"
    i32 0, label %.critedge.i.us
  ]

bb.b:                                             ; preds = %.preheader65.split.us
  %i.g = sext i32 %.09.in.i.sroa.speculated.us to i64 ; 3 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.01014.i.i.us = load i32, ptr %i.i, align 4, !tbaa !15 ; 2 uses
  %.not15.i.i.us = icmp eq i32 %.01014.i.i.us, -1
  br i1 %.not15.i.i.us, label %.critedge.i.us, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.b, %bb.c
  %.01016.i.i.us = phi i32 [ %.010.i.i.us, %bb.c ], [ %.01014.i.i.us, %bb.b ] ; 2 uses
  %i.j = sext i32 %.01016.i.i.us to i64           ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.m = load i8, ptr %i.l, align 4, !tbaa !21
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.010.i.i.us = load i32, ptr %i.o, align 4, !tbaa !15 ; 2 uses
  %.not.i.i.us = icmp eq i32 %.010.i.i.us, -1
  br i1 %.not.i.i.us, label %.critedge.i.us, label %.lr.ph.i.i.us, !llvm.loop !19

.critedge.i.us:                                   ; preds = %bb.c, %.preheader65.split.us, %bb.b
  %.pre-phi26.i.us = phi i64 [ %i.g, %bb.b ], [ 0, %.preheader65.split.us ], [ %i.g, %bb.c ]
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.pre-phi26.i.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.09.in.i.sroa.speculate.load..critedge.i.us = load i32, ptr %i.q, align 4, !tbaa !15
  br label %.preheader65.split.us, !llvm.loop !36

_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i: ; preds = %.preheader65
  %.pre24.i = sext i32 %.fr to i64
  br label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i

_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i: ; preds = %.lr.ph.i.i.us, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i
  %.pre-phi.i = phi i64 [ %.pre24.i, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i ], [ %i.j, %.lr.ph.i.i.us ]
  %.1.i17.i = phi i32 [ %.fr, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i ], [ %.01016.i.i.us, %.lr.ph.i.i.us ]
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.pre-phi.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !28
  %i.t = tail call i64 @llvm.smax.i64(i64 %i.s, i64 -1)
  br label %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit"

"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit": ; preds = %.preheader65.split.us, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i
  %.163 = phi i32 [ %.1.i17.i, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i ], [ 0, %.preheader65.split.us ] ; 2 uses
  %.1 = phi i64 [ %i.t, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i ], [ -1, %.preheader65.split.us ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %.not77 = icmp samesign eq i64 %1, 0
  br i1 %.not77, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46", %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit"
  %.062.lcssa = phi i32 [ %.163, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit" ], [ %.264, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46" ]
  %.061.lcssa = phi i64 [ %.1, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit" ], [ %.3, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46" ] ; 2 uses
  %.not11.i12 = icmp eq i32 %.fr, -1
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i19
  %.09.in.i9.sroa.speculated = phi i32 [ %.09.in.i9.sroa.speculate.load..critedge.i19, %.critedge.i19 ], [ %.062.lcssa, %.preheader ] ; 2 uses
  switch i32 %.09.in.i9.sroa.speculated, label %bb.e [
    i32 -1, label %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit27"
    i32 0, label %_ZNK4mold11AhoCorasick10find_childEih.exit.i11
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = sext i32 %.09.in.i9.sroa.speculated to i64 ; 3 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.01014.i.i21 = load i32, ptr %i.x, align 4, !tbaa !15 ; 2 uses
  %.not15.i.i22 = icmp eq i32 %.01014.i.i21, -1
  br i1 %.not15.i.i22, label %.critedge.i19, label %.lr.ph.i.i23

bb.f:                                             ; preds = %.lr.ph.i.i23
  %i.y = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.010.i.i25 = load i32, ptr %i.y, align 4, !tbaa !15 ; 2 uses
  %.not.i.i26 = icmp eq i32 %.010.i.i25, -1
  br i1 %.not.i.i26, label %.critedge.i19, label %.lr.ph.i.i23, !llvm.loop !19

.lr.ph.i.i23:                                     ; preds = %bb.e, %bb.f
  %.01016.i.i24 = phi i32 [ %.010.i.i25, %bb.f ], [ %.01014.i.i21, %bb.e ]
  %i.z = sext i32 %.01016.i.i24 to i64            ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !21
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i16, label %bb.f

_ZNK4mold11AhoCorasick10find_childEih.exit.i11:   ; preds = %bb.d
  br i1 %.not11.i12, label %.critedge.i19, label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i14

.critedge.i19:                                    ; preds = %bb.f, %_ZNK4mold11AhoCorasick10find_childEih.exit.i11, %bb.e
  %.pre-phi26.i20 = phi i64 [ %i.v, %bb.e ], [ 0, %_ZNK4mold11AhoCorasick10find_childEih.exit.i11 ], [ %i.v, %bb.f ]
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.pre-phi26.i20
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.09.in.i9.sroa.speculate.load..critedge.i19 = load i32, ptr %i.af, align 4, !tbaa !15
  br label %bb.d, !llvm.loop !36

_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i14: ; preds = %_ZNK4mold11AhoCorasick10find_childEih.exit.i11
  %.pre24.i15 = sext i32 %.fr to i64
  br label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i16

_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i16: ; preds = %.lr.ph.i.i23, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i14
  %.pre-phi.i17 = phi i64 [ %.pre24.i15, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i14 ], [ %i.z, %.lr.ph.i.i23 ]
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.pre-phi.i17
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !28
  %i.ai = tail call i64 @llvm.smax.i64(i64 %.061.lcssa, i64 %i.ah)
  br label %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit27"

.lr.ph:                                           ; preds = %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit", %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46"
  %.0880 = phi ptr [ %i.bb, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46" ], [ %2, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit" ] ; 2 uses
  %.06179 = phi i64 [ %.3, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46" ], [ %.1, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit" ] ; 2 uses
  %.06278 = phi i32 [ %.264, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46" ], [ %.163, %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit" ]
  %i.aj = load i8, ptr %.0880, align 1, !tbaa !14 ; 2 uses
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i38, %.lr.ph
  %.09.in.i28.sroa.speculated = phi i32 [ %.06278, %.lr.ph ], [ %.09.in.i28.sroa.speculate.load..critedge.i38, %.critedge.i38 ] ; 2 uses
  switch i32 %.09.in.i28.sroa.speculated, label %bb.h [
    i32 -1, label %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46"
    i32 0, label %_ZNK4mold11AhoCorasick10find_childEih.exit.i30
  ]

bb.h:                                             ; preds = %bb.g
  %i.am = sext i32 %.09.in.i28.sroa.speculated to i64 ; 3 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.01014.i.i40 = load i32, ptr %i.ao, align 4, !tbaa !15 ; 2 uses
  %.not15.i.i41 = icmp eq i32 %.01014.i.i40, -1
  br i1 %.not15.i.i41, label %.critedge.i38, label %.lr.ph.i.i42

bb.i:                                             ; preds = %.lr.ph.i.i42
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.010.i.i44 = load i32, ptr %i.ap, align 4, !tbaa !15 ; 2 uses
  %.not.i.i45 = icmp eq i32 %.010.i.i44, -1
  br i1 %.not.i.i45, label %.critedge.i38, label %.lr.ph.i.i42, !llvm.loop !19

.lr.ph.i.i42:                                     ; preds = %bb.h, %bb.i
  %.01016.i.i43 = phi i32 [ %.010.i.i44, %bb.i ], [ %.01014.i.i40, %bb.h ] ; 2 uses
  %i.aq = sext i32 %.01016.i.i43 to i64           ; 2 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.at = load i8, ptr %i.as, align 4, !tbaa !21
  %i.au = icmp eq i8 %i.at, %i.aj
  br i1 %i.au, label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i35, label %bb.i

_ZNK4mold11AhoCorasick10find_childEih.exit.i30:   ; preds = %bb.g
  %i.av = load i32, ptr %i.al, align 4, !tbaa !15 ; 3 uses
  %.not11.i31 = icmp eq i32 %i.av, -1
  br i1 %.not11.i31, label %.critedge.i38, label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i33

.critedge.i38:                                    ; preds = %bb.i, %_ZNK4mold11AhoCorasick10find_childEih.exit.i30, %bb.h
  %.pre-phi26.i39 = phi i64 [ %i.am, %bb.h ], [ 0, %_ZNK4mold11AhoCorasick10find_childEih.exit.i30 ], [ %i.am, %bb.i ]
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.pre-phi26.i39
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.09.in.i28.sroa.speculate.load..critedge.i38 = load i32, ptr %i.ax, align 4, !tbaa !15
  br label %bb.g, !llvm.loop !36

_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i33: ; preds = %_ZNK4mold11AhoCorasick10find_childEih.exit.i30
  %.pre24.i34 = sext i32 %i.av to i64
  br label %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i35

_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i35: ; preds = %.lr.ph.i.i42, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i33
  %.pre-phi.i36 = phi i64 [ %.pre24.i34, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i33 ], [ %i.aq, %.lr.ph.i.i42 ]
  %.1.i17.i37 = phi i32 [ %i.av, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.loopexit22.i33 ], [ %.01016.i.i43, %.lr.ph.i.i42 ]
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.pre-phi.i36
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !28
  %i.ba = tail call i64 @llvm.smax.i64(i64 %.06179, i64 %i.az)
  br label %"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46"

"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit46": ; preds = %bb.g, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i35
  %.264 = phi i32 [ %.1.i17.i37, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i35 ], [ 0, %bb.g ] ; 2 uses
  %.3 = phi i64 [ %i.ba, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i35 ], [ %.06179, %bb.g ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0880, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bb, %i.u
  br i1 %.not, label %.preheader, label %.lr.ph

"_ZZN4mold11AhoCorasick4findESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEh.exit27": ; preds = %bb.d, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i16, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.ai, %_ZNK4mold11AhoCorasick10find_childEih.exit.thread14.i16 ], [ %.061.lcssa, %bb.d ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind
define dso_local noundef zeroext i1 @_ZN4mold11AhoCorasick3addESt17basic_string_viewIcSt11char_traitsIcEEl(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1048) %0, i64 %1, ptr nofree readonly captures(address) %2, i64 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %0, i8 -1, i64 1024, i1 false), !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i, label %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.h, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.d, i8 -1, i64 20, i1 false)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.j, ptr %i.c, align 8, !tbaa !24
  br label %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.k = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %i.l, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.k, i8 -1, i64 20, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %.not.i22.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i
  %i.n = ptrtoint ptr %i.b to i64
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.q) #14
  br label %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.c, %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !16
  store ptr %i.m, ptr %i.c, align 8, !tbaa !24
  store ptr %i.m, ptr %i.f, align 8, !tbaa !26
  br label %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.b, %bb.a
  %i.r = icmp eq i64 %1, 0
  br i1 %i.r, label %._crit_edge.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEc.exit

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.s = tail call noundef i32 @_ZN4mold11AhoCorasick9add_childEih(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef 0, i8 noundef zeroext 0)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEc.exit: ; preds = %_ZNSt6vectorIN4mold11AhoCorasick8TrieNodeESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.t = load i8, ptr %2, align 1, !tbaa !14
  %i.u = icmp eq i8 %i.t, 42
  br i1 %i.u, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEc.exit
  %i.v = tail call noundef i32 @_ZN4mold11AhoCorasick9add_childEih(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef 0, i8 noundef zeroext 0)
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEc.exit, %bb.d
  %.02836 = phi i32 [ %i.v, %bb.d ], [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEc.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 2 uses
  br label %.lr.ph

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit: ; preds = %bb.f
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
  %i.z = icmp eq i8 %i.y, 42
  br i1 %i.z, label %bb.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.031 = phi ptr [ %i.ac, %bb.f ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.130 = phi i32 [ %.2, %bb.f ], [ %.02836, %.lr.ph.preheader ] ; 2 uses
  %i.aa = load i8, ptr %.031, align 1, !tbaa !14  ; 2 uses
  %.not8 = icmp eq i8 %i.aa, 42
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ab = tail call noundef i32 @_ZN4mold11AhoCorasick9add_childEih(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef %.130, i8 noundef zeroext %i.aa)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.2 = phi i32 [ %.130, %.lr.ph ], [ %i.ab, %bb.e ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.031, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.w
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit, label %.lr.ph

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit.thread: ; preds = %._crit_edge.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit
  %.1.lcssa39 = phi i32 [ %i.s, %._crit_edge.thread ], [ %.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit ]
  %i.ad = tail call noundef i32 @_ZN4mold11AhoCorasick9add_childEih(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef %.1.lcssa39, i8 noundef zeroext 0)
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit
  %.3 = phi i32 [ %.2, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit ], [ %i.ad, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE9ends_withEc.exit.thread ]
  %i.ae = sext i32 %.3 to i64
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ae ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !28
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.ah, i64 %3)
  store i64 %.sroa.speculated, ptr %i.ag, align 8, !tbaa !37
  ret i1 true
}

; Function Attrs: mustprogress nounwind
define dso_local void @_ZN4mold11AhoCorasick7compileEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.std::queue", align 8        ; 18 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i64 8, ptr %i.g, align 8, !tbaa !38
  %i.h = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #16 ; 2 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.j = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #16 ; 6 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  store ptr %i.i, ptr %i.l, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  store ptr %i.j, ptr %i.m, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 7 uses
  store ptr %i.i, ptr %i.q, align 8, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  store ptr %i.j, ptr %i.r, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  store ptr %i.n, ptr %i.s, align 8, !tbaa !47
  store ptr %i.j, ptr %i.k, align 8, !tbaa !48
  store ptr %i.j, ptr %i.p, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %storemerge47 = load i32, ptr %i.u, align 4, !tbaa !15 ; 3 uses
  store i32 %storemerge47, ptr %i.a, align 4, !tbaa !15
  %.not48 = icmp eq i32 %storemerge47, -1
  br i1 %.not48, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %._crit_edge63

._crit_edge:                                      ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit
  %.pre66 = load ptr, ptr %i.p, align 8, !tbaa !50
  %.pre67 = load ptr, ptr %i.k, align 8, !tbaa !50 ; 2 uses
  %i.v = icmp eq ptr %.pre66, %.pre67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %i.v, label %._crit_edge63, label %.lr.ph62

.lr.ph:                                           ; preds = %bb.b, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit
  %i.w = phi ptr [ %i.af, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit ], [ %i.t, %bb.b ] ; 2 uses
  %storemerge49 = phi i32 [ %storemerge, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit ], [ %storemerge47, %bb.b ]
  %i.x = sext i32 %storemerge49 to i64
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 0, ptr %i.z, align 8, !tbaa !51
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !49  ; 3 uses
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %.not.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !15  ; 2 uses
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store ptr %i.ae, ptr %i.p, align 8, !tbaa !49
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit

bb.d:                                             ; preds = %.lr.ph
  call void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !15
  %.pre65 = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit

_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit:     ; preds = %bb.c, %bb.d
  %i.af = phi ptr [ %i.w, %bb.c ], [ %.pre65, %bb.d ] ; 4 uses
  %i.ag = phi i32 [ %i.ad, %bb.c ], [ %.pre, %bb.d ]
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %storemerge = load i32, ptr %i.aj, align 4, !tbaa !15 ; 3 uses
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !15
  %.not = icmp eq i32 %storemerge, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !53

.loopexit45.loopexit:                             ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit26
  %.pre74 = load ptr, ptr %i.k, align 8, !tbaa !50
  br label %.loopexit45

.loopexit45:                                      ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit..loopexit45_crit_edge, %.loopexit45.loopexit
  %i.ak = phi ptr [ %.pre74, %.loopexit45.loopexit ], [ %storemerge.i.i, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit..loopexit45_crit_edge ] ; 2 uses
  %i.al = phi ptr [ %storemerge44, %.loopexit45.loopexit ], [ %.pre73, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit..loopexit45_crit_edge ]
  %i.am = phi ptr [ %i.fw, %.loopexit45.loopexit ], [ %i.bb, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit..loopexit45_crit_edge ]
  %i.an = phi ptr [ %i.fw, %.loopexit45.loopexit ], [ %i.bc, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit..loopexit45_crit_edge ]
  %i.ao = icmp eq ptr %i.al, %i.ak
  br i1 %i.ao, label %._crit_edge63, label %.lr.ph62, !llvm.loop !54

.lr.ph62:                                         ; preds = %._crit_edge, %.loopexit45
  %i.ap = phi ptr [ %i.am, %.loopexit45 ], [ %i.af, %._crit_edge ]
  %i.aq = phi ptr [ %i.an, %.loopexit45 ], [ %i.af, %._crit_edge ]
  %i.ar = phi ptr [ %i.ak, %.loopexit45 ], [ %.pre67, %._crit_edge ] ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !15
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !55
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -4
  %.not.i.i16 = icmp eq ptr %i.ar, %i.au
  br i1 %.not.i.i16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph62
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit

bb.f:                                             ; preds = %.lr.ph62
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !56
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef 512) #14
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store ptr %i.ay, ptr %i.l, align 8, !tbaa !45
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44 ; 3 uses
  store ptr %i.az, ptr %i.m, align 8, !tbaa !46
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 512
  store ptr %i.ba, ptr %i.o, align 8, !tbaa !47
  %.pre68 = load ptr, ptr %i.b, align 8, !tbaa !16 ; 2 uses
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit

_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit:        ; preds = %bb.e, %bb.f
  %i.bb = phi ptr [ %i.ap, %bb.e ], [ %.pre68, %bb.f ] ; 2 uses
  %i.bc = phi ptr [ %i.aq, %bb.e ], [ %.pre68, %bb.f ] ; 3 uses
  %storemerge.i.i = phi ptr [ %i.av, %bb.e ], [ %i.az, %bb.f ] ; 2 uses
  store ptr %storemerge.i.i, ptr %i.k, align 8, !tbaa !48
  %i.bd = sext i32 %i.as to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %storemerge1257 = load i32, ptr %i.bf, align 4, !tbaa !15 ; 2 uses
  %.not1358 = icmp eq i32 %storemerge1257, -1
  br i1 %.not1358, label %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit..loopexit45_crit_edge, label %.lr.ph60

_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit..loopexit45_crit_edge: ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit
  %.pre73 = load ptr, ptr %i.p, align 8, !tbaa !50
  br label %.loopexit45

.lr.ph60:                                         ; preds = %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit26
  %i.bg = phi ptr [ %i.fw, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit26 ], [ %i.bb, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit ]
  %i.bh = phi ptr [ %i.fw, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit26 ], [ %i.bc, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit ] ; 8 uses
  %storemerge1259 = phi i32 [ %storemerge12, %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit26 ], [ %storemerge1257, %_ZNSt5queueIiSt5dequeIiSaIiEEE3popEv.exit ] ; 3 uses
  %.pn50 = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bd
  %.0.in51 = getelementptr inbounds nuw i8, ptr %.pn50, i64 8
  %.052 = load i32, ptr %.0.in51, align 8, !tbaa !51 ; 2 uses
  %.not1453 = icmp eq i32 %.052, 0
  %.phi.trans.insert = sext i32 %storemerge1259 to i64 ; 4 uses
  %.phi.trans.insert69 = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.phi.trans.insert ; 3 uses
  %.phi.trans.insert70 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert69, i64 20
  %.pre71 = load i8, ptr %.phi.trans.insert70, align 4, !tbaa !21 ; 3 uses
  br i1 %.not1453, label %.critedge.thread, label %.lr.ph56

.critedge.thread:                                 ; preds = %.loopexit, %.lr.ph60
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.phi.trans.insert
  %i.bj = zext i8 %.pre71 to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !15
  %.fr = freeze i32 %i.bl                         ; 2 uses
  %.not15 = icmp eq i32 %.fr, -1
  %spec.select = select i1 %.not15, i32 0, i32 %.fr
  br label %_ZNK4mold11AhoCorasick10find_childEih.exit24.thread38

.lr.ph56:                                         ; preds = %.lr.ph60, %.loopexit
  %.054 = phi i32 [ %.0, %.loopexit ], [ %.052, %.lr.ph60 ] ; 2 uses
  %i.bm = sext i32 %.054 to i64
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %.01014.i = load i32, ptr %i.bo, align 4, !tbaa !15 ; 3 uses
  %.not15.i = icmp eq i32 %.01014.i, -1
  br i1 %.not15.i, label %.loopexit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.010.i = load i32, ptr %i.bp, align 4, !tbaa !15 ; 2 uses
  %.not.i = icmp eq i32 %.010.i, -1
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !19

.lr.ph.i:                                         ; preds = %.lr.ph56, %bb.g
  %.01016.i = phi i32 [ %.010.i, %bb.g ], [ %.01014.i, %.lr.ph56 ]
  %i.bq = sext i32 %.01016.i to i64
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 20
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !21
  %i.bu = icmp eq i8 %i.bt, %.pre71
  br i1 %i.bu, label %.lr.ph.i19, label %bb.g

.loopexit:                                        ; preds = %bb.g, %.lr.ph56
  %.0.in = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.0 = load i32, ptr %.0.in, align 8, !tbaa !51  ; 2 uses
  %.not14 = icmp eq i32 %.0, 0
  br i1 %.not14, label %.critedge.thread, label %.lr.ph56, !llvm.loop !58

bb.h:                                             ; preds = %.lr.ph.i19
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.010.i21 = load i32, ptr %i.bv, align 4, !tbaa !15 ; 2 uses
  %.not.i22 = icmp eq i32 %.010.i21, -1
  br i1 %.not.i22, label %_ZNK4mold11AhoCorasick10find_childEih.exit24.thread38, label %.lr.ph.i19, !llvm.loop !19

.lr.ph.i19:                                       ; preds = %.lr.ph.i, %bb.h
  %.01016.i20 = phi i32 [ %.010.i21, %bb.h ], [ %.01014.i, %.lr.ph.i ] ; 2 uses
  %i.bw = sext i32 %.01016.i20 to i64
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !21
  %i.ca = icmp eq i8 %i.bz, %.pre71
  br i1 %i.ca, label %_ZNK4mold11AhoCorasick10find_childEih.exit24.thread38, label %bb.h

_ZNK4mold11AhoCorasick10find_childEih.exit24.thread38: ; preds = %bb.h, %.lr.ph.i19, %.critedge.thread
  %i.cb = phi ptr [ %i.bi, %.critedge.thread ], [ %.phi.trans.insert69, %.lr.ph.i19 ], [ %.phi.trans.insert69, %bb.h ] ; 2 uses
  %i.cc = phi i32 [ %spec.select, %.critedge.thread ], [ %.054, %bb.h ], [ %.01016.i20, %.lr.ph.i19 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.phi.trans.insert
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %i.cc, ptr %i.ce, align 8, !tbaa !51
  %i.cf = sext i32 %i.cc to i64
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.cf
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !28
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !28
  %i.cj = call i64 @llvm.smax.i64(i64 %i.ch, i64 %i.ci)
  store i64 %i.cj, ptr %i.cb, align 8, !tbaa !37
  %i.ck = load ptr, ptr %i.p, align 8, !tbaa !49  ; 4 uses
  %i.cl = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -4
  %.not.i.i25 = icmp eq ptr %i.ck, %i.cm
  br i1 %.not.i.i25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK4mold11AhoCorasick10find_childEih.exit24.thread38
  store i32 %storemerge1259, ptr %i.ck, align 4, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit26

bb.j:                                             ; preds = %_ZNK4mold11AhoCorasick10find_childEih.exit24.thread38
  %i.co = load ptr, ptr %i.q, align 8, !tbaa !45  ; 3 uses
  %i.cp = load ptr, ptr %i.l, align 8, !tbaa !45  ; 6 uses
  %i.cq = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cr = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 3                 ; 3 uses
  %i.cu = icmp ne ptr %i.co, null
  %.neg.i.i.i = sext i1 %i.cu to i64
  %i.cv = add nsw i64 %i.ct, %.neg.i.i.i
  %i.cw = shl nsw i64 %i.cv, 7
  %i.cx = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.cy = ptrtoint ptr %i.ck to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 2
  %i.dc = add nsw i64 %i.cw, %i.db
  %i.dd = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.de = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = ashr exact i64 %i.dh, 2
  %i.dj = add nsw i64 %i.dc, %i.di
  %i.dk = icmp eq i64 %i.dj, 4611686018427387903
  br i1 %i.dk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #15
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.dl = load i64, ptr %i.g, align 8, !tbaa !38  ; 5 uses
  %i.dm = load ptr, ptr %1, align 8, !tbaa !43    ; 2 uses
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.cq, %i.dn
  %i.dp = ashr exact i64 %i.do, 3
  %i.dq = sub i64 %i.dl, %i.dp
  %i.dr = icmp ult i64 %i.dq, 2
  br i1 %i.dr, label %bb.m, label %_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_.exit

bb.m:                                             ; preds = %bb.l
  %i.ds = add nsw i64 %i.ct, 1                    ; 2 uses
  %i.dt = add nsw i64 %i.ct, 2                    ; 3 uses
  %i.du = shl nsw i64 %i.dt, 1
  %i.dv = icmp ugt i64 %i.dl, %i.du
  br i1 %i.dv, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.dw = sub i64 %i.dl, %i.dt
  %i.dx = lshr i64 %i.dw, 1
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dx ; 10 uses
  %i.dz = icmp ult ptr %i.dy, %i.cp
  %i.ea = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  br i1 %i.dz, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = sub i64 %i.eb, %i.cr                    ; 3 uses
  %i.ed = icmp sgt i64 %i.ec, 8
  br i1 %i.ed, label %bb.p, label %bb.q, !prof !59

bb.p:                                             ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dy, ptr nonnull align 8 %i.cp, i64 %i.ec, i1 false)
  br label %_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb.exit

bb.q:                                             ; preds = %bb.o
  %i.ee = icmp eq i64 %i.ec, 8
  br i1 %i.ee, label %bb.r, label %_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb.exit

bb.r:                                             ; preds = %bb.q
  %i.ef = load ptr, ptr %i.cp, align 8, !tbaa !44
  store ptr %i.ef, ptr %i.dy, align 8, !tbaa !44
  br label %_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb.exit

bb.s:                                             ; preds = %bb.n
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ds ; 2 uses
  %i.eh = ptrtoint ptr %i.ea to i64
  %i.ei = sub i64 %i.eh, %i.cr                    ; 3 uses
  %i.ej = ashr exact i64 %i.ei, 3                 ; 2 uses
  %i.ek = icmp sgt i64 %i.ej, 1
  br i1 %i.ek, label %bb.t, label %bb.u, !prof !59

bb.t:                                             ; preds = %bb.s
  %i.el = sub nsw i64 0, %i.ej
  %i.em = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.el
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.em, ptr align 8 %i.cp, i64 %i.ei, i1 false)
  br label %_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb.exit

bb.u:                                             ; preds = %bb.s
  %i.en = icmp eq i64 %i.ei, 8
  br i1 %i.en, label %bb.v, label %_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb.exit

bb.v:                                             ; preds = %bb.u
  %i.eo = getelementptr inbounds i8, ptr %i.eg, i64 -8
  %i.ep = load ptr, ptr %i.cp, align 8, !tbaa !44
  store ptr %i.ep, ptr %i.eo, align 8, !tbaa !44
  br label %_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb.exit

bb.w:                                             ; preds = %bb.m
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.eq = add i64 %i.dl, 2
  %i.er = add i64 %i.eq, %.sroa.speculated.i      ; 5 uses
  %i.es = icmp ugt i64 %i.er, 1152921504606846975
  br i1 %i.es, label %bb.x, label %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit.i, !prof !60

bb.x:                                             ; preds = %bb.w
  %i.et = icmp ugt i64 %i.er, 2305843009213693951
  br i1 %i.et, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit.i: ; preds = %bb.w
  %i.eu = shl nuw nsw i64 %i.er, 3
  %i.ev = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #16 ; 2 uses
  %i.ew = sub nsw i64 %i.er, %i.dt
  %i.ex = lshr i64 %i.ew, 1
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ex ; 3 uses
  %i.ez = load ptr, ptr %i.l, align 8, !tbaa !57  ; 3 uses
  %i.fa = load ptr, ptr %i.q, align 8, !tbaa !61
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = sub i64 %i.fc, %i.fd                    ; 3 uses
  %i.ff = icmp sgt i64 %i.fe, 8
  br i1 %i.ff, label %bb.aa, label %bb.ab, !prof !59

bb.aa:                                            ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ey, ptr align 8 %i.ez, i64 %i.fe, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24.i

bb.ab:                                            ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit.i
  %i.fg = icmp eq i64 %i.fe, 8
  br i1 %i.fg, label %bb.ac, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24.i

bb.ac:                                            ; preds = %bb.ab
  %i.fh = load ptr, ptr %i.ez, align 8, !tbaa !44
  store ptr %i.fh, ptr %i.ey, align 8, !tbaa !44
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24.i

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24.i:            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.fi = load ptr, ptr %1, align 8, !tbaa !43
  %i.fj = load i64, ptr %i.g, align 8, !tbaa !38
  %i.fk = shl i64 %i.fj, 3
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fk) #14
  store ptr %i.ev, ptr %1, align 8, !tbaa !43
  store i64 %i.er, ptr %i.g, align 8, !tbaa !38
  br label %_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb.exit

_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb.exit:   ; preds = %bb.p, %bb.q, %bb.r, %bb.t, %bb.u, %bb.v, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24.i
  %.0.i = phi ptr [ %i.ey, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24.i ], [ %i.dy, %bb.r ], [ %i.dy, %bb.p ], [ %i.dy, %bb.q ], [ %i.dy, %bb.t ], [ %i.dy, %bb.u ], [ %i.dy, %bb.v ] ; 3 uses
  store ptr %.0.i, ptr %i.l, align 8, !tbaa !45
  %i.fl = load ptr, ptr %.0.i, align 8, !tbaa !44 ; 2 uses
  store ptr %i.fl, ptr %i.m, align 8, !tbaa !46
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 512
  store ptr %i.fm, ptr %i.o, align 8, !tbaa !47
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.ds
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -8 ; 2 uses
  store ptr %i.fo, ptr %i.q, align 8, !tbaa !45
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !44 ; 2 uses
  store ptr %i.fp, ptr %i.r, align 8, !tbaa !46
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 512
  store ptr %i.fq, ptr %i.s, align 8, !tbaa !47
  br label %_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_.exit

_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_.exit: ; preds = %bb.l, %_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb.exit
  %i.fr = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #16 ; 4 uses
  %i.fs = load ptr, ptr %i.q, align 8, !tbaa !61
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  store ptr %i.fr, ptr %i.ft, align 8, !tbaa !44
  %i.fu = load ptr, ptr %i.p, align 8, !tbaa !49
  store i32 %storemerge1259, ptr %i.fu, align 4, !tbaa !15
  store ptr %i.ft, ptr %i.q, align 8, !tbaa !45
  store ptr %i.fr, ptr %i.r, align 8, !tbaa !46
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 512
  store ptr %i.fv, ptr %i.s, align 8, !tbaa !47
  %.pre72 = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit26

_ZNSt5queueIiSt5dequeIiSaIiEEE4pushERKi.exit26:   ; preds = %bb.i, %_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_.exit
  %i.fw = phi ptr [ %i.bg, %bb.i ], [ %.pre72, %_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_.exit ] ; 5 uses
  %storemerge44 = phi ptr [ %i.cn, %bb.i ], [ %i.fr, %_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_.exit ] ; 2 uses
  store ptr %storemerge44, ptr %i.p, align 8, !tbaa !49
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.fw, i64 %.phi.trans.insert
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %storemerge12 = load i32, ptr %i.fy, align 4, !tbaa !15 ; 2 uses
  %.not13 = icmp eq i32 %storemerge12, -1
  br i1 %.not13, label %.loopexit45.loopexit, label %.lr.ph60, !llvm.loop !62

._crit_edge63:                                    ; preds = %.loopexit45, %._crit_edge.thread, %._crit_edge
  %i.fz = load ptr, ptr %1, align 8, !tbaa !43    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i, label %_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge63
  %i.ga = load ptr, ptr %i.l, align 8, !tbaa !57  ; 2 uses
  %i.gb = load ptr, ptr %i.q, align 8, !tbaa !61  ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = icmp ult ptr %i.ga, %i.gc
  br i1 %i.gd, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ad, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.gf, %.lr.ph.i.i.i.i ], [ %i.ga, %bb.ad ] ; 3 uses
  %i.ge = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !44
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef 512) #14
  %i.gf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.gg = icmp ult ptr %.06.i.i.i.i, %i.gb
  br i1 %i.gg, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i, !llvm.loop !63

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !43
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i, %bb.ad
  %i.gh = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i.i ], [ %i.fz, %bb.ad ]
  %i.gi = load i64, ptr %i.g, align 8, !tbaa !38
  %i.gj = shl i64 %i.gi, 3
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gj) #14
  br label %_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev.exit

_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev.exit:          ; preds = %._crit_edge63, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %_ZNSt5queueIiSt5dequeIiSaIiEEED2Ev.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 4611686018427387903
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !38
  %i.ag = load ptr, ptr %0, align 8, !tbaa !43
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIiSaIiEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #16 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !44
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.aq = load i32, ptr %1, align 4, !tbaa !15
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !15
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !45
  store ptr %i.am, ptr %i.o, align 8, !tbaa !46
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !47
  store ptr %i.am, ptr %i.a, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt5dequeIiSaIiEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !38   ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !43
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !59

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !44
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !44
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !59

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !44
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !44
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit, !prof !60

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #15
  unreachable

_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #16 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !57  ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.o, label %bb.p, !prof !59

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIiSaIiEE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.q, label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !44
  store ptr %i.be, ptr %i.av, align 8, !tbaa !44
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24:              ; preds = %bb.o, %bb.p, %bb.q
  %i.bf = load ptr, ptr %0, align 8, !tbaa !43
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !38
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #14
  store ptr %i.aq, ptr %0, align 8, !tbaa !43
  store i64 %i.am, ptr %i.k, align 8, !tbaa !38
  br label %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit

_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit:                ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPiS1_ET0_T_S3_S2_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !45
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !44   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !46
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !47
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !45
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !44 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !46
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !47
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt12_Vector_baseIPN4mold7CounterESaIS2_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p2 _ZTSN4mold7CounterE", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!9, !10, i64 16}
!14 = !{!6, !6, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIN4mold11AhoCorasick8TrieNodeESaIS2_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!18 = !{!"p1 _ZTSN4mold11AhoCorasick8TrieNodeE", !12, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!22, !6, i64 20}
!22 = !{!"_ZTSN4mold11AhoCorasick8TrieNodeE", !23, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 20}
!23 = !{!"long", !6, i64 0}
!24 = !{!17, !18, i64 8}
!25 = !{!22, !5, i64 12}
!26 = !{!17, !18, i64 16}
!27 = !{i64 0, i64 8, !28, i64 8, i64 4, !15, i64 12, i64 4, !15, i64 16, i64 4, !15, i64 20, i64 1, !14}
!28 = !{!23, !23, i64 0}
!29 = !{!30, !32}
!30 = distinct !{!30, !31, !"_ZSt19__relocate_object_aIN4mold11AhoCorasick8TrieNodeES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!31 = distinct !{!31, !"_ZSt19__relocate_object_aIN4mold11AhoCorasick8TrieNodeES2_SaIS2_EEvPT_PT0_RT1_"}
!32 = distinct !{!32, !31, !"_ZSt19__relocate_object_aIN4mold11AhoCorasick8TrieNodeES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!33 = distinct !{!33, !20}
!34 = !{!22, !5, i64 16}
!35 = !{!18, !18, i64 0}
!36 = distinct !{!36, !20}
!37 = !{!22, !23, i64 0}
!38 = !{!39, !23, i64 8}
!39 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataE", !40, i64 0, !23, i64 8, !41, i64 16, !41, i64 48}
!40 = !{!"p2 int", !11, i64 0}
!41 = !{!"_ZTSSt15_Deque_iteratorIiRiPiE", !42, i64 0, !42, i64 8, !42, i64 16, !40, i64 24}
!42 = !{!"p1 int", !12, i64 0}
!43 = !{!39, !40, i64 0}
!44 = !{!42, !42, i64 0}
!45 = !{!41, !40, i64 24}
!46 = !{!41, !42, i64 8}
!47 = !{!41, !42, i64 16}
!48 = !{!39, !42, i64 16}
!49 = !{!39, !42, i64 48}
!50 = !{!41, !42, i64 0}
!51 = !{!22, !5, i64 8}
!52 = !{!39, !42, i64 64}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !20}
!55 = !{!39, !42, i64 32}
!56 = !{!39, !42, i64 24}
!57 = !{!39, !40, i64 40}
!58 = distinct !{!58, !20}
!59 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!60 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!61 = !{!39, !40, i64 72}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !20}
end_hunk_0
