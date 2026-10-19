Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_macros-3af55ed4b2e72553.typst_macros.a403ac707553f6e0-cgu.5?download=true
inline.NumInlined: 69
inline.NumDeleted: 57
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [86 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/core/src/iter/adapters/mod.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"U\00\00\00\00\00\00\00\A5\00\00\00\14\00\00\00" }>, align 8
@2 = private unnamed_addr constant [209 x i8] c"unsafe precondition(s) violated: NonZero::new_unchecked requires the argument to be non-zero\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@3 = private unnamed_addr constant [85 x i8] c"/rustc/787af2b8c80638c51a4fc8e44f84e6891f243ec7/library/proc_macro/src/bridge/rpc.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"T\00\00\00\00\00\00\00\B9\00\00\00&\00\00\00" }>, align 8

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj23_Kj2_ECse52LceO7DeS_12typst_macros(ptr %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj36_Kj2_ECse52LceO7DeS_12typst_macros(ptr %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj3a_Kj2_ECse52LceO7DeS_12typst_macros(ptr %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj6_Kj2_ECse52LceO7DeS_12typst_macros(ptr %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKja_Kj1_ECse52LceO7DeS_12typst_macros(ptr %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs3oUPovFnLWP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtCsjMPGGl8VONr_3syn10punctuated4IterNtNtB1b_4data5FieldENvNtCse52LceO7DeS_12typst_macros4elem11parse_fieldENtB26_5FieldINtNtB6_6result6ResultzNtNtB1b_5error5ErrorENCINvXso_B38_IB36_INtNtCs1xwejQucwHj_5alloc3vec3VecB2T_EB3s_EINtNtNtB4_6traits7collect12FromIteratorIB36_B2T_B3s_EE9from_iterBQ_E0B45_EB28_(ptr sret([32 x i8]) align 8 %0, ptr %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  store i64 -1, ptr %i.f, align 8
  store ptr %1, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %.sroa.3.0..sroa_idx, align 8
  invoke void @_RNCINvXso_NtCs3oUPovFnLWP_4core6resultINtB8_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCse52LceO7DeS_12typst_macros4elem5FieldENtNtCsjMPGGl8VONr_3syn5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B22_EE9from_iterINtNtNtB2I_8adapters3map3MapINtNtB26_10punctuated4IterNtNtB26_4data5FieldENvB1m_11parse_fieldEE0B1o_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull %i.a, ptr nonnull align 8 %i.d)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.thread11, %bb.c
  %.sroa.03.0 = phi i1 [ %.sroa.03.1, %bb.c ], [ true, %.thread11 ]
  %.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.k, %.thread11 ] ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, -1
  %or.cond = and i1 %.sroa.03.0, %i.h
  br i1 %or.cond, label %bb.k, label %.thread

bb.c:                                             ; preds = %bb.h, %bb.a
  %.sroa.03.1 = phi i1 [ false, %bb.h ], [ true, %bb.a ]
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.f, align 8
  %.not.not = icmp eq i64 %i.j, -1
  br i1 %.not.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCse52LceO7DeS_12typst_macros4elem5FieldENtNtCsjMPGGl8VONr_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1Z_EE13from_residualB1l_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.c, ptr nonnull align 8 @1)
          to label %bb.h unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCse52LceO7DeS_12typst_macros4elem5FieldENtNtCsjMPGGl8VONr_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try11from_outputB1l_(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.b)
          to label %bb.g unwind label %.thread11

.thread11:                                        ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.g:                                             ; preds = %bb.f, %bb.h
  ret void

bb.h:                                             ; preds = %bb.e
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCse52LceO7DeS_12typst_macros4elem5FieldEEB1c_(ptr nonnull align 8 %i.e)
          to label %bb.g unwind label %bb.c

bb.i:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCse52LceO7DeS_12typst_macros4elem5FieldEEB1c_(ptr nonnull align 8 %i.e) #18
          to label %.thread unwind label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

.thread:                                          ; preds = %bb.i, %bb.k, %bb.b
  %.pn10 = phi { ptr, i32 } [ %.pn, %bb.b ], [ %.pn, %bb.k ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %.pn10

bb.k:                                             ; preds = %bb.b
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsjMPGGl8VONr_3syn5error5ErrorEECse52LceO7DeS_12typst_macros(ptr nonnull align 8 %i.f) #18
          to label %.thread unwind label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCse52LceO7DeS_12typst_macros4elem5FieldNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keybNCNvBZ_5parses_0E0EB11_(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, i64 %4, ptr align 8 %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0
  %i.c = icmp uge i64 %4, %1
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %1, %4                       ; 3 uses
  %i.e = tail call i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3minCscVvfRCjUNk2_11proc_macro2(i64 %4, i64 %i.d) #20
  %i.f = icmp ult i64 %3, %i.e
  br i1 %i.f, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [920 x i8], ptr %0, i64 %4 ; 3 uses
  %i.h = getelementptr inbounds nuw [920 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp ugt i64 %4, %i.d                   ; 2 uses
  %spec.select = select i1 %.not, ptr %i.g, ptr %0 ; 2 uses
  %spec.select16 = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.d)
  %i.i = mul nuw nsw i64 %spec.select16, 920      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %spec.select, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  store ptr %spec.select, ptr %i.l, align 8
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.noexc
  %i.m = phi ptr [ %i.w, %.noexc ], [ %i.j, %.critedge ]
  %i.n = phi ptr [ %i.u, %.noexc ], [ %i.g, %.critedge ]
  %.sroa.0.0.i = phi ptr [ %i.r, %.noexc ], [ %i.h, %.critedge ]
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -920 ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -920 ; 3 uses
  %i.q = invoke zeroext i1 @_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCse52LceO7DeS_12typst_macros4elem5Field11sort_by_keybNCNvBA_5parses_0E0BC_(ptr align 8 %5, ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o) #20
          to label %.noexc unwind label %.loopexit ; 3 uses

.noexc:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -920 ; 2 uses
  %..i = select i1 %i.q, ptr %i.o, ptr %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(920) %i.r, ptr noundef nonnull align 8 dereferenceable(920) %..i, i64 920, i1 false)
  %i.s = xor i1 %i.q, true
  %i.t = zext i1 %i.s to i64
  %i.u = getelementptr inbounds nuw [920 x i8], ptr %i.o, i64 %i.t ; 3 uses
  store ptr %i.u, ptr %i.l, align 8
  %i.v = zext i1 %i.q to i64
  %i.w = getelementptr inbounds nuw [920 x i8], ptr %i.p, i64 %i.v ; 3 uses
  store ptr %i.w, ptr %i.k, align 8
  %i.x = icmp eq ptr %i.u, %0
  %i.y = icmp eq ptr %i.w, %2
  %or.cond.i = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCse52LceO7DeS_12typst_macros4elem5FieldE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keybNCNvB1c_5parses_0E0EB1e_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.noexc18
  %i.z = phi ptr [ %i.af, %.noexc18 ], [ %2, %.critedge ]
  %.sroa.0.07.i = phi ptr [ %i.ah, %.noexc18 ], [ %i.g, %.critedge ] ; 3 uses
  %i.aa = invoke zeroext i1 @_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCse52LceO7DeS_12typst_macros4elem5Field11sort_by_keybNCNvBA_5parses_0E0BC_(ptr align 8 %5, ptr align 8 %.sroa.0.07.i, ptr align 8 %i.z) #20
          to label %.noexc18 unwind label %.loopexit.split-lp ; 3 uses

.noexc18:                                         ; preds = %.lr.ph.i
  %i.ab = xor i1 %i.aa, true
  %i.ac = load ptr, ptr %i.a, align 8             ; 2 uses
  %spec.select19 = select i1 %i.aa, ptr %.sroa.0.07.i, ptr %i.ac
  %i.ad = load ptr, ptr %i.l, align 8             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(920) %i.ad, ptr noundef nonnull align 8 dereferenceable(920) %spec.select19, i64 920, i1 false)
  %i.ae = zext i1 %i.ab to i64
  %i.af = getelementptr inbounds nuw [920 x i8], ptr %i.ac, i64 %i.ae ; 3 uses
  store ptr %i.af, ptr %i.a, align 8
  %i.ag = zext i1 %i.aa to i64
  %i.ah = getelementptr inbounds nuw [920 x i8], ptr %.sroa.0.07.i, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 920
  store ptr %i.ai, ptr %i.l, align 8
  %i.aj = load ptr, ptr %i.k, align 8
  %i.ak = icmp ne ptr %i.af, %i.aj
  %i.al = icmp ne ptr %i.ah, %i.h
  %or.cond.i17 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond.i17, label %.lr.ph.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCse52LceO7DeS_12typst_macros4elem5FieldE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keybNCNvB1c_5parses_0E0EB1e_.exit

.loopexit:                                        ; preds = %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %6

.loopexit.split-lp:                               ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %6

6:                                                ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtCse52LceO7DeS_12typst_macros4elem5FieldEEB1t_(ptr nonnull align 8 %i.a) #18
          to label %bb.e unwind label %bb.d

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCse52LceO7DeS_12typst_macros4elem5FieldE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keybNCNvB1c_5parses_0E0EB1e_.exit: ; preds = %.noexc18, %.noexc
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6stable5merge10MergeStateNtNtCse52LceO7DeS_12typst_macros4elem5FieldEEB1t_(ptr nonnull align 8 %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCse52LceO7DeS_12typst_macros4elem5FieldE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keybNCNvB1c_5parses_0E0EB1e_.exit
  ret void

bb.d:                                             ; preds = %6
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %6
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCscVvfRCjUNk2_11proc_macro25IdentENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCse52LceO7DeS_12typst_macros4elem5parses1_0EB2f_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.f, ptr %0, align 8
  %i.g = call zeroext i1 @_RNCNvNtCse52LceO7DeS_12typst_macros4elem5parses1_0B5_(ptr nonnull %i.a, ptr align 8 %i.c) #20
  br i1 %i.g, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCscVvfRCjUNk2_11proc_macro25IdentENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtCse52LceO7DeS_12typst_macros4elemNtB2e_4Elem3can0EB2g_(ptr nofree align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8
  %.not.not.not.not.not = icmp ne ptr %i.c, %i.d  ; 2 uses
  br i1 %.not.not.not.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.e, ptr %0, align 8
  %i.f = call zeroext i1 @_RNCNvMNtCse52LceO7DeS_12typst_macros4elemNtB4_4Elem3can0B6_(ptr nonnull align 8 %i.a, ptr align 8 %i.c) #20
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.b, %bb.c
  ret i1 %.not.not.not.not.not
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCscVvfRCjUNk2_11proc_macro25IdentENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtCse52LceO7DeS_12typst_macros4elemNtB2f_4Elem4with0EB2h_(ptr nofree align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.g, ptr %0, align 8
  store ptr %i.d, ptr %i.a, align 8, !captures !5
  %i.h = call zeroext i1 @_RNCNvMNtCse52LceO7DeS_12typst_macros4elemNtB4_4Elem4with0B6_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a) #20
  br i1 %i.h, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  %.sroa.0.0 = phi ptr [ %i.i, %bb.d ], [ null, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCse52LceO7DeS_12typst_macros4elem5FieldENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvBS_5parses0_0EBU_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8
  %.not.not.not.not.not = icmp ne ptr %i.c, %i.d  ; 2 uses
  br i1 %.not.not.not.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 920
  store ptr %i.e, ptr %0, align 8
  %i.f = call zeroext i1 @_RNCNvNtCse52LceO7DeS_12typst_macros4elem5parses0_0B5_(ptr nonnull %i.a, ptr align 8 %i.c) #20
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.b, %bb.c
  ret i1 %.not.not.not.not.not
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsjMPGGl8VONr_3syn4attr9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCse52LceO7DeS_12typst_macros4func15rewrite_fn_item00EB2j_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8
  %.not.not.not.not.not = icmp ne ptr %i.c, %i.d  ; 2 uses
  br i1 %.not.not.not.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store ptr %i.e, ptr %0, align 8
  %i.f = call zeroext i1 @_RNCNCNvNtCse52LceO7DeS_12typst_macros4func15rewrite_fn_item00B7_(ptr nonnull %i.a, ptr align 8 %i.c) #20
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.b, %bb.c
  ret i1 %.not.not.not.not.not
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsjMPGGl8VONr_3syn4attr9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtCse52LceO7DeS_12typst_macros5scope19handle_type_or_elem0EB2h_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8
  %.not.not.not.not.not = icmp ne ptr %i.c, %i.d  ; 2 uses
  br i1 %.not.not.not.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store ptr %i.e, ptr %0, align 8
  %i.f = call zeroext i1 @_RNCNvNtCse52LceO7DeS_12typst_macros5scope19handle_type_or_elem0B5_(ptr nonnull %i.a, ptr align 8 %i.c) #20
  br i1 %i.f, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.b, %bb.c
  ret i1 %.not.not.not.not.not
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsjMPGGl8VONr_3syn4attr9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtCse52LceO7DeS_12typst_macros4cast11derive_cast0EB2i_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store ptr %i.g, ptr %0, align 8
  store ptr %i.d, ptr %i.b, align 8, !captures !5
  %i.h = call zeroext i1 @_RNCNvNtCse52LceO7DeS_12typst_macros4cast11derive_cast0B5_(ptr nonnull %i.a, ptr nonnull align 8 %i.b) #20
  br i1 %i.h, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.b, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  %.sroa.0.0 = phi ptr [ %i.i, %bb.d ], [ null, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden align 8 ptr @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCsjMPGGl8VONr_3syn4attr9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtCse52LceO7DeS_12typst_macros5scope5scope0EB2i_(ptr nofree align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = load ptr, ptr %0, align 8                ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store ptr %i.g, ptr %0, align 8
  store ptr %i.d, ptr %i.b, align 8, !captures !5
  %i.h = call zeroext i1 @_RNCNvNtCse52LceO7DeS_12typst_macros5scope5scope0B5_(ptr nonnull %i.a, ptr nonnull align 8 %i.b) #20
  br i1 %i.h, label %bb.d, label %bb.b

end_hunk_0
