Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_vector_test?download=true
inline.NumInlined: 4251
inline.NumDeleted: 964
loop-unroll.NumRuntimeUnrolled: 299
loop-unroll.NumUnrolled: 299
begin_hunk_0_@_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE8index_ofENS0_12vec_iteratorIPiLb1EEE:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE2atEt(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !104
  %.not.i = icmp ult i16 %1, %i.b
  br i1 %.not.i, label %_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE26priv_throw_if_out_of_rangeEt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str) #23
  unreachable

_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE26priv_throw_if_out_of_rangeEt.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !100
  %i.d = sext i16 %1 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE26priv_throw_if_out_of_rangeEt(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !104
  %.not = icmp ult i16 %1, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE2atEt(ptr noundef nonnull align 8 dereferenceable(16) %0, i16 noundef zeroext %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !104
  %.not.i = icmp ult i16 %1, %i.b
  br i1 %.not.i, label %_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE26priv_throw_if_out_of_rangeEt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str) #23
  unreachable

_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE26priv_throw_if_out_of_rangeEt.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !100
  %i.d = zext i16 %1 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.d
  ret ptr %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE4dataEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !100
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE4dataEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !100
  ret ptr %i.a
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.26", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !104  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !101
  %.not.i = icmp eq i16 %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !100, !nonnull !76, !noundef !76
  %i.f = zext i16 %i.b to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %1, align 4, !tbaa !63
  store i32 %i.h, ptr %i.g, align 4, !tbaa !63
  %i.i = add i16 %i.b, 1
  store i16 %i.i, ptr %i.a, align 8, !tbaa !104
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE12emplace_backIJRKiEEERiDpOT_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.j = load ptr, ptr %0, align 8, !tbaa !100
  %i.k = zext i16 %i.b to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  call void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS4_JRKiEEEEENS0_12vec_iteratorIPiLb0EEESD_tT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.26") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.l, i16 noundef zeroext 1, ptr nonnull align 4 dereferenceable(4) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE12emplace_backIJRKiEEERiDpOT_.exit

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE12emplace_backIJRKiEEERiDpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE9push_backEOi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.26", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !104  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !101
  %.not.i = icmp eq i16 %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !100, !nonnull !76, !noundef !76
  %i.f = zext i16 %i.b to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %1, align 4, !tbaa !63
  store i32 %i.h, ptr %i.g, align 4, !tbaa !63
  %i.i = add i16 %i.b, 1
  store i16 %i.i, ptr %i.a, align 8, !tbaa !104
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE12emplace_backIJiEEERiDpOT_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.j = load ptr, ptr %0, align 8, !tbaa !100
  %i.k = zext i16 %i.b to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  call void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS4_JiEEEEENS0_12vec_iteratorIPiLb0EEESB_tT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.26") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.l, i16 noundef zeroext 1, ptr nonnull align 4 dereferenceable(4) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE12emplace_backIJiEEERiDpOT_.exit

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE12emplace_backIJiEEERiDpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE19unchecked_push_backERKi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !100, !nonnull !76, !noundef !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !104  ; 2 uses
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  %i.f = load i32, ptr %1, align 4, !tbaa !63
  store i32 %i.f, ptr %i.e, align 4, !tbaa !63
  %i.g = add i16 %i.c, 1
  store i16 %i.g, ptr %i.b, align 8, !tbaa !104
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE19unchecked_push_backEOi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !100, !nonnull !76, !noundef !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !104  ; 2 uses
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.d
  %i.f = load i32, ptr %1, align 4, !tbaa !63
  store i32 %i.f, ptr %i.e, align 4, !tbaa !63
  %i.g = add i16 %i.c, 1
  store i16 %i.g, ptr %i.b, align 8, !tbaa !104
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6insertENS0_12vec_iteratorIPiLb1EEERKi(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::container::vec_iterator.25", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN5boost9container12vec_iteratorIPiLb1EEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #25, !noalias !811
  %i.a = load ptr, ptr %4, align 8, !tbaa !87, !noalias !812 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !101, !noalias !812
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !104, !noalias !812 ; 4 uses
  %.not.i.not.i = icmp ugt i16 %i.c, %i.e
  br i1 %.not.i.not.i, label %bb.b, label %bb.f, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !100, !noalias !812 ; 3 uses
  %i.g = zext i16 %i.e to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 5 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = and i64 %i.k, 262140
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.m = load i32, ptr %3, align 4, !tbaa !63, !noalias !812
  store i32 %i.m, ptr %i.h, align 4, !tbaa !63, !noalias !812
  %i.n = add nuw i16 %i.e, 1
  store i16 %i.n, ptr %i.d, align 8, !tbaa !104, !noalias !812
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS4_JRKiEEEEEvPitT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %5 = lshr exact i64 %i.k, 2
  %i.o = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.p = load i32, ptr %i.o, align 4, !tbaa !63, !noalias !812
  store i32 %i.p, ptr %i.h, align 4, !tbaa !63, !noalias !812
  %i.q = add nuw i16 %i.e, 1
  store i16 %i.q, ptr %i.d, align 8, !tbaa !104, !noalias !812
  %i.r = and i64 %5, 65535                        ; 2 uses
  %i.s = add nsw i64 %i.r, -1                     ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i, label %bb.e, !prof !40

bb.e:                                             ; preds = %bb.d
  %i.t = sub nsw i64 1, %i.r                      ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.t
  %i.v = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.t
  %i.w = shl nsw i64 %i.s, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %i.v, i64 %i.w, i1 false), !noalias !812
  %.pre.pre.i.i = load ptr, ptr %4, align 8, !tbaa !87, !noalias !812
  br label %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i

_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.pre.i.i = phi ptr [ %.pre.pre.i.i, %bb.e ], [ %i.a, %bb.d ]
  %i.x = load i32, ptr %3, align 4, !tbaa !63, !noalias !812
  store i32 %i.x, ptr %i.a, align 4, !tbaa !63, !noalias !812
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS4_JRKiEEEEEvPitT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS4_JRKiEEEEEvPitT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i: ; preds = %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i, %bb.c
  %i.y = phi ptr [ %i.a, %bb.c ], [ %.pre.i.i, %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i ]
  call void @_ZN5boost9container12vec_iteratorIPiLb0EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.y) #25
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE7emplaceIJRKiEEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEEDpOT_.exit

bb.f:                                             ; preds = %bb.a
  call void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS4_JRKiEEEEENS0_12vec_iteratorIPiLb0EEESD_tT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.a, i16 noundef zeroext 1, ptr nonnull align 4 dereferenceable(4) %3)
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE7emplaceIJRKiEEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEEDpOT_.exit

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE7emplaceIJRKiEEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEEDpOT_.exit: ; preds = %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS4_JRKiEEEEEvPitT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6insertENS0_12vec_iteratorIPiLb1EEEOi(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::container::vec_iterator.25", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN5boost9container12vec_iteratorIPiLb1EEC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #25, !noalias !819
  %i.a = load ptr, ptr %4, align 8, !tbaa !87, !noalias !820 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.c = load i16, ptr %i.b, align 2, !tbaa !101, !noalias !820
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !104, !noalias !820 ; 4 uses
  %.not.i.not.i = icmp ugt i16 %i.c, %i.e
  br i1 %.not.i.not.i, label %bb.b, label %bb.f, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !100, !noalias !820 ; 3 uses
  %i.g = zext i16 %i.e to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 5 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = and i64 %i.k, 262140
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.m = load i32, ptr %3, align 4, !tbaa !63, !noalias !820
  store i32 %i.m, ptr %i.h, align 4, !tbaa !63, !noalias !820
  %i.n = add nuw i16 %i.e, 1
  store i16 %i.n, ptr %i.d, align 8, !tbaa !104, !noalias !820
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS4_JiEEEEEvPitT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %5 = lshr exact i64 %i.k, 2
  %i.o = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.p = load i32, ptr %i.o, align 4, !tbaa !63, !noalias !820
  store i32 %i.p, ptr %i.h, align 4, !tbaa !63, !noalias !820
  %i.q = add nuw i16 %i.e, 1
  store i16 %i.q, ptr %i.d, align 8, !tbaa !104, !noalias !820
  %i.r = and i64 %5, 65535                        ; 2 uses
  %i.s = add nsw i64 %i.r, -1                     ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i, label %bb.e, !prof !40

bb.e:                                             ; preds = %bb.d
  %i.t = sub nsw i64 1, %i.r                      ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.t
  %i.v = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.t
  %i.w = shl nsw i64 %i.s, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %i.v, i64 %i.w, i1 false), !noalias !820
  %.pre.pre.i.i = load ptr, ptr %4, align 8, !tbaa !87, !noalias !820
  br label %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i

_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.pre.i.i = phi ptr [ %.pre.pre.i.i, %bb.e ], [ %i.a, %bb.d ]
  %i.x = load i32, ptr %3, align 4, !tbaa !63, !noalias !820
  store i32 %i.x, ptr %i.a, align 4, !tbaa !63, !noalias !820
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS4_JiEEEEEvPitT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS4_JiEEEEEvPitT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i: ; preds = %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i, %bb.c
  %i.y = phi ptr [ %i.a, %bb.c ], [ %.pre.i.i, %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i ]
  call void @_ZN5boost9container12vec_iteratorIPiLb0EEC1ES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.y) #25
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE7emplaceIJiEEENS0_12vec_iteratorIPiLb0EEENS7_IS8_Lb1EEEDpOT_.exit

bb.f:                                             ; preds = %bb.a
  call void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS4_JiEEEEENS0_12vec_iteratorIPiLb0EEESB_tT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.a, i16 noundef zeroext 1, ptr nonnull align 4 dereferenceable(4) %3)
  br label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE7emplaceIJiEEENS0_12vec_iteratorIPiLb0EEENS7_IS8_Lb1EEEDpOT_.exit

_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE7emplaceIJiEEENS0_12vec_iteratorIPiLb0EEENS7_IS8_Lb1EEEDpOT_.exit: ; preds = %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS4_JiEEEEEvPitT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE6insertENS0_12vec_iteratorIPiLb1EEEtRKi(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef align 8 dead_on_return %2, i16 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !87, !noalias !831 ; 14 uses
  %i.b = zext i16 %3 to i32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.d = load i16, ptr %i.c, align 2, !tbaa !101, !noalias !831
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !104, !noalias !831 ; 2 uses
  %i.h = zext i16 %i.g to i32
  %i.i = sub nsw i32 %i.e, %i.h
  %.not.i = icmp slt i32 %i.i, %i.b
  br i1 %.not.i, label %bb.k, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !100, !noalias !831 ; 2 uses
  %i.k = zext i16 %i.g to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k ; 11 uses
  %i.m = zext i16 %3 to i64                       ; 13 uses
  %i.n = icmp eq ptr %i.l, %i.a
  %.not15.i.i.i.i.i = icmp eq i16 %3, 0           ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %.pre.i.i.i.i.i = load i32, ptr %4, align 4, !tbaa !63, !noalias !831 ; 2 uses
  %min.iters.check52 = icmp ult i16 %3, 8
  br i1 %min.iters.check52, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph53

vector.ph53:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i
  %n.vec54 = and i64 %i.m, 65528                  ; 3 uses
  %i.o = and i64 %i.m, 7
  %i.p = shl nuw nsw i64 %n.vec54, 2
  %i.q = getelementptr i8, ptr %i.l, i64 %i.p
  %broadcast.splatinsert55 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i, i64 0
  %broadcast.splat56 = shufflevector <4 x i32> %broadcast.splatinsert55, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph53
  %index58 = phi i64 [ 0, %vector.ph53 ], [ %index.next67, %vector.body57 ] ; 2 uses
  %i.r = shl i64 %index58, 2
  %next.gep59 = getelementptr i8, ptr %i.l, i64 %i.r ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep59) ]
  %i.s = getelementptr i8, ptr %next.gep59, i64 16
  store <4 x i32> %broadcast.splat56, ptr %next.gep59, align 4, !tbaa !63, !noalias !831
  store <4 x i32> %broadcast.splat56, ptr %i.s, align 4, !tbaa !63, !noalias !831
  %index.next67 = add nuw i64 %index58, 8         ; 2 uses
  %i.t = icmp eq i64 %index.next67, %n.vec54
  br i1 %i.t, label %middle.block68, label %vector.body57, !llvm.loop !823

middle.block68:                                   ; preds = %vector.body57
  %cmp.n69 = icmp eq i64 %n.vec54, %i.m
  br i1 %cmp.n69, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i.i, %middle.block68
  %.017.i.i.i.i.i.ph = phi i64 [ %i.m, %.lr.ph.preheader.i.i.i.i.i ], [ %i.o, %middle.block68 ]
  %.01416.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.preheader.i.i.i.i.i ], [ %i.q, %middle.block68 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.01416.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.u = add nsw i64 %.017.i.i.i.i.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  store i32 %.pre.i.i.i.i.i, ptr %.01416.i.i.i.i.i, align 4, !tbaa !63, !noalias !831
  %i.v = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !824

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %bb.e, !prof !40

bb.e:                                             ; preds = %bb.d
  %i.w = ptrtoint ptr %i.l to i64
  %i.x = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = ashr exact i64 %i.y, 2                   ; 7 uses
  %.not.i.i.i.i = icmp ult i64 %i.z, %i.m
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = sub nsw i64 0, %i.m
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.aa ; 3 uses
  %.not13.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not13.i.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i, label %bb.g, !prof !49

bb.g:                                             ; preds = %bb.f
  %i.ac = shl nuw nsw i64 %i.m, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %i.ab, i64 %i.ac, i1 false), !noalias !831
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.not.i.i10.i.i.i = icmp eq ptr %i.ab, %i.a
  br i1 %.not.i.i10.i.i.i, label %.lr.ph.i.i11.i.i.i, label %bb.h, !prof !40

bb.h:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ad, %i.x                     ; 2 uses
  %i.af = ashr exact i64 %i.ae, 2
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ah, ptr align 4 %i.a, i64 %i.ae, i1 false), !noalias !831
  br label %.lr.ph.i.i11.i.i.i

.lr.ph.i.i11.i.i.i:                               ; preds = %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test25small_size_type_allocatorIiEEPiS5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i.i
  %.pre.i.i12.i.i.i = load i32, ptr %4, align 4, !tbaa !63, !noalias !831 ; 2 uses
  %min.iters.check = icmp ult i16 %3, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i11.i.i.i
  %n.vec = and i64 %i.m, 65528                    ; 3 uses
  %i.ai = and i64 %i.m, 7
  %i.aj = shl nuw nsw i64 %n.vec, 2
  %i.ak = getelementptr i8, ptr %i.a, i64 %i.aj
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i12.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !63, !noalias !831
  store <4 x i32> %broadcast.splat, ptr %i.am, align 4, !tbaa !63, !noalias !831
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !825

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i11.i.i.i, %middle.block
  %.07.i.i.i.i.i.ph = phi i64 [ %i.m, %.lr.ph.i.i11.i.i.i ], [ %i.ai, %middle.block ]
  %.046.i.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i.i11.i.i.i ], [ %i.ak, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i.i.i.i.i = phi i64 [ %i.ao, %scalar.ph ], [ %.07.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %.046.i.i.i.i.i = phi ptr [ %i.ap, %scalar.ph ], [ %.046.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ao = add i64 %.07.i.i.i.i.i, -1              ; 2 uses
  store i32 %.pre.i.i12.i.i.i, ptr %.046.i.i.i.i.i, align 4, !tbaa !63, !noalias !831
  %i.ap = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i, i64 4
  %.not.i35.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i35.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_4test25small_size_type_allocatorIiEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPitT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %scalar.ph, !llvm.loop !826

bb.i:                                             ; preds = %bb.e
  %.not14.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not14.i.i.i, label %.lr.ph.i39.i.i.i.i, label %bb.j, !prof !40

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.m
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull align 4 %i.a, i64 %i.y, i1 false), !noalias !831
  br label %.lr.ph.i39.i.i.i.i

.lr.ph.i39.i.i.i.i:                               ; preds = %bb.j, %bb.i
  %.pre.i40.i.i.i.i = load i32, ptr %4, align 4, !tbaa !63, !noalias !831 ; 2 uses
  %min.iters.check17 = icmp ult i64 %i.z, 8
  br i1 %min.iters.check17, label %scalar.ph16.preheader, label %vector.ph18

vector.ph18:                                      ; preds = %.lr.ph.i39.i.i.i.i
  %n.vec19 = and i64 %i.z, -8                     ; 3 uses
  %i.ar = and i64 %i.z, 7
  %i.as = shl nsw i64 %n.vec19, 2
  %i.at = getelementptr i8, ptr %i.a, i64 %i.as
  %broadcast.splatinsert20 = insertelement <4 x i32> poison, i32 %.pre.i40.i.i.i.i, i64 0
  %broadcast.splat21 = shufflevector <4 x i32> %broadcast.splatinsert20, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph18
  %index23 = phi i64 [ 0, %vector.ph18 ], [ %index.next25, %vector.body22 ] ; 2 uses
  %i.au = shl i64 %index23, 2
end_hunk_0
