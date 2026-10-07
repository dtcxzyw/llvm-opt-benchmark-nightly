Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/counter?download=true
inline.NumInlined: 229
inline.NumDeleted: 119
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.3" = type { i8 }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_counter.cc, ptr null }]

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define hidden void @_ZN9benchmark8internal6FinishEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7CounterESt4lessIS7_ESaISt4pairIKS7_S8_EEEldd(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not11 = icmp eq ptr %i.b, %i.c
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = sitofp i64 %1 to double                  ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.08.012 = phi ptr [ %i.b, %.lr.ph ], [ %i.i, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 64 ; 2 uses
  %.val = load double, ptr %i.e, align 8, !tbaa !22 ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.08.012, i64 72
  %.val7 = load i32, ptr %i.f, align 8, !tbaa !23 ; 2 uses
  %4 = fdiv double %.val, %2
  %5 = insertelement <4 x i32> poison, i32 %.val7, i64 0
  %6 = shufflevector <4 x i32> %5, <4 x i32> poison, <4 x i32> zeroinitializer
  %7 = and <4 x i32> %6, <i32 8, i32 4, i32 2, i32 1>
  %8 = icmp eq <4 x i32> %7, zeroinitializer      ; 4 uses
  %9 = extractelement <4 x i1> %8, i64 3
  %.0.i.a = select i1 %9, double %.val, double %4 ; 2 uses
  %10 = fdiv double %.0.i.a, %3
  %11 = extractelement <4 x i1> %8, i64 2
  %.1.i = select i1 %11, double %.0.i.a, double %10 ; 2 uses
  %i.g = fmul double %.1.i, %i.d
  %12 = extractelement <4 x i1> %8, i64 1
  %.2.i = select i1 %12, double %.1.i, double %i.g ; 2 uses
  %13 = fdiv double %.2.i, %i.d
  %14 = extractelement <4 x i1> %8, i64 0
  %.3.i = select i1 %14, double %.2.i, double %13 ; 2 uses
  %i.h = fdiv double 1.000000e+00, %.3.i
  %.not181.i = icmp slt i32 %.val7, 0
  %.4.i = select i1 %.not181.i, double %i.h, double %.3.i
  store double %.4.i, ptr %i.e, align 8, !tbaa !28
  %i.i = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.08.012) #15 ; 2 uses
  %.not = icmp eq ptr %i.i, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark8internal9IncrementEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7CounterESt4lessIS7_ESaISt4pairIKS7_S8_EEERKSF_(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.not62 = icmp eq ptr %i.b, %i.c
  br i1 %.not62, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %._crit_edge, label %.lr.ph.i.i.i

._crit_edge:                                      ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, %.lr.ph, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not6064 = icmp eq ptr %i.h, %i.i
  br i1 %.not6064, label %._crit_edge68, label %.lr.ph67

.lr.ph67:                                         ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %.sroa.055.063 = phi ptr [ %i.ak, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread ], [ %i.b, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.055.063, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.055.063, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !30   ; 4 uses
  %i.n = load ptr, ptr %i.k, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !30   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.p) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.q, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.t = tail call i32 @memcmp(ptr noundef %i.s, ptr noundef %i.n, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.u = sub i64 %i.p, %i.m
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.u, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.v = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.v, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.v, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !0

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.w = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.w, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !30   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.m) ; 2 uses
  %i.z = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.z, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.ac = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i.i.i) #16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.ad = sub i64 %i.m, %i.y
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ad, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ac, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ae = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.055.063, i64 64 ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !42
  %i.aj = fadd double %i.ag, %i.ai
  store double %i.aj, ptr %i.af, align 8, !tbaa !28
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.d, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.ak = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.055.063) #15 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.i.i

._crit_edge68:                                    ; preds = %bb.h, %._crit_edge
  ret void

bb.e:                                             ; preds = %.lr.ph67, %bb.h
  %.sroa.048.065 = phi ptr [ %i.h, %.lr.ph67 ], [ %i.bj, %bb.h ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.048.065, i64 32 ; 2 uses
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !29  ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %i.am, null
  br i1 %.not10.i.i.i17, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.048.065, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !30 ; 4 uses
  %i.ap = load ptr, ptr %i.al, align 8            ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i24, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.am, %.lr.ph.i.i.i18 ], [ %.1.i.i.i29, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i24 ] ; 4 uses
  %.0811.i.i.i20 = phi ptr [ %i.c, %.lr.ph.i.i.i18 ], [ %.19.i.i.i26, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i24 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !30 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i21 = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.ar) ; 2 uses
  %i.as = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i21, 0
  br i1 %i.as, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i42, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i22

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i22: ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !31
  %i.av = tail call i32 @memcmp(ptr noundef %i.au, ptr noundef %i.ap, i64 noundef %.sroa.speculated.i.i.i.i.i.i21) #16 ; 2 uses
  %.not.i.i.i.i.i.i23 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i.i.i23, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i42, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i24

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i42: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i22, %bb.f
  %i.aw = sub i64 %i.ar, %i.ao
  %spec.select7.i.i.i.i.i.i.i43 = tail call i64 @llvm.smax.i64(i64 %i.aw, i64 -2147483648)
  %.08.i.i.i.i.i.i.i44 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i43, i64 2147483647)
  %.0.i6.i.i.i.i.i.i45 = trunc nsw i64 %.08.i.i.i.i.i.i.i44 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i24

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i24: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i42, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i22
  %.0.i.i.i.i.i.i25 = phi i32 [ %i.av, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i22 ], [ %.0.i6.i.i.i.i.i.i45, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i42 ]
  %i.ax = icmp slt i32 %.0.i.i.i.i.i.i25, 0       ; 2 uses
  %.19.i.i.i26 = select i1 %i.ax, ptr %.0811.i.i.i20, ptr %.012.i.i.i19 ; 4 uses
  %.1.in.v.i.i.i27 = select i1 %i.ax, i64 24, i64 16
  %.1.in.i.i.i28 = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 %.1.in.v.i.i.i27
  %.1.i.i.i29 = load ptr, ptr %.1.in.i.i.i28, align 8, !tbaa !32 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %.1.i.i.i29, null
  br i1 %.not.i.i.i30, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.f, !llvm.loop !1

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i24
  %i.ay = icmp eq ptr %.19.i.i.i26, %i.c
  br i1 %i.ay, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.19.i.i.i26, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !30 ; 2 uses
  %.sroa.speculated.i.i.i.i.i31 = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.ao) ; 2 uses
  %i.bb = icmp eq i64 %.sroa.speculated.i.i.i.i.i31, 0
  br i1 %i.bb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i38, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i32

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i32: ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %.19.i.i.i26, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31
  %i.be = tail call i32 @memcmp(ptr noundef %i.ap, ptr noundef %i.bd, i64 noundef %.sroa.speculated.i.i.i.i.i31) #16 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i.i33, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i38, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i38: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i32, %bb.g
  %i.bf = sub i64 %i.ao, %i.ba
  %spec.select7.i.i.i.i.i.i39 = tail call i64 @llvm.smax.i64(i64 %i.bf, i64 -2147483648)
  %.08.i.i.i.i.i.i40 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i39, i64 2147483647)
  %.0.i6.i.i.i.i.i41 = trunc nsw i64 %.08.i.i.i.i.i.i40 to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
end_hunk_0
