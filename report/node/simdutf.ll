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
end_hunk_0
