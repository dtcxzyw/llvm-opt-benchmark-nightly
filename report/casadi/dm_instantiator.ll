inline.NumInlined: 7137
inline.NumDeleted: 1380
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 114
begin_hunk_0_@_ZNK6casadi6MatrixIdE5n_depEv:.noexc.i
  %i.cd = load i64, ptr %i.m, align 8, !tbaa !35
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.j
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ] ; 4 uses
  %.5 = phi i1 [ true, %bb.j ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ] ; 2 uses
  %i.cf = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !35
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  %i.ck = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.c
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread: ; preds = %.noexc
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.c
  br i1 %i.co, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread
  %i.cp = load i64, ptr %i.c, align 8, !tbaa !35
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #27
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.cr = load i64, ptr %i.c, align 8, !tbaa !35
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cs) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.5, label %bb.p, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.5, label %bb.p, label %bb.q

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.thread
  %.pn.pn.pn.pn.pn.pn.pn51.ph = phi { ptr, i32 } [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.thread ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %.pn.pn.pn.pn.pn.pn.pn51 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn.pn.pn.pn.pn.pn.pn51.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #28
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.p
  %.pn.pn.pn.pn.pn.pn.pn50 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn.pn.pn.pn.pn.pn.pn51, %bb.p ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn50

bb.r:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN6casadi6MatrixIdE13set_precisionEx(i64 noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store i64 %0, ptr @_ZN6casadi6MatrixIdE17stream_precision_E, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN6casadi6MatrixIdE9set_widthEx(i64 noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store i64 %0, ptr @_ZN6casadi6MatrixIdE13stream_width_E, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN6casadi6MatrixIdE14set_scientificEb(i1 noundef zeroext %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = zext i1 %0 to i8
  store i8 %i.a, ptr @_ZN6casadi6MatrixIdE18stream_scientific_E, align 1, !tbaa !1487
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIdE3rngEx(i64 noundef %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = urem i64 %0, 2147483647
  %storemerge.i = tail call i64 @llvm.umax.i64(i64 %i.a, i64 1)
  store i64 %storemerge.i, ptr @_ZN6casadi6MatrixIdE4rng_E, align 8, !tbaa !1776
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIdE4randExx(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %3, i64 noundef %1, i64 noundef %2)
  invoke void @_ZN6casadi6MatrixIdE4randERKNS_8SparsityE(ptr dead_on_unwind writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  call void @__clang_call_terminate(ptr %i.b) #26
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit3 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit3: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi6MatrixIdE4randERKNS_8SparsityE(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 5 uses
  %i.b = icmp ugt i64 %i.a, 1152921504606846975
  br i1 %i.b, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.504) #24
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8
  %.not.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i, label %.thread, label %.noexc10

.thread:                                          ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.c

.noexc10:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.d = shl nuw nsw i64 %i.a, 3
  %i.e = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #25 ; 5 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !19
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !8
  %i.h = getelementptr i8, ptr %i.e, i64 8        ; 3 uses
  %i.i = add nsw i64 %i.a, -1                     ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %bb.b

bb.b:                                             ; preds = %.noexc10
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.i, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.noexc10, %bb.b
  %.sink = phi ptr [ %i.k, %bb.b ], [ %i.h, %.noexc10 ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sink, ptr %i.l, align 8, !tbaa !14
  %_ZN6casadi6MatrixIdE4rng_E.promoted = load i64, ptr @_ZN6casadi6MatrixIdE4rng_E, align 8
  %i.m = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.n = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.o = fdiv x86_fp80 %i.m, %i.n
  %i.p = fptoui x86_fp80 %i.o to i64              ; 2 uses
  %i.q = add i64 %i.p, 52
  %i.r = udiv i64 %i.q, %i.p                      ; 2 uses
  %spec.select.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1) ; 3 uses
  %xtraiter = and i64 %spec.select.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %3 = add nsw i64 %spec.select.i.i.i.i, -1
  %4 = icmp ult i64 %i.r, 2
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f
  store i64 %.lcssa45, ptr @_ZN6casadi6MatrixIdE4rng_E, align 8, !tbaa !1776
  br label %bb.c

bb.c:                                             ; preds = %.thread, %._crit_edge
  invoke void @_ZN6casadi6MatrixIdEC1ERKNS_8SparsityERKSt6vectorIdSaIdEEb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.i

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.014.024 = phi ptr [ %i.e, %.lr.ph ], [ %i.af, %bb.f ] ; 2 uses
  %.lcssa202123 = phi i64 [ %_ZN6casadi6MatrixIdE4rng_E.promoted, %.lr.ph ], [ %.lcssa45, %bb.f ] ; 2 uses
  br i1 %lcmp.mod.not, label %select.unfold.i.i.i.i.prol.loopexit, label %select.unfold.i.i.i.i.prol

select.unfold.i.i.i.i.prol:                       ; preds = %bb.d
  %5 = mul i64 %.lcssa202123, 16807
  %6 = urem i64 %5, 2147483647                    ; 3 uses
  %7 = add nsw i64 %6, -1
  %8 = uitofp i64 %7 to double                    ; 2 uses
  br label %select.unfold.i.i.i.i.prol.loopexit

select.unfold.i.i.i.i.prol.loopexit:              ; preds = %select.unfold.i.i.i.i.prol, %bb.d
  %.lcssa45.unr = phi i64 [ poison, %bb.d ], [ %6, %select.unfold.i.i.i.i.prol ]
  %.lcssa44.unr = phi double [ poison, %bb.d ], [ %8, %select.unfold.i.i.i.i.prol ]
  %.023.i.i.i.i.unr = phi i64 [ %spec.select.i.i.i.i, %bb.d ], [ %3, %select.unfold.i.i.i.i.prol ]
  %.01422.i.i.i.i.unr = phi double [ 1.000000e+00, %bb.d ], [ f0x41DFFFFFFF800000, %select.unfold.i.i.i.i.prol ]
  %.01521.i.i.i.i.unr = phi double [ 0.000000e+00, %bb.d ], [ %8, %select.unfold.i.i.i.i.prol ]
  %.unr = phi i64 [ %.lcssa202123, %bb.d ], [ %6, %select.unfold.i.i.i.i.prol ]
  br i1 %4, label %.unr-lcssa, label %select.unfold.i.i.i.i

.unr-lcssa:                                       ; preds = %select.unfold.i.i.i.i, %select.unfold.i.i.i.i.prol.loopexit
  %.lcssa45 = phi i64 [ %.lcssa45.unr, %select.unfold.i.i.i.i.prol.loopexit ], [ %i.w, %select.unfold.i.i.i.i ] ; 2 uses
  %.lcssa44 = phi double [ %.lcssa44.unr, %select.unfold.i.i.i.i.prol.loopexit ], [ %i.z, %select.unfold.i.i.i.i ]
  %.lcssa = phi double [ f0x41DFFFFFFF800000, %select.unfold.i.i.i.i.prol.loopexit ], [ %i.ac, %select.unfold.i.i.i.i ]
  %i.s = fdiv double %.lcssa44, %.lcssa           ; 2 uses
  %i.t = fcmp ult double %i.s, 1.000000e+00
  br i1 %i.t, label %bb.f, label %bb.e, !prof !21

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i.prol.loopexit, %select.unfold.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %i.ad, %select.unfold.i.i.i.i ], [ %.023.i.i.i.i.unr, %select.unfold.i.i.i.i.prol.loopexit ]
  %.01422.i.i.i.i = phi double [ %i.ac, %select.unfold.i.i.i.i ], [ %.01422.i.i.i.i.unr, %select.unfold.i.i.i.i.prol.loopexit ] ; 2 uses
  %.01521.i.i.i.i = phi double [ %i.z, %select.unfold.i.i.i.i ], [ %.01521.i.i.i.i.unr, %select.unfold.i.i.i.i.prol.loopexit ]
  %i.u = phi i64 [ %i.w, %select.unfold.i.i.i.i ], [ %.unr, %select.unfold.i.i.i.i.prol.loopexit ]
  %9 = mul i64 %i.u, 16807
  %10 = urem i64 %9, 2147483647                   ; 2 uses
  %11 = add nsw i64 %10, -1
  %12 = uitofp i64 %11 to double
  %13 = tail call double @llvm.fmuladd.f64(double %12, double %.01422.i.i.i.i, double %.01521.i.i.i.i)
  %14 = fpext double %.01422.i.i.i.i to x86_fp80
  %15 = fmul x86_fp80 %14, f0x401DFFFFFFFC00000000
  %16 = fptrunc x86_fp80 %15 to double            ; 2 uses
  %i.v = mul nuw nsw i64 %10, 16807
  %i.w = urem i64 %i.v, 2147483647                ; 3 uses
  %i.x = add nsw i64 %i.w, -1
  %i.y = uitofp i64 %i.x to double
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %16, double %13) ; 2 uses
  %i.aa = fpext double %16 to x86_fp80
  %i.ab = fmul x86_fp80 %i.aa, f0x401DFFFFFFFC00000000
  %i.ac = fptrunc x86_fp80 %i.ab to double        ; 2 uses
  %i.ad = add i64 %.023.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i11.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i11.1, label %.unr-lcssa, label %select.unfold.i.i.i.i, !llvm.loop !1778

bb.e:                                             ; preds = %.unr-lcssa
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.unr-lcssa
  %.016.i.i.i.i = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.e ], [ %i.s, %.unr-lcssa ]
  %i.ae = fadd double %.016.i.i.i.i, 0.000000e+00
  store double %i.ae, ptr %.sroa.014.024, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.014.024, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.af, %.sink
  br i1 %.not, label %._crit_edge, label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %2, align 8, !tbaa !17    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.i:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %2, align 8, !tbaa !17    ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIdSaIdEED2Ev.exit13, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit13

_ZNSt6vectorIdSaIdEED2Ev.exit13:                  ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.am
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN6casadi6MatrixIdE4randERKSt4pairIxxE(ptr dead_on_unwind noalias writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !1779
  call void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %2, i64 noundef %i.a, i64 noundef %i.c), !noalias !1779
  invoke void @_ZN6casadi6MatrixIdE4randERKNS_8SparsityE(ptr dead_on_unwind writable sret(%"class.casadi::Matrix") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN6casadi6MatrixIdE4randExx.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit3.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #26
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit3.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !1779
  resume { ptr, i32 } %i.f

_ZN6casadi6MatrixIdE4randExx.exit:                ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !1779
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK6casadi6MatrixIdE9serializeERSo(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.casadi::SerializingStream", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZN6casadi17SerializingStreamC1ERSo(ptr noundef nonnull align 8 dereferenceable(73) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  invoke void @_ZNK6casadi6MatrixIdE9serializeERNS_17SerializingStreamE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(73) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1782 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPvSt4pairIKS0_xESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !1790 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #27
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIPvSt4pairIKS0_xESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1791

_ZNSt10_HashtableIPvSt4pairIKS0_xESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %i.d = load ptr, ptr %2, align 8, !tbaa !1792
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1793
  %i.g = shl i64 %i.f, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %2, align 8, !tbaa !1792   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6casadi17SerializingStreamD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIPvSt4pairIKS0_xESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !1793
  %i.l = shl i64 %i.k, 3
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZN6casadi17SerializingStreamD2Ev.exit

_ZN6casadi17SerializingStreamD2Ev.exit:           ; preds = %_ZNSt10_HashtableIPvSt4pairIKS0_xESaIS3_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.d:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi17SerializingStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.m
}

declare void @_ZN6casadi17SerializingStreamC1ERSo(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZNK6casadi6MatrixIdE9serializeERNS_17SerializingStreamE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 16, ptr %i.b, align 8, !tbaa !51
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %2, align 8, !tbaa !30
  %i.e = load i64, ptr %i.b, align 8, !tbaa !51   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) @.str.313, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !49
  %i.g = load ptr, ptr %2, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !1794, !range !1489, !noundef !206
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.a, label %.noexc11

bb.a:                                             ; preds = %.noexc
  invoke void @_ZN6casadi17SerializingStream4packERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc11 unwind label %bb.d

.noexc11:                                         ; preds = %bb.a, %.noexc
  invoke void @_ZN6casadi17SerializingStream4packERKNS_8SparsityE(ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_ZN6casadi17SerializingStream4packINS_8SparsityEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.d

_ZN6casadi17SerializingStream4packINS_8SparsityEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %.noexc11
  %i.m = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.c
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6casadi17SerializingStream4packINS_8SparsityEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.o = load i64, ptr %i.c, align 8, !tbaa !35
  %i.p = add i64 %i.o, 1
end_hunk_0
