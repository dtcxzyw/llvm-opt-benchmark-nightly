Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_tree_test?download=true
inline.NumInlined: 27414
inline.NumDeleted: 3408
loop-unroll.NumRuntimeUnrolled: 494
loop-unroll.NumUnrolled: 502
begin_hunk_0_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev:bb.a
_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::stable_vector_iterator.72", align 8 ; 4 uses
  %2 = alloca %"class.boost::container::stable_vector_iterator.72", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator.71", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6228)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1907, !noalias !6231
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1912, !noalias !6231
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1913, !noalias !6231
  br label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE5clearEv.exit

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE5clearEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i.i = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  store ptr %storemerge.i.i.i, ptr %1, align 8, !tbaa !4568, !alias.scope !6231
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %2, align 8, !tbaa !4568, !alias.scope !6232
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE5eraseENS0_22stable_vector_iteratorIPS3_Lb1EEES7_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::stable_vector_iterator.71") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dead_on_return %1, ptr noundef nonnull align 8 dead_on_return %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.h = load i64, ptr %i.a, align 8, !tbaa !1907 ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE15priv_clear_poolEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE5clearEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1912
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.h ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1913 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE15priv_clear_poolEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -16 ; 2 uses
  %i.o = load i64, ptr %0, align 8, !tbaa !4979   ; 2 uses
  %.not.i.i.i.i1 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i1, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS5_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !1913
  store ptr null, ptr %i.m, align 8, !tbaa !2317
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.08.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i ], [ %i.o, %.lr.ph.preheader.i.i.i ]
  %.sroa.0.07.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.q = add i64 %.08.i.i.i, -1                   ; 2 uses
  %i.r = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !2317
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.07.i.i.i, i64 noundef 16) #21
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS5_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !5064

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS5_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit.i: ; preds = %.lr.ph.i.i.i, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store i64 0, ptr %0, align 8, !tbaa !4979
  br label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE15priv_clear_poolEv.exit

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE15priv_clear_poolEv.exit: ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE21deallocate_individualERNS0_3dtl31transform_multiallocation_chainINS5_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIPS3_EEEE.exit.i, %bb.d, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE5clearEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1917 ; 2 uses
  %.not.i.i2 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i2, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE15priv_clear_poolEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1918
  %i.w = shl i64 %i.t, 3
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.w) #21
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvED2Ev.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvED2Ev.exit: ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intEvE15priv_clear_poolEv.exit, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !6237
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9container12length_errorE, i64 16), ptr %i.a, align 8, !tbaa !6241
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost9container12length_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #19
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container12length_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost9container9exception4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6237 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not, ptr @.str.1, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container15throw_bad_allocEv() local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str.2, ptr %i.b, align 8, !tbaa !6237
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9container9bad_allocE, i64 16), ptr %i.a, align 8, !tbaa !6241
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost9container9bad_allocE, ptr nonnull @_ZNSt9exceptionD2Ev) #19
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container9bad_allocD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE6assignIPS6_EEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS2_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.h, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #20 ; 8 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !9    ; 2 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE16priv_destroy_allEv.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.m = trunc i64 %i.l to i32
  %i.n = shl i32 %i.m, 1
  %i.o = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.n
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE16priv_destroy_allEv.exit

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE16priv_destroy_allEv.exit: ; preds = %bb.e, %.lr.ph.preheader.i.i
  store i64 0, ptr %i.k, align 8, !tbaa !9
  %i.p = shl i64 %i.f, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #21
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS4_16simple_allocatorIS6_EEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !15
  store i64 %i.d, ptr %i.e, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not16.i.i = icmp eq ptr %1, %2
  br i1 %.not16.i.i, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 3 uses
  %i.r = add i64 %i.a, -8
  %i.s = sub i64 %i.r, %i.b                       ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check89 = icmp ult i64 %i.s, 72
  br i1 %min.iters.check89, label %.lr.ph.i.i.preheader112, label %vector.memcheck83

vector.memcheck83:                                ; preds = %.lr.ph.i.i.preheader
  %i.v = add i64 %i.a, -8
  %i.w = sub i64 %i.v, %i.b
  %i.x = and i64 %i.w, -8
  %i.y = getelementptr i8, ptr %1, i64 %i.x
  %scevgep84 = getelementptr i8, ptr %i.y, i64 8
  %bound085 = icmp ugt ptr %scevgep84, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound186 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict87 = and i1 %bound085, %bound186
  br i1 %found.conflict87, label %.lr.ph.i.i.preheader112, label %vector.ph90

vector.ph90:                                      ; preds = %vector.memcheck83
  %n.vec91 = and i64 %i.u, 4611686018427387900    ; 3 uses
  %i.z = shl i64 %n.vec91, 3                      ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.i, i64 %i.z    ; 2 uses
  %i.ac = insertelement <2 x i32> <i32 poison, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next107, %vector.body92 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ac, %vector.ph90 ], [ %i.af, %vector.body92 ]
  %vec.phi94 = phi <2 x i32> [ zeroinitializer, %vector.ph90 ], [ %i.ag, %vector.body92 ]
  %i.ad = shl i64 %index93, 3                     ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 16               ; 2 uses
  %next.gep95 = getelementptr i8, ptr %1, i64 %i.ad
  %next.gep96 = getelementptr i8, ptr %1, i64 %i.ae
  %next.gep97 = getelementptr i8, ptr %i.i, i64 %i.ad
  %next.gep98 = getelementptr i8, ptr %i.i, i64 %i.ae
  %wide.vec99 = load <4 x i32>, ptr %next.gep95, align 4, !tbaa !21, !alias.scope !6243
  %wide.vec102 = load <4 x i32>, ptr %next.gep96, align 4, !tbaa !21, !alias.scope !6243
  store <4 x i32> %wide.vec99, ptr %next.gep97, align 4, !tbaa !21, !alias.scope !6246
  store <4 x i32> %wide.vec102, ptr %next.gep98, align 4, !tbaa !21, !alias.scope !6246
  %i.af = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.ag = add <2 x i32> %vec.phi94, splat (i32 2) ; 2 uses
  %index.next107 = add nuw i64 %index93, 4        ; 2 uses
  %i.ah = icmp eq i64 %index.next107, %n.vec91
  br i1 %i.ah, label %middle.block108, label %vector.body92, !llvm.loop !6248

middle.block108:                                  ; preds = %vector.body92
  %bin.rdx = add <2 x i32> %i.ag, %i.af
  %i.ai = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !alias.scope !6249, !noalias !6243
  %cmp.n109 = icmp eq i64 %i.u, %n.vec91
  br i1 %cmp.n109, label %.loopexit, label %.lr.ph.i.i.preheader112

.lr.ph.i.i.preheader112:                          ; preds = %vector.memcheck83, %.lr.ph.i.i.preheader, %middle.block108
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck83 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block108 ]
  %.018.i.i.ph = phi ptr [ %1, %vector.memcheck83 ], [ %1, %.lr.ph.i.i.preheader ], [ %i.aa, %middle.block108 ]
  %.01517.i.i.ph = phi ptr [ %i.i, %vector.memcheck83 ], [ %i.i, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block108 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader112, %.lr.ph.i.i
  %i.aj = phi i32 [ %i.al, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader112 ]
  %.018.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.018.i.i.ph, %.lr.ph.i.i.preheader112 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %.01517.i.i.ph, %.lr.ph.i.i.preheader112 ] ; 2 uses
  %i.ak = load <2 x i32>, ptr %.018.i.i, align 4, !tbaa !21
  store <2 x i32> %i.ak, ptr %.01517.i.i, align 4, !tbaa !21
  %i.al = add i32 %i.aj, 2                        ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, %2
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !6251

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %middle.block108, %bb.f
  %.015.lcssa.i.i = phi ptr [ %i.i, %bb.f ], [ %i.ab, %middle.block108 ], [ %i.an, %.loopexit.loopexit ]
  %i.ao = ptrtoint ptr %.015.lcssa.i.i to i64
  %i.ap = ptrtoint ptr %i.i to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  store i64 %i.ar, ptr %i.q, align 8, !tbaa !16
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.as = load ptr, ptr %0, align 8, !tbaa !15    ; 15 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !9  ; 13 uses
  %i.av = icmp ult i64 %i.au, %i.d
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not7.i.i = icmp eq i64 %i.au, 0
  br i1 %.not7.i.i, label %_ZN5boost9container18copy_n_source_destIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EES7_EENS2_38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i21.preheader

.lr.ph.i.i21.preheader:                           ; preds = %bb.h
  %min.iters.check60 = icmp ult i64 %i.au, 8
  br i1 %min.iters.check60, label %.lr.ph.i.i21.preheader115, label %vector.memcheck53

vector.memcheck53:                                ; preds = %.lr.ph.i.i21.preheader
  %i.aw = shl i64 %i.au, 3                        ; 2 uses
  %scevgep54 = getelementptr i8, ptr %i.as, i64 %i.aw
  %scevgep55 = getelementptr i8, ptr %1, i64 %i.aw
  %bound056 = icmp ult ptr %i.as, %scevgep55
  %bound157 = icmp ult ptr %1, %scevgep54
  %found.conflict58 = and i1 %bound056, %bound157
  br i1 %found.conflict58, label %.lr.ph.i.i21.preheader115, label %vector.ph61

vector.ph61:                                      ; preds = %vector.memcheck53
  %n.vec62 = and i64 %i.au, -4                    ; 3 uses
  %i.ax = shl i64 %n.vec62, 3                     ; 2 uses
  %i.ay = getelementptr i8, ptr %i.as, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %1, i64 %i.ax     ; 2 uses
  %i.ba = and i64 %i.au, 3
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next77, %vector.body63 ] ; 2 uses
  %i.bb = shl i64 %index64, 3                     ; 3 uses
  %i.bc = or disjoint i64 %i.bb, 16               ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.as, i64 %i.bb
  %next.gep66 = getelementptr i8, ptr %i.as, i64 %i.bc
  %next.gep67 = getelementptr i8, ptr %1, i64 %i.bb
  %next.gep68 = getelementptr i8, ptr %1, i64 %i.bc
  %wide.vec69 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !21, !alias.scope !6252
  %wide.vec72 = load <4 x i32>, ptr %next.gep68, align 4, !tbaa !21, !alias.scope !6252
  store <4 x i32> %wide.vec69, ptr %next.gep65, align 4, !tbaa !21, !alias.scope !6255, !noalias !6252
  store <4 x i32> %wide.vec72, ptr %next.gep66, align 4, !tbaa !21, !alias.scope !6255, !noalias !6252
  %index.next77 = add nuw i64 %index64, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next77, %n.vec62
  br i1 %i.bd, label %middle.block78, label %vector.body63, !llvm.loop !6257

middle.block78:                                   ; preds = %vector.body63
  %cmp.n79 = icmp eq i64 %i.au, %n.vec62
  br i1 %cmp.n79, label %_ZN5boost9container18copy_n_source_destIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EES7_EENS2_38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i21.preheader115

.lr.ph.i.i21.preheader115:                        ; preds = %vector.memcheck53, %.lr.ph.i.i21.preheader, %middle.block78
  %.ph116 = phi ptr [ %i.as, %vector.memcheck53 ], [ %i.as, %.lr.ph.i.i21.preheader ], [ %i.ay, %middle.block78 ] ; 2 uses
  %.09.i.i.ph = phi ptr [ %1, %vector.memcheck53 ], [ %1, %.lr.ph.i.i21.preheader ], [ %i.az, %middle.block78 ] ; 2 uses
  %.068.i.i.ph = phi i64 [ %i.au, %vector.memcheck53 ], [ %i.au, %.lr.ph.i.i21.preheader ], [ %i.ba, %middle.block78 ] ; 4 uses
  %i.be = add i64 %.068.i.i.ph, -1
  %xtraiter120 = and i64 %.068.i.i.ph, 3          ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph.i.i21.prol.loopexit, label %.lr.ph.i.i21.prol

.lr.ph.i.i21.prol:                                ; preds = %.lr.ph.i.i21.preheader115, %.lr.ph.i.i21.prol
  %i.bf = phi ptr [ %i.bm, %.lr.ph.i.i21.prol ], [ %.ph116, %.lr.ph.i.i21.preheader115 ] ; 3 uses
  %.09.i.i.prol = phi ptr [ %i.bl, %.lr.ph.i.i21.prol ], [ %.09.i.i.ph, %.lr.ph.i.i21.preheader115 ] ; 3 uses
  %.068.i.i.prol = phi i64 [ %i.bg, %.lr.ph.i.i21.prol ], [ %.068.i.i.ph, %.lr.ph.i.i21.preheader115 ]
  %prol.iter122 = phi i64 [ %prol.iter122.next, %.lr.ph.i.i21.prol ], [ 0, %.lr.ph.i.i21.preheader115 ]
  %i.bg = add i64 %.068.i.i.prol, -1              ; 2 uses
  %i.bh = load i32, ptr %.09.i.i.prol, align 4, !tbaa !21
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !21
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %prol.iter122.next = add i64 %prol.iter122, 1   ; 2 uses
  %prol.iter122.cmp.not = icmp eq i64 %prol.iter122.next, %xtraiter120
  br i1 %prol.iter122.cmp.not, label %.lr.ph.i.i21.prol.loopexit, label %.lr.ph.i.i21.prol, !llvm.loop !6258

.lr.ph.i.i21.prol.loopexit:                       ; preds = %.lr.ph.i.i21.prol, %.lr.ph.i.i21.preheader115
  %.lcssa118.unr = phi ptr [ poison, %.lr.ph.i.i21.preheader115 ], [ %i.bl, %.lr.ph.i.i21.prol ]
  %.lcssa117.unr = phi ptr [ poison, %.lr.ph.i.i21.preheader115 ], [ %i.bm, %.lr.ph.i.i21.prol ]
  %.unr = phi ptr [ %.ph116, %.lr.ph.i.i21.preheader115 ], [ %i.bm, %.lr.ph.i.i21.prol ]
  %.09.i.i.unr = phi ptr [ %.09.i.i.ph, %.lr.ph.i.i21.preheader115 ], [ %i.bl, %.lr.ph.i.i21.prol ]
  %.068.i.i.unr = phi i64 [ %.068.i.i.ph, %.lr.ph.i.i21.preheader115 ], [ %i.bg, %.lr.ph.i.i21.prol ]
  %i.bn = icmp ult i64 %i.be, 3
  br i1 %i.bn, label %_ZN5boost9container18copy_n_source_destIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EES7_EENS2_38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21.prol.loopexit, %.lr.ph.i.i21
  %i.bo = phi ptr [ %i.cn, %.lr.ph.i.i21 ], [ %.unr, %.lr.ph.i.i21.prol.loopexit ] ; 9 uses
  %.09.i.i = phi ptr [ %i.cm, %.lr.ph.i.i21 ], [ %.09.i.i.unr, %.lr.ph.i.i21.prol.loopexit ] ; 9 uses
  %.068.i.i = phi i64 [ %i.ch, %.lr.ph.i.i21 ], [ %.068.i.i.unr, %.lr.ph.i.i21.prol.loopexit ]
  %i.bp = load i32, ptr %.09.i.i, align 4, !tbaa !21
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !21
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !21
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SG_T0_NS0_9iter_sizeISG_E4typeEb:bb.a
  %i.ku = getelementptr inbounds i8, ptr %.026.i156324, i64 -4 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.kw = load i32, ptr %i.ku, align 4, !tbaa !21
  store i32 %i.kw, ptr %i.kv, align 4, !tbaa !21
  store i32 0, ptr %i.ku, align 4, !tbaa !21
  %.not32.i = icmp eq ptr %i.kt, %.0202
  br i1 %.not32.i, label %._crit_edge330, label %.lr.ph326, !llvm.loop !7644

.lr.ph326:                                        ; preds = %bb.au, %bb.av
  %i.kx = phi ptr [ %i.kt, %bb.av ], [ %i.kp, %bb.au ] ; 6 uses
  %.026.i156324 = phi ptr [ %i.ky, %bb.av ], [ %.pn38.i, %bb.au ] ; 2 uses
  %.027.i323 = phi ptr [ %i.kx, %bb.av ], [ %.02940.i, %bb.au ]
  %i.ky = getelementptr inbounds i8, ptr %.026.i156324, i64 -8 ; 3 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !21 ; 2 uses
  %i.la = icmp slt i32 %i.ki, %i.kz
  br i1 %i.la, label %bb.av, label %._crit_edge327, !llvm.loop !7644

._crit_edge327:                                   ; preds = %.lr.ph326
  br label %._crit_edge330, !llvm.loop !7644

._crit_edge330:                                   ; preds = %bb.av, %._crit_edge327, %bb.au
  %.027.i.lcssa = phi ptr [ %.027.i323, %._crit_edge327 ], [ %.02940.i, %bb.au ], [ %i.kx, %bb.av ]
  %.lcssa.i = phi ptr [ %i.kx, %._crit_edge327 ], [ %.0202, %bb.au ], [ %.0202, %bb.av ] ; 2 uses
  store i32 %i.ki, ptr %.lcssa.i, align 4, !tbaa !21
  %i.lb = getelementptr inbounds i8, ptr %.027.i.lcssa, i64 -4
  store i32 %i.kn, ptr %i.lb, align 4, !tbaa !21
  %i.lc = ptrtoint ptr %.02940.i to i64
  %i.ld = ptrtoint ptr %.lcssa.i to i64
  %i.le = sub i64 %i.lc, %i.ld
  %i.lf = ashr exact i64 %i.le, 3
  %i.lg = add nsw i64 %i.lf, %.02439.i
  %i.lh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.li = add i32 %i.lh, -2
  store i32 %i.li, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge330, %.lr.ph.i150
  %.125.i151 = phi i64 [ %i.lg, %._crit_edge330 ], [ %.02439.i, %.lr.ph.i150 ] ; 2 uses
  %.029.i = getelementptr inbounds nuw i8, ptr %.02940.i, i64 8 ; 2 uses
  %.not.i152 = icmp eq ptr %.029.i, %.ptr         ; 2 uses
  %i.lj = icmp ugt i64 %.125.i151, 8
  %or.cond.i153 = select i1 %.not.i152, i1 true, i1 %i.lj
  br i1 %or.cond.i153, label %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit, label %.lr.ph.i150, !llvm.loop !7645

_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit: ; preds = %bb.aw
  br i1 %.not.i152, label %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit.thread, label %bb.ba

_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit.thread: ; preds = %bb.at, %bb.at, %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit
  %i.lk = icmp eq ptr %.127.lcssa.i.ptr, %1
  %.02936.i157 = getelementptr inbounds nuw i8, ptr %.127.lcssa.i.ptr, i64 8 ; 2 uses
  %.not37.i158 = icmp eq ptr %.02936.i157, %1
  %or.cond45.i159 = select i1 %i.lk, i1 true, i1 %.not37.i158
  br i1 %or.cond45.i159, label %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit174.thread, label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit.thread, %bb.az
  %.02940.i161 = phi ptr [ %.029.i165, %bb.az ], [ %.02936.i157, %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit.thread ] ; 10 uses
  %.02439.i162 = phi i64 [ %.125.i164, %bb.az ], [ 0, %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit.thread ] ; 2 uses
  %.pn38.i163 = phi ptr [ %.02940.i161, %bb.az ], [ %.127.lcssa.i.ptr, %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit.thread ] ; 6 uses
  %i.ll = load i32, ptr %.02940.i161, align 4, !tbaa !21 ; 3 uses
  %i.lm = load i32, ptr %.pn38.i163, align 4, !tbaa !21
  %i.ln = icmp slt i32 %i.ll, %i.lm
  br i1 %i.ln, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %.lr.ph.i160
  store i32 0, ptr %.02940.i161, align 4, !tbaa !21
  %i.lo = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.lp = getelementptr inbounds nuw i8, ptr %.pn38.i163, i64 12 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !21
  store i32 0, ptr %i.lp, align 4, !tbaa !21
  %i.lr = add i32 %i.lo, 2
  store i32 %i.lr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %.pre.i169 = load i32, ptr %.pn38.i163, align 4, !tbaa !21
  %i.ls = getelementptr inbounds i8, ptr %.02940.i161, i64 -8 ; 2 uses
  store i32 %.pre.i169, ptr %.02940.i161, align 4, !tbaa !21
  store i32 0, ptr %.pn38.i163, align 4, !tbaa !21
  %i.lt = getelementptr inbounds nuw i8, ptr %.pn38.i163, i64 4 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.02940.i161, i64 4
  %i.lv = load i32, ptr %i.lt, align 4, !tbaa !21
  store i32 %i.lv, ptr %i.lu, align 4, !tbaa !21
  store i32 0, ptr %i.lt, align 4, !tbaa !21
  %.not32.i172333 = icmp eq ptr %i.ls, %.127.lcssa.i.ptr
  br i1 %.not32.i172333, label %split, label %.lr.ph337

bb.ay:                                            ; preds = %.lr.ph337
  %i.lw = getelementptr inbounds i8, ptr %i.ma, i64 -8 ; 2 uses
  store i32 %i.mc, ptr %i.ma, align 4, !tbaa !21
  store i32 0, ptr %i.mb, align 4, !tbaa !21
  %i.lx = getelementptr inbounds i8, ptr %.026.i171335, i64 -4 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.lz = load i32, ptr %i.lx, align 4, !tbaa !21
  store i32 %i.lz, ptr %i.ly, align 4, !tbaa !21
  store i32 0, ptr %i.lx, align 4, !tbaa !21
  %.not32.i172 = icmp eq ptr %i.lw, %.127.lcssa.i.ptr
  br i1 %.not32.i172, label %split, label %.lr.ph337, !llvm.loop !7644

.lr.ph337:                                        ; preds = %bb.ax, %bb.ay
  %i.ma = phi ptr [ %i.lw, %bb.ay ], [ %i.ls, %bb.ax ] ; 7 uses
  %.026.i171335 = phi ptr [ %i.mb, %bb.ay ], [ %.pn38.i163, %bb.ax ] ; 2 uses
  %.027.i170334 = phi ptr [ %i.ma, %bb.ay ], [ %.02940.i161, %bb.ax ]
  %i.mb = getelementptr inbounds i8, ptr %.026.i171335, i64 -8 ; 3 uses
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !21 ; 2 uses
  %i.md = icmp slt i32 %i.ll, %i.mc
  br i1 %i.md, label %bb.ay, label %._crit_edge225, !llvm.loop !7644

._crit_edge225:                                   ; preds = %.lr.ph337
  %.pre226 = ptrtoint ptr %i.ma to i64
  br label %split, !llvm.loop !7644

split:                                            ; preds = %bb.ay, %bb.ax, %._crit_edge225
  %.027.i170319 = phi ptr [ %.027.i170334, %._crit_edge225 ], [ %.02940.i161, %bb.ax ], [ %i.ma, %bb.ay ]
  %.pre-phi227 = phi i64 [ %.pre226, %._crit_edge225 ], [ %i.hn, %bb.ax ], [ %i.hn, %bb.ay ]
  %.lcssa.i173 = phi ptr [ %i.ma, %._crit_edge225 ], [ %.127.lcssa.i.ptr, %bb.ax ], [ %.127.lcssa.i.ptr, %bb.ay ]
  store i32 %i.ll, ptr %.lcssa.i173, align 4, !tbaa !21
  %i.me = getelementptr inbounds i8, ptr %.027.i170319, i64 -4
  store i32 %i.lq, ptr %i.me, align 4, !tbaa !21
  %i.mf = ptrtoint ptr %.02940.i161 to i64
  %i.mg = sub i64 %i.mf, %.pre-phi227
  %i.mh = ashr exact i64 %i.mg, 3
  %i.mi = add nsw i64 %i.mh, %.02439.i162
  %i.mj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.mk = add i32 %i.mj, -2
  store i32 %i.mk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %bb.az

bb.az:                                            ; preds = %split, %.lr.ph.i160
  %.125.i164 = phi i64 [ %i.mi, %split ], [ %.02439.i162, %.lr.ph.i160 ] ; 2 uses
  %.029.i165 = getelementptr inbounds nuw i8, ptr %.02940.i161, i64 8 ; 2 uses
  %.not.i166 = icmp eq ptr %.029.i165, %1         ; 2 uses
  %i.ml = icmp ugt i64 %.125.i164, 8
  %or.cond.i167 = select i1 %.not.i166, i1 true, i1 %i.ml
  br i1 %or.cond.i167, label %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit174, label %.lr.ph.i160, !llvm.loop !7645

_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit174: ; preds = %bb.az
  br i1 %.not.i166, label %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit174.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.as, %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit, %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit174, %bb.ap, %bb.ar, %bb.aq
  %.1103 = phi i64 [ %i.hu, %bb.ar ], [ %i.hu, %bb.aq ], [ %i.hu, %bb.ap ], [ %.0102201, %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit174 ], [ %.0102201, %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit ], [ %.0102201, %bb.as ] ; 2 uses
  tail call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEvT_SG_T0_NS0_9iter_sizeISG_E4typeEb(ptr noundef %.0202, ptr noundef nonnull %.ptr, i64 noundef %.1103, i1 noundef zeroext %.0106200)
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit: ; preds = %_ZN5boost7movelib14pdqsort_detail14partition_leftIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEET_SG_SG_T0_.exit, %bb.ba
  %.pre-phi224 = phi i64 [ %.pre223, %_ZN5boost7movelib14pdqsort_detail14partition_leftIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEET_SG_SG_T0_.exit ], [ %i.hp, %bb.ba ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre220, %_ZN5boost7movelib14pdqsort_detail14partition_leftIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEET_SG_SG_T0_.exit ], [ %i.hn, %bb.ba ]
  %.4 = phi i64 [ %.0102201, %_ZN5boost7movelib14pdqsort_detail14partition_leftIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEET_SG_SG_T0_.exit ], [ %.1103, %bb.ba ]
  %.3 = phi ptr [ %i.gc, %_ZN5boost7movelib14pdqsort_detail14partition_leftIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEET_SG_SG_T0_.exit ], [ %.127.lcssa.i.ptr, %bb.ba ] ; 2 uses
  %i.mm = icmp ult i64 %.pre-phi224, 24
  br i1 %i.mm, label %._crit_edge, label %bb.e

_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit174.thread: ; preds = %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit.thread, %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEEEEbT_SG_T0_.exit174, %bb.d, %bb.al, %._crit_edge
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE6assignIPS6_EEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS2_17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !658  ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.h, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #23 ; 8 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !656    ; 2 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !653  ; 2 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE16priv_destroy_allEv.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.m = trunc i64 %i.l to i32
  %i.n = shl i32 %i.m, 1
  %i.o = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.n
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE16priv_destroy_allEv.exit

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE16priv_destroy_allEv.exit: ; preds = %bb.e, %.lr.ph.preheader.i.i
  store i64 0, ptr %i.k, align 8, !tbaa !653
  %i.p = shl i64 %i.f, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #24
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !656
  store i64 %i.d, ptr %i.e, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not16.i.i = icmp eq ptr %1, %2
  br i1 %.not16.i.i, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 3 uses
  %i.r = add i64 %i.a, -8
  %i.s = sub i64 %i.r, %i.b                       ; 2 uses
  %i.t = lshr i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check89 = icmp ult i64 %i.s, 72
  br i1 %min.iters.check89, label %.lr.ph.i.i.preheader112, label %vector.memcheck83

vector.memcheck83:                                ; preds = %.lr.ph.i.i.preheader
  %i.v = add i64 %i.a, -8
  %i.w = sub i64 %i.v, %i.b
  %i.x = and i64 %i.w, -8
  %i.y = getelementptr i8, ptr %1, i64 %i.x
  %scevgep84 = getelementptr i8, ptr %i.y, i64 8
  %bound085 = icmp ugt ptr %scevgep84, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound186 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict87 = and i1 %bound085, %bound186
  br i1 %found.conflict87, label %.lr.ph.i.i.preheader112, label %vector.ph90

vector.ph90:                                      ; preds = %vector.memcheck83
  %n.vec91 = and i64 %i.u, 4611686018427387900    ; 3 uses
  %i.z = shl i64 %n.vec91, 3                      ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.i, i64 %i.z    ; 2 uses
  %i.ac = insertelement <2 x i32> <i32 poison, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next107, %vector.body92 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ac, %vector.ph90 ], [ %i.af, %vector.body92 ]
  %vec.phi94 = phi <2 x i32> [ zeroinitializer, %vector.ph90 ], [ %i.ag, %vector.body92 ]
  %i.ad = shl i64 %index93, 3                     ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 16               ; 2 uses
  %next.gep95 = getelementptr i8, ptr %1, i64 %i.ad
  %next.gep96 = getelementptr i8, ptr %1, i64 %i.ae
  %next.gep97 = getelementptr i8, ptr %i.i, i64 %i.ad
  %next.gep98 = getelementptr i8, ptr %i.i, i64 %i.ae
  %wide.vec99 = load <4 x i32>, ptr %next.gep95, align 4, !tbaa !21, !alias.scope !7646
  %wide.vec102 = load <4 x i32>, ptr %next.gep96, align 4, !tbaa !21, !alias.scope !7646
  store <4 x i32> %wide.vec99, ptr %next.gep97, align 4, !tbaa !21, !alias.scope !7649
  store <4 x i32> %wide.vec102, ptr %next.gep98, align 4, !tbaa !21, !alias.scope !7649
  %i.af = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.ag = add <2 x i32> %vec.phi94, splat (i32 2) ; 2 uses
  %index.next107 = add nuw i64 %index93, 4        ; 2 uses
  %i.ah = icmp eq i64 %index.next107, %n.vec91
  br i1 %i.ah, label %middle.block108, label %vector.body92, !llvm.loop !7651

middle.block108:                                  ; preds = %vector.body92
  %bin.rdx = add <2 x i32> %i.ag, %i.af
  %i.ai = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !alias.scope !7652, !noalias !7646
  %cmp.n109 = icmp eq i64 %i.u, %n.vec91
  br i1 %cmp.n109, label %.loopexit, label %.lr.ph.i.i.preheader112

.lr.ph.i.i.preheader112:                          ; preds = %vector.memcheck83, %.lr.ph.i.i.preheader, %middle.block108
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck83 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block108 ]
  %.018.i.i.ph = phi ptr [ %1, %vector.memcheck83 ], [ %1, %.lr.ph.i.i.preheader ], [ %i.aa, %middle.block108 ]
  %.01517.i.i.ph = phi ptr [ %i.i, %vector.memcheck83 ], [ %i.i, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block108 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader112, %.lr.ph.i.i
  %i.aj = phi i32 [ %i.al, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader112 ]
  %.018.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.018.i.i.ph, %.lr.ph.i.i.preheader112 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %.01517.i.i.ph, %.lr.ph.i.i.preheader112 ] ; 2 uses
  %i.ak = load <2 x i32>, ptr %.018.i.i, align 4, !tbaa !21
  store <2 x i32> %i.ak, ptr %.01517.i.i, align 4, !tbaa !21
  %i.al = add i32 %i.aj, 2                        ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, %2
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !7654

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %middle.block108, %bb.f
  %.015.lcssa.i.i = phi ptr [ %i.i, %bb.f ], [ %i.ab, %middle.block108 ], [ %i.an, %.loopexit.loopexit ]
  %i.ao = ptrtoint ptr %.015.lcssa.i.i to i64
  %i.ap = ptrtoint ptr %i.i to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  store i64 %i.ar, ptr %i.q, align 8, !tbaa !657
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.as = load ptr, ptr %0, align 8, !tbaa !656   ; 15 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !653 ; 13 uses
  %i.av = icmp ult i64 %i.au, %i.d
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not7.i.i = icmp eq i64 %i.au, 0
  br i1 %.not7.i.i, label %_ZN5boost9container18copy_n_source_destIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EES7_EENS2_38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i21.preheader

.lr.ph.i.i21.preheader:                           ; preds = %bb.h
  %min.iters.check60 = icmp ult i64 %i.au, 8
  br i1 %min.iters.check60, label %.lr.ph.i.i21.preheader115, label %vector.memcheck53

vector.memcheck53:                                ; preds = %.lr.ph.i.i21.preheader
  %i.aw = shl i64 %i.au, 3                        ; 2 uses
  %scevgep54 = getelementptr i8, ptr %i.as, i64 %i.aw
  %scevgep55 = getelementptr i8, ptr %1, i64 %i.aw
  %bound056 = icmp ult ptr %i.as, %scevgep55
  %bound157 = icmp ult ptr %1, %scevgep54
  %found.conflict58 = and i1 %bound056, %bound157
  br i1 %found.conflict58, label %.lr.ph.i.i21.preheader115, label %vector.ph61

vector.ph61:                                      ; preds = %vector.memcheck53
  %n.vec62 = and i64 %i.au, -4                    ; 3 uses
  %i.ax = shl i64 %n.vec62, 3                     ; 2 uses
  %i.ay = getelementptr i8, ptr %i.as, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %1, i64 %i.ax     ; 2 uses
  %i.ba = and i64 %i.au, 3
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next77, %vector.body63 ] ; 2 uses
  %i.bb = shl i64 %index64, 3                     ; 3 uses
  %i.bc = or disjoint i64 %i.bb, 16               ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.as, i64 %i.bb
  %next.gep66 = getelementptr i8, ptr %i.as, i64 %i.bc
  %next.gep67 = getelementptr i8, ptr %1, i64 %i.bb
  %next.gep68 = getelementptr i8, ptr %1, i64 %i.bc
  %wide.vec69 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !21, !alias.scope !7655
  %wide.vec72 = load <4 x i32>, ptr %next.gep68, align 4, !tbaa !21, !alias.scope !7655
  store <4 x i32> %wide.vec69, ptr %next.gep65, align 4, !tbaa !21, !alias.scope !7658, !noalias !7655
  store <4 x i32> %wide.vec72, ptr %next.gep66, align 4, !tbaa !21, !alias.scope !7658, !noalias !7655
  %index.next77 = add nuw i64 %index64, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next77, %n.vec62
  br i1 %i.bd, label %middle.block78, label %vector.body63, !llvm.loop !7660

middle.block78:                                   ; preds = %vector.body63
  %cmp.n79 = icmp eq i64 %i.au, %n.vec62
  br i1 %cmp.n79, label %_ZN5boost9container18copy_n_source_destIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EES7_EENS2_38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i21.preheader115

.lr.ph.i.i21.preheader115:                        ; preds = %vector.memcheck53, %.lr.ph.i.i21.preheader, %middle.block78
  %.ph116 = phi ptr [ %i.as, %vector.memcheck53 ], [ %i.as, %.lr.ph.i.i21.preheader ], [ %i.ay, %middle.block78 ] ; 2 uses
  %.09.i.i.ph = phi ptr [ %1, %vector.memcheck53 ], [ %1, %.lr.ph.i.i21.preheader ], [ %i.az, %middle.block78 ] ; 2 uses
  %.068.i.i.ph = phi i64 [ %i.au, %vector.memcheck53 ], [ %i.au, %.lr.ph.i.i21.preheader ], [ %i.ba, %middle.block78 ] ; 4 uses
  %i.be = add i64 %.068.i.i.ph, -1
  %xtraiter120 = and i64 %.068.i.i.ph, 3          ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph.i.i21.prol.loopexit, label %.lr.ph.i.i21.prol

.lr.ph.i.i21.prol:                                ; preds = %.lr.ph.i.i21.preheader115, %.lr.ph.i.i21.prol
  %i.bf = phi ptr [ %i.bm, %.lr.ph.i.i21.prol ], [ %.ph116, %.lr.ph.i.i21.preheader115 ] ; 3 uses
  %.09.i.i.prol = phi ptr [ %i.bl, %.lr.ph.i.i21.prol ], [ %.09.i.i.ph, %.lr.ph.i.i21.preheader115 ] ; 3 uses
  %.068.i.i.prol = phi i64 [ %i.bg, %.lr.ph.i.i21.prol ], [ %.068.i.i.ph, %.lr.ph.i.i21.preheader115 ]
  %prol.iter122 = phi i64 [ %prol.iter122.next, %.lr.ph.i.i21.prol ], [ 0, %.lr.ph.i.i21.preheader115 ]
  %i.bg = add i64 %.068.i.i.prol, -1              ; 2 uses
  %i.bh = load i32, ptr %.09.i.i.prol, align 4, !tbaa !21
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !21
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !21
  %i.bl = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 8 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %prol.iter122.next = add i64 %prol.iter122, 1   ; 2 uses
  %prol.iter122.cmp.not = icmp eq i64 %prol.iter122.next, %xtraiter120
  br i1 %prol.iter122.cmp.not, label %.lr.ph.i.i21.prol.loopexit, label %.lr.ph.i.i21.prol, !llvm.loop !7661

.lr.ph.i.i21.prol.loopexit:                       ; preds = %.lr.ph.i.i21.prol, %.lr.ph.i.i21.preheader115
  %.lcssa118.unr = phi ptr [ poison, %.lr.ph.i.i21.preheader115 ], [ %i.bl, %.lr.ph.i.i21.prol ]
  %.lcssa117.unr = phi ptr [ poison, %.lr.ph.i.i21.preheader115 ], [ %i.bm, %.lr.ph.i.i21.prol ]
  %.unr = phi ptr [ %.ph116, %.lr.ph.i.i21.preheader115 ], [ %i.bm, %.lr.ph.i.i21.prol ]
  %.09.i.i.unr = phi ptr [ %.09.i.i.ph, %.lr.ph.i.i21.preheader115 ], [ %i.bl, %.lr.ph.i.i21.prol ]
  %.068.i.i.unr = phi i64 [ %.068.i.i.ph, %.lr.ph.i.i21.preheader115 ], [ %i.bg, %.lr.ph.i.i21.prol ]
  %i.bn = icmp ult i64 %i.be, 3
  br i1 %i.bn, label %_ZN5boost9container18copy_n_source_destIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EES7_EENS2_38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21.prol.loopexit, %.lr.ph.i.i21
  %i.bo = phi ptr [ %i.cn, %.lr.ph.i.i21 ], [ %.unr, %.lr.ph.i.i21.prol.loopexit ] ; 9 uses
  %.09.i.i = phi ptr [ %i.cm, %.lr.ph.i.i21 ], [ %.09.i.i.unr, %.lr.ph.i.i21.prol.loopexit ] ; 9 uses
  %.068.i.i = phi i64 [ %i.ch, %.lr.ph.i.i21 ], [ %.068.i.i.unr, %.lr.ph.i.i21.prol.loopexit ]
  %i.bp = load i32, ptr %.09.i.i, align 4, !tbaa !21
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !21
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !21
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
end_hunk_1
begin_hunk_2_@_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE18priv_merge_genericINS_13move_iteratorINS0_12vec_iteratorIPS6_Lb0EEEEENS2_23flat_tree_value_compareISt4lessIS5_ES6_NS2_9select1stIS5_EEEEEEvT_SL_T0_:bb.a
.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %i.y = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.015.i.i.i.i.i.i = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i) ]
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21, !noalias !7700
  store i32 %i.z, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !21, !noalias !7700
  store i32 0, ptr %i.y, align 4, !tbaa !21, !noalias !7700
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !7700 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21, !noalias !7700
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !21, !noalias !7700
  store i32 0, ptr %i.ac, align 4, !tbaa !21, !noalias !7700
  %i.ae = add i32 %i.aa, 2
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !7700
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 8
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !21, !noalias !7700
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !21, !noalias !7700
  store i32 0, ptr %i.af, align 4, !tbaa !21, !noalias !7700
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !21, !noalias !7700
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !21, !noalias !7700
  store i32 0, ptr %i.aj, align 4, !tbaa !21, !noalias !7700
  %i.al = add i32 %i.aa, 4
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !noalias !7700
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 16
  %i.ao = add i64 %.015.i.i.i.i.i.i, -2           ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE40priv_insert_forward_range_expand_forwardINS2_18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS6_Lb0EEEEEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7685

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE40priv_insert_forward_range_expand_forwardINS2_18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS6_Lb0EEEEEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.b
  %i.ap = add i64 %i.j, %i.b                      ; 2 uses
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !657, !noalias !7697
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE6insertINS_13move_iteratorINS0_12vec_iteratorIPS6_Lb0EEEEEEESD_NSB_ISC_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS2_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.e, ptr %4, align 8, !tbaa !52, !noalias !7697
  call void @_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE37priv_insert_forward_range_no_capacityINS2_18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS6_Lb0EEEEEEEEESE_SD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.d, i64 noundef %i.j, ptr noundef nonnull align 8 dead_on_return %4)
  %.pre = load ptr, ptr %0, align 8, !tbaa !656
  %.pre15 = load i64, ptr %i.a, align 8, !tbaa !653
  %.pre16 = load i64, ptr %i.k, align 8, !tbaa !658
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE6insertINS_13move_iteratorINS0_12vec_iteratorIPS6_Lb0EEEEEEESD_NSB_ISC_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS2_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE6insertINS_13move_iteratorINS0_12vec_iteratorIPS6_Lb0EEEEEEESD_NSB_ISC_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS2_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit: ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE40priv_insert_forward_range_expand_forwardINS2_18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS6_Lb0EEEEEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.c
  %i.aq = phi i64 [ %i.l, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE40priv_insert_forward_range_expand_forwardINS2_18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS6_Lb0EEEEEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre16, %bb.c ]
  %i.ar = phi i64 [ %i.ap, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE40priv_insert_forward_range_expand_forwardINS2_18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS6_Lb0EEEEEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre15, %bb.c ] ; 2 uses
  %i.as = phi ptr [ %i.c, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE40priv_insert_forward_range_expand_forwardINS2_18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS6_Lb0EEEEEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre, %bb.c ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !7694
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.idx8 = shl nuw nsw i64 %i.ar, 3               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.b, 3                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx ; 5 uses
  %i.av = sub i64 %i.aq, %i.ar
  %i.aw = icmp eq i64 %i.b, 0
  %i.ax = icmp samesign eq i64 %.idx, %.idx8
  %or.cond.i = or i1 %i.aw, %i.ax
  br i1 %or.cond.i, label %_ZN5boost7movelib14adaptive_mergeIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_SF_T0_PNS0_15iterator_traitsISF_E10value_typeENS0_9iter_sizeISF_E4typeE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE6insertINS_13move_iteratorINS0_12vec_iteratorIPS6_Lb0EEEEEEESD_NSB_ISC_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS2_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit
  %i.ay = load i32, ptr %i.au, align 4, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.i
  %.0.i = phi ptr [ %i.bb, %bb.e ], [ %i.as, %.preheader.i ] ; 4 uses
  %i.az = load i32, ptr %.0.i, align 4, !tbaa !21
  %i.ba = icmp slt i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.au
  br i1 %i.bc, label %_ZN5boost7movelib14adaptive_mergeIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_SF_T0_PNS0_15iterator_traitsISF_E10value_typeENS0_9iter_sizeISF_E4typeE.exit, label %bb.d, !llvm.loop !570

bb.f:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.025.i = phi ptr [ %i.at, %bb.f ], [ %i.bf, %bb.i ] ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.025.i, i64 -8 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !21
  %i.bh = icmp slt i32 %i.bg, %i.be
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.at, ptr %3, align 8, !tbaa !571
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.bi, align 8, !tbaa !573
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.av, ptr %i.bj, align 8, !tbaa !574
  %i.bk = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.bl = ptrtoint ptr %.0.i to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 3
  %i.bo = ptrtoint ptr %.025.i to i64
  %i.bp = sub i64 %i.bo, %i.bk
  %i.bq = ashr exact i64 %i.bp, 3
  invoke void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_NS0_9iter_sizeISI_E4typeESL_T0_RT1_(ptr noundef nonnull %.0.i, i64 noundef %i.bn, i64 noundef %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.br = icmp eq ptr %i.bf, %i.au
  br i1 %i.br, label %_ZN5boost7movelib14adaptive_mergeIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_SF_T0_PNS0_15iterator_traitsISF_E10value_typeENS0_9iter_sizeISF_E4typeE.exit, label %bb.g, !llvm.loop !575

bb.j:                                             ; preds = %bb.h
  %i.bs = load i64, ptr %i.bi, align 8, !tbaa !573 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i, label %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.j
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = shl i32 %i.bt, 1
  %i.bv = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i.i, %i.bu
  store i32 %i.bv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit.i

_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit.i: ; preds = %.preheader.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN5boost7movelib14adaptive_mergeIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_SF_T0_PNS0_15iterator_traitsISF_E10value_typeENS0_9iter_sizeISF_E4typeE.exit

bb.k:                                             ; preds = %bb.h
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load i64, ptr %i.bi, align 8, !tbaa !573 ; 2 uses
  %.not.i.i30.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i30.i, label %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit33.i, label %.preheader.i.i.i31.i

.preheader.i.i.i31.i:                             ; preds = %bb.k
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i32.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.by = trunc i64 %i.bx to i32
  %i.bz = shl i32 %i.by, 1
  %i.ca = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i32.i, %i.bz
  store i32 %i.ca, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit33.i

_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit33.i: ; preds = %.preheader.i.i.i31.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.bw

_ZN5boost7movelib14adaptive_mergeIPNS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EENS3_23flat_tree_value_compareISt4lessIS6_ES7_NS3_9select1stIS6_EEEEEEvT_SF_SF_T0_PNS0_15iterator_traitsISF_E10value_typeENS0_9iter_sizeISF_E4typeE.exit: ; preds = %bb.e, %bb.i, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EESaIS6_EvE6insertINS_13move_iteratorINS0_12vec_iteratorIPS6_Lb0EEEEEEESD_NSB_ISC_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS2_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit, %_ZN5boost7movelib13adaptive_xbufINS_9container3dtl4pairINS2_4test24movable_and_copyable_intES6_EEPS7_mED2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPS6_Lb1EEEEEvT_SG_PNS_11move_detail13disable_if_orIvNSH_7is_sameINSH_17integral_constantIjLj1EEENSK_IjLj0EEEEENSH_14is_convertibleISG_mEENS2_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !48     ; 16 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !48     ; 3 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = ashr exact i64 %i.e, 3                   ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1271 ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.j, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #20 ; 11 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !1268   ; 3 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1278 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.n, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.o = trunc i64 %i.n to i32
  %i.p = shl i32 %i.o, 1
  %i.q = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.p
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %bb.e, %.lr.ph.preheader.i.i
  store i64 0, ptr %i.m, align 8, !tbaa !1278
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = icmp eq ptr %i.r, %i.l
  br i1 %i.s, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.t = shl i64 %i.h, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.t) #21
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.k, ptr %0, align 8, !tbaa !1268
  store i64 %i.f, ptr %i.g, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %1, align 8, !tbaa !48     ; 10 uses
  %i.w = ptrtoaddr ptr %i.v to i64                ; 2 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !48     ; 3 uses
  %i.y = ptrtoaddr ptr %i.x to i64                ; 2 uses
  %.not10.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not10.i.i, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 3 uses
  %i.z = add i64 %i.y, -8
  %i.aa = sub i64 %i.z, %i.w                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check97 = icmp ult i64 %i.aa, 168
  br i1 %min.iters.check97, label %.lr.ph.i.i.preheader120, label %vector.memcheck83

vector.memcheck83:                                ; preds = %.lr.ph.i.i.preheader
  %i.ad = add i64 %i.y, -8
  %i.ae = sub i64 %i.ad, %i.w
  %i.af = and i64 %i.ae, -8
  %i.ag = add i64 %i.af, 8                        ; 2 uses
  %scevgep84 = getelementptr i8, ptr %i.k, i64 %i.ag ; 2 uses
  %scevgep85 = getelementptr i8, ptr %i.v, i64 %i.ag ; 2 uses
  %bound086 = icmp ult ptr %i.k, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound187 = icmp ugt ptr %scevgep84, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict88 = and i1 %bound086, %bound187
  %bound089 = icmp ult ptr %i.k, %scevgep85
  %bound190 = icmp ult ptr %i.v, %scevgep84
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx = or i1 %found.conflict88, %found.conflict91
  %bound092 = icmp ugt ptr %scevgep85, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound193 = icmp ult ptr %i.v, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx, %found.conflict94
  br i1 %conflict.rdx95, label %.lr.ph.i.i.preheader120, label %vector.ph98

vector.ph98:                                      ; preds = %vector.memcheck83
  %n.vec99 = and i64 %i.ac, 4611686018427387900   ; 3 uses
  %i.ah = shl i64 %n.vec99, 3                     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.k, i64 %i.ah   ; 2 uses
  %i.ak = insertelement <2 x i32> <i32 poison, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph98
  %index101 = phi i64 [ 0, %vector.ph98 ], [ %index.next115, %vector.body100 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ak, %vector.ph98 ], [ %i.an, %vector.body100 ]
  %vec.phi102 = phi <2 x i32> [ zeroinitializer, %vector.ph98 ], [ %i.ao, %vector.body100 ]
  %i.al = shl i64 %index101, 3                    ; 3 uses
  %i.am = or disjoint i64 %i.al, 16               ; 2 uses
  %next.gep103 = getelementptr i8, ptr %i.v, i64 %i.al
  %next.gep104 = getelementptr i8, ptr %i.v, i64 %i.am
  %next.gep105 = getelementptr i8, ptr %i.k, i64 %i.al
  %next.gep106 = getelementptr i8, ptr %i.k, i64 %i.am
  %wide.vec107 = load <4 x i32>, ptr %next.gep103, align 4, !tbaa !21, !alias.scope !7703
  %wide.vec110 = load <4 x i32>, ptr %next.gep104, align 4, !tbaa !21, !alias.scope !7703
  store <4 x i32> %wide.vec107, ptr %next.gep105, align 4, !tbaa !21, !alias.scope !7706, !noalias !7708
  store <4 x i32> %wide.vec110, ptr %next.gep106, align 4, !tbaa !21, !alias.scope !7706, !noalias !7708
  %i.an = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.ao = add <2 x i32> %vec.phi102, splat (i32 2) ; 2 uses
  %index.next115 = add nuw i64 %index101, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next115, %n.vec99
  br i1 %i.ap, label %middle.block116, label %vector.body100, !llvm.loop !7710

middle.block116:                                  ; preds = %vector.body100
  %bin.rdx = add <2 x i32> %i.ao, %i.an
  %i.aq = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !alias.scope !7711, !noalias !7703
  %cmp.n117 = icmp eq i64 %i.ac, %n.vec99
  br i1 %cmp.n117, label %.loopexit, label %.lr.ph.i.i.preheader120

.lr.ph.i.i.preheader120:                          ; preds = %vector.memcheck83, %.lr.ph.i.i.preheader, %middle.block116
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck83 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.preheader ], [ %i.aq, %middle.block116 ]
  %.ph121 = phi ptr [ %i.v, %vector.memcheck83 ], [ %i.v, %.lr.ph.i.i.preheader ], [ %i.ai, %middle.block116 ]
  %.011.i.i.ph = phi ptr [ %i.k, %vector.memcheck83 ], [ %i.k, %.lr.ph.i.i.preheader ], [ %i.aj, %middle.block116 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader120, %.lr.ph.i.i
  %i.ar = phi i32 [ %i.ax, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader120 ]
  %i.as = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.ph121, %.lr.ph.i.i.preheader120 ] ; 3 uses
  %.011.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %.011.i.i.ph, %.lr.ph.i.i.preheader120 ] ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !21
  store i32 %i.at, ptr %.011.i.i, align 4, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !21
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !21
  %i.ax = add i32 %i.ar, 2                        ; 2 uses
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.x
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !7712

.loopexit:                                        ; preds = %.lr.ph.i.i, %middle.block116, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.k, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit ], [ %i.aj, %middle.block116 ], [ %i.az, %.lr.ph.i.i ]
  %i.ba = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bb = ptrtoint ptr %i.k to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  store i64 %i.bd, ptr %i.u, align 8, !tbaa !1270
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.be = load ptr, ptr %0, align 8, !tbaa !1268  ; 15 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1278 ; 13 uses
  %i.bh = icmp ult i64 %i.bg, %i.f
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not3.i.i14 = icmp eq i64 %i.bg, 0
  br i1 %.not3.i.i14, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EELb1EEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i, label %.lr.ph.i.i15.preheader

.lr.ph.i.i15.preheader:                           ; preds = %bb.h
  %min.iters.check60 = icmp ult i64 %i.bg, 8
  br i1 %min.iters.check60, label %.lr.ph.i.i15.preheader124, label %vector.memcheck53

vector.memcheck53:                                ; preds = %.lr.ph.i.i15.preheader
  %i.bi = shl i64 %i.bg, 3                        ; 2 uses
  %scevgep54 = getelementptr i8, ptr %i.be, i64 %i.bi
  %scevgep55 = getelementptr i8, ptr %i.a, i64 %i.bi
  %bound056 = icmp ult ptr %i.be, %scevgep55
  %bound157 = icmp ult ptr %i.a, %scevgep54
  %found.conflict58 = and i1 %bound056, %bound157
  br i1 %found.conflict58, label %.lr.ph.i.i15.preheader124, label %vector.ph61

vector.ph61:                                      ; preds = %vector.memcheck53
  %n.vec62 = and i64 %i.bg, -4                    ; 3 uses
  %i.bj = shl i64 %n.vec62, 3                     ; 2 uses
  %i.bk = getelementptr i8, ptr %i.a, i64 %i.bj   ; 2 uses
  %i.bl = getelementptr i8, ptr %i.be, i64 %i.bj  ; 2 uses
  %i.bm = and i64 %i.bg, 3
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next77, %vector.body63 ] ; 2 uses
  %i.bn = shl i64 %index64, 3                     ; 3 uses
  %i.bo = or disjoint i64 %i.bn, 16               ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.a, i64 %i.bn
  %next.gep66 = getelementptr i8, ptr %i.a, i64 %i.bo
  %next.gep67 = getelementptr i8, ptr %i.be, i64 %i.bn
  %next.gep68 = getelementptr i8, ptr %i.be, i64 %i.bo
  %wide.vec69 = load <4 x i32>, ptr %next.gep65, align 4, !tbaa !21, !alias.scope !7713, !noalias !7716
  %wide.vec72 = load <4 x i32>, ptr %next.gep66, align 4, !tbaa !21, !alias.scope !7713, !noalias !7716
  store <4 x i32> %wide.vec69, ptr %next.gep67, align 4, !tbaa !21, !alias.scope !7719, !noalias !7716
  store <4 x i32> %wide.vec72, ptr %next.gep68, align 4, !tbaa !21, !alias.scope !7719, !noalias !7716
  %index.next77 = add nuw i64 %index64, 4         ; 2 uses
  %i.bp = icmp eq i64 %index.next77, %n.vec62
  br i1 %i.bp, label %middle.block78, label %vector.body63, !llvm.loop !7721

middle.block78:                                   ; preds = %vector.body63
  %cmp.n79 = icmp eq i64 %i.bg, %n.vec62
  br i1 %cmp.n79, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EELb1EEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i, label %.lr.ph.i.i15.preheader124

.lr.ph.i.i15.preheader124:                        ; preds = %vector.memcheck53, %.lr.ph.i.i15.preheader, %middle.block78
  %.sroa.019.0.i.ph = phi ptr [ %i.a, %vector.memcheck53 ], [ %i.a, %.lr.ph.i.i15.preheader ], [ %i.bk, %middle.block78 ] ; 2 uses
  %.0.i.ph = phi ptr [ %i.be, %vector.memcheck53 ], [ %i.be, %.lr.ph.i.i15.preheader ], [ %i.bl, %middle.block78 ] ; 2 uses
  %.04.i.i.ph = phi i64 [ %i.bg, %vector.memcheck53 ], [ %i.bg, %.lr.ph.i.i15.preheader ], [ %i.bm, %middle.block78 ] ; 4 uses
  %i.bq = add i64 %.04.i.i.ph, -1
  %xtraiter129 = and i64 %.04.i.i.ph, 3           ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.lr.ph.i.i15.prol.loopexit, label %.lr.ph.i.i15.prol

.lr.ph.i.i15.prol:                                ; preds = %.lr.ph.i.i15.preheader124, %.lr.ph.i.i15.prol
  %.sroa.019.0.i.prol = phi ptr [ %i.bw, %.lr.ph.i.i15.prol ], [ %.sroa.019.0.i.ph, %.lr.ph.i.i15.preheader124 ] ; 3 uses
  %.0.i.prol = phi ptr [ %i.bx, %.lr.ph.i.i15.prol ], [ %.0.i.ph, %.lr.ph.i.i15.preheader124 ] ; 3 uses
  %.04.i.i.prol = phi i64 [ %i.br, %.lr.ph.i.i15.prol ], [ %.04.i.i.ph, %.lr.ph.i.i15.preheader124 ]
  %prol.iter131 = phi i64 [ %prol.iter131.next, %.lr.ph.i.i15.prol ], [ 0, %.lr.ph.i.i15.preheader124 ]
  %i.br = add i64 %.04.i.i.prol, -1               ; 2 uses
  %i.bs = load i32, ptr %.sroa.019.0.i.prol, align 4, !tbaa !21, !noalias !7716
  store i32 %i.bs, ptr %.0.i.prol, align 4, !tbaa !21, !noalias !7716
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.prol, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 4
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !21, !noalias !7716
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !21, !noalias !7716
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.019.0.i.prol, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 8 ; 3 uses
  %prol.iter131.next = add i64 %prol.iter131, 1   ; 2 uses
  %prol.iter131.cmp.not = icmp eq i64 %prol.iter131.next, %xtraiter129
  br i1 %prol.iter131.cmp.not, label %.lr.ph.i.i15.prol.loopexit, label %.lr.ph.i.i15.prol, !llvm.loop !7722

.lr.ph.i.i15.prol.loopexit:                       ; preds = %.lr.ph.i.i15.prol, %.lr.ph.i.i15.preheader124
  %.lcssa126.unr = phi ptr [ poison, %.lr.ph.i.i15.preheader124 ], [ %i.bw, %.lr.ph.i.i15.prol ]
  %.lcssa125.unr = phi ptr [ poison, %.lr.ph.i.i15.preheader124 ], [ %i.bx, %.lr.ph.i.i15.prol ]
  %.sroa.019.0.i.unr = phi ptr [ %.sroa.019.0.i.ph, %.lr.ph.i.i15.preheader124 ], [ %i.bw, %.lr.ph.i.i15.prol ]
  %.0.i.unr = phi ptr [ %.0.i.ph, %.lr.ph.i.i15.preheader124 ], [ %i.bx, %.lr.ph.i.i15.prol ]
  %.04.i.i.unr = phi i64 [ %.04.i.i.ph, %.lr.ph.i.i15.preheader124 ], [ %i.br, %.lr.ph.i.i15.prol ]
  %i.by = icmp ult i64 %i.bq, 3
  br i1 %i.by, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EELb1EEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i, label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %.lr.ph.i.i15.prol.loopexit, %.lr.ph.i.i15
  %.sroa.019.0.i = phi ptr [ %i.cw, %.lr.ph.i.i15 ], [ %.sroa.019.0.i.unr, %.lr.ph.i.i15.prol.loopexit ] ; 9 uses
end_hunk_2
begin_hunk_3_@_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPS6_Lb1EEEEEvT_SG_PNS_11move_detail13disable_if_orIvNSH_7is_sameINSH_17integral_constantIjLj1EEENSK_IjLj0EEEEENSH_14is_convertibleISG_mEENS2_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEEE4typeE:bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 8
  %i.ds = add i64 %.016.i.i, -2                   ; 2 uses
  %i.dt = load i32, ptr %i.dq, align 4, !tbaa !21
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !21
  %i.du = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 12
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !21
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !21
  %i.dx = add i32 %i.dl, 4
  store i32 %i.dx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 16
  %.not.i12.i.1 = icmp eq i64 %i.ds, 0
  br i1 %.not.i12.i.1, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS7_Lb1EEESC_EEvRT_T0_mT1_m.exit, label %.lr.ph.i11.i, !llvm.loop !7724

bb.i:                                             ; preds = %bb.g
  %.not5.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not5.i.i, label %_ZN5boost9container6copy_nINS0_12vec_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EELb1EEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i, label %.lr.ph.i13.i.preheader

.lr.ph.i13.i.preheader:                           ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.f, 6
  br i1 %min.iters.check, label %.lr.ph.i13.i.preheader127, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i13.i.preheader
  %scevgep = getelementptr i8, ptr %i.be, i64 %i.e
  %bound0 = icmp ult ptr %i.be, %i.b
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i13.i.preheader127, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, -4                       ; 3 uses
  %i.ea = shl nsw i64 %n.vec, 3                   ; 2 uses
  %i.eb = getelementptr i8, ptr %i.a, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.be, i64 %i.ea
  %i.ed = and i64 %i.f, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ee = shl i64 %index, 3                       ; 3 uses
  %i.ef = or disjoint i64 %i.ee, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.ee
  %next.gep43 = getelementptr i8, ptr %i.a, i64 %i.ef
  %next.gep44 = getelementptr i8, ptr %i.be, i64 %i.ee
  %next.gep45 = getelementptr i8, ptr %i.be, i64 %i.ef
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !21, !alias.scope !7725
  %wide.vec47 = load <4 x i32>, ptr %next.gep43, align 4, !tbaa !21, !alias.scope !7725
  store <4 x i32> %wide.vec, ptr %next.gep44, align 4, !tbaa !21, !alias.scope !7728, !noalias !7725
  store <4 x i32> %wide.vec47, ptr %next.gep45, align 4, !tbaa !21, !alias.scope !7728, !noalias !7725
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !7730

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6copy_nINS0_12vec_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EELb1EEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i, label %.lr.ph.i13.i.preheader127

.lr.ph.i13.i.preheader127:                        ; preds = %vector.memcheck, %.lr.ph.i13.i.preheader, %middle.block
  %.ph128 = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i13.i.preheader ], [ %i.eb, %middle.block ] ; 2 uses
  %.07.i.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i13.i.preheader ], [ %i.ec, %middle.block ] ; 2 uses
  %.046.i.i.ph = phi i64 [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.i13.i.preheader ], [ %i.ed, %middle.block ] ; 4 uses
  %i.eh = add nsw i64 %.046.i.i.ph, -1
  %xtraiter = and i64 %.046.i.i.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i13.i.prol.loopexit, label %.lr.ph.i13.i.prol

.lr.ph.i13.i.prol:                                ; preds = %.lr.ph.i13.i.preheader127, %.lr.ph.i13.i.prol
  %i.ei = phi ptr [ %i.eo, %.lr.ph.i13.i.prol ], [ %.ph128, %.lr.ph.i13.i.preheader127 ] ; 3 uses
  %.07.i.i.prol = phi ptr [ %i.ep, %.lr.ph.i13.i.prol ], [ %.07.i.i.ph, %.lr.ph.i13.i.preheader127 ] ; 3 uses
  %.046.i.i.prol = phi i64 [ %i.ej, %.lr.ph.i13.i.prol ], [ %.046.i.i.ph, %.lr.ph.i13.i.preheader127 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i13.i.prol ], [ 0, %.lr.ph.i13.i.preheader127 ]
  %i.ej = add i64 %.046.i.i.prol, -1              ; 2 uses
  %i.ek = load i32, ptr %i.ei, align 4, !tbaa !21
  store i32 %i.ek, ptr %.07.i.i.prol, align 4, !tbaa !21
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.em = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 4
  %i.en = load i32, ptr %i.el, align 4, !tbaa !21
  store i32 %i.en, ptr %i.em, align 4, !tbaa !21
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i13.i.prol.loopexit, label %.lr.ph.i13.i.prol, !llvm.loop !7731

.lr.ph.i13.i.prol.loopexit:                       ; preds = %.lr.ph.i13.i.prol, %.lr.ph.i13.i.preheader127
  %.unr = phi ptr [ %.ph128, %.lr.ph.i13.i.preheader127 ], [ %i.eo, %.lr.ph.i13.i.prol ]
  %.07.i.i.unr = phi ptr [ %.07.i.i.ph, %.lr.ph.i13.i.preheader127 ], [ %i.ep, %.lr.ph.i13.i.prol ]
  %.046.i.i.unr = phi i64 [ %.046.i.i.ph, %.lr.ph.i13.i.preheader127 ], [ %i.ej, %.lr.ph.i13.i.prol ]
  %i.eq = icmp ult i64 %i.eh, 3
  br i1 %i.eq, label %_ZN5boost9container6copy_nINS0_12vec_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EELb1EEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.lr.ph.i13.i.prol.loopexit, %.lr.ph.i13.i
  %i.er = phi ptr [ %i.fp, %.lr.ph.i13.i ], [ %.unr, %.lr.ph.i13.i.prol.loopexit ] ; 9 uses
  %.07.i.i = phi ptr [ %i.fq, %.lr.ph.i13.i ], [ %.07.i.i.unr, %.lr.ph.i13.i.prol.loopexit ] ; 9 uses
  %.046.i.i = phi i64 [ %i.fk, %.lr.ph.i13.i ], [ %.046.i.i.unr, %.lr.ph.i13.i.prol.loopexit ]
  %i.es = load i32, ptr %i.er, align 4, !tbaa !21
  store i32 %i.es, ptr %.07.i.i, align 4, !tbaa !21
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 4
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !21
  store i32 %i.ev, ptr %i.eu, align 4, !tbaa !21
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !21
  store i32 %i.ey, ptr %i.ex, align 4, !tbaa !21
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.fa = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 12
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !21
  store i32 %i.fb, ptr %i.fa, align 4, !tbaa !21
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !21
  store i32 %i.fe, ptr %i.fd, align 4, !tbaa !21
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 20
  %i.fg = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 20
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !21
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !21
  %i.fi = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.fj = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 24
  %i.fk = add i64 %.046.i.i, -4                   ; 2 uses
  %i.fl = load i32, ptr %i.fi, align 4, !tbaa !21
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !21
  %i.fm = getelementptr inbounds nuw i8, ptr %i.er, i64 28
  %i.fn = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 28
  %i.fo = load i32, ptr %i.fm, align 4, !tbaa !21
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !21
  %i.fp = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  %.not.i15.i.3 = icmp eq i64 %i.fk, 0
  br i1 %.not.i15.i.3, label %_ZN5boost9container6copy_nINS0_12vec_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EELb1EEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i, label %.lr.ph.i13.i, !llvm.loop !7732

_ZN5boost9container6copy_nINS0_12vec_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EELb1EEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i: ; preds = %.lr.ph.i13.i.prol.loopexit, %.lr.ph.i13.i, %middle.block, %bb.i
  %.not3.i16.i = icmp eq i64 %i.bg, %i.f
  br i1 %.not3.i16.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS7_Lb1EEESC_EEvRT_T0_mT1_m.exit, label %.lr.ph.preheader.i17.i

.lr.ph.preheader.i17.i:                           ; preds = %_ZN5boost9container6copy_nINS0_12vec_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EELb1EEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i
  %.neg.i = sub i64 %i.f, %i.bg
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i13 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %.neg24.i = trunc i64 %.neg.i to i32
  %.neg25.i = shl i32 %.neg24.i, 1
  %i.fr = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i13, %.neg25.i
  store i32 %i.fr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS7_Lb1EEESC_EEvRT_T0_mT1_m.exit

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS7_Lb1EEESC_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i11.i.prol.loopexit, %.lr.ph.i11.i, %_ZN5boost9container6copy_nINS0_12vec_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EELb1EEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESB_mSC_.exit.i, %.lr.ph.preheader.i17.i
  store i64 %i.f, ptr %i.bf, align 8, !tbaa !1270
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS7_Lb1EEESC_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE6assignIPS6_EEvT_SE_PNS_11move_detail13disable_if_orIvNSF_7is_sameINSF_17integral_constantIjLj1EEENSI_IjLj0EEEEENSF_14is_convertibleISE_mEENS2_17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1271 ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.h, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #20 ; 8 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !1268   ; 3 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1278 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.m = trunc i64 %i.l to i32
  %i.n = shl i32 %i.m, 1
  %i.o = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.n
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %bb.e, %.lr.ph.preheader.i.i
  store i64 0, ptr %i.k, align 8, !tbaa !1278
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = icmp eq ptr %i.p, %i.j
  br i1 %i.q, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.r = shl i64 %i.f, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.r) #21
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !1268
  store i64 %i.d, ptr %i.e, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not16.i.i = icmp eq ptr %1, %2
  br i1 %.not16.i.i, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 3 uses
  %i.t = add i64 %i.a, -8
  %i.u = sub i64 %i.t, %i.b                       ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check89 = icmp ult i64 %i.u, 72
  br i1 %min.iters.check89, label %.lr.ph.i.i.preheader112, label %vector.memcheck83

vector.memcheck83:                                ; preds = %.lr.ph.i.i.preheader
  %i.x = add i64 %i.a, -8
  %i.y = sub i64 %i.x, %i.b
  %i.z = and i64 %i.y, -8
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %scevgep84 = getelementptr i8, ptr %i.aa, i64 8
  %bound085 = icmp ugt ptr %scevgep84, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound186 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict87 = and i1 %bound085, %bound186
  br i1 %found.conflict87, label %.lr.ph.i.i.preheader112, label %vector.ph90

vector.ph90:                                      ; preds = %vector.memcheck83
  %n.vec91 = and i64 %i.w, 4611686018427387900    ; 3 uses
  %i.ab = shl i64 %n.vec91, 3                     ; 2 uses
  %i.ac = getelementptr i8, ptr %1, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.ab   ; 2 uses
  %i.ae = insertelement <2 x i32> <i32 poison, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph90
  %index93 = phi i64 [ 0, %vector.ph90 ], [ %index.next107, %vector.body92 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ae, %vector.ph90 ], [ %i.ah, %vector.body92 ]
  %vec.phi94 = phi <2 x i32> [ zeroinitializer, %vector.ph90 ], [ %i.ai, %vector.body92 ]
  %i.af = shl i64 %index93, 3                     ; 3 uses
  %i.ag = or disjoint i64 %i.af, 16               ; 2 uses
  %next.gep95 = getelementptr i8, ptr %1, i64 %i.af
  %next.gep96 = getelementptr i8, ptr %1, i64 %i.ag
  %next.gep97 = getelementptr i8, ptr %i.i, i64 %i.af
  %next.gep98 = getelementptr i8, ptr %i.i, i64 %i.ag
  %wide.vec99 = load <4 x i32>, ptr %next.gep95, align 4, !tbaa !21, !alias.scope !7733
  %wide.vec102 = load <4 x i32>, ptr %next.gep96, align 4, !tbaa !21, !alias.scope !7733
  store <4 x i32> %wide.vec99, ptr %next.gep97, align 4, !tbaa !21, !alias.scope !7736
  store <4 x i32> %wide.vec102, ptr %next.gep98, align 4, !tbaa !21, !alias.scope !7736
  %i.ah = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.ai = add <2 x i32> %vec.phi94, splat (i32 2) ; 2 uses
  %index.next107 = add nuw i64 %index93, 4        ; 2 uses
  %i.aj = icmp eq i64 %index.next107, %n.vec91
  br i1 %i.aj, label %middle.block108, label %vector.body92, !llvm.loop !7738

middle.block108:                                  ; preds = %vector.body92
  %bin.rdx = add <2 x i32> %i.ai, %i.ah
  %i.ak = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !alias.scope !7739, !noalias !7733
  %cmp.n109 = icmp eq i64 %i.w, %n.vec91
  br i1 %cmp.n109, label %.loopexit, label %.lr.ph.i.i.preheader112

.lr.ph.i.i.preheader112:                          ; preds = %vector.memcheck83, %.lr.ph.i.i.preheader, %middle.block108
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck83 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.preheader ], [ %i.ak, %middle.block108 ]
  %.018.i.i.ph = phi ptr [ %1, %vector.memcheck83 ], [ %1, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block108 ]
  %.01517.i.i.ph = phi ptr [ %i.i, %vector.memcheck83 ], [ %i.i, %.lr.ph.i.i.preheader ], [ %i.ad, %middle.block108 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader112, %.lr.ph.i.i
  %i.al = phi i32 [ %i.an, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader112 ]
  %.018.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %.018.i.i.ph, %.lr.ph.i.i.preheader112 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %.01517.i.i.ph, %.lr.ph.i.i.preheader112 ] ; 2 uses
  %i.am = load <2 x i32>, ptr %.018.i.i, align 4, !tbaa !21
  store <2 x i32> %i.am, ptr %.01517.i.i, align 4, !tbaa !21
  %i.an = add i32 %i.al, 2                        ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, %2
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !7741

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %middle.block108, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit
  %.015.lcssa.i.i = phi ptr [ %i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit ], [ %i.ad, %middle.block108 ], [ %i.ap, %.loopexit.loopexit ]
  %i.aq = ptrtoint ptr %.015.lcssa.i.i to i64
  %i.ar = ptrtoint ptr %i.i to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3
  store i64 %i.at, ptr %i.s, align 8, !tbaa !1270
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %0, align 8, !tbaa !1268  ; 15 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !1278 ; 13 uses
  %i.ax = icmp ult i64 %i.aw, %i.d
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not7.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not7.i.i, label %_ZN5boost9container18copy_n_source_destIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EES7_EENS2_38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i21.preheader

.lr.ph.i.i21.preheader:                           ; preds = %bb.h
  %min.iters.check60 = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check60, label %.lr.ph.i.i21.preheader115, label %vector.memcheck53

vector.memcheck53:                                ; preds = %.lr.ph.i.i21.preheader
  %i.ay = shl i64 %i.aw, 3                        ; 2 uses
  %scevgep54 = getelementptr i8, ptr %i.au, i64 %i.ay
  %scevgep55 = getelementptr i8, ptr %1, i64 %i.ay
  %bound056 = icmp ult ptr %i.au, %scevgep55
  %bound157 = icmp ult ptr %1, %scevgep54
  %found.conflict58 = and i1 %bound056, %bound157
  br i1 %found.conflict58, label %.lr.ph.i.i21.preheader115, label %vector.ph61

vector.ph61:                                      ; preds = %vector.memcheck53
  %n.vec62 = and i64 %i.aw, -4                    ; 3 uses
  %i.az = shl i64 %n.vec62, 3                     ; 2 uses
  %i.ba = getelementptr i8, ptr %i.au, i64 %i.az  ; 2 uses
  %i.bb = getelementptr i8, ptr %1, i64 %i.az     ; 2 uses
  %i.bc = and i64 %i.aw, 3
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next77, %vector.body63 ] ; 2 uses
  %i.bd = shl i64 %index64, 3                     ; 3 uses
  %i.be = or disjoint i64 %i.bd, 16               ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.au, i64 %i.bd
  %next.gep66 = getelementptr i8, ptr %i.au, i64 %i.be
  %next.gep67 = getelementptr i8, ptr %1, i64 %i.bd
  %next.gep68 = getelementptr i8, ptr %1, i64 %i.be
  %wide.vec69 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !21, !alias.scope !7742
  %wide.vec72 = load <4 x i32>, ptr %next.gep68, align 4, !tbaa !21, !alias.scope !7742
  store <4 x i32> %wide.vec69, ptr %next.gep65, align 4, !tbaa !21, !alias.scope !7745, !noalias !7742
  store <4 x i32> %wide.vec72, ptr %next.gep66, align 4, !tbaa !21, !alias.scope !7745, !noalias !7742
  %index.next77 = add nuw i64 %index64, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next77, %n.vec62
  br i1 %i.bf, label %middle.block78, label %vector.body63, !llvm.loop !7747

middle.block78:                                   ; preds = %vector.body63
  %cmp.n79 = icmp eq i64 %i.aw, %n.vec62
  br i1 %cmp.n79, label %_ZN5boost9container18copy_n_source_destIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EES7_EENS2_38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i21.preheader115

.lr.ph.i.i21.preheader115:                        ; preds = %vector.memcheck53, %.lr.ph.i.i21.preheader, %middle.block78
  %.ph116 = phi ptr [ %i.au, %vector.memcheck53 ], [ %i.au, %.lr.ph.i.i21.preheader ], [ %i.ba, %middle.block78 ] ; 2 uses
  %.09.i.i.ph = phi ptr [ %1, %vector.memcheck53 ], [ %1, %.lr.ph.i.i21.preheader ], [ %i.bb, %middle.block78 ] ; 2 uses
  %.068.i.i.ph = phi i64 [ %i.aw, %vector.memcheck53 ], [ %i.aw, %.lr.ph.i.i21.preheader ], [ %i.bc, %middle.block78 ] ; 4 uses
  %i.bg = add i64 %.068.i.i.ph, -1
  %xtraiter120 = and i64 %.068.i.i.ph, 3          ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph.i.i21.prol.loopexit, label %.lr.ph.i.i21.prol

.lr.ph.i.i21.prol:                                ; preds = %.lr.ph.i.i21.preheader115, %.lr.ph.i.i21.prol
  %i.bh = phi ptr [ %i.bo, %.lr.ph.i.i21.prol ], [ %.ph116, %.lr.ph.i.i21.preheader115 ] ; 3 uses
  %.09.i.i.prol = phi ptr [ %i.bn, %.lr.ph.i.i21.prol ], [ %.09.i.i.ph, %.lr.ph.i.i21.preheader115 ] ; 3 uses
  %.068.i.i.prol = phi i64 [ %i.bi, %.lr.ph.i.i21.prol ], [ %.068.i.i.ph, %.lr.ph.i.i21.preheader115 ]
  %prol.iter122 = phi i64 [ %prol.iter122.next, %.lr.ph.i.i21.prol ], [ 0, %.lr.ph.i.i21.preheader115 ]
  %i.bi = add i64 %.068.i.i.prol, -1              ; 2 uses
  %i.bj = load i32, ptr %.09.i.i.prol, align 4, !tbaa !21
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !21
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  %prol.iter122.next = add i64 %prol.iter122, 1   ; 2 uses
  %prol.iter122.cmp.not = icmp eq i64 %prol.iter122.next, %xtraiter120
  br i1 %prol.iter122.cmp.not, label %.lr.ph.i.i21.prol.loopexit, label %.lr.ph.i.i21.prol, !llvm.loop !7748

.lr.ph.i.i21.prol.loopexit:                       ; preds = %.lr.ph.i.i21.prol, %.lr.ph.i.i21.preheader115
  %.lcssa118.unr = phi ptr [ poison, %.lr.ph.i.i21.preheader115 ], [ %i.bn, %.lr.ph.i.i21.prol ]
  %.lcssa117.unr = phi ptr [ poison, %.lr.ph.i.i21.preheader115 ], [ %i.bo, %.lr.ph.i.i21.prol ]
  %.unr = phi ptr [ %.ph116, %.lr.ph.i.i21.preheader115 ], [ %i.bo, %.lr.ph.i.i21.prol ]
  %.09.i.i.unr = phi ptr [ %.09.i.i.ph, %.lr.ph.i.i21.preheader115 ], [ %i.bn, %.lr.ph.i.i21.prol ]
  %.068.i.i.unr = phi i64 [ %.068.i.i.ph, %.lr.ph.i.i21.preheader115 ], [ %i.bi, %.lr.ph.i.i21.prol ]
  %i.bp = icmp ult i64 %i.bg, 3
  br i1 %i.bp, label %_ZN5boost9container18copy_n_source_destIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EES7_EENS2_38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21.prol.loopexit, %.lr.ph.i.i21
  %i.bq = phi ptr [ %i.cp, %.lr.ph.i.i21 ], [ %.unr, %.lr.ph.i.i21.prol.loopexit ] ; 9 uses
  %.09.i.i = phi ptr [ %i.co, %.lr.ph.i.i21 ], [ %.09.i.i.unr, %.lr.ph.i.i21.prol.loopexit ] ; 9 uses
  %.068.i.i = phi i64 [ %i.cj, %.lr.ph.i.i21 ], [ %.068.i.i.unr, %.lr.ph.i.i21.prol.loopexit ]
  %i.br = load i32, ptr %.09.i.i, align 4, !tbaa !21
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !21
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bx = load i32, ptr %i.bv, align 4, !tbaa !21
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
end_hunk_3
begin_hunk_4_@_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS2_18insert_range_proxyISA_NS_13move_iteratorIPS6_EEEEEEvSF_mSF_mT_:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.e = load i32, ptr %.018.i.i, align 4, !tbaa !21
  store i32 %i.e, ptr %.01517.i.i, align 4, !tbaa !21
  store i32 0, ptr %.018.i.i, align 4, !tbaa !21
  %i.f = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21
  store i32 %i.i, ptr %i.g, align 4, !tbaa !21
  store i32 0, ptr %i.h, align 4, !tbaa !21
  %i.j = add i32 %i.f, 2
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %3
  br i1 %.not.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_SB_EENS3_41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.i, label %.lr.ph.i.i, !llvm.loop !1860

_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_SB_EENS3_41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  %.015.lcssa.i.i = phi ptr [ %1, %bb.a ], [ %i.l, %.lr.ph.i.i ] ; 6 uses
  %.not15.i.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS7_EEE31uninitialized_copy_n_and_updateISC_EEvRSA_T_m.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_SB_EENS3_41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.i
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.lcssa.i.i) ]
  %i.m = load i32, ptr %5, align 4, !tbaa !21
  store i32 %i.m, ptr %.015.lcssa.i.i, align 4, !tbaa !21
  store i32 0, ptr %5, align 4, !tbaa !21
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %.015.lcssa.i.i, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21
  store i32 %i.q, ptr %i.o, align 4, !tbaa !21
  store i32 0, ptr %i.p, align 4, !tbaa !21
  %i.r = add i32 %i.n, 2
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.015.lcssa.i.i, i64 8
  %i.u = add nsw i64 %4, -1
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.018.i.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %.015.lcssa.i.i, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.v = icmp eq i64 %4, 1
  br i1 %i.v, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS7_EEE31uninitialized_copy_n_and_updateISC_EEvRSA_T_m.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.018.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.w = load i32, ptr %.sroa.0.016.i.i.i, align 4, !tbaa !21
  store i32 %i.w, ptr %.01417.i.i.i, align 4, !tbaa !21
  store i32 0, ptr %.sroa.0.016.i.i.i, align 4, !tbaa !21
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !21
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !21
  store i32 0, ptr %i.z, align 4, !tbaa !21
  %i.ab = add i32 %i.x, 2
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !21
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !21
  store i32 0, ptr %i.ac, align 4, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 12 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !21
  store i32 0, ptr %i.ag, align 4, !tbaa !21
  %i.ai = add i32 %i.x, 4
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 16
  %i.al = add i64 %.018.i.i.i, -2                 ; 2 uses
  %.not.i.i.i.1 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.1, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS7_EEE31uninitialized_copy_n_and_updateISC_EEvRSA_T_m.exit.i, label %.lr.ph.i.i.i, !llvm.loop !7759

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS7_EEE31uninitialized_copy_n_and_updateISC_EEvRSA_T_m.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_SB_EENS3_41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_SD_SE_.exit.i
  %.not16.i19.i = icmp eq ptr %3, %i.d
  br i1 %.not16.i19.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_SB_NS3_18insert_range_proxyISA_NS_13move_iteratorISB_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit, label %.lr.ph.i20.preheader.i

.lr.ph.i20.preheader.i:                           ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS7_EEE31uninitialized_copy_n_and_updateISC_EEvRSA_T_m.exit.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.015.lcssa.i.i, i64 %4
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i, %.lr.ph.i20.preheader.i
  %.018.i21.i = phi ptr [ %i.at, %.lr.ph.i20.i ], [ %3, %.lr.ph.i20.preheader.i ] ; 4 uses
  %.01517.i22.i = phi ptr [ %i.au, %.lr.ph.i20.i ], [ %i.am, %.lr.ph.i20.preheader.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i) ]
  %i.an = load i32, ptr %.018.i21.i, align 4, !tbaa !21
  store i32 %i.an, ptr %.01517.i22.i, align 4, !tbaa !21
  store i32 0, ptr %.018.i21.i, align 4, !tbaa !21
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %.01517.i22.i, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i21.i, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !21
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !21
  store i32 0, ptr %i.aq, align 4, !tbaa !21
  %i.as = add i32 %i.ao, 2
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %.018.i21.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i22.i, i64 8
  %.not.i23.i = icmp eq ptr %i.at, %i.d
  br i1 %.not.i23.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_SB_NS3_18insert_range_proxyISA_NS_13move_iteratorISB_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit, label %.lr.ph.i20.i, !llvm.loop !1860

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_SB_NS3_18insert_range_proxyISA_NS_13move_iteratorISB_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit: ; preds = %.lr.ph.i20.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS7_EEE31uninitialized_copy_n_and_updateISC_EEvRSA_T_m.exit.i
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_SB_NS3_18insert_range_proxyISA_NS_13move_iteratorISB_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit
  %.not3.i = icmp eq i64 %i.c, 0
  br i1 %.not3.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_EENS3_33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.av = trunc i64 %i.c to i32
  %i.aw = shl i32 %i.av, 1
  %i.ax = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.aw
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_EENS3_33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_EENS3_33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit: ; preds = %.lr.ph.preheader.i, %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = icmp eq ptr %i.ay, %i.a
  br i1 %i.az, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_EENS3_33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !1271
  %i.bc = shl i64 %i.bb, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.bc) #21
  %.pre = load i64, ptr %i.b, align 8, !tbaa !1270
  br label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEED2Ev.exit

_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorINS1_4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEED2Ev.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_SB_NS3_18insert_range_proxyISA_NS_13move_iteratorISB_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit, %bb.c, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_EENS3_33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit
  %i.bd = phi i64 [ %i.c, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_SB_NS3_18insert_range_proxyISA_NS_13move_iteratorISB_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit ], [ %.pre, %bb.c ], [ %i.c, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEPS7_EENS3_33disable_if_trivially_destructibleIT0_vE4typeERT_SD_m.exit ]
  store ptr %1, ptr %0, align 8, !tbaa !1268
  %i.be = add i64 %i.bd, %4
  store i64 %i.be, ptr %i.b, align 8, !tbaa !1270
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.bf, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE6assignINS_13move_iteratorIPS6_EEEEvT_SG_PNS_11move_detail13disable_if_orIvNSH_7is_sameINSH_17integral_constantIjLj1EEENSK_IjLj0EEEEENSH_14is_convertibleISG_mEENS2_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1271 ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.h, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #20 ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !1268   ; 3 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1278 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.m = trunc i64 %i.l to i32
  %i.n = shl i32 %i.m, 1
  %i.o = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.n
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit

_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %bb.e, %.lr.ph.preheader.i.i
  store i64 0, ptr %i.k, align 8, !tbaa !1278
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = icmp eq ptr %i.p, %i.j
  br i1 %i.q, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.r = shl i64 %i.f, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.r) #21
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES5_EENS0_22small_vector_allocatorIS6_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !1268
  store i64 %i.d, ptr %i.e, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not13.i.i = icmp eq ptr %1, %2
  br i1 %.not13.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %1, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 4
  %i.u = load <2 x i32>, ptr %.sroa.010.014.i.i, align 4, !tbaa !21
  store i32 0, ptr %.sroa.010.014.i.i, align 4, !tbaa !21
  %i.v = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  store <2 x i32> %i.u, ptr %.015.i.i, align 4, !tbaa !21
  store i32 0, ptr %i.t, align 4, !tbaa !21
  %i.w = add i32 %i.v, 2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %2
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !7760

.loopexit:                                        ; preds = %.lr.ph.i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS7_m.exit ], [ %i.y, %.lr.ph.i.i ]
  %i.z = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.aa = ptrtoint ptr %i.i to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  store i64 %i.ac, ptr %i.s, align 8, !tbaa !1270
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %0, align 8, !tbaa !1268  ; 13 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1278 ; 13 uses
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not4.i.i = icmp eq i64 %i.af, 0
  br i1 %.not4.i.i, label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EEEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i, label %.lr.ph.i.i22.preheader

.lr.ph.i.i22.preheader:                           ; preds = %bb.h
  %min.iters.check55 = icmp ult i64 %i.af, 6
  br i1 %min.iters.check55, label %.lr.ph.i.i22.preheader72, label %vector.memcheck48

vector.memcheck48:                                ; preds = %.lr.ph.i.i22.preheader
  %i.ah = shl i64 %i.af, 3                        ; 2 uses
  %scevgep49 = getelementptr i8, ptr %i.ad, i64 %i.ah
  %scevgep50 = getelementptr i8, ptr %1, i64 %i.ah
  %bound051 = icmp ult ptr %i.ad, %scevgep50
  %bound152 = icmp ult ptr %1, %scevgep49
  %found.conflict53 = and i1 %bound051, %bound152
  br i1 %found.conflict53, label %.lr.ph.i.i22.preheader72, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck48
  %n.vec57 = and i64 %i.af, -2                    ; 3 uses
  %i.ai = shl i64 %n.vec57, 3                     ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ad, i64 %i.ai  ; 2 uses
  %i.ak = and i64 %i.af, 1
  %i.al = getelementptr i8, ptr %1, i64 %i.ai     ; 2 uses
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph56
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next66, %vector.body58 ] ; 2 uses
  %i.am = shl i64 %index59, 3                     ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.ad, i64 %i.am
  %next.gep61 = getelementptr i8, ptr %1, i64 %i.am ; 2 uses
  %wide.vec62 = load <4 x i32>, ptr %next.gep61, align 4, !tbaa !21, !alias.scope !7761
  store <4 x i32> %wide.vec62, ptr %next.gep60, align 4, !tbaa !21, !alias.scope !7764, !noalias !7761
  store <4 x i32> zeroinitializer, ptr %next.gep61, align 4, !tbaa !21, !alias.scope !7761
  %index.next66 = add nuw i64 %index59, 2         ; 2 uses
  %i.an = icmp eq i64 %index.next66, %n.vec57
  br i1 %i.an, label %middle.block67, label %vector.body58, !llvm.loop !7766

middle.block67:                                   ; preds = %vector.body58
  %cmp.n68 = icmp eq i64 %i.af, %n.vec57
  br i1 %cmp.n68, label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EEEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i, label %.lr.ph.i.i22.preheader72

.lr.ph.i.i22.preheader72:                         ; preds = %vector.memcheck48, %.lr.ph.i.i22.preheader, %middle.block67
  %.ph = phi ptr [ %i.ad, %vector.memcheck48 ], [ %i.ad, %.lr.ph.i.i22.preheader ], [ %i.aj, %middle.block67 ] ; 4 uses
  %.06.i.i.ph = phi i64 [ %i.af, %vector.memcheck48 ], [ %i.af, %.lr.ph.i.i22.preheader ], [ %i.ak, %middle.block67 ] ; 4 uses
  %.sroa.0.05.i.i.ph = phi ptr [ %1, %vector.memcheck48 ], [ %1, %.lr.ph.i.i22.preheader ], [ %i.al, %middle.block67 ] ; 5 uses
  %xtraiter76 = and i64 %.06.i.i.ph, 1
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %.lr.ph.i.i22.prol.loopexit, label %.lr.ph.i.i22.prol

.lr.ph.i.i22.prol:                                ; preds = %.lr.ph.i.i22.preheader72
  %i.ao = add nsw i64 %.06.i.i.ph, -1
  %i.ap = load i32, ptr %.sroa.0.05.i.i.ph, align 4, !tbaa !21
  store i32 %i.ap, ptr %.ph, align 4, !tbaa !21
  store i32 0, ptr %.sroa.0.05.i.i.ph, align 4, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.ph, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.ph, i64 4
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !21
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !21
  store i32 0, ptr %i.aq, align 4, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.ph, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.ph, i64 8 ; 2 uses
  br label %.lr.ph.i.i22.prol.loopexit

.lr.ph.i.i22.prol.loopexit:                       ; preds = %.lr.ph.i.i22.prol, %.lr.ph.i.i22.preheader72
  %.lcssa74.unr = phi ptr [ poison, %.lr.ph.i.i22.preheader72 ], [ %i.at, %.lr.ph.i.i22.prol ]
  %.lcssa73.unr = phi ptr [ poison, %.lr.ph.i.i22.preheader72 ], [ %i.au, %.lr.ph.i.i22.prol ]
  %.unr = phi ptr [ %.ph, %.lr.ph.i.i22.preheader72 ], [ %i.au, %.lr.ph.i.i22.prol ]
  %.06.i.i.unr = phi i64 [ %.06.i.i.ph, %.lr.ph.i.i22.preheader72 ], [ %i.ao, %.lr.ph.i.i22.prol ]
  %.sroa.0.05.i.i.unr = phi ptr [ %.sroa.0.05.i.i.ph, %.lr.ph.i.i22.preheader72 ], [ %i.at, %.lr.ph.i.i22.prol ]
  %i.av = icmp eq i64 %.06.i.i.ph, 1
  br i1 %i.av, label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EEEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i, label %.lr.ph.i.i22

.lr.ph.i.i22:                                     ; preds = %.lr.ph.i.i22.prol.loopexit, %.lr.ph.i.i22
  %i.aw = phi ptr [ %i.bj, %.lr.ph.i.i22 ], [ %.unr, %.lr.ph.i.i22.prol.loopexit ] ; 5 uses
  %.06.i.i = phi i64 [ %i.bd, %.lr.ph.i.i22 ], [ %.06.i.i.unr, %.lr.ph.i.i22.prol.loopexit ]
  %.sroa.0.05.i.i = phi ptr [ %i.bi, %.lr.ph.i.i22 ], [ %.sroa.0.05.i.i.unr, %.lr.ph.i.i22.prol.loopexit ] ; 6 uses
  %i.ax = load i32, ptr %.sroa.0.05.i.i, align 4, !tbaa !21
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !21
  store i32 0, ptr %.sroa.0.05.i.i, align 4, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !21
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !21
  store i32 0, ptr %i.ay, align 4, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bd = add i64 %.06.i.i, -2                    ; 2 uses
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !21
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !21
  store i32 0, ptr %i.bb, align 4, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 12 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !21
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !21
  store i32 0, ptr %i.bf, align 4, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %.not.i.i23.1 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i23.1, label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EEEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i, label %.lr.ph.i.i22, !llvm.loop !7767

_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EEEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i: ; preds = %.lr.ph.i.i22.prol.loopexit, %.lr.ph.i.i22, %middle.block67, %bb.h
  %.0.i = phi ptr [ %i.ad, %bb.h ], [ %i.aj, %middle.block67 ], [ %.lcssa73.unr, %.lr.ph.i.i22.prol.loopexit ], [ %i.bj, %.lr.ph.i.i22 ] ; 5 uses
  %.sroa.0.0.lcssa.i.i = phi ptr [ %1, %bb.h ], [ %i.al, %middle.block67 ], [ %.lcssa74.unr, %.lr.ph.i.i22.prol.loopexit ], [ %i.bi, %.lr.ph.i.i22 ] ; 5 uses
  %i.bk = sub i64 %i.d, %i.af                     ; 3 uses
  %.neg = add i64 %i.af, 1
  %xtraiter78 = and i64 %i.bk, 1
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.lr.ph.i15.i.prol.loopexit, label %.lr.ph.i15.i.prol

.lr.ph.i15.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EEEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i
  %i.bl = add nsw i64 %i.bk, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i) ]
  %i.bm = load i32, ptr %.sroa.0.0.lcssa.i.i, align 4, !tbaa !21
  store i32 %i.bm, ptr %.0.i, align 4, !tbaa !21
  store i32 0, ptr %.sroa.0.0.lcssa.i.i, align 4, !tbaa !21
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !21
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !21
  store i32 0, ptr %i.bp, align 4, !tbaa !21
  %i.br = add i32 %i.bn, 2
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  br label %.lr.ph.i15.i.prol.loopexit

.lr.ph.i15.i.prol.loopexit:                       ; preds = %.lr.ph.i15.i.prol, %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EEEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i
  %.018.i.i.unr = phi i64 [ %i.bk, %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EEEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i ], [ %i.bl, %.lr.ph.i15.i.prol ]
  %.01417.i.i.unr = phi ptr [ %.0.i, %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EEEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i ], [ %i.bt, %.lr.ph.i15.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EEEES8_EENS3_38disable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESB_mRSC_.exit.i ], [ %i.bs, %.lr.ph.i15.i.prol ]
  %i.bu = icmp eq i64 %i.d, %.neg
  br i1 %i.bu, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_3dtl4pairINS0_4test24movable_and_copyable_intES6_EENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS7_EESC_EEvRT_T0_mT1_m.exit, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i15.i.prol.loopexit, %.lr.ph.i15.i
  %.018.i.i = phi i64 [ %i.cd, %.lr.ph.i15.i ], [ %.018.i.i.unr, %.lr.ph.i15.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.cl, %.lr.ph.i15.i ], [ %.01417.i.i.unr, %.lr.ph.i15.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i = phi ptr [ %i.ck, %.lr.ph.i15.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i15.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i) ]
  %i.bv = load i32, ptr %.sroa.0.016.i.i, align 4, !tbaa !21
  store i32 %i.bv, ptr %.01417.i.i, align 4, !tbaa !21
  store i32 0, ptr %.sroa.0.016.i.i, align 4, !tbaa !21
  %i.bw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bx = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 4 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !21
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !21
  store i32 0, ptr %i.by, align 4, !tbaa !21
  %i.ca = add i32 %i.bw, 2
  store i32 %i.ca, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %i.cd = add i64 %.018.i.i, -2                   ; 2 uses
  %i.ce = load i32, ptr %i.cb, align 4, !tbaa !21
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !21
  store i32 0, ptr %i.cb, align 4, !tbaa !21
  %i.cf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.cg = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 12
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib14pdqsort_detail15partition_rightINS_9container22stable_vector_iteratorIPNS3_3dtl4pairINS3_4test24movable_and_copyable_intES8_EELb0EEENS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEENS1_4pairIT_bEESJ_SJ_T0_:bb.a
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21   ; 2 uses
  %i.m = icmp slt i32 %i.l, %i.f
  br i1 %i.m, label %bb.b, label %bb.c, !llvm.loop !13267

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !1924, !noalias !13268 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1913, !noalias !13268 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %.preheader37, label %.preheader38

.preheader37:                                     ; preds = %bb.c, %bb.d
  %.sroa.011.0 = phi ptr [ %i.u, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.011.0, align 8, !tbaa !1924 ; 2 uses
  %i.s = icmp ult ptr %i.n, %i.r
  br i1 %i.s, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.preheader37
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1913 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21
  %i.x = icmp slt i32 %i.w, %i.f
  br i1 %i.x, label %.critedge, label %.preheader37, !llvm.loop !13271

.preheader38:                                     ; preds = %bb.c, %.preheader38
  %.sroa.011.1 = phi ptr [ %i.aa, %.preheader38 ], [ %i.g, %bb.c ]
  %i.y = load ptr, ptr %.sroa.011.1, align 8, !tbaa !1924
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1913 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !21
  %i.ad = icmp slt i32 %i.ac, %i.f
  br i1 %i.ad, label %.critedge, label %.preheader38, !llvm.loop !13272

.critedge:                                        ; preds = %.preheader38, %bb.d, %.preheader37
  %.sroa.011.2 = phi ptr [ %i.u, %bb.d ], [ %.sroa.011.0, %.preheader37 ], [ %i.aa, %.preheader38 ] ; 2 uses
  %i.ae = load ptr, ptr %.sroa.011.2, align 8, !tbaa !1924 ; 2 uses
  %i.af = icmp ult ptr %i.n, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.critedge, %bb.f
  %i.ag = phi i32 [ %i.as, %bb.f ], [ %i.l, %.critedge ]
  %.sroa.021.145 = phi ptr [ %i.aq, %bb.f ], [ %i.j, %.critedge ] ; 3 uses
  %.sroa.011.344 = phi ptr [ %i.aw, %bb.f ], [ %.sroa.011.2, %.critedge ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.021.145, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.011.344, i64 8 ; 2 uses
  store i32 0, ptr %i.ah, align 4, !tbaa !21
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !21
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !21
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.021.145, i64 12 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.011.344, i64 12 ; 2 uses
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !21
  store i32 0, ptr %i.ak, align 4, !tbaa !21
  %i.an = load i32, ptr %i.al, align 4, !tbaa !21
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !21
  store i32 %i.am, ptr %i.al, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.021.2 = phi ptr [ %.sroa.021.145, %.lr.ph ], [ %i.aq, %bb.e ]
  %i.ao = load ptr, ptr %.sroa.021.2, align 8, !tbaa !1924
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1913 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !21 ; 2 uses
  %i.at = icmp slt i32 %i.as, %i.f
  br i1 %i.at, label %bb.e, label %.preheader, !llvm.loop !13273

.preheader:                                       ; preds = %bb.e, %.preheader
  %.sroa.011.4 = phi ptr [ %i.aw, %.preheader ], [ %.sroa.011.344, %bb.e ]
  %i.au = load ptr, ptr %.sroa.011.4, align 8, !tbaa !1924
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1913 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !21
  %i.az = icmp slt i32 %i.ay, %i.f
  br i1 %i.az, label %bb.f, label %.preheader, !llvm.loop !13274

bb.f:                                             ; preds = %.preheader
  %i.ba = load ptr, ptr %i.aq, align 8, !tbaa !1924 ; 2 uses
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !1924
  %i.bc = icmp ult ptr %i.ba, %i.bb
  br i1 %i.bc, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !13275

._crit_edge.loopexit:                             ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1913, !noalias !13276
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.critedge
  %i.bd = phi ptr [ %i.p, %.critedge ], [ %.pre, %._crit_edge.loopexit ] ; 5 uses
  %.not = icmp eq ptr %i.a, %i.bd
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !21
  store i32 %i.bf, ptr %i.b, align 4, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !21
  store i32 %i.bh, ptr %i.d, align 4, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.bi = icmp uge ptr %i.n, %i.ae
  %i.bj = zext i1 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store <2 x i32> %i.e, ptr %i.bk, align 4, !tbaa !21
  store ptr %i.bd, ptr %0, align 8, !tbaa !1967
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.bj, ptr %i.bl, align 8, !tbaa !13248
  store i32 %i.c, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE6assignIPS3_EEvT_S9_PNS_11move_detail13disable_if_orIvNSA_7is_sameINSA_17integral_constantIjLj1EEENSD_IjLj0EEEEENSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !2621 ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.h, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #20 ; 7 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !2619   ; 4 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2615 ; 5 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter112 = and i64 %i.l, 3                  ; 2 uses
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.m, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter114 = phi i64 [ %prol.iter114.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.m = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !21
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter114.next = add i64 %prol.iter114, 1   ; 2 uses
  %prol.iter114.cmp.not = icmp eq i64 %prol.iter114.next, %xtraiter112
  br i1 %prol.iter114.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !13279

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.l, %.lr.ph.i.i.preheader ], [ %i.m, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.preheader ], [ %i.p, %.lr.ph.i.i.prol ]
  %i.q = icmp ult i64 %i.l, 4
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !21
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 4 uses
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.t, align 4, !tbaa !21
  %i.u = add i32 %i.r, -2
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !21
  %i.w = add i32 %i.r, -3
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.y = add i64 %.05.i.i, -4                     ; 2 uses
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !21
  %i.z = add i32 %i.r, -4
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !2645

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.k, align 8, !tbaa !2615
  %i.ab = shl i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ab) #21
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !2619
  store i64 %i.d, ptr %i.e, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not16.i.i = icmp eq ptr %1, %2
  br i1 %.not16.i.i, label %.loopexit, label %.lr.ph.i.i18.preheader

.lr.ph.i.i18.preheader:                           ; preds = %bb.f
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 3 uses
  %i.ad = add i64 %i.a, -4
  %i.ae = sub i64 %i.ad, %i.b                     ; 2 uses
  %i.af = lshr i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check77 = icmp ult i64 %i.ae, 60
  br i1 %min.iters.check77, label %.lr.ph.i.i18.preheader93, label %vector.memcheck75

vector.memcheck75:                                ; preds = %.lr.ph.i.i18.preheader
  %i.ah = add i64 %i.a, -4
  %i.ai = sub i64 %i.ah, %i.b
  %i.aj = and i64 %i.ai, -4
  %i.ak = getelementptr i8, ptr %1, i64 %i.aj
  %scevgep = getelementptr i8, ptr %i.ak, i64 4
  %bound0 = icmp ugt ptr %scevgep, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i18.preheader93, label %vector.ph78

vector.ph78:                                      ; preds = %vector.memcheck75
  %n.vec79 = and i64 %i.ag, 9223372036854775800   ; 3 uses
  %i.al = shl i64 %n.vec79, 2                     ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 %i.al
  %i.an = getelementptr i8, ptr %i.i, i64 %i.al   ; 2 uses
  %i.ao = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next87, %vector.body80 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ao, %vector.ph78 ], [ %i.as, %vector.body80 ]
  %vec.phi82 = phi <4 x i32> [ zeroinitializer, %vector.ph78 ], [ %i.at, %vector.body80 ]
  %i.ap = shl i64 %index81, 2                     ; 2 uses
  %next.gep83 = getelementptr i8, ptr %1, i64 %i.ap ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.i, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep83, i64 16
  %wide.load85 = load <4 x i32>, ptr %next.gep83, align 4, !tbaa !21, !alias.scope !13280
  %wide.load86 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !21, !alias.scope !13280
  %i.ar = getelementptr i8, ptr %next.gep84, i64 16
  store <4 x i32> %wide.load85, ptr %next.gep84, align 4, !tbaa !21
  store <4 x i32> %wide.load86, ptr %i.ar, align 4, !tbaa !21
  %i.as = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.at = add <4 x i32> %vec.phi82, splat (i32 1) ; 2 uses
  %index.next87 = add nuw i64 %index81, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next87, %n.vec79
  br i1 %i.au, label %middle.block88, label %vector.body80, !llvm.loop !13283

middle.block88:                                   ; preds = %vector.body80
  %bin.rdx = add <4 x i32> %i.at, %i.as
  %i.av = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !alias.scope !13284, !noalias !13280
  %cmp.n89 = icmp eq i64 %i.ag, %n.vec79
  br i1 %cmp.n89, label %.loopexit, label %.lr.ph.i.i18.preheader93

.lr.ph.i.i18.preheader93:                         ; preds = %vector.memcheck75, %.lr.ph.i.i18.preheader, %middle.block88
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck75 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i18.preheader ], [ %i.av, %middle.block88 ]
  %.018.i.i.ph = phi ptr [ %1, %vector.memcheck75 ], [ %1, %.lr.ph.i.i18.preheader ], [ %i.am, %middle.block88 ]
  %.01517.i.i.ph = phi ptr [ %i.i, %vector.memcheck75 ], [ %i.i, %.lr.ph.i.i18.preheader ], [ %i.an, %middle.block88 ]
  br label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i.i18.preheader93, %.lr.ph.i.i18
  %i.aw = phi i32 [ %i.ay, %.lr.ph.i.i18 ], [ %.ph, %.lr.ph.i.i18.preheader93 ]
  %.018.i.i = phi ptr [ %i.az, %.lr.ph.i.i18 ], [ %.018.i.i.ph, %.lr.ph.i.i18.preheader93 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.ba, %.lr.ph.i.i18 ], [ %.01517.i.i.ph, %.lr.ph.i.i18.preheader93 ] ; 2 uses
  %i.ax = load i32, ptr %.018.i.i, align 4, !tbaa !21
  store i32 %i.ax, ptr %.01517.i.i, align 4, !tbaa !21
  %i.ay = add i32 %i.aw, 1                        ; 2 uses
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.az, %2
  br i1 %.not.i.i19, label %.loopexit, label %.lr.ph.i.i18, !llvm.loop !13286

.loopexit:                                        ; preds = %.lr.ph.i.i18, %middle.block88, %bb.f
  %.015.lcssa.i.i = phi ptr [ %i.i, %bb.f ], [ %i.an, %middle.block88 ], [ %i.ba, %.lr.ph.i.i18 ]
  %i.bb = ptrtoint ptr %.015.lcssa.i.i to i64
  %i.bc = ptrtoint ptr %i.i to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  store i64 %i.be, ptr %i.ac, align 8, !tbaa !2620
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bf = load ptr, ptr %0, align 8, !tbaa !2619  ; 9 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64              ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !2615 ; 11 uses
  %i.bj = icmp ult i64 %i.bi, %i.d
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not7.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not7.i.i, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23.preheader

.lr.ph.i.i23.preheader:                           ; preds = %bb.h
  %min.iters.check60 = icmp ult i64 %i.bi, 8
  %i.bk = sub i64 %i.b, %i.bg
  %diff.check58 = icmp ugt i64 %i.bk, -32
  %or.cond = select i1 %min.iters.check60, i1 true, i1 %diff.check58
  br i1 %or.cond, label %.lr.ph.i.i23.preheader96, label %vector.ph61

vector.ph61:                                      ; preds = %.lr.ph.i.i23.preheader
  %n.vec62 = and i64 %i.bi, -8                    ; 3 uses
  %i.bl = shl i64 %n.vec62, 2                     ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bf, i64 %i.bl  ; 2 uses
  %i.bn = getelementptr i8, ptr %1, i64 %i.bl     ; 2 uses
  %i.bo = and i64 %i.bi, 7
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next69, %vector.body63 ] ; 2 uses
  %i.bp = shl i64 %index64, 2                     ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.bf, i64 %i.bp ; 2 uses
  %next.gep66 = getelementptr i8, ptr %1, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load67 = load <4 x i32>, ptr %next.gep66, align 4, !tbaa !21
  %wide.load68 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !21
  %i.br = getelementptr i8, ptr %next.gep65, i64 16
  store <4 x i32> %wide.load67, ptr %next.gep65, align 4, !tbaa !21
  store <4 x i32> %wide.load68, ptr %i.br, align 4, !tbaa !21
  %index.next69 = add nuw i64 %index64, 8         ; 2 uses
  %i.bs = icmp eq i64 %index.next69, %n.vec62
  br i1 %i.bs, label %middle.block70, label %vector.body63, !llvm.loop !13287

middle.block70:                                   ; preds = %vector.body63
  %cmp.n71 = icmp eq i64 %i.bi, %n.vec62
  br i1 %cmp.n71, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23.preheader96

.lr.ph.i.i23.preheader96:                         ; preds = %.lr.ph.i.i23.preheader, %middle.block70
  %.ph97 = phi ptr [ %i.bf, %.lr.ph.i.i23.preheader ], [ %i.bm, %middle.block70 ] ; 2 uses
  %.09.i.i.ph = phi ptr [ %1, %.lr.ph.i.i23.preheader ], [ %i.bn, %middle.block70 ] ; 2 uses
  %.068.i.i.ph = phi i64 [ %i.bi, %.lr.ph.i.i23.preheader ], [ %i.bo, %middle.block70 ] ; 4 uses
  %i.bt = add i64 %.068.i.i.ph, -1
  %xtraiter106 = and i64 %.068.i.i.ph, 7          ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.i.i23.prol.loopexit, label %.lr.ph.i.i23.prol

.lr.ph.i.i23.prol:                                ; preds = %.lr.ph.i.i23.preheader96, %.lr.ph.i.i23.prol
  %i.bu = phi ptr [ %i.by, %.lr.ph.i.i23.prol ], [ %.ph97, %.lr.ph.i.i23.preheader96 ] ; 2 uses
  %.09.i.i.prol = phi ptr [ %i.bx, %.lr.ph.i.i23.prol ], [ %.09.i.i.ph, %.lr.ph.i.i23.preheader96 ] ; 2 uses
  %.068.i.i.prol = phi i64 [ %i.bv, %.lr.ph.i.i23.prol ], [ %.068.i.i.ph, %.lr.ph.i.i23.preheader96 ]
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.lr.ph.i.i23.prol ], [ 0, %.lr.ph.i.i23.preheader96 ]
  %i.bv = add i64 %.068.i.i.prol, -1              ; 2 uses
  %i.bw = load i32, ptr %.09.i.i.prol, align 4, !tbaa !21
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 4 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 3 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i.i23.prol.loopexit, label %.lr.ph.i.i23.prol, !llvm.loop !13288

.lr.ph.i.i23.prol.loopexit:                       ; preds = %.lr.ph.i.i23.prol, %.lr.ph.i.i23.preheader96
  %.lcssa99.unr = phi ptr [ poison, %.lr.ph.i.i23.preheader96 ], [ %i.bx, %.lr.ph.i.i23.prol ]
  %.lcssa98.unr = phi ptr [ poison, %.lr.ph.i.i23.preheader96 ], [ %i.by, %.lr.ph.i.i23.prol ]
  %.unr = phi ptr [ %.ph97, %.lr.ph.i.i23.preheader96 ], [ %i.by, %.lr.ph.i.i23.prol ]
  %.09.i.i.unr = phi ptr [ %.09.i.i.ph, %.lr.ph.i.i23.preheader96 ], [ %i.bx, %.lr.ph.i.i23.prol ]
  %.068.i.i.unr = phi i64 [ %.068.i.i.ph, %.lr.ph.i.i23.preheader96 ], [ %i.bv, %.lr.ph.i.i23.prol ]
  %i.bz = icmp ult i64 %i.bt, 7
  br i1 %i.bz, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %.lr.ph.i.i23.prol.loopexit, %.lr.ph.i.i23
  %i.ca = phi ptr [ %i.cz, %.lr.ph.i.i23 ], [ %.unr, %.lr.ph.i.i23.prol.loopexit ] ; 9 uses
  %.09.i.i = phi ptr [ %i.cy, %.lr.ph.i.i23 ], [ %.09.i.i.unr, %.lr.ph.i.i23.prol.loopexit ] ; 9 uses
  %.068.i.i = phi i64 [ %i.cw, %.lr.ph.i.i23 ], [ %.068.i.i.unr, %.lr.ph.i.i23.prol.loopexit ]
  %i.cb = load i32, ptr %.09.i.i, align 4, !tbaa !21
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !21
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !21
  %i.cf = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !21
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !21
  %i.ci = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !21
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !21
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !21
  %i.co = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 20
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !21
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !21
  %i.cr = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !21
  store i32 %i.ct, ptr %i.cs, align 4, !tbaa !21
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SF_T0_NS0_9iter_sizeISF_E4typeEb:bb.a

.critedge.i154:                                   ; preds = %bb.av, %..critedge.i154_crit_edge, %bb.au
  %.lcssa.i = phi ptr [ %.0204, %bb.au ], [ %i.lo, %..critedge.i154_crit_edge ], [ %.0204, %bb.av ] ; 2 uses
  store i32 %i.lh, ptr %.lcssa.i, align 4, !tbaa !21
  %i.ls = ptrtoint ptr %.02940.i to i64
  %i.lt = ptrtoint ptr %.lcssa.i to i64
  %i.lu = sub i64 %i.ls, %i.lt
  %i.lv = ashr exact i64 %i.lu, 2
  %i.lw = add nsw i64 %i.lv, %.02439.i
  %i.lx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ly = add i32 %i.lx, -1
  store i32 %i.ly, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %bb.aw

bb.aw:                                            ; preds = %.critedge.i154, %.lr.ph.i149
  %.125.i = phi i64 [ %i.lw, %.critedge.i154 ], [ %.02439.i, %.lr.ph.i149 ] ; 2 uses
  %.029.i = getelementptr inbounds nuw i8, ptr %.02940.i, i64 4 ; 2 uses
  %.not.i150 = icmp eq ptr %.029.i, %.ptr283      ; 2 uses
  %i.lz = icmp ugt i64 %.125.i, 8
  %or.cond.i151 = select i1 %.not.i150, i1 true, i1 %i.lz
  br i1 %or.cond.i151, label %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit, label %.lr.ph.i149, !llvm.loop !15097

_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit: ; preds = %bb.aw
  br i1 %.not.i150, label %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit.thread, label %bb.ba

_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit.thread: ; preds = %bb.at, %bb.at, %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit
  %i.ma = icmp eq ptr %i.hj, %1
  %.02936.i155.ptr = getelementptr inbounds nuw i8, ptr %.ptr283, i64 8
  %.not37.i156 = icmp eq ptr %.02936.i155.ptr, %1
  %or.cond45.i157 = select i1 %i.ma, i1 true, i1 %.not37.i156
  br i1 %or.cond45.i157, label %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit173.thread, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit.thread, %bb.az
  %.02940.i159.idx = phi i64 [ %.02940.i159.add, %bb.az ], [ 8, %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit.thread ] ; 4 uses
  %.02439.i160 = phi i64 [ %.125.i162, %bb.az ], [ 0, %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit.thread ] ; 2 uses
  %.pn38.i161 = phi ptr [ %.02940.i159.ptr, %bb.az ], [ %i.hj, %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit.thread ] ; 4 uses
  %.02940.i159.ptr = getelementptr inbounds nuw i8, ptr %.ptr283, i64 %.02940.i159.idx ; 4 uses
  %i.mb = load i32, ptr %.02940.i159.ptr, align 4, !tbaa !21 ; 3 uses
  %i.mc = load i32, ptr %.pn38.i161, align 4, !tbaa !21
  %i.md = icmp slt i32 %i.mb, %i.mc
  br i1 %i.md, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %.lr.ph.i158
  store i32 0, ptr %.02940.i159.ptr, align 4, !tbaa !21
  %i.me = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.mf = add i32 %i.me, 1
  store i32 %i.mf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %.pre.i167 = load i32, ptr %.pn38.i161, align 4, !tbaa !21
  %.027.i168.ptr326 = getelementptr inbounds nuw i8, ptr %.ptr283, i64 %.02940.i159.idx
  %.027.i168.add327 = add nsw i64 %.02940.i159.idx, -4 ; 2 uses
  store i32 %.pre.i167, ptr %.027.i168.ptr326, align 4, !tbaa !21
  store i32 0, ptr %.pn38.i161, align 4, !tbaa !21
  %.not32.i170328 = icmp eq i64 %.027.i168.add327, 4
  br i1 %.not32.i170328, label %.critedge.i171, label %.lr.ph332

bb.ay:                                            ; preds = %.lr.ph332
  %.027.i168.add = add nsw i64 %.027.i168.add330, -4 ; 2 uses
  store i32 %i.mh, ptr %.027.i168.ptr, align 4, !tbaa !21
  store i32 0, ptr %i.mg, align 4, !tbaa !21
  %.not32.i170 = icmp eq i64 %.027.i168.add, 4
  br i1 %.not32.i170, label %.critedge.i171, label %.lr.ph332, !llvm.loop !15096

.lr.ph332:                                        ; preds = %bb.ax, %bb.ay
  %.027.i168.add330 = phi i64 [ %.027.i168.add, %bb.ay ], [ %.027.i168.add327, %bb.ax ] ; 2 uses
  %.026.i169329 = phi ptr [ %i.mg, %bb.ay ], [ %.pn38.i161, %bb.ax ]
  %i.mg = getelementptr inbounds i8, ptr %.026.i169329, i64 -4 ; 3 uses
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !21 ; 2 uses
  %i.mi = icmp slt i32 %i.mb, %i.mh
  %.027.i168.ptr = getelementptr inbounds i8, ptr %.ptr283, i64 %.027.i168.add330 ; 3 uses
  br i1 %i.mi, label %bb.ay, label %.critedge.i171.split.loop.exit, !llvm.loop !15096

.critedge.i171.split.loop.exit:                   ; preds = %.lr.ph332
  %.pre227 = ptrtoint ptr %.027.i168.ptr to i64
  br label %.critedge.i171

.critedge.i171:                                   ; preds = %bb.ay, %bb.ax, %.critedge.i171.split.loop.exit
  %.pre-phi228 = phi i64 [ %.pre227, %.critedge.i171.split.loop.exit ], [ %i.hk, %bb.ax ], [ %i.hk, %bb.ay ]
  %.lcssa.i172 = phi ptr [ %.027.i168.ptr, %.critedge.i171.split.loop.exit ], [ %i.hj, %bb.ax ], [ %i.hj, %bb.ay ]
  store i32 %i.mb, ptr %.lcssa.i172, align 4, !tbaa !21
  %i.mj = ptrtoint ptr %.02940.i159.ptr to i64
  %i.mk = sub i64 %i.mj, %.pre-phi228
  %i.ml = ashr exact i64 %i.mk, 2
  %i.mm = add nsw i64 %i.ml, %.02439.i160
  %i.mn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.mo = add i32 %i.mn, -1
  store i32 %i.mo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  br label %bb.az

bb.az:                                            ; preds = %.critedge.i171, %.lr.ph.i158
  %.125.i162 = phi i64 [ %i.mm, %.critedge.i171 ], [ %.02439.i160, %.lr.ph.i158 ] ; 2 uses
  %.02940.i159.add = add nuw nsw i64 %.02940.i159.idx, 4 ; 2 uses
  %.029.i163.ptr = getelementptr inbounds nuw i8, ptr %.ptr283, i64 %.02940.i159.add
  %.not.i164 = icmp eq ptr %.029.i163.ptr, %1     ; 2 uses
  %i.mp = icmp ugt i64 %.125.i162, 8
  %or.cond.i165 = select i1 %.not.i164, i1 true, i1 %i.mp
  br i1 %or.cond.i165, label %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit173, label %.lr.ph.i158, !llvm.loop !15097

_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit173: ; preds = %bb.az
  br i1 %.not.i164, label %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit173.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.as, %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit, %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit173, %bb.ap, %bb.ar, %bb.aq
  %.1103 = phi i64 [ %i.hr, %bb.ar ], [ %i.hr, %bb.aq ], [ %i.hr, %bb.ap ], [ %.0102203, %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit173 ], [ %.0102203, %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit ], [ %.0102203, %bb.as ] ; 2 uses
  tail call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SF_T0_NS0_9iter_sizeISF_E4typeEb(ptr noundef nonnull %.0204, ptr noundef nonnull %.ptr283, i64 noundef %.1103, i1 noundef zeroext %.0106202)
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit: ; preds = %_ZN5boost7movelib14pdqsort_detail14partition_leftIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_T0_.exit, %bb.ba
  %.pre-phi226 = phi i64 [ %.pre225, %_ZN5boost7movelib14pdqsort_detail14partition_leftIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_T0_.exit ], [ %i.hm, %bb.ba ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre222, %_ZN5boost7movelib14pdqsort_detail14partition_leftIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_T0_.exit ], [ %i.hk, %bb.ba ]
  %.4 = phi i64 [ %.0102203, %_ZN5boost7movelib14pdqsort_detail14partition_leftIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_T0_.exit ], [ %.1103, %bb.ba ]
  %.3 = phi ptr [ %i.gd, %_ZN5boost7movelib14pdqsort_detail14partition_leftIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_T0_.exit ], [ %i.hj, %bb.ba ] ; 2 uses
  %i.mq = icmp ult i64 %.pre-phi226, 24
  br i1 %i.mq, label %._crit_edge, label %bb.e

_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit173.thread: ; preds = %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit.thread, %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit173, %bb.d, %bb.al, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE6assignIPS3_EEvT_S8_PNS_11move_detail13disable_if_orIvNS9_7is_sameINS9_17integral_constantIjLj1EEENSC_IjLj0EEEEENS9_14is_convertibleIS8_mEENS0_3dtl17is_input_iteratorIS8_Xsr21has_iterator_categoryIS8_EE5valueEEENS9_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !3285 ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.h, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #23 ; 7 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !3283   ; 4 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !3280 ; 5 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter112 = and i64 %i.l, 3                  ; 2 uses
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.m, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter114 = phi i64 [ %prol.iter114.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.m = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !21
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter114.next = add i64 %prol.iter114, 1   ; 2 uses
  %prol.iter114.cmp.not = icmp eq i64 %prol.iter114.next, %xtraiter112
  br i1 %prol.iter114.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !15098

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.l, %.lr.ph.i.i.preheader ], [ %i.m, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.preheader ], [ %i.p, %.lr.ph.i.i.prol ]
  %i.q = icmp ult i64 %i.l, 4
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !21
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 4 uses
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.t, align 4, !tbaa !21
  %i.u = add i32 %i.r, -2
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !21
  %i.w = add i32 %i.r, -3
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.y = add i64 %.05.i.i, -4                     ; 2 uses
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !21
  %i.z = add i32 %i.r, -4
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !3309

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.k, align 8, !tbaa !3280
  %i.ab = shl i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ab) #24
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !3283
  store i64 %i.d, ptr %i.e, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not16.i.i = icmp eq ptr %1, %2
  br i1 %.not16.i.i, label %.loopexit, label %.lr.ph.i.i18.preheader

.lr.ph.i.i18.preheader:                           ; preds = %bb.f
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 3 uses
  %i.ad = add i64 %i.a, -4
  %i.ae = sub i64 %i.ad, %i.b                     ; 2 uses
  %i.af = lshr i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check77 = icmp ult i64 %i.ae, 60
  br i1 %min.iters.check77, label %.lr.ph.i.i18.preheader93, label %vector.memcheck75

vector.memcheck75:                                ; preds = %.lr.ph.i.i18.preheader
  %i.ah = add i64 %i.a, -4
  %i.ai = sub i64 %i.ah, %i.b
  %i.aj = and i64 %i.ai, -4
  %i.ak = getelementptr i8, ptr %1, i64 %i.aj
  %scevgep = getelementptr i8, ptr %i.ak, i64 4
  %bound0 = icmp ugt ptr %scevgep, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i18.preheader93, label %vector.ph78

vector.ph78:                                      ; preds = %vector.memcheck75
  %n.vec79 = and i64 %i.ag, 9223372036854775800   ; 3 uses
  %i.al = shl i64 %n.vec79, 2                     ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 %i.al
  %i.an = getelementptr i8, ptr %i.i, i64 %i.al   ; 2 uses
  %i.ao = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next87, %vector.body80 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ao, %vector.ph78 ], [ %i.as, %vector.body80 ]
  %vec.phi82 = phi <4 x i32> [ zeroinitializer, %vector.ph78 ], [ %i.at, %vector.body80 ]
  %i.ap = shl i64 %index81, 2                     ; 2 uses
  %next.gep83 = getelementptr i8, ptr %1, i64 %i.ap ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.i, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep83, i64 16
  %wide.load85 = load <4 x i32>, ptr %next.gep83, align 4, !tbaa !21, !alias.scope !15099
  %wide.load86 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !21, !alias.scope !15099
  %i.ar = getelementptr i8, ptr %next.gep84, i64 16
  store <4 x i32> %wide.load85, ptr %next.gep84, align 4, !tbaa !21
  store <4 x i32> %wide.load86, ptr %i.ar, align 4, !tbaa !21
  %i.as = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.at = add <4 x i32> %vec.phi82, splat (i32 1) ; 2 uses
  %index.next87 = add nuw i64 %index81, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next87, %n.vec79
  br i1 %i.au, label %middle.block88, label %vector.body80, !llvm.loop !15102

middle.block88:                                   ; preds = %vector.body80
  %bin.rdx = add <4 x i32> %i.at, %i.as
  %i.av = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !alias.scope !15103, !noalias !15099
  %cmp.n89 = icmp eq i64 %i.ag, %n.vec79
  br i1 %cmp.n89, label %.loopexit, label %.lr.ph.i.i18.preheader93

.lr.ph.i.i18.preheader93:                         ; preds = %vector.memcheck75, %.lr.ph.i.i18.preheader, %middle.block88
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck75 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i18.preheader ], [ %i.av, %middle.block88 ]
  %.018.i.i.ph = phi ptr [ %1, %vector.memcheck75 ], [ %1, %.lr.ph.i.i18.preheader ], [ %i.am, %middle.block88 ]
  %.01517.i.i.ph = phi ptr [ %i.i, %vector.memcheck75 ], [ %i.i, %.lr.ph.i.i18.preheader ], [ %i.an, %middle.block88 ]
  br label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i.i18.preheader93, %.lr.ph.i.i18
  %i.aw = phi i32 [ %i.ay, %.lr.ph.i.i18 ], [ %.ph, %.lr.ph.i.i18.preheader93 ]
  %.018.i.i = phi ptr [ %i.az, %.lr.ph.i.i18 ], [ %.018.i.i.ph, %.lr.ph.i.i18.preheader93 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.ba, %.lr.ph.i.i18 ], [ %.01517.i.i.ph, %.lr.ph.i.i18.preheader93 ] ; 2 uses
  %i.ax = load i32, ptr %.018.i.i, align 4, !tbaa !21
  store i32 %i.ax, ptr %.01517.i.i, align 4, !tbaa !21
  %i.ay = add i32 %i.aw, 1                        ; 2 uses
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.az, %2
  br i1 %.not.i.i19, label %.loopexit, label %.lr.ph.i.i18, !llvm.loop !15105

.loopexit:                                        ; preds = %.lr.ph.i.i18, %middle.block88, %bb.f
  %.015.lcssa.i.i = phi ptr [ %i.i, %bb.f ], [ %i.an, %middle.block88 ], [ %i.ba, %.lr.ph.i.i18 ]
  %i.bb = ptrtoint ptr %.015.lcssa.i.i to i64
  %i.bc = ptrtoint ptr %i.i to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  store i64 %i.be, ptr %i.ac, align 8, !tbaa !3284
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bf = load ptr, ptr %0, align 8, !tbaa !3283  ; 9 uses
  %i.bg = ptrtoaddr ptr %i.bf to i64              ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !3280 ; 11 uses
  %i.bj = icmp ult i64 %i.bi, %i.d
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not7.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not7.i.i, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23.preheader

.lr.ph.i.i23.preheader:                           ; preds = %bb.h
  %min.iters.check60 = icmp ult i64 %i.bi, 8
  %i.bk = sub i64 %i.b, %i.bg
  %diff.check58 = icmp ugt i64 %i.bk, -32
  %or.cond = select i1 %min.iters.check60, i1 true, i1 %diff.check58
  br i1 %or.cond, label %.lr.ph.i.i23.preheader96, label %vector.ph61

vector.ph61:                                      ; preds = %.lr.ph.i.i23.preheader
  %n.vec62 = and i64 %i.bi, -8                    ; 3 uses
  %i.bl = shl i64 %n.vec62, 2                     ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bf, i64 %i.bl  ; 2 uses
  %i.bn = getelementptr i8, ptr %1, i64 %i.bl     ; 2 uses
  %i.bo = and i64 %i.bi, 7
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next69, %vector.body63 ] ; 2 uses
  %i.bp = shl i64 %index64, 2                     ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.bf, i64 %i.bp ; 2 uses
  %next.gep66 = getelementptr i8, ptr %1, i64 %i.bp ; 2 uses
  %i.bq = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load67 = load <4 x i32>, ptr %next.gep66, align 4, !tbaa !21
  %wide.load68 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !21
  %i.br = getelementptr i8, ptr %next.gep65, i64 16
  store <4 x i32> %wide.load67, ptr %next.gep65, align 4, !tbaa !21
  store <4 x i32> %wide.load68, ptr %i.br, align 4, !tbaa !21
  %index.next69 = add nuw i64 %index64, 8         ; 2 uses
  %i.bs = icmp eq i64 %index.next69, %n.vec62
  br i1 %i.bs, label %middle.block70, label %vector.body63, !llvm.loop !15106

middle.block70:                                   ; preds = %vector.body63
  %cmp.n71 = icmp eq i64 %i.bi, %n.vec62
  br i1 %cmp.n71, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23.preheader96

.lr.ph.i.i23.preheader96:                         ; preds = %.lr.ph.i.i23.preheader, %middle.block70
  %.ph97 = phi ptr [ %i.bf, %.lr.ph.i.i23.preheader ], [ %i.bm, %middle.block70 ] ; 2 uses
  %.09.i.i.ph = phi ptr [ %1, %.lr.ph.i.i23.preheader ], [ %i.bn, %middle.block70 ] ; 2 uses
  %.068.i.i.ph = phi i64 [ %i.bi, %.lr.ph.i.i23.preheader ], [ %i.bo, %middle.block70 ] ; 4 uses
  %i.bt = add i64 %.068.i.i.ph, -1
  %xtraiter106 = and i64 %.068.i.i.ph, 7          ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.i.i23.prol.loopexit, label %.lr.ph.i.i23.prol

.lr.ph.i.i23.prol:                                ; preds = %.lr.ph.i.i23.preheader96, %.lr.ph.i.i23.prol
  %i.bu = phi ptr [ %i.by, %.lr.ph.i.i23.prol ], [ %.ph97, %.lr.ph.i.i23.preheader96 ] ; 2 uses
  %.09.i.i.prol = phi ptr [ %i.bx, %.lr.ph.i.i23.prol ], [ %.09.i.i.ph, %.lr.ph.i.i23.preheader96 ] ; 2 uses
  %.068.i.i.prol = phi i64 [ %i.bv, %.lr.ph.i.i23.prol ], [ %.068.i.i.ph, %.lr.ph.i.i23.preheader96 ]
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.lr.ph.i.i23.prol ], [ 0, %.lr.ph.i.i23.preheader96 ]
  %i.bv = add i64 %.068.i.i.prol, -1              ; 2 uses
  %i.bw = load i32, ptr %.09.i.i.prol, align 4, !tbaa !21
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !21
  %i.bx = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 4 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 3 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i.i23.prol.loopexit, label %.lr.ph.i.i23.prol, !llvm.loop !15107

.lr.ph.i.i23.prol.loopexit:                       ; preds = %.lr.ph.i.i23.prol, %.lr.ph.i.i23.preheader96
  %.lcssa99.unr = phi ptr [ poison, %.lr.ph.i.i23.preheader96 ], [ %i.bx, %.lr.ph.i.i23.prol ]
  %.lcssa98.unr = phi ptr [ poison, %.lr.ph.i.i23.preheader96 ], [ %i.by, %.lr.ph.i.i23.prol ]
  %.unr = phi ptr [ %.ph97, %.lr.ph.i.i23.preheader96 ], [ %i.by, %.lr.ph.i.i23.prol ]
  %.09.i.i.unr = phi ptr [ %.09.i.i.ph, %.lr.ph.i.i23.preheader96 ], [ %i.bx, %.lr.ph.i.i23.prol ]
  %.068.i.i.unr = phi i64 [ %.068.i.i.ph, %.lr.ph.i.i23.preheader96 ], [ %i.bv, %.lr.ph.i.i23.prol ]
  %i.bz = icmp ult i64 %i.bt, 7
  br i1 %i.bz, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %.lr.ph.i.i23.prol.loopexit, %.lr.ph.i.i23
  %i.ca = phi ptr [ %i.cz, %.lr.ph.i.i23 ], [ %.unr, %.lr.ph.i.i23.prol.loopexit ] ; 9 uses
  %.09.i.i = phi ptr [ %i.cy, %.lr.ph.i.i23 ], [ %.09.i.i.unr, %.lr.ph.i.i23.prol.loopexit ] ; 9 uses
  %.068.i.i = phi i64 [ %i.cw, %.lr.ph.i.i23 ], [ %.068.i.i.unr, %.lr.ph.i.i23.prol.loopexit ]
  %i.cb = load i32, ptr %.09.i.i, align 4, !tbaa !21
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !21
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !21
  %i.cf = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !21
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !21
  %i.ci = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !21
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !21
  %i.cl = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !21
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !21
  %i.co = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 20
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !21
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !21
  %i.cr = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !21
  store i32 %i.ct, ptr %i.cs, align 4, !tbaa !21
end_hunk_6
begin_hunk_7_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE18priv_merge_genericINS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEENS0_3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEEvT_SK_T0_:bb.a
  %niter33.next.3 = add nuw i64 %niter33, 4       ; 2 uses
  %niter33.ncmp.3 = icmp eq i64 %niter33.next.3, %unroll_iter32
  br i1 %niter33.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.i.loopexit.unr-lcssa, label %bb.i, !llvm.loop !3251

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.i.loopexit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod30.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod30.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.i, label %.epil.preheader27

.epil.preheader27:                                ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.i.loopexit.unr-lcssa, %.preheader.i.i.i.i
  %.07.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i ], [ %i.bf, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod31 = icmp ne i64 %xtraiter28, 0
  call void @llvm.assume(i1 %lcmp.mod31)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader27
  %.07.i.i.i.i.epil = phi i64 [ %.07.i.i.i.i.epil.init, %.epil.preheader27 ], [ %i.bj, %bb.j ] ; 2 uses
  %epil.iter29 = phi i64 [ 0, %.epil.preheader27 ], [ %epil.iter29.next, %bb.j ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.07.i.i.i.i.epil
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !21
  %i.bh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bj = add nuw i64 %.07.i.i.i.i.epil, 1
  %epil.iter29.next = add i64 %epil.iter29, 1     ; 2 uses
  %epil.iter29.cmp.not = icmp eq i64 %epil.iter29.next, %xtraiter28
  br i1 %epil.iter29.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.i, label %bb.j, !llvm.loop !15180

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.i: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.i.loopexit.unr-lcssa, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN5boost7movelib14adaptive_mergeIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_T0_PNS0_15iterator_traitsISE_E10value_typeENS0_9iter_sizeISE_E4typeE.exit

bb.k:                                             ; preds = %bb.f
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load i64, ptr %i.ad, align 8, !tbaa !3248 ; 4 uses
  %.not.i.i30.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i30.i, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i, label %.preheader.i.i.i31.i

.preheader.i.i.i31.i:                             ; preds = %bb.k
  %i.bm = load ptr, ptr %3, align 8, !tbaa !3250  ; 5 uses
  %xtraiter = and i64 %i.bl, 3                    ; 3 uses
  %i.bn = icmp ult i64 %i.bl, 4
  br i1 %i.bn, label %.epil.preheader, label %.preheader.i.i.i31.i.new

.preheader.i.i.i31.i.new:                         ; preds = %.preheader.i.i.i31.i
  %unroll_iter = and i64 %i.bl, -4
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i.i.i31.i.new
  %.07.i.i.i32.i = phi i64 [ 0, %.preheader.i.i.i31.i.new ], [ %i.cd, %bb.l ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i31.i.new ], [ %niter.next.3, %bb.l ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.07.i.i.i32.i
  store i32 -2147483648, ptr %i.bo, align 4, !tbaa !21
  %i.bp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bq = add i32 %i.bp, -1
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.07.i.i.i32.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 -2147483648, ptr %i.bs, align 4, !tbaa !21
  %i.bt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.07.i.i.i32.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 -2147483648, ptr %i.bw, align 4, !tbaa !21
  %i.bx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.by = add i32 %i.bx, -1
  store i32 %i.by, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.07.i.i.i32.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 -2147483648, ptr %i.ca, align 4, !tbaa !21
  %i.cb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.cc = add i32 %i.cb, -1
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.cd = add nuw i64 %.07.i.i.i32.i, 4           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.loopexit.unr-lcssa, label %bb.l, !llvm.loop !3251

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.loopexit.unr-lcssa, %.preheader.i.i.i31.i
  %.07.i.i.i32.i.epil.init = phi i64 [ 0, %.preheader.i.i.i31.i ], [ %i.cd, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.loopexit.unr-lcssa ]
  %lcmp.mod26 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod26)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %.07.i.i.i32.i.epil = phi i64 [ %.07.i.i.i32.i.epil.init, %.epil.preheader ], [ %i.ch, %bb.m ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.07.i.i.i32.i.epil
  store i32 -2147483648, ptr %i.ce, align 4, !tbaa !21
  %i.cf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.cg = add i32 %i.cf, -1
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ch = add nuw i64 %.07.i.i.i32.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i, label %bb.m, !llvm.loop !15181

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.loopexit.unr-lcssa, %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.bk

_ZN5boost7movelib14adaptive_mergeIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_T0_PNS0_15iterator_traitsISE_E10value_typeENS0_9iter_sizeISE_E4typeE.exit: ; preds = %bb.c, %bb.g, %bb.a, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPS3_Lb1EEEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2648   ; 9 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !2648   ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !3932 ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #20 ; 10 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !3929   ; 5 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !3939 ; 5 uses
  %.not3.i.i = icmp eq i64 %i.n, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter124 = and i64 %i.n, 3                  ; 2 uses
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.o, %.lr.ph.i.i.prol ], [ %i.n, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter126 = phi i64 [ %prol.iter126.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.o = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !21
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter126.next = add i64 %prol.iter126, 1   ; 2 uses
  %prol.iter126.cmp.not = icmp eq i64 %prol.iter126.next, %xtraiter124
  br i1 %prol.iter126.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !15182

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.o, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.l, %.lr.ph.i.i.preheader ], [ %i.r, %.lr.ph.i.i.prol ]
  %i.s = icmp ult i64 %i.n, 4
  br i1 %i.s, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.aa, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !21
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 4 uses
  %i.u = add i32 %i.t, -1
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !21
  %i.w = add i32 %i.t, -2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !21
  %i.y = add i32 %i.t, -3
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.aa = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.z, align 4, !tbaa !21
  %i.ab = add i32 %i.t, -4
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !3943

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.m, align 8, !tbaa !3939
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = icmp eq ptr %i.ad, %i.l
  br i1 %i.ae, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.af = shl i64 %i.h, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.af) #21
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.k, ptr %0, align 8, !tbaa !3929
  store i64 %i.f, ptr %i.g, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %1, align 8, !tbaa !2648  ; 9 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64              ; 2 uses
  %i.aj = load ptr, ptr %2, align 8, !tbaa !2648  ; 3 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64              ; 2 uses
  %.not10.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not10.i.i, label %.loopexit, label %.lr.ph.i.i13.preheader

.lr.ph.i.i13.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 3 uses
  %i.al = add i64 %i.ak, -4
  %i.am = sub i64 %i.al, %i.ai                    ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check87 = icmp ult i64 %i.am, 124
  br i1 %min.iters.check87, label %.lr.ph.i.i13.preheader103, label %vector.memcheck77

vector.memcheck77:                                ; preds = %.lr.ph.i.i13.preheader
  %i.ap = add i64 %i.ak, -4
  %i.aq = sub i64 %i.ap, %i.ai
  %i.ar = and i64 %i.aq, -4
  %i.as = add i64 %i.ar, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.as ; 2 uses
  %scevgep78 = getelementptr i8, ptr %i.ah, i64 %i.as ; 2 uses
  %bound0 = icmp ult ptr %i.k, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %scevgep, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound079 = icmp ult ptr %i.k, %scevgep78
  %bound180 = icmp ult ptr %i.ah, %scevgep
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx = or i1 %found.conflict, %found.conflict81
  %bound082 = icmp ugt ptr %scevgep78, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound183 = icmp ult ptr %i.ah, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %conflict.rdx, %found.conflict84
  br i1 %conflict.rdx85, label %.lr.ph.i.i13.preheader103, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck77
  %n.vec89 = and i64 %i.ao, 9223372036854775800   ; 3 uses
  %i.at = shl i64 %n.vec89, 2                     ; 2 uses
  %i.au = getelementptr i8, ptr %i.ah, i64 %i.at
  %i.av = getelementptr i8, ptr %i.k, i64 %i.at   ; 2 uses
  %i.aw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next97, %vector.body90 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aw, %vector.ph88 ], [ %i.ba, %vector.body90 ]
  %vec.phi92 = phi <4 x i32> [ zeroinitializer, %vector.ph88 ], [ %i.bb, %vector.body90 ]
  %i.ax = shl i64 %index91, 2                     ; 2 uses
  %next.gep93 = getelementptr i8, ptr %i.ah, i64 %i.ax ; 2 uses
  %next.gep94 = getelementptr i8, ptr %i.k, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep93, i64 16
  %wide.load95 = load <4 x i32>, ptr %next.gep93, align 4, !tbaa !21, !alias.scope !15183
  %wide.load96 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !21, !alias.scope !15183
  %i.az = getelementptr i8, ptr %next.gep94, i64 16
  store <4 x i32> %wide.load95, ptr %next.gep94, align 4, !tbaa !21, !alias.scope !15186, !noalias !15188
  store <4 x i32> %wide.load96, ptr %i.az, align 4, !tbaa !21, !alias.scope !15186, !noalias !15188
  %i.ba = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.bb = add <4 x i32> %vec.phi92, splat (i32 1) ; 2 uses
  %index.next97 = add nuw i64 %index91, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next97, %n.vec89
  br i1 %i.bc, label %middle.block98, label %vector.body90, !llvm.loop !15190

middle.block98:                                   ; preds = %vector.body90
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !alias.scope !15191, !noalias !15183
  %cmp.n99 = icmp eq i64 %i.ao, %n.vec89
  br i1 %cmp.n99, label %.loopexit, label %.lr.ph.i.i13.preheader103

.lr.ph.i.i13.preheader103:                        ; preds = %vector.memcheck77, %.lr.ph.i.i13.preheader, %middle.block98
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck77 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i13.preheader ], [ %i.bd, %middle.block98 ]
  %.ph104 = phi ptr [ %i.ah, %vector.memcheck77 ], [ %i.ah, %.lr.ph.i.i13.preheader ], [ %i.au, %middle.block98 ]
  %.011.i.i.ph = phi ptr [ %i.k, %vector.memcheck77 ], [ %i.k, %.lr.ph.i.i13.preheader ], [ %i.av, %middle.block98 ]
  br label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i.i13.preheader103, %.lr.ph.i.i13
  %i.be = phi i32 [ %i.bh, %.lr.ph.i.i13 ], [ %.ph, %.lr.ph.i.i13.preheader103 ]
  %i.bf = phi ptr [ %i.bi, %.lr.ph.i.i13 ], [ %.ph104, %.lr.ph.i.i13.preheader103 ] ; 2 uses
  %.011.i.i = phi ptr [ %i.bj, %.lr.ph.i.i13 ], [ %.011.i.i.ph, %.lr.ph.i.i13.preheader103 ] ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !21
  store i32 %i.bg, ptr %.011.i.i, align 4, !tbaa !21
  %i.bh = add i32 %i.be, 1                        ; 2 uses
  store i32 %i.bh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bi, %i.aj
  br i1 %.not.i.i14, label %.loopexit, label %.lr.ph.i.i13, !llvm.loop !15192

.loopexit:                                        ; preds = %.lr.ph.i.i13, %middle.block98, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.k, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.av, %middle.block98 ], [ %i.bj, %.lr.ph.i.i13 ]
  %i.bk = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bl = ptrtoint ptr %i.k to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  store i64 %i.bn, ptr %i.ag, align 8, !tbaa !3931
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bo = load ptr, ptr %0, align 8, !tbaa !3929  ; 9 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !3939 ; 11 uses
  %i.bs = icmp ult i64 %i.br, %i.f
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not3.i.i18 = icmp eq i64 %i.br, 0
  br i1 %.not3.i.i18, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %bb.h
  %min.iters.check62 = icmp ult i64 %i.br, 8
  %i.bt = sub i64 %i.d, %i.bp
  %diff.check60 = icmp ugt i64 %i.bt, -32
  %or.cond = select i1 %min.iters.check62, i1 true, i1 %diff.check60
  br i1 %or.cond, label %.lr.ph.i.i19.preheader107, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph.i.i19.preheader
  %n.vec64 = and i64 %i.br, -8                    ; 3 uses
  %i.bu = shl i64 %n.vec64, 2                     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.a, i64 %i.bu   ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bo, i64 %i.bu  ; 2 uses
  %i.bx = and i64 %i.br, 7
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next71, %vector.body65 ] ; 2 uses
  %i.by = shl i64 %index66, 2                     ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.a, i64 %i.by ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.bo, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load69 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !21, !noalias !15193
  %wide.load70 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !21, !noalias !15193
  %i.ca = getelementptr i8, ptr %next.gep68, i64 16
  store <4 x i32> %wide.load69, ptr %next.gep68, align 4, !tbaa !21, !noalias !15193
  store <4 x i32> %wide.load70, ptr %i.ca, align 4, !tbaa !21, !noalias !15193
  %index.next71 = add nuw i64 %index66, 8         ; 2 uses
  %i.cb = icmp eq i64 %index.next71, %n.vec64
  br i1 %i.cb, label %middle.block72, label %vector.body65, !llvm.loop !15196

middle.block72:                                   ; preds = %vector.body65
  %cmp.n73 = icmp eq i64 %i.br, %n.vec64
  br i1 %cmp.n73, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19.preheader107

.lr.ph.i.i19.preheader107:                        ; preds = %.lr.ph.i.i19.preheader, %middle.block72
  %.sroa.020.0.i.ph = phi ptr [ %i.a, %.lr.ph.i.i19.preheader ], [ %i.bv, %middle.block72 ] ; 2 uses
  %.0.i.ph = phi ptr [ %i.bo, %.lr.ph.i.i19.preheader ], [ %i.bw, %middle.block72 ] ; 2 uses
  %.04.i.i.ph = phi i64 [ %i.br, %.lr.ph.i.i19.preheader ], [ %i.bx, %middle.block72 ] ; 4 uses
  %i.cc = add i64 %.04.i.i.ph, -1
  %xtraiter117 = and i64 %.04.i.i.ph, 7           ; 2 uses
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol

.lr.ph.i.i19.prol:                                ; preds = %.lr.ph.i.i19.preheader107, %.lr.ph.i.i19.prol
  %.sroa.020.0.i.prol = phi ptr [ %i.cf, %.lr.ph.i.i19.prol ], [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader107 ] ; 2 uses
  %.0.i.prol = phi ptr [ %i.cg, %.lr.ph.i.i19.prol ], [ %.0.i.ph, %.lr.ph.i.i19.preheader107 ] ; 2 uses
  %.04.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i19.prol ], [ %.04.i.i.ph, %.lr.ph.i.i19.preheader107 ]
  %prol.iter119 = phi i64 [ %prol.iter119.next, %.lr.ph.i.i19.prol ], [ 0, %.lr.ph.i.i19.preheader107 ]
  %i.cd = add i64 %.04.i.i.prol, -1               ; 2 uses
  %i.ce = load i32, ptr %.sroa.020.0.i.prol, align 4, !tbaa !21, !noalias !15193
  store i32 %i.ce, ptr %.0.i.prol, align 4, !tbaa !21, !noalias !15193
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.prol, i64 4 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 4 ; 3 uses
  %prol.iter119.next = add i64 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i64 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol, !llvm.loop !15197

.lr.ph.i.i19.prol.loopexit:                       ; preds = %.lr.ph.i.i19.prol, %.lr.ph.i.i19.preheader107
  %.lcssa109.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader107 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.lcssa108.unr = phi ptr [ poison, %.lr.ph.i.i19.preheader107 ], [ %i.cg, %.lr.ph.i.i19.prol ]
  %.sroa.020.0.i.unr = phi ptr [ %.sroa.020.0.i.ph, %.lr.ph.i.i19.preheader107 ], [ %i.cf, %.lr.ph.i.i19.prol ]
  %.0.i.unr = phi ptr [ %.0.i.ph, %.lr.ph.i.i19.preheader107 ], [ %i.cg, %.lr.ph.i.i19.prol ]
  %.04.i.i.unr = phi i64 [ %.04.i.i.ph, %.lr.ph.i.i19.preheader107 ], [ %i.cd, %.lr.ph.i.i19.prol ]
  %i.ch = icmp ult i64 %i.cc, 7
  br i1 %i.ch, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19
  %.sroa.020.0.i = phi ptr [ %i.df, %.lr.ph.i.i19 ], [ %.sroa.020.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.0.i = phi ptr [ %i.dg, %.lr.ph.i.i19 ], [ %.0.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 9 uses
  %.04.i.i = phi i64 [ %i.dd, %.lr.ph.i.i19 ], [ %.04.i.i.unr, %.lr.ph.i.i19.prol.loopexit ]
  %i.ci = load i32, ptr %.sroa.020.0.i, align 4, !tbaa !21, !noalias !15193
  store i32 %i.ci, ptr %.0.i, align 4, !tbaa !21, !noalias !15193
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !21, !noalias !15193
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !21, !noalias !15193
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !21, !noalias !15193
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !21, !noalias !15193
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i, i64 12
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !21, !noalias !15193
end_hunk_7
begin_hunk_8_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPS3_Lb1EEEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE:bb.a
.lr.ph.i13.i.prol.loopexit:                       ; preds = %.lr.ph.i13.i.prol, %.lr.ph.i13.i.preheader111
  %.lcssa113.unr = phi ptr [ poison, %.lr.ph.i13.i.preheader111 ], [ %i.ey, %.lr.ph.i13.i.prol ]
  %.unr = phi ptr [ %.ph112, %.lr.ph.i13.i.preheader111 ], [ %i.ex, %.lr.ph.i13.i.prol ]
  %.07.i.i.unr = phi ptr [ %.07.i.i.ph, %.lr.ph.i13.i.preheader111 ], [ %i.ey, %.lr.ph.i13.i.prol ]
  %.046.i.i.unr = phi i64 [ %.046.i.i.ph, %.lr.ph.i13.i.preheader111 ], [ %i.ev, %.lr.ph.i13.i.prol ]
  %i.ez = icmp ult i64 %i.et, 7
  br i1 %i.ez, label %_ZN5boost9container6copy_nINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.lr.ph.i13.i.prol.loopexit, %.lr.ph.i13.i
  %i.fa = phi ptr [ %i.fy, %.lr.ph.i13.i ], [ %.unr, %.lr.ph.i13.i.prol.loopexit ] ; 9 uses
  %.07.i.i = phi ptr [ %i.fz, %.lr.ph.i13.i ], [ %.07.i.i.unr, %.lr.ph.i13.i.prol.loopexit ] ; 9 uses
  %.046.i.i = phi i64 [ %i.fw, %.lr.ph.i13.i ], [ %.046.i.i.unr, %.lr.ph.i13.i.prol.loopexit ]
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !21
  store i32 %i.fb, ptr %.07.i.i, align 4, !tbaa !21
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 4
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !21
  store i32 %i.fe, ptr %i.fd, align 4, !tbaa !21
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !21
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !21
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %i.fj = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 12
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !21
  store i32 %i.fk, ptr %i.fj, align 4, !tbaa !21
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !21
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !21
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fa, i64 20
  %i.fp = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 20
  %i.fq = load i32, ptr %i.fo, align 4, !tbaa !21
  store i32 %i.fq, ptr %i.fp, align 4, !tbaa !21
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 24
  %i.ft = load i32, ptr %i.fr, align 4, !tbaa !21
  store i32 %i.ft, ptr %i.fs, align 4, !tbaa !21
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fa, i64 28
  %i.fv = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 28
  %i.fw = add i64 %.046.i.i, -8                   ; 2 uses
  %i.fx = load i32, ptr %i.fu, align 4, !tbaa !21
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !21
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.fz = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32 ; 2 uses
  %.not.i15.i.7 = icmp eq i64 %i.fw, 0
  br i1 %.not.i15.i.7, label %_ZN5boost9container6copy_nINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i13.i, !llvm.loop !15203

_ZN5boost9container6copy_nINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i: ; preds = %.lr.ph.i13.i.prol.loopexit, %.lr.ph.i13.i, %middle.block, %bb.i
  %.0.lcssa.i.i15 = phi ptr [ %i.bo, %bb.i ], [ %i.en, %middle.block ], [ %.lcssa113.unr, %.lr.ph.i13.i.prol.loopexit ], [ %i.fz, %.lr.ph.i13.i ] ; 2 uses
  %i.ga = sub nuw i64 %i.br, %i.f                 ; 4 uses
  %.not3.i16.i = icmp eq i64 %i.ga, 0
  br i1 %.not3.i16.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS4_Lb1EEES9_EEvRT_T0_mT1_m.exit, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %_ZN5boost9container6copy_nINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %xtraiter114 = and i64 %i.ga, 3                 ; 2 uses
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %.lr.ph.i17.i.prol.loopexit, label %.lr.ph.i17.i.prol

.lr.ph.i17.i.prol:                                ; preds = %.lr.ph.i17.i.preheader, %.lr.ph.i17.i.prol
  %.05.i.i16.prol = phi i64 [ %i.gb, %.lr.ph.i17.i.prol ], [ %i.ga, %.lr.ph.i17.i.preheader ]
  %storemerge4.i.i17.prol = phi ptr [ %i.ge, %.lr.ph.i17.i.prol ], [ %.0.lcssa.i.i15, %.lr.ph.i17.i.preheader ] ; 2 uses
  %prol.iter116 = phi i64 [ %prol.iter116.next, %.lr.ph.i17.i.prol ], [ 0, %.lr.ph.i17.i.preheader ]
  %i.gb = add i64 %.05.i.i16.prol, -1             ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i17.prol, align 4, !tbaa !21
  %i.gc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.gd = add i32 %i.gc, -1
  store i32 %i.gd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ge = getelementptr inbounds nuw i8, ptr %storemerge4.i.i17.prol, i64 4 ; 2 uses
  %prol.iter116.next = add i64 %prol.iter116, 1   ; 2 uses
  %prol.iter116.cmp.not = icmp eq i64 %prol.iter116.next, %xtraiter114
  br i1 %prol.iter116.cmp.not, label %.lr.ph.i17.i.prol.loopexit, label %.lr.ph.i17.i.prol, !llvm.loop !15204

.lr.ph.i17.i.prol.loopexit:                       ; preds = %.lr.ph.i17.i.prol, %.lr.ph.i17.i.preheader
  %.05.i.i16.unr = phi i64 [ %i.ga, %.lr.ph.i17.i.preheader ], [ %i.gb, %.lr.ph.i17.i.prol ]
  %storemerge4.i.i17.unr = phi ptr [ %.0.lcssa.i.i15, %.lr.ph.i17.i.preheader ], [ %i.ge, %.lr.ph.i17.i.prol ]
  %i.gf = sub i64 %i.f, %i.br
  %i.gg = icmp ugt i64 %i.gf, -4
  br i1 %i.gg, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS4_Lb1EEES9_EEvRT_T0_mT1_m.exit, label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i.prol.loopexit, %.lr.ph.i17.i
  %.05.i.i16 = phi i64 [ %i.go, %.lr.ph.i17.i ], [ %.05.i.i16.unr, %.lr.ph.i17.i.prol.loopexit ]
  %storemerge4.i.i17 = phi ptr [ %i.gq, %.lr.ph.i17.i ], [ %storemerge4.i.i17.unr, %.lr.ph.i17.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i17, align 4, !tbaa !21
  %i.gh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 4 uses
  %i.gi = add i32 %i.gh, -1
  store i32 %i.gi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.gj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i17, i64 4
  store i32 -2147483648, ptr %i.gj, align 4, !tbaa !21
  %i.gk = add i32 %i.gh, -2
  store i32 %i.gk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.gl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i17, i64 8
  store i32 -2147483648, ptr %i.gl, align 4, !tbaa !21
  %i.gm = add i32 %i.gh, -3
  store i32 %i.gm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.gn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i17, i64 12
  %i.go = add i64 %.05.i.i16, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.gn, align 4, !tbaa !21
  %i.gp = add i32 %i.gh, -4
  store i32 %i.gp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.gq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i17, i64 16
  %.not.i18.i.3 = icmp eq i64 %i.go, 0
  br i1 %.not.i18.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS4_Lb1EEES9_EEvRT_T0_mT1_m.exit, label %.lr.ph.i17.i, !llvm.loop !3943

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS4_Lb1EEES9_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i17.i.prol.loopexit, %.lr.ph.i17.i, %.lr.ph.i11.i.prol.loopexit, %.lr.ph.i11.i, %_ZN5boost9container6copy_nINS0_12vec_iteratorIPNS0_4test24movable_and_copyable_intELb1EEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  store i64 %i.f, ptr %i.bq, align 8, !tbaa !3931
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPS4_Lb1EEES9_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignIPS3_EEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !3932 ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.h, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #20 ; 7 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !3929   ; 5 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !3939 ; 5 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter112 = and i64 %i.l, 3                  ; 2 uses
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.m, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter114 = phi i64 [ %prol.iter114.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.m = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !21
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter114.next = add i64 %prol.iter114, 1   ; 2 uses
  %prol.iter114.cmp.not = icmp eq i64 %prol.iter114.next, %xtraiter112
  br i1 %prol.iter114.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !15205

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.l, %.lr.ph.i.i.preheader ], [ %i.m, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.preheader ], [ %i.p, %.lr.ph.i.i.prol ]
  %i.q = icmp ult i64 %i.l, 4
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !21
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 4 uses
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.t, align 4, !tbaa !21
  %i.u = add i32 %i.r, -2
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !21
  %i.w = add i32 %i.r, -3
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.y = add i64 %.05.i.i, -4                     ; 2 uses
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !21
  %i.z = add i32 %i.r, -4
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !3943

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.k, align 8, !tbaa !3939
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = icmp eq ptr %i.ab, %i.j
  br i1 %i.ac, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.ad = shl i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ad) #21
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !3929
  store i64 %i.d, ptr %i.e, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not16.i.i = icmp eq ptr %1, %2
  br i1 %.not16.i.i, label %.loopexit, label %.lr.ph.i.i18.preheader

.lr.ph.i.i18.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 3 uses
  %i.af = add i64 %i.a, -4
  %i.ag = sub i64 %i.af, %i.b                     ; 2 uses
  %i.ah = lshr i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check77 = icmp ult i64 %i.ag, 60
  br i1 %min.iters.check77, label %.lr.ph.i.i18.preheader93, label %vector.memcheck75

vector.memcheck75:                                ; preds = %.lr.ph.i.i18.preheader
  %i.aj = add i64 %i.a, -4
  %i.ak = sub i64 %i.aj, %i.b
  %i.al = and i64 %i.ak, -4
  %i.am = getelementptr i8, ptr %1, i64 %i.al
  %scevgep = getelementptr i8, ptr %i.am, i64 4
  %bound0 = icmp ugt ptr %scevgep, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i18.preheader93, label %vector.ph78

vector.ph78:                                      ; preds = %vector.memcheck75
  %n.vec79 = and i64 %i.ai, 9223372036854775800   ; 3 uses
  %i.an = shl i64 %n.vec79, 2                     ; 2 uses
  %i.ao = getelementptr i8, ptr %1, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.i, i64 %i.an   ; 2 uses
  %i.aq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph78
  %index81 = phi i64 [ 0, %vector.ph78 ], [ %index.next87, %vector.body80 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aq, %vector.ph78 ], [ %i.au, %vector.body80 ]
  %vec.phi82 = phi <4 x i32> [ zeroinitializer, %vector.ph78 ], [ %i.av, %vector.body80 ]
  %i.ar = shl i64 %index81, 2                     ; 2 uses
  %next.gep83 = getelementptr i8, ptr %1, i64 %i.ar ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.i, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep83, i64 16
  %wide.load85 = load <4 x i32>, ptr %next.gep83, align 4, !tbaa !21, !alias.scope !15206
  %wide.load86 = load <4 x i32>, ptr %i.as, align 4, !tbaa !21, !alias.scope !15206
  %i.at = getelementptr i8, ptr %next.gep84, i64 16
  store <4 x i32> %wide.load85, ptr %next.gep84, align 4, !tbaa !21
  store <4 x i32> %wide.load86, ptr %i.at, align 4, !tbaa !21
  %i.au = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.av = add <4 x i32> %vec.phi82, splat (i32 1) ; 2 uses
  %index.next87 = add nuw i64 %index81, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next87, %n.vec79
  br i1 %i.aw, label %middle.block88, label %vector.body80, !llvm.loop !15209

middle.block88:                                   ; preds = %vector.body80
  %bin.rdx = add <4 x i32> %i.av, %i.au
  %i.ax = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20, !alias.scope !15210, !noalias !15206
  %cmp.n89 = icmp eq i64 %i.ai, %n.vec79
  br i1 %cmp.n89, label %.loopexit, label %.lr.ph.i.i18.preheader93

.lr.ph.i.i18.preheader93:                         ; preds = %vector.memcheck75, %.lr.ph.i.i18.preheader, %middle.block88
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck75 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i18.preheader ], [ %i.ax, %middle.block88 ]
  %.018.i.i.ph = phi ptr [ %1, %vector.memcheck75 ], [ %1, %.lr.ph.i.i18.preheader ], [ %i.ao, %middle.block88 ]
  %.01517.i.i.ph = phi ptr [ %i.i, %vector.memcheck75 ], [ %i.i, %.lr.ph.i.i18.preheader ], [ %i.ap, %middle.block88 ]
  br label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i.i18.preheader93, %.lr.ph.i.i18
  %i.ay = phi i32 [ %i.ba, %.lr.ph.i.i18 ], [ %.ph, %.lr.ph.i.i18.preheader93 ]
  %.018.i.i = phi ptr [ %i.bb, %.lr.ph.i.i18 ], [ %.018.i.i.ph, %.lr.ph.i.i18.preheader93 ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.bc, %.lr.ph.i.i18 ], [ %.01517.i.i.ph, %.lr.ph.i.i18.preheader93 ] ; 2 uses
  %i.az = load i32, ptr %.018.i.i, align 4, !tbaa !21
  store i32 %i.az, ptr %.01517.i.i, align 4, !tbaa !21
  %i.ba = add i32 %i.ay, 1                        ; 2 uses
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4 ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.bb, %2
  br i1 %.not.i.i19, label %.loopexit, label %.lr.ph.i.i18, !llvm.loop !15212

.loopexit:                                        ; preds = %.lr.ph.i.i18, %middle.block88, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.015.lcssa.i.i = phi ptr [ %i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.ap, %middle.block88 ], [ %i.bc, %.lr.ph.i.i18 ]
  %i.bd = ptrtoint ptr %.015.lcssa.i.i to i64
  %i.be = ptrtoint ptr %i.i to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2
  store i64 %i.bg, ptr %i.ae, align 8, !tbaa !3931
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bh = load ptr, ptr %0, align 8, !tbaa !3929  ; 9 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !3939 ; 11 uses
  %i.bl = icmp ult i64 %i.bk, %i.d
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not7.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not7.i.i, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23.preheader

.lr.ph.i.i23.preheader:                           ; preds = %bb.h
  %min.iters.check60 = icmp ult i64 %i.bk, 8
  %i.bm = sub i64 %i.b, %i.bi
  %diff.check58 = icmp ugt i64 %i.bm, -32
  %or.cond = select i1 %min.iters.check60, i1 true, i1 %diff.check58
  br i1 %or.cond, label %.lr.ph.i.i23.preheader96, label %vector.ph61

vector.ph61:                                      ; preds = %.lr.ph.i.i23.preheader
  %n.vec62 = and i64 %i.bk, -8                    ; 3 uses
  %i.bn = shl i64 %n.vec62, 2                     ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bh, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %1, i64 %i.bn     ; 2 uses
  %i.bq = and i64 %i.bk, 7
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next69, %vector.body63 ] ; 2 uses
  %i.br = shl i64 %index64, 2                     ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.bh, i64 %i.br ; 2 uses
  %next.gep66 = getelementptr i8, ptr %1, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load67 = load <4 x i32>, ptr %next.gep66, align 4, !tbaa !21
  %wide.load68 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !21
  %i.bt = getelementptr i8, ptr %next.gep65, i64 16
  store <4 x i32> %wide.load67, ptr %next.gep65, align 4, !tbaa !21
  store <4 x i32> %wide.load68, ptr %i.bt, align 4, !tbaa !21
  %index.next69 = add nuw i64 %index64, 8         ; 2 uses
  %i.bu = icmp eq i64 %index.next69, %n.vec62
  br i1 %i.bu, label %middle.block70, label %vector.body63, !llvm.loop !15213

middle.block70:                                   ; preds = %vector.body63
  %cmp.n71 = icmp eq i64 %i.bk, %n.vec62
  br i1 %cmp.n71, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23.preheader96

.lr.ph.i.i23.preheader96:                         ; preds = %.lr.ph.i.i23.preheader, %middle.block70
  %.ph97 = phi ptr [ %i.bh, %.lr.ph.i.i23.preheader ], [ %i.bo, %middle.block70 ] ; 2 uses
  %.09.i.i.ph = phi ptr [ %1, %.lr.ph.i.i23.preheader ], [ %i.bp, %middle.block70 ] ; 2 uses
  %.068.i.i.ph = phi i64 [ %i.bk, %.lr.ph.i.i23.preheader ], [ %i.bq, %middle.block70 ] ; 4 uses
  %i.bv = add i64 %.068.i.i.ph, -1
  %xtraiter106 = and i64 %.068.i.i.ph, 7          ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.i.i23.prol.loopexit, label %.lr.ph.i.i23.prol

.lr.ph.i.i23.prol:                                ; preds = %.lr.ph.i.i23.preheader96, %.lr.ph.i.i23.prol
  %i.bw = phi ptr [ %i.ca, %.lr.ph.i.i23.prol ], [ %.ph97, %.lr.ph.i.i23.preheader96 ] ; 2 uses
  %.09.i.i.prol = phi ptr [ %i.bz, %.lr.ph.i.i23.prol ], [ %.09.i.i.ph, %.lr.ph.i.i23.preheader96 ] ; 2 uses
  %.068.i.i.prol = phi i64 [ %i.bx, %.lr.ph.i.i23.prol ], [ %.068.i.i.ph, %.lr.ph.i.i23.preheader96 ]
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.lr.ph.i.i23.prol ], [ 0, %.lr.ph.i.i23.preheader96 ]
  %i.bx = add i64 %.068.i.i.prol, -1              ; 2 uses
  %i.by = load i32, ptr %.09.i.i.prol, align 4, !tbaa !21
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 4 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 3 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i.i23.prol.loopexit, label %.lr.ph.i.i23.prol, !llvm.loop !15214

.lr.ph.i.i23.prol.loopexit:                       ; preds = %.lr.ph.i.i23.prol, %.lr.ph.i.i23.preheader96
  %.lcssa99.unr = phi ptr [ poison, %.lr.ph.i.i23.preheader96 ], [ %i.bz, %.lr.ph.i.i23.prol ]
  %.lcssa98.unr = phi ptr [ poison, %.lr.ph.i.i23.preheader96 ], [ %i.ca, %.lr.ph.i.i23.prol ]
  %.unr = phi ptr [ %.ph97, %.lr.ph.i.i23.preheader96 ], [ %i.ca, %.lr.ph.i.i23.prol ]
  %.09.i.i.unr = phi ptr [ %.09.i.i.ph, %.lr.ph.i.i23.preheader96 ], [ %i.bz, %.lr.ph.i.i23.prol ]
  %.068.i.i.unr = phi i64 [ %.068.i.i.ph, %.lr.ph.i.i23.preheader96 ], [ %i.bx, %.lr.ph.i.i23.prol ]
  %i.cb = icmp ult i64 %i.bv, 7
  br i1 %i.cb, label %_ZN5boost9container18copy_n_source_destIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %.lr.ph.i.i23.prol.loopexit, %.lr.ph.i.i23
  %i.cc = phi ptr [ %i.db, %.lr.ph.i.i23 ], [ %.unr, %.lr.ph.i.i23.prol.loopexit ] ; 9 uses
  %.09.i.i = phi ptr [ %i.da, %.lr.ph.i.i23 ], [ %.09.i.i.unr, %.lr.ph.i.i23.prol.loopexit ] ; 9 uses
  %.068.i.i = phi i64 [ %i.cy, %.lr.ph.i.i23 ], [ %.068.i.i.unr, %.lr.ph.i.i23.prol.loopexit ]
  %i.cd = load i32, ptr %.09.i.i, align 4, !tbaa !21
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !21
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !21
  %i.ch = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !21
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !21
  %i.ck = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !21
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !21
  %i.cn = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !21
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 20
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !21
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !21
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !21
end_hunk_8
begin_hunk_9_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb0EEE:bb.a
  %i.l = add i32 %i.k, -1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.m, align 4, !tbaa !21
  %i.n = add i32 %i.k, -2
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.o, align 4, !tbaa !21
  %i.p = add i32 %i.k, -3
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 12
  %i.r = add i64 %.05.i.i.i.i, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.q, align 4, !tbaa !21
  %i.s = add i32 %i.k, -4
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !3943

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.b
  store i64 0, ptr %i.c, align 8, !tbaa !3939
  %i.u = load ptr, ptr %0, align 8, !tbaa !15223  ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = icmp eq ptr %i.v, %i.u
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.w, !prof !1288
  br i1 %or.cond.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit, label %bb.c, !prof !1288

bb.c:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !15224
  %i.z = shl i64 %i.y, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #21
  %.pre = load ptr, ptr %1, align 8, !tbaa !3929
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i, %bb.c
  %i.aa = phi ptr [ %i.a, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit.i ], [ %.pre, %bb.c ]
  store ptr %i.aa, ptr %0, align 8, !tbaa !3929
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load <2 x i64>, ptr %i.ab, align 8, !tbaa !19
  store <2 x i64> %i.ac, ptr %i.c, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !3939, !noalias !15225
  %i.af = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ae
  tail call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS_13move_iteratorIPS3_EEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.a, ptr %i.af, ptr noundef null)
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !3939 ; 5 uses
  %.not3.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not3.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.d
  %i.ah = load ptr, ptr %1, align 8, !tbaa !3929  ; 2 uses
  %xtraiter15 = and i64 %i.ag, 3                  ; 2 uses
  %lcmp.mod16.not = icmp eq i64 %xtraiter15, 0
  br i1 %lcmp.mod16.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.prol
  %.05.i.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.i.prol ], [ %i.ag, %.lr.ph.i.preheader.i.i ]
  %storemerge4.i.i.i.prol = phi ptr [ %i.al, %.lr.ph.i.i.i.prol ], [ %i.ah, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %prol.iter17 = phi i64 [ %prol.iter17.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i ]
  %i.ai = add i64 %.05.i.i.i.prol, -1             ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.prol, align 4, !tbaa !21
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ak = add i32 %i.aj, -1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter17.next = add i64 %prol.iter17, 1     ; 2 uses
  %prol.iter17.cmp.not = icmp eq i64 %prol.iter17.next, %xtraiter15
  br i1 %prol.iter17.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !15228

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.preheader.i.i
  %.05.i.i.i.unr = phi i64 [ %i.ag, %.lr.ph.i.preheader.i.i ], [ %i.ai, %.lr.ph.i.i.i.prol ]
  %storemerge4.i.i.i.unr = phi ptr [ %i.ah, %.lr.ph.i.preheader.i.i ], [ %i.al, %.lr.ph.i.i.i.prol ]
  %i.am = icmp ult i64 %i.ag, 4
  br i1 %i.am, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.05.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i ], [ %.05.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %storemerge4.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i, align 4, !tbaa !21
  %i.an = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 4 uses
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 4
  store i32 -2147483648, ptr %i.ap, align 4, !tbaa !21
  %i.aq = add i32 %i.an, -2
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 8
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !21
  %i.as = add i32 %i.an, -3
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 12
  %i.au = add i64 %.05.i.i.i, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !21
  %i.av = add i32 %i.an, -4
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !3943

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.d
  store i64 0, ptr %i.ad, align 8, !tbaa !3939
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5clearEv.exit, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb1EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS_13move_iteratorIPS3_EEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !3932 ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.h, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #20 ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !3929   ; 5 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !3939 ; 5 uses
  %.not3.i.i = icmp eq i64 %i.l, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter97 = and i64 %i.l, 3                   ; 2 uses
  %lcmp.mod98.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod98.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.m, %.lr.ph.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter99 = phi i64 [ %prol.iter99.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.m = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !21
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.o = add i32 %i.n, -1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter99.next = add i64 %prol.iter99, 1     ; 2 uses
  %prol.iter99.cmp.not = icmp eq i64 %prol.iter99.next, %xtraiter97
  br i1 %prol.iter99.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !15229

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.l, %.lr.ph.i.i.preheader ], [ %i.m, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.preheader ], [ %i.p, %.lr.ph.i.i.prol ]
  %i.q = icmp ult i64 %i.l, 4
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !21
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20 ; 4 uses
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.t, align 4, !tbaa !21
  %i.u = add i32 %i.r, -2
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !21
  %i.w = add i32 %i.r, -3
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.y = add i64 %.05.i.i, -4                     ; 2 uses
  store i32 -2147483648, ptr %i.x, align 4, !tbaa !21
  %i.z = add i32 %i.r, -4
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !3943

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.k, align 8, !tbaa !3939
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = icmp eq ptr %i.ab, %i.j
  br i1 %i.ac, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.ad = shl i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ad) #21
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !3929
  store i64 %i.d, ptr %i.e, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not13.i.i = icmp eq ptr %1, %2
  br i1 %.not13.i.i, label %.loopexit, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, %.lr.ph.i.i19
  %.015.i.i = phi ptr [ %i.aj, %.lr.ph.i.i19 ], [ %i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.ai, %.lr.ph.i.i19 ], [ %1, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ] ; 3 uses
  %i.af = load i32, ptr %.sroa.010.014.i.i, align 4, !tbaa !21
  store i32 %i.af, ptr %.015.i.i, align 4, !tbaa !21
  store i32 0, ptr %.sroa.010.014.i.i, align 4, !tbaa !21
  %i.ag = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.ai, %2
  br i1 %.not.i.i20, label %.loopexit, label %.lr.ph.i.i19, !llvm.loop !15230

.loopexit:                                        ; preds = %.lr.ph.i.i19, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.aj, %.lr.ph.i.i19 ]
  %i.ak = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.al = ptrtoint ptr %i.i to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2
  store i64 %i.an, ptr %i.ae, align 8, !tbaa !3931
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.ao = load ptr, ptr %0, align 8, !tbaa !3929  ; 14 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !3939 ; 13 uses
  %i.ar = icmp ult i64 %i.aq, %i.d
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not4.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not4.i.i, label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i25.preheader

.lr.ph.i.i25.preheader:                           ; preds = %bb.h
  %min.iters.check67 = icmp ult i64 %i.aq, 8
  br i1 %min.iters.check67, label %.lr.ph.i.i25.preheader82, label %vector.memcheck60

vector.memcheck60:                                ; preds = %.lr.ph.i.i25.preheader
  %i.as = shl i64 %i.aq, 2                        ; 2 uses
  %scevgep61 = getelementptr i8, ptr %i.ao, i64 %i.as
  %scevgep62 = getelementptr i8, ptr %1, i64 %i.as
  %bound063 = icmp ult ptr %i.ao, %scevgep62
  %bound164 = icmp ult ptr %1, %scevgep61
  %found.conflict65 = and i1 %bound063, %bound164
  br i1 %found.conflict65, label %.lr.ph.i.i25.preheader82, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck60
  %n.vec69 = and i64 %i.aq, -8                    ; 3 uses
  %i.at = shl i64 %n.vec69, 2                     ; 2 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 %i.at  ; 2 uses
  %i.av = and i64 %i.aq, 7
  %i.aw = getelementptr i8, ptr %1, i64 %i.at     ; 2 uses
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next76, %vector.body70 ] ; 2 uses
  %i.ax = shl i64 %index71, 2                     ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.ao, i64 %i.ax ; 2 uses
  %next.gep73 = getelementptr i8, ptr %1, i64 %i.ax ; 3 uses
  %i.ay = getelementptr i8, ptr %next.gep73, i64 16 ; 2 uses
  %wide.load74 = load <4 x i32>, ptr %next.gep73, align 4, !tbaa !21, !alias.scope !15231
  %wide.load75 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !21, !alias.scope !15231
  %i.az = getelementptr i8, ptr %next.gep72, i64 16
  store <4 x i32> %wide.load74, ptr %next.gep72, align 4, !tbaa !21, !alias.scope !15234, !noalias !15231
  store <4 x i32> %wide.load75, ptr %i.az, align 4, !tbaa !21, !alias.scope !15234, !noalias !15231
  store <4 x i32> zeroinitializer, ptr %next.gep73, align 4, !tbaa !21, !alias.scope !15231
  store <4 x i32> zeroinitializer, ptr %i.ay, align 4, !tbaa !21, !alias.scope !15231
  %index.next76 = add nuw i64 %index71, 8         ; 2 uses
  %i.ba = icmp eq i64 %index.next76, %n.vec69
  br i1 %i.ba, label %middle.block77, label %vector.body70, !llvm.loop !15236

middle.block77:                                   ; preds = %vector.body70
  %cmp.n78 = icmp eq i64 %i.aq, %n.vec69
  br i1 %cmp.n78, label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i25.preheader82

.lr.ph.i.i25.preheader82:                         ; preds = %vector.memcheck60, %.lr.ph.i.i25.preheader, %middle.block77
  %.ph = phi ptr [ %i.ao, %vector.memcheck60 ], [ %i.ao, %.lr.ph.i.i25.preheader ], [ %i.au, %middle.block77 ] ; 2 uses
  %.06.i.i.ph = phi i64 [ %i.aq, %vector.memcheck60 ], [ %i.aq, %.lr.ph.i.i25.preheader ], [ %i.av, %middle.block77 ] ; 4 uses
  %.sroa.0.05.i.i.ph = phi ptr [ %1, %vector.memcheck60 ], [ %1, %.lr.ph.i.i25.preheader ], [ %i.aw, %middle.block77 ] ; 2 uses
  %i.bb = add i64 %.06.i.i.ph, -1
  %xtraiter91 = and i64 %.06.i.i.ph, 3            ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %.lr.ph.i.i25.prol.loopexit, label %.lr.ph.i.i25.prol

.lr.ph.i.i25.prol:                                ; preds = %.lr.ph.i.i25.preheader82, %.lr.ph.i.i25.prol
  %i.bc = phi ptr [ %i.bg, %.lr.ph.i.i25.prol ], [ %.ph, %.lr.ph.i.i25.preheader82 ] ; 2 uses
  %.06.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.i25.prol ], [ %.06.i.i.ph, %.lr.ph.i.i25.preheader82 ]
  %.sroa.0.05.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i25.prol ], [ %.sroa.0.05.i.i.ph, %.lr.ph.i.i25.preheader82 ] ; 3 uses
  %prol.iter93 = phi i64 [ %prol.iter93.next, %.lr.ph.i.i25.prol ], [ 0, %.lr.ph.i.i25.preheader82 ]
  %i.bd = add i64 %.06.i.i.prol, -1               ; 2 uses
  %i.be = load i32, ptr %.sroa.0.05.i.i.prol, align 4, !tbaa !21
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !21
  store i32 0, ptr %.sroa.0.05.i.i.prol, align 4, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.prol, i64 4 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 3 uses
  %prol.iter93.next = add i64 %prol.iter93, 1     ; 2 uses
  %prol.iter93.cmp.not = icmp eq i64 %prol.iter93.next, %xtraiter91
  br i1 %prol.iter93.cmp.not, label %.lr.ph.i.i25.prol.loopexit, label %.lr.ph.i.i25.prol, !llvm.loop !15237

.lr.ph.i.i25.prol.loopexit:                       ; preds = %.lr.ph.i.i25.prol, %.lr.ph.i.i25.preheader82
  %.lcssa84.unr = phi ptr [ poison, %.lr.ph.i.i25.preheader82 ], [ %i.bf, %.lr.ph.i.i25.prol ]
  %.lcssa83.unr = phi ptr [ poison, %.lr.ph.i.i25.preheader82 ], [ %i.bg, %.lr.ph.i.i25.prol ]
  %.unr = phi ptr [ %.ph, %.lr.ph.i.i25.preheader82 ], [ %i.bg, %.lr.ph.i.i25.prol ]
  %.06.i.i.unr = phi i64 [ %.06.i.i.ph, %.lr.ph.i.i25.preheader82 ], [ %i.bd, %.lr.ph.i.i25.prol ]
  %.sroa.0.05.i.i.unr = phi ptr [ %.sroa.0.05.i.i.ph, %.lr.ph.i.i25.preheader82 ], [ %i.bf, %.lr.ph.i.i25.prol ]
  %i.bh = icmp ult i64 %i.bb, 3
  br i1 %i.bh, label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i25

.lr.ph.i.i25:                                     ; preds = %.lr.ph.i.i25.prol.loopexit, %.lr.ph.i.i25
  %i.bi = phi ptr [ %i.bv, %.lr.ph.i.i25 ], [ %.unr, %.lr.ph.i.i25.prol.loopexit ] ; 5 uses
  %.06.i.i = phi i64 [ %i.bs, %.lr.ph.i.i25 ], [ %.06.i.i.unr, %.lr.ph.i.i25.prol.loopexit ]
  %.sroa.0.05.i.i = phi ptr [ %i.bu, %.lr.ph.i.i25 ], [ %.sroa.0.05.i.i.unr, %.lr.ph.i.i25.prol.loopexit ] ; 6 uses
  %i.bj = load i32, ptr %.sroa.0.05.i.i, align 4, !tbaa !21
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !21
  store i32 0, ptr %.sroa.0.05.i.i, align 4, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !21
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !21
  store i32 0, ptr %i.bk, align 4, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !21
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !21
  store i32 0, ptr %i.bn, align 4, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 12 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bs = add i64 %.06.i.i, -4                    ; 2 uses
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !21
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !21
  store i32 0, ptr %i.bq, align 4, !tbaa !21
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %.not.i.i26.3 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i26.3, label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i25, !llvm.loop !15238

_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i: ; preds = %.lr.ph.i.i25.prol.loopexit, %.lr.ph.i.i25, %middle.block77, %bb.h
  %.0.i = phi ptr [ %i.ao, %bb.h ], [ %i.au, %middle.block77 ], [ %.lcssa83.unr, %.lr.ph.i.i25.prol.loopexit ], [ %i.bv, %.lr.ph.i.i25 ] ; 4 uses
  %.sroa.0.0.lcssa.i.i = phi ptr [ %1, %bb.h ], [ %i.aw, %middle.block77 ], [ %.lcssa84.unr, %.lr.ph.i.i25.prol.loopexit ], [ %i.bu, %.lr.ph.i.i25 ] ; 4 uses
  %i.bw = sub i64 %i.d, %i.aq                     ; 3 uses
  %.neg = add i64 %i.aq, 1
  %xtraiter94 = and i64 %i.bw, 1
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %.lr.ph.i15.i.prol.loopexit, label %.lr.ph.i15.i.prol

.lr.ph.i15.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i
  %i.bx = add nsw i64 %i.bw, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i) ]
  %i.by = load i32, ptr %.sroa.0.0.lcssa.i.i, align 4, !tbaa !21
  store i32 %i.by, ptr %.0.i, align 4, !tbaa !21
  store i32 0, ptr %.sroa.0.0.lcssa.i.i, align 4, !tbaa !21
  %i.bz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  br label %.lr.ph.i15.i.prol.loopexit

.lr.ph.i15.i.prol.loopexit:                       ; preds = %.lr.ph.i15.i.prol, %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i
  %.018.i.i.unr = phi i64 [ %i.bw, %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.bx, %.lr.ph.i15.i.prol ]
  %.01417.i.i.unr = phi ptr [ %.0.i, %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.cc, %.lr.ph.i15.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPNS0_4test24movable_and_copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.cb, %.lr.ph.i15.i.prol ]
  %i.cd = icmp eq i64 %i.d, %.neg
  br i1 %i.cd, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS4_EES9_EEvRT_T0_mT1_m.exit, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i15.i.prol.loopexit, %.lr.ph.i15.i
  %.018.i.i = phi i64 [ %i.cj, %.lr.ph.i15.i ], [ %.018.i.i.unr, %.lr.ph.i15.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.co, %.lr.ph.i15.i ], [ %.01417.i.i.unr, %.lr.ph.i15.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i = phi ptr [ %i.cn, %.lr.ph.i15.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i15.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i) ]
  %i.ce = load i32, ptr %.sroa.0.016.i.i, align 4, !tbaa !21
  store i32 %i.ce, ptr %.01417.i.i, align 4, !tbaa !21
  store i32 0, ptr %.sroa.0.016.i.i, align 4, !tbaa !21
  %i.cf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.cj = add i64 %.018.i.i, -2                   ; 2 uses
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !21
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !21
  store i32 0, ptr %i.ch, align 4, !tbaa !21
  %i.cl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !20
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %.not.i16.i.1 = icmp eq i64 %i.cj, 0
  br i1 %.not.i16.i.1, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS4_EES9_EEvRT_T0_mT1_m.exit, label %.lr.ph.i15.i, !llvm.loop !15239
end_hunk_9
