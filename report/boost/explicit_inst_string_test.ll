Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_string_test?download=true
inline.NumInlined: 5601
inline.NumDeleted: 957
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceEPKwS9_St16initializer_listIwE:bb.a
_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7replaceIPKwEERS7_SA_SA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4copyEPwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %3, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.9) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = lshr i64 %i.e, 1
  %i.k = and i64 %i.j, 127
  %i.l = select i1 %i.i, i64 %i.k, i64 %i.f
  %i.m = sub nsw i64 %i.l, %3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.m) ; 3 uses
  %i.n = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.n, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.i, ptr %i.o, ptr %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %3
  %i.t = tail call ptr @wmemcpy(ptr noundef %1, ptr noundef %i.s, i64 noundef %.sroa.speculated) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit

_ZNSt11char_traitsIwE4copyEPwPKwm.exit:           ; preds = %bb.c, %bb.d
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::test::simple_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %2 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::test::simple_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::test::simple_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = load i8, ptr %1, align 8, !tbaa !109
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9swap_dataERS6_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !139
  %i.e = load i64, ptr %0, align 8
  %i.f = and i64 %i.e, -2
  store i64 %i.f, ptr %0, align 8
  %i.g = load i64, ptr %1, align 8
  %i.h = and i64 %i.g, -2
  store i64 %i.h, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !138
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !138
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !137
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !139
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9swap_dataERS6_.exit

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !139
  %i.p = load i64, ptr %1, align 8
  %i.q = and i64 %i.p, -2
  store i64 %i.q, ptr %1, align 8
  %i.r = load i64, ptr %0, align 8
  %i.s = and i64 %i.r, -2
  store i64 %i.s, ptr %1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !138
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !138
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !137
  store ptr %i.x, ptr %i.o, align 8, !tbaa !137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !139
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9swap_dataERS6_.exit

bb.g:                                             ; preds = %bb.e
  %i.y = load i64, ptr %0, align 8                ; 2 uses
  %i.z = and i64 %i.y, -2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !138
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !137
  %i.ae = load i64, ptr %1, align 8
  %i.af = and i64 %i.ae, -2
  %i.ag = and i64 %i.y, 1
  %i.ah = or disjoint i64 %i.af, %i.ag
  store i64 %i.ah, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !138
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !138
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !137
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !137
  %i.al = load i64, ptr %1, align 8
  %i.am = and i64 %i.al, 1
  %i.an = or disjoint i64 %i.am, %i.z
  store i64 %i.an, ptr %1, align 8
  store i64 %i.ab, ptr %i.ai, align 8, !tbaa !138
  store ptr %i.ad, ptr %i.o, align 8, !tbaa !137
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9swap_dataERS6_.exit

_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9swap_dataERS6_.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5c_strEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4dataEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findERKS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 3 uses
  %i.l = add i64 %i.k, %2
  %i.m = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.n = trunc i8 %i.m to i1
  %i.o = lshr i8 %i.m, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load i64, ptr %0, align 8                ; 2 uses
  %i.r = lshr i64 %i.q, 1                         ; 3 uses
  %i.s = select i1 %i.n, i64 %i.p, i64 %i.r
  %i.t = icmp ugt i64 %i.l, %i.s
  br i1 %i.t, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = trunc i64 %i.q to i1                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %i.u, ptr %i.v, ptr %i.x       ; 3 uses
  %i.z = and i64 %i.r, 127
  %i.aa = select i1 %i.u, i64 %i.z, i64 %i.r
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.y, i64 %2 ; 2 uses
  %.idx.i = shl nsw i64 %i.k, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %i.ae = icmp eq i64 %i.k, 0
  br i1 %i.ae, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.f
  %.01829.i.i = phi ptr [ %i.am, %bb.f ], [ %i.ac, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.01524.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %i.ak, %bb.e ] ; 2 uses
  %.01623.i.i = phi ptr [ %.01829.i.i, %.lr.ph.i.i ], [ %i.aj, %bb.e ] ; 3 uses
  %i.af = icmp eq ptr %.01623.i.i, %i.ab
  br i1 %i.af, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr %.01623.i.i, align 4, !tbaa !134
  %i.ah = load i32, ptr %.01524.i.i, align 4, !tbaa !134
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.01623.i.i, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.01524.i.i, i64 4 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ad
  br i1 %i.al, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, label %bb.c, !llvm.loop !24

bb.f:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.01829.i.i, i64 4
  br label %.lr.ph.i.i

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i: ; preds = %bb.e, %bb.b
  %.1.ph.i.i = phi ptr [ %i.ac, %bb.b ], [ %.01829.i.i, %bb.e ] ; 2 uses
  %.not.i = icmp eq ptr %.1.ph.i.i, %i.ab
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i
  %i.an = ptrtoint ptr %.1.ph.i.i to i64
  %i.ao = ptrtoint ptr %i.y to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, %bb.g
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.aq, %bb.g ], [ -1, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %3, %2
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 3 uses
  %i.o = lshr i64 %i.f, 1
  %i.p = and i64 %i.o, 127
  %i.q = select i1 %i.j, i64 %i.p, i64 %i.g
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.n, i64 %2 ; 2 uses
  %.idx = shl nsw i64 %3, 2
  %i.t = getelementptr inbounds i8, ptr %1, i64 %.idx
  %i.u = icmp eq i64 %3, 0
  br i1 %i.u, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.f
  %.01829.i = phi ptr [ %i.ac, %bb.f ], [ %i.s, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.01524.i = phi ptr [ %1, %.lr.ph.i ], [ %i.aa, %bb.e ] ; 2 uses
  %.01623.i = phi ptr [ %.01829.i, %.lr.ph.i ], [ %i.z, %bb.e ] ; 3 uses
  %i.v = icmp eq ptr %.01623.i, %i.r
  br i1 %i.v, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %.01623.i, align 4, !tbaa !134
  %i.x = load i32, ptr %.01524.i, align 4, !tbaa !134
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.01623.i, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01524.i, i64 4 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.t
  br i1 %i.ab, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit, label %bb.c, !llvm.loop !24

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.01829.i, i64 4
  br label %.lr.ph.i

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit: ; preds = %bb.e, %bb.b
  %.1.ph.i = phi ptr [ %i.s, %bb.b ], [ %.01829.i, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %.1.ph.i, %i.r
  br i1 %.not, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit
  %i.ad = ptrtoint ptr %.1.ph.i to i64
  %i.ae = ptrtoint ptr %i.n to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2
  br label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread: ; preds = %bb.c, %bb.g, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.ag, %bb.g ], [ -1, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 3 uses
  %i.b = add i64 %i.a, %2
  %i.c = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1
  %i.e = lshr i8 %i.c, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = load i64, ptr %0, align 8                ; 2 uses
  %i.h = lshr i64 %i.g, 1                         ; 3 uses
  %i.i = select i1 %i.d, i64 %i.f, i64 %i.h
  %i.j = icmp ugt i64 %i.b, %i.i
  br i1 %i.j, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = trunc i64 %i.g to i1                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.k, ptr %i.l, ptr %i.n       ; 3 uses
  %i.p = and i64 %i.h, 127
  %i.q = select i1 %i.k, i64 %i.p, i64 %i.h
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %2 ; 2 uses
  %.idx.i = shl nsw i64 %i.a, 2
  %i.t = getelementptr inbounds i8, ptr %1, i64 %.idx.i
  %i.u = icmp eq i64 %i.a, 0
  br i1 %i.u, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.f
  %.01829.i.i = phi ptr [ %i.ac, %bb.f ], [ %i.s, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.01524.i.i = phi ptr [ %1, %.lr.ph.i.i ], [ %i.aa, %bb.e ] ; 2 uses
  %.01623.i.i = phi ptr [ %.01829.i.i, %.lr.ph.i.i ], [ %i.z, %bb.e ] ; 3 uses
  %i.v = icmp eq ptr %.01623.i.i, %i.r
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %.01623.i.i, align 4, !tbaa !134
  %i.x = load i32, ptr %.01524.i.i, align 4, !tbaa !134
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.01623.i.i, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01524.i.i, i64 4 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.t
  br i1 %i.ab, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, label %bb.c, !llvm.loop !24

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.01829.i.i, i64 4
  br label %.lr.ph.i.i

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i: ; preds = %bb.e, %bb.b
  %.1.ph.i.i = phi ptr [ %i.s, %bb.b ], [ %.01829.i.i, %bb.e ] ; 2 uses
  %.not.i = icmp eq ptr %.1.ph.i.i, %i.r
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i
  %i.ad = ptrtoint ptr %.1.ph.i.i to i64
  %i.ae = ptrtoint ptr %i.o to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, %bb.g
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ag, %bb.g ], [ -1, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not = icmp ult i64 %2, %i.g
  br i1 %.not, label %bb.b, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.0710.i = phi ptr [ %i.q, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %i.o = load i32, ptr %.0710.i, align 4, !tbaa !134
  %i.p = icmp eq i32 %i.o, %1
  br i1 %i.p, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0710.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !25

_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit: ; preds = %.lr.ph.i
  %.not14 = icmp eq ptr %.0710.i, %i.m
  br i1 %.not14, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit
  %i.r = ptrtoint ptr %.0710.i to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  br label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.thread

_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.u, %bb.d ], [ -1, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindERKS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 5 uses
  %i.l = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.m = trunc i8 %i.l to i1
  %i.n = lshr i8 %i.l, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %0, align 8                ; 2 uses
  %i.q = lshr i64 %i.p, 1
  %i.r = select i1 %i.m, i64 %i.o, i64 %i.q       ; 3 uses
  %i.s = icmp samesign ugt i64 %i.k, %i.r
  br i1 %i.s, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = icmp eq i64 %i.k, 0
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated17.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %2)
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit

bb.d:                                             ; preds = %bb.b
  %i.u = trunc i64 %i.p to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %i.u, ptr %i.v, ptr %i.x       ; 3 uses
  %i.z = sub nuw nsw i64 %i.r, %i.k
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %2)
  %.idx2729.i = add nuw i64 %.sroa.speculated.i, %i.k
  %i.aa = shl i64 %.idx2729.i, 2                  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 %i.aa   ; 4 uses
  %.idx.i = shl nsw i64 %i.k, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %.not41.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not41.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %bb.h
  %.02343.i.i = phi ptr [ %.1.i.i, %bb.h ], [ %i.ab, %bb.d ] ; 2 uses
  %.02742.i.i = phi ptr [ %i.ak, %bb.h ], [ %i.y, %bb.d ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.preheader.i.i
  %.022.i.i = phi ptr [ %i.ai, %bb.g ], [ %.02742.i.i, %.preheader.i.i ] ; 2 uses
  %.021.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.f, %.preheader.i.i ] ; 2 uses
  %i.ad = load i32, ptr %.022.i.i, align 4, !tbaa !134
  %i.ae = load i32, ptr %.021.i.i, align 4, !tbaa !134
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.ac
  br i1 %i.ah, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 4 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ab
  br i1 %i.aj, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i, label %bb.e, !llvm.loop !26

bb.h:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %.02343.i.i, %bb.e ], [ %.02742.i.i, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02742.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.ab
  br i1 %.not.i.i, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i, label %.preheader.i.i, !llvm.loop !27

_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i: ; preds = %bb.h, %bb.g
  %.3.i.i = phi ptr [ %.02343.i.i, %bb.g ], [ %.1.i.i, %bb.h ] ; 2 uses
  %.not.i = icmp eq ptr %.3.i.i, %i.ab
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i
  %i.al = ptrtoint ptr %.3.i.i to i64
  %i.am = ptrtoint ptr %i.y to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit: ; preds = %bb.a, %bb.c, %bb.d, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i, %bb.i
  %.0.i = phi i64 [ -1, %bb.a ], [ %.sroa.speculated17.i, %bb.c ], [ %i.ao, %bb.i ], [ -1, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i ], [ -1, %bb.d ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 3 uses
  %i.h = icmp ugt i64 %3, %i.g
  br i1 %i.h, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %3, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated17 = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %2)
  br label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 3 uses
  %i.o = sub nuw nsw i64 %i.g, %3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %.idx2729 = add nuw i64 %.sroa.speculated, %3
  %i.p = shl i64 %.idx2729, 2                     ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 %i.p     ; 4 uses
  %.idx = shl nsw i64 %3, 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not41.i = icmp eq i64 %i.p, 0
  br i1 %.not41.i, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %bb.h
  %.02343.i = phi ptr [ %.1.i, %bb.h ], [ %i.q, %bb.d ] ; 2 uses
  %.02742.i = phi ptr [ %i.z, %bb.h ], [ %i.n, %bb.d ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.preheader.i
  %.022.i = phi ptr [ %i.x, %bb.g ], [ %.02742.i, %.preheader.i ] ; 2 uses
  %.021.i = phi ptr [ %i.v, %bb.g ], [ %1, %.preheader.i ] ; 2 uses
  %i.s = load i32, ptr %.022.i, align 4, !tbaa !134
  %i.t = load i32, ptr %.021.i, align 4, !tbaa !134
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.021.i, i64 4 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.r
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.022.i, i64 4 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.q
  br i1 %i.y, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit, label %bb.e, !llvm.loop !26

bb.h:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi ptr [ %.02343.i, %bb.e ], [ %.02742.i, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02742.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.q
  br i1 %.not.i, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit, label %.preheader.i, !llvm.loop !27

_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit: ; preds = %bb.h, %bb.g
  %.3.i = phi ptr [ %.02343.i, %bb.g ], [ %.1.i, %bb.h ] ; 2 uses
  %.not = icmp eq ptr %.3.i, %i.q
  br i1 %.not, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit
  %i.aa = ptrtoint ptr %.3.i to i64
  %i.ab = ptrtoint ptr %i.n to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  br label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.thread

_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.thread: ; preds = %bb.d, %bb.i, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit, %bb.a, %bb.c
  %.0 = phi i64 [ -1, %bb.a ], [ %.sroa.speculated17, %bb.c ], [ %i.ad, %bb.i ], [ -1, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit ], [ -1, %bb.d ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 5 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 3 uses
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.a, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated17.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %2)
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit

bb.d:                                             ; preds = %bb.b
  %i.k = trunc i64 %i.f to i1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.k, ptr %i.l, ptr %i.n       ; 3 uses
  %i.p = sub nuw nsw i64 %i.h, %i.a
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %2)
  %.idx2729.i = add nuw i64 %.sroa.speculated.i, %i.a
  %i.q = shl i64 %.idx2729.i, 2                   ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 %i.q     ; 4 uses
  %.idx.i = shl nsw i64 %i.a, 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.not41.i.i = icmp eq i64 %i.q, 0
  br i1 %.not41.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %bb.h
  %.02343.i.i = phi ptr [ %.1.i.i, %bb.h ], [ %i.r, %bb.d ] ; 2 uses
  %.02742.i.i = phi ptr [ %i.aa, %bb.h ], [ %i.o, %bb.d ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.preheader.i.i
  %.022.i.i = phi ptr [ %i.y, %bb.g ], [ %.02742.i.i, %.preheader.i.i ] ; 2 uses
  %.021.i.i = phi ptr [ %i.w, %bb.g ], [ %1, %.preheader.i.i ] ; 2 uses
  %i.t = load i32, ptr %.022.i.i, align 4, !tbaa !134
  %i.u = load i32, ptr %.021.i.i, align 4, !tbaa !134
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.s
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 4 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.r
  br i1 %i.z, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i, label %bb.e, !llvm.loop !26

bb.h:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %.02343.i.i, %bb.e ], [ %.02742.i.i, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02742.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.r
  br i1 %.not.i.i, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i, label %.preheader.i.i, !llvm.loop !27

_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i: ; preds = %bb.h, %bb.g
  %.3.i.i = phi ptr [ %.02343.i.i, %bb.g ], [ %.1.i.i, %bb.h ] ; 2 uses
  %.not.i = icmp eq ptr %.3.i.i, %i.r
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i
  %i.ab = ptrtoint ptr %.3.i.i to i64
  %i.ac = ptrtoint ptr %i.o to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEPKwmm.exit: ; preds = %bb.a, %bb.c, %bb.d, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i, %bb.i
  %.0.i = phi i64 [ -1, %bb.a ], [ %.sroa.speculated17.i, %bb.c ], [ %i.ae, %bb.i ], [ -1, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEET_SD_SD_T0_SE_T1_.exit.i ], [ -1, %bb.d ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !134, !noalias !446
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !28

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %i.q, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.x, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofERKS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.h = trunc i8 %i.g to i1
  %i.i = lshr i8 %i.g, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %i.h, i64 %i.j, i64 %i.l       ; 2 uses
  %.not.i = icmp ult i64 %2, %i.m
  br i1 %.not.i, label %bb.b, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit

bb.b:                                             ; preds = %bb.a
  %i.n = lshr i8 %i.a, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %1, align 8
  %i.q = lshr i64 %i.p, 1
  %i.r = select i1 %i.b, i64 %i.o, i64 %i.q       ; 2 uses
  %i.s = trunc i64 %i.k to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = select i1 %i.s, ptr %i.t, ptr %i.v       ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.m ; 2 uses
  %.idx.i = shl nsw i64 %i.r, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %.not1622.i.i = icmp eq i64 %i.r, 0
  br i1 %.not1622.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %.01425.i.i = phi ptr [ %i.ae, %._crit_edge.i.i ], [ %i.z, %.preheader.i.preheader.i ] ; 4 uses
  %i.aa = load i32, ptr %.01425.i.i, align 4, !tbaa !134
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.01223.i.i, i64 4 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.ab, %i.y
  br i1 %.not16.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !29

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.01223.i.i = phi ptr [ %i.f, %.preheader.i.i ], [ %i.ab, %bb.c ] ; 2 uses
  %i.ac = load i32, ptr %.01223.i.i, align 4, !tbaa !134
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.01425.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.x
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit, label %.preheader.i.i, !llvm.loop !30

_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i: ; preds = %bb.d
  %.not17.i = icmp eq ptr %.01425.i.i, %i.x
  br i1 %.not17.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i
  %i.af = ptrtoint ptr %.01425.i.i to i64
  %i.ag = ptrtoint ptr %i.w to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ai, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i ], [ -1, %bb.b ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not = icmp ult i64 %2, %i.g
  br i1 %.not, label %bb.b, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g ; 2 uses
  %.idx = shl nsw i64 %3, 2
  %i.n = getelementptr inbounds i8, ptr %1, i64 %.idx
  %.not1622.i = icmp eq i64 %3, 0
  br i1 %.not1622.i, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %2
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.01425.i = phi ptr [ %i.t, %._crit_edge.i ], [ %i.o, %.preheader.i.preheader ] ; 4 uses
  %i.p = load i32, ptr %.01425.i, align 4, !tbaa !134
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.01223.i, i64 4 ; 2 uses
  %.not16.i = icmp eq ptr %i.q, %i.n
  br i1 %.not16.i, label %._crit_edge.i, label %bb.d, !llvm.loop !29

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.01223.i = phi ptr [ %1, %.preheader.i ], [ %i.q, %bb.c ] ; 2 uses
  %i.r = load i32, ptr %.01223.i, align 4, !tbaa !134
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit, label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.01425.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.m
  br i1 %.not.i, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %.preheader.i, !llvm.loop !30

_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit: ; preds = %bb.d
  %.not17 = icmp eq ptr %.01425.i, %i.m
  br i1 %.not17, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit
  %i.u = ptrtoint ptr %.01425.i to i64
  %i.v = ptrtoint ptr %i.l to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread

_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.thread: ; preds = %._crit_edge.i, %bb.b, %bb.e, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.x, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit ], [ -1, %bb.b ], [ -1, %._crit_edge.i ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not.i = icmp ult i64 %2, %i.g
  br i1 %.not.i, label %bb.b, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.g ; 2 uses
  %.idx.i = shl nsw i64 %i.h, 2
  %i.o = getelementptr inbounds i8, ptr %1, i64 %.idx.i
  %.not1622.i.i = icmp eq i64 %i.h, 0
  br i1 %.not1622.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %.01425.i.i = phi ptr [ %i.u, %._crit_edge.i.i ], [ %i.p, %.preheader.i.preheader.i ] ; 4 uses
  %i.q = load i32, ptr %.01425.i.i, align 4, !tbaa !134
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.01223.i.i, i64 4 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.r, %i.o
  br i1 %.not16.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !29

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.01223.i.i = phi ptr [ %1, %.preheader.i.i ], [ %i.r, %bb.c ] ; 2 uses
  %i.s = load i32, ptr %.01223.i.i, align 4, !tbaa !134
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.01425.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.n
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit, label %.preheader.i.i, !llvm.loop !30

_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i: ; preds = %bb.d
  %.not17.i = icmp eq ptr %.01425.i.i, %i.n
  br i1 %.not17.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i
  %i.v = ptrtoint ptr %.01425.i.i to i64
  %i.w = ptrtoint ptr %i.m to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEPKwmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.y, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i ], [ -1, %bb.b ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE13find_first_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not.i = icmp ult i64 %2, %i.g
  br i1 %.not.i, label %bb.b, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %.0710.i.i = phi ptr [ %i.q, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %i.o = load i32, ptr %.0710.i.i, align 4, !tbaa !134
  %i.p = icmp eq i32 %i.o, %1
  br i1 %i.p, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0710.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit, label %.lr.ph.i.i, !llvm.loop !25

_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i: ; preds = %.lr.ph.i.i
  %.not14.i = icmp eq ptr %.0710.i.i, %i.m
  br i1 %.not14.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i
  %i.r = ptrtoint ptr %.0710.i.i to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.u, %bb.d ], [ -1, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofERKS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.h = trunc i8 %i.g to i1
  %i.i = lshr i8 %i.g, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %i.h, i64 %i.j, i64 %i.l       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = lshr i8 %i.a, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load i64, ptr %1, align 8
  %i.r = lshr i64 %i.q, 1
  %i.s = select i1 %i.b, i64 %i.p, i64 %i.r       ; 2 uses
  %i.t = trunc i64 %i.k to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 4 uses
  %i.y = add nsw i64 %i.m, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %2)
  %.idx.i = shl i64 %.sroa.speculated.i, 2
  %i.z = add i64 %.idx.i, 4                       ; 2 uses
  %.idx20.i = shl nsw i64 %i.s, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx20.i
  %.not714.i.i = icmp eq i64 %i.z, 0
  %.not12.i.i = icmp eq i64 %i.s, 0
  %or.cond.i = or i1 %.not714.i.i, %.not12.i.i
  br i1 %or.cond.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.ab = getelementptr i8, ptr %i.x, i64 %i.z
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %i.ac = phi ptr [ %i.ad, %._crit_edge.i.i ], [ %i.ab, %.preheader.i.preheader.i ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !134, !noalias !449
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.0513.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %i.aa
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !31

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.0513.i.i = phi ptr [ %i.f, %.preheader.i.i ], [ %i.af, %bb.c ] ; 2 uses
  %i.ag = load i32, ptr %.0513.i.i, align 4, !tbaa !134, !noalias !449
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %.not7.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not7.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %.preheader.i.i, !llvm.loop !32

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i: ; preds = %bb.d
  %.not.i = icmp eq ptr %i.ac, %i.x
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = ptrtoint ptr %i.x to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.al, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i ], [ -1, %bb.b ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %.idx = shl i64 %.sroa.speculated, 2
  %i.o = add i64 %.idx, 4                         ; 2 uses
  %.idx20 = shl nsw i64 %3, 2
  %i.p = getelementptr inbounds i8, ptr %1, i64 %.idx20
  %.not714.i = icmp eq i64 %i.o, 0
  %.not12.i = icmp eq i64 %3, 0
  %or.cond = or i1 %.not714.i, %.not12.i
  br i1 %or.cond, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.m, i64 %i.o
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %i.r = phi ptr [ %i.s, %._crit_edge.i ], [ %i.q, %.preheader.i.preheader ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !134, !noalias !452
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.0513.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.u, %i.p
  br i1 %.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !31

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.0513.i = phi ptr [ %1, %.preheader.i ], [ %i.u, %bb.c ] ; 2 uses
  %i.v = load i32, ptr %.0513.i, align 4, !tbaa !134, !noalias !452
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit, label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  %.not7.i = icmp eq ptr %i.s, %i.m
  br i1 %.not7.i, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.thread, label %.preheader.i, !llvm.loop !32

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit: ; preds = %bb.d
  %.not = icmp eq ptr %i.r, %i.m
  br i1 %.not, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  br label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.thread

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.thread: ; preds = %._crit_edge.i, %bb.b, %bb.e, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.aa, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit ], [ -1, %bb.b ], [ -1, %._crit_edge.i ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %i.o = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %.idx.i = shl i64 %.sroa.speculated.i, 2
  %i.p = add i64 %.idx.i, 4                       ; 2 uses
  %.idx20.i = shl nsw i64 %i.i, 2
  %i.q = getelementptr inbounds i8, ptr %1, i64 %.idx20.i
  %.not714.i.i = icmp eq i64 %i.p, 0
  %.not12.i.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %.not714.i.i, %.not12.i.i
  br i1 %or.cond.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.n, i64 %i.p
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %i.s = phi ptr [ %i.t, %._crit_edge.i.i ], [ %i.r, %.preheader.i.preheader.i ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !134, !noalias !455
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.0513.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.q
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !31

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.0513.i.i = phi ptr [ %1, %.preheader.i.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.w = load i32, ptr %.0513.i.i, align 4, !tbaa !134, !noalias !455
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %.not7.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not7.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %.preheader.i.i, !llvm.loop !32

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i: ; preds = %bb.d
  %.not.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.n to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEPKwmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ab, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS9_EEEET_SG_SG_T0_SH_T1_.exit.i ], [ -1, %bb.b ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE12find_last_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !134, !noalias !458
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEwm.exit, label %.lr.ph.i.i, !llvm.loop !28

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i: ; preds = %.lr.ph.i.i
  %.not.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEwm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5rfindEwm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.x, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsISA_EEEEEET_SI_SI_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofERKS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 2 uses
  %i.l = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.m = trunc i8 %i.l to i1
  %i.n = lshr i8 %i.l, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %0, align 8                ; 2 uses
  %i.q = lshr i64 %i.p, 1                         ; 3 uses
  %i.r = select i1 %i.m, i64 %i.o, i64 %i.q
  %i.s = icmp ugt i64 %2, %i.r
  br i1 %i.s, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = trunc i64 %i.p to i1                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 3 uses
  %i.y = and i64 %i.q, 127
  %i.z = select i1 %i.t, i64 %i.y, i64 %i.q       ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.z ; 4 uses
  %.idx.i = shl nsw i64 %i.k, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i ; 2 uses
  %.not15.i.i = icmp eq i64 %2, %i.z
  br i1 %.not15.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %2 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.d
  %.0716.i.i = phi ptr [ %i.ai, %bb.d ], [ %i.ac, %.lr.ph.i.i ] ; 4 uses
  %i.ad = load i32, ptr %.0716.i.i, align 4, !tbaa !134
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.ag, %bb.c ], [ %i.f, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.ae = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134
  %i.af = icmp eq i32 %i.ae, %i.ad
  br i1 %i.af, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ah = icmp eq ptr %.0710.i.i.i.i, %i.ab
  br i1 %i.ah, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0716.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.aa
  br i1 %.not.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !34

_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i: ; preds = %bb.d, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.c, %.lr.ph.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.aa, %bb.b ], [ %.0716.i.i, %bb.c ], [ %i.ac, %.lr.ph.i.i ], [ %.0716.i.i, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i ], [ %i.aa, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, %i.aa
  %i.aj = ptrtoint ptr %.0.i.i to i64
  %i.ak = ptrtoint ptr %i.x to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2
  %i.an = select i1 %.not.i, i64 -1, i64 %i.am
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm.exit: ; preds = %bb.a, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i
  %.0.i = phi i64 [ %i.an, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = lshr i64 %i.e, 1
  %i.o = and i64 %i.n, 127
  %i.p = select i1 %i.i, i64 %i.o, i64 %i.f       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p ; 4 uses
  %.idx = shl nsw i64 %3, 2
  %i.r = getelementptr inbounds i8, ptr %1, i64 %.idx ; 2 uses
  %.not15.i = icmp eq i64 %2, %i.p
  br i1 %.not15.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i, %bb.d
  %.0716.i = phi ptr [ %i.y, %bb.d ], [ %i.s, %.lr.ph.i ] ; 4 uses
  %i.t = load i32, ptr %.0716.i, align 4, !tbaa !134
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.preheader.i
  %.0710.i.i.i = phi ptr [ %i.w, %bb.c ], [ %1, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.u = load i32, ptr %.0710.i.i.i, align 4, !tbaa !134
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !33

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i: ; preds = %.lr.ph.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i, %i.r
  br i1 %i.x, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0716.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %i.q
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit, label %.lr.ph.i.i.preheader.i, !llvm.loop !34

_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i, %bb.d, %bb.c, %bb.b, %.lr.ph.i
  %.0.i = phi ptr [ %i.q, %bb.b ], [ %.0716.i, %bb.c ], [ %i.s, %.lr.ph.i ], [ %.0716.i, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i ], [ %i.q, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.0.i, %i.q
  %i.z = ptrtoint ptr %.0.i to i64
  %i.aa = ptrtoint ptr %i.m to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = select i1 %.not, i64 -1, i64 %i.ac
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit
  %.0 = phi i64 [ %i.ad, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %2, %i.h
  br i1 %i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 3 uses
  %i.o = and i64 %i.g, 127
  %i.p = select i1 %i.j, i64 %i.o, i64 %i.g       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p ; 4 uses
  %.idx.i = shl nsw i64 %i.a, 2
  %i.r = getelementptr inbounds i8, ptr %1, i64 %.idx.i ; 2 uses
  %.not15.i.i = icmp eq i64 %2, %i.p
  br i1 %.not15.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %2 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.d
  %.0716.i.i = phi ptr [ %i.y, %bb.d ], [ %i.s, %.lr.ph.i.i ] ; 4 uses
  %i.t = load i32, ptr %.0716.i.i, align 4, !tbaa !134
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.w, %bb.c ], [ %1, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.u = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i.i, %i.r
  br i1 %i.x, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0716.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.q
  br i1 %.not.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !34

_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i: ; preds = %bb.d, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.c, %.lr.ph.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.q, %bb.b ], [ %.0716.i.i, %bb.c ], [ %i.s, %.lr.ph.i.i ], [ %.0716.i.i, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, %i.q
  %i.z = ptrtoint ptr %.0.i.i to i64
  %i.aa = ptrtoint ptr %i.n to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = select i1 %.not.i, i64 -1, i64 %i.ac
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEPKwmm.exit: ; preds = %bb.a, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i
  %.0.i = phi i64 [ %i.ad, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS5_EEEET_SC_SC_T0_.exit.i ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17find_first_not_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = lshr i64 %i.e, 1
  %i.o = and i64 %i.n, 127
  %i.p = select i1 %i.i, i64 %i.o, i64 %i.f       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p ; 2 uses
  %.not10.i = icmp eq i64 %2, %i.p
  br i1 %.not10.i, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.0711.i = phi ptr [ %i.t, %bb.c ], [ %i.r, %.lr.ph.i.preheader ] ; 4 uses
  %i.s = load i32, ptr %.0711.i, align 4, !tbaa !134
  %.not9.i = icmp eq i32 %i.s, %1
  br i1 %.not9.i, label %bb.c, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.q
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !459

_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %.0711.i, %i.q
  br i1 %.not, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit
  %i.u = ptrtoint ptr %.0711.i to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread

_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit.thread: ; preds = %bb.c, %bb.b, %bb.d, %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.x, %bb.d ], [ -1, %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEEEEEET_SG_SG_T0_.exit ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofERKS7_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.h = trunc i8 %i.g to i1
  %i.i = lshr i8 %i.g, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %i.h, i64 %i.j, i64 %i.l       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.o = lshr i8 %i.a, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load i64, ptr %1, align 8
  %i.r = lshr i64 %i.q, 1
  %i.s = select i1 %i.b, i64 %i.p, i64 %i.r       ; 2 uses
  %i.t = trunc i64 %i.k to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 4 uses
  %.idx18.i = shl nsw i64 %i.s, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx18.i ; 2 uses
  %i.z = add nsw i64 %i.m, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %2)
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %i.ac = phi ptr [ %i.ad, %bb.c ], [ %i.ab, %.lr.ph.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !134, !noalias !462
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.ah, %bb.b ], [ %i.f, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.af = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134, !noalias !462
  %i.ag = icmp eq i32 %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.y
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ai = icmp eq ptr %.0710.i.i.i.i, %i.y
  br i1 %i.ai, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %.not.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !35

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.b, %.lr.ph.i.i
  %storemerge.i.i = phi ptr [ %i.ac, %bb.b ], [ %i.ab, %.lr.ph.i.i ], [ %i.ac, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i.i, %i.x
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i
  %i.aj = getelementptr inbounds i8, ptr %storemerge.i.i, i64 -4
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.x to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.an, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %.idx18 = shl nsw i64 %3, 2
  %i.n = getelementptr inbounds i8, ptr %1, i64 %.idx18 ; 2 uses
  %i.o = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i, %bb.c
  %i.r = phi ptr [ %i.s, %bb.c ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !134, !noalias !465
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.preheader.i
  %.0710.i.i.i = phi ptr [ %i.w, %bb.b ], [ %1, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.u = load i32, ptr %.0710.i.i.i, align 4, !tbaa !134, !noalias !465
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.n
  br i1 %.not.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !33

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i: ; preds = %.lr.ph.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i, %i.n
  br i1 %i.x, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i
  %.not.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread, label %.lr.ph.i.i.preheader.i, !llvm.loop !35

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i, %bb.b, %.lr.ph.i
  %storemerge.i = phi ptr [ %i.r, %bb.b ], [ %i.q, %.lr.ph.i ], [ %i.r, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i ] ; 2 uses
  %.not = icmp eq ptr %storemerge.i, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit
  %i.y = getelementptr inbounds i8, ptr %storemerge.i, i64 -4
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.m to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.ac, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %.idx18.i = shl nsw i64 %i.i, 2
  %i.o = getelementptr inbounds i8, ptr %1, i64 %.idx18.i ; 2 uses
  %i.p = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %2)
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %i.s = phi ptr [ %i.t, %bb.c ], [ %i.r, %.lr.ph.i.i ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !134, !noalias !468
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.x, %bb.b ], [ %1, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.v = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134, !noalias !468
  %i.w = icmp eq i32 %i.v, %i.u
  br i1 %i.w, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.o
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp eq ptr %.0710.i.i.i.i, %i.o
  br i1 %i.y, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %.not.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !35

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.b, %.lr.ph.i.i
  %storemerge.i.i = phi ptr [ %i.s, %bb.b ], [ %i.r, %.lr.ph.i.i ], [ %i.s, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS3_EclERKw.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i.i, %i.n
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i
  %i.z = getelementptr inbounds i8, ptr %storemerge.i.i, i64 -4
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.n to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ad, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE17Not_within_traitsIS9_EEEET_SG_SG_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16find_last_not_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7compareEPKw:bb.a
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i:     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.b, ptr %i.j, ptr %i.l
  %i.n = tail call i32 @wmemcmp(ptr noundef %i.m, ptr noundef %1, i64 noundef %.sroa.speculated.i) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPKwSA_EEiT_SB_T0_SC_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %bb.a
  %i.o = tail call i32 @llvm.ucmp.i32.i64(i64 %i.g, i64 %i.h)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPKwSA_EEiT_SB_T0_SC_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPKwSA_EEiT_SB_T0_SC_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i
  %i.p = phi i32 [ %i.o, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i ], [ %i.n, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i ]
  ret i32 %i.p
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7compareEmmPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = lshr i64 %i.e, 1
  %i.k = and i64 %i.j, 127
  %i.l = select i1 %i.i, i64 %i.k, i64 %i.f
  %i.m = sub nsw i64 %i.l, %1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.m)
  %.idx = shl i64 %.sroa.speculated, 2
  %i.n = ashr exact i64 %.idx, 2                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %4) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i:     ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.i, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.u = tail call i32 @wmemcmp(ptr noundef %i.t, ptr noundef %3, i64 noundef %.sroa.speculated.i) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPwPKwEEiT_SC_T0_SD_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %bb.c
  %i.v = tail call i32 @llvm.ucmp.i32.i64(i64 %i.n, i64 %4)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPwPKwEEiT_SC_T0_SD_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9s_compareIPwPKwEEiT_SC_T0_SD_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i
  %i.w = phi i32 [ %i.v, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i ], [ %i.u, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i ]
  ret i32 %i.w
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7compareEmmPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %3) #29 ; 2 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = and i64 %i.g, 127
  %i.l = select i1 %i.j, i64 %i.k, i64 %i.g
  %i.m = sub nsw i64 %i.l, %1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.m)
  %.idx.i = shl i64 %.sroa.speculated.i, 2
  %i.n = ashr exact i64 %.idx.i, 2                ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.a) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i:   ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.j, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.u = tail call i32 @wmemcmp(ptr noundef %i.t, ptr noundef %3, i64 noundef %.sroa.speculated.i.i) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7compareEmmPKwm.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i, %bb.c
  %i.v = tail call i32 @llvm.ucmp.i32.i64(i64 %i.n, i64 %i.a)
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7compareEmmPKwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7compareEmmPKwm.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i
  %i.w = phi i32 [ %i.v, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i ], [ %i.u, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i ]
  ret i32 %i.w
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE8containsEw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not.i.not = icmp eq i64 %i.g, 0
  br i1 %.not.i.not, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %.0710.i.i = phi ptr [ %i.p, %bb.c ], [ %i.l, %bb.b ] ; 4 uses
  %i.n = load i32, ptr %.0710.i.i, align 4, !tbaa !134
  %i.o = icmp eq i32 %i.n, %1
  br i1 %i.o, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0710.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.m
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit, label %.lr.ph.i.i, !llvm.loop !25

_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i: ; preds = %.lr.ph.i.i
  %.not14.i = icmp eq ptr %.0710.i.i, %i.m
  br i1 %.not14.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i
  %i.q = ptrtoint ptr %.0710.i.i to i64
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ne i64 %i.s, -4
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEwm.exit: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i, %bb.a
  %.0.i = phi i1 [ false, %bb.a ], [ %i.t, %bb.d ], [ false, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS6_EEEEEET_SE_SE_T0_.exit.i ], [ false, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE8containsEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 3 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %i.o = and i64 %i.g, 127
  %i.p = select i1 %i.j, i64 %i.o, i64 %i.g
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p ; 2 uses
  %.idx.i.i = shl nsw i64 %i.a, 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i
  %i.s = icmp eq i64 %i.a, 0
  br i1 %i.s, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.f
  %.01829.i.i.i = phi ptr [ %i.aa, %bb.f ], [ %i.n, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.01524.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i ], [ %i.y, %bb.e ] ; 2 uses
  %.01623.i.i.i = phi ptr [ %.01829.i.i.i, %.lr.ph.i.i.i ], [ %i.x, %bb.e ] ; 3 uses
  %i.t = icmp eq ptr %.01623.i.i.i, %i.q
  br i1 %i.t, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %.01623.i.i.i, align 4, !tbaa !134
  %i.v = load i32, ptr %.01524.i.i.i, align 4, !tbaa !134
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.01623.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.01524.i.i.i, i64 4 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.r
  br i1 %i.z, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i.i, label %bb.c, !llvm.loop !24

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.01829.i.i.i, i64 4
  br label %.lr.ph.i.i.i

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i.i: ; preds = %bb.e, %bb.b
  %.1.ph.i.i.i = phi ptr [ %i.n, %bb.b ], [ %.01829.i.i.i, %bb.e ] ; 2 uses
  %.not.i.i = icmp eq ptr %.1.ph.i.i.i, %i.q
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i.i
  %i.ab = ptrtoint ptr %.1.ph.i.i.i to i64
  %i.ac = ptrtoint ptr %i.n to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ne i64 %i.ad, -4
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE4findEPKwm.exit: ; preds = %bb.c, %bb.g, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i.i, %bb.a
  %.0.i.i = phi i1 [ false, %bb.a ], [ %i.ae, %bb.g ], [ false, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9Eq_traitsIS7_EEEET_SE_SE_T0_SF_T1_.exit.i.i ], [ false, %bb.c ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE11starts_withEw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !134
  %i.n = icmp eq i32 %i.m, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ %i.n, %bb.b ]
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE11starts_withEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 3 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %.not = icmp ult i64 %i.h, %i.a
  br i1 %.not, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.a, 0
  br i1 %i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = trunc i64 %i.f to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m
  %i.o = tail call i32 @wmemcmp(ptr noundef %i.n, ptr noundef %1, i64 noundef %i.a) #29
  %i.p = icmp eq i32 %i.o, 0
  br label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.q = phi i1 [ false, %bb.a ], [ %i.p, %bb.c ], [ true, %bb.b ]
  ret i1 %i.q
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9ends_withEw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k
  %i.m = lshr i64 %i.e, 1
  %i.n = and i64 %i.m, 127
  %i.o = select i1 %i.h, i64 %i.n, i64 %i.f
  %i.p = getelementptr [4 x i8], ptr %i.l, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !134
  %i.s = icmp eq i32 %i.r, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi i1 [ false, %bb.a ], [ %i.s, %bb.b ]
  ret i1 %i.t
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9ends_withEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 4 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 2 uses
  %.not = icmp ult i64 %i.h, %i.a
  br i1 %.not, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.a, 0
  br i1 %i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = trunc i64 %i.f to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m
  %i.o = sub nuw nsw i64 %i.h, %i.a
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = tail call i32 @wmemcmp(ptr noundef %i.p, ptr noundef %1, i64 noundef %i.a) #29
  %i.r = icmp eq i32 %i.q, 0
  br label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.s = phi i1 [ false, %bb.a ], [ %i.r, %bb.c ], [ true, %bb.b ]
  ret i1 %i.s
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16priv_move_assignEOS7_NS_11move_detail5bool_ILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16priv_move_assignEOS7_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyEPKwS9_Pw(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = ashr exact i64 %i.d, 2
  %i.f = tail call ptr @wmemcpy(ptr noundef %2, ptr noundef %0, i64 noundef %i.e) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit

_ZNSt11char_traitsIwE4copyEPwPKwm.exit:           ; preds = %bb.a, %bb.b
  ret void
}
end_hunk_1
begin_hunk_2_@_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceEPKwS7_St16initializer_listIwE:bb.a
_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7replaceIPKwEERS5_S8_S8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4copyEPwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %3, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.9) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = lshr i64 %i.e, 1
  %i.k = and i64 %i.j, 127
  %i.l = select i1 %i.i, i64 %i.k, i64 %i.f
  %i.m = sub nsw i64 %i.l, %3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.m) ; 3 uses
  %i.n = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.n, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.i, ptr %i.o, ptr %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %3
  %i.t = tail call ptr @wmemcpy(ptr noundef %1, ptr noundef %i.s, i64 noundef %.sroa.speculated) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit

_ZNSt11char_traitsIwE4copyEPwPKwm.exit:           ; preds = %bb.c, %bb.d
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca %"struct.boost::container::dtl::basic_string_base<std::allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %2 = alloca %"struct.boost::container::dtl::basic_string_base<std::allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<std::allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = load i8, ptr %1, align 8, !tbaa !109
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !tbaa.struct !110
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9swap_dataERS4_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !139
  %i.e = load i64, ptr %0, align 8
  %i.f = and i64 %i.e, -2
  store i64 %i.f, ptr %0, align 8
  %i.g = load i64, ptr %1, align 8
  %i.h = and i64 %i.g, -2
  store i64 %i.h, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !150
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !150
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !149
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !139
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9swap_dataERS4_.exit

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !139
  %i.p = load i64, ptr %1, align 8
  %i.q = and i64 %i.p, -2
  store i64 %i.q, ptr %1, align 8
  %i.r = load i64, ptr %0, align 8
  %i.s = and i64 %i.r, -2
  store i64 %i.s, ptr %1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !150
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !150
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !149
  store ptr %i.x, ptr %i.o, align 8, !tbaa !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !139
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9swap_dataERS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.y = load i64, ptr %0, align 8                ; 2 uses
  %i.z = and i64 %i.y, -2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !150
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !149
  %i.ae = load i64, ptr %1, align 8
  %i.af = and i64 %i.ae, -2
  %i.ag = and i64 %i.y, 1
  %i.ah = or disjoint i64 %i.af, %i.ag
  store i64 %i.ah, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !150
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !150
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !149
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !149
  %i.al = load i64, ptr %1, align 8
  %i.am = and i64 %i.al, 1
  %i.an = or disjoint i64 %i.am, %i.z
  store i64 %i.an, ptr %1, align 8
  store i64 %i.ab, ptr %i.ai, align 8, !tbaa !150
  store ptr %i.ad, ptr %i.o, align 8, !tbaa !149
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9swap_dataERS4_.exit

_ZN5boost9container3dtl17basic_string_baseISaIwEvE9swap_dataERS4_.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5c_strEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4dataEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findERKS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 3 uses
  %i.l = add i64 %i.k, %2
  %i.m = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.n = trunc i8 %i.m to i1
  %i.o = lshr i8 %i.m, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load i64, ptr %0, align 8                ; 2 uses
  %i.r = lshr i64 %i.q, 1                         ; 3 uses
  %i.s = select i1 %i.n, i64 %i.p, i64 %i.r
  %i.t = icmp ugt i64 %i.l, %i.s
  br i1 %i.t, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = trunc i64 %i.q to i1                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %i.u, ptr %i.v, ptr %i.x       ; 3 uses
  %i.z = and i64 %i.r, 127
  %i.aa = select i1 %i.u, i64 %i.z, i64 %i.r
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.y, i64 %2 ; 2 uses
  %.idx.i = shl nsw i64 %i.k, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %i.ae = icmp eq i64 %i.k, 0
  br i1 %i.ae, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.f
  %.01829.i.i = phi ptr [ %i.am, %bb.f ], [ %i.ac, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.01524.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %i.ak, %bb.e ] ; 2 uses
  %.01623.i.i = phi ptr [ %.01829.i.i, %.lr.ph.i.i ], [ %i.aj, %bb.e ] ; 3 uses
  %i.af = icmp eq ptr %.01623.i.i, %i.ab
  br i1 %i.af, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr %.01623.i.i, align 4, !tbaa !134
  %i.ah = load i32, ptr %.01524.i.i, align 4, !tbaa !134
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.01623.i.i, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.01524.i.i, i64 4 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ad
  br i1 %i.al, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, label %bb.c, !llvm.loop !48

bb.f:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.01829.i.i, i64 4
  br label %.lr.ph.i.i

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i: ; preds = %bb.e, %bb.b
  %.1.ph.i.i = phi ptr [ %i.ac, %bb.b ], [ %.01829.i.i, %bb.e ] ; 2 uses
  %.not.i = icmp eq ptr %.1.ph.i.i, %i.ab
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i
  %i.an = ptrtoint ptr %.1.ph.i.i to i64
  %i.ao = ptrtoint ptr %i.y to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, %bb.g
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.aq, %bb.g ], [ -1, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %3, %2
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 3 uses
  %i.o = lshr i64 %i.f, 1
  %i.p = and i64 %i.o, 127
  %i.q = select i1 %i.j, i64 %i.p, i64 %i.g
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.n, i64 %2 ; 2 uses
  %.idx = shl nsw i64 %3, 2
  %i.t = getelementptr inbounds i8, ptr %1, i64 %.idx
  %i.u = icmp eq i64 %3, 0
  br i1 %i.u, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.f
  %.01829.i = phi ptr [ %i.ac, %bb.f ], [ %i.s, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.01524.i = phi ptr [ %1, %.lr.ph.i ], [ %i.aa, %bb.e ] ; 2 uses
  %.01623.i = phi ptr [ %.01829.i, %.lr.ph.i ], [ %i.z, %bb.e ] ; 3 uses
  %i.v = icmp eq ptr %.01623.i, %i.r
  br i1 %i.v, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %.01623.i, align 4, !tbaa !134
  %i.x = load i32, ptr %.01524.i, align 4, !tbaa !134
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.01623.i, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01524.i, i64 4 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.t
  br i1 %i.ab, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit, label %bb.c, !llvm.loop !48

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.01829.i, i64 4
  br label %.lr.ph.i

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit: ; preds = %bb.e, %bb.b
  %.1.ph.i = phi ptr [ %i.s, %bb.b ], [ %.01829.i, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %.1.ph.i, %i.r
  br i1 %.not, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit
  %i.ad = ptrtoint ptr %.1.ph.i to i64
  %i.ae = ptrtoint ptr %i.n to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2
  br label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread: ; preds = %bb.c, %bb.g, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.ag, %bb.g ], [ -1, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 3 uses
  %i.b = add i64 %i.a, %2
  %i.c = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.d = trunc i8 %i.c to i1
  %i.e = lshr i8 %i.c, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = load i64, ptr %0, align 8                ; 2 uses
  %i.h = lshr i64 %i.g, 1                         ; 3 uses
  %i.i = select i1 %i.d, i64 %i.f, i64 %i.h
  %i.j = icmp ugt i64 %i.b, %i.i
  br i1 %i.j, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = trunc i64 %i.g to i1                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.k, ptr %i.l, ptr %i.n       ; 3 uses
  %i.p = and i64 %i.h, 127
  %i.q = select i1 %i.k, i64 %i.p, i64 %i.h
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %2 ; 2 uses
  %.idx.i = shl nsw i64 %i.a, 2
  %i.t = getelementptr inbounds i8, ptr %1, i64 %.idx.i
  %i.u = icmp eq i64 %i.a, 0
  br i1 %i.u, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.f
  %.01829.i.i = phi ptr [ %i.ac, %bb.f ], [ %i.s, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.01524.i.i = phi ptr [ %1, %.lr.ph.i.i ], [ %i.aa, %bb.e ] ; 2 uses
  %.01623.i.i = phi ptr [ %.01829.i.i, %.lr.ph.i.i ], [ %i.z, %bb.e ] ; 3 uses
  %i.v = icmp eq ptr %.01623.i.i, %i.r
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %.01623.i.i, align 4, !tbaa !134
  %i.x = load i32, ptr %.01524.i.i, align 4, !tbaa !134
  %i.y = icmp eq i32 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.01623.i.i, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01524.i.i, i64 4 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.t
  br i1 %i.ab, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, label %bb.c, !llvm.loop !48

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.01829.i.i, i64 4
  br label %.lr.ph.i.i

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i: ; preds = %bb.e, %bb.b
  %.1.ph.i.i = phi ptr [ %i.s, %bb.b ], [ %.01829.i.i, %bb.e ] ; 2 uses
  %.not.i = icmp eq ptr %.1.ph.i.i, %i.r
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i
  %i.ad = ptrtoint ptr %.1.ph.i.i to i64
  %i.ae = ptrtoint ptr %i.o to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, %bb.g
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ag, %bb.g ], [ -1, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not = icmp ult i64 %2, %i.g
  br i1 %.not, label %bb.b, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.0710.i = phi ptr [ %i.q, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %i.o = load i32, ptr %.0710.i, align 4, !tbaa !134
  %i.p = icmp eq i32 %i.o, %1
  br i1 %i.p, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0710.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !49

_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit: ; preds = %.lr.ph.i
  %.not14 = icmp eq ptr %.0710.i, %i.m
  br i1 %.not14, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit
  %i.r = ptrtoint ptr %.0710.i to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  br label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.thread

_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.u, %bb.d ], [ -1, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindERKS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 5 uses
  %i.l = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.m = trunc i8 %i.l to i1
  %i.n = lshr i8 %i.l, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %0, align 8                ; 2 uses
  %i.q = lshr i64 %i.p, 1
  %i.r = select i1 %i.m, i64 %i.o, i64 %i.q       ; 3 uses
  %i.s = icmp samesign ugt i64 %i.k, %i.r
  br i1 %i.s, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = icmp eq i64 %i.k, 0
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated17.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %2)
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit

bb.d:                                             ; preds = %bb.b
  %i.u = trunc i64 %i.p to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %i.u, ptr %i.v, ptr %i.x       ; 3 uses
  %i.z = sub nuw nsw i64 %i.r, %i.k
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %2)
  %.idx2729.i = add nuw i64 %.sroa.speculated.i, %i.k
  %i.aa = shl i64 %.idx2729.i, 2                  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.y, i64 %i.aa   ; 4 uses
  %.idx.i = shl nsw i64 %i.k, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %.not41.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not41.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %bb.h
  %.02343.i.i = phi ptr [ %.1.i.i, %bb.h ], [ %i.ab, %bb.d ] ; 2 uses
  %.02742.i.i = phi ptr [ %i.ak, %bb.h ], [ %i.y, %bb.d ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.preheader.i.i
  %.022.i.i = phi ptr [ %i.ai, %bb.g ], [ %.02742.i.i, %.preheader.i.i ] ; 2 uses
  %.021.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.f, %.preheader.i.i ] ; 2 uses
  %i.ad = load i32, ptr %.022.i.i, align 4, !tbaa !134
  %i.ae = load i32, ptr %.021.i.i, align 4, !tbaa !134
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.ac
  br i1 %i.ah, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 4 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ab
  br i1 %i.aj, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i, label %bb.e, !llvm.loop !50

bb.h:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %.02343.i.i, %bb.e ], [ %.02742.i.i, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.02742.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.ab
  br i1 %.not.i.i, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i, label %.preheader.i.i, !llvm.loop !51

_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i: ; preds = %bb.h, %bb.g
  %.3.i.i = phi ptr [ %.02343.i.i, %bb.g ], [ %.1.i.i, %bb.h ] ; 2 uses
  %.not.i = icmp eq ptr %.3.i.i, %i.ab
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i
  %i.al = ptrtoint ptr %.3.i.i to i64
  %i.am = ptrtoint ptr %i.y to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit: ; preds = %bb.a, %bb.c, %bb.d, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i, %bb.i
  %.0.i = phi i64 [ -1, %bb.a ], [ %.sroa.speculated17.i, %bb.c ], [ %i.ao, %bb.i ], [ -1, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i ], [ -1, %bb.d ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 3 uses
  %i.h = icmp ugt i64 %3, %i.g
  br i1 %i.h, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %3, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated17 = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %2)
  br label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 3 uses
  %i.o = sub nuw nsw i64 %i.g, %3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %.idx2729 = add nuw i64 %.sroa.speculated, %3
  %i.p = shl i64 %.idx2729, 2                     ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 %i.p     ; 4 uses
  %.idx = shl nsw i64 %3, 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not41.i = icmp eq i64 %i.p, 0
  br i1 %.not41.i, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %bb.h
  %.02343.i = phi ptr [ %.1.i, %bb.h ], [ %i.q, %bb.d ] ; 2 uses
  %.02742.i = phi ptr [ %i.z, %bb.h ], [ %i.n, %bb.d ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.preheader.i
  %.022.i = phi ptr [ %i.x, %bb.g ], [ %.02742.i, %.preheader.i ] ; 2 uses
  %.021.i = phi ptr [ %i.v, %bb.g ], [ %1, %.preheader.i ] ; 2 uses
  %i.s = load i32, ptr %.022.i, align 4, !tbaa !134
  %i.t = load i32, ptr %.021.i, align 4, !tbaa !134
  %i.u = icmp eq i32 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.021.i, i64 4 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.r
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.022.i, i64 4 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.q
  br i1 %i.y, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit, label %bb.e, !llvm.loop !50

bb.h:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi ptr [ %.02343.i, %bb.e ], [ %.02742.i, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02742.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.q
  br i1 %.not.i, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit, label %.preheader.i, !llvm.loop !51

_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit: ; preds = %bb.h, %bb.g
  %.3.i = phi ptr [ %.02343.i, %bb.g ], [ %.1.i, %bb.h ] ; 2 uses
  %.not = icmp eq ptr %.3.i, %i.q
  br i1 %.not, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit
  %i.aa = ptrtoint ptr %.3.i to i64
  %i.ab = ptrtoint ptr %i.n to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  br label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.thread

_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.thread: ; preds = %bb.d, %bb.i, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit, %bb.a, %bb.c
  %.0 = phi i64 [ -1, %bb.a ], [ %.sroa.speculated17, %bb.c ], [ %i.ad, %bb.i ], [ -1, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit ], [ -1, %bb.d ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 5 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 3 uses
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.a, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated17.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %2)
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit

bb.d:                                             ; preds = %bb.b
  %i.k = trunc i64 %i.f to i1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.k, ptr %i.l, ptr %i.n       ; 3 uses
  %i.p = sub nuw nsw i64 %i.h, %i.a
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %2)
  %.idx2729.i = add nuw i64 %.sroa.speculated.i, %i.a
  %i.q = shl i64 %.idx2729.i, 2                   ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 %i.q     ; 4 uses
  %.idx.i = shl nsw i64 %i.a, 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.not41.i.i = icmp eq i64 %i.q, 0
  br i1 %.not41.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %bb.h
  %.02343.i.i = phi ptr [ %.1.i.i, %bb.h ], [ %i.r, %bb.d ] ; 2 uses
  %.02742.i.i = phi ptr [ %i.aa, %bb.h ], [ %i.o, %bb.d ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.preheader.i.i
  %.022.i.i = phi ptr [ %i.y, %bb.g ], [ %.02742.i.i, %.preheader.i.i ] ; 2 uses
  %.021.i.i = phi ptr [ %i.w, %bb.g ], [ %1, %.preheader.i.i ] ; 2 uses
  %i.t = load i32, ptr %.022.i.i, align 4, !tbaa !134
  %i.u = load i32, ptr %.021.i.i, align 4, !tbaa !134
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.s
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 4 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.r
  br i1 %i.z, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i, label %bb.e, !llvm.loop !50

bb.h:                                             ; preds = %bb.f, %bb.e
  %.1.i.i = phi ptr [ %.02343.i.i, %bb.e ], [ %.02742.i.i, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.02742.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.r
  br i1 %.not.i.i, label %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i, label %.preheader.i.i, !llvm.loop !51

_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i: ; preds = %bb.h, %bb.g
  %.3.i.i = phi ptr [ %.02343.i.i, %bb.g ], [ %.1.i.i, %bb.h ] ; 2 uses
  %.not.i = icmp eq ptr %.3.i.i, %i.r
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i
  %i.ab = ptrtoint ptr %.3.i.i to i64
  %i.ac = ptrtoint ptr %i.o to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEPKwmm.exit: ; preds = %bb.a, %bb.c, %bb.d, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i, %bb.i
  %.0.i = phi i64 [ -1, %bb.a ], [ %.sroa.speculated17.i, %bb.c ], [ %i.ae, %bb.i ], [ -1, %_ZN5boost9container8find_endIPKwS3_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEET_SB_SB_T0_SC_T1_.exit.i ], [ -1, %bb.d ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !134, !noalias !636
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !52

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %i.q, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.x, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofERKS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.h = trunc i8 %i.g to i1
  %i.i = lshr i8 %i.g, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %i.h, i64 %i.j, i64 %i.l       ; 2 uses
  %.not.i = icmp ult i64 %2, %i.m
  br i1 %.not.i, label %bb.b, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit

bb.b:                                             ; preds = %bb.a
  %i.n = lshr i8 %i.a, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %1, align 8
  %i.q = lshr i64 %i.p, 1
  %i.r = select i1 %i.b, i64 %i.o, i64 %i.q       ; 2 uses
  %i.s = trunc i64 %i.k to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = select i1 %i.s, ptr %i.t, ptr %i.v       ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.m ; 2 uses
  %.idx.i = shl nsw i64 %i.r, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %.not1622.i.i = icmp eq i64 %i.r, 0
  br i1 %.not1622.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %.01425.i.i = phi ptr [ %i.ae, %._crit_edge.i.i ], [ %i.z, %.preheader.i.preheader.i ] ; 4 uses
  %i.aa = load i32, ptr %.01425.i.i, align 4, !tbaa !134
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.01223.i.i, i64 4 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.ab, %i.y
  br i1 %.not16.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !53

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.01223.i.i = phi ptr [ %i.f, %.preheader.i.i ], [ %i.ab, %bb.c ] ; 2 uses
  %i.ac = load i32, ptr %.01223.i.i, align 4, !tbaa !134
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.01425.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, %i.x
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit, label %.preheader.i.i, !llvm.loop !54

_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i: ; preds = %bb.d
  %.not17.i = icmp eq ptr %.01425.i.i, %i.x
  br i1 %.not17.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i
  %i.af = ptrtoint ptr %.01425.i.i to i64
  %i.ag = ptrtoint ptr %i.w to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ai, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i ], [ -1, %bb.b ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not = icmp ult i64 %2, %i.g
  br i1 %.not, label %bb.b, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g ; 2 uses
  %.idx = shl nsw i64 %3, 2
  %i.n = getelementptr inbounds i8, ptr %1, i64 %.idx
  %.not1622.i = icmp eq i64 %3, 0
  br i1 %.not1622.i, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %2
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.01425.i = phi ptr [ %i.t, %._crit_edge.i ], [ %i.o, %.preheader.i.preheader ] ; 4 uses
  %i.p = load i32, ptr %.01425.i, align 4, !tbaa !134
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.01223.i, i64 4 ; 2 uses
  %.not16.i = icmp eq ptr %i.q, %i.n
  br i1 %.not16.i, label %._crit_edge.i, label %bb.d, !llvm.loop !53

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.01223.i = phi ptr [ %1, %.preheader.i ], [ %i.q, %bb.c ] ; 2 uses
  %i.r = load i32, ptr %.01223.i, align 4, !tbaa !134
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit, label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.01425.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.m
  br i1 %.not.i, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread, label %.preheader.i, !llvm.loop !54

_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit: ; preds = %bb.d
  %.not17 = icmp eq ptr %.01425.i, %i.m
  br i1 %.not17, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit
  %i.u = ptrtoint ptr %.01425.i to i64
  %i.v = ptrtoint ptr %i.l to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread

_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.thread: ; preds = %._crit_edge.i, %bb.b, %bb.e, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.x, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit ], [ -1, %bb.b ], [ -1, %._crit_edge.i ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not.i = icmp ult i64 %2, %i.g
  br i1 %.not.i, label %bb.b, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.g ; 2 uses
  %.idx.i = shl nsw i64 %i.h, 2
  %i.o = getelementptr inbounds i8, ptr %1, i64 %.idx.i
  %.not1622.i.i = icmp eq i64 %i.h, 0
  br i1 %.not1622.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %.01425.i.i = phi ptr [ %i.u, %._crit_edge.i.i ], [ %i.p, %.preheader.i.preheader.i ] ; 4 uses
  %i.q = load i32, ptr %.01425.i.i, align 4, !tbaa !134
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.01223.i.i, i64 4 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.r, %i.o
  br i1 %.not16.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !53

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.01223.i.i = phi ptr [ %1, %.preheader.i.i ], [ %i.r, %bb.c ] ; 2 uses
  %i.s = load i32, ptr %.01223.i.i, align 4, !tbaa !134
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.01425.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.n
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit, label %.preheader.i.i, !llvm.loop !54

_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i: ; preds = %bb.d
  %.not17.i = icmp eq ptr %.01425.i.i, %i.n
  br i1 %.not17.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i
  %i.v = ptrtoint ptr %.01425.i.i to i64
  %i.w = ptrtoint ptr %i.m to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEPKwmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.y, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i ], [ -1, %bb.b ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE13find_first_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not.i = icmp ult i64 %2, %i.g
  br i1 %.not.i, label %bb.b, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %.0710.i.i = phi ptr [ %i.q, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %i.o = load i32, ptr %.0710.i.i, align 4, !tbaa !134
  %i.p = icmp eq i32 %i.o, %1
  br i1 %i.p, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0710.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit, label %.lr.ph.i.i, !llvm.loop !49

_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i: ; preds = %.lr.ph.i.i
  %.not14.i = icmp eq ptr %.0710.i.i, %i.m
  br i1 %.not14.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i
  %i.r = ptrtoint ptr %.0710.i.i to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.u, %bb.d ], [ -1, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofERKS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.h = trunc i8 %i.g to i1
  %i.i = lshr i8 %i.g, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %i.h, i64 %i.j, i64 %i.l       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = lshr i8 %i.a, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load i64, ptr %1, align 8
  %i.r = lshr i64 %i.q, 1
  %i.s = select i1 %i.b, i64 %i.p, i64 %i.r       ; 2 uses
  %i.t = trunc i64 %i.k to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 4 uses
  %i.y = add nsw i64 %i.m, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %2)
  %.idx.i = shl i64 %.sroa.speculated.i, 2
  %i.z = add i64 %.idx.i, 4                       ; 2 uses
  %.idx20.i = shl nsw i64 %i.s, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx20.i
  %.not714.i.i = icmp eq i64 %i.z, 0
  %.not12.i.i = icmp eq i64 %i.s, 0
  %or.cond.i = or i1 %.not714.i.i, %.not12.i.i
  br i1 %or.cond.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.ab = getelementptr i8, ptr %i.x, i64 %i.z
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %i.ac = phi ptr [ %i.ad, %._crit_edge.i.i ], [ %i.ab, %.preheader.i.preheader.i ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !134, !noalias !639
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.0513.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %i.aa
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !55

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.0513.i.i = phi ptr [ %i.f, %.preheader.i.i ], [ %i.af, %bb.c ] ; 2 uses
  %i.ag = load i32, ptr %.0513.i.i, align 4, !tbaa !134, !noalias !639
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %.not7.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not7.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %.preheader.i.i, !llvm.loop !56

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i: ; preds = %bb.d
  %.not.i = icmp eq ptr %i.ac, %i.x
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = ptrtoint ptr %i.x to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.al, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i ], [ -1, %bb.b ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %.idx = shl i64 %.sroa.speculated, 2
  %i.o = add i64 %.idx, 4                         ; 2 uses
  %.idx20 = shl nsw i64 %3, 2
  %i.p = getelementptr inbounds i8, ptr %1, i64 %.idx20
  %.not714.i = icmp eq i64 %i.o, 0
  %.not12.i = icmp eq i64 %3, 0
  %or.cond = or i1 %.not714.i, %.not12.i
  br i1 %or.cond, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.m, i64 %i.o
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %i.r = phi ptr [ %i.s, %._crit_edge.i ], [ %i.q, %.preheader.i.preheader ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !134, !noalias !642
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.0513.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.u, %i.p
  br i1 %.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !55

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.0513.i = phi ptr [ %1, %.preheader.i ], [ %i.u, %bb.c ] ; 2 uses
  %i.v = load i32, ptr %.0513.i, align 4, !tbaa !134, !noalias !642
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit, label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  %.not7.i = icmp eq ptr %i.s, %i.m
  br i1 %.not7.i, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %.preheader.i, !llvm.loop !56

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit: ; preds = %bb.d
  %.not = icmp eq ptr %i.r, %i.m
  br i1 %.not, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  br label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.thread

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.thread: ; preds = %._crit_edge.i, %bb.b, %bb.e, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.aa, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit ], [ -1, %bb.b ], [ -1, %._crit_edge.i ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %i.o = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %.idx.i = shl i64 %.sroa.speculated.i, 2
  %i.p = add i64 %.idx.i, 4                       ; 2 uses
  %.idx20.i = shl nsw i64 %i.i, 2
  %i.q = getelementptr inbounds i8, ptr %1, i64 %.idx20.i
  %.not714.i.i = icmp eq i64 %i.p, 0
  %.not12.i.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %.not714.i.i, %.not12.i.i
  br i1 %or.cond.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.n, i64 %i.p
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.preheader.i
  %i.s = phi ptr [ %i.t, %._crit_edge.i.i ], [ %i.r, %.preheader.i.preheader.i ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !134, !noalias !645
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.0513.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.q
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !55

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.0513.i.i = phi ptr [ %1, %.preheader.i.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.w = load i32, ptr %.0513.i.i, align 4, !tbaa !134, !noalias !645
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  %.not7.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not7.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %.preheader.i.i, !llvm.loop !56

_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i: ; preds = %bb.d
  %.not.i = icmp eq ptr %i.s, %i.n
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.n to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEPKwmm.exit: ; preds = %._crit_edge.i.i, %bb.a, %bb.b, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i, %bb.e
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ab, %bb.e ], [ -1, %_ZN5boost9container13find_first_ofINS_7movelib16reverse_iteratorIPKwEES5_NS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS9_EEEET_SE_SE_T0_SF_T1_.exit.i ], [ -1, %bb.b ], [ -1, %._crit_edge.i.i ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE12find_last_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %i.n = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %2)
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.r, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !134, !noalias !648
  %i.t = icmp eq i32 %i.s, %1
  br i1 %i.t, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.r, %i.m
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEwm.exit, label %.lr.ph.i.i, !llvm.loop !52

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i: ; preds = %.lr.ph.i.i
  %.not.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEwm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5rfindEwm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.x, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsISA_EEEEEET_SG_SG_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofERKS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j       ; 2 uses
  %i.l = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.m = trunc i8 %i.l to i1
  %i.n = lshr i8 %i.l, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %0, align 8                ; 2 uses
  %i.q = lshr i64 %i.p, 1                         ; 3 uses
  %i.r = select i1 %i.m, i64 %i.o, i64 %i.q
  %i.s = icmp ugt i64 %2, %i.r
  br i1 %i.s, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = trunc i64 %i.p to i1                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 3 uses
  %i.y = and i64 %i.q, 127
  %i.z = select i1 %i.t, i64 %i.y, i64 %i.q       ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.z ; 4 uses
  %.idx.i = shl nsw i64 %i.k, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i ; 2 uses
  %.not15.i.i = icmp eq i64 %2, %i.z
  br i1 %.not15.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %2 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.d
  %.0716.i.i = phi ptr [ %i.ai, %bb.d ], [ %i.ac, %.lr.ph.i.i ] ; 4 uses
  %i.ad = load i32, ptr %.0716.i.i, align 4, !tbaa !134
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.ag, %bb.c ], [ %i.f, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.ae = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134
  %i.af = icmp eq i32 %i.ae, %i.ad
  br i1 %i.af, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ah = icmp eq ptr %.0710.i.i.i.i, %i.ab
  br i1 %i.ah, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0716.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.aa
  br i1 %.not.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !58

_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i: ; preds = %bb.d, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.c, %.lr.ph.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.aa, %bb.b ], [ %.0716.i.i, %bb.c ], [ %i.ac, %.lr.ph.i.i ], [ %.0716.i.i, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i ], [ %i.aa, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, %i.aa
  %i.aj = ptrtoint ptr %.0.i.i to i64
  %i.ak = ptrtoint ptr %i.x to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2
  %i.an = select i1 %.not.i, i64 -1, i64 %i.am
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm.exit: ; preds = %bb.a, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i
  %.0.i = phi i64 [ %i.an, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = lshr i64 %i.e, 1
  %i.o = and i64 %i.n, 127
  %i.p = select i1 %i.i, i64 %i.o, i64 %i.f       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p ; 4 uses
  %.idx = shl nsw i64 %3, 2
  %i.r = getelementptr inbounds i8, ptr %1, i64 %.idx ; 2 uses
  %.not15.i = icmp eq i64 %2, %i.p
  br i1 %.not15.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i, %bb.d
  %.0716.i = phi ptr [ %i.y, %bb.d ], [ %i.s, %.lr.ph.i ] ; 4 uses
  %i.t = load i32, ptr %.0716.i, align 4, !tbaa !134
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.preheader.i
  %.0710.i.i.i = phi ptr [ %i.w, %bb.c ], [ %1, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.u = load i32, ptr %.0710.i.i.i, align 4, !tbaa !134
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !57

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i: ; preds = %.lr.ph.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i, %i.r
  br i1 %i.x, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0716.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.y, %i.q
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit, label %.lr.ph.i.i.preheader.i, !llvm.loop !58

_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i, %bb.d, %bb.c, %bb.b, %.lr.ph.i
  %.0.i = phi ptr [ %i.q, %bb.b ], [ %.0716.i, %bb.c ], [ %i.s, %.lr.ph.i ], [ %.0716.i, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i ], [ %i.q, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.0.i, %i.q
  %i.z = ptrtoint ptr %.0.i to i64
  %i.aa = ptrtoint ptr %i.m to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = select i1 %.not, i64 -1, i64 %i.ac
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit
  %.0 = phi i64 [ %i.ad, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %2, %i.h
  br i1 %i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 3 uses
  %i.o = and i64 %i.g, 127
  %i.p = select i1 %i.j, i64 %i.o, i64 %i.g       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p ; 4 uses
  %.idx.i = shl nsw i64 %i.a, 2
  %i.r = getelementptr inbounds i8, ptr %1, i64 %.idx.i ; 2 uses
  %.not15.i.i = icmp eq i64 %2, %i.p
  br i1 %.not15.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %2 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.d
  %.0716.i.i = phi ptr [ %i.y, %bb.d ], [ %i.s, %.lr.ph.i.i ] ; 4 uses
  %i.t = load i32, ptr %.0716.i.i, align 4, !tbaa !134
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.w, %bb.c ], [ %1, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.u = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i.i, %i.r
  br i1 %i.x, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0716.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.q
  br i1 %.not.i.i, label %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !58

_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i: ; preds = %bb.d, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.c, %.lr.ph.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.q, %bb.b ], [ %.0716.i.i, %bb.c ], [ %i.s, %.lr.ph.i.i ], [ %.0716.i.i, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i.i, %i.q
  %i.z = ptrtoint ptr %.0.i.i to i64
  %i.aa = ptrtoint ptr %i.n to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = select i1 %.not.i, i64 -1, i64 %i.ac
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEPKwmm.exit: ; preds = %bb.a, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i
  %.0.i = phi i64 [ %i.ad, %_ZN5boost9container7find_ifIPwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS5_EEEET_SA_SA_T0_.exit.i ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17find_first_not_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 3 uses
  %i.n = lshr i64 %i.e, 1
  %i.o = and i64 %i.n, 127
  %i.p = select i1 %i.i, i64 %i.o, i64 %i.f       ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.p ; 2 uses
  %.not10.i = icmp eq i64 %2, %i.p
  br i1 %.not10.i, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.0711.i = phi ptr [ %i.t, %bb.c ], [ %i.r, %.lr.ph.i.preheader ] ; 4 uses
  %i.s = load i32, ptr %.0711.i, align 4, !tbaa !134
  %.not9.i = icmp eq i32 %i.s, %1
  br i1 %.not9.i, label %bb.c, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.q
  br i1 %.not.i, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread, label %.lr.ph.i, !llvm.loop !649

_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit: ; preds = %.lr.ph.i
  %.not = icmp eq ptr %.0711.i, %i.q
  br i1 %.not, label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit
  %i.u = ptrtoint ptr %.0711.i to i64
  %i.v = ptrtoint ptr %i.m to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  br label %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread

_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit.thread: ; preds = %bb.c, %bb.b, %bb.d, %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.x, %bb.d ], [ -1, %_ZN5boost9container7find_ifIPwNS0_12unary_negateINS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEEEEEET_SE_SE_T0_.exit ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofERKS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 2 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.h = trunc i8 %i.g to i1
  %i.i = lshr i8 %i.g, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = load i64, ptr %0, align 8                ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %i.h, i64 %i.j, i64 %i.l       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.o = lshr i8 %i.a, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = load i64, ptr %1, align 8
  %i.r = lshr i64 %i.q, 1
  %i.s = select i1 %i.b, i64 %i.p, i64 %i.r       ; 2 uses
  %i.t = trunc i64 %i.k to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = select i1 %i.t, ptr %i.u, ptr %i.w       ; 4 uses
  %.idx18.i = shl nsw i64 %i.s, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx18.i ; 2 uses
  %i.z = add nsw i64 %i.m, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %2)
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %i.ac = phi ptr [ %i.ad, %bb.c ], [ %i.ab, %.lr.ph.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !134, !noalias !652
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.ah, %bb.b ], [ %i.f, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.af = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134, !noalias !652
  %i.ag = icmp eq i32 %i.af, %i.ae
  br i1 %i.ag, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.y
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ai = icmp eq ptr %.0710.i.i.i.i, %i.y
  br i1 %i.ai, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %.not.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !59

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.b, %.lr.ph.i.i
  %storemerge.i.i = phi ptr [ %i.ac, %bb.b ], [ %i.ab, %.lr.ph.i.i ], [ %i.ac, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i.i, %i.x
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i
  %i.aj = getelementptr inbounds i8, ptr %storemerge.i.i, i64 -4
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.x to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.an, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l       ; 4 uses
  %.idx18 = shl nsw i64 %3, 2
  %i.n = getelementptr inbounds i8, ptr %1, i64 %.idx18 ; 2 uses
  %i.o = add nsw i64 %i.g, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %2)
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %.not9.i.i.i = icmp eq i64 %3, 0
  br i1 %.not9.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.i, %bb.c
  %i.r = phi ptr [ %i.s, %bb.c ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !134, !noalias !655
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.preheader.i
  %.0710.i.i.i = phi ptr [ %i.w, %bb.b ], [ %1, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.u = load i32, ptr %.0710.i.i.i, align 4, !tbaa !134, !noalias !655
  %i.v = icmp eq i32 %i.u, %i.t
  br i1 %i.v, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.n
  br i1 %.not.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !57

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i: ; preds = %.lr.ph.i.i.i
  %i.x = icmp eq ptr %.0710.i.i.i, %i.n
  br i1 %i.x, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i
  %.not.i = icmp eq ptr %i.s, %i.m
  br i1 %.not.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread, label %.lr.ph.i.i.preheader.i, !llvm.loop !59

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i, %bb.b, %.lr.ph.i
  %storemerge.i = phi ptr [ %i.r, %bb.b ], [ %i.q, %.lr.ph.i ], [ %i.r, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i ] ; 2 uses
  %.not = icmp eq ptr %storemerge.i, %i.m
  br i1 %.not, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit
  %i.y = getelementptr inbounds i8, ptr %storemerge.i, i64 -4
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.m to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  br label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.thread: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit, %bb.a
  %.0 = phi i64 [ -1, %bb.a ], [ %i.ac, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit ], [ -1, %bb.c ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %i.j = trunc i64 %i.e to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %.idx18.i = shl nsw i64 %i.i, 2
  %i.o = getelementptr inbounds i8, ptr %1, i64 %.idx18.i ; 2 uses
  %i.p = add nsw i64 %i.g, -1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %2)
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %.not9.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not9.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %.lr.ph.i.i, %bb.c
  %i.s = phi ptr [ %i.t, %bb.c ], [ %i.r, %.lr.ph.i.i ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !134, !noalias !658
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.preheader.i.i
  %.0710.i.i.i.i = phi ptr [ %i.x, %bb.b ], [ %1, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.v = load i32, ptr %.0710.i.i.i.i, align 4, !tbaa !134, !noalias !658
  %i.w = icmp eq i32 %i.v, %i.u
  br i1 %i.w, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0710.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.o
  br i1 %.not.i.i.i.i, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp eq ptr %.0710.i.i.i.i, %i.o
  br i1 %i.y, label %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i
  %.not.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit, label %.lr.ph.i.i.preheader.i.i, !llvm.loop !59

_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i: ; preds = %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i, %bb.b, %.lr.ph.i.i
  %storemerge.i.i = phi ptr [ %i.s, %bb.b ], [ %i.r, %.lr.ph.i.i ], [ %i.s, %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS3_EclERKw.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i.i, %i.n
  br i1 %.not.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i
  %i.z = getelementptr inbounds i8, ptr %storemerge.i.i, i64 -4
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.n to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEPKwmm.exit: ; preds = %bb.c, %bb.a, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i, %bb.d
  %.0.i = phi i64 [ -1, %bb.a ], [ %i.ad, %bb.d ], [ -1, %_ZN5boost9container7find_ifINS_7movelib16reverse_iteratorIPKwEENS0_12basic_stringIwSt11char_traitsIwESaIwEvE17Not_within_traitsIS9_EEEET_SE_SE_T0_.exit.i ], [ -1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16find_last_not_ofEwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_2
begin_hunk_3_@_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7compareEPKw:bb.a
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i:     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.b, ptr %i.j, ptr %i.l
  %i.n = tail call i32 @wmemcmp(ptr noundef %i.m, ptr noundef %1, i64 noundef %.sroa.speculated.i) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPKwS8_EEiT_S9_T0_SA_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %bb.a
  %i.o = tail call i32 @llvm.ucmp.i32.i64(i64 %i.g, i64 %i.h)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPKwS8_EEiT_S9_T0_SA_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPKwS8_EEiT_S9_T0_SA_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i
  %i.p = phi i32 [ %i.o, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i ], [ %i.n, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i ]
  ret i32 %i.p
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7compareEmmPKwm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = lshr i64 %i.e, 1
  %i.k = and i64 %i.j, 127
  %i.l = select i1 %i.i, i64 %i.k, i64 %i.f
  %i.m = sub nsw i64 %i.l, %1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.m)
  %.idx = shl i64 %.sroa.speculated, 2
  %i.n = ashr exact i64 %.idx, 2                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %4) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i:     ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.i, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.u = tail call i32 @wmemcmp(ptr noundef %i.t, ptr noundef %3, i64 noundef %.sroa.speculated.i) #29 ; 2 uses
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPwPKwEEiT_SA_T0_SB_.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %bb.c
  %i.v = tail call i32 @llvm.ucmp.i32.i64(i64 %i.n, i64 %4)
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPwPKwEEiT_SA_T0_SB_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9s_compareIPwPKwEEiT_SA_T0_SB_.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i
  %i.w = phi i32 [ %i.v, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i ], [ %i.u, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i ]
  ret i32 %i.w
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7compareEmmPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %3) #29 ; 2 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = and i64 %i.g, 127
  %i.l = select i1 %i.j, i64 %i.k, i64 %i.g
  %i.m = sub nsw i64 %i.l, %1
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.m)
  %.idx.i = shl i64 %.sroa.speculated.i, 2
  %i.n = ashr exact i64 %.idx.i, 2                ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.a) ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.o, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i:   ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.j, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.u = tail call i32 @wmemcmp(ptr noundef %i.t, ptr noundef %3, i64 noundef %.sroa.speculated.i.i) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7compareEmmPKwm.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i, %bb.c
  %i.v = tail call i32 @llvm.ucmp.i32.i64(i64 %i.n, i64 %i.a)
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7compareEmmPKwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7compareEmmPKwm.exit: ; preds = %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i
  %i.w = phi i32 [ %i.v, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.thread.i.i ], [ %i.u, %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit.i.i ]
  ret i32 %i.w
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE8containsEw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %.not.i.not = icmp eq i64 %i.g, 0
  br i1 %.not.i.not, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k       ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.g ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %.0710.i.i = phi ptr [ %i.p, %bb.c ], [ %i.l, %bb.b ] ; 4 uses
  %i.n = load i32, ptr %.0710.i.i, align 4, !tbaa !134
  %i.o = icmp eq i32 %i.n, %1
  br i1 %i.o, label %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0710.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.m
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit, label %.lr.ph.i.i, !llvm.loop !49

_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i: ; preds = %.lr.ph.i.i
  %.not14.i = icmp eq ptr %.0710.i.i, %i.m
  br i1 %.not14.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i
  %i.q = ptrtoint ptr %.0710.i.i to i64
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ne i64 %i.s, -4
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEwm.exit: ; preds = %bb.c, %bb.d, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i, %bb.a
  %.0.i = phi i1 [ false, %bb.a ], [ %i.t, %bb.d ], [ false, %_ZN5boost9container7find_ifIPwNS0_9binder2ndINS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS6_EEEEEET_SC_SC_T0_.exit.i ], [ false, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE8containsEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 3 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1                         ; 3 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m       ; 4 uses
  %i.o = and i64 %i.g, 127
  %i.p = select i1 %i.j, i64 %i.o, i64 %i.g
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p ; 2 uses
  %.idx.i.i = shl nsw i64 %i.a, 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i
  %i.s = icmp eq i64 %i.a, 0
  br i1 %i.s, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.f
  %.01829.i.i.i = phi ptr [ %i.aa, %bb.f ], [ %i.n, %bb.b ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.01524.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i ], [ %i.y, %bb.e ] ; 2 uses
  %.01623.i.i.i = phi ptr [ %.01829.i.i.i, %.lr.ph.i.i.i ], [ %i.x, %bb.e ] ; 3 uses
  %i.t = icmp eq ptr %.01623.i.i.i, %i.q
  br i1 %i.t, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %.01623.i.i.i, align 4, !tbaa !134
  %i.v = load i32, ptr %.01524.i.i.i, align 4, !tbaa !134
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.01623.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.01524.i.i.i, i64 4 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.r
  br i1 %i.z, label %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i.i, label %bb.c, !llvm.loop !48

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.01829.i.i.i, i64 4
  br label %.lr.ph.i.i.i

_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i.i: ; preds = %bb.e, %bb.b
  %.1.ph.i.i.i = phi ptr [ %i.n, %bb.b ], [ %.01829.i.i.i, %bb.e ] ; 2 uses
  %.not.i.i = icmp eq ptr %.1.ph.i.i.i, %i.q
  br i1 %.not.i.i, label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i.i
  %i.ab = ptrtoint ptr %.1.ph.i.i.i to i64
  %i.ac = ptrtoint ptr %i.n to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ne i64 %i.ad, -4
  br label %_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwm.exit

_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE4findEPKwm.exit: ; preds = %bb.c, %bb.g, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i.i, %bb.a
  %.0.i.i = phi i1 [ false, %bb.a ], [ %i.ae, %bb.g ], [ false, %_ZN5boost9container6searchIPwPKwNS0_12basic_stringIwSt11char_traitsIwESaIwEvE9Eq_traitsIS7_EEEET_SC_SC_T0_SD_T1_.exit.i.i ], [ false, %bb.c ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE11starts_withEw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !134
  %i.n = icmp eq i32 %i.m, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.a ], [ %i.n, %bb.b ]
  ret i1 %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE11starts_withEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 3 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %.not = icmp ult i64 %i.h, %i.a
  br i1 %.not, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.a, 0
  br i1 %i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = trunc i64 %i.f to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m
  %i.o = tail call i32 @wmemcmp(ptr noundef %i.n, ptr noundef %1, i64 noundef %i.a) #29
  %i.p = icmp eq i32 %i.o, 0
  br label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.q = phi i1 [ false, %bb.a ], [ %i.p, %bb.c ], [ true, %bb.b ]
  ret i1 %i.q
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9ends_withEw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef signext %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i64 %i.e to i1                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.h, ptr %i.i, ptr %i.k
  %i.m = lshr i64 %i.e, 1
  %i.n = and i64 %i.m, 127
  %i.o = select i1 %i.h, i64 %i.n, i64 %i.f
  %i.p = getelementptr [4 x i8], ptr %i.l, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !134
  %i.s = icmp eq i32 %i.r, %1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi i1 [ false, %bb.a ], [ %i.s, %bb.b ]
  ret i1 %i.t
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9ends_withEPKw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #29 ; 4 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !109     ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g       ; 2 uses
  %.not = icmp ult i64 %i.h, %i.a
  br i1 %.not, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.a, 0
  br i1 %i.i, label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = trunc i64 %i.f to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.j, ptr %i.k, ptr %i.m
  %i.o = sub nuw nsw i64 %i.h, %i.a
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.o
  %i.q = tail call i32 @wmemcmp(ptr noundef %i.p, ptr noundef %1, i64 noundef %i.a) #29
  %i.r = icmp eq i32 %i.q, 0
  br label %_ZNSt11char_traitsIwE7compareEPKwS2_m.exit

_ZNSt11char_traitsIwE7compareEPKwS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.s = phi i1 [ false, %bb.a ], [ %i.r, %bb.c ], [ true, %bb.b ]
  ret i1 %i.s
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16priv_move_assignEOS5_NS_11move_detail5bool_ILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16priv_move_assignEOS5_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyEPKwS7_Pw(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = ashr exact i64 %i.d, 2
  %i.f = tail call ptr @wmemcpy(ptr noundef %2, ptr noundef %0, i64 noundef %i.e) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit

_ZNSt11char_traitsIwE4copyEPwPKwm.exit:           ; preds = %bb.a, %bb.b
  ret void
}
end_hunk_3
