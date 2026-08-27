Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/simdutf?download=true
inline.NumInlined: 2210
inline.NumDeleted: 453
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 169
begin_hunk_0_@_ZN7simdutf33maximal_binary_length_from_base64EPKDsm:bb.a
  %i.m = getelementptr i8, ptr %i.i, i64 -4
  %i.n = load i16, ptr %i.m, align 2
  %i.o = icmp eq i16 %i.n, 61
  %spec.select.i.i = select i1 %i.o, i64 -2, i64 -1
  br label %_ZNK7simdutf14implementation33maximal_binary_length_from_base64EPKDsm.exit

_ZNK7simdutf14implementation33maximal_binary_length_from_base64EPKDsm.exit: ; preds = %_ZN7simdutf26get_default_implementationEv.exit, %bb.g, %bb.h, %bb.i
  %.0.neg.i.i = phi i64 [ 0, %_ZN7simdutf26get_default_implementationEv.exit ], [ %spec.select.i.i, %bb.i ], [ -1, %bb.h ], [ 0, %bb.g ]
  %i.p = add i64 %.0.neg.i.i, %1                  ; 2 uses
  %i.q = and i64 %i.p, 3
  %i.r = lshr i64 %i.p, 2
  %i.s = mul nuw i64 %i.r, 3
  %i.t = tail call i64 @llvm.usub.sat.i64(i64 %i.q, i64 1)
  %.014.i.i = add nuw i64 %i.s, %i.t
  ret i64 %.014.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN7simdutf16base64_to_binaryEPKDsmPcNS_14base64_optionsENS_27last_chunk_handling_optionsE(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton) #47, !inline_history !13
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.21, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, i64 8), align 8
  store ptr @.str.22, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, i64 16), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, i64 24), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 704) (i8, ptr @_ZTVN7simdutf8internal49detect_best_supported_implementation_on_first_useE, i64 16), ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, align 16
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 32, ptr nonnull @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton) #47, !inline_history !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load atomic i8, ptr @_ZGVZN7simdutf25get_active_implementationEvE21active_implementation acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.e, label %_ZN7simdutf26get_default_implementationEv.exit, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE21active_implementation) #47, !inline_history !13
  %.not1.i.i = icmp eq i32 %i.g, 0
  br i1 %.not1.i.i, label %_ZN7simdutf26get_default_implementationEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, ptr @_ZZN7simdutf25get_active_implementationEvE21active_implementation, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE21active_implementation) #47, !inline_history !13
  br label %_ZN7simdutf26get_default_implementationEv.exit

_ZN7simdutf26get_default_implementationEv.exit:   ; preds = %bb.d, %bb.e, %bb.f
  %i.h = load atomic ptr, ptr @_ZZN7simdutf25get_active_implementationEvE21active_implementation seq_cst, align 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 664
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call { i32, i64 } %i.k(ptr noundef nonnull align 8 dereferenceable(28) %i.h, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) #47
  ret { i32, i64 } %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN7simdutf16base64_ignorableEcNS_14base64_optionsE(i8 noundef signext %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 8
  %.not.i = icmp eq i64 %i.a, 0
  %i.b = and i64 %1, 1
  %.not20.i = icmp eq i64 %i.b, 0
  %_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE._ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE.i = select i1 %.not20.i, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE
  %i.c = select i1 %.not.i, ptr %_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE._ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE.i, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE
  %i.d = and i64 %1, -2
  %or.cond.i = icmp eq i64 %i.d, 4
  %i.e = icmp eq i64 %1, 12
  %spec.select.i = or i1 %i.e, %or.cond.i
  %i.f = zext i8 %0 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = icmp ugt i8 %i.h, 63
  %i.j = icmp eq i8 %i.h, 64
  %.spec.select.i = or i1 %spec.select.i, %i.j
  %.0.i = and i1 %i.i, %.spec.select.i
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN7simdutf16base64_ignorableEDsNS_14base64_optionsE(i16 noundef zeroext %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 8
  %.not.i = icmp eq i64 %i.a, 0
  %i.b = and i64 %1, 1
  %.not20.i = icmp eq i64 %i.b, 0
  %_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE._ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE.i = select i1 %.not20.i, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE
  %i.c = select i1 %.not.i, ptr %_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE._ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE.i, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE
  %i.d = and i64 %1, -2
  %or.cond.i = icmp eq i64 %i.d, 4
  %i.e = icmp eq i64 %1, 12
  %spec.select.i = or i1 %i.e, %or.cond.i
  %i.f = and i16 %0, 255
  %i.g = zext nneg i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = icmp ult i16 %0, 256                     ; 2 uses
  %i.k = icmp ugt i8 %i.i, 63
  %not..i = xor i1 %i.j, true
  %or.cond4.i = select i1 %not..i, i1 true, i1 %i.k
  %i.l = icmp eq i8 %i.i, 64
  %or.cond7.i = select i1 %i.j, i1 %i.l, i1 false
  %.spec.select.i = or i1 %spec.select.i, %or.cond7.i
  %.0.i = select i1 %or.cond4.i, i1 %.spec.select.i, i1 false
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN7simdutf12base64_validEcNS_14base64_optionsE(i8 noundef signext %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 8
  %.not.i = icmp eq i64 %i.a, 0
  %i.b = and i64 %1, 1
  %.not8.i = icmp eq i64 %i.b, 0
  %_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE._ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE.i = select i1 %.not8.i, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE
  %i.c = select i1 %.not.i, ptr %_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE._ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE.i, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE
  %i.d = zext i8 %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp ult i8 %i.f, 64
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN7simdutf12base64_validEDsNS_14base64_optionsE(i16 noundef zeroext %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 8
  %.not.i = icmp eq i64 %i.a, 0
  %i.b = and i64 %1, 1
  %.not8.i = icmp eq i64 %i.b, 0
  %_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE._ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE.i = select i1 %.not8.i, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE
  %i.c = select i1 %.not.i, ptr %_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE._ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE.i, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE
  %i.d = and i16 %0, 255
  %i.e = zext nneg i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp ult i16 %0, 256
  %i.i = icmp ult i8 %i.g, 64
  %or.cond.i = select i1 %i.h, i1 %i.i, i1 false
  ret i1 %or.cond.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN7simdutf23base64_valid_or_paddingEcNS_14base64_optionsE(i8 noundef signext %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %0, 61
  br i1 %i.a, label %_ZN7simdutf6scalar12_GLOBAL__N_16base6420is_base64_or_paddingIcEEbT_NS_14base64_optionsE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 8
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = and i64 %1, 1
  %.not9.i = icmp eq i64 %i.c, 0
  %_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE._ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE.i = select i1 %.not9.i, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE
  %i.d = select i1 %.not.i, ptr %_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE._ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE.i, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE
  %i.e = zext i8 %0 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp ult i8 %i.g, 64
  br label %_ZN7simdutf6scalar12_GLOBAL__N_16base6420is_base64_or_paddingIcEEbT_NS_14base64_optionsE.exit

_ZN7simdutf6scalar12_GLOBAL__N_16base6420is_base64_or_paddingIcEEbT_NS_14base64_optionsE.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi i1 [ %i.h, %bb.b ], [ true, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN7simdutf23base64_valid_or_paddingEDsNS_14base64_optionsE(i16 noundef zeroext %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i16 %0, 61
  br i1 %i.a, label %_ZN7simdutf6scalar12_GLOBAL__N_16base6420is_base64_or_paddingIDsEEbT_NS_14base64_optionsE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 8
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = and i64 %1, 1
  %.not9.i = icmp eq i64 %i.c, 0
  %_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE._ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE.i = select i1 %.not9.i, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE
  %i.d = select i1 %.not.i, ptr %_ZN7simdutf12_GLOBAL__N_16tables6base6419to_base64_url_valueE._ZN7simdutf12_GLOBAL__N_16tables6base6415to_base64_valueE.i, ptr @_ZN7simdutf12_GLOBAL__N_16tables6base6430to_base64_default_or_url_valueE
  %i.e = and i16 %0, 255
  %i.f = zext nneg i16 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp ult i16 %0, 256
  %i.j = icmp ult i8 %i.h, 64
  %or.cond.i = select i1 %i.i, i1 %i.j, i1 false
  br label %_ZN7simdutf6scalar12_GLOBAL__N_16base6420is_base64_or_paddingIDsEEbT_NS_14base64_optionsE.exit

_ZN7simdutf6scalar12_GLOBAL__N_16base6420is_base64_or_paddingIDsEEbT_NS_14base64_optionsE.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi i1 [ %or.cond.i, %bb.b ], [ true, %bb.a ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN7simdutf23atomic_binary_to_base64EPKcmPcNS_14base64_optionsE(ptr nofree noundef captures(address) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %"struct.std::array", align 1       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %5 = ptrtoaddr ptr %0 to i64
  %6 = and i64 %5, 7                              ; 2 uses
  %.not.i = icmp eq i64 %6, 0
  %7 = sub nuw nsw i64 8, %6                      ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN7simdutf16binary_to_base64EPKcmPcNS_14base64_optionsE.exit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.cs, %_ZN7simdutf16binary_to_base64EPKcmPcNS_14base64_optionsE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN7simdutf16binary_to_base64EPKcmPcNS_14base64_optionsE.exit
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %_ZN7simdutf16binary_to_base64EPKcmPcNS_14base64_optionsE.exit ] ; 2 uses
  %.022 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cs, %_ZN7simdutf16binary_to_base64EPKcmPcNS_14base64_optionsE.exit ] ; 2 uses
  %.01421 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ct, %_ZN7simdutf16binary_to_base64EPKcmPcNS_14base64_optionsE.exit ] ; 3 uses
  %i.a = sub nuw i64 %1, %.01421
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.a, i64 3072) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.01421 ; 7 uses
  br i1 %.not.i, label %bb.b, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph
  %8 = mul i64 %indvar, -3072
  %9 = add i64 %1, %8
  %umin = call i64 @llvm.umin.i64(i64 %9, i64 %7)
  %i.c = add nsw i64 %umin, -1
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %7, i64 %.sroa.speculated) ; 5 uses
  %xtraiter = and i64 %.sroa.speculated.i, 3      ; 3 uses
  %i.d = icmp ult i64 %i.c, 3
  br i1 %i.d, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.sroa.speculated.i, 12
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.07.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.t, %.lr.ph.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.07.i.i
  %i.f = load atomic i8, ptr %i.e monotonic, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 %.07.i.i
  store i8 %i.f, ptr %i.g, align 1
  %i.h = or disjoint i64 %.07.i.i, 1              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  %i.j = load atomic i8, ptr %i.i monotonic, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 %i.h
  store i8 %i.j, ptr %i.k, align 1
  %i.l = or disjoint i64 %.07.i.i, 2              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.l
  %i.n = load atomic i8, ptr %i.m monotonic, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 %i.l
  store i8 %i.n, ptr %i.o, align 1
  %i.p = or disjoint i64 %.07.i.i, 3              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p
  %i.r = load atomic i8, ptr %i.q monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 %i.p
  store i8 %i.r, ptr %i.s, align 1
  %i.t = add nuw nsw i64 %.07.i.i, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZZN7simdutf6scalar18memcpy_atomic_readEPcPKcmENKUlS1_S3_mE_clES1_S3_m.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !59

_ZZN7simdutf6scalar18memcpy_atomic_readEPcPKcmENKUlS1_S3_mE_clES1_S3_m.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZZN7simdutf6scalar18memcpy_atomic_readEPcPKcmENKUlS1_S3_mE_clES1_S3_m.exit.i.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZZN7simdutf6scalar18memcpy_atomic_readEPcPKcmENKUlS1_S3_mE_clES1_S3_m.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.07.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.t, %_ZZN7simdutf6scalar18memcpy_atomic_readEPcPKcmENKUlS1_S3_mE_clES1_S3_m.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.x, %.lr.ph.i.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %.07.i.i.epil
  %i.v = load atomic i8, ptr %i.u monotonic, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 %.07.i.i.epil
  store i8 %i.v, ptr %i.w, align 1
  %i.x = add nuw nsw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZZN7simdutf6scalar18memcpy_atomic_readEPcPKcmENKUlS1_S3_mE_clES1_S3_m.exit.i.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !60

_ZZN7simdutf6scalar18memcpy_atomic_readEPcPKcmENKUlS1_S3_mE_clES1_S3_m.exit.i.loopexit: ; preds = %.lr.ph.i.i.epil, %_ZZN7simdutf6scalar18memcpy_atomic_readEPcPKcmENKUlS1_S3_mE_clES1_S3_m.exit.i.loopexit.unr-lcssa
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.speculated.i
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.speculated.i
  %i.aa = sub nsw i64 %.sroa.speculated, %.sroa.speculated.i
  br label %bb.b

bb.b:                                             ; preds = %_ZZN7simdutf6scalar18memcpy_atomic_readEPcPKcmENKUlS1_S3_mE_clES1_S3_m.exit.i.loopexit, %.lr.ph
  %.034.i = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.aa, %_ZZN7simdutf6scalar18memcpy_atomic_readEPcPKcmENKUlS1_S3_mE_clES1_S3_m.exit.i.loopexit ] ; 5 uses
  %.017.i = phi ptr [ %i.b, %.lr.ph ], [ %i.y, %_ZZN7simdutf6scalar18memcpy_atomic_readEPcPKcmENKUlS1_S3_mE_clES1_S3_m.exit.i.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %4, %.lr.ph ], [ %i.z, %_ZZN7simdutf6scalar18memcpy_atomic_readEPcPKcmENKUlS1_S3_mE_clES1_S3_m.exit.i.loopexit ] ; 3 uses
  %i.ab = icmp ugt i64 %.034.i, 7
  br i1 %i.ab, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.ac = add nsw i64 %.034.i, -8                 ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1
  %xtraiter39 = and i64 %i.ae, 7                  ; 2 uses
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.138.i.prol = phi ptr [ %i.ah, %.lr.ph.i.prol ], [ %.0.i, %.lr.ph.i.preheader ] ; 2 uses
  %.11837.i.prol = phi ptr [ %i.ag, %.lr.ph.i.prol ], [ %.017.i, %.lr.ph.i.preheader ] ; 2 uses
  %.13536.i.prol = phi i64 [ %i.ai, %.lr.ph.i.prol ], [ %.034.i, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.af = load atomic i64, ptr %.11837.i.prol monotonic, align 8
  store i64 %i.af, ptr %.138.i.prol, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.11837.i.prol, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.138.i.prol, i64 8 ; 3 uses
  %i.ai = add i64 %.13536.i.prol, -8              ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter39
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !61

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.138.i.unr = phi ptr [ %.0.i, %.lr.ph.i.preheader ], [ %i.ah, %.lr.ph.i.prol ]
  %.11837.i.unr = phi ptr [ %.017.i, %.lr.ph.i.preheader ], [ %i.ag, %.lr.ph.i.prol ]
  %.13536.i.unr = phi i64 [ %.034.i, %.lr.ph.i.preheader ], [ %i.ai, %.lr.ph.i.prol ]
  %.lcssa36.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.ag, %.lr.ph.i.prol ]
  %.lcssa35.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.ah, %.lr.ph.i.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.ai, %.lr.ph.i.prol ]
  %i.aj = icmp ult i64 %i.ac, 56
  br i1 %i.aj, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.138.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %.138.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.11837.i = phi ptr [ %i.bg, %.lr.ph.i ], [ %.11837.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.13536.i = phi i64 [ %i.bi, %.lr.ph.i ], [ %.13536.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.ak = load atomic i64, ptr %.11837.i monotonic, align 8
  store i64 %i.ak, ptr %.138.i, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.11837.i, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.138.i, i64 8
  %i.an = load atomic i64, ptr %i.al monotonic, align 8
  store i64 %i.an, ptr %i.am, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.11837.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.138.i, i64 16
  %i.aq = load atomic i64, ptr %i.ao monotonic, align 8
  store i64 %i.aq, ptr %i.ap, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.11837.i, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %.138.i, i64 24
  %i.at = load atomic i64, ptr %i.ar monotonic, align 8
  store i64 %i.at, ptr %i.as, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.11837.i, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.138.i, i64 32
  %i.aw = load atomic i64, ptr %i.au monotonic, align 8
  store i64 %i.aw, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.11837.i, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %.138.i, i64 40
  %i.az = load atomic i64, ptr %i.ax monotonic, align 8
  store i64 %i.az, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.11837.i, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %.138.i, i64 48
  %i.bc = load atomic i64, ptr %i.ba monotonic, align 8
  store i64 %i.bc, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.11837.i, i64 56
  %i.be = getelementptr inbounds nuw i8, ptr %.138.i, i64 56
  %i.bf = load atomic i64, ptr %i.bd monotonic, align 8
  store i64 %i.bf, ptr %i.be, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.11837.i, i64 64 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.138.i, i64 64 ; 2 uses
  %i.bi = add i64 %.13536.i, -64                  ; 3 uses
  %i.bj = icmp ugt i64 %i.bi, 7
  br i1 %i.bj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !62

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.135.lcssa.i = phi i64 [ %.034.i, %bb.b ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bi, %.lr.ph.i ] ; 4 uses
  %.118.lcssa.i = phi ptr [ %.017.i, %bb.b ], [ %.lcssa36.unr, %.lr.ph.i.prol.loopexit ], [ %i.bg, %.lr.ph.i ] ; 5 uses
  %.1.lcssa.i = phi ptr [ %.0.i, %bb.b ], [ %.lcssa35.unr, %.lr.ph.i.prol.loopexit ], [ %i.bh, %.lr.ph.i ] ; 5 uses
  %.not21.i = icmp eq i64 %.135.lcssa.i, 0
  br i1 %.not21.i, label %_ZN7simdutf6scalar18memcpy_atomic_readEPcPKcm.exit, label %.lr.ph.i23.i.preheader

.lr.ph.i23.i.preheader:                           ; preds = %._crit_edge.i
  %xtraiter41 = and i64 %.135.lcssa.i, 3          ; 3 uses
  %i.bk = icmp ult i64 %.135.lcssa.i, 4
  br i1 %i.bk, label %.lr.ph.i23.i.epil.preheader, label %.lr.ph.i23.i.preheader.new

.lr.ph.i23.i.preheader.new:                       ; preds = %.lr.ph.i23.i.preheader
  %unroll_iter45 = and i64 %.135.lcssa.i, -4
  br label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i, %.lr.ph.i23.i.preheader.new
  %.07.i24.i = phi i64 [ 0, %.lr.ph.i23.i.preheader.new ], [ %i.ca, %.lr.ph.i23.i ] ; 6 uses
  %niter46 = phi i64 [ 0, %.lr.ph.i23.i.preheader.new ], [ %niter46.next.3, %.lr.ph.i23.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.118.lcssa.i, i64 %.07.i24.i
  %i.bm = load atomic i8, ptr %i.bl monotonic, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %.07.i24.i
  store i8 %i.bm, ptr %i.bn, align 1
  %i.bo = or disjoint i64 %.07.i24.i, 1           ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.118.lcssa.i, i64 %i.bo
  %i.bq = load atomic i8, ptr %i.bp monotonic, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1
  %i.bs = or disjoint i64 %.07.i24.i, 2           ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.118.lcssa.i, i64 %i.bs
  %i.bu = load atomic i8, ptr %i.bt monotonic, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1
  %i.bw = or disjoint i64 %.07.i24.i, 3           ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.118.lcssa.i, i64 %i.bw
  %i.by = load atomic i8, ptr %i.bx monotonic, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1
  %i.ca = add nuw nsw i64 %.07.i24.i, 4           ; 2 uses
  %niter46.next.3 = add nuw i64 %niter46, 4       ; 2 uses
  %niter46.ncmp.3 = icmp eq i64 %niter46.next.3, %unroll_iter45
  br i1 %niter46.ncmp.3, label %_ZN7simdutf6scalar18memcpy_atomic_readEPcPKcm.exit.loopexit.unr-lcssa, label %.lr.ph.i23.i, !llvm.loop !59

_ZN7simdutf6scalar18memcpy_atomic_readEPcPKcm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i23.i
  %lcmp.mod43.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod43.not, label %_ZN7simdutf6scalar18memcpy_atomic_readEPcPKcm.exit, label %.lr.ph.i23.i.epil.preheader

.lr.ph.i23.i.epil.preheader:                      ; preds = %_ZN7simdutf6scalar18memcpy_atomic_readEPcPKcm.exit.loopexit.unr-lcssa, %.lr.ph.i23.i.preheader
  %.07.i24.i.epil.init = phi i64 [ 0, %.lr.ph.i23.i.preheader ], [ %i.ca, %_ZN7simdutf6scalar18memcpy_atomic_readEPcPKcm.exit.loopexit.unr-lcssa ]
  %lcmp.mod44 = icmp ne i64 %xtraiter41, 0
  call void @llvm.assume(i1 %lcmp.mod44)
  br label %.lr.ph.i23.i.epil

.lr.ph.i23.i.epil:                                ; preds = %.lr.ph.i23.i.epil, %.lr.ph.i23.i.epil.preheader
  %.07.i24.i.epil = phi i64 [ %i.ce, %.lr.ph.i23.i.epil ], [ %.07.i24.i.epil.init, %.lr.ph.i23.i.epil.preheader ] ; 3 uses
  %epil.iter42 = phi i64 [ %epil.iter42.next, %.lr.ph.i23.i.epil ], [ 0, %.lr.ph.i23.i.epil.preheader ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.118.lcssa.i, i64 %.07.i24.i.epil
  %i.cc = load atomic i8, ptr %i.cb monotonic, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.1.lcssa.i, i64 %.07.i24.i.epil
  store i8 %i.cc, ptr %i.cd, align 1
  %i.ce = add nuw nsw i64 %.07.i24.i.epil, 1
  %epil.iter42.next = add i64 %epil.iter42, 1     ; 2 uses
  %epil.iter42.cmp.not = icmp eq i64 %epil.iter42.next, %xtraiter41
  br i1 %epil.iter42.cmp.not, label %_ZN7simdutf6scalar18memcpy_atomic_readEPcPKcm.exit, label %.lr.ph.i23.i.epil, !llvm.loop !63

_ZN7simdutf6scalar18memcpy_atomic_readEPcPKcm.exit: ; preds = %_ZN7simdutf6scalar18memcpy_atomic_readEPcPKcm.exit.loopexit.unr-lcssa, %.lr.ph.i23.i.epil, %._crit_edge.i
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %.022
  %i.cg = load atomic i8, ptr @_ZGVZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton acquire, align 8
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %bb.c, label %bb.e, !prof !8

bb.c:                                             ; preds = %_ZN7simdutf6scalar18memcpy_atomic_readEPcPKcm.exit
  %i.ci = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton) #47, !inline_history !13
  %.not.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @.str.22, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, i64 16), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, i64 24), align 8
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 704) (i8, ptr @_ZTVN7simdutf8internal49detect_best_supported_implementation_on_first_useE, i64 16), ptr @.str.21>, ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, align 16
  %i.cj = call ptr @llvm.invariant.start.p0(i64 32, ptr nonnull @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton) #47, !inline_history !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZN7simdutf6scalar18memcpy_atomic_readEPcPKcm.exit
  %i.ck = load atomic i8, ptr @_ZGVZN7simdutf25get_active_implementationEvE21active_implementation acquire, align 8
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.f, label %_ZN7simdutf16binary_to_base64EPKcmPcNS_14base64_optionsE.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.cm = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE21active_implementation) #47, !inline_history !13
  %.not1.i.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not1.i.i.i, label %_ZN7simdutf16binary_to_base64EPKcmPcNS_14base64_optionsE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, ptr @_ZZN7simdutf25get_active_implementationEvE21active_implementation, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE21active_implementation) #47, !inline_history !13
  br label %_ZN7simdutf16binary_to_base64EPKcmPcNS_14base64_optionsE.exit

_ZN7simdutf16binary_to_base64EPKcmPcNS_14base64_optionsE.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.cn = load atomic ptr, ptr @_ZZN7simdutf25get_active_implementationEvE21active_implementation seq_cst, align 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 680
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call noundef i64 %i.cq(ptr noundef nonnull align 8 dereferenceable(28) %i.cn, ptr noundef nonnull %4, i64 noundef %.sroa.speculated, ptr noundef %i.cf, i64 noundef %3) #47, !inline_history !64
  %i.cs = add i64 %i.cr, %.022                    ; 2 uses
  %i.ct = add i64 %.01421, 3072                   ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cu, label %.lr.ph, label %._crit_edge, !llvm.loop !65
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN7simdutf16binary_to_base64EPKcmPcNS_14base64_optionsE(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton) #47, !inline_history !13
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.21, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, i64 8), align 8
  store ptr @.str.22, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, i64 16), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, i64 24), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 704) (i8, ptr @_ZTVN7simdutf8internal49detect_best_supported_implementation_on_first_useE, i64 16), ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, align 16
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 32, ptr nonnull @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton) #47, !inline_history !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load atomic i8, ptr @_ZGVZN7simdutf25get_active_implementationEvE21active_implementation acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.e, label %_ZN7simdutf26get_default_implementationEv.exit, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE21active_implementation) #47, !inline_history !13
  %.not1.i.i = icmp eq i32 %i.g, 0
  br i1 %.not1.i.i, label %_ZN7simdutf26get_default_implementationEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, ptr @_ZZN7simdutf25get_active_implementationEvE21active_implementation, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE21active_implementation) #47, !inline_history !13
  br label %_ZN7simdutf26get_default_implementationEv.exit

_ZN7simdutf26get_default_implementationEv.exit:   ; preds = %bb.d, %bb.e, %bb.f
  %i.h = load atomic ptr, ptr @_ZZN7simdutf25get_active_implementationEvE21active_implementation seq_cst, align 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 680
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(28) %i.h, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #47
  ret i64 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN7simdutf27convert_latin1_to_utf8_safeEPKcmPcm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i64 %3, 1
  %.sroa.speculated41 = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %1) ; 2 uses
  %i.b = icmp samesign ult i64 %.sroa.speculated41, 17
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.sroa.speculated46 = phi i64 [ %.sroa.speculated, %bb.g ], [ %.sroa.speculated41, %bb.a ] ; 3 uses
  %.045 = phi ptr [ %i.q, %bb.g ], [ %0, %bb.a ]  ; 2 uses
  %.02044 = phi i64 [ %i.p, %bb.g ], [ %3, %bb.a ]
  %.02243 = phi ptr [ %i.o, %bb.g ], [ %2, %bb.a ] ; 2 uses
  %.03042 = phi i64 [ %i.r, %bb.g ], [ %1, %bb.a ]
  %i.c = load atomic i8, ptr @_ZGVZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d, !prof !8

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton) #47, !inline_history !13
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.22, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, i64 16), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, i64 24), align 8
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 704) (i8, ptr @_ZTVN7simdutf8internal49detect_best_supported_implementation_on_first_useE, i64 16), ptr @.str.21>, ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, align 16
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 32, ptr nonnull @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton) #47, !inline_history !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %i.g = load atomic i8, ptr @_ZGVZN7simdutf25get_active_implementationEvE21active_implementation acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.g, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE21active_implementation) #47, !inline_history !13
  %.not1.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not1.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, ptr @_ZZN7simdutf25get_active_implementationEvE21active_implementation, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE21active_implementation) #47, !inline_history !13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.j = load atomic ptr, ptr @_ZZN7simdutf25get_active_implementationEvE21active_implementation seq_cst, align 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(28) %i.j, ptr noundef %.045, i64 noundef %.sroa.speculated46, ptr noundef %.02243) #47, !inline_history !66 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02243, i64 %i.n ; 2 uses
  %i.p = sub i64 %.02044, %i.n                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.045, i64 %.sroa.speculated46 ; 2 uses
  %i.r = sub i64 %.03042, %.sroa.speculated46     ; 3 uses
  %i.s = lshr i64 %i.p, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.r) ; 2 uses
  %i.t = icmp samesign ult i64 %.sroa.speculated, 17
  br i1 %i.t, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.030.lcssa = phi i64 [ %1, %bb.a ], [ %i.r, %bb.g ] ; 3 uses
  %.022.lcssa = phi ptr [ %2, %bb.a ], [ %i.o, %bb.g ] ; 4 uses
  %.020.lcssa = phi i64 [ %3, %bb.a ], [ %i.p, %bb.g ] ; 4 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.q, %bb.g ] ; 2 uses
  %i.u = icmp ne i64 %.030.lcssa, 0
  %i.v = icmp ne i64 %.020.lcssa, 0
  %i.w = and i1 %i.u, %i.v
  br i1 %i.w, label %.lr.ph.i, label %_ZN7simdutf6scalar12_GLOBAL__N_114latin1_to_utf812convert_safeEPKcmPcm.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.p
  %.04364.i = phi i64 [ %.4.i, %bb.p ], [ 0, %._crit_edge ] ; 8 uses
  %.04463.i = phi i64 [ %.246.i, %bb.p ], [ 0, %._crit_edge ] ; 3 uses
  %.04762.i = phi i64 [ %.451.i, %bb.p ], [ 0, %._crit_edge ] ; 6 uses
  %.not.i = icmp ult i64 %.04762.i, %.04463.i
  br i1 %.not.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.x = add i64 %.04762.i, 16                    ; 3 uses
  %.not56.i = icmp ugt i64 %i.x, %.030.lcssa
  br i1 %.not56.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add i64 %.04364.i, 16                    ; 2 uses
  %.not57.i = icmp ugt i64 %i.y, %.020.lcssa
  br i1 %.not57.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.04762.i ; 3 uses
  %.0.copyload7.i = load i64, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.0.copyload.i = load i64, ptr %i.aa, align 1
  %i.ab = or i64 %.0.copyload.i, %.0.copyload7.i
  %i.ac = and i64 %i.ab, -9187201950435737472
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.022.lcssa, i64 %.04364.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ae, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.z, i64 16, i1 false)
  br label %bb.p

bb.l:                                             ; preds = %bb.i, %bb.h, %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.04762.i
  %i.ag = load i8, ptr %i.af, align 1             ; 4 uses
  %i.ah = icmp sgt i8 %i.ag, -1
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ai = add i64 %.04364.i, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.022.lcssa, i64 %.04364.i
  store i8 %i.ag, ptr %i.aj, align 1
  br label %.thread.i

bb.n:                                             ; preds = %bb.l
  %i.ak = add i64 %.04364.i, 2                    ; 2 uses
  %.not58.i = icmp ugt i64 %i.ak, %.020.lcssa
  br i1 %.not58.i, label %_ZN7simdutf6scalar12_GLOBAL__N_114latin1_to_utf812convert_safeEPKcmPcm.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = lshr i8 %i.ag, 6
  %i.am = or disjoint i8 %i.al, -64
  %i.an = getelementptr inbounds nuw i8, ptr %.022.lcssa, i64 %.04364.i ; 2 uses
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = and i8 %i.ag, -65
  %i.ap = getelementptr i8, ptr %i.an, i64 1
  store i8 %i.ao, ptr %i.ap, align 1
  br label %.thread.i

.thread.i:                                        ; preds = %bb.o, %bb.m
  %.2.i = phi i64 [ %i.ai, %bb.m ], [ %i.ak, %bb.o ]
  %.249.i = add i64 %.04762.i, 1
  br label %bb.p

bb.p:                                             ; preds = %.thread.i, %bb.k, %bb.j
  %.451.i = phi i64 [ %.249.i, %.thread.i ], [ %i.x, %bb.k ], [ %.04762.i, %bb.j ] ; 2 uses
  %.246.i = phi i64 [ %.04463.i, %.thread.i ], [ %.04463.i, %bb.k ], [ %i.x, %bb.j ]
  %.4.i = phi i64 [ %.2.i, %.thread.i ], [ %i.y, %bb.k ], [ %.04364.i, %bb.j ] ; 3 uses
  %i.aq = icmp ult i64 %.451.i, %.030.lcssa
  %i.ar = icmp ult i64 %.4.i, %.020.lcssa
  %i.as = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %i.as, label %.lr.ph.i, label %_ZN7simdutf6scalar12_GLOBAL__N_114latin1_to_utf812convert_safeEPKcmPcm.exit, !llvm.loop !67

_ZN7simdutf6scalar12_GLOBAL__N_114latin1_to_utf812convert_safeEPKcmPcm.exit: ; preds = %bb.n, %bb.p, %._crit_edge
  %.043.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %.4.i, %bb.p ], [ %.04364.i, %bb.n ]
  %i.at = getelementptr inbounds nuw i8, ptr %.022.lcssa, i64 %.043.lcssa.i
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %2 to i64
  %i.aw = sub i64 %i.au, %i.av
  ret i64 %i.aw
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN7simdutf21base64_to_binary_safeEPKcmPcRmNS_14base64_optionsENS_27last_chunk_handling_optionsEb(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call { i32, i64 } @_ZN7simdutf26base64_to_binary_safe_implIcEENS_6resultEPKT_mPcRmNS_14base64_optionsENS_27last_chunk_handling_optionsEb(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6) #47
  ret { i32, i64 } %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN7simdutf26base64_to_binary_safe_implIcEENS_6resultEPKT_mPcRmNS_14base64_optionsENS_27last_chunk_handling_optionsEb(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #1 comdat {
bb.a:
  %7 = alloca %"struct.simdutf::scalar::(anonymous namespace)::base64::reduced_input", align 8 ; 7 uses
  %8 = alloca %"struct.simdutf::full_result", align 8 ; 8 uses
  %9 = alloca %"struct.simdutf::full_result", align 8 ; 9 uses
  %i.a = load i64, ptr %3, align 8
  %.fr = freeze i64 %i.a                          ; 3 uses
  %i.b = urem i64 %.fr, 3
  %i.c = sub nuw i64 %.fr, %i.b
  %i.d = tail call noundef i64 @_ZN7simdutf25base64_length_from_binaryEmNS_14base64_optionsE(i64 noundef %i.c, i64 noundef %4) #47 ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %1)
  %.not79 = icmp ugt i64 %1, %i.d                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %i.e = load atomic i8, ptr @_ZGVZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton) #47, !inline_history !13
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.21, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, i64 8), align 8
  store ptr @.str.22, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, i64 16), align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, i64 24), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 704) (i8, ptr @_ZTVN7simdutf8internal49detect_best_supported_implementation_on_first_useE, i64 16), ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, align 16
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 32, ptr nonnull @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton) #47, !inline_history !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = load atomic i8, ptr @_ZGVZN7simdutf25get_active_implementationEvE21active_implementation acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %_ZN7simdutf26get_default_implementationEv.exit, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE21active_implementation) #47, !inline_history !13
  %.not1.i.i = icmp eq i32 %i.k, 0
  br i1 %.not1.i.i, label %_ZN7simdutf26get_default_implementationEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr @_ZZN7simdutf25get_active_implementationEvE59detect_best_supported_implementation_on_first_use_singleton, ptr @_ZZN7simdutf25get_active_implementationEvE21active_implementation, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7simdutf25get_active_implementationEvE21active_implementation) #47, !inline_history !13
  br label %_ZN7simdutf26get_default_implementationEv.exit

_ZN7simdutf26get_default_implementationEv.exit:   ; preds = %bb.d, %bb.e, %bb.f
  %i.l = load atomic ptr, ptr @_ZZN7simdutf25get_active_implementationEvE21active_implementation seq_cst, align 8 ; 2 uses
  %i.m = select i1 %.not79, i64 3, i64 %5
  %i.n = load ptr, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 656
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"struct.simdutf::full_result") align 8 %9, ptr noundef nonnull align 8 dereferenceable(28) %i.l, ptr noundef %0, i64 noundef %.sroa.speculated, ptr noundef %2, i64 noundef %4, i64 noundef %i.m) #47
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8              ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8              ; 5 uses
  %i.u = sub i64 %1, %i.r
  %i.v = sub i64 %.fr, %i.t
  %i.w = load i32, ptr %9, align 8                ; 3 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN7simdutf26get_default_implementationEv.exit
  %i.x = icmp eq i32 %i.w, 7
  %or.cond = and i1 %6, %i.x
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = call { i32, i64 } @_ZN7simdutf31slow_base64_to_binary_safe_implIcEENS_6resultEPKT_mPcRmNS_14base64_optionsENS_27last_chunk_handling_optionsE(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %4, i64 noundef %5) #47
  br label %bb.y

bb.i:                                             ; preds = %bb.g
  store i64 %i.t, ptr %3, align 8
  %i.z = insertvalue { i32, i64 } poison, i32 %i.w, 0
  %i.aa = insertvalue { i32, i64 } %i.z, i64 %i.r, 1
  br label %bb.y

bb.j:                                             ; preds = %_ZN7simdutf26get_default_implementationEv.exit
  br i1 %.not79, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %i.t, ptr %3, align 8
  %i.ab = insertvalue { i32, i64 } { i32 0, i64 poison }, i64 %i.r, 1
  br label %bb.y

bb.l:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.r ; 2 uses
  %i.ad = and i64 %4, -2
  %or.cond.i = icmp eq i64 %i.ad, 4
  %i.ae = icmp eq i64 %4, 12
  %spec.select.i = or i1 %i.ae, %or.cond.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47, !noalias !68
  call fastcc void @_ZN7simdutf6scalar12_GLOBAL__N_16base648find_endIcEENS2_13reduced_inputEPKT_mNS_14base64_optionsE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef %i.ac, i64 noundef %i.u, i64 noundef %4), !noalias !68
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
end_hunk_0
begin_hunk_1_@_ZNK7simdutf7icelake14implementation22utf16_length_from_utf8EPKcm:bb.a
  %.076 = phi i64 [ %i.a, %bb.c ], [ 0, %bb.a ]
  %.03375 = phi i64 [ %.1, %bb.c ], [ 0, %bb.a ]
  %.03574 = phi <8 x i64> [ %.136, %bb.c ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.b = phi <64 x i8> [ %i.n, %bb.c ], [ zeroinitializer, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.076
  %i.d = load <16 x i32>, ptr %i.c, align 1
  %i.e = lshr <16 x i32> %i.d, splat (i32 4)
  %i.f = bitcast <16 x i32> %i.e to <64 x i8>
  %i.g = and <64 x i8> %i.f, splat (i8 15)
  %i.h = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 1, i8 2, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 1, i8 2, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 1, i8 2, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 1, i8 1, i8 2>, <64 x i8> %i.g)
  %i.i = add <64 x i8> %i.h, %i.b                 ; 2 uses
  %i.j = add i64 %.03375, 1                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 127
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = tail call noundef <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.i, <64 x i8> zeroinitializer)
  %i.m = add <8 x i64> %i.l, %.03574
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.n = phi <64 x i8> [ zeroinitializer, %bb.b ], [ %i.i, %.lr.ph ] ; 2 uses
  %.136 = phi <8 x i64> [ %i.m, %bb.b ], [ %.03574, %.lr.ph ] ; 3 uses
  %.1 = phi i64 [ 0, %bb.b ], [ %i.j, %.lr.ph ]   ; 2 uses
  %i.o = add i64 %i.a, 64                         ; 2 uses
  %.not = icmp ugt i64 %i.o, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !375

._crit_edge:                                      ; preds = %bb.c
  %.not42 = icmp eq i64 %i.a, 0
  br i1 %.not42, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.p = icmp eq i64 %.1, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call noundef <8 x i64> @llvm.x86.avx512.psad.bw.512(<64 x i8> %i.n, <64 x i8> zeroinitializer)
  %i.r = add <8 x i64> %i.q, %.136
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2 = phi <8 x i64> [ %i.r, %bb.e ], [ %.136, %bb.d ] ; 5 uses
  %i.s = shufflevector <8 x i64> %.2, <8 x i64> poison, <2 x i32> <i32 poison, i32 1>
  %i.t = shufflevector <8 x i64> %.2, <8 x i64> poison, <2 x i32> <i32 poison, i32 3>
  %i.u = shufflevector <8 x i64> %.2, <8 x i64> poison, <2 x i32> <i32 poison, i32 5>
  %i.v = shufflevector <8 x i64> %.2, <8 x i64> poison, <2 x i32> <i32 poison, i32 7>
  %i.w = add <2 x i64> %i.s, %i.t
  %i.x = add <2 x i64> %i.w, %i.v
  %i.y = add <2 x i64> %i.x, %i.u
  %i.z = shufflevector <8 x i64> %.2, <8 x i64> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aa = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.z)
  %i.ab = extractelement <2 x i64> %i.y, i64 1
  %i.ac = add i64 %i.aa, %i.ab
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.f, %._crit_edge
  %.0.lcssa89 = phi i64 [ %i.a, %bb.f ], [ 0, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %.034 = phi i64 [ %i.ac, %bb.f ], [ 0, %._crit_edge ], [ 0, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa89 ; 3 uses
  %i.ae = sub i64 %2, %.0.lcssa89                 ; 5 uses
  %.not.i = icmp eq i64 %2, %.0.lcssa89
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge.thread
  %min.iters.check = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check92 = icmp ult i64 %i.ae, 32
  br i1 %min.iters.check92, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %2, 31                          ; 3 uses
  %n.vec = sub nuw i64 %i.ae, %i.af               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi93 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi94 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi95 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %index ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %wide.load = load <8 x i8>, ptr %i.ag, align 1  ; 2 uses
  %wide.load96 = load <8 x i8>, ptr %i.ah, align 1 ; 2 uses
  %wide.load97 = load <8 x i8>, ptr %i.ai, align 1 ; 2 uses
  %wide.load98 = load <8 x i8>, ptr %i.aj, align 1 ; 2 uses
  %i.ak = icmp sgt <8 x i8> %wide.load, splat (i8 -65)
  %i.al = icmp sgt <8 x i8> %wide.load96, splat (i8 -65)
  %i.am = icmp sgt <8 x i8> %wide.load97, splat (i8 -65)
  %i.an = icmp sgt <8 x i8> %wide.load98, splat (i8 -65)
  %i.ao = zext <8 x i1> %i.ak to <8 x i64>
  %i.ap = zext <8 x i1> %i.al to <8 x i64>
  %i.aq = zext <8 x i1> %i.am to <8 x i64>
  %i.ar = zext <8 x i1> %i.an to <8 x i64>
  %i.as = add <8 x i64> %vec.phi, %i.ao
  %i.at = add <8 x i64> %vec.phi93, %i.ap
  %i.au = add <8 x i64> %vec.phi94, %i.aq
  %i.av = add <8 x i64> %vec.phi95, %i.ar
  %i.aw = icmp ugt <8 x i8> %wide.load, splat (i8 -17)
  %i.ax = icmp ugt <8 x i8> %wide.load96, splat (i8 -17)
  %i.ay = icmp ugt <8 x i8> %wide.load97, splat (i8 -17)
  %i.az = icmp ugt <8 x i8> %wide.load98, splat (i8 -17)
  %i.ba = zext <8 x i1> %i.aw to <8 x i64>
  %i.bb = zext <8 x i1> %i.ax to <8 x i64>
  %i.bc = zext <8 x i1> %i.ay to <8 x i64>
  %i.bd = zext <8 x i1> %i.az to <8 x i64>
  %i.be = add <8 x i64> %i.as, %i.ba              ; 2 uses
  %i.bf = add <8 x i64> %i.at, %i.bb              ; 2 uses
  %i.bg = add <8 x i64> %i.au, %i.bc              ; 2 uses
  %i.bh = add <8 x i64> %i.av, %i.bd              ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i64> %i.bf, %i.be
  %bin.rdx99 = add <8 x i64> %i.bg, %bin.rdx
  %bin.rdx100 = add <8 x i64> %i.bh, %bin.rdx99
  %i.bj = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx100) ; 3 uses
  %cmp.n = icmp eq i64 %i.af, 0
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.af, 8
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !337

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.bj, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bk = and i64 %2, 7                           ; 2 uses
  %n.vec101 = sub i64 %i.ae, %i.bk                ; 2 uses
  %i.bl = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi103 = phi <8 x i64> [ %i.bl, %vec.epilog.ph ], [ %i.bs, %vec.epilog.vector.body ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 %index102
  %wide.load104 = load <8 x i8>, ptr %i.bm, align 1 ; 2 uses
  %i.bn = icmp sgt <8 x i8> %wide.load104, splat (i8 -65)
  %i.bo = zext <8 x i1> %i.bn to <8 x i64>
  %i.bp = add <8 x i64> %vec.phi103, %i.bo
  %i.bq = icmp ugt <8 x i8> %wide.load104, splat (i8 -17)
  %i.br = zext <8 x i1> %i.bq to <8 x i64>
  %i.bs = add <8 x i64> %i.bp, %i.br              ; 2 uses
  %index.next105 = add nuw i64 %index102, 8       ; 2 uses
  %i.bt = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.bt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !377

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bu = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.bs) ; 2 uses
  %cmp.n106 = icmp eq i64 %i.bk, 0
  br i1 %cmp.n106, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec101, %vec.epilog.middle.block ]
  %.01011.i.ph = phi i64 [ 0, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.012.i = phi i64 [ %i.cb, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01011.i = phi i64 [ %.2.i, %.lr.ph.i ], [ %.01011.i.ph, %.lr.ph.i.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.012.i
  %i.bw = load i8, ptr %i.bv, align 1             ; 2 uses
  %i.bx = icmp sgt i8 %i.bw, -65
  %i.by = zext i1 %i.bx to i64
  %spec.select.i = add i64 %.01011.i, %i.by
  %i.bz = icmp ugt i8 %i.bw, -17
  %i.ca = zext i1 %i.bz to i64
  %.2.i = add i64 %spec.select.i, %i.ca           ; 2 uses
  %i.cb = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cb, %i.ae
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %.lr.ph.i, !llvm.loop !378

_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.thread
  %.010.lcssa.i = phi i64 [ 0, %._crit_edge.thread ], [ %i.bu, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %.2.i, %.lr.ph.i ]
  %i.cc = add i64 %.010.lcssa.i, %.034
  ret i64 %i.cc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf7icelake14implementation22utf8_length_from_utf32EPKDim(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = lshr i64 %2, 6                           ; 2 uses
  %.not.i512 = icmp eq i64 %i.a, 0
  br i1 %.not.i512, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.039.i515 = phi i64 [ %i.c, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.040.i514 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  %.041.i513 = phi ptr [ %scevgep, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.b = tail call noundef range(i64 0, 1431655766) i64 @llvm.umin.i64(i64 %.039.i515, i64 357913941) ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = sub i64 %.039.i515, %i.b                 ; 2 uses
  %i.d = shl nuw nsw i64 %i.b, 8
  %scevgep = getelementptr i8, ptr %.041.i513, i64 %i.d ; 2 uses
  %i.e = bitcast <16 x i32> %i.bc to <8 x i64>
  %i.f = bitcast <16 x i32> %i.bc to <8 x i64>
  %i.g = and <8 x i64> %i.f, splat (i64 4294967295)
  %i.h = lshr <8 x i64> %i.e, splat (i64 32)
  %i.i = add nuw nsw <8 x i64> %i.g, %i.h
  %i.j = tail call noundef i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.i)
  %i.k = add i64 %i.j, %.040.i514                 ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !379

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.038.i511 = phi i64 [ 0, %.lr.ph ], [ %i.be, %bb.c ]
  %.142.i510 = phi ptr [ %.041.i513, %.lr.ph ], [ %i.bd, %bb.c ] ; 5 uses
  %i.l = phi <16 x i32> [ zeroinitializer, %.lr.ph ], [ %i.bc, %bb.c ]
  %i.m = load <16 x i32>, ptr %.142.i510, align 1 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.142.i510, i64 64
  %i.o = load <16 x i32>, ptr %i.n, align 1       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.142.i510, i64 128
  %i.q = load <16 x i32>, ptr %i.p, align 1       ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.142.i510, i64 192
  %i.s = load <16 x i32>, ptr %i.r, align 1       ; 3 uses
  %i.t = icmp ugt <16 x i32> %i.m, splat (i32 127)
  %i.u = zext <16 x i1> %i.t to <16 x i32>
  %i.v = add <16 x i32> %i.l, %i.u
  %i.w = icmp ugt <16 x i32> %i.o, splat (i32 127)
  %i.x = zext <16 x i1> %i.w to <16 x i32>
  %i.y = icmp ugt <16 x i32> %i.q, splat (i32 127)
  %i.z = zext <16 x i1> %i.y to <16 x i32>
  %i.aa = icmp ugt <16 x i32> %i.s, splat (i32 127)
  %i.ab = zext <16 x i1> %i.aa to <16 x i32>
  %i.ac = icmp ugt <16 x i32> %i.m, splat (i32 2047)
  %i.ad = zext <16 x i1> %i.ac to <16 x i32>
  %i.ae = icmp ugt <16 x i32> %i.o, splat (i32 2047)
  %i.af = zext <16 x i1> %i.ae to <16 x i32>
  %i.ag = icmp ugt <16 x i32> %i.q, splat (i32 2047)
  %i.ah = zext <16 x i1> %i.ag to <16 x i32>
  %i.ai = icmp ugt <16 x i32> %i.s, splat (i32 2047)
  %i.aj = zext <16 x i1> %i.ai to <16 x i32>
  %i.ak = icmp ugt <16 x i32> %i.m, splat (i32 65535)
  %i.al = zext <16 x i1> %i.ak to <16 x i32>
  %i.am = icmp ugt <16 x i32> %i.o, splat (i32 65535)
  %i.an = zext <16 x i1> %i.am to <16 x i32>
  %i.ao = icmp ugt <16 x i32> %i.q, splat (i32 65535)
  %i.ap = zext <16 x i1> %i.ao to <16 x i32>
  %i.aq = icmp ugt <16 x i32> %i.s, splat (i32 65535)
  %i.ar = zext <16 x i1> %i.aq to <16 x i32>
  %i.as = add <16 x i32> %i.v, %i.ad
  %i.at = add <16 x i32> %i.as, %i.al
  %i.au = add <16 x i32> %i.at, %i.x
  %i.av = add <16 x i32> %i.au, %i.af
  %i.aw = add <16 x i32> %i.av, %i.an
  %i.ax = add <16 x i32> %i.aw, %i.z
  %i.ay = add <16 x i32> %i.ax, %i.ah
  %i.az = add <16 x i32> %i.ay, %i.ap
  %i.ba = add <16 x i32> %i.az, %i.ab
  %i.bb = add <16 x i32> %i.ba, %i.aj
  %i.bc = add <16 x i32> %i.bb, %i.ar             ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.142.i510, i64 256
  %i.be = add nuw nsw i64 %.038.i511, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %i.b
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !380

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.041.i.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep, %bb.b ] ; 2 uses
  %.040.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %bb.b ] ; 2 uses
  %i.bf = lshr i64 %2, 4
  %i.bg = and i64 %i.bf, 3                        ; 2 uses
  %.not45.i520 = icmp eq i64 %i.bg, 0
  br i1 %.not45.i520, label %_ZN7simdutf7icelake12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph525

.lr.ph525:                                        ; preds = %._crit_edge, %bb.d
  %.037.i523 = phi i64 [ %i.bt, %bb.d ], [ %i.bg, %._crit_edge ] ; 3 uses
  %.1.i522 = phi i64 [ %i.cb, %bb.d ], [ %.040.i.lcssa, %._crit_edge ]
  %.243.i521 = phi ptr [ %scevgep535, %bb.d ], [ %.041.i.lcssa, %._crit_edge ] ; 3 uses
  %i.bh = tail call noundef range(i64 0, 1431655766) i64 @llvm.umin.i64(i64 %.037.i523, i64 1431655765) ; 5 uses
  %xtraiter = and i64 %i.bh, 1
  %i.bi = icmp eq i64 %.037.i523, 1
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph525.new

.lr.ph525.new:                                    ; preds = %.lr.ph525
  %unroll_iter = and i64 %i.bh, 2147483646
  br label %bb.e

.unr-lcssa:                                       ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.d, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph525
  %.3.i518.epil.init = phi ptr [ %.243.i521, %.lr.ph525 ], [ %i.cy, %.unr-lcssa ]
  %.epil.init = phi <16 x i32> [ zeroinitializer, %.lr.ph525 ], [ %i.cx, %.unr-lcssa ]
  %lcmp.mod558 = trunc i64 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod558)
  %i.bj = load <16 x i32>, ptr %.3.i518.epil.init, align 1 ; 3 uses
  %i.bk = icmp ugt <16 x i32> %i.bj, splat (i32 127)
  %i.bl = zext <16 x i1> %i.bk to <16 x i32>
  %i.bm = add <16 x i32> %.epil.init, %i.bl
  %i.bn = icmp ugt <16 x i32> %i.bj, splat (i32 2047)
  %i.bo = zext <16 x i1> %i.bn to <16 x i32>
  %i.bp = add <16 x i32> %i.bm, %i.bo
  %i.bq = icmp ugt <16 x i32> %i.bj, splat (i32 65535)
  %i.br = zext <16 x i1> %i.bq to <16 x i32>
  %i.bs = add <16 x i32> %i.bp, %i.br
  br label %bb.d

bb.d:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa553 = phi <16 x i32> [ %i.cx, %.unr-lcssa ], [ %i.bs, %.epil.preheader ] ; 2 uses
  %i.bt = sub i64 %.037.i523, %i.bh               ; 2 uses
  %i.bu = shl nuw nsw i64 %i.bh, 6
  %scevgep535 = getelementptr i8, ptr %.243.i521, i64 %i.bu ; 2 uses
  %i.bv = bitcast <16 x i32> %.lcssa553 to <8 x i64>
  %i.bw = bitcast <16 x i32> %.lcssa553 to <8 x i64>
  %i.bx = and <8 x i64> %i.bw, splat (i64 4294967295)
  %i.by = lshr <8 x i64> %i.bv, splat (i64 32)
  %i.bz = add nuw nsw <8 x i64> %i.bx, %i.by
  %i.ca = tail call noundef i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.bz)
  %i.cb = add i64 %i.ca, %.1.i522                 ; 2 uses
  %.not45.i = icmp eq i64 %i.bt, 0
  br i1 %.not45.i, label %_ZN7simdutf7icelake12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph525, !llvm.loop !381

bb.e:                                             ; preds = %bb.e, %.lr.ph525.new
  %.3.i518 = phi ptr [ %.243.i521, %.lr.ph525.new ], [ %i.cy, %bb.e ] ; 3 uses
  %i.cc = phi <16 x i32> [ zeroinitializer, %.lr.ph525.new ], [ %i.cx, %bb.e ]
  %niter = phi i64 [ 0, %.lr.ph525.new ], [ %niter.next.1, %bb.e ]
  %i.cd = load <16 x i32>, ptr %.3.i518, align 1  ; 3 uses
  %i.ce = icmp ugt <16 x i32> %i.cd, splat (i32 127)
  %i.cf = zext <16 x i1> %i.ce to <16 x i32>
  %i.cg = add <16 x i32> %i.cc, %i.cf
  %i.ch = icmp ugt <16 x i32> %i.cd, splat (i32 2047)
  %i.ci = zext <16 x i1> %i.ch to <16 x i32>
  %i.cj = add <16 x i32> %i.cg, %i.ci
  %i.ck = icmp ugt <16 x i32> %i.cd, splat (i32 65535)
  %i.cl = zext <16 x i1> %i.ck to <16 x i32>
  %i.cm = add <16 x i32> %i.cj, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.3.i518, i64 64
  %i.co = load <16 x i32>, ptr %i.cn, align 1     ; 3 uses
  %i.cp = icmp ugt <16 x i32> %i.co, splat (i32 127)
  %i.cq = zext <16 x i1> %i.cp to <16 x i32>
  %i.cr = add <16 x i32> %i.cm, %i.cq
  %i.cs = icmp ugt <16 x i32> %i.co, splat (i32 2047)
  %i.ct = zext <16 x i1> %i.cs to <16 x i32>
  %i.cu = add <16 x i32> %i.cr, %i.ct
  %i.cv = icmp ugt <16 x i32> %i.co, splat (i32 65535)
  %i.cw = zext <16 x i1> %i.cv to <16 x i32>
  %i.cx = add <16 x i32> %i.cu, %i.cw             ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.3.i518, i64 128 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.e, !llvm.loop !382

_ZN7simdutf7icelake12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit: ; preds = %bb.d, %._crit_edge
  %.243.i.lcssa = phi ptr [ %.041.i.lcssa, %._crit_edge ], [ %scevgep535, %bb.d ] ; 4 uses
  %.1.i.lcssa = phi i64 [ %.040.i.lcssa, %._crit_edge ], [ %i.cb, %bb.d ]
  %i.cz = and i64 %2, 15                          ; 3 uses
  %.not.i2 = icmp eq i64 %i.cz, 0
  br i1 %.not.i2, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %vector.ph

vector.ph:                                        ; preds = %_ZN7simdutf7icelake12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit
  %trip.count.minus.1 = add nsw i64 %i.cz, -1
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %n.rnd.up = add nuw nsw i64 %i.cz, 7
  %n.vec = and i64 %n.rnd.up, 24
  %i.da = icmp uge <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7> ; 2 uses
  %wide.masked.load = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr align 4 %.243.i.lcssa, <8 x i1> %i.da, <8 x i32> poison) ; 3 uses
  %i.db = icmp ugt <8 x i32> %wide.masked.load, splat (i32 127)
  %i.dc = select <8 x i1> %i.db, <8 x i64> splat (i64 2), <8 x i64> splat (i64 1)
  %i.dd = icmp ugt <8 x i32> %wide.masked.load, splat (i32 2047)
  %i.de = zext <8 x i1> %i.dd to <8 x i64>
  %i.df = add nuw nsw <8 x i64> %i.dc, %i.de
  %i.dg = icmp ugt <8 x i32> %wide.masked.load, splat (i32 65535)
  %i.dh = zext <8 x i1> %i.dg to <8 x i64>
  %i.di = add nuw nsw <8 x i64> %i.df, %i.dh      ; 3 uses
  %i.dj = icmp eq i64 %n.vec, 8
  br i1 %i.dj, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit.loopexit, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.dk = icmp ugt <8 x i64> %broadcast.splat, <i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14> ; 2 uses
  %i.dl = add nuw nsw <8 x i64> %i.di, splat (i64 1)
  %i.dm = getelementptr inbounds nuw i8, ptr %.243.i.lcssa, i64 32
  %wide.masked.load.1 = tail call <8 x i32> @llvm.masked.load.v8i32.p0(ptr nonnull align 4 %i.dm, <8 x i1> %i.dk, <8 x i32> poison) ; 3 uses
  %i.dn = icmp ugt <8 x i32> %wide.masked.load.1, splat (i32 127)
  %i.do = zext <8 x i1> %i.dn to <8 x i64>
  %i.dp = add nuw nsw <8 x i64> %i.dl, %i.do
  %i.dq = icmp ugt <8 x i32> %wide.masked.load.1, splat (i32 2047)
  %i.dr = zext <8 x i1> %i.dq to <8 x i64>
  %i.ds = add nuw nsw <8 x i64> %i.dp, %i.dr
  %i.dt = icmp ugt <8 x i32> %wide.masked.load.1, splat (i32 65535)
  %i.du = zext <8 x i1> %i.dt to <8 x i64>
  %i.dv = add nuw nsw <8 x i64> %i.ds, %i.du
  br label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit.loopexit

_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit.loopexit: ; preds = %vector.body.1, %vector.ph
  %vec.phi.lcssa = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.di, %vector.body.1 ]
  %.lcssa552 = phi <8 x i1> [ %i.da, %vector.ph ], [ %i.dk, %vector.body.1 ]
  %.lcssa = phi <8 x i64> [ %i.di, %vector.ph ], [ %i.dv, %vector.body.1 ]
  %i.dw = select <8 x i1> %.lcssa552, <8 x i64> %.lcssa, <8 x i64> %vec.phi.lcssa
  %i.dx = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.dw)
  br label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit

_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit: ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit.loopexit, %_ZN7simdutf7icelake12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit
  %.014.lcssa.i = phi i64 [ 0, %_ZN7simdutf7icelake12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit ], [ %i.dx, %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit.loopexit ]
  %.not46.i = icmp eq ptr %.243.i.lcssa, %1
  %i.dy = ptrtoint ptr %.243.i.lcssa to i64
  %i.dz = ptrtoint ptr %1 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 2
  %i.ec = select i1 %.not46.i, i64 0, i64 %i.eb
  %.2.i = add i64 %i.ec, %.1.i.lcssa
  %i.ed = add i64 %.2.i, %.014.lcssa.i
  ret i64 %i.ed
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf7icelake14implementation23utf16_length_from_utf32EPKDim(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp ugt i64 %2, 15
  br i1 %i.a, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %.idx = shl nuw nsw i64 %2, 2
  %i.b = getelementptr i8, ptr %1, i64 %.idx
  %i.c = getelementptr i8, ptr %i.b, i64 -64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.020 = phi ptr [ %i.e, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.01519 = phi i64 [ %i.j, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.d = load <16 x i32>, ptr %.020, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %.020, i64 64 ; 3 uses
  %i.f = icmp ugt <16 x i32> %i.d, splat (i32 65535)
  %i.g = bitcast <16 x i1> %i.f to i16
  %i.h = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.g)
  %narrow = add nuw nsw i16 %i.h, 16
  %i.i = zext nneg i16 %narrow to i64
  %i.j = add i64 %.01519, %i.i                    ; 2 uses
  %.not = icmp ugt ptr %i.e, %i.c
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !383

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  %.116 = phi i64 [ 0, %bb.a ], [ %i.j, %.lr.ph ]
  %.1 = phi ptr [ %1, %bb.a ], [ %i.e, %.lr.ph ]  ; 4 uses
  %i.k = ptrtoint ptr %.1 to i64
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = sub i64 %2, %i.n                         ; 8 uses
  %.not.i = icmp eq i64 %2, %i.n
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3223utf16_length_from_utf32EPKDim.exit, label %iter.check

iter.check:                                       ; preds = %.loopexit
  %min.iters.check = icmp ult i64 %i.o, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check29 = icmp ult i64 %i.o, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.o, 24
  %n.vec = and i64 %i.o, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi30 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi31 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi32 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %i.q = add <8 x i64> %vec.phi, splat (i64 1)
  %i.r = add <8 x i64> %vec.phi30, splat (i64 1)
  %i.s = add <8 x i64> %vec.phi31, splat (i64 1)
  %i.t = add <8 x i64> %vec.phi32, splat (i64 1)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.1, i64 %index ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %wide.load = load <8 x i32>, ptr %i.u, align 4
  %wide.load33 = load <8 x i32>, ptr %i.v, align 4
  %wide.load34 = load <8 x i32>, ptr %i.w, align 4
  %wide.load35 = load <8 x i32>, ptr %i.x, align 4
  %i.y = icmp ugt <8 x i32> %wide.load, splat (i32 65535)
  %i.z = icmp ugt <8 x i32> %wide.load33, splat (i32 65535)
  %i.aa = icmp ugt <8 x i32> %wide.load34, splat (i32 65535)
  %i.ab = icmp ugt <8 x i32> %wide.load35, splat (i32 65535)
  %i.ac = zext <8 x i1> %i.y to <8 x i64>
  %i.ad = zext <8 x i1> %i.z to <8 x i64>
  %i.ae = zext <8 x i1> %i.aa to <8 x i64>
  %i.af = zext <8 x i1> %i.ab to <8 x i64>
  %i.ag = add <8 x i64> %i.q, %i.ac               ; 2 uses
  %i.ah = add <8 x i64> %i.r, %i.ad               ; 2 uses
  %i.ai = add <8 x i64> %i.s, %i.ae               ; 2 uses
  %i.aj = add <8 x i64> %i.t, %i.af               ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !384

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i64> %i.ah, %i.ag
  %bin.rdx36 = add <8 x i64> %i.ai, %bin.rdx
  %bin.rdx37 = add <8 x i64> %i.aj, %bin.rdx36
  %i.al = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx37) ; 3 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3223utf16_length_from_utf32EPKDim.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !337
end_hunk_1
begin_hunk_2_@_ZNK7simdutf7haswell14implementation23utf8_length_from_latin1EPKcm:bb.a
.preheader:                                       ; preds = %.lr.ph134, %.preheader125
  %.lcssa = phi <32 x i8> [ zeroinitializer, %.preheader125 ], [ %i.s, %.lr.ph134 ] ; 2 uses
  %.157.lcssa = phi i64 [ %.056143, %.preheader125 ], [ %i.i, %.lr.ph134 ] ; 3 uses
  %.not69137 = icmp ugt i64 %.157.lcssa, %i.g
  br i1 %.not69137, label %._crit_edge, label %.lr.ph139

.lr.ph134:                                        ; preds = %.preheader125, %.lr.ph134
  %i.i = phi i64 [ %i.t, %.lr.ph134 ], [ %i.h, %.preheader125 ] ; 3 uses
  %.157133 = phi i64 [ %i.i, %.lr.ph134 ], [ %.056143, %.preheader125 ]
  %i.j = phi <32 x i8> [ %i.s, %.lr.ph134 ], [ zeroinitializer, %.preheader125 ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.157133 ; 4 uses
  %i.l = load <32 x i8>, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = load <32 x i8>, ptr %i.m, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.p = load <32 x i8>, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.r = load <32 x i8>, ptr %i.q, align 1
  %.lobit.neg = lshr <32 x i8> %i.l, splat (i8 7)
  %.lobit118.neg = lshr <32 x i8> %i.n, splat (i8 7)
  %.lobit119.neg = lshr <32 x i8> %i.p, splat (i8 7)
  %.lobit120.neg = lshr <32 x i8> %i.r, splat (i8 7)
  %.neg121 = add <32 x i8> %.lobit.neg, %i.j
  %.neg = add <32 x i8> %.neg121, %.lobit118.neg
  %.neg122 = add <32 x i8> %.neg, %.lobit119.neg
  %i.s = add <32 x i8> %.neg122, %.lobit120.neg   ; 2 uses
  %i.t = add i64 %i.i, 128                        ; 2 uses
  %.not68 = icmp ugt i64 %i.t, %i.g
  br i1 %.not68, label %.preheader, label %.lr.ph134, !llvm.loop !852

.lr.ph139:                                        ; preds = %.preheader, %.lr.ph139
  %.2138 = phi i64 [ %i.y, %.lr.ph139 ], [ %.157.lcssa, %.preheader ] ; 2 uses
  %i.u = phi <32 x i8> [ %i.x, %.lr.ph139 ], [ %.lcssa, %.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.2138
  %i.w = load <32 x i8>, ptr %i.v, align 1
  %.lobit.neg123 = lshr <32 x i8> %i.w, splat (i8 7)
  %i.x = add <32 x i8> %.lobit.neg123, %i.u       ; 2 uses
  %i.y = add i64 %.2138, 32                       ; 3 uses
  %.not69 = icmp ugt i64 %i.y, %i.g
  br i1 %.not69, label %._crit_edge, label %.lr.ph139, !llvm.loop !853

._crit_edge:                                      ; preds = %.lr.ph139, %.preheader
  %.lcssa127 = phi <32 x i8> [ %.lcssa, %.preheader ], [ %i.x, %.lr.ph139 ]
  %.2.lcssa = phi i64 [ %.157.lcssa, %.preheader ], [ %i.y, %.lr.ph139 ] ; 3 uses
  %i.z = tail call noundef <4 x i64> @llvm.x86.avx2.psad.bw(<32 x i8> %.lcssa127, <32 x i8> zeroinitializer)
  %i.aa = add <4 x i64> %i.z, %.058142            ; 2 uses
  %i.ab = add i64 %.2.lcssa, 32
  %.not67 = icmp ugt i64 %i.ab, %2
  br i1 %.not67, label %bb.b, label %.preheader125, !llvm.loop !854

bb.b:                                             ; preds = %._crit_edge
  %i.ac = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.aa)
  %op.rdx = add i64 %i.ac, %i.a
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.ad = phi i64 [ %i.al, %.lr.ph ], [ 32, %bb.c ] ; 3 uses
  %.0130 = phi i64 [ %i.ak, %.lr.ph ], [ %i.a, %bb.c ]
  %.3129 = phi i64 [ %i.ad, %.lr.ph ], [ 0, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.3129
  %i.af = load <32 x i8>, ptr %i.ae, align 1
  %i.ag = icmp slt <32 x i8> %i.af, zeroinitializer
  %i.ah = bitcast <32 x i1> %i.ag to i32
  %i.ai = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ah)
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = add i64 %.0130, %i.aj                   ; 2 uses
  %i.al = add nuw nsw i64 %i.ad, 32               ; 2 uses
  %.not66 = icmp ugt i64 %i.al, %2
  br i1 %.not66, label %.loopexit, label %.lr.ph, !llvm.loop !855

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b
  %.4 = phi i64 [ %.2.lcssa, %bb.b ], [ 0, %bb.c ], [ %i.ad, %.lr.ph ] ; 3 uses
  %.1 = phi i64 [ %op.rdx, %bb.b ], [ 0, %bb.c ], [ %i.ak, %.lr.ph ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.4 ; 3 uses
  %i.an = sub i64 %2, %.4                         ; 9 uses
  %.not149 = icmp eq i64 %2, %.4
  br i1 %.not149, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %iter.check

iter.check:                                       ; preds = %.loopexit
  %min.iters.check = icmp ult i64 %i.an, 4
  br i1 %min.iters.check, label %.lr.ph147.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check177 = icmp ult i64 %i.an, 16
  br i1 %min.iters.check177, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %i.an, 12
  %n.vec = and i64 %i.an, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi178 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi179 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %vec.phi180 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %wide.load = load <4 x i8>, ptr %i.ap, align 1
  %wide.load181 = load <4 x i8>, ptr %i.aq, align 1
  %wide.load182 = load <4 x i8>, ptr %i.ar, align 1
  %wide.load183 = load <4 x i8>, ptr %i.as, align 1
  %i.at = lshr <4 x i8> %wide.load, splat (i8 7)
  %i.au = lshr <4 x i8> %wide.load181, splat (i8 7)
  %i.av = lshr <4 x i8> %wide.load182, splat (i8 7)
  %i.aw = lshr <4 x i8> %wide.load183, splat (i8 7)
  %i.ax = zext nneg <4 x i8> %i.at to <4 x i64>
  %i.ay = zext nneg <4 x i8> %i.au to <4 x i64>
  %i.az = zext nneg <4 x i8> %i.av to <4 x i64>
  %i.ba = zext nneg <4 x i8> %i.aw to <4 x i64>
  %i.bb = add <4 x i64> %vec.phi, %i.ax           ; 2 uses
  %i.bc = add <4 x i64> %vec.phi178, %i.ay        ; 2 uses
  %i.bd = add <4 x i64> %vec.phi179, %i.az        ; 2 uses
  %i.be = add <4 x i64> %vec.phi180, %i.ba        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !856

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.bc, %i.bb
  %bin.rdx184 = add <4 x i64> %i.bd, %bin.rdx
  %bin.rdx185 = add <4 x i64> %i.be, %bin.rdx184
  %i.bg = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx185) ; 3 uses
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check, label %.lr.ph147.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.bg, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec186 = and i64 %i.an, -4                   ; 3 uses
  %i.bh = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index187 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next190, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi188 = phi <4 x i64> [ %i.bh, %vec.epilog.ph ], [ %i.bl, %vec.epilog.vector.body ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 %index187
  %wide.load189 = load <4 x i8>, ptr %i.bi, align 1
  %i.bj = lshr <4 x i8> %wide.load189, splat (i8 7)
  %i.bk = zext nneg <4 x i8> %i.bj to <4 x i64>
  %i.bl = add <4 x i64> %vec.phi188, %i.bk        ; 2 uses
  %index.next190 = add nuw i64 %index187, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next190, %n.vec186
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !857

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bn = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.bl) ; 2 uses
  %cmp.n191 = icmp eq i64 %i.an, %n.vec186
  br i1 %cmp.n191, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %.lr.ph147.preheader

.lr.ph147.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i145.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec186, %vec.epilog.middle.block ]
  %.08.i144.ph = phi i64 [ 0, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  br label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph147.preheader, %.lr.ph147
  %.0.i145 = phi i64 [ %i.br, %.lr.ph147 ], [ %.0.i145.ph, %.lr.ph147.preheader ] ; 2 uses
  %.08.i144 = phi i64 [ %spec.select.i, %.lr.ph147 ], [ %.08.i144.ph, %.lr.ph147.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 %.0.i145
  %i.bp = load i8, ptr %i.bo, align 1
  %.lobit = lshr i8 %i.bp, 7
  %i.bq = zext nneg i8 %.lobit to i64
  %spec.select.i = add i64 %.08.i144, %i.bq       ; 2 uses
  %i.br = add nuw i64 %.0.i145, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %i.an
  br i1 %exitcond.not, label %_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit, label %.lr.ph147, !llvm.loop !858

_ZN7simdutf6scalar12_GLOBAL__N_16latin123utf8_length_from_latin1EPKcm.exit: ; preds = %.lr.ph147, %middle.block, %vec.epilog.middle.block, %.loopexit
  %.08.i.lcssa = phi i64 [ 0, %.loopexit ], [ %i.bn, %vec.epilog.middle.block ], [ %i.bg, %middle.block ], [ %spec.select.i, %.lr.ph147 ]
  %i.bs = add i64 %.1, %i.an
  %i.bt = add i64 %i.bs, %.08.i.lcssa
  ret i64 %i.bt
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf7haswell14implementation22utf8_length_from_utf32EPKDim(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %i.a = lshr i64 %2, 5                           ; 2 uses
  %.not.i533 = icmp eq i64 %i.a, 0
  br i1 %.not.i533, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.039.i536 = phi i64 [ %i.c, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.040.i535 = phi i64 [ %op.rdx572, %bb.b ], [ 0, %bb.a ]
  %.041.i534 = phi ptr [ %scevgep, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.b = tail call noundef range(i64 0, 1431655766) i64 @llvm.umin.i64(i64 %.039.i536, i64 357913941) ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = sub i64 %.039.i536, %i.b                 ; 2 uses
  %i.d = shl nuw nsw i64 %i.b, 7
  %scevgep = getelementptr i8, ptr %.041.i534, i64 %i.d ; 2 uses
  %i.e = bitcast <8 x i32> %i.bb to <4 x i64>
  %i.f = bitcast <8 x i32> %i.bb to <4 x i64>
  %i.g = and <4 x i64> %i.f, splat (i64 4294967295)
  %i.h = lshr <4 x i64> %i.e, splat (i64 32)
  %i.i = add nuw nsw <4 x i64> %i.g, %i.h
  %i.j = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.i)
  %op.rdx572 = add i64 %i.j, %.040.i535           ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !859

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.038.i532 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %bb.c ]
  %.142.i531 = phi ptr [ %.041.i534, %.lr.ph ], [ %i.bc, %bb.c ] ; 5 uses
  %i.k = phi <8 x i32> [ zeroinitializer, %.lr.ph ], [ %i.bb, %bb.c ]
  %i.l = load <8 x i32>, ptr %.142.i531, align 1  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.142.i531, i64 32
  %i.n = load <8 x i32>, ptr %i.m, align 1        ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.142.i531, i64 64
  %i.p = load <8 x i32>, ptr %i.o, align 1        ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.142.i531, i64 96
  %i.r = load <8 x i32>, ptr %i.q, align 1        ; 3 uses
  %i.s = icmp ugt <8 x i32> %i.l, splat (i32 127)
  %i.t = zext <8 x i1> %i.s to <8 x i32>
  %i.u = add <8 x i32> %i.k, %i.t
  %i.v = icmp ugt <8 x i32> %i.n, splat (i32 127)
  %i.w = zext <8 x i1> %i.v to <8 x i32>
  %i.x = icmp ugt <8 x i32> %i.p, splat (i32 127)
  %i.y = zext <8 x i1> %i.x to <8 x i32>
  %i.z = icmp ugt <8 x i32> %i.r, splat (i32 127)
  %i.aa = zext <8 x i1> %i.z to <8 x i32>
  %i.ab = icmp ugt <8 x i32> %i.l, splat (i32 2047)
  %i.ac = zext <8 x i1> %i.ab to <8 x i32>
  %i.ad = icmp ugt <8 x i32> %i.n, splat (i32 2047)
  %i.ae = zext <8 x i1> %i.ad to <8 x i32>
  %i.af = icmp ugt <8 x i32> %i.p, splat (i32 2047)
  %i.ag = zext <8 x i1> %i.af to <8 x i32>
  %i.ah = icmp ugt <8 x i32> %i.r, splat (i32 2047)
  %i.ai = zext <8 x i1> %i.ah to <8 x i32>
  %i.aj = icmp ugt <8 x i32> %i.l, splat (i32 65535)
  %i.ak = zext <8 x i1> %i.aj to <8 x i32>
  %i.al = icmp ugt <8 x i32> %i.n, splat (i32 65535)
  %i.am = zext <8 x i1> %i.al to <8 x i32>
  %i.an = icmp ugt <8 x i32> %i.p, splat (i32 65535)
  %i.ao = zext <8 x i1> %i.an to <8 x i32>
  %i.ap = icmp ugt <8 x i32> %i.r, splat (i32 65535)
  %i.aq = zext <8 x i1> %i.ap to <8 x i32>
  %i.ar = add <8 x i32> %i.u, %i.ac
  %i.as = add <8 x i32> %i.ar, %i.ak
  %i.at = add <8 x i32> %i.as, %i.w
  %i.au = add <8 x i32> %i.at, %i.ae
  %i.av = add <8 x i32> %i.au, %i.am
  %i.aw = add <8 x i32> %i.av, %i.y
  %i.ax = add <8 x i32> %i.aw, %i.ag
  %i.ay = add <8 x i32> %i.ax, %i.ao
  %i.az = add <8 x i32> %i.ay, %i.aa
  %i.ba = add <8 x i32> %i.az, %i.ai
  %i.bb = add <8 x i32> %i.ba, %i.aq              ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.142.i531, i64 128
  %i.bd = add nuw nsw i64 %.038.i532, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %i.b
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !860

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.041.i.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep, %bb.b ] ; 2 uses
  %.040.i.lcssa = phi i64 [ 0, %bb.a ], [ %op.rdx572, %bb.b ] ; 2 uses
  %i.be = lshr i64 %2, 3
  %i.bf = and i64 %i.be, 3                        ; 2 uses
  %.not45.i541 = icmp eq i64 %i.bf, 0
  br i1 %.not45.i541, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph546

.lr.ph546:                                        ; preds = %._crit_edge, %bb.d
  %.037.i544 = phi i64 [ %i.bh, %bb.d ], [ %i.bf, %._crit_edge ] ; 2 uses
  %.1.i543 = phi i64 [ %op.rdx, %bb.d ], [ %.040.i.lcssa, %._crit_edge ]
  %.243.i542 = phi ptr [ %scevgep556, %bb.d ], [ %.041.i.lcssa, %._crit_edge ] ; 2 uses
  %i.bg = tail call noundef range(i64 0, 1431655766) i64 @llvm.umin.i64(i64 %.037.i544, i64 1431655765) ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.bh = sub i64 %.037.i544, %i.bg               ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bg, 5
  %scevgep556 = getelementptr i8, ptr %.243.i542, i64 %i.bi ; 2 uses
  %i.bj = bitcast <8 x i32> %i.bz to <4 x i64>
  %i.bk = bitcast <8 x i32> %i.bz to <4 x i64>
  %i.bl = and <4 x i64> %i.bk, splat (i64 4294967295)
  %i.bm = lshr <4 x i64> %i.bj, splat (i64 32)
  %i.bn = add nuw nsw <4 x i64> %i.bl, %i.bm
  %i.bo = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.bn)
  %op.rdx = add i64 %i.bo, %.1.i543               ; 2 uses
  %.not45.i = icmp eq i64 %i.bh, 0
  br i1 %.not45.i, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph546, !llvm.loop !861

bb.e:                                             ; preds = %.lr.ph546, %bb.e
  %.0.i540 = phi i64 [ 0, %.lr.ph546 ], [ %i.cb, %bb.e ]
  %.3.i539 = phi ptr [ %.243.i542, %.lr.ph546 ], [ %i.ca, %bb.e ] ; 2 uses
  %i.bp = phi <8 x i32> [ zeroinitializer, %.lr.ph546 ], [ %i.bz, %bb.e ]
  %i.bq = load <8 x i32>, ptr %.3.i539, align 1   ; 3 uses
  %i.br = icmp ugt <8 x i32> %i.bq, splat (i32 127)
  %i.bs = zext <8 x i1> %i.br to <8 x i32>
  %i.bt = add <8 x i32> %i.bp, %i.bs
  %i.bu = icmp ugt <8 x i32> %i.bq, splat (i32 2047)
  %i.bv = zext <8 x i1> %i.bu to <8 x i32>
  %i.bw = add <8 x i32> %i.bt, %i.bv
  %i.bx = icmp ugt <8 x i32> %i.bq, splat (i32 65535)
  %i.by = zext <8 x i1> %i.bx to <8 x i32>
  %i.bz = add <8 x i32> %i.bw, %i.by              ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.3.i539, i64 32
  %i.cb = add nuw nsw i64 %.0.i540, 1             ; 2 uses
  %exitcond557.not = icmp eq i64 %i.cb, %i.bg
  br i1 %exitcond557.not, label %bb.d, label %bb.e, !llvm.loop !862

_ZN7simdutf7haswell12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit: ; preds = %bb.d, %._crit_edge
  %.243.i.lcssa = phi ptr [ %.041.i.lcssa, %._crit_edge ], [ %scevgep556, %bb.d ] ; 4 uses
  %.1.i.lcssa = phi i64 [ %.040.i.lcssa, %._crit_edge ], [ %op.rdx, %bb.d ]
  %i.cc = and i64 %2, 7                           ; 3 uses
  %.not.i1 = icmp eq i64 %i.cc, 0
  br i1 %.not.i1, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %vector.ph

vector.ph:                                        ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit
  %trip.count.minus.1 = add nsw i64 %i.cc, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %n.rnd.up = add nuw nsw i64 %i.cc, 3
  %n.vec = and i64 %n.rnd.up, 12
  %i.cd = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.masked.load = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %.243.i.lcssa, <4 x i1> %i.cd, <4 x i32> poison) ; 3 uses
  %i.ce = icmp ugt <4 x i32> %wide.masked.load, splat (i32 127)
  %i.cf = select <4 x i1> %i.ce, <4 x i64> splat (i64 2), <4 x i64> splat (i64 1)
  %i.cg = icmp ugt <4 x i32> %wide.masked.load, splat (i32 2047)
  %i.ch = zext <4 x i1> %i.cg to <4 x i64>
  %i.ci = add nuw nsw <4 x i64> %i.cf, %i.ch
  %i.cj = icmp ugt <4 x i32> %wide.masked.load, splat (i32 65535)
  %i.ck = zext <4 x i1> %i.cj to <4 x i64>
  %i.cl = add nuw nsw <4 x i64> %i.ci, %i.ck      ; 3 uses
  %i.cm = icmp eq i64 %n.vec, 4
  br i1 %i.cm, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit.loopexit, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.cn = icmp ugt <4 x i64> %broadcast.splat, <i64 3, i64 4, i64 5, i64 6> ; 2 uses
  %i.co = add nuw nsw <4 x i64> %i.cl, splat (i64 1)
  %i.cp = getelementptr inbounds nuw i8, ptr %.243.i.lcssa, i64 16
  %wide.masked.load.1 = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr nonnull align 4 %i.cp, <4 x i1> %i.cn, <4 x i32> poison) ; 3 uses
  %i.cq = icmp ugt <4 x i32> %wide.masked.load.1, splat (i32 127)
  %i.cr = zext <4 x i1> %i.cq to <4 x i64>
  %i.cs = add nuw nsw <4 x i64> %i.co, %i.cr
  %i.ct = icmp ugt <4 x i32> %wide.masked.load.1, splat (i32 2047)
  %i.cu = zext <4 x i1> %i.ct to <4 x i64>
  %i.cv = add nuw nsw <4 x i64> %i.cs, %i.cu
  %i.cw = icmp ugt <4 x i32> %wide.masked.load.1, splat (i32 65535)
  %i.cx = zext <4 x i1> %i.cw to <4 x i64>
  %i.cy = add nuw nsw <4 x i64> %i.cv, %i.cx
  br label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit.loopexit

_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit.loopexit: ; preds = %vector.body.1, %vector.ph
  %vec.phi.lcssa = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.cl, %vector.body.1 ]
  %.lcssa574 = phi <4 x i1> [ %i.cd, %vector.ph ], [ %i.cn, %vector.body.1 ]
  %.lcssa = phi <4 x i64> [ %i.cl, %vector.ph ], [ %i.cy, %vector.body.1 ]
  %i.cz = select <4 x i1> %.lcssa574, <4 x i64> %.lcssa, <4 x i64> %vec.phi.lcssa
  %i.da = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.cz)
  br label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit

_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit: ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit.loopexit, %_ZN7simdutf7haswell12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit
  %.014.lcssa.i = phi i64 [ 0, %_ZN7simdutf7haswell12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit ], [ %i.da, %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit.loopexit ]
  %.not46.i = icmp eq ptr %.243.i.lcssa, %1
  %i.db = ptrtoint ptr %.243.i.lcssa to i64
  %i.dc = ptrtoint ptr %1 to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 2
  %i.df = select i1 %.not46.i, i64 0, i64 %i.de
  %.2.i = add i64 %i.df, %.1.i.lcssa
  %i.dg = add i64 %.2.i, %.014.lcssa.i
  ret i64 %i.dg
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf7haswell14implementation23utf16_length_from_utf32EPKDim(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %.not26 = icmp ult i64 %2, 8
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.a = phi i64 [ %i.l, %.lr.ph ], [ 8, %bb.a ]  ; 3 uses
  %.028 = phi i64 [ %i.a, %.lr.ph ], [ 0, %bb.a ]
  %.01427 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.028
  %i.c = load <8 x i32>, ptr %i.b, align 1
  %i.d = icmp ult <8 x i32> %i.c, splat (i32 65536)
  %i.e = sext <8 x i1> %i.d to <8 x i32>
  %i.f = bitcast <8 x i32> %i.e to <32 x i8>
  %i.g = icmp sgt <32 x i8> %i.f, splat (i8 -1)
  %i.h = bitcast <32 x i1> %i.g to i32
  %narrow = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.h)
  %i.i = lshr i32 %narrow, 2
  %narrow25 = add nuw nsw i32 %i.i, 8
  %i.j = zext nneg i32 %narrow25 to i64
  %i.k = add i64 %.01427, %i.j                    ; 2 uses
  %i.l = add i64 %i.a, 8                          ; 2 uses
  %.not = icmp ugt i64 %i.l, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !863

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.014.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %.lr.ph ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.lcssa ; 3 uses
  %i.n = sub i64 %2, %.0.lcssa                    ; 7 uses
  %.not.i = icmp eq i64 %2, %.0.lcssa
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3223utf16_length_from_utf32EPKDim.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %min.iters.check = icmp ult i64 %i.n, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check36 = icmp ult i64 %i.n, 16
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.o = and i64 %i.n, 12
  %n.vec = and i64 %i.n, -16                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi37 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi38 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi39 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %i.p = add <4 x i64> %vec.phi, splat (i64 1)
  %i.q = add <4 x i64> %vec.phi37, splat (i64 1)
  %i.r = add <4 x i64> %vec.phi38, splat (i64 1)
  %i.s = add <4 x i64> %vec.phi39, splat (i64 1)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %wide.load = load <4 x i32>, ptr %i.t, align 4
  %wide.load40 = load <4 x i32>, ptr %i.u, align 4
  %wide.load41 = load <4 x i32>, ptr %i.v, align 4
  %wide.load42 = load <4 x i32>, ptr %i.w, align 4
  %i.x = icmp ugt <4 x i32> %wide.load, splat (i32 65535)
  %i.y = icmp ugt <4 x i32> %wide.load40, splat (i32 65535)
  %i.z = icmp ugt <4 x i32> %wide.load41, splat (i32 65535)
  %i.aa = icmp ugt <4 x i32> %wide.load42, splat (i32 65535)
  %i.ab = zext <4 x i1> %i.x to <4 x i64>
  %i.ac = zext <4 x i1> %i.y to <4 x i64>
  %i.ad = zext <4 x i1> %i.z to <4 x i64>
  %i.ae = zext <4 x i1> %i.aa to <4 x i64>
  %i.af = add <4 x i64> %i.p, %i.ab               ; 2 uses
  %i.ag = add <4 x i64> %i.q, %i.ac               ; 2 uses
  %i.ah = add <4 x i64> %i.r, %i.ad               ; 2 uses
  %i.ai = add <4 x i64> %i.s, %i.ae               ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !864

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.ag, %i.af
  %bin.rdx43 = add <4 x i64> %i.ah, %bin.rdx
  %bin.rdx44 = add <4 x i64> %i.ai, %bin.rdx43
  %i.ak = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx44) ; 3 uses
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3223utf16_length_from_utf32EPKDim.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ak, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.al = and i64 %2, 3                           ; 2 uses
  %n.vec45 = sub i64 %i.n, %i.al                  ; 2 uses
  %i.am = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi47 = phi <4 x i64> [ %i.am, %vec.epilog.ph ], [ %i.ar, %vec.epilog.vector.body ]
  %i.an = add <4 x i64> %vec.phi47, splat (i64 1)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index46
end_hunk_2
begin_hunk_3_@_ZNK7simdutf8westmere14implementation25utf32_length_from_utf16beEPKDsm:bb.a
  %wide.load110 = load <2 x i16>, ptr %i.be, align 2
  %i.bf = and <2 x i16> %wide.load, splat (i16 252)
  %i.bg = and <2 x i16> %wide.load110, splat (i16 252)
  %i.bh = icmp ne <2 x i16> %i.bf, splat (i16 220)
  %i.bi = icmp ne <2 x i16> %i.bg, splat (i16 220)
  %i.bj = zext <2 x i1> %i.bh to <2 x i64>
  %i.bk = zext <2 x i1> %i.bi to <2 x i64>
  %i.bl = add <2 x i64> %vec.phi, %i.bj           ; 2 uses
  %i.bm = add <2 x i64> %vec.phi109, %i.bk        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !1268

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bc, 0
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph.i.preheader111

.lr.ph.i.preheader111:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.011.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.0910.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader111, %.lr.ph.i
  %.011.i = phi i64 [ %i.bv, %.lr.ph.i ], [ %.011.i.ph, %.lr.ph.i.preheader111 ] ; 2 uses
  %.0910.i = phi i64 [ %i.bu, %.lr.ph.i ], [ %.0910.i.ph, %.lr.ph.i.preheader111 ]
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %.011.i
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = and i16 %i.bq, 252
  %i.bs = icmp ne i16 %i.br, 220
  %i.bt = zext i1 %i.bs to i64
  %i.bu = add i64 %.0910.i, %i.bt                 ; 2 uses
  %i.bv = add nuw i64 %.011.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bv, %i.bb
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit, label %.lr.ph.i, !llvm.loop !1269

_ZN7simdutf6scalar12_GLOBAL__N_15utf1617count_code_pointsILNS_10endiannessE1EEEmPKDsm.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit
  %.09.lcssa.i = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1623utf32_length_from_utf16ILNS_10endiannessE1EEEmPKDsm.exit ], [ %i.bo, %middle.block ], [ %i.bu, %.lr.ph.i ]
  %i.bw = add i64 %.09.lcssa.i, %.011.i.i.lcssa
  ret i64 %i.bw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation22utf16_length_from_utf8EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #26 align 2 {
bb.a:
  %.not.i40 = icmp ult i64 %2, 16
  br i1 %.not.i40, label %_ZN7simdutf8westmere12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit, label %.lr.ph.outer

.lr.ph.outer:                                     ; preds = %bb.a, %.thread
  %.ph = phi i64 [ %i.aa, %.thread ], [ 16, %bb.a ]
  %.017.i42.ph = phi i64 [ %i.l, %.thread ], [ 0, %bb.a ]
  %.sroa.015.041.ph = phi <2 x i64> [ %i.z, %.thread ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.017.i42.ph
  %i.b = load <16 x i8>, ptr %i.a, align 1        ; 2 uses
  %i.c = icmp sgt <16 x i8> %i.b, splat (i8 -65)
  %.neg77 = zext <16 x i1> %i.c to <16 x i8>
  %i.d = icmp ugt <16 x i8> %i.b, splat (i8 -17)
  %.neg3978 = zext <16 x i1> %i.d to <16 x i8>
  %i.e = add nuw nsw <16 x i8> %.neg77, %.neg3978
  br label %bb.b

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.g = load <16 x i8>, ptr %i.f, align 1        ; 2 uses
  %i.h = icmp sgt <16 x i8> %i.g, splat (i8 -65)
  %.neg = zext <16 x i1> %i.h to <16 x i8>
  %i.i = icmp ugt <16 x i8> %i.g, splat (i8 -17)
  %.neg39 = zext <16 x i1> %i.i to <16 x i8>
  %i.j = add <16 x i8> %i.v, %.neg
  %i.k = add <16 x i8> %i.j, %.neg39              ; 2 uses
  %i.l = add i64 %i.w, 32                         ; 4 uses
  %.not.i.1 = icmp ugt i64 %i.l, %2
  br i1 %.not.i.1, label %._crit_edge, label %.lr.ph.1, !llvm.loop !1270

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.n = load <16 x i8>, ptr %i.m, align 1        ; 2 uses
  %i.o = icmp sgt <16 x i8> %i.n, splat (i8 -65)
  %.neg.1 = zext <16 x i1> %i.o to <16 x i8>
  %i.p = icmp ugt <16 x i8> %i.n, splat (i8 -17)
  %.neg39.1 = zext <16 x i1> %i.p to <16 x i8>
  %i.q = add <16 x i8> %i.k, %.neg.1
  %i.r = add <16 x i8> %i.q, %.neg39.1            ; 2 uses
  %i.s = add nuw nsw i64 %i.u, 2                  ; 2 uses
  %i.t = icmp eq i64 %i.s, 127
  br i1 %i.t, label %.thread, label %bb.b, !llvm.loop !1270

bb.b:                                             ; preds = %.lr.ph.1, %.lr.ph.outer
  %i.u = phi i64 [ 1, %.lr.ph.outer ], [ %i.s, %.lr.ph.1 ]
  %i.v = phi <16 x i8> [ %i.e, %.lr.ph.outer ], [ %i.r, %.lr.ph.1 ] ; 2 uses
  %i.w = phi i64 [ %.ph, %.lr.ph.outer ], [ %i.l, %.lr.ph.1 ] ; 5 uses
  %i.x = add i64 %i.w, 16                         ; 3 uses
  %.not.i = icmp ugt i64 %i.x, %2
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !1270

.thread:                                          ; preds = %.lr.ph.1
  %i.y = tail call noundef <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.r, <16 x i8> zeroinitializer)
  %i.z = add <2 x i64> %i.y, %.sroa.015.041.ph    ; 2 uses
  %i.aa = add i64 %i.w, 48                        ; 2 uses
  %.not.i59 = icmp ugt i64 %i.aa, %2
  br i1 %.not.i59, label %_ZN7simdutf8westmere12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit, label %.lr.ph.outer, !llvm.loop !1270

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa91 = phi <16 x i8> [ %i.v, %bb.b ], [ %i.k, %.lr.ph ]
  %.lcssa89 = phi i64 [ %i.w, %bb.b ], [ %i.x, %.lr.ph ]
  %i.ab = tail call noundef <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa91, <16 x i8> zeroinitializer)
  %i.ac = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ab)
  br label %_ZN7simdutf8westmere12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit

_ZN7simdutf8westmere12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit: ; preds = %.thread, %bb.a, %._crit_edge
  %.017.i.lcssa56 = phi i64 [ %.lcssa89, %._crit_edge ], [ 0, %bb.a ], [ %i.l, %.thread ] ; 3 uses
  %.sroa.015.0.lcssa55 = phi <2 x i64> [ %.sroa.015.041.ph, %._crit_edge ], [ zeroinitializer, %bb.a ], [ %i.z, %.thread ]
  %.016.i = phi i64 [ %i.ac, %._crit_edge ], [ 0, %bb.a ], [ 0, %.thread ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.017.i.lcssa56 ; 2 uses
  %i.ae = sub i64 %2, %.017.i.lcssa56             ; 4 uses
  %.not.i2 = icmp eq i64 %2, %.017.i.lcssa56
  br i1 %.not.i2, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit
  %min.iters.check = icmp ult i64 %i.ae, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader85, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ae, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi79 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %wide.load = load <2 x i8>, ptr %i.af, align 1  ; 2 uses
  %wide.load80 = load <2 x i8>, ptr %i.ag, align 1 ; 2 uses
  %i.ah = icmp sgt <2 x i8> %wide.load, splat (i8 -65)
  %i.ai = icmp sgt <2 x i8> %wide.load80, splat (i8 -65)
  %i.aj = zext <2 x i1> %i.ah to <2 x i64>
  %i.ak = zext <2 x i1> %i.ai to <2 x i64>
  %i.al = add <2 x i64> %vec.phi, %i.aj
  %i.am = add <2 x i64> %vec.phi79, %i.ak
  %i.an = icmp ugt <2 x i8> %wide.load, splat (i8 -17)
  %i.ao = icmp ugt <2 x i8> %wide.load80, splat (i8 -17)
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = zext <2 x i1> %i.ao to <2 x i64>
  %i.ar = add <2 x i64> %i.al, %i.ap              ; 2 uses
  %i.as = add <2 x i64> %i.am, %i.aq              ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !1271

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.as, %i.ar
  %i.au = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %.lr.ph.i.preheader85

.lr.ph.i.preheader85:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.01011.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader85, %.lr.ph.i
  %.012.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader85 ] ; 2 uses
  %.01011.i = phi i64 [ %.2.i, %.lr.ph.i ], [ %.01011.i.ph, %.lr.ph.i.preheader85 ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.012.i
  %i.aw = load i8, ptr %i.av, align 1             ; 2 uses
  %i.ax = icmp sgt i8 %i.aw, -65
  %i.ay = zext i1 %i.ax to i64
  %spec.select.i = add i64 %.01011.i, %i.ay
  %i.az = icmp ugt i8 %i.aw, -17
  %i.ba = zext i1 %i.az to i64
  %.2.i = add i64 %spec.select.i, %i.ba           ; 2 uses
  %i.bb = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %i.ae
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit, label %.lr.ph.i, !llvm.loop !1272

_ZN7simdutf6scalar12_GLOBAL__N_14utf822utf16_length_from_utf8EPKcm.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN7simdutf8westmere12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit
  %.010.lcssa.i = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_14utf831utf16_length_from_utf8_bytemaskEPKcm.exit ], [ %i.au, %middle.block ], [ %.2.i, %.lr.ph.i ]
  %i.bc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %.sroa.015.0.lcssa55)
  %i.bd = add i64 %i.bc, %.016.i
  %i.be = add i64 %i.bd, %.010.lcssa.i
  ret i64 %i.be
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation22utf8_length_from_utf32EPKDim(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #26 align 2 {
bb.a:
  %i.a = lshr i64 %2, 4                           ; 2 uses
  %.not.i73 = icmp eq i64 %i.a, 0
  br i1 %.not.i73, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0.i76 = phi ptr [ %scevgep, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.0141.i75 = phi i64 [ %op.rdx111, %bb.b ], [ 0, %bb.a ]
  %.0144.i74 = phi i64 [ %i.c, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = tail call noundef range(i64 0, 1431655766) i64 @llvm.umin.i64(i64 %.0144.i74, i64 357913941) ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = sub i64 %.0144.i74, %i.b                 ; 2 uses
  %i.d = shl nuw nsw i64 %i.b, 6
  %scevgep = getelementptr i8, ptr %.0.i76, i64 %i.d ; 2 uses
  %i.e = sext <4 x i32> %i.ax to <4 x i64>
  %i.f = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.e)
  %op.rdx111 = add i64 %i.f, %.0141.i75           ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !1273

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.1.i72 = phi ptr [ %.0.i76, %.lr.ph ], [ %i.ay, %bb.c ] ; 5 uses
  %.0145.i71 = phi i64 [ 0, %.lr.ph ], [ %i.az, %bb.c ]
  %i.g = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.ax, %bb.c ]
  %i.h = load <4 x i32>, ptr %.1.i72, align 1     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.1.i72, i64 16
  %i.j = load <4 x i32>, ptr %i.i, align 1        ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.1.i72, i64 32
  %i.l = load <4 x i32>, ptr %i.k, align 1        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.1.i72, i64 48
  %i.n = load <4 x i32>, ptr %i.m, align 1        ; 3 uses
  %i.o = icmp ugt <4 x i32> %i.h, splat (i32 127)
  %i.p = zext <4 x i1> %i.o to <4 x i32>
  %i.q = add <4 x i32> %i.g, %i.p
  %i.r = icmp ugt <4 x i32> %i.j, splat (i32 127)
  %i.s = zext <4 x i1> %i.r to <4 x i32>
  %i.t = icmp ugt <4 x i32> %i.l, splat (i32 127)
  %i.u = zext <4 x i1> %i.t to <4 x i32>
  %i.v = icmp ugt <4 x i32> %i.n, splat (i32 127)
  %i.w = zext <4 x i1> %i.v to <4 x i32>
  %i.x = icmp ugt <4 x i32> %i.h, splat (i32 2047)
  %i.y = zext <4 x i1> %i.x to <4 x i32>
  %i.z = icmp ugt <4 x i32> %i.j, splat (i32 2047)
  %i.aa = zext <4 x i1> %i.z to <4 x i32>
  %i.ab = icmp ugt <4 x i32> %i.l, splat (i32 2047)
  %i.ac = zext <4 x i1> %i.ab to <4 x i32>
  %i.ad = icmp ugt <4 x i32> %i.n, splat (i32 2047)
  %i.ae = zext <4 x i1> %i.ad to <4 x i32>
  %i.af = icmp ugt <4 x i32> %i.h, splat (i32 65535)
  %i.ag = zext <4 x i1> %i.af to <4 x i32>
  %i.ah = icmp ugt <4 x i32> %i.j, splat (i32 65535)
  %i.ai = zext <4 x i1> %i.ah to <4 x i32>
  %i.aj = icmp ugt <4 x i32> %i.l, splat (i32 65535)
  %i.ak = zext <4 x i1> %i.aj to <4 x i32>
  %i.al = icmp ugt <4 x i32> %i.n, splat (i32 65535)
  %i.am = zext <4 x i1> %i.al to <4 x i32>
  %i.an = add <4 x i32> %i.q, %i.y
  %i.ao = add <4 x i32> %i.an, %i.ag
  %i.ap = add <4 x i32> %i.ao, %i.s
  %i.aq = add <4 x i32> %i.ap, %i.aa
  %i.ar = add <4 x i32> %i.aq, %i.ai
  %i.as = add <4 x i32> %i.ar, %i.u
  %i.at = add <4 x i32> %i.as, %i.ac
  %i.au = add <4 x i32> %i.at, %i.ak
  %i.av = add <4 x i32> %i.au, %i.w
  %i.aw = add <4 x i32> %i.av, %i.ae
  %i.ax = add <4 x i32> %i.aw, %i.am              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.1.i72, i64 64
  %i.az = add nuw nsw i64 %.0145.i71, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.az, %i.b
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !1274

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0141.i.lcssa = phi i64 [ 0, %bb.a ], [ %op.rdx111, %bb.b ] ; 2 uses
  %.0.i.lcssa = phi ptr [ %1, %bb.a ], [ %scevgep, %bb.b ] ; 2 uses
  %i.ba = lshr i64 %2, 2
  %i.bb = and i64 %i.ba, 3                        ; 2 uses
  %.not149.i80 = icmp eq i64 %i.bb, 0
  br i1 %.not149.i80, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph85

.lr.ph85:                                         ; preds = %._crit_edge, %bb.d
  %.2.i83 = phi ptr [ %scevgep95, %bb.d ], [ %.0.i.lcssa, %._crit_edge ] ; 2 uses
  %.1142.i82 = phi i64 [ %op.rdx, %bb.d ], [ %.0141.i.lcssa, %._crit_edge ]
  %.0147.i81 = phi i64 [ %i.bd, %bb.d ], [ %i.bb, %._crit_edge ] ; 2 uses
  %i.bc = tail call noundef range(i64 0, 1431655766) i64 @llvm.umin.i64(i64 %.0147.i81, i64 1431655765) ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.bd = sub i64 %.0147.i81, %i.bc               ; 2 uses
  %i.be = shl nuw nsw i64 %i.bc, 4
  %scevgep95 = getelementptr i8, ptr %.2.i83, i64 %i.be ; 2 uses
  %i.bf = sext <4 x i32> %i.br to <4 x i64>
  %i.bg = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.bf)
  %op.rdx = add i64 %i.bg, %.1142.i82             ; 2 uses
  %.not149.i = icmp eq i64 %i.bd, 0
  br i1 %.not149.i, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph85, !llvm.loop !1275

bb.e:                                             ; preds = %.lr.ph85, %bb.e
  %.3.i79 = phi ptr [ %.2.i83, %.lr.ph85 ], [ %i.bs, %bb.e ] ; 2 uses
  %.0146.i78 = phi i64 [ 0, %.lr.ph85 ], [ %i.bt, %bb.e ]
  %i.bh = phi <4 x i32> [ zeroinitializer, %.lr.ph85 ], [ %i.br, %bb.e ]
  %i.bi = load <4 x i32>, ptr %.3.i79, align 1    ; 3 uses
  %i.bj = icmp ugt <4 x i32> %i.bi, splat (i32 127)
  %i.bk = zext <4 x i1> %i.bj to <4 x i32>
  %i.bl = add <4 x i32> %i.bh, %i.bk
  %i.bm = icmp ugt <4 x i32> %i.bi, splat (i32 2047)
  %i.bn = zext <4 x i1> %i.bm to <4 x i32>
  %i.bo = add <4 x i32> %i.bl, %i.bn
  %i.bp = icmp ugt <4 x i32> %i.bi, splat (i32 65535)
  %i.bq = zext <4 x i1> %i.bp to <4 x i32>
  %i.br = add <4 x i32> %i.bo, %i.bq              ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.3.i79, i64 16
  %i.bt = add nuw nsw i64 %.0146.i78, 1           ; 2 uses
  %exitcond96.not = icmp eq i64 %i.bt, %i.bc
  br i1 %exitcond96.not, label %bb.d, label %bb.e, !llvm.loop !1276

_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit: ; preds = %bb.d, %._crit_edge
  %.1142.i.lcssa = phi i64 [ %.0141.i.lcssa, %._crit_edge ], [ %op.rdx, %bb.d ]
  %.2.i.lcssa = phi ptr [ %.0.i.lcssa, %._crit_edge ], [ %scevgep95, %bb.d ] ; 5 uses
  %i.bu = and i64 %2, 3                           ; 3 uses
  %.not.i1 = icmp eq i64 %i.bu, 0
  br i1 %.not.i1, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit
  %i.bv = load i32, ptr %.2.i.lcssa, align 4      ; 3 uses
  %i.bw = icmp ugt i32 %i.bv, 127
  %i.bx = select i1 %i.bw, i64 2, i64 1
  %i.by = icmp ugt i32 %i.bv, 2047
  %i.bz = zext i1 %i.by to i64
  %i.ca = add nuw nsw i64 %i.bx, %i.bz
  %i.cb = icmp ugt i32 %i.bv, 65535
  %i.cc = zext i1 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.ca, %i.cc            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bu, 1
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.ce = add nuw nsw i64 %i.cd, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.2.i.lcssa, i64 4
  %i.cg = load i32, ptr %i.cf, align 4            ; 3 uses
  %i.ch = icmp ugt i32 %i.cg, 127
  %i.ci = zext i1 %i.ch to i64
  %i.cj = add nuw nsw i64 %i.ce, %i.ci
  %i.ck = icmp ugt i32 %i.cg, 2047
  %i.cl = zext i1 %i.ck to i64
  %i.cm = add nuw nsw i64 %i.cj, %i.cl
  %i.cn = icmp ugt i32 %i.cg, 65535
  %i.co = zext i1 %i.cn to i64
  %i.cp = add nuw nsw i64 %i.cm, %i.co            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bu, 2
  br i1 %exitcond.not.i.1, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.cq = add i64 %i.cp, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.2.i.lcssa, i64 8
  %i.cs = load i32, ptr %i.cr, align 4            ; 3 uses
  %i.ct = icmp ugt i32 %i.cs, 127
  %i.cu = zext i1 %i.ct to i64
  %i.cv = add i64 %i.cq, %i.cu
  %i.cw = icmp ugt i32 %i.cs, 2047
  %i.cx = zext i1 %i.cw to i64
  %i.cy = add i64 %i.cv, %i.cx
  %i.cz = icmp ugt i32 %i.cs, 65535
  %i.da = zext i1 %i.cz to i64
  %i.db = add i64 %i.cy, %i.da
  br label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit

_ZN7simdutf6scalar12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit: ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit
  %.014.lcssa.i = phi i64 [ 0, %_ZN7simdutf8westmere12_GLOBAL__N_15utf3222utf8_length_from_utf32EPKDim.exit ], [ %i.cd, %.lr.ph.i ], [ %i.cp, %.lr.ph.i.1 ], [ %i.db, %.lr.ph.i.2 ]
  %.not150.i = icmp eq ptr %.2.i.lcssa, %1
  %i.dc = ptrtoint ptr %.2.i.lcssa to i64
  %i.dd = ptrtoint ptr %1 to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 2
  %i.dg = select i1 %.not150.i, i64 0, i64 %i.df
  %.2143.i = add i64 %i.dg, %.1142.i.lcssa
  %i.dh = add i64 %.2143.i, %.014.lcssa.i
  ret i64 %i.dh
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation23utf16_length_from_utf32EPKDim(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #26 align 2 {
bb.a:
  %.not18 = icmp ult i64 %2, 4
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.a = phi i64 [ %i.l, %.lr.ph ], [ 4, %bb.a ]  ; 3 uses
  %.020 = phi i64 [ %i.a, %.lr.ph ], [ 0, %bb.a ]
  %.01419 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.020
  %i.c = load <4 x i32>, ptr %i.b, align 1
  %i.d = icmp ult <4 x i32> %i.c, splat (i32 65536)
  %i.e = sext <4 x i1> %i.d to <4 x i32>
  %i.f = bitcast <4 x i32> %i.e to <16 x i8>
  %i.g = icmp sgt <16 x i8> %i.f, splat (i8 -1)
  %i.h = bitcast <16 x i1> %i.g to i16
  %narrow = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.h)
  %i.i = lshr i16 %narrow, 2
  %narrow17 = add nuw nsw i16 %i.i, 4
  %i.j = zext nneg i16 %narrow17 to i64
  %i.k = add i64 %.01419, %i.j                    ; 2 uses
  %i.l = add i64 %i.a, 4                          ; 2 uses
  %.not = icmp ugt i64 %i.l, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1277

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.014.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %.lr.ph ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0.lcssa ; 2 uses
  %i.n = sub i64 %2, %.0.lcssa                    ; 3 uses
  %.not.i = icmp eq i64 %2, %.0.lcssa
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3223utf16_length_from_utf32EPKDim.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %min.iters.check = icmp ult i64 %i.n, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.o = and i64 %2, 3                            ; 2 uses
  %n.vec = sub nuw i64 %i.n, %i.o                 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi28 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %i.p = add <2 x i64> %vec.phi, splat (i64 1)
  %i.q = add <2 x i64> %vec.phi28, splat (i64 1)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %wide.load = load <2 x i32>, ptr %i.r, align 4
  %wide.load29 = load <2 x i32>, ptr %i.s, align 4
  %i.t = icmp ugt <2 x i32> %wide.load, splat (i32 65535)
  %i.u = icmp ugt <2 x i32> %wide.load29, splat (i32 65535)
  %i.v = zext <2 x i1> %i.t to <2 x i64>
  %i.w = zext <2 x i1> %i.u to <2 x i64>
  %i.x = add <2 x i64> %i.p, %i.v                 ; 2 uses
  %i.y = add <2 x i64> %i.q, %i.w                 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !1278

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.y, %i.x
  %i.aa = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.o, 0
  br i1 %cmp.n, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3223utf16_length_from_utf32EPKDim.exit, label %.lr.ph.i.preheader30

.lr.ph.i.preheader30:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.089.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader30, %.lr.ph.i
  %.010.i = phi i64 [ %i.ah, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader30 ] ; 2 uses
  %.089.i = phi i64 [ %i.ag, %.lr.ph.i ], [ %.089.i.ph, %.lr.ph.i.preheader30 ]
  %i.ab = add i64 %.089.i, 1
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.010.i
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp ugt i32 %i.ad, 65535
  %i.af = zext i1 %i.ae to i64
  %i.ag = add i64 %i.ab, %i.af                    ; 2 uses
  %i.ah = add nuw i64 %.010.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3223utf16_length_from_utf32EPKDim.exit, label %.lr.ph.i, !llvm.loop !1279

_ZN7simdutf6scalar12_GLOBAL__N_15utf3223utf16_length_from_utf32EPKDim.exit: ; preds = %.lr.ph.i, %middle.block, %._crit_edge
  %.08.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %i.aa, %middle.block ], [ %i.ag, %.lr.ph.i ]
  %i.ai = add i64 %.08.lcssa.i, %.014.lcssa
  ret i64 %i.ai
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZNK7simdutf8westmere14implementation22utf32_length_from_utf8EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #26 align 2 {
bb.a:
  %.not.i19 = icmp ult i64 %2, 64
  br i1 %.not.i19, label %_ZN7simdutf8westmere12_GLOBAL__N_14utf817count_code_pointsEPKcm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.a = phi i64 [ %i.y, %.lr.ph ], [ 64, %bb.a ] ; 3 uses
  %.0.i21 = phi i64 [ %i.a, %.lr.ph ], [ 0, %bb.a ]
  %.011.i20 = phi i64 [ %i.x, %.lr.ph ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i21 ; 4 uses
  %i.c = load <16 x i8>, ptr %i.b, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load <16 x i8>, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load <16 x i8>, ptr %i.f, align 1
end_hunk_3
