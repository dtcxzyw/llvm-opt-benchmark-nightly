Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_vector_test?download=true
inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 210
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 310
begin_hunk_0_@_Z13test_erase_ndIiLm10EEvv:_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader
  %i.bg = add nuw nsw i64 %.0101, 1               ; 2 uses
  %exitcond110.not = icmp eq i64 %i.bg, 10
  br i1 %exitcond110.not, label %._crit_edge103, label %.lr.ph102, !llvm.loop !629
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z13test_erase_ndI8value_ndLm10EEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader:
  %0 = alloca %"class.boost::container::static_vector.43", align 16 ; 10 uses
  %1 = alloca %"class.boost::container::static_vector.43", align 16 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i61.preheader: ; preds = %._crit_edge107
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.c = ptrtoint ptr %i.b to i64
  %.sroa.5.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %1, i64 36
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit69

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader, %._crit_edge107
  %.045108 = phi i64 [ %i.t, %._crit_edge107 ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  store i64 10, ptr %i.a, align 8, !tbaa !118
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %0, align 16, !tbaa !41
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !41
  store i32 8, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !41
  store i32 9, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !41
  %i.d = icmp eq i64 %.045108, 9
  br i1 %i.d, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEE.exit, label %bb.a, !prof !42

bb.a:                                             ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit
  %.idx97 = shl nuw nsw i64 %.045108, 2           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.idx97 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %gepdiff99.reass = sub nsw i64 36, %.idx97
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.e, ptr nonnull align 4 %i.f, i64 %gepdiff99.reass, i1 false), !noalias !642
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !120, !noalias !642
  %i.g = icmp eq i64 %.pre.i, 10
  br label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEE.exit

_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEE.exit: ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit, %bb.a
  %i.h = phi i1 [ true, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit ], [ %i.g, %bb.a ]
  %i.i = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 305, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.j = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.1, i32 noundef 306, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.h) ; 0 uses
  %.not115 = icmp eq i64 %.045108, 0
  br i1 %.not115, label %.lr.ph106.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.k = add nuw nsw i64 %.045108, 1              ; 2 uses
  %i.l = icmp samesign ult i64 %.045108, 9
  br i1 %i.l, label %.lr.ph106.preheader, label %._crit_edge107

.lr.ph106.preheader:                              ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEE.exit, %._crit_edge
  %i.m = phi i64 [ %i.k, %._crit_edge ], [ 1, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEE.exit ] ; 2 uses
  br label %.lr.ph106

.lr.ph:                                           ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEE.exit, %.lr.ph
  %.044103 = phi i64 [ %i.s, %.lr.ph ], [ 0, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEE.exit ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.044103
  %i.o = trunc nuw nsw i64 %.044103 to i32
  %i.p = load i32, ptr %i.n, align 4, !tbaa !77
  %i.q = icmp eq i32 %i.p, %i.o
  %i.r = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 308, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.q) ; 0 uses
  %i.s = add nuw nsw i64 %.044103, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %.045108
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !634

._crit_edge107:                                   ; preds = %.lr.ph106, %._crit_edge
  %i.t = phi i64 [ %i.k, %._crit_edge ], [ %i.m, %.lr.ph106 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  %exitcond118.not = icmp eq i64 %i.t, 10
  br i1 %exitcond118.not, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i61.preheader, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit, !llvm.loop !635

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %.lr.ph106
  %.043104 = phi i64 [ %i.aa, %.lr.ph106 ], [ %i.m, %.lr.ph106.preheader ] ; 3 uses
  %i.u = getelementptr [4 x i8], ptr %0, i64 %.043104
  %i.v = getelementptr i8, ptr %i.u, i64 -4
  %i.w = trunc nuw nsw i64 %.043104 to i32
  %i.x = load i32, ptr %i.v, align 4, !tbaa !77
  %i.y = icmp eq i32 %i.x, %i.w
  %i.z = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.1, i32 noundef 310, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.y) ; 0 uses
  %i.aa = add nuw nsw i64 %.043104, 1             ; 2 uses
  %exitcond117.not = icmp eq i64 %i.aa, 10
  br i1 %exitcond117.not, label %._crit_edge107, label %.lr.ph106, !llvm.loop !636

bb.b:                                             ; preds = %._crit_edge113
  ret void

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit69: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i61.preheader, %._crit_edge113
  %.042114 = phi i64 [ %i.az, %._crit_edge113 ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i61.preheader ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 10, ptr %i.b, align 8, !tbaa !118
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %1, align 16, !tbaa !41
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.5.0..sroa_idx134, align 16, !tbaa !41
  store i32 8, ptr %.sroa.6.0..sroa_idx136, align 16, !tbaa !41
  store i32 9, ptr %.sroa.7.0..sroa_idx138, align 4, !tbaa !41
  %i.ab = add nuw nsw i64 %.042114, 3
  %i.ac = icmp samesign ult i64 %.042114, 7       ; 2 uses
  %i.ad = sub nuw nsw i64 10, %.042114
  %i.ae = select i1 %i.ac, i64 3, i64 %i.ad       ; 2 uses
  %.idx = shl nuw nsw i64 %.042114, 2             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 3 uses
  %.idx9294 = add nuw nsw i64 %i.ae, %.042114     ; 2 uses
  %i.ag = shl nuw nsw i64 %.idx9294, 2            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %.not.i70 = icmp samesign eq i64 %.idx, %i.ag
  br i1 %.not.i70, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEES9_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit69
  %.not = icmp eq i64 %.idx9294, 10
  br i1 %.not, label %_ZN5boost9container4moveIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  %gepdiff = sub nsw i64 40, %i.ag                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.af, ptr nonnull align 4 %i.ah, i64 %gepdiff, i1 false), !noalias !643
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %gepdiff
  %.pre.i72 = load i64, ptr %i.b, align 8, !tbaa !118, !noalias !643
  br label %_ZN5boost9container4moveIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i

_ZN5boost9container4moveIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i: ; preds = %bb.d, %bb.c
  %i.aj = phi i64 [ %.pre.i72, %bb.d ], [ 10, %bb.c ]
  %.0.i.i.i = phi ptr [ %i.ai, %bb.d ], [ %i.af, %bb.c ]
  %i.ak = ptrtoint ptr %.0.i.i.i to i64
  %i.al = sub i64 %i.c, %i.ak
  %i.am = ashr exact i64 %i.al, 2
  %i.an = sub i64 %i.aj, %i.am
  store i64 %i.an, ptr %i.b, align 8, !tbaa !118, !noalias !643
  br label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEES9_.exit

_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEES9_.exit: ; preds = %_ZN5boost9container4moveIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit69
  %i.ao = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI8value_ndLm10EEvv, i1 noundef zeroext true) ; 0 uses
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !120
  %i.aq = sub nuw nsw i64 10, %i.ae
  %i.ar = icmp eq i64 %i.ap, %i.aq
  %i.as = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.1, i32 noundef 322, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.ar) ; 0 uses
  %.not116 = icmp eq i64 %.042114, 0
  br i1 %.not116, label %.lr.ph112.preheader, label %.lr.ph110

.preheader:                                       ; preds = %.lr.ph110
  br i1 %i.ac, label %.lr.ph112.preheader, label %._crit_edge113

.lr.ph112.preheader:                              ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEES9_.exit, %.preheader
  br label %.lr.ph112

.lr.ph110:                                        ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEES9_.exit, %.lr.ph110
  %.041109 = phi i64 [ %i.ay, %.lr.ph110 ], [ 0, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEES9_.exit ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.041109
  %i.au = trunc nuw nsw i64 %.041109 to i32
  %i.av = load i32, ptr %i.at, align 4, !tbaa !77
  %i.aw = icmp eq i32 %i.av, %i.au
  %i.ax = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 324, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.aw) ; 0 uses
  %i.ay = add nuw nsw i64 %.041109, 1             ; 2 uses
  %exitcond119.not = icmp eq i64 %i.ay, %.042114
  br i1 %exitcond119.not, label %.preheader, label %.lr.ph110, !llvm.loop !639

._crit_edge113:                                   ; preds = %.lr.ph112, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.az = add nuw nsw i64 %.042114, 1             ; 2 uses
  %exitcond121.not = icmp eq i64 %i.az, 11
  br i1 %exitcond121.not, label %bb.b, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit69, !llvm.loop !640

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %.lr.ph112
  %.0111 = phi i64 [ %i.bg, %.lr.ph112 ], [ %i.ab, %.lr.ph112.preheader ] ; 3 uses
  %i.ba = getelementptr [4 x i8], ptr %1, i64 %.0111
  %i.bb = getelementptr i8, ptr %i.ba, i64 -12
  %i.bc = trunc nuw nsw i64 %.0111 to i32
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !77
  %i.be = icmp eq i32 %i.bd, %i.bc
  %i.bf = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.1, i32 noundef 326, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.be) ; 0 uses
  %i.bg = add nuw nsw i64 %.0111, 1               ; 2 uses
  %exitcond120.not = icmp eq i64 %i.bg, 10
  br i1 %exitcond120.not, label %._crit_edge113, label %.lr.ph112, !llvm.loop !641
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z13test_erase_ndI14counting_valueLm10EEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader:
  %0 = alloca %"class.boost::container::static_vector.29", align 8 ; 18 uses
  %1 = alloca %"class.boost::container::static_vector.29", align 8 ; 28 uses
  %_ZZN14counting_value1cEvE2co.promoted = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.a = add i64 %_ZZN14counting_value1cEvE2co.promoted, 10
  store i64 %i.a, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %.lr.ph.i.i.i

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i69.preheader: ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader
  %.045151 = phi i64 [ %i.ba, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  store <2 x i32> zeroinitializer, ptr %0, align 8, !tbaa !41
  store <2 x i32> <i32 1, i32 0>, ptr %i.c, align 8, !tbaa !41
  store <2 x i32> <i32 2, i32 0>, ptr %i.d, align 8, !tbaa !41
  store <2 x i32> <i32 3, i32 0>, ptr %i.e, align 8, !tbaa !41
  store <2 x i32> <i32 4, i32 0>, ptr %i.f, align 8, !tbaa !41
  store <2 x i32> <i32 5, i32 0>, ptr %i.g, align 8, !tbaa !41
  store <2 x i32> <i32 6, i32 0>, ptr %i.h, align 8, !tbaa !41
  store <2 x i32> <i32 7, i32 0>, ptr %i.i, align 8, !tbaa !41
  store <2 x i32> <i32 8, i32 0>, ptr %i.j, align 8, !tbaa !41
  store <2 x i32> <i32 9, i32 0>, ptr %i.k, align 8, !tbaa !41
  %i.v = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, 10
  store i64 %i.v, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.w = icmp eq i64 %.045151, 9
  br i1 %i.w, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.i
  %.idx130 = shl nuw nsw i64 %.045151, 3          ; 2 uses
  %.ptr189 = getelementptr inbounds nuw i8, ptr %0, i64 %.idx130
  %.add = add nuw nsw i64 %.idx130, 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.ptr189, %.lr.ph.i.i.preheader ] ; 2 uses
  %.079.i.i.idx = phi i64 [ %.079.i.i.add, %.lr.ph.i.i ], [ %.add, %.lr.ph.i.i.preheader ] ; 2 uses
  %.079.i.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.079.i.i.idx ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.079.i.i.ptr, i64 4
  %i.y = load <2 x i32>, ptr %.079.i.i.ptr, align 8, !tbaa !41, !noalias !657
  store <2 x i32> %i.y, ptr %.010.i.i, align 4, !tbaa !41, !noalias !657
  store i32 0, ptr %.079.i.i.ptr, align 8, !tbaa !79, !noalias !657
  store i32 0, ptr %i.x, align 4, !tbaa !80, !noalias !657
  %.079.i.i.add = add nuw nsw i64 %.079.i.i.idx, 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq i64 %.079.i.i.add, 80
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !646

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i
  %i.aa = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !657
  %i.ab = add i64 %i.aa, -1
  store i64 %i.ab, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !657
  store i64 9, ptr %i.b, align 8, !tbaa !102, !noalias !657
  %i.ac = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 305, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %bb.a unwind label %bb.b       ; 0 uses

bb.a:                                             ; preds = %.loopexit
  %i.ad = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.1, i32 noundef 306, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader134 unwind label %bb.b ; 0 uses

.preheader134:                                    ; preds = %bb.a
  %.not = icmp eq i64 %.045151, 0
  br i1 %.not, label %.lr.ph149.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader134
  %.pre = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ae = add i64 %.pre, 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %i.af = add nuw nsw i64 %.045151, 1             ; 2 uses
  %i.ag = icmp samesign ult i64 %.045151, 9
  br i1 %i.ag, label %.lr.ph149.preheader, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit

.lr.ph149.preheader:                              ; preds = %.preheader134, %._crit_edge
  %i.ah = phi i64 [ %i.af, %._crit_edge ], [ 1, %.preheader134 ] ; 2 uses
  %.pre177 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ai = add i64 %.pre177, 1
  br label %.lr.ph149

bb.b:                                             ; preds = %.loopexit, %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit64

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.ak = phi i64 [ %i.au, %bb.c ], [ %i.ae, %.lr.ph.preheader ]
  %.044146 = phi i64 [ %i.aw, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.044146 ; 2 uses
  %i.am = trunc nuw nsw i64 %.044146 to i32
  store i64 %i.ak, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.an = load i32, ptr %i.al, align 8, !tbaa !79
  %i.ao = icmp eq i32 %i.an, %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = select i1 %i.ao, i1 %i.ar, i1 false
  %i.at = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 308, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI14counting_valueLm10EEvv, i1 noundef zeroext %i.as)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %.lr.ph
  %i.au = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.av = add i64 %i.au, -1
  store i64 %i.av, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.aw = add nuw nsw i64 %.044146, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %.045151
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !647

bb.d:                                             ; preds = %.lr.ph
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.az = add i64 %i.ay, -1
  store i64 %i.az, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit64

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %bb.e, %._crit_edge
  %i.ba = phi i64 [ %i.af, %._crit_edge ], [ %i.ah, %bb.e ] ; 2 uses
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.bb = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, -9
  store i64 %i.bb, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  %exitcond163.not = icmp eq i64 %i.ba, 10
  br i1 %exitcond163.not, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i69.preheader, label %.lr.ph.i.i.i, !llvm.loop !648

.lr.ph149:                                        ; preds = %.lr.ph149.preheader, %bb.e
  %i.bc = phi i64 [ %i.bn, %bb.e ], [ %i.ai, %.lr.ph149.preheader ]
  %.043147 = phi i64 [ %i.bp, %bb.e ], [ %i.ah, %.lr.ph149.preheader ] ; 3 uses
  %i.bd = getelementptr [8 x i8], ptr %0, i64 %.043147 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -8
  %i.bf = trunc nuw nsw i64 %.043147 to i32
  store i64 %i.bc, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bg = load i32, ptr %i.be, align 8, !tbaa !79
  %i.bh = icmp eq i32 %i.bg, %i.bf
  %i.bi = getelementptr i8, ptr %i.bd, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = icmp eq i32 %i.bj, 0
  %i.bl = select i1 %i.bh, i1 %i.bk, i1 false
  %i.bm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.1, i32 noundef 310, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI14counting_valueLm10EEvv, i1 noundef zeroext %i.bl)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %.lr.ph149
  %i.bn = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.bo = add i64 %i.bn, -1
  store i64 %i.bo, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bp = add nuw nsw i64 %.043147, 1             ; 2 uses
  %exitcond162.not = icmp eq i64 %i.bp, 10
  br i1 %exitcond162.not, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph149, !llvm.loop !649

bb.f:                                             ; preds = %.lr.ph149
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bs = add i64 %i.br, -1
  store i64 %i.bs, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit64

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit64: ; preds = %bb.f, %bb.d, %bb.b
  %.pn55 = phi { ptr, i32 } [ %i.ax, %bb.d ], [ %i.bq, %bb.f ], [ %i.aj, %bb.b ]
  %_ZZN14counting_value1cEvE2co.promoted.i.i63 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.bt = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i63, -9
  store i64 %i.bt, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit68: ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit93
  %_ZZN14counting_value1cEvE2co.promoted.i.i67 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.bu = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i67, -10
  store i64 %i.bu, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  ret void

.lr.ph.i.i.i71:                                   ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit93, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i69.preheader
  %.042157 = phi i64 [ %i.em, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit93 ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i69.preheader ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 10, ptr %i.l, align 8, !tbaa !128
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i72 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  store <2 x i32> zeroinitializer, ptr %1, align 8, !tbaa !41
  store <2 x i32> <i32 1, i32 0>, ptr %i.m, align 8, !tbaa !41
  store <2 x i32> <i32 2, i32 0>, ptr %i.n, align 8, !tbaa !41
  store <2 x i32> <i32 3, i32 0>, ptr %i.o, align 8, !tbaa !41
  store <2 x i32> <i32 4, i32 0>, ptr %i.p, align 8, !tbaa !41
  store <2 x i32> <i32 5, i32 0>, ptr %i.q, align 8, !tbaa !41
  store <2 x i32> <i32 6, i32 0>, ptr %i.r, align 8, !tbaa !41
  store <2 x i32> <i32 7, i32 0>, ptr %i.s, align 8, !tbaa !41
  store <2 x i32> <i32 8, i32 0>, ptr %i.t, align 8, !tbaa !41
  store <2 x i32> <i32 9, i32 0>, ptr %i.u, align 8, !tbaa !41
  %i.bv = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i72, 10
  store i64 %i.bv, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.bw = add nuw nsw i64 %.042157, 3
  %i.bx = icmp samesign ult i64 %.042157, 7       ; 2 uses
  %i.by = sub nuw nsw i64 10, %.042157
  %i.bz = select i1 %i.bx, i64 3, i64 %i.by       ; 2 uses
  %.idx = shl nuw nsw i64 %.042157, 3             ; 8 uses
  %.idx126128 = add nuw nsw i64 %i.bz, %.042157   ; 2 uses
  %i.ca = shl nuw nsw i64 %.idx126128, 3          ; 6 uses
  %.not.i80 = icmp samesign eq i64 %.idx, %i.ca
  br i1 %.not.i80, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEES9_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i71
  %.not8.i.i81 = icmp eq i64 %.idx126128, 10
  br i1 %.not8.i.i81, label %_ZN5boost9container4moveIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i, label %.lr.ph.i.i82.preheader

.lr.ph.i.i82.preheader:                           ; preds = %bb.g
  %i.cb = call i64 @llvm.umin.i64(i64 %.042157, i64 7) ; 2 uses
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = sub nsw i64 48, %i.cc                   ; 2 uses
  %i.ce = lshr exact i64 %i.cd, 3
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cd, 24
  br i1 %min.iters.check, label %.lr.ph.i.i82.preheader211, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i82.preheader
  %i.cg = add nuw i64 %.idx, 52
  %i.ch = shl nuw nsw i64 %i.cb, 3                ; 3 uses
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = getelementptr i8, ptr %1, i64 %i.ci
  %i.ck = getelementptr i8, ptr %1, i64 %i.ca
  %i.cl = add nuw i64 %.idx, 56
  %i.cm = sub nuw i64 %i.cl, %i.ch
  %2 = getelementptr i8, ptr %1, i64 %i.cm
  %i.cn = getelementptr i8, ptr %1, i64 %i.ch
  %i.co = getelementptr i8, ptr %i.cn, i64 28
  %bound0 = icmp samesign ult i64 %.042157, 10
  %bound1 = icmp ult ptr %i.ck, %i.cj
  %found.conflict = and i1 %bound0, %bound1
  %bound0206 = icmp samesign ult i64 %.042157, 10
  %bound1207 = icmp ult ptr %i.co, %2
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx = or i1 %found.conflict, %found.conflict208
  br i1 %conflict.rdx, label %.lr.ph.i.i82.preheader211, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cf, 4611686018427387902     ; 3 uses
  %i.cp = shl i64 %n.vec, 3                       ; 2 uses
  %i.cq = add i64 %.idx, %i.cp                    ; 2 uses
  %i.cr = add i64 %i.ca, %i.cp
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = shl nuw i64 %index, 3                   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.cw, align 8, !tbaa !41, !noalias !658
  store <4 x i32> %wide.vec, ptr %i.cv, align 8, !tbaa !41, !noalias !658
  store <4 x i32> zeroinitializer, ptr %i.cw, align 8, !tbaa !41, !noalias !658
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !652

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container4moveIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i, label %.lr.ph.i.i82.preheader211

.lr.ph.i.i82.preheader211:                        ; preds = %vector.memcheck, %.lr.ph.i.i82.preheader, %middle.block
  %.010.i.i83.idx.ph = phi i64 [ %.idx, %vector.memcheck ], [ %.idx, %.lr.ph.i.i82.preheader ], [ %i.cq, %middle.block ] ; 3 uses
  %.079.i.i84.idx.ph = phi i64 [ %i.ca, %vector.memcheck ], [ %i.ca, %.lr.ph.i.i82.preheader ], [ %i.cr, %middle.block ] ; 4 uses
  %i.cy = sub i64 72, %.079.i.i84.idx.ph          ; 2 uses
  %i.cz = and i64 %i.cy, 8
  %lcmp.mod.not.not = icmp eq i64 %i.cz, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i82.prol, label %.lr.ph.i.i82.prol.loopexit

.lr.ph.i.i82.prol:                                ; preds = %.lr.ph.i.i82.preheader211
  %.010.i.i83.ptr.prol = getelementptr inbounds nuw i8, ptr %1, i64 %.010.i.i83.idx.ph
  %.079.i.i84.ptr.prol = getelementptr inbounds nuw i8, ptr %1, i64 %.079.i.i84.idx.ph ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.079.i.i84.ptr.prol, i64 4
  %i.db = load <2 x i32>, ptr %.079.i.i84.ptr.prol, align 4, !tbaa !41, !noalias !658
  store <2 x i32> %i.db, ptr %.010.i.i83.ptr.prol, align 4, !tbaa !41, !noalias !658
  store i32 0, ptr %.079.i.i84.ptr.prol, align 4, !tbaa !79, !noalias !658
  store i32 0, ptr %i.da, align 4, !tbaa !80, !noalias !658
  %.079.i.i84.add.prol = add nuw nsw i64 %.079.i.i84.idx.ph, 8
  %.010.i.i83.add.prol = add nuw nsw i64 %.010.i.i83.idx.ph, 8 ; 2 uses
  br label %.lr.ph.i.i82.prol.loopexit

.lr.ph.i.i82.prol.loopexit:                       ; preds = %.lr.ph.i.i82.prol, %.lr.ph.i.i82.preheader211
  %.010.i.i83.add.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i82.preheader211 ], [ %.010.i.i83.add.prol, %.lr.ph.i.i82.prol ]
  %.010.i.i83.idx.unr = phi i64 [ %.010.i.i83.idx.ph, %.lr.ph.i.i82.preheader211 ], [ %.010.i.i83.add.prol, %.lr.ph.i.i82.prol ]
  %.079.i.i84.idx.unr = phi i64 [ %.079.i.i84.idx.ph, %.lr.ph.i.i82.preheader211 ], [ %.079.i.i84.add.prol, %.lr.ph.i.i82.prol ]
  %i.dc = icmp ult i64 %i.cy, 8
  br i1 %i.dc, label %_ZN5boost9container4moveIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i, label %.lr.ph.i.i82

.lr.ph.i.i82:                                     ; preds = %.lr.ph.i.i82.prol.loopexit, %.lr.ph.i.i82
  %.010.i.i83.idx = phi i64 [ %.010.i.i83.add.1, %.lr.ph.i.i82 ], [ %.010.i.i83.idx.unr, %.lr.ph.i.i82.prol.loopexit ] ; 3 uses
  %.079.i.i84.idx = phi i64 [ %.079.i.i84.add.1, %.lr.ph.i.i82 ], [ %.079.i.i84.idx.unr, %.lr.ph.i.i82.prol.loopexit ] ; 3 uses
  %.010.i.i83.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.010.i.i83.idx
  %.079.i.i84.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.079.i.i84.idx ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.079.i.i84.ptr, i64 4
  %i.de = load <2 x i32>, ptr %.079.i.i84.ptr, align 4, !tbaa !41, !noalias !658
  store <2 x i32> %i.de, ptr %.010.i.i83.ptr, align 4, !tbaa !41, !noalias !658
  store i32 0, ptr %.079.i.i84.ptr, align 4, !tbaa !79, !noalias !658
  store i32 0, ptr %i.dd, align 4, !tbaa !80, !noalias !658
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %.010.i.i83.idx
  %.010.i.i83.ptr.1 = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %.079.i.i84.idx ; 2 uses
  %.079.i.i84.ptr.1 = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.di = load <2 x i32>, ptr %.079.i.i84.ptr.1, align 4, !tbaa !41, !noalias !658
  store <2 x i32> %i.di, ptr %.010.i.i83.ptr.1, align 4, !tbaa !41, !noalias !658
  store i32 0, ptr %.079.i.i84.ptr.1, align 4, !tbaa !79, !noalias !658
  store i32 0, ptr %i.dh, align 4, !tbaa !80, !noalias !658
  %.079.i.i84.add.1 = add nuw nsw i64 %.079.i.i84.idx, 16 ; 2 uses
  %.010.i.i83.add.1 = add nuw nsw i64 %.010.i.i83.idx, 16 ; 2 uses
  %.not.i.i85.1 = icmp eq i64 %.079.i.i84.add.1, 80
  br i1 %.not.i.i85.1, label %_ZN5boost9container4moveIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i, label %.lr.ph.i.i82, !llvm.loop !653

_ZN5boost9container4moveIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i: ; preds = %.lr.ph.i.i82.prol.loopexit, %.lr.ph.i.i82, %middle.block, %bb.g
  %.0.lcssa.i.i.idx = phi i64 [ %.idx, %bb.g ], [ %i.cq, %middle.block ], [ %.010.i.i83.add.lcssa.unr, %.lr.ph.i.i82.prol.loopexit ], [ %.010.i.i83.add.1, %.lr.ph.i.i82 ] ; 2 uses
  %gepdiff = sub nsw i64 80, %.0.lcssa.i.i.idx
  %i.dj = ashr exact i64 %gepdiff, 3              ; 2 uses
  %.not3.i.i86 = icmp eq i64 %.0.lcssa.i.i.idx, 80
  br i1 %.not3.i.i86, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, label %.lr.ph.preheader.i.i87

.lr.ph.preheader.i.i87:                           ; preds = %_ZN5boost9container4moveIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i
  %_ZZN14counting_value1cEvE2co.promoted.i.i88 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !noalias !658
  %i.dk = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i88, %i.dj
  store i64 %i.dk, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !658
  br label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i: ; preds = %.lr.ph.preheader.i.i87, %_ZN5boost9container4moveIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i
  %i.dl = sub nsw i64 10, %i.dj
  store i64 %i.dl, ptr %i.l, align 8, !tbaa !128, !noalias !658
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEES9_.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEES9_.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit.i, %.lr.ph.i.i.i71
  %i.dm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEES9_.exit
  %i.dn = load i64, ptr %i.l, align 8, !tbaa !102
  %i.do = sub nuw nsw i64 10, %i.bz
  %i.dp = icmp eq i64 %i.dn, %i.do
  %i.dq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.1, i32 noundef 322, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI14counting_valueLm10EEvv, i1 noundef zeroext %i.dp)
          to label %.preheader132 unwind label %bb.i ; 0 uses

.preheader132:                                    ; preds = %bb.h
  %.not159 = icmp eq i64 %.042157, 0
  br i1 %.not159, label %.lr.ph155.preheader, label %.lr.ph153.preheader

.lr.ph153.preheader:                              ; preds = %.preheader132
  %.pre178 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.dr = add i64 %.pre178, 1
  br label %.lr.ph153

.preheader:                                       ; preds = %bb.j
  br i1 %i.bx, label %.lr.ph155.preheader, label %._crit_edge156

.lr.ph155.preheader:                              ; preds = %.preheader132, %.preheader
  %.pre179 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ds = add i64 %.pre179, 1
  br label %.lr.ph155

bb.i:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEES9_.exit, %bb.h
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph153:                                        ; preds = %.lr.ph153.preheader, %bb.j
  %i.du = phi i64 [ %i.ee, %bb.j ], [ %i.dr, %.lr.ph153.preheader ]
  %.041152 = phi i64 [ %i.eg, %bb.j ], [ 0, %.lr.ph153.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.041152 ; 2 uses
  %i.dw = trunc nuw nsw i64 %.041152 to i32
  store i64 %i.du, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.dx = load i32, ptr %i.dv, align 8, !tbaa !79
  %i.dy = icmp eq i32 %i.dx, %i.dw
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = icmp eq i32 %i.ea, 0
  %i.ec = select i1 %i.dy, i1 %i.eb, i1 false
  %i.ed = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 324, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI14counting_valueLm10EEvv, i1 noundef zeroext %i.ec)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %.lr.ph153
  %i.ee = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.ef = add i64 %i.ee, -1
  store i64 %i.ef, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.eg = add nuw nsw i64 %.041152, 1             ; 2 uses
  %exitcond164.not = icmp eq i64 %i.eg, %.042157
  br i1 %exitcond164.not, label %.preheader, label %.lr.ph153, !llvm.loop !654

bb.k:                                             ; preds = %.lr.ph153
  %i.eh = landingpad { ptr, i32 }
          cleanup
  %i.ei = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.ej = add i64 %i.ei, -1
  store i64 %i.ej, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.n

._crit_edge156:                                   ; preds = %bb.l, %.preheader
  %i.ek = load i64, ptr %i.l, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i89 = icmp eq i64 %i.ek, 0
  br i1 %.not3.i.i89, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit93, label %.lr.ph.preheader.i.i90

.lr.ph.preheader.i.i90:                           ; preds = %._crit_edge156
  %_ZZN14counting_value1cEvE2co.promoted.i.i91 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.el = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i91, %i.ek
  store i64 %i.el, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit93

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit93: ; preds = %._crit_edge156, %.lr.ph.preheader.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.em = add nuw nsw i64 %.042157, 1             ; 2 uses
  %exitcond166.not = icmp eq i64 %i.em, 11
  br i1 %exitcond166.not, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit68, label %.lr.ph.i.i.i71, !llvm.loop !655

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %bb.l
  %i.en = phi i64 [ %i.ey, %bb.l ], [ %i.ds, %.lr.ph155.preheader ]
  %.0154 = phi i64 [ %i.fa, %bb.l ], [ %i.bw, %.lr.ph155.preheader ] ; 3 uses
  %i.eo = getelementptr [8 x i8], ptr %1, i64 %.0154 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 -24
  %i.eq = trunc nuw nsw i64 %.0154 to i32
  store i64 %i.en, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.er = load i32, ptr %i.ep, align 8, !tbaa !79
  %i.es = icmp eq i32 %i.er, %i.eq
  %i.et = getelementptr i8, ptr %i.eo, i64 -20
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = icmp eq i32 %i.eu, 0
  %i.ew = select i1 %i.es, i1 %i.ev, i1 false
  %i.ex = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.1, i32 noundef 326, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI14counting_valueLm10EEvv, i1 noundef zeroext %i.ew)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %.lr.ph155
  %i.ey = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 2 uses
  %i.ez = add i64 %i.ey, -1
  store i64 %i.ez, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.fa = add nuw nsw i64 %.0154, 1               ; 2 uses
  %exitcond165.not = icmp eq i64 %i.fa, 10
  br i1 %exitcond165.not, label %._crit_edge156, label %.lr.ph155, !llvm.loop !656

bb.m:                                             ; preds = %.lr.ph155
  %i.fb = landingpad { ptr, i32 }
          cleanup
  %i.fc = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.fd = add i64 %i.fc, -1
  store i64 %i.fd, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.eh, %bb.k ], [ %i.fb, %bb.m ], [ %i.dt, %bb.i ]
  %i.fe = load i64, ptr %i.l, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i94 = icmp eq i64 %i.fe, 0
  br i1 %.not3.i.i94, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit98, label %.lr.ph.preheader.i.i95

.lr.ph.preheader.i.i95:                           ; preds = %bb.n
  %_ZZN14counting_value1cEvE2co.promoted.i.i96 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.ff = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i96, %i.fe
  store i64 %i.ff, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit98

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit98: ; preds = %.lr.ph.preheader.i.i95, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit103: ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit98, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit64
  %.pn58 = phi { ptr, i32 } [ %.pn, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit98 ], [ %.pn55, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit64 ]
  %_ZZN14counting_value1cEvE2co.promoted.i.i101 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.fg = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i101, -10
  store i64 %i.fg, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  resume { ptr, i32 } %.pn58
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z13test_erase_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader:
  %0 = alloca %"class.boost::container::static_vector.35", align 16 ; 30 uses
  %1 = alloca %"class.boost::container::static_vector.35", align 16 ; 27 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.a = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, 10
  store i32 %i.a, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i81.preheader: ; preds = %.lr.ph.i.i61
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %.sroa.14.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.23.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.26.0..sroa_idx287 = getelementptr inbounds nuw i8, ptr %1, i64 36
  br label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit92

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader, %.lr.ph.i.i61
  %.045176 = phi i64 [ %i.al, %.lr.ph.i.i61 ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %0, align 16, !tbaa !82
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.14.0..sroa_idx, align 16, !tbaa !82
  store i32 8, ptr %.sroa.23.0..sroa_idx, align 16, !tbaa !82
  store i32 9, ptr %.sroa.26.0..sroa_idx, align 4, !tbaa !82
  %i.l = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, 10
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.m = icmp eq i64 %.045176, 9
  br i1 %i.m, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit
  %.idx155 = shl nuw nsw i64 %.045176, 2          ; 2 uses
  %.ptr215 = getelementptr inbounds nuw i8, ptr %0, i64 %.idx155
  %.add = add nuw nsw i64 %.idx155, 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %.ptr215, %.lr.ph.i.i.preheader ] ; 2 uses
  %.079.i.i.idx = phi i64 [ %.079.i.i.add, %.lr.ph.i.i ], [ %.add, %.lr.ph.i.i.preheader ] ; 2 uses
  %.079.i.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.079.i.i.idx ; 2 uses
  %i.n = load i32, ptr %.079.i.i.ptr, align 4, !tbaa !82, !noalias !681
  store i32 %i.n, ptr %.010.i.i, align 4, !tbaa !82, !noalias !681
  store i32 0, ptr %.079.i.i.ptr, align 4, !tbaa !82, !noalias !681
  %.079.i.i.add = add nuw nsw i64 %.079.i.i.idx, 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq i64 %.079.i.i.add, 40
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !661

.loopexit:                                        ; preds = %.lr.ph.i.i, %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit
  store i32 -2147483648, ptr %i.b, align 4, !tbaa !82, !noalias !681
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !681
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !681
  %i.r = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 305, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv, i1 noundef zeroext true)
          to label %bb.a unwind label %bb.b       ; 0 uses

bb.a:                                             ; preds = %.loopexit
  %i.s = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.1, i32 noundef 306, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv, i1 noundef zeroext true)
          to label %.preheader159 unwind label %bb.b ; 0 uses

.preheader159:                                    ; preds = %bb.a
  %.not = icmp eq i64 %.045176, 0
  br i1 %.not, label %.lr.ph174.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader159
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.t = add i32 %.pre, 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %i.u = add nuw nsw i64 %.045176, 1              ; 2 uses
  %i.v = icmp samesign ult i64 %.045176, 9
  br i1 %i.v, label %.lr.ph174.preheader, label %.lr.ph.i.i61

.lr.ph174.preheader:                              ; preds = %.preheader159, %._crit_edge
  %i.w = phi i64 [ %i.u, %._crit_edge ], [ 1, %.preheader159 ] ; 2 uses
  %.pre202 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.x = add i32 %.pre202, 1
  br label %.lr.ph174

bb.b:                                             ; preds = %.loopexit, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i66

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.z = phi i32 [ %i.af, %bb.c ], [ %i.t, %.lr.ph.preheader ]
  %.044171 = phi i64 [ %i.ah, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.044171
  %i.ab = trunc nuw nsw i64 %.044171 to i32
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !82
  %i.ad = icmp eq i32 %i.ac, %i.ab
  %i.ae = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 308, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv, i1 noundef zeroext %i.ad)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %.lr.ph
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ah = add nuw nsw i64 %.044171, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %.045176
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !662

bb.d:                                             ; preds = %.lr.ph
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ak = add i32 %i.aj, -1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.i66

.lr.ph.i.i61:                                     ; preds = %._crit_edge, %bb.e
  %i.al = phi i64 [ %i.u, %._crit_edge ], [ %i.w, %bb.e ] ; 2 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  store i32 -2147483648, ptr %0, align 16, !tbaa !82
  store i32 -2147483648, ptr %i.c, align 4, !tbaa !82
  store i32 -2147483648, ptr %i.d, align 8, !tbaa !82
  store i32 -2147483648, ptr %i.e, align 4, !tbaa !82
  store i32 -2147483648, ptr %i.f, align 16, !tbaa !82
  store i32 -2147483648, ptr %i.g, align 4, !tbaa !82
  store i32 -2147483648, ptr %i.h, align 8, !tbaa !82
  store i32 -2147483648, ptr %i.i, align 4, !tbaa !82
  store i32 -2147483648, ptr %i.j, align 16, !tbaa !82
  %i.am = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, -9
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  %exitcond188.not = icmp eq i64 %i.al, 10
  br i1 %exitcond188.not, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i81.preheader, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit, !llvm.loop !663

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %bb.e
  %i.an = phi i32 [ %i.au, %bb.e ], [ %i.x, %.lr.ph174.preheader ]
  %.043172 = phi i64 [ %i.aw, %bb.e ], [ %i.w, %.lr.ph174.preheader ] ; 3 uses
  %i.ao = getelementptr [4 x i8], ptr %0, i64 %.043172
  %i.ap = getelementptr i8, ptr %i.ao, i64 -4
  %i.aq = trunc nuw nsw i64 %.043172 to i32
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !82
  %i.as = icmp eq i32 %i.ar, %i.aq
  %i.at = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.1, i32 noundef 310, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv, i1 noundef zeroext %i.as)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %.lr.ph174
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.av = add i32 %i.au, -1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.aw = add nuw nsw i64 %.043172, 1             ; 2 uses
  %exitcond187.not = icmp eq i64 %i.aw, 10
  br i1 %exitcond187.not, label %.lr.ph.i.i61, label %.lr.ph174, !llvm.loop !664

bb.f:                                             ; preds = %.lr.ph174
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.az = add i32 %i.ay, -1
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.lr.ph.i.i66

.lr.ph.i.i66:                                     ; preds = %bb.f, %bb.d, %bb.b
  %.pn55 = phi { ptr, i32 } [ %i.ai, %bb.d ], [ %i.ax, %bb.f ], [ %i.y, %bb.b ]
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i65 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  store i32 -2147483648, ptr %0, align 16, !tbaa !82
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !82
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -2147483648, ptr %i.bb, align 8, !tbaa !82
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !82
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -2147483648, ptr %i.bd, align 16, !tbaa !82
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !82
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -2147483648, ptr %i.bf, align 8, !tbaa !82
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !82
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -2147483648, ptr %i.bh, align 16, !tbaa !82
  %i.bi = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i65, -9
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  br label %.lr.ph.i.i125

.lr.ph.i.i75:                                     ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit111
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i74 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.bj = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i74, -10
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  ret void

_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit92: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i81.preheader, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit111
  %.042182 = phi i64 [ %i.eo, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit111 ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i81.preheader ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 10, ptr %i.k, align 8, !tbaa !139
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i84 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %1, align 16, !tbaa !82
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.14.0..sroa_idx275, align 16, !tbaa !82
  store i32 8, ptr %.sroa.23.0..sroa_idx285, align 16, !tbaa !82
  store i32 9, ptr %.sroa.26.0..sroa_idx287, align 4, !tbaa !82
  %i.bk = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i84, 10
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.bl = add nuw nsw i64 %.042182, 3
  %i.bm = icmp samesign ult i64 %.042182, 7       ; 2 uses
  %i.bn = sub nuw nsw i64 10, %.042182
  %i.bo = select i1 %i.bm, i64 3, i64 %i.bn       ; 2 uses
  %.idx = shl nuw nsw i64 %.042182, 2             ; 7 uses
  %.idx151153 = add nuw nsw i64 %i.bo, %.042182   ; 2 uses
  %i.bp = shl nuw nsw i64 %.idx151153, 2          ; 6 uses
  %.not.i93 = icmp samesign eq i64 %.idx, %i.bp
  br i1 %.not.i93, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit92
  %.not8.i.i94 = icmp eq i64 %.idx151153, 10
  br i1 %.not8.i.i94, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i.i95.preheader

.lr.ph.i.i95.preheader:                           ; preds = %bb.g
  %i.bq = call i64 @llvm.umin.i64(i64 %.042182, i64 7) ; 2 uses
  %i.br = shl nuw nsw i64 %i.bq, 2
  %i.bs = sub nsw i64 24, %i.br                   ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check238 = icmp ult i64 %i.bs, 28
  br i1 %min.iters.check238, label %.lr.ph.i.i95.preheader262, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i95.preheader
  %i.bv = add nuw i64 %.idx, 28
  %i.bw = shl nuw nsw i64 %i.bq, 2
  %i.bx = sub nuw i64 %i.bv, %i.bw
  %i.by = getelementptr i8, ptr %1, i64 %i.bx
  %i.bz = getelementptr i8, ptr %1, i64 %i.bp
  %bound0 = icmp samesign ult i64 %.042182, 10
  %bound1 = icmp ult ptr %i.bz, %i.by
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i95.preheader262, label %vector.ph239

vector.ph239:                                     ; preds = %vector.memcheck
  %n.vec240 = and i64 %i.bu, 9223372036854775800  ; 3 uses
  %i.ca = shl i64 %n.vec240, 2                    ; 2 uses
  %i.cb = add i64 %.idx, %i.ca                    ; 2 uses
  %i.cc = add i64 %i.bp, %i.ca
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %i.bp
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph239
  %index242 = phi i64 [ 0, %vector.ph239 ], [ %index.next244, %vector.body241 ] ; 2 uses
  %i.cf = shl nuw i64 %index242, 2                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ch, align 4, !tbaa !82, !alias.scope !682, !noalias !683
  %wide.load243 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !82, !alias.scope !682, !noalias !683
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <4 x i32> %wide.load, ptr %i.cg, align 4, !tbaa !82, !alias.scope !684, !noalias !685
  store <4 x i32> %wide.load243, ptr %i.cj, align 4, !tbaa !82, !alias.scope !684, !noalias !685
  store <4 x i32> zeroinitializer, ptr %i.ch, align 4, !tbaa !82, !alias.scope !682, !noalias !683
  store <4 x i32> zeroinitializer, ptr %i.ci, align 4, !tbaa !82, !alias.scope !682, !noalias !683
  %index.next244 = add nuw i64 %index242, 8       ; 2 uses
  %i.ck = icmp eq i64 %index.next244, %n.vec240
  br i1 %i.ck, label %middle.block245, label %vector.body241, !llvm.loop !670

middle.block245:                                  ; preds = %vector.body241
  %cmp.n246 = icmp eq i64 %i.bu, %n.vec240
  br i1 %cmp.n246, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i.i95.preheader262

.lr.ph.i.i95.preheader262:                        ; preds = %vector.memcheck, %.lr.ph.i.i95.preheader, %middle.block245
  %.010.i.i96.idx.ph = phi i64 [ %.idx, %vector.memcheck ], [ %.idx, %.lr.ph.i.i95.preheader ], [ %i.cb, %middle.block245 ] ; 3 uses
  %.079.i.i97.idx.ph = phi i64 [ %i.bp, %vector.memcheck ], [ %i.bp, %.lr.ph.i.i95.preheader ], [ %i.cc, %middle.block245 ] ; 4 uses
  %i.cl = sub i64 36, %.079.i.i97.idx.ph          ; 2 uses
  %i.cm = and i64 %i.cl, 4
  %lcmp.mod.not.not = icmp eq i64 %i.cm, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i95.prol, label %.lr.ph.i.i95.prol.loopexit

.lr.ph.i.i95.prol:                                ; preds = %.lr.ph.i.i95.preheader262
  %.010.i.i96.ptr.prol = getelementptr inbounds nuw i8, ptr %1, i64 %.010.i.i96.idx.ph
  %.079.i.i97.ptr.prol = getelementptr inbounds nuw i8, ptr %1, i64 %.079.i.i97.idx.ph ; 2 uses
  %i.cn = load i32, ptr %.079.i.i97.ptr.prol, align 4, !tbaa !82, !noalias !683
  store i32 %i.cn, ptr %.010.i.i96.ptr.prol, align 4, !tbaa !82, !noalias !683
  store i32 0, ptr %.079.i.i97.ptr.prol, align 4, !tbaa !82, !noalias !683
  %.079.i.i97.add.prol = add nuw nsw i64 %.079.i.i97.idx.ph, 4
  %.010.i.i96.add.prol = add nuw nsw i64 %.010.i.i96.idx.ph, 4 ; 2 uses
  br label %.lr.ph.i.i95.prol.loopexit

.lr.ph.i.i95.prol.loopexit:                       ; preds = %.lr.ph.i.i95.prol, %.lr.ph.i.i95.preheader262
  %.010.i.i96.add.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i95.preheader262 ], [ %.010.i.i96.add.prol, %.lr.ph.i.i95.prol ]
  %.010.i.i96.idx.unr = phi i64 [ %.010.i.i96.idx.ph, %.lr.ph.i.i95.preheader262 ], [ %.010.i.i96.add.prol, %.lr.ph.i.i95.prol ]
  %.079.i.i97.idx.unr = phi i64 [ %.079.i.i97.idx.ph, %.lr.ph.i.i95.preheader262 ], [ %.079.i.i97.add.prol, %.lr.ph.i.i95.prol ]
  %i.co = icmp ult i64 %i.cl, 4
  br i1 %i.co, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i.i95

.lr.ph.i.i95:                                     ; preds = %.lr.ph.i.i95.prol.loopexit, %.lr.ph.i.i95
  %.010.i.i96.idx = phi i64 [ %.010.i.i96.add.1, %.lr.ph.i.i95 ], [ %.010.i.i96.idx.unr, %.lr.ph.i.i95.prol.loopexit ] ; 3 uses
  %.079.i.i97.idx = phi i64 [ %.079.i.i97.add.1, %.lr.ph.i.i95 ], [ %.079.i.i97.idx.unr, %.lr.ph.i.i95.prol.loopexit ] ; 3 uses
  %.010.i.i96.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.010.i.i96.idx
  %.079.i.i97.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.079.i.i97.idx ; 2 uses
  %i.cp = load i32, ptr %.079.i.i97.ptr, align 4, !tbaa !82, !noalias !683
  store i32 %i.cp, ptr %.010.i.i96.ptr, align 4, !tbaa !82, !noalias !683
  store i32 0, ptr %.079.i.i97.ptr, align 4, !tbaa !82, !noalias !683
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %.010.i.i96.idx
  %.010.i.i96.ptr.1 = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %.079.i.i97.idx
  %.079.i.i97.ptr.1 = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 2 uses
  %i.cs = load i32, ptr %.079.i.i97.ptr.1, align 4, !tbaa !82, !noalias !683
  store i32 %i.cs, ptr %.010.i.i96.ptr.1, align 4, !tbaa !82, !noalias !683
  store i32 0, ptr %.079.i.i97.ptr.1, align 4, !tbaa !82, !noalias !683
  %.079.i.i97.add.1 = add nuw nsw i64 %.079.i.i97.idx, 8 ; 2 uses
  %.010.i.i96.add.1 = add nuw nsw i64 %.010.i.i96.idx, 8 ; 2 uses
  %.not.i.i98.1 = icmp eq i64 %.079.i.i97.add.1, 40
  br i1 %.not.i.i98.1, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %.lr.ph.i.i95, !llvm.loop !671

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %.lr.ph.i.i95.prol.loopexit, %.lr.ph.i.i95, %middle.block245, %bb.g
  %.0.lcssa.i.i.idx = phi i64 [ %.idx, %bb.g ], [ %i.cb, %middle.block245 ], [ %.010.i.i96.add.lcssa.unr, %.lr.ph.i.i95.prol.loopexit ], [ %.010.i.i96.add.1, %.lr.ph.i.i95 ] ; 3 uses
  %gepdiff = sub nsw i64 40, %.0.lcssa.i.i.idx
  %i.ct = ashr exact i64 %gepdiff, 2              ; 6 uses
  %.not3.i.i99 = icmp eq i64 %.0.lcssa.i.i.idx, 40
  br i1 %.not3.i.i99, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, label %.lr.ph.i8.i.preheader

.lr.ph.i8.i.preheader:                            ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.0.lcssa.i.i.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa.i.i.idx ; 3 uses
  %.pre203 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !683 ; 2 uses
  %min.iters.check221 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check221, label %.lr.ph.i8.i.preheader261, label %vector.ph222

vector.ph222:                                     ; preds = %.lr.ph.i8.i.preheader
  %n.vec223 = and i64 %i.ct, -8                   ; 3 uses
  %i.cu = and i64 %i.ct, 7
  %i.cv = shl nsw i64 %n.vec223, 2
  %i.cw = getelementptr i8, ptr %.0.lcssa.i.i.ptr, i64 %i.cv
  %i.cx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre203, i64 0
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph222
  %index225 = phi i64 [ 0, %vector.ph222 ], [ %index.next228, %vector.body224 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cx, %vector.ph222 ], [ %i.da, %vector.body224 ]
  %vec.phi226 = phi <4 x i32> [ zeroinitializer, %vector.ph222 ], [ %i.db, %vector.body224 ]
  %i.cy = shl i64 %index225, 2
  %next.gep227 = getelementptr i8, ptr %.0.lcssa.i.i.ptr, i64 %i.cy ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep227, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep227, align 4, !tbaa !82, !noalias !683
  store <4 x i32> splat (i32 -2147483648), ptr %i.cz, align 4, !tbaa !82, !noalias !683
  %i.da = add <4 x i32> %vec.phi, splat (i32 -1)  ; 2 uses
  %i.db = add <4 x i32> %vec.phi226, splat (i32 -1) ; 2 uses
  %index.next228 = add nuw i64 %index225, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next228, %n.vec223
  br i1 %i.dc, label %middle.block229, label %vector.body224, !llvm.loop !672

middle.block229:                                  ; preds = %vector.body224
  %bin.rdx = add <4 x i32> %i.db, %i.da
  %i.dd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n230 = icmp eq i64 %i.ct, %n.vec223
  br i1 %cmp.n230, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, label %.lr.ph.i8.i.preheader261

.lr.ph.i8.i.preheader261:                         ; preds = %.lr.ph.i8.i.preheader, %middle.block229
  %.ph = phi i32 [ %.pre203, %.lr.ph.i8.i.preheader ], [ %i.dd, %middle.block229 ]
  %.05.i.i100.ph = phi i64 [ %i.ct, %.lr.ph.i8.i.preheader ], [ %i.cu, %middle.block229 ]
  %storemerge4.i.i101.ph = phi ptr [ %.0.lcssa.i.i.ptr, %.lr.ph.i8.i.preheader ], [ %i.cw, %middle.block229 ]
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.preheader261, %.lr.ph.i8.i
  %i.de = phi i32 [ %i.dg, %.lr.ph.i8.i ], [ %.ph, %.lr.ph.i8.i.preheader261 ]
  %.05.i.i100 = phi i64 [ %i.df, %.lr.ph.i8.i ], [ %.05.i.i100.ph, %.lr.ph.i8.i.preheader261 ]
  %storemerge4.i.i101 = phi ptr [ %i.dh, %.lr.ph.i8.i ], [ %storemerge4.i.i101.ph, %.lr.ph.i8.i.preheader261 ] ; 2 uses
  %i.df = add i64 %.05.i.i100, -1                 ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i101, align 4, !tbaa !82, !noalias !683
  %i.dg = add i32 %i.de, -1                       ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %storemerge4.i.i101, i64 4
  %.not.i9.i = icmp eq i64 %i.df, 0
  br i1 %.not.i9.i, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, label %.lr.ph.i8.i, !llvm.loop !673

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit: ; preds = %.lr.ph.i8.i, %middle.block229
  %.lcssa = phi i32 [ %i.dd, %middle.block229 ], [ %i.dg, %.lr.ph.i8.i ]
  store i32 %.lcssa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !683
  br label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i.loopexit, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %i.di = sub nsw i64 10, %i.ct
  store i64 %i.di, ptr %i.k, align 8, !tbaa !139, !noalias !683
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.i, %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit92
  %i.dj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit
  %i.dk = load i64, ptr %i.k, align 8, !tbaa !141
  %i.dl = sub nuw nsw i64 10, %i.bo
  %i.dm = icmp eq i64 %i.dk, %i.dl
  %i.dn = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.1, i32 noundef 322, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv, i1 noundef zeroext %i.dm)
          to label %.preheader157 unwind label %bb.i ; 0 uses

.preheader157:                                    ; preds = %bb.h
  %.not184 = icmp eq i64 %.042182, 0
  br i1 %.not184, label %.lr.ph180.preheader, label %.lr.ph178.preheader

.lr.ph178.preheader:                              ; preds = %.preheader157
  %.pre204 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.do = add i32 %.pre204, 1
  br label %.lr.ph178

.preheader:                                       ; preds = %bb.j
  br i1 %i.bm, label %.lr.ph180.preheader, label %._crit_edge181

.lr.ph180.preheader:                              ; preds = %.preheader157, %.preheader
  %.pre205 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dp = add i32 %.pre205, 1
  br label %.lr.ph180

bb.i:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit, %bb.h
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph178:                                        ; preds = %.lr.ph178.preheader, %bb.j
  %i.dr = phi i32 [ %i.dx, %bb.j ], [ %i.do, %.lr.ph178.preheader ]
  %.041177 = phi i64 [ %i.dz, %bb.j ], [ 0, %.lr.ph178.preheader ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.041177
  %i.dt = trunc nuw nsw i64 %.041177 to i32
  store i32 %i.dr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !82
  %i.dv = icmp eq i32 %i.du, %i.dt
  %i.dw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 324, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv, i1 noundef zeroext %i.dv)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %.lr.ph178
  %i.dx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.dy = add i32 %i.dx, -1
  store i32 %i.dy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dz = add nuw nsw i64 %.041177, 1             ; 2 uses
  %exitcond189.not = icmp eq i64 %i.dz, %.042182
  br i1 %exitcond189.not, label %.preheader, label %.lr.ph178, !llvm.loop !674

bb.k:                                             ; preds = %.lr.ph178
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ec = add i32 %i.eb, -1
  store i32 %i.ec, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.n

._crit_edge181:                                   ; preds = %bb.l, %.preheader
  %i.ed = load i64, ptr %i.k, align 8, !tbaa !141 ; 7 uses
  %.not3.i.i102 = icmp eq i64 %i.ed, 0
  br i1 %.not3.i.i102, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit111, label %.lr.ph.i.preheader.i103

.lr.ph.i.preheader.i103:                          ; preds = %._crit_edge181
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i104 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check = icmp ult i64 %i.ed, 8
  br i1 %min.iters.check, label %.lr.ph.i.i105.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i103
  %n.vec = and i64 %i.ed, -8                      ; 3 uses
  %i.ee = and i64 %i.ed, 7
  %i.ef = shl i64 %n.vec, 2
  %i.eg = getelementptr i8, ptr %1, i64 %i.ef
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eh = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.eh ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 16, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.ei, align 16, !tbaa !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !675

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i109, label %.lr.ph.i.i105.preheader

.lr.ph.i.i105.preheader:                          ; preds = %.lr.ph.i.preheader.i103, %middle.block
  %.05.i.i106.ph = phi i64 [ %i.ed, %.lr.ph.i.preheader.i103 ], [ %i.ee, %middle.block ]
  %storemerge4.i.i107.ph = phi ptr [ %1, %.lr.ph.i.preheader.i103 ], [ %i.eg, %middle.block ]
  br label %.lr.ph.i.i105

.lr.ph.i.i105:                                    ; preds = %.lr.ph.i.i105.preheader, %.lr.ph.i.i105
  %.05.i.i106 = phi i64 [ %i.ek, %.lr.ph.i.i105 ], [ %.05.i.i106.ph, %.lr.ph.i.i105.preheader ]
  %storemerge4.i.i107 = phi ptr [ %i.el, %.lr.ph.i.i105 ], [ %storemerge4.i.i107.ph, %.lr.ph.i.i105.preheader ] ; 2 uses
  %i.ek = add i64 %.05.i.i106, -1                 ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i107, align 4, !tbaa !82
  %i.el = getelementptr inbounds nuw i8, ptr %storemerge4.i.i107, i64 4
  %.not.i.i108 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i108, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i109, label %.lr.ph.i.i105, !llvm.loop !676

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i109: ; preds = %.lr.ph.i.i105, %middle.block
  %i.em = trunc i64 %i.ed to i32
  %i.en = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i104, %i.em
  store i32 %i.en, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit111

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit111: ; preds = %._crit_edge181, %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.eo = add nuw nsw i64 %.042182, 1             ; 2 uses
  %exitcond191.not = icmp eq i64 %i.eo, 11
  br i1 %exitcond191.not, label %.lr.ph.i.i75, label %_ZN5boost9container13static_vectorINS0_4test24movable_and_copyable_intELm10EvEC2ERKS4_.exit92, !llvm.loop !677

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %bb.l
  %i.ep = phi i32 [ %i.ew, %bb.l ], [ %i.dp, %.lr.ph180.preheader ]
  %.0179 = phi i64 [ %i.ey, %bb.l ], [ %i.bl, %.lr.ph180.preheader ] ; 3 uses
  %i.eq = getelementptr [4 x i8], ptr %1, i64 %.0179
  %i.er = getelementptr i8, ptr %i.eq, i64 -12
  %i.es = trunc nuw nsw i64 %.0179 to i32
  store i32 %i.ep, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.et = load i32, ptr %i.er, align 4, !tbaa !82
  %i.eu = icmp eq i32 %i.et, %i.es
  %i.ev = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.1, i32 noundef 326, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndIN5boost9container4test24movable_and_copyable_intELm10EEvv, i1 noundef zeroext %i.eu)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %.lr.ph180
  %i.ew = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 2 uses
  %i.ex = add i32 %i.ew, -1
  store i32 %i.ex, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ey = add nuw nsw i64 %.0179, 1               ; 2 uses
  %exitcond190.not = icmp eq i64 %i.ey, 10
  br i1 %exitcond190.not, label %._crit_edge181, label %.lr.ph180, !llvm.loop !678

bb.m:                                             ; preds = %.lr.ph180
  %i.ez = landingpad { ptr, i32 }
          cleanup
  %i.fa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.fb = add i32 %i.fa, -1
  store i32 %i.fb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ea, %bb.k ], [ %i.ez, %bb.m ], [ %i.dq, %bb.i ]
  %i.fc = load i64, ptr %i.k, align 8, !tbaa !141 ; 7 uses
  %.not3.i.i112 = icmp eq i64 %i.fc, 0
  br i1 %.not3.i.i112, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit121, label %.lr.ph.i.preheader.i113

.lr.ph.i.preheader.i113:                          ; preds = %bb.n
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i114 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %min.iters.check250 = icmp ult i64 %i.fc, 8
  br i1 %min.iters.check250, label %.lr.ph.i.i115.preheader, label %vector.ph251

vector.ph251:                                     ; preds = %.lr.ph.i.preheader.i113
  %n.vec252 = and i64 %i.fc, -8                   ; 3 uses
  %i.fd = and i64 %i.fc, 7
  %i.fe = shl i64 %n.vec252, 2
  %i.ff = getelementptr i8, ptr %1, i64 %i.fe
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph251
  %index254 = phi i64 [ 0, %vector.ph251 ], [ %index.next256, %vector.body253 ] ; 2 uses
  %i.fg = shl i64 %index254, 2
  %next.gep255 = getelementptr i8, ptr %1, i64 %i.fg ; 2 uses
  %i.fh = getelementptr i8, ptr %next.gep255, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep255, align 16, !tbaa !82
  store <4 x i32> splat (i32 -2147483648), ptr %i.fh, align 16, !tbaa !82
  %index.next256 = add nuw i64 %index254, 8       ; 2 uses
  %i.fi = icmp eq i64 %index.next256, %n.vec252
  br i1 %i.fi, label %middle.block257, label %vector.body253, !llvm.loop !679

middle.block257:                                  ; preds = %vector.body253
  %cmp.n258 = icmp eq i64 %i.fc, %n.vec252
  br i1 %cmp.n258, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i119, label %.lr.ph.i.i115.preheader

.lr.ph.i.i115.preheader:                          ; preds = %.lr.ph.i.preheader.i113, %middle.block257
  %.05.i.i116.ph = phi i64 [ %i.fc, %.lr.ph.i.preheader.i113 ], [ %i.fd, %middle.block257 ]
  %storemerge4.i.i117.ph = phi ptr [ %1, %.lr.ph.i.preheader.i113 ], [ %i.ff, %middle.block257 ]
  br label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %.lr.ph.i.i115.preheader, %.lr.ph.i.i115
  %.05.i.i116 = phi i64 [ %i.fj, %.lr.ph.i.i115 ], [ %.05.i.i116.ph, %.lr.ph.i.i115.preheader ]
  %storemerge4.i.i117 = phi ptr [ %i.fk, %.lr.ph.i.i115 ], [ %storemerge4.i.i117.ph, %.lr.ph.i.i115.preheader ] ; 2 uses
  %i.fj = add i64 %.05.i.i116, -1                 ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i117, align 4, !tbaa !82
  %i.fk = getelementptr inbounds nuw i8, ptr %storemerge4.i.i117, i64 4
  %.not.i.i118 = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i118, label %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i119, label %.lr.ph.i.i115, !llvm.loop !680

_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i119: ; preds = %.lr.ph.i.i115, %middle.block257
  %i.fl = trunc i64 %i.fc to i32
  %i.fm = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i114, %i.fl
  store i32 %i.fm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit121

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit121: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_EENS2_33disable_if_trivially_destructibleIT0_vE4typeERT_S9_m.exit.loopexit.i119, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %.lr.ph.i.i125

.lr.ph.i.i125:                                    ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit121, %.lr.ph.i.i66
  %.pn58 = phi { ptr, i32 } [ %.pn, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit121 ], [ %.pn55, %.lr.ph.i.i66 ]
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i124 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.fn = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i124, -10
  store i32 %i.fn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  resume { ptr, i32 } %.pn58
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z14test_insert_ndIiLm10EEvRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::vec_iterator", align 8 ; 15 uses
  %2 = alloca %"class.boost::container::static_vector.19", align 8 ; 15 uses
  %3 = alloca %"class.boost::container::static_vector.19", align 8 ; 10 uses
  %4 = alloca %"class.boost::container::vector.62", align 8 ; 22 uses
  %5 = alloca %"class.boost::container::list", align 8 ; 17 uses
  %i.a = alloca i32, align 4                      ; 21 uses
  %6 = alloca %"class.boost::container::static_vector.19", align 8 ; 11 uses
  %7 = alloca %"class.boost::container::static_vector.19", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 14 uses
  store i64 0, ptr %5, align 8
  store ptr %i.d, ptr %i.d, align 8, !tbaa !105
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !106
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store i32 0, ptr %2, align 8, !tbaa !41
  store i64 1, ptr %i.b, align 8, !tbaa !95
  store i32 100, ptr %3, align 8, !tbaa !41
  store i64 1, ptr %i.c, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 100, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef null, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container6vectorIivvE9push_backEOi.exit unwind label %bb.n

_ZN5boost9container6vectorIivvE9push_backEOi.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.h = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.b unwind label %.loopexit.split-lp155.loopexit.split-lp ; 5 uses

bb.b:                                             ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 100, ptr %i.i, align 4, !tbaa !41
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !106  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !106
  store ptr %i.d, ptr %i.h, align 8, !tbaa !105
  store ptr %i.h, ptr %i.e, align 8, !tbaa !106
  store ptr %i.h, ptr %i.j, align 8, !tbaa !105
  %i.l = load i64, ptr %5, align 8, !tbaa !114
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %5, align 8, !tbaa !114
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 1, ptr %i.n, align 4, !tbaa !41
  store i64 2, ptr %i.b, align 8, !tbaa !95
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 101, ptr %i.o, align 4, !tbaa !41
  store i64 2, ptr %i.c, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 101, ptr %i.a, align 4, !tbaa !41
  %i.p = load i64, ptr %i.f, align 8, !tbaa !109  ; 4 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !110
  %.not.i87.1 = icmp eq i64 %i.p, %i.q
  br i1 %.not.i87.1, label %bb.d, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %4, align 8, !tbaa !111, !nonnull !112, !noundef !112
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store i32 101, ptr %i.s, align 4, !tbaa !41
  %i.t = add i64 %i.p, 1
  store i64 %i.t, ptr %i.f, align 8, !tbaa !109
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.1

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.u = load ptr, ptr %4, align 8, !tbaa !111
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.p
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.v, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc88.1 unwind label %bb.n

.noexc88.1:                                       ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.1

_ZN5boost9container6vectorIivvE9push_backEOi.exit.1: ; preds = %.noexc88.1, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.w = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.e unwind label %.loopexit.split-lp155.loopexit.split-lp ; 5 uses

bb.e:                                             ; preds = %_ZN5boost9container6vectorIivvE9push_backEOi.exit.1
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 101, ptr %i.x, align 4, !tbaa !41
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !106  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !106
  store ptr %i.d, ptr %i.w, align 8, !tbaa !105
  store ptr %i.w, ptr %i.e, align 8, !tbaa !106
  store ptr %i.w, ptr %i.y, align 8, !tbaa !105
  %i.aa = load i64, ptr %5, align 8, !tbaa !114
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %5, align 8, !tbaa !114
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 2, ptr %i.ac, align 8, !tbaa !41
  store i64 3, ptr %i.b, align 8, !tbaa !95
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 102, ptr %i.ad, align 8, !tbaa !41
  store i64 3, ptr %i.c, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 102, ptr %i.a, align 4, !tbaa !41
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !109 ; 4 uses
  %i.af = load i64, ptr %i.g, align 8, !tbaa !110
  %.not.i87.2 = icmp eq i64 %i.ae, %i.af
  br i1 %.not.i87.2, label %bb.g, label %bb.f, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %4, align 8, !tbaa !111, !nonnull !112, !noundef !112
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ae
  store i32 102, ptr %i.ah, align 4, !tbaa !41
  %i.ai = add i64 %i.ae, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !109
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.2

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.aj = load ptr, ptr %4, align 8, !tbaa !111
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ae
  invoke void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.ak, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc88.2 unwind label %bb.n

.noexc88.2:                                       ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN5boost9container6vectorIivvE9push_backEOi.exit.2

_ZN5boost9container6vectorIivvE9push_backEOi.exit.2: ; preds = %.noexc88.2, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.al = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.h unwind label %.loopexit.split-lp155.loopexit.split-lp ; 5 uses
end_hunk_0
