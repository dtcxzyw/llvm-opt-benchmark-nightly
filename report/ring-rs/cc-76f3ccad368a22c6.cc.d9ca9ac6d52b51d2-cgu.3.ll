Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.3?download=true
inline.NumInlined: 72
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKjf_Kj1_ECsiHivYpkJ4Hu_2cc
define { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKjf_Kj1_ECsiHivYpkJ4Hu_2cc(ptr %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr %i.a(ptr align 8 null), !inline_history !4 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr nonnull align 8 @3) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RNCNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtB4_11RandomState3new0CsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.b) #23
  ret { i64, i64 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = tail call ptr %i.a(ptr align 8 null)     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RNCNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtB4_11RandomState3new0CsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.b) #23 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj1_ECsiHivYpkJ4Hu_2cc(ptr nofree captures(none) %0, ptr nofree captures(none) %1) unnamed_addr #4 {
bb.a:
  %.sroa.0.0.copyload = load i8, ptr %0, align 1
  %.sroa.02.0.copyload = load i8, ptr %1, align 1
  store i8 %.sroa.02.0.copyload, ptr %0, align 1
  store i8 %.sroa.0.0.copyload, ptr %1, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj2_ECsiHivYpkJ4Hu_2cc(ptr nofree captures(none) %0, ptr nofree captures(none) %1) unnamed_addr #4 {
bb.a:
  %.sroa.0.0.copyload = load i16, ptr %0, align 1
  %.sroa.02.0.copyload = load i16, ptr %1, align 1
  store i16 %.sroa.02.0.copyload, ptr %0, align 1
  store i16 %.sroa.0.0.copyload, ptr %1, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj4_ECsiHivYpkJ4Hu_2cc(ptr nofree captures(none) %0, ptr nofree captures(none) %1) unnamed_addr #4 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 1
  %.sroa.02.0.copyload = load i32, ptr %1, align 1
  store i32 %.sroa.02.0.copyload, ptr %0, align 1
  store i32 %.sroa.0.0.copyload, ptr %1, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECsiHivYpkJ4Hu_2cc(ptr nofree captures(none) %0, ptr nofree captures(none) %1) unnamed_addr #4 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 1
  %.sroa.02.0.copyload = load i64, ptr %1, align 1
  store i64 %.sroa.02.0.copyload, ptr %0, align 1
  store i64 %.sroa.0.0.copyload, ptr %1, align 1
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNtCs3oUPovFnLWP_4core3ptr19swap_nonoverlappingNtNtCskt5MLIAl8nl_9hashbrown3raw13RawTableInnerECsiHivYpkJ4Hu_2cc(ptr nofree captures(none) %0, ptr nofree captures(none) %1, i64 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #5 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytesCsiHivYpkJ4Hu_2cc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl nuw nsw i64 %2, 2                    ; 2 uses
  %min.iters.check = icmp eq i64 %2, 1
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %bb.b
  br label %.lr.ph.i.i

vector.memcheck:                                  ; preds = %bb.b
  %i.b = shl i64 %2, 5                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.b
  %scevgep2 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %0, %scevgep2
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.c, align 1, !alias.scope !5, !noalias !8
  %wide.load3 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !5, !noalias !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load4 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !8
  %wide.load5 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !8
  store <2 x i64> %wide.load4, ptr %i.c, align 1, !alias.scope !5, !noalias !8
  store <2 x i64> %wide.load5, ptr %i.e, align 1, !alias.scope !5, !noalias !8
  store <2 x i64> %wide.load, ptr %i.d, align 1, !alias.scope !8
  store <2 x i64> %wide.load3, ptr %i.f, align 1, !alias.scope !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.g = icmp eq i64 %index.next, %i.a
  br i1 %i.g, label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytesCsiHivYpkJ4Hu_2cc.exit, label %vector.body, !llvm.loop !10

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i ] ; 4 uses
  %i.h = or disjoint i64 %.sroa.0.03.i.i, 1       ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i.i ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.i, align 1
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.j, align 1
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.i, align 1
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.j, align 1
  %i.k = add nuw nsw i64 %.sroa.0.03.i.i, 2       ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.l, align 1
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.m, align 1
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.l, align 1
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.m, align 1
  %exitcond.not.i.i.1 = icmp eq i64 %i.k, %i.a
  br i1 %exitcond.not.i.i.1, label %_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytesCsiHivYpkJ4Hu_2cc.exit, label %.lr.ph.i.i, !llvm.loop !13

_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytesCsiHivYpkJ4Hu_2cc.exit: ; preds = %vector.body, %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsiHivYpkJ4Hu_2cc(ptr nofree captures(none) %0, ptr nofree captures(none) %1, i64 %2) unnamed_addr #6 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %2, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.a
  %scevgep4 = getelementptr i8, ptr %1, i64 %i.a
  %bound0 = icmp ult ptr %0, %scevgep4
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.b, align 1, !alias.scope !14, !noalias !17
  %wide.load5 = load <2 x i64>, ptr %i.d, align 1, !alias.scope !14, !noalias !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %wide.load6 = load <2 x i64>, ptr %i.c, align 1, !alias.scope !17
  %wide.load7 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !17
  store <2 x i64> %wide.load6, ptr %i.b, align 1, !alias.scope !14, !noalias !17
  store <2 x i64> %wide.load7, ptr %i.d, align 1, !alias.scope !14, !noalias !17
  store <2 x i64> %wide.load, ptr %i.c, align 1, !alias.scope !17
  store <2 x i64> %wide.load5, ptr %i.e, align 1, !alias.scope !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader8

.lr.ph.preheader8:                                ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.sroa.0.03.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.03.ph, 1
  %lcmp.mod.not = trunc i64 %2 to i1
  br i1 %lcmp.mod.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader8
  %i.g = or disjoint i64 %.sroa.0.03.ph, 1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.ph ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.ph ; 2 uses
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.h, align 1
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.i, align 1
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.h, align 1
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.i, align 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader8
  %.sroa.0.03.unr = phi i64 [ %.sroa.0.03.ph, %.lr.ph.preheader8 ], [ %i.g, %.lr.ph.prol ]
  %i.j = icmp eq i64 %2, %.neg
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.0.03 = phi i64 [ %i.n, %.lr.ph ], [ %.sroa.0.03.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.k = add nuw i64 %.sroa.0.03, 1               ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 1
  %.sroa.02.0.copyload.i = load i64, ptr %i.m, align 1
  store i64 %.sroa.02.0.copyload.i, ptr %i.l, align 1
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 1
  %i.n = add nuw i64 %.sroa.0.03, 2               ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k ; 2 uses
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.o, align 1
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.p, align 1
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.o, align 1
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.p, align 1
  %exitcond.not.1 = icmp eq i64 %i.n, %2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !20
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXs0_NtNtCs3oUPovFnLWP_4core4hash5implseNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECsiHivYpkJ4Hu_2cc(ptr %0, i64 %1, ptr align 8 %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXs2_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCsiHivYpkJ4Hu_2cc(ptr align 8 %2, ptr %0, i64 %1) #23
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXs3_NtNtCs3oUPovFnLWP_4core4hash5implsReNtB8_4Hash4hashNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherECsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  tail call void @_RNvXs2_NtNtCsaL1QbXo9JQH_3std4hash6randomNtB5_13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCsiHivYpkJ4Hu_2cc(ptr align 8 %1, ptr %i.a, i64 %i.c) #23
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define i8 @_RINvXs_NtNtCs3oUPovFnLWP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldhNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitbEE8try_foldhNCINvMNtB7_9try_traitINtB3R_17NeverShortCircuithE10wrap_mut_2hbNCINvNtNtB16_8adapters3map8map_foldbhhNCNvXNtNtB9_3str4iterNtB5t_5CharsB10_10advance_by0NCINvXsq_NtB14_5accumhNtB6l_3Sum3sumINtB4R_3MapINtB20_8IntoIterbKj20_EB5o_EE0E0E0B46_E0B46_ECsiHivYpkJ4Hu_2cc(ptr nofree align 8 captures(none) %0, i8 %1, ptr %2, i64 %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %0, align 8                ; 2 uses
  %i.e = load i64, ptr %i.c, align 8
  %.not6 = icmp eq i64 %i.d, %i.e
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi i8 [ %1, %bb.a ], [ %i.j, %.lr.ph ]
  %i.f = call i8 @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops9try_traitINtB4_17NeverShortCircuithENtB4_3Try11from_outputCsiHivYpkJ4Hu_2cc(i8 %.sroa.0.0.lcssa) #23
  ret i8 %i.f

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.g = phi i64 [ %i.k, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.0.07 = phi i8 [ %i.j, %.lr.ph ], [ %1, %bb.a ]
  %i.h = add nuw i64 %i.g, 1
  store i64 %i.h, ptr %0, align 8
  %i.i = call i8 @_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitbEE8try_foldhNCINvMNtNtBe_3ops9try_traitINtB2g_17NeverShortCircuithE10wrap_mut_2hbNCINvNtNtNtBe_4iter8adapters3map8map_foldbhhNCNvXNtNtBe_3str4iterNtB44_5CharsNtNtNtB3q_6traits8iterator8Iterator10advance_by0NCINvXsq_NtB4A_5accumhNtB5r_3Sum3sumINtB3m_3MapINtBa_8IntoIterbKj20_EB3Z_EE0E0E0B2B_E0CsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.a, i8 %.sroa.0.07, i64 %i.g) #23
  %i.j = call i8 @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops9try_traitINtB4_17NeverShortCircuithENtB4_3Try6branchCsiHivYpkJ4Hu_2cc(i8 %i.i) #23 ; 2 uses
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.k, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXs_NtNtCs3oUPovFnLWP_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs8_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEE8try_folduNCINvMNtB7_9try_traitINtB4y_17NeverShortCircuituE10wrap_mut_2uB3y_NCINvNvB10_8for_each4callB3y_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB68_3VecB3y_E14extend_trustedINtB20_8IntoIterB3y_Kj6_EE0E0E0B4N_E0B4N_ECsiHivYpkJ4Hu_2cc(ptr nofree align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.b = load i64, ptr %0, align 8                ; 3 uses
  %i.c = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops9try_traitINtB4_17NeverShortCircuituENtB4_3Try11from_outputCsiHivYpkJ4Hu_2cc()
          to label %bb.f unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.b
  %i.d = add nuw i64 %i.b, 1
  store i64 %i.d, ptr %0, align 8
  invoke void @_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB2X_17NeverShortCircuituE10wrap_mut_2uB1X_NCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callB1X_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5e_3VecB1X_E14extend_trustedINtBa_8IntoIterB1X_Kj6_EE0E0E0B3i_E0CsiHivYpkJ4Hu_2cc(ptr align 8 %1, i64 %i.b)
          to label %bb.g unwind label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs8_NtNtNtB4_5array4iter10iter_innerINtBK_15PolymorphicIterSINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEE8try_folduNCINvMNtNtB4_3ops9try_traitINtB3j_17NeverShortCircuituE10wrap_mut_2uB2j_NCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callB2j_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5A_3VecB2j_E14extend_trustedINtBM_8IntoIterB2j_Kj6_EE0E0E0B3E_E0ECsiHivYpkJ4Hu_2cc(ptr align 8 %1) #25
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.c
  tail call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMs8_NtNtNtB4_5array4iter10iter_innerINtBK_15PolymorphicIterSINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEE8try_folduNCINvMNtNtB4_3ops9try_traitINtB3j_17NeverShortCircuituE10wrap_mut_2uB2j_NCINvNvNtNtNtNtB4_4iter6traits8iterator8Iterator8for_each4callB2j_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5A_3VecB2j_E14extend_trustedINtBM_8IntoIterB2j_Kj6_EE0E0E0B3E_E0ECsiHivYpkJ4Hu_2cc(ptr align 8 %1)
  ret void

bb.g:                                             ; preds = %bb.d
  invoke void @_RNvXs_NtNtCs3oUPovFnLWP_4core3ops9try_traitINtB4_17NeverShortCircuituENtB4_3Try6branchCsiHivYpkJ4Hu_2cc()
          to label %bb.b unwind label %.loopexit

bb.h:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.i:                                             ; preds = %bb.e
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define void @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNtB7_3map8map_foldB1s_INtNtCs1xwejQucwHj_5alloc5boxed3BoxB1t_EuNvYB1s_INtNtBb_7convert4IntoB3g_E4intoNCINvNvB2a_8for_each4callB3g_NCINvMsk_NtB3l_3vecINtB59_3VecB3g_E14extend_trustedINtB2U_3MapINtNtB7_5chain5ChainBP_IB5Q_IB13_NtNtB3l_6string6StringEINvMsj_B1v_B1t_3newB6x_EEEB3V_EE0E0E0ECsiHivYpkJ4Hu_2cc(ptr %0, ptr %1, ptr align 8 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, ptr } @_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtNtNtBa_4iter6traits8iterator8Iterator3mapBJ_NvYBJ_NtNtBa_5clone5Clone5cloneECsiHivYpkJ4Hu_2cc(ptr %0, ptr %1) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  tail call void @_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1D_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneQNCIB2l_BQ_INtNtCs1xwejQucwHj_5alloc5boxed3BoxBR_EuNvYBQ_INtNtBb_7convert4IntoB3F_E4intoNCINvNvB1x_8for_each4callB3F_NCINvMsk_NtB3K_3vecINtB5w_3VecB3F_E14extend_trustedINtB2n_3MapINtNtB2p_5chain5ChainINtNtB2p_6cloned6ClonedBF_EIB6d_IBG_NtNtB3K_6string6StringEINvMsj_BT_BR_3newB7i_EEEB4j_EE0E0E0E0ECsiHivYpkJ4Hu_2cc(ptr %i.b, ptr %i.c, ptr align 8 %2) #23
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEENtNtNtBa_6traits8iterator8Iterator5chainINtNtB8_3map3MapIBY_NtNtCs1xwejQucwHj_5alloc6string6StringEINvMsj_B1q_B1o_3newB33_EEECsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr %1, ptr %2, ptr %3, ptr %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtB8_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringEINvMsj_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB2m_5OsStr3newB1C_EENtB2_12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr %3, ptr %4) #23 ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  store ptr %1, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.f, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNCNvMNtNtCsiHivYpkJ4Hu_2cc6target4llvmNtB6_10TargetInfo11llvm_target0B8_(ptr nofree readnone captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.c, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNCNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB7_15RwLockReadGuardINtNtNtNtBd_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIB1S_NtNtNtBd_3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyEE3new0B32_(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %0, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNCNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB7_15RwLockReadGuardINtNtNtNtBd_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB1W_4sync3ArcNtNtNtBd_3ffi6os_str5OsStrEEE3new0CsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %0, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNCNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB7_15RwLockReadGuardINtNtNtNtBd_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB1W_4sync3ArceEEE3new0CsiHivYpkJ4Hu_2cc(ptr align 8 %0) unnamed_addr #1 {
bb.a:
end_hunk_0
begin_hunk_1_@_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB1K_4sync3ArcNtNtNtBb_3ffi6os_str5OsStrEEE4readCsiHivYpkJ4Hu_2cc:bb.a

_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4readCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call i8 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadhKb0_ECsiHivYpkJ4Hu_2cc(ptr nonnull %i.e, i8 0) #23
  %.not.i = icmp ne i8 %i.f, 0
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB24_4sync3ArcNtNtNtB6_3ffi6os_str5OsStrEEENCNvMsd_BQ_BN_3new0ECsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, i1 zeroext %.not.i, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB1K_4sync3ArcNtNtNtBb_3ffi6os_str5OsStrEEE5writeCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic28atomic_compare_exchange_weakmECsiHivYpkJ4Hu_2cc(ptr %1, i32 0, i32 1073741823, i8 2, i8 0) #23
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = tail call { i1, i8 } @_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag5guardCsiHivYpkJ4Hu_2cc(ptr nonnull %i.c) #23 ; 2 uses
  %i.e = extractvalue { i1, i8 } %i.d, 0
  %i.f = extractvalue { i1, i8 } %i.d, 1
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtNtNtB6_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB2f_4sync3ArcNtNtNtB6_3ffi6os_str5OsStrEEENCNvMse_B10_BX_3new0ECsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, i1 zeroext %i.e, i8 %i.f, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB1K_4sync3ArceEEE4readCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadmKb0_ECsiHivYpkJ4Hu_2cc(ptr align 4 %1, i8 0) #23 ; 3 uses
  %or.cond3.i = icmp ult i32 %i.a, 1073741822
  br i1 %or.cond3.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i32 %i.a, 1
  %i.c = tail call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic28atomic_compare_exchange_weakmECsiHivYpkJ4Hu_2cc(ptr align 4 %1, i32 %i.a, i32 %i.b, i8 2, i8 0) #23
  %i.d = extractvalue { i32, i32 } %i.c, 0
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4readCsiHivYpkJ4Hu_2cc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr align 4 %1)
  br label %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4readCsiHivYpkJ4Hu_2cc.exit

_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4readCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call i8 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadhKb0_ECsiHivYpkJ4Hu_2cc(ptr nonnull %i.e, i8 0) #23
  %.not.i = icmp ne i8 %i.f, 0
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB24_4sync3ArceEEENCNvMsd_BQ_BN_3new0ECsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, i1 zeroext %.not.i, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB1K_4sync3ArceEEE5writeCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic28atomic_compare_exchange_weakmECsiHivYpkJ4Hu_2cc(ptr %1, i32 0, i32 1073741823, i8 2, i8 0) #23
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = tail call { i1, i8 } @_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag5guardCsiHivYpkJ4Hu_2cc(ptr nonnull %i.c) #23 ; 2 uses
  %i.e = extractvalue { i1, i8 } %i.d, 0
  %i.f = extractvalue { i1, i8 } %i.d, 1
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtNtNtB6_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB2f_4sync3ArceEEENCNvMse_B10_BX_3new0ECsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, i1 zeroext %i.e, i8 %i.f, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEE4readB1H_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadmKb0_ECsiHivYpkJ4Hu_2cc(ptr align 4 %1, i8 0) #23 ; 3 uses
  %or.cond3.i = icmp ult i32 %i.a, 1073741822
  br i1 %or.cond3.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i32 %i.a, 1
  %i.c = tail call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic28atomic_compare_exchange_weakmECsiHivYpkJ4Hu_2cc(ptr align 4 %1, i32 %i.a, i32 %i.b, i8 2, i8 0) #23
  %i.d = extractvalue { i32, i32 } %i.c, 0
  %.not2.i = icmp eq i32 %i.d, 0
  br i1 %.not2.i, label %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4readCsiHivYpkJ4Hu_2cc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr align 4 %1)
  br label %_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4readCsiHivYpkJ4Hu_2cc.exit

_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock4readCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call i8 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadhKb0_ECsiHivYpkJ4Hu_2cc(ptr nonnull %i.e, i8 0) #23
  %.not.i = icmp ne i8 %i.f, 0
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3map7HashMapNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEENCNvMsd_BQ_BN_3new0EB21_(ptr sret([24 x i8]) align 8 %0, i1 zeroext %.not.i, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMs9_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEE5writeB1H_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i32, i32 } @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic28atomic_compare_exchange_weakmECsiHivYpkJ4Hu_2cc(ptr %1, i32 0, i32 1073741823, i8 2, i8 0) #23
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = tail call { i1, i8 } @_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag5guardCsiHivYpkJ4Hu_2cc(ptr nonnull %i.c) #23 ; 2 uses
  %i.e = extractvalue { i1, i8 } %i.d, 0
  %i.f = extractvalue { i1, i8 } %i.d, 1
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtNtNtB6_11collections4hash3map7HashMapNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEENCNvMse_B10_BX_3new0EB2c_(ptr sret([24 x i8]) align 8 %0, i1 zeroext %i.e, i8 %i.f, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_fmtCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr %1, ptr %2) unnamed_addr #3 {
_RNvMs4_NtCs3oUPovFnLWP_4core3fmtNtB5_9Arguments23as_statically_known_strCsiHivYpkJ4Hu_2cc.exit:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr %i.a, ptr align 8 %i.c, ptr %1, ptr %2)
  ret i1 %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMsb_NtNtCs3oUPovFnLWP_4core9core_arch4simdINtB5_4SimdaKj10_E5splatCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0, i8 %1) unnamed_addr #9 {
bb.a:
  %i.a = insertelement <16 x i8> poison, i8 %1, i64 0
  %i.b = shufflevector <16 x i8> %i.a, <16 x i8> poison, <16 x i32> zeroinitializer
  store <16 x i8> %i.b, ptr %0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIB1Q_NtNtNtBb_3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyEE3newB30_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call i8 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadhKb0_ECsiHivYpkJ4Hu_2cc(ptr nonnull %i.a, i8 0) #23
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxSIB20_NtNtNtB6_3ffi6os_str5OsStrEENtNtCsiHivYpkJ4Hu_2cc4tool10ToolFamilyEENCNvMsd_BQ_BN_3new0EB3a_(ptr sret([24 x i8]) align 8 %0, i1 zeroext %.not, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB1U_4sync3ArcNtNtNtBb_3ffi6os_str5OsStrEEE3newCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call i8 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadhKb0_ECsiHivYpkJ4Hu_2cc(ptr nonnull %i.a, i8 0) #23
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB24_4sync3ArcNtNtNtB6_3ffi6os_str5OsStrEEENCNvMsd_BQ_BN_3new0ECsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, i1 zeroext %.not, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB1U_4sync3ArceEEE3newCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call i8 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadhKb0_ECsiHivYpkJ4Hu_2cc(ptr nonnull %i.a, i8 0) #23
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3map7HashMapINtNtCs1xwejQucwHj_5alloc5boxed3BoxeEINtNtB24_4sync3ArceEEENCNvMsd_BQ_BN_3new0ECsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, i1 zeroext %.not, ptr align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEE3newB1R_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call i8 @_RINvNtNtCs3oUPovFnLWP_4core4sync6atomic11atomic_loadhKb0_ECsiHivYpkJ4Hu_2cc(ptr nonnull %i.a, i8 0) #23
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardINtNtNtNtB6_11collections4hash3map7HashMapNtCsiHivYpkJ4Hu_2cc12CompilerFlagbEENCNvMsd_BQ_BN_3new0EB21_(ptr sret([24 x i8]) align 8 %0, i1 zeroext %.not, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden range(i8 -1, 44) i8 @_RNvMsf_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_9ErrorKind9from_primCsiHivYpkJ4Hu_2cc(i32 %0) unnamed_addr #1 {
switch.lookup:
  %i.a = icmp ult i32 %0, 44
  %switch.idx.cast = trunc i32 %0 to i8
  %spec.select = select i1 %i.a, i8 %switch.idx.cast, i8 -1
  ret i8 %spec.select
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsiHivYpkJ4Hu_2cc(ptr sret([24 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %3 = trunc i64 %i.c to i1
  %i.d = lshr i64 %i.c, 1
  %.sroa.0.0 = select i1 %3, ptr %1, ptr null
  call void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3U9i7nQCKwt_15find_msvc_tools(ptr sret([24 x i8]) align 8 %0, ptr %.sroa.0.0, i64 %i.d, ptr nonnull align 8 %i.a) #23
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden void @_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytesCsiHivYpkJ4Hu_2cc(ptr nofree captures(none) %0, ptr nofree captures(none) %1, i64 %2) unnamed_addr #5 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 6 uses
  %i.b = and i64 %2, 7                            ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsiHivYpkJ4Hu_2cc.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 64
  br i1 %min.iters.check, label %.lr.ph.i.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.c = and i64 %2, -8                           ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.c
  %scevgep8 = getelementptr i8, ptr %1, i64 %i.c
  %bound0 = icmp ult ptr %0, %scevgep8
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.d, align 1, !alias.scope !22, !noalias !25
  %wide.load9 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !22, !noalias !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load10 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !25
  %wide.load11 = load <2 x i64>, ptr %i.g, align 1, !alias.scope !25
  store <2 x i64> %wide.load10, ptr %i.d, align 1, !alias.scope !22, !noalias !25
  store <2 x i64> %wide.load11, ptr %i.f, align 1, !alias.scope !22, !noalias !25
  store <2 x i64> %wide.load, ptr %i.e, align 1, !alias.scope !25
  store <2 x i64> %wide.load9, ptr %i.g, align 1, !alias.scope !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsiHivYpkJ4Hu_2cc.exit, label %.lr.ph.i.preheader12

.lr.ph.i.preheader12:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.sroa.0.03.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.03.i.ph, 1
  %lcmp.mod.not = trunc i64 %i.a to i1
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader12
  %i.i = or disjoint i64 %.sroa.0.03.i.ph, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i.ph ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i.ph ; 2 uses
  %.sroa.0.0.copyload.i.i.prol = load i64, ptr %i.j, align 1
  %.sroa.02.0.copyload.i.i.prol = load i64, ptr %i.k, align 1
  store i64 %.sroa.02.0.copyload.i.i.prol, ptr %i.j, align 1
  store i64 %.sroa.0.0.copyload.i.i.prol, ptr %i.k, align 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader12
  %.sroa.0.03.i.unr = phi i64 [ %.sroa.0.03.i.ph, %.lr.ph.i.preheader12 ], [ %i.i, %.lr.ph.i.prol ]
  %i.l = icmp eq i64 %i.a, %.neg
  br i1 %i.l, label %_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsiHivYpkJ4Hu_2cc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.03.i = phi i64 [ %i.p, %.lr.ph.i ], [ %.sroa.0.03.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.m = add nuw nsw i64 %.sroa.0.03.i, 1         ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.03.i ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.03.i ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.n, align 1
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.o, align 1
  store i64 %.sroa.02.0.copyload.i.i, ptr %i.n, align 1
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.o, align 1
  %i.p = add nuw nsw i64 %.sroa.0.03.i, 2         ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m ; 2 uses
  %.sroa.0.0.copyload.i.i.1 = load i64, ptr %i.q, align 1
  %.sroa.02.0.copyload.i.i.1 = load i64, ptr %i.r, align 1
  store i64 %.sroa.02.0.copyload.i.i.1, ptr %i.q, align 1
  store i64 %.sroa.0.0.copyload.i.i.1, ptr %i.r, align 1
  %exitcond.not.i.1 = icmp eq i64 %i.p, %i.a
  br i1 %exitcond.not.i.1, label %_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsiHivYpkJ4Hu_2cc.exit, label %.lr.ph.i, !llvm.loop !28

_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsiHivYpkJ4Hu_2cc.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.not4 = icmp eq i64 %i.b, 0
  br i1 %.not4, label %_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsiHivYpkJ4Hu_2cc.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsiHivYpkJ4Hu_2cc.exit
  %i.s = and i64 %2, -8                           ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 4 uses
  %i.v = icmp samesign ult i64 %i.b, 4
  br i1 %i.v, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i5 = load i32, ptr %i.t, align 1
  %.sroa.02.0.copyload.i.i6 = load i32, ptr %i.u, align 1
  store i32 %.sroa.02.0.copyload.i.i6, ptr %i.t, align 1
  store i32 %.sroa.0.0.copyload.i.i5, ptr %i.u, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 4, %bb.c ] ; 4 uses
  %i.w = and i64 %2, 2
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.0.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.i ; 2 uses
  %.sroa.0.0.copyload.i9.i = load i16, ptr %i.y, align 1
  %.sroa.02.0.copyload.i10.i = load i16, ptr %i.z, align 1
  store i16 %.sroa.02.0.copyload.i10.i, ptr %i.y, align 1
  store i16 %.sroa.0.0.copyload.i9.i, ptr %i.z, align 1
  %i.aa = or disjoint i64 %.sroa.0.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.aa, %bb.e ] ; 2 uses
  %3 = trunc i64 %2 to i1
  br i1 %3, label %bb.g, label %_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsiHivYpkJ4Hu_2cc.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.1.i ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.1.i ; 2 uses
  %.sroa.0.0.copyload.i11.i = load i8, ptr %i.ab, align 1
  %.sroa.02.0.copyload.i12.i = load i8, ptr %i.ac, align 1
  store i8 %.sroa.02.0.copyload.i12.i, ptr %i.ab, align 1
  store i8 %.sroa.0.0.copyload.i11.i, ptr %i.ac, align 1
  br label %_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsiHivYpkJ4Hu_2cc.exit

_RNvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_shortCsiHivYpkJ4Hu_2cc.exit: ; preds = %bb.g, %bb.f, %_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsiHivYpkJ4Hu_2cc.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i32, i32 } @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB8_3ops5range5RangelENtB2_12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(i32 %0, i32 %1) unnamed_addr #1 {
bb.a:
  %i.a = insertvalue { i32, i32 } poison, i32 %0, 0
  %i.b = insertvalue { i32, i32 } %i.a, i32 %1, 1
  ret { i32, i32 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher15next_match_backCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = load i64, ptr %i.e, align 8              ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  %.not31 = icmp ugt i64 %i.g, %i.c
  %or.cond32 = select i1 %i.h, i1 true, i1 %.not31
  br i1 %or.cond32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.pre = load i8, ptr %i.j, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.k = phi i8 [ %.pre, %.lr.ph ], [ %i.z, %bb.e ]
  %i.l = phi i64 [ %i.g, %.lr.ph ], [ %i.y, %bb.e ]
  %i.m = phi i64 [ %i.f, %.lr.ph ], [ %i.x, %bb.e ] ; 2 uses
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  %i.p = zext i8 %i.k to i64
  %i.q = getelementptr i8, ptr %i.i, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr15memrchr_aligned(i8 %i.s, ptr %i.o, i64 %i.n) ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = extractvalue { i64, i64 } %i.t, 1
  %i.x = load i64, ptr %i.d, align 8              ; 3 uses
  %i.y = add i64 %i.x, %i.w                       ; 6 uses
  %i.z = load i8, ptr %i.j, align 8               ; 3 uses
  %i.aa = zext i8 %i.z to i64                     ; 4 uses
  %i.ab = add nsw i64 %i.aa, -1                   ; 2 uses
  %.not15 = icmp ult i64 %i.y, %i.ab
  br i1 %.not15, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ac = load i64, ptr %i.d, align 8
  store i64 %i.ac, ptr %i.e, align 8
  br label %._crit_edge

bb.e:                                             ; preds = %bb.f, %bb.i, %bb.c
  store i64 %i.y, ptr %i.e, align 8
  %i.ad = icmp ult i64 %i.y, %i.x
  %.not = icmp ugt i64 %i.y, %i.c
  %or.cond = select i1 %i.ad, i1 true, i1 %.not
  br i1 %or.cond, label %._crit_edge, label %bb.b

bb.f:                                             ; preds = %bb.c
  %i.ae = sub nuw i64 %i.y, %i.ab                 ; 5 uses
  %i.af = add i64 %i.ae, %i.aa                    ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %.not16 = icmp ugt i64 %i.af, %i.c
  %or.cond17 = select i1 %i.ag, i1 true, i1 %.not16
  br i1 %or.cond17, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp ult i8 %i.z, 5
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 0, i64 %i.aa, i64 4, ptr nonnull align 8 @532) #24
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ae
  %bcmp = tail call i32 @bcmp(ptr %i.ai, ptr nonnull %i.i, i64 %i.aa)
  %i.aj = icmp eq i32 %bcmp, 0
  br i1 %i.aj, label %bb.j, label %bb.e

bb.j:                                             ; preds = %bb.i
  store i64 %i.ae, ptr %i.e, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ae, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.al, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.a, %bb.d, %bb.j
  %.sink = phi i64 [ 0, %bb.d ], [ 1, %bb.j ], [ 0, %bb.a ], [ 0, %bb.e ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRbNtB6_5Debug3fmtCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXsg_NtCs3oUPovFnLWP_4core3fmtbNtB5_7Display3fmt(ptr %i.a, ptr align 8 %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRDNtB6_7DisplayEL_Bx_3fmtCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !29, !nonnull !29
  %i.f = tail call zeroext i1 %i.e(ptr %i.a, ptr align 8 %1) #23
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_7Display3fmtCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr align 8 %i.a, ptr align 8 %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRReNtB6_7Display3fmtCsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsaDvkSoazevh_14rustc_demangle(ptr align 8 %i.a, ptr align 8 %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern12is_prefix_ofCsiHivYpkJ4Hu_2cc(i32 %0, ptr %1, i64 %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.b = call { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCsiHivYpkJ4Hu_2cc(i32 %0, ptr nonnull %i.a, i64 4) #23 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  %i.e = call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs1OFHugREOcC_9addr2line(ptr %1, i64 %2, ptr %i.c, i64 %i.d)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern12is_suffix_ofCsiHivYpkJ4Hu_2cc(i32 %0, ptr %1, i64 %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.b = call { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCsiHivYpkJ4Hu_2cc(i32 %0, ptr nonnull %i.a, i64 4) #23 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  %i.e = call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh9ends_withCs1OFHugREOcC_9addr2line(ptr %1, i64 %2, ptr %i.c, i64 %i.d)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern13into_searcherCsiHivYpkJ4Hu_2cc(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 41)) %0, i32 %1, ptr %2, i64 %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  store i32 0, ptr %i.a, align 4
  %i.b = call { ptr, i64 } @_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCsiHivYpkJ4Hu_2cc(i32 %1, ptr nonnull %i.a, i64 4) #23
  %i.c = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %i.d = icmp ugt i64 %i.c, 255                   ; 2 uses
  %i.e = trunc nuw i64 %i.c to i8
  %.sroa.3.0 = select i1 %i.d, i8 2, i8 %i.e
  %i.f = call i8 @_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6expectCsiHivYpkJ4Hu_2cc(i1 zeroext %i.d, i8 %.sroa.3.0, ptr nonnull @533, i64 32, ptr nonnull align 8 @534) #23
  %.sroa.01.0.copyload = load i32, ptr %i.a, align 4
  store ptr %2, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.f, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_1
