inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 307
begin_hunk_0_@_Z13test_erase_ndIiLm10EEvv:_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader
bb.f:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

._crit_edge100:                                   ; preds = %bb.g, %._crit_edge
  %i.w = phi i64 [ %i.k, %._crit_edge ], [ %i.m, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  %exitcond114.not = icmp eq i64 %i.w, 10
  br i1 %exitcond114.not, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i61.preheader, label %_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit, !llvm.loop !529

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %bb.g
  %.04397 = phi i64 [ %i.ad, %bb.g ], [ %i.m, %.lr.ph99.preheader ] ; 3 uses
  %i.x = getelementptr [4 x i8], ptr %0, i64 %.04397
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !18
  %i.aa = trunc nuw nsw i64 %.04397 to i32
  %i.ab = icmp eq i32 %i.z, %i.aa
  %i.ac = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.1, i32 noundef 310, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndIiLm10EEvv, i1 noundef zeroext %i.ab)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %.lr.ph99
  %i.ad = add nuw nsw i64 %.04397, 1              ; 2 uses
  %exitcond113.not = icmp eq i64 %i.ad, 10
  br i1 %exitcond113.not, label %._crit_edge100, label %.lr.ph99, !llvm.loop !530

bb.h:                                             ; preds = %.lr.ph99
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.d, %bb.f, %bb.h
  %.pn55.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.v, %bb.f ], [ %i.ae, %bb.h ], [ %i.o, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  br label %bb.u

bb.j:                                             ; preds = %._crit_edge106
  ret void

_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit64: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i61.preheader, %._crit_edge106
  %.042107 = phi i64 [ %i.bg, %._crit_edge106 ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS4_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i61.preheader ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 10, ptr %i.b, align 8, !tbaa !129
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %1, align 16
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.0.sroa.6.0..sroa_idx141, align 16
  store i32 8, ptr %.sroa.0.sroa.7.0..sroa_idx143, align 16
  store i32 9, ptr %.sroa.0.sroa.8.0..sroa_idx145, align 4
  %i.af = add nuw nsw i64 %.042107, 3
  %i.ag = icmp samesign ult i64 %.042107, 7       ; 2 uses
  %i.ah = sub nuw nsw i64 10, %.042107
  %i.ai = select i1 %i.ag, i64 3, i64 %i.ah       ; 2 uses
  %.idx = shl nuw nsw i64 %.042107, 2             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 3 uses
  %.idx8284 = add nuw nsw i64 %i.ai, %.042107     ; 2 uses
  %i.ak = shl nuw nsw i64 %.idx8284, 2            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  %.not.i65 = icmp samesign eq i64 %.idx, %i.ak
  br i1 %.not.i65, label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPiLb1EEES8_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit64
  %.not = icmp eq i64 %.idx8284, 10
  br i1 %.not, label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i, label %bb.l, !prof !24

bb.l:                                             ; preds = %bb.k
  %gepdiff = sub nsw i64 40, %i.ak                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr nonnull align 4 %i.al, i64 %gepdiff, i1 false), !noalias !531
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %gepdiff
  %.pre.i67 = load i64, ptr %i.b, align 8, !tbaa !129, !noalias !531
  br label %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i

_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i: ; preds = %bb.l, %bb.k
  %i.an = phi i64 [ %.pre.i67, %bb.l ], [ 10, %bb.k ]
  %.0.i.i.i = phi ptr [ %i.am, %bb.l ], [ %i.aj, %bb.k ]
  %i.ao = ptrtoint ptr %.0.i.i.i to i64
  %i.ap = sub i64 %i.c, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  %i.ar = sub i64 %i.an, %i.aq
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !129, !noalias !531
  br label %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPiLb1EEES8_.exit

_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPiLb1EEES8_.exit: ; preds = %_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit64, %_ZN5boost9container4moveIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_S5_S6_.exit.i
  %i.as = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndIiLm10EEvv, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPiLb1EEES8_.exit
  %i.at = load i64, ptr %i.b, align 8, !tbaa !132
  %i.au = sub nuw nsw i64 10, %i.ai
  %i.av = icmp eq i64 %i.at, %i.au
  %i.aw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.1, i32 noundef 322, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndIiLm10EEvv, i1 noundef zeroext %i.av)
          to label %.preheader90 unwind label %bb.o ; 0 uses

.preheader90:                                     ; preds = %bb.m
  %.not110 = icmp eq i64 %.042107, 0
  br i1 %.not110, label %.lr.ph105.preheader, label %.lr.ph103

.preheader:                                       ; preds = %bb.p
  br i1 %i.ag, label %.lr.ph105.preheader, label %._crit_edge106

.lr.ph105.preheader:                              ; preds = %.preheader90, %.preheader
  br label %.lr.ph105

bb.n:                                             ; preds = %_ZN5boost9container6vectorIiNS0_3dtl24static_storage_allocatorIiLm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPiLb1EEES8_.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.lr.ph103:                                        ; preds = %.preheader90, %bb.p
  %.041102 = phi i64 [ %i.be, %bb.p ], [ 0, %.preheader90 ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.041102
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !18
  %i.bb = trunc nuw nsw i64 %.041102 to i32
  %i.bc = icmp eq i32 %i.ba, %i.bb
  %i.bd = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 324, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndIiLm10EEvv, i1 noundef zeroext %i.bc)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %.lr.ph103
  %i.be = add nuw nsw i64 %.041102, 1             ; 2 uses
  %exitcond115.not = icmp eq i64 %i.be, %.042107
  br i1 %exitcond115.not, label %.preheader, label %.lr.ph103, !llvm.loop !534

bb.q:                                             ; preds = %.lr.ph103
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

._crit_edge106:                                   ; preds = %bb.r, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.bg = add nuw nsw i64 %.042107, 1             ; 2 uses
  %exitcond117.not = icmp eq i64 %i.bg, 11
  br i1 %exitcond117.not, label %bb.j, label %_ZN5boost9container13static_vectorIiLm10EvEC2ERKS2_.exit64, !llvm.loop !535

.lr.ph105:                                        ; preds = %.lr.ph105.preheader, %bb.r
  %.0104 = phi i64 [ %i.bn, %bb.r ], [ %i.af, %.lr.ph105.preheader ] ; 3 uses
  %i.bh = getelementptr [4 x i8], ptr %1, i64 %.0104
  %i.bi = getelementptr i8, ptr %i.bh, i64 -12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !18
  %i.bk = trunc nuw nsw i64 %.0104 to i32
  %i.bl = icmp eq i32 %i.bj, %i.bk
  %i.bm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.1, i32 noundef 326, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndIiLm10EEvv, i1 noundef zeroext %i.bl)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %.lr.ph105
  %i.bn = add nuw nsw i64 %.0104, 1               ; 2 uses
  %exitcond116.not = icmp eq i64 %i.bn, 10
  br i1 %exitcond116.not, label %._crit_edge106, label %.lr.ph105, !llvm.loop !536

bb.s:                                             ; preds = %.lr.ph105
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.n, %bb.o, %bb.q, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.n ], [ %i.bf, %bb.q ], [ %i.bo, %bb.s ], [ %i.ay, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.i
  %.pn58 = phi { ptr, i32 } [ %.pn.pn, %bb.t ], [ %.pn55.pn, %bb.i ]
  resume { ptr, i32 } %.pn58
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z13test_erase_ndI8value_ndLm10EEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader:
  %0 = alloca %"class.boost::container::static_vector.43", align 16 ; 11 uses
  %1 = alloca %"class.boost::container::static_vector.43", align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i61.preheader: ; preds = %._crit_edge110
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.c = ptrtoint ptr %i.b to i64
  %.sroa.0.sroa.6.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.sroa.7.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.sroa.8.0..sroa_idx155 = getelementptr inbounds nuw i8, ptr %1, i64 36
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit69

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader, %._crit_edge110
  %.045111 = phi i64 [ %i.w, %._crit_edge110 ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  store i64 10, ptr %i.a, align 8, !tbaa !225
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %0, align 16, !tbaa !18
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.0.sroa.6.0..sroa_idx, align 16, !tbaa !18
  store i32 8, ptr %.sroa.0.sroa.7.0..sroa_idx, align 16, !tbaa !18
  store i32 9, ptr %.sroa.0.sroa.8.0..sroa_idx, align 4, !tbaa !18
  %i.d = icmp eq i64 %.045111, 9
  br i1 %i.d, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEE.exit, label %bb.a, !prof !24

bb.a:                                             ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit
  %.idx97 = shl nuw nsw i64 %.045111, 2           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.idx97 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %gepdiff99.reass = sub nsw i64 36, %.idx97
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.e, ptr nonnull align 4 %i.f, i64 %gepdiff99.reass, i1 false), !noalias !537
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !228, !noalias !537
  %i.g = icmp eq i64 %.pre.i, 10
  br label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEE.exit

_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEE.exit: ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit, %bb.a
  %i.h = phi i1 [ true, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit ], [ %i.g, %bb.a ]
  %i.i = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 305, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI8value_ndLm10EEvv, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEE.exit
  %i.j = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.1, i32 noundef 306, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.h)
          to label %.preheader102 unwind label %bb.d ; 0 uses

.preheader102:                                    ; preds = %bb.b
  %.not119 = icmp eq i64 %.045111, 0
  br i1 %.not119, label %.lr.ph109.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e
  %i.k = add nuw nsw i64 %.045111, 1              ; 2 uses
  %i.l = icmp samesign ult i64 %.045111, 9
  br i1 %i.l, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %.preheader102, %._crit_edge
  %i.m = phi i64 [ %i.k, %._crit_edge ], [ 1, %.preheader102 ] ; 2 uses
  br label %.lr.ph109

bb.c:                                             ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEE.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.lr.ph:                                           ; preds = %.preheader102, %bb.e
  %.044106 = phi i64 [ %i.u, %bb.e ], [ 0, %.preheader102 ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.044106
  %i.q = trunc nuw nsw i64 %.044106 to i32
  %i.r = load i32, ptr %i.p, align 4, !tbaa !70
  %i.s = icmp eq i32 %i.r, %i.q
  %i.t = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 308, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.s)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %.lr.ph
  %i.u = add nuw nsw i64 %.044106, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %.045111
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !540

bb.f:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

._crit_edge110:                                   ; preds = %bb.g, %._crit_edge
  %i.w = phi i64 [ %i.k, %._crit_edge ], [ %i.m, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  %exitcond124.not = icmp eq i64 %i.w, 10
  br i1 %exitcond124.not, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i61.preheader, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit, !llvm.loop !541

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %bb.g
  %.043107 = phi i64 [ %i.ad, %bb.g ], [ %i.m, %.lr.ph109.preheader ] ; 3 uses
  %i.x = getelementptr [4 x i8], ptr %0, i64 %.043107
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  %i.z = trunc nuw nsw i64 %.043107 to i32
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !70
  %i.ab = icmp eq i32 %i.aa, %i.z
  %i.ac = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.1, i32 noundef 310, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.ab)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %.lr.ph109
  %i.ad = add nuw nsw i64 %.043107, 1             ; 2 uses
  %exitcond123.not = icmp eq i64 %i.ad, 10
  br i1 %exitcond123.not, label %._crit_edge110, label %.lr.ph109, !llvm.loop !542

bb.h:                                             ; preds = %.lr.ph109
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.d, %bb.f, %bb.h
  %.pn55.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.v, %bb.f ], [ %i.ae, %bb.h ], [ %i.o, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  br label %bb.u

bb.j:                                             ; preds = %._crit_edge116
  ret void

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit69: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i61.preheader, %._crit_edge116
  %.042117 = phi i64 [ %i.bg, %._crit_edge116 ], [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i61.preheader ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 10, ptr %i.b, align 8, !tbaa !225
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %1, align 16, !tbaa !18
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %.sroa.0.sroa.6.0..sroa_idx151, align 16, !tbaa !18
  store i32 8, ptr %.sroa.0.sroa.7.0..sroa_idx153, align 16, !tbaa !18
  store i32 9, ptr %.sroa.0.sroa.8.0..sroa_idx155, align 4, !tbaa !18
  %i.af = add nuw nsw i64 %.042117, 3
  %i.ag = icmp samesign ult i64 %.042117, 7       ; 2 uses
  %i.ah = sub nuw nsw i64 10, %.042117
  %i.ai = select i1 %i.ag, i64 3, i64 %i.ah       ; 2 uses
  %.idx = shl nuw nsw i64 %.042117, 2             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 3 uses
  %.idx9294 = add nuw nsw i64 %i.ai, %.042117     ; 2 uses
  %i.ak = shl nuw nsw i64 %.idx9294, 2            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  %.not.i70 = icmp samesign eq i64 %.idx, %i.ak
  br i1 %.not.i70, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEES9_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit69
  %.not = icmp eq i64 %.idx9294, 10
  br i1 %.not, label %_ZN5boost9container4moveIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i, label %bb.l, !prof !24

bb.l:                                             ; preds = %bb.k
  %gepdiff = sub nsw i64 40, %i.ak                ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr nonnull align 4 %i.al, i64 %gepdiff, i1 false), !noalias !543
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %gepdiff
  %.pre.i72 = load i64, ptr %i.b, align 8, !tbaa !225, !noalias !543
  br label %_ZN5boost9container4moveIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i

_ZN5boost9container4moveIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i: ; preds = %bb.l, %bb.k
  %i.an = phi i64 [ %.pre.i72, %bb.l ], [ 10, %bb.k ]
  %.0.i.i.i = phi ptr [ %i.am, %bb.l ], [ %i.aj, %bb.k ]
  %i.ao = ptrtoint ptr %.0.i.i.i to i64
  %i.ap = sub i64 %i.c, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  %i.ar = sub i64 %i.an, %i.aq
  store i64 %i.ar, ptr %i.b, align 8, !tbaa !225, !noalias !543
  br label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEES9_.exit

_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEES9_.exit: ; preds = %_ZN5boost9container4moveIP8value_ndS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit.i, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit69
  %i.as = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI8value_ndLm10EEvv, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEES9_.exit
  %i.at = load i64, ptr %i.b, align 8, !tbaa !228
  %i.au = sub nuw nsw i64 10, %i.ai
  %i.av = icmp eq i64 %i.at, %i.au
  %i.aw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.1, i32 noundef 322, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.av)
          to label %.preheader100 unwind label %bb.o ; 0 uses

.preheader100:                                    ; preds = %bb.m
  %.not120 = icmp eq i64 %.042117, 0
  br i1 %.not120, label %.lr.ph115.preheader, label %.lr.ph113

.preheader:                                       ; preds = %bb.p
  br i1 %i.ag, label %.lr.ph115.preheader, label %._crit_edge116

.lr.ph115.preheader:                              ; preds = %.preheader100, %.preheader
  br label %.lr.ph115

bb.n:                                             ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS2_Lb1EEES9_.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.lr.ph113:                                        ; preds = %.preheader100, %bb.p
  %.041112 = phi i64 [ %i.be, %bb.p ], [ 0, %.preheader100 ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.041112
  %i.ba = trunc nuw nsw i64 %.041112 to i32
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !70
  %i.bc = icmp eq i32 %i.bb, %i.ba
  %i.bd = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 324, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.bc)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %.lr.ph113
  %i.be = add nuw nsw i64 %.041112, 1             ; 2 uses
  %exitcond125.not = icmp eq i64 %i.be, %.042117
  br i1 %exitcond125.not, label %.preheader, label %.lr.ph113, !llvm.loop !546

bb.q:                                             ; preds = %.lr.ph113
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

._crit_edge116:                                   ; preds = %bb.r, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.bg = add nuw nsw i64 %.042117, 1             ; 2 uses
  %exitcond127.not = icmp eq i64 %i.bg, 11
  br i1 %exitcond127.not, label %bb.j, label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2ERKS3_.exit69, !llvm.loop !547

.lr.ph115:                                        ; preds = %.lr.ph115.preheader, %bb.r
  %.0114 = phi i64 [ %i.bn, %bb.r ], [ %i.af, %.lr.ph115.preheader ] ; 3 uses
  %i.bh = getelementptr [4 x i8], ptr %1, i64 %.0114
  %i.bi = getelementptr i8, ptr %i.bh, i64 -12
  %i.bj = trunc nuw nsw i64 %.0114 to i32
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !70
  %i.bl = icmp eq i32 %i.bk, %i.bj
  %i.bm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.1, i32 noundef 326, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_erase_ndI8value_ndLm10EEvv, i1 noundef zeroext %i.bl)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %.lr.ph115
  %i.bn = add nuw nsw i64 %.0114, 1               ; 2 uses
  %exitcond126.not = icmp eq i64 %i.bn, 10
end_hunk_0
begin_hunk_1_@_Z15test_emplace_2pI14counting_valueLm10EEvv:bb.a
  %i.a = add i64 %_ZZN14counting_value1cEvE2co.promoted, 10
  store i64 %i.a, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.b = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.1, i32 noundef 579, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc71 unwind label %bb.d

.noexc71:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.h, %thread-pre-split, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9container9bad_allocE
          catch ptr null                          ; 2 uses
  %.046 = extractvalue { ptr, i32 } %i.d, 1
  %.047 = extractvalue { ptr, i32 } %i.d, 0
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9container9bad_allocE) #25
  %i.f = icmp eq i32 %.046, %i.e
  %i.g = tail call ptr @__cxa_begin_catch(ptr %.047) #25 ; 0 uses
  br i1 %i.f, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost6detail12test_resultsEv()
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %thread-pre-split unwind label %bb.k

thread-pre-split:                                 ; preds = %bb.f, %bb.h
  %i.i = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.1, i32 noundef 581, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.preheader unwind label %bb.c ; 0 uses

.preheader154.preheader:                          ; preds = %thread-pre-split
  %i.j = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.l = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.1 unwind label %bb.l ; 0 uses

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.preheader154.9
  %i.m = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.o = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.1, i32 noundef 592, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.preheader unwind label %bb.m ; 0 uses

bb.g:                                             ; preds = %bb.d
  invoke void @_ZN5boost6detail17throw_failed_implEPKcS2_S2_iS2_(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 580, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_end_catch()
          to label %thread-pre-split unwind label %bb.c

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75 unwind label %bb.z

bb.j:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75 unwind label %bb.z

bb.k:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75

.preheader154.1:                                  ; preds = %.preheader154.preheader
  %i.s = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.2 unwind label %bb.l ; 0 uses

.preheader154.2:                                  ; preds = %.preheader154.1
  %i.t = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.3 unwind label %bb.l ; 0 uses

.preheader154.3:                                  ; preds = %.preheader154.2
  %i.u = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.4 unwind label %bb.l ; 0 uses

.preheader154.4:                                  ; preds = %.preheader154.3
  %i.v = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.5 unwind label %bb.l ; 0 uses

.preheader154.5:                                  ; preds = %.preheader154.4
  %i.w = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.6 unwind label %bb.l ; 0 uses

.preheader154.6:                                  ; preds = %.preheader154.5
  %i.x = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.7 unwind label %bb.l ; 0 uses

.preheader154.7:                                  ; preds = %.preheader154.6
  %i.y = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.8 unwind label %bb.l ; 0 uses

.preheader154.8:                                  ; preds = %.preheader154.7
  %i.z = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader154.9 unwind label %bb.l ; 0 uses

.preheader154.9:                                  ; preds = %.preheader154.8
  %i.aa = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 583, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %.preheader154.9, %.preheader154.8, %.preheader154.7, %.preheader154.6, %.preheader154.5, %.preheader154.4, %.preheader154.3, %.preheader154.2, %.preheader154.1, %.preheader154.preheader
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75

.preheader153.preheader:                          ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.ae = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.ag = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.1 unwind label %bb.n ; 0 uses

bb.m:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75

.preheader153.1:                                  ; preds = %.preheader153.preheader
  %i.ai = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.2 unwind label %bb.n ; 0 uses

.preheader153.2:                                  ; preds = %.preheader153.1
  %i.aj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.3 unwind label %bb.n ; 0 uses

.preheader153.3:                                  ; preds = %.preheader153.2
  %i.ak = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.4 unwind label %bb.n ; 0 uses

.preheader153.4:                                  ; preds = %.preheader153.3
  %i.al = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.5 unwind label %bb.n ; 0 uses

.preheader153.5:                                  ; preds = %.preheader153.4
  %i.am = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.6 unwind label %bb.n ; 0 uses

.preheader153.6:                                  ; preds = %.preheader153.5
  %i.an = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.7 unwind label %bb.n ; 0 uses

.preheader153.7:                                  ; preds = %.preheader153.6
  %i.ao = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.8 unwind label %bb.n ; 0 uses

.preheader153.8:                                  ; preds = %.preheader153.7
  %i.ap = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader153.9 unwind label %bb.n ; 0 uses

.preheader153.9:                                  ; preds = %.preheader153.8
  %i.aq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.1, i32 noundef 594, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %.preheader153.9, %.preheader153.8, %.preheader153.7, %.preheader153.6, %.preheader153.5, %.preheader153.4, %.preheader153.3, %.preheader153.2, %.preheader153.1, %.preheader153.preheader
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.at = add i64 %i.as, -1
  store i64 %i.at, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader: ; preds = %.preheader153.9
  %i.au = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.av = add i64 %i.au, -6                       ; 2 uses
  store i64 %i.av, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit.thread

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit90: ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97
  %i.be = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i96, -11
  store i64 %i.be, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  ret void

_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit.thread: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i = phi i64 [ %i.av, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader ], [ %i.dw, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97 ] ; 3 uses
  %indvars.iv202 = phi i64 [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader ], [ %indvars.iv.next203, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97 ] ; 9 uses
  %indvars.iv198 = phi i32 [ 5, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader ], [ %indvars.iv.next199, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97 ] ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %indvars.iv198, i32 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  store <4 x i32> <i32 0, i32 100, i32 1, i32 101>, ptr %0, align 16, !tbaa !18
  store <4 x i32> <i32 2, i32 102, i32 3, i32 103>, ptr %i.bb, align 16, !tbaa !18
  store i32 4, ptr %i.bc, align 16, !tbaa !72
  store i32 104, ptr %i.bd, align 4, !tbaa !74
  %i.bf = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, 5
  store i64 %i.bf, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %.idx151 = shl nuw nsw i64 %indvars.iv202, 3    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx151 ; 4 uses
  %i.bh = add nuw nsw i64 %indvars.iv202, 100     ; 2 uses
  %i.bi = or disjoint i64 %indvars.iv202, 200     ; 2 uses
  %.not.i.i.i92 = icmp samesign eq i64 %indvars.iv202, 5
  br i1 %.not.i.i.i92, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit.thread
  store i32 105, ptr %i.ax, align 8, !tbaa !72, !noalias !1268
  store i32 205, ptr %i.az, align 4, !tbaa !74, !noalias !1268
  %i.bj = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, 6
  store i64 %i.bj, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69, !noalias !1268
  store i64 6, ptr %i.aw, align 16, !tbaa !167, !noalias !1268
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE7emplaceIJiiEEENS0_12vec_iteratorIPS2_Lb0EEENS8_IS9_Lb1EEEDpOT_.exit

bb.p:                                             ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit.thread
  %gepdiff = sub nsw i64 40, %.idx151
  %1 = ashr exact i64 %gepdiff, 3                 ; 2 uses
  %i.bk = load <2 x i32>, ptr %i.ay, align 16, !tbaa !18, !noalias !1268
  store <2 x i32> %i.bk, ptr %i.ax, align 8, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.ay, align 16, !tbaa !72, !noalias !1268
  store i32 0, ptr %i.ba, align 4, !tbaa !74, !noalias !1268
  %i.bl = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, 6
  store i64 %i.bl, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69, !noalias !1268
  store i64 6, ptr %i.aw, align 16, !tbaa !167, !noalias !1268
  %2 = add nsw i64 %1, -1                         ; 4 uses
  %.not8.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.p
  %3 = add nsw i64 %1, -2
  %xtraiter = and i64 %2, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.011.i.i.i.i.prol = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.prol ], [ %i.ax, %.lr.ph.i.i.i.i.preheader ]
  %.0610.i.i.i.i.prol = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.i.preheader ]
  %.079.i.i.i.i.prol = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.prol ], [ %i.ay, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.bm = add i64 %.0610.i.i.i.i.prol, -1         ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.079.i.i.i.i.prol, i64 -8 ; 4 uses
  %i.bo = getelementptr inbounds i8, ptr %.011.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.079.i.i.i.i.prol, i64 -4
  %i.bq = load <2 x i32>, ptr %i.bn, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.bn, align 4, !tbaa !72, !noalias !1268
  store <2 x i32> %i.bq, ptr %i.bo, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.bp, align 4, !tbaa !74, !noalias !1268
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1273

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.011.i.i.i.i.unr = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.preheader ], [ %i.bo, %.lr.ph.i.i.i.i.prol ]
  %.0610.i.i.i.i.unr = phi i64 [ %2, %.lr.ph.i.i.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.i.i.prol ]
  %.079.i.i.i.i.unr = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.i.i.prol ]
  %i.br = icmp ult i64 %3, 3
  br i1 %i.br, label %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.0610.i.i.i.i = phi i64 [ %i.ce, %.lr.ph.i.i.i.i ], [ %.0610.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.079.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.bs = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -8 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -8
  %i.bu = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4
  %i.bv = load <2 x i32>, ptr %i.bs, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.bs, align 4, !tbaa !72, !noalias !1268
  store <2 x i32> %i.bv, ptr %i.bt, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.bu, align 4, !tbaa !74, !noalias !1268
  %i.bw = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -16 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -16
  %i.by = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -12
  %i.bz = load <2 x i32>, ptr %i.bw, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.bw, align 4, !tbaa !72, !noalias !1268
  store <2 x i32> %i.bz, ptr %i.bx, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.by, align 4, !tbaa !74, !noalias !1268
  %i.ca = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -24 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -24
  %i.cc = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -20
  %i.cd = load <2 x i32>, ptr %i.ca, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.ca, align 4, !tbaa !72, !noalias !1268
  store <2 x i32> %i.cd, ptr %i.cb, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.cc, align 4, !tbaa !74, !noalias !1268
  %i.ce = add i64 %.0610.i.i.i.i, -4              ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -32 ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %.011.i.i.i.i, i64 -32 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -28
  %i.ci = load <2 x i32>, ptr %i.cf, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.cf, align 4, !tbaa !72, !noalias !1268
  store <2 x i32> %i.ci, ptr %i.cg, align 4, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.ch, align 4, !tbaa !74, !noalias !1268
  %.not.i.i.i.i.3 = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !649

_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.p
  %i.cj = trunc nuw nsw i64 %i.bh to i32
  store i32 %i.cj, ptr %i.bg, align 8, !tbaa !72, !noalias !1268
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.cl = trunc nuw nsw i64 %i.bi to i32
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !74, !noalias !1268
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE7emplaceIJiiEEENS0_12vec_iteratorIPS2_Lb0EEENS8_IS9_Lb1EEEDpOT_.exit

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE7emplaceIJiiEEENS0_12vec_iteratorIPS2_Lb0EEENS8_IS9_Lb1EEEDpOT_.exit: ; preds = %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, %bb.o
  %i.cm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.1, i32 noundef 612, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.r       ; 0 uses

bb.q:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE7emplaceIJiiEEENS0_12vec_iteratorIPS2_Lb0EEENS8_IS9_Lb1EEEDpOT_.exit
  %i.cn = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.1, i32 noundef 613, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext true)
          to label %.preheader unwind label %bb.s ; 0 uses

.preheader:                                       ; preds = %bb.q
  %.not = icmp eq i64 %indvars.iv202, 0
  %.pre247 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69 ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.co = add i64 %.pre247, 1
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.t, %.preheader
  %i.cp = phi i64 [ %.pre247, %.preheader ], [ %i.dp, %bb.t ]
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.cr = load i32, ptr %i.bg, align 8, !tbaa !72
  %i.cs = zext i32 %i.cr to i64
  %i.ct = icmp eq i64 %i.bh, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = zext i32 %i.cv to i64
  %i.cx = icmp eq i64 %i.bi, %i.cw
  %i.cy = select i1 %i.ct, i1 %i.cx, i1 false
  %i.cz = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.1, i32 noundef 616, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext %i.cy)
          to label %bb.v unwind label %bb.w       ; 0 uses

bb.r:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE7emplaceIJiiEEENS0_12vec_iteratorIPS2_Lb0EEENS8_IS9_Lb1EEEDpOT_.exit
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105

bb.s:                                             ; preds = %bb.q
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %i.dc = phi i64 [ %i.co, %.lr.ph.preheader ], [ %i.do, %bb.t ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.de = add nuw nsw i64 %indvars.iv, 100
  store i64 %i.dc, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.df = load i32, ptr %i.dd, align 8, !tbaa !72
  %i.dg = zext i32 %i.df to i64
  %i.dh = icmp eq i64 %indvars.iv, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = zext i32 %i.dj to i64
  %i.dl = icmp eq i64 %i.de, %i.dk
  %i.dm = select i1 %i.dh, i1 %i.dl, i1 false
  %i.dn = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.1, i32 noundef 615, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext %i.dm)
          to label %bb.t unwind label %bb.u       ; 0 uses

bb.t:                                             ; preds = %.lr.ph
  %i.do = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69 ; 2 uses
  %i.dp = add i64 %i.do, -1                       ; 2 uses
  store i64 %i.dp, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv202
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1274

bb.u:                                             ; preds = %.lr.ph
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.ds = add i64 %i.dr, -1
  store i64 %i.ds, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105

bb.v:                                             ; preds = %._crit_edge
  %i.dt = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69 ; 2 uses
  %i.du = add i64 %i.dt, -1                       ; 2 uses
  store i64 %i.du, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.dv = icmp samesign ult i64 %indvars.iv202, 5
  br i1 %i.dv, label %.lr.ph178.preheader, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97

.lr.ph178.preheader:                              ; preds = %bb.v
  %wide.trip.count200 = zext nneg i32 %smax to i64
  br label %.lr.ph178

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97: ; preds = %bb.x, %bb.v
  %_ZZN14counting_value1cEvE2co.promoted.i.i96 = phi i64 [ %i.du, %bb.v ], [ %i.ep, %bb.x ] ; 2 uses
  %i.dw = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i96, -6 ; 2 uses
  store i64 %i.dw, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %indvars.iv.next199 = add nsw i32 %indvars.iv198, -1
  %exitcond205.not = icmp eq i64 %indvars.iv.next203, 6
  br i1 %exitcond205.not, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit90, label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2ERKS3_.exit.thread, !llvm.loop !1275

bb.w:                                             ; preds = %._crit_edge
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %i.dy = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.dz = add i64 %i.dy, -1
  store i64 %i.dz, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105

.lr.ph178:                                        ; preds = %.lr.ph178.preheader, %bb.x
  %i.ea = phi i64 [ %i.dt, %.lr.ph178.preheader ], [ %i.eo, %bb.x ]
  %indvars.iv195 = phi i64 [ 0, %.lr.ph178.preheader ], [ %indvars.iv.next196, %bb.x ] ; 2 uses
  %i.eb = add nuw nsw i64 %indvars.iv195, %indvars.iv202 ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = add nuw nsw i64 %i.eb, 100
  store i64 %i.ea, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.ef = load i32, ptr %i.ed, align 8, !tbaa !72
  %i.eg = zext i32 %i.ef to i64
  %i.eh = icmp eq i64 %i.eb, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = zext i32 %i.ej to i64
  %i.el = icmp eq i64 %i.ee, %i.ek
  %i.em = select i1 %i.eh, i1 %i.el, i1 false
  %i.en = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.1, i32 noundef 618, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_emplace_2pI14counting_valueLm10EEvv, i1 noundef zeroext %i.em)
          to label %bb.x unwind label %bb.y       ; 0 uses

bb.x:                                             ; preds = %.lr.ph178
  %i.eo = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69 ; 2 uses
  %i.ep = add i64 %i.eo, -1                       ; 2 uses
  store i64 %i.ep, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count200
  br i1 %exitcond201.not, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97, label %.lr.ph178, !llvm.loop !1276

bb.y:                                             ; preds = %.lr.ph178
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.es = add i64 %i.er, -1
  store i64 %i.es, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105: ; preds = %bb.r, %bb.s, %bb.u, %bb.w, %bb.y
  %.pn60 = phi { ptr, i32 } [ %i.dq, %bb.u ], [ %i.eq, %bb.y ], [ %i.dx, %bb.w ], [ %i.db, %bb.s ], [ %i.da, %bb.r ]
  %_ZZN14counting_value1cEvE2co.promoted.i.i100 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.et = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i100, -6
  store i64 %i.et, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit75: ; preds = %bb.m, %bb.n, %bb.k, %bb.j, %bb.i, %bb.l, %bb.c, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105
  %.sink253 = phi i64 [ -5, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105 ], [ -10, %bb.k ], [ -10, %bb.c ], [ -10, %bb.l ], [ -10, %bb.i ], [ -10, %bb.j ], [ -10, %bb.n ], [ -10, %bb.m ]
  %.pn67.pn = phi { ptr, i32 } [ %.pn60, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit105 ], [ %i.r, %bb.k ], [ %i.c, %bb.c ], [ %i.ab, %bb.l ], [ %i.p, %bb.i ], [ %i.q, %bb.j ], [ %i.ar, %bb.n ], [ %i.ah, %bb.m ]
  %_ZZN14counting_value1cEvE2co.promoted.i.i104.pre = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.eu = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i104.pre, %.sink253
  store i64 %i.eu, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
end_hunk_1
begin_hunk_2_@_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_NS2_21insert_n_copies_proxyIS5_EEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_:bb.a
  %i.am = sub i64 %i.al, %i.b
  %i.an = and i64 %i.am, -8                       ; 4 uses
  %i.ao = getelementptr i8, ptr %1, i64 %i.ak
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.an
  %scevgep = getelementptr i8, ptr %i.ap, i64 4
  %i.aq = getelementptr i8, ptr %1, i64 %i.an
  %scevgep104 = getelementptr i8, ptr %i.aq, i64 4
  %i.ar = getelementptr i8, ptr %1, i64 %i.ak
  %scevgep105 = getelementptr i8, ptr %i.ar, i64 4
  %i.as = getelementptr i8, ptr %1, i64 %i.ak
  %i.at = getelementptr i8, ptr %i.as, i64 %i.an
  %scevgep106 = getelementptr i8, ptr %i.at, i64 8
  %scevgep107 = getelementptr i8, ptr %1, i64 4
  %i.au = getelementptr i8, ptr %1, i64 %i.an
  %scevgep108 = getelementptr i8, ptr %i.au, i64 8
  %bound0 = icmp ult ptr %i.af, %scevgep104
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0109 = icmp ult ptr %scevgep105, %scevgep108
  %bound1110 = icmp ult ptr %scevgep107, %scevgep106
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx = or i1 %found.conflict, %found.conflict111
  br i1 %conflict.rdx, label %.lr.ph.i46.preheader, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck
  %n.vec115 = and i64 %i.aj, 4611686018427387900  ; 3 uses
  %i.av = shl i64 %n.vec115, 3                    ; 2 uses
  %i.aw = getelementptr i8, ptr %1, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.af, i64 %i.av
  %i.ay = insertelement <2 x i64> <i64 poison, i64 0>, i64 %_ZZN14counting_value1cEvE2co.promoted.i45, i64 0
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next133, %vector.body116 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ay, %vector.ph114 ], [ %i.bb, %vector.body116 ]
  %vec.phi118 = phi <2 x i64> [ zeroinitializer, %vector.ph114 ], [ %i.bc, %vector.body116 ]
  %i.az = shl i64 %index117, 3                    ; 3 uses
  %i.ba = or disjoint i64 %i.az, 16               ; 2 uses
  %next.gep119 = getelementptr i8, ptr %1, i64 %i.az ; 2 uses
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.ba ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.af, i64 %i.az ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.af, i64 %i.ba ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep121) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep123) ]
  %wide.vec125 = load <4 x i32>, ptr %next.gep119, align 4, !tbaa !18
  %wide.vec128 = load <4 x i32>, ptr %next.gep120, align 4, !tbaa !18
  store <4 x i32> %wide.vec125, ptr %next.gep121, align 4, !tbaa !18
  store <4 x i32> %wide.vec128, ptr %next.gep123, align 4, !tbaa !18
  store <4 x i32> zeroinitializer, ptr %next.gep119, align 4, !tbaa !18
  store <4 x i32> zeroinitializer, ptr %next.gep120, align 4, !tbaa !18
  %i.bb = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.bc = add <2 x i64> %vec.phi118, splat (i64 1) ; 2 uses
  %index.next133 = add nuw i64 %index117, 4       ; 2 uses
  %i.bd = icmp eq i64 %index.next133, %n.vec115
  br i1 %i.bd, label %middle.block134, label %vector.body116, !llvm.loop !2283

middle.block134:                                  ; preds = %vector.body116
  %bin.rdx = add <2 x i64> %i.bc, %i.bb
  %i.be = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n135 = icmp eq i64 %i.aj, %n.vec115
  br i1 %cmp.n135, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %.lr.ph.i46.preheader

.lr.ph.i46.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i44, %middle.block134
  %.018.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader.i44 ], [ %i.aw, %middle.block134 ]
  %.01517.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.preheader.i44 ], [ %i.ax, %middle.block134 ]
  %.ph = phi i64 [ %_ZZN14counting_value1cEvE2co.promoted.i45, %vector.memcheck ], [ %_ZZN14counting_value1cEvE2co.promoted.i45, %.lr.ph.preheader.i44 ], [ %i.be, %middle.block134 ]
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.lr.ph.i46.preheader, %.lr.ph.i46
  %.018.i = phi ptr [ %i.bj, %.lr.ph.i46 ], [ %.018.i.ph, %.lr.ph.i46.preheader ] ; 4 uses
  %.01517.i = phi ptr [ %i.bk, %.lr.ph.i46 ], [ %.01517.i.ph, %.lr.ph.i46.preheader ] ; 3 uses
  %i.bf = phi i64 [ %i.bi, %.lr.ph.i46 ], [ %.ph, %.lr.ph.i46.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.018.i, i64 4
  %i.bh = load <2 x i32>, ptr %.018.i, align 4, !tbaa !18
  store <2 x i32> %i.bh, ptr %.01517.i, align 4, !tbaa !18
  store i32 0, ptr %.018.i, align 4, !tbaa !72
  store i32 0, ptr %i.bg, align 4, !tbaa !74
  %i.bi = add i64 %i.bf, 1                        ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  %.not.i47 = icmp eq ptr %i.bj, %2
  br i1 %.not.i47, label %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %.lr.ph.i46, !llvm.loop !2284

_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit: ; preds = %.lr.ph.i46, %middle.block134
  %.lcssa = phi i64 [ %i.be, %middle.block134 ], [ %i.bi, %.lr.ph.i46 ]
  store i64 %.lcssa, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %i.bl = load <2 x i32>, ptr %4, align 4, !tbaa !18 ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.d, 4
  br i1 %min.iters.check139, label %scalar.ph138.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit
  %n.vec141 = and i64 %i.d, -4                    ; 3 uses
  %i.bm = and i64 %i.d, 3
  %i.bn = shl nsw i64 %n.vec141, 3
  %i.bo = getelementptr i8, ptr %1, i64 %i.bn
  %interleaved.vec150 = shufflevector <2 x i32> %i.bl, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph140
  %index147 = phi i64 [ 0, %vector.ph140 ], [ %index.next152, %vector.body146 ] ; 2 uses
  %i.bp = shl i64 %index147, 3                    ; 2 uses
  %next.gep148 = getelementptr i8, ptr %1, i64 %i.bp
  %i.bq = getelementptr i8, ptr %1, i64 %i.bp
  %next.gep149 = getelementptr i8, ptr %i.bq, i64 16
  store <4 x i32> %interleaved.vec150, ptr %next.gep148, align 4, !tbaa !18
  store <4 x i32> %interleaved.vec150, ptr %next.gep149, align 4, !tbaa !18
  %index.next152 = add nuw i64 %index147, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next152, %n.vec141
  br i1 %i.br, label %middle.block153, label %vector.body146, !llvm.loop !2285

middle.block153:                                  ; preds = %vector.body146
  %cmp.n154 = icmp eq i64 %i.d, %n.vec141
  br i1 %cmp.n154, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit57, label %scalar.ph138.preheader

scalar.ph138.preheader:                           ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, %middle.block153
  %.07.i53.ph = phi i64 [ %i.d, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.bm, %middle.block153 ]
  %.046.i54.ph = phi ptr [ %1, %_ZN5boost9container24uninitialized_move_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.bo, %middle.block153 ]
  br label %scalar.ph138

scalar.ph138:                                     ; preds = %scalar.ph138.preheader, %scalar.ph138
  %.07.i53 = phi i64 [ %i.bs, %scalar.ph138 ], [ %.07.i53.ph, %scalar.ph138.preheader ]
  %.046.i54 = phi ptr [ %i.bt, %scalar.ph138 ], [ %.046.i54.ph, %scalar.ph138.preheader ] ; 2 uses
  %i.bs = add i64 %.07.i53, -1                    ; 2 uses
  store <2 x i32> %i.bl, ptr %.046.i54, align 4, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %.046.i54, i64 8
  %.not.i55 = icmp eq i64 %i.bs, 0
  br i1 %.not.i55, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit57, label %scalar.ph138, !llvm.loop !2286

_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit57: ; preds = %scalar.ph138, %middle.block153, %bb.c
  %i.bu = sub i64 %3, %i.d                        ; 6 uses
  %_ZZN14counting_value1cEvE2co.promoted.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.bv = load <2 x i32>, ptr %4, align 4, !tbaa !18 ; 2 uses
  %min.iters.check158 = icmp ult i64 %i.bu, 4
  br i1 %min.iters.check158, label %scalar.ph157.preheader, label %vector.ph159

vector.ph159:                                     ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit57
  %n.vec160 = and i64 %i.bu, -4                   ; 3 uses
  %i.bw = and i64 %i.bu, 3
  %i.bx = shl i64 %n.vec160, 3
  %i.by = getelementptr i8, ptr %2, i64 %i.bx
  %interleaved.vec171 = shufflevector <2 x i32> %i.bv, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph159
  %index166 = phi i64 [ 0, %vector.ph159 ], [ %index.next173, %vector.body165 ] ; 2 uses
  %i.bz = shl i64 %index166, 3                    ; 2 uses
  %next.gep167 = getelementptr i8, ptr %2, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %2, i64 %i.bz
  %next.gep169 = getelementptr i8, ptr %i.ca, i64 16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep167) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep169) ]
  store <4 x i32> %interleaved.vec171, ptr %next.gep167, align 4, !tbaa !18
  store <4 x i32> %interleaved.vec171, ptr %next.gep169, align 4, !tbaa !18
  %index.next173 = add nuw i64 %index166, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next173, %n.vec160
  br i1 %i.cb, label %middle.block174, label %vector.body165, !llvm.loop !2287

middle.block174:                                  ; preds = %vector.body165
  %cmp.n175 = icmp eq i64 %i.bu, %n.vec160
  br i1 %cmp.n175, label %._crit_edge.i.i, label %scalar.ph157.preheader

scalar.ph157.preheader:                           ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit57, %middle.block174
  %.017.i.i.ph = phi i64 [ %i.bu, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit57 ], [ %i.bw, %middle.block174 ]
  %.01416.i.i.ph = phi ptr [ %2, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit57 ], [ %i.by, %middle.block174 ]
  br label %scalar.ph157

scalar.ph157:                                     ; preds = %scalar.ph157.preheader, %scalar.ph157
  %.017.i.i = phi i64 [ %i.cc, %scalar.ph157 ], [ %.017.i.i.ph, %scalar.ph157.preheader ]
  %.01416.i.i = phi ptr [ %i.cd, %scalar.ph157 ], [ %.01416.i.i.ph, %scalar.ph157.preheader ] ; 3 uses
  %i.cc = add i64 %.017.i.i, -1                   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i) ]
  store <2 x i32> %i.bv, ptr %.01416.i.i, align 4, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 8
  %.not.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %scalar.ph157, !llvm.loop !2288

._crit_edge.i.i:                                  ; preds = %scalar.ph157, %middle.block174
  %i.ce = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.bu
  store i64 %i.ce, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  br label %_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit

_ZN5boost9container3dtl23scoped_destructor_rangeINS1_24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEED2Ev.exit: ; preds = %scalar.ph87, %middle.block100, %._crit_edge.i.i, %_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::static_vector.35", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  %indvars.iv = phi i64 [ 5, %bb.a ], [ %indvars.iv.next, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 2 uses
  %.03888 = phi i64 [ 0, %bb.a ], [ %i.dw, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 10 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = load i64, ptr %i.a, align 8, !tbaa !300  ; 12 uses
  %i.c = icmp ugt i64 %i.b, 10
  br i1 %i.c, label %bb.d, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.c
  %.not17.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not17.i.i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.d = shl nuw nsw i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %0, i64 %i.d, i1 false), !tbaa !78
  %i.e = trunc nuw nsw i64 %i.b to i32
  %i.f = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.e
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %.not.i.i = icmp samesign ugt i64 %i.b, 7
  br i1 %.not.i.i, label %bb.g, label %.thread, !prof !679

.thread:                                          ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %bb.e
  %.idx63106 = shl nuw nsw i64 %.03888, 2         ; 3 uses
  %3 = getelementptr i8, ptr %2, i64 %.idx63106   ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 2                 ; 3 uses
  %i.g = getelementptr i8, ptr %2, i64 %.idx      ; 11 uses
  %i.h = icmp samesign eq i64 %i.b, %.03888
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.i.preheader, label %bb.f

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted80 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !2289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa !78, !noalias !2289
  %i.i = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted80, 3
  store i32 %i.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !2289
  br label %.loopexit67

bb.f:                                             ; preds = %.thread
  %gepdiff = sub nsw i64 %.idx, %.idx63106        ; 4 uses
  %i.j = ashr exact i64 %gepdiff, 2               ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.j, 3
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !2296 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i49.preheader.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %bb.f
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 -12 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.m = load <2 x i32>, ptr %i.k, align 4, !tbaa !78, !noalias !2296
  store i32 0, ptr %i.k, align 4, !tbaa !78, !noalias !2296
  store <2 x i32> %i.m, ptr %i.g, align 4, !tbaa !78, !noalias !2296
  store i32 0, ptr %i.l, align 4, !tbaa !78, !noalias !2296
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = load i32, ptr %i.n, align 4, !tbaa !78, !noalias !2296
  store i32 %i.p, ptr %i.o, align 4, !tbaa !78, !noalias !2296
  store i32 0, ptr %i.n, align 4, !tbaa !78, !noalias !2296
  %i.q = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, 3
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !2296
  %i.r = add nsw i64 %.idx, -12
  %.not8.i.i.i.i.i.i = icmp eq i64 %.idx63106, %i.r
  br i1 %.not8.i.i.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i.preheader

.lr.ph.i40.i.i.i.i.i.preheader:                   ; preds = %.lr.ph.i.i10.i.i.i.i
  %i.s = sub nsw i64 %i.b, %.03888                ; 2 uses
  %i.t = add i64 %i.s, 4611686018427387900
  %i.u = and i64 %i.t, 4611686018427387903
  %i.v = add i64 %i.s, 5
  %xtraiter = and i64 %i.v, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol

.lr.ph.i40.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i40.i.i.i.i.i.preheader, %.lr.ph.i40.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i40.i.i.i.i.i.prol ], [ %i.g, %.lr.ph.i40.i.i.i.i.i.preheader ]
  %.079.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i40.i.i.i.i.i.prol ], [ %i.k, %.lr.ph.i40.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i40.i.i.i.i.i.prol ], [ 0, %.lr.ph.i40.i.i.i.i.i.preheader ]
  %i.w = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i.prol, i64 -4 ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i.prol, i64 -4 ; 3 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !78, !noalias !2296
  store i32 %i.y, ptr %i.x, align 4, !tbaa !78, !noalias !2296
  store i32 0, ptr %i.w, align 4, !tbaa !78, !noalias !2296
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol, !llvm.loop !2297

.lr.ph.i40.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i40.i.i.i.i.i.prol, %.lr.ph.i40.i.i.i.i.i.preheader
  %.010.i.i.i.i.i.i.unr = phi ptr [ %i.g, %.lr.ph.i40.i.i.i.i.i.preheader ], [ %i.x, %.lr.ph.i40.i.i.i.i.i.prol ]
  %.079.i.i.i.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i40.i.i.i.i.i.preheader ], [ %i.w, %.lr.ph.i40.i.i.i.i.i.prol ]
  %i.z = icmp samesign ult i64 %i.u, 7
  br i1 %i.z, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i

.lr.ph.i40.i.i.i.i.i:                             ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit, %.lr.ph.i40.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i40.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.079.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i40.i.i.i.i.i ], [ %.079.i.i.i.i.i.i.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.aa = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -4
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !78, !noalias !2296
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !78, !noalias !2296
  store i32 0, ptr %i.aa, align 4, !tbaa !78, !noalias !2296
  %i.ad = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -8
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !78, !noalias !2296
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !78, !noalias !2296
  store i32 0, ptr %i.ad, align 4, !tbaa !78, !noalias !2296
  %i.ag = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -12 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -12
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !78, !noalias !2296
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !78, !noalias !2296
  store i32 0, ptr %i.ag, align 4, !tbaa !78, !noalias !2296
  %i.aj = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -16 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -16
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !78, !noalias !2296
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !78, !noalias !2296
  store i32 0, ptr %i.aj, align 4, !tbaa !78, !noalias !2296
  %i.am = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -20 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -20
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !78, !noalias !2296
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !78, !noalias !2296
  store i32 0, ptr %i.am, align 4, !tbaa !78, !noalias !2296
  %i.ap = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -24
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !78, !noalias !2296
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !78, !noalias !2296
  store i32 0, ptr %i.ap, align 4, !tbaa !78, !noalias !2296
  %i.as = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -28 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -28
  %i.au = load i32, ptr %i.as, align 4, !tbaa !78, !noalias !2296
  store i32 %i.au, ptr %i.at, align 4, !tbaa !78, !noalias !2296
  store i32 0, ptr %i.as, align 4, !tbaa !78, !noalias !2296
  %i.av = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -32 ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !78, !noalias !2296
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !78, !noalias !2296
  store i32 0, ptr %i.av, align 4, !tbaa !78, !noalias !2296
  %.not.i41.i.i.i.i.i.7 = icmp eq ptr %3, %i.av
  br i1 %.not.i41.i.i.i.i.i.7, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i, !llvm.loop !686

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i: ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit, %.lr.ph.i40.i.i.i.i.i, %.lr.ph.i.i10.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !tbaa !78, !noalias !2298
  br label %.loopexit67

.lr.ph.i49.preheader.i.i.i.i.i:                   ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.az = sub nsw i64 %i.b, %.03888               ; 2 uses
  %i.ba = add i64 %i.az, 4611686018427387903
  %i.bb = and i64 %i.ba, 4611686018427387903
  %xtraiter170 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %.lr.ph.i49.i.i.i.i.i.prol.loopexit, label %.lr.ph.i49.i.i.i.i.i.prol

.lr.ph.i49.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i49.preheader.i.i.i.i.i, %.lr.ph.i49.i.i.i.i.i.prol
  %i.bc = phi i32 [ %i.be, %.lr.ph.i49.i.i.i.i.i.prol ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, %.lr.ph.i49.preheader.i.i.i.i.i ] ; 2 uses
  %.018.i.i.i.i.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i49.i.i.i.i.i.prol ], [ %3, %.lr.ph.i49.preheader.i.i.i.i.i ] ; 3 uses
  %.01517.i.i.i.i.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i49.i.i.i.i.i.prol ], [ %i.ay, %.lr.ph.i49.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter172 = phi i64 [ %prol.iter172.next, %.lr.ph.i49.i.i.i.i.i.prol ], [ 0, %.lr.ph.i49.preheader.i.i.i.i.i ]
  %i.bd = load i32, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !78, !noalias !2296
  store i32 %i.bd, ptr %.01517.i.i.i.i.i.i.prol, align 4, !tbaa !78, !noalias !2296
  store i32 0, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !78, !noalias !2296
  %i.be = add i32 %i.bc, 1                        ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter172.next = add i64 %prol.iter172, 1   ; 2 uses
  %prol.iter172.cmp.not = icmp eq i64 %prol.iter172.next, %xtraiter170
  br i1 %prol.iter172.cmp.not, label %.lr.ph.i49.i.i.i.i.i.prol.loopexit, label %.lr.ph.i49.i.i.i.i.i.prol, !llvm.loop !2301

.lr.ph.i49.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i49.i.i.i.i.i.prol, %.lr.ph.i49.preheader.i.i.i.i.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i49.preheader.i.i.i.i.i ], [ %i.bc, %.lr.ph.i49.i.i.i.i.i.prol ]
  %.unr = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, %.lr.ph.i49.preheader.i.i.i.i.i ], [ %i.be, %.lr.ph.i49.i.i.i.i.i.prol ]
  %.018.i.i.i.i.i.i.unr = phi ptr [ %3, %.lr.ph.i49.preheader.i.i.i.i.i ], [ %i.bf, %.lr.ph.i49.i.i.i.i.i.prol ]
  %.01517.i.i.i.i.i.i.unr = phi ptr [ %i.ay, %.lr.ph.i49.preheader.i.i.i.i.i ], [ %i.bg, %.lr.ph.i49.i.i.i.i.i.prol ]
  %i.bh = icmp samesign ult i64 %i.bb, 3
  br i1 %i.bh, label %.lr.ph.i.i52.i.i.i.i.i.preheader, label %.lr.ph.i49.i.i.i.i.i

.lr.ph.i49.i.i.i.i.i:                             ; preds = %.lr.ph.i49.i.i.i.i.i.prol.loopexit, %.lr.ph.i49.i.i.i.i.i
  %i.bi = phi i32 [ %i.bt, %.lr.ph.i49.i.i.i.i.i ], [ %.unr, %.lr.ph.i49.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.018.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i49.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i49.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01517.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i49.i.i.i.i.i ], [ %.01517.i.i.i.i.i.i.unr, %.lr.ph.i49.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bj = load i32, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !78, !noalias !2296
  store i32 %i.bj, ptr %.01517.i.i.i.i.i.i, align 4, !tbaa !78, !noalias !2296
  store i32 0, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !78, !noalias !2296
  %i.bk = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 4
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !78, !noalias !2296
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !78, !noalias !2296
  store i32 0, ptr %i.bk, align 4, !tbaa !78, !noalias !2296
  %i.bn = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 8
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !78, !noalias !2296
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !78, !noalias !2296
  store i32 0, ptr %i.bn, align 4, !tbaa !78, !noalias !2296
  %i.bq = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 12
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !78, !noalias !2296
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !78, !noalias !2296
  store i32 0, ptr %i.bq, align 4, !tbaa !78, !noalias !2296
  %i.bt = add i32 %i.bi, 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 16
  %.not.i50.i.i.i.i.i.3 = icmp eq ptr %i.bu, %i.g
  br i1 %.not.i50.i.i.i.i.i.3, label %.lr.ph.i.i52.i.i.i.i.i.preheader.unr-lcssa, label %.lr.ph.i49.i.i.i.i.i, !llvm.loop !688

.lr.ph.i.i52.i.i.i.i.i.preheader.unr-lcssa:       ; preds = %.lr.ph.i49.i.i.i.i.i
  %i.bw = add i32 %i.bi, 3
  br label %.lr.ph.i.i52.i.i.i.i.i.preheader

.lr.ph.i.i52.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i49.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i.i.i.preheader.unr-lcssa
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph.i49.i.i.i.i.i.prol.loopexit ], [ %i.bw, %.lr.ph.i.i52.i.i.i.i.i.preheader.unr-lcssa ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr nonnull align 8 %1, i64 %gepdiff, i1 false), !tbaa !78, !noalias !2302
  %scevgep97 = getelementptr i8, ptr %1, i64 %gepdiff
  %i.bx = sub i64 12, %gepdiff
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %scevgep97, i64 %i.bx, i1 false), !tbaa !78, !noalias !2305
  %i.by = add i32 %.lcssa, 4
  %i.bz = trunc nuw nsw i64 %i.j to i32
  %i.ca = sub i32 %i.by, %i.bz
  store i32 %i.ca, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !2305
  br label %.loopexit67

bb.g:                                             ; preds = %bb.e
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

.loopexit67:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, %.lr.ph.i.i52.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.preheader
  %i.cb = add nuw nsw i64 %i.b, 3                 ; 11 uses
  %i.cc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %.loopexit67
  %i.cd = icmp eq i64 %i.cb, 8
  %i.ce = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 348, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext %i.cd)
          to label %.preheader65 unwind label %bb.k ; 0 uses

.preheader65:                                     ; preds = %bb.h
  %.not = icmp eq i64 %.03888, 0
  %.pre101 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  br i1 %.not, label %.preheader64, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader65
  %i.cf = add i32 %.pre101, 1
  br label %.lr.ph

.preheader64:                                     ; preds = %bb.l, %.preheader65
  %i.cg = phi i32 [ %.pre101, %.preheader65 ], [ %i.cv, %bb.l ]
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03888 ; 4 uses
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ci = load i32, ptr %invariant.gep, align 4, !tbaa !78
  %i.cj = icmp eq i32 %i.ci, 100
  %i.ck = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext %i.cj)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.i:                                             ; preds = %bb.g
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i43

bb.j:                                             ; preds = %.loopexit67
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i43

bb.k:                                             ; preds = %bb.h
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i43

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %i.co = phi i32 [ %i.cu, %bb.l ], [ %i.cf, %.lr.ph.preheader ]
  %.03482 = phi i64 [ %i.cw, %bb.l ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03482
  %i.cq = trunc nuw nsw i64 %.03482 to i32
  store i32 %i.co, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !78
  %i.cs = icmp eq i32 %i.cr, %i.cq
  %i.ct = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 350, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext %i.cs)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %.lr.ph
  %i.cu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.cv = add i32 %i.cu, -1                       ; 2 uses
  store i32 %i.cv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.cw = add nuw nsw i64 %.03482, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cw, %.03888
  br i1 %exitcond.not, label %.preheader64, label %.lr.ph, !llvm.loop !2308

bb.m:                                             ; preds = %.lr.ph
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  br label %.lr.ph.i.preheader.i43

.lr.ph87:                                         ; preds = %.preheader
  %i.da = trunc nuw nsw i64 %.03888 to i32
  br label %bb.q

bb.n:                                             ; preds = %.preheader64
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.db = load i32, ptr %gep.1, align 4, !tbaa !78
  %i.dc = icmp eq i32 %i.db, 101
  %i.dd = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext %i.dc)
          to label %bb.o unwind label %bb.p       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.de = load i32, ptr %gep.2, align 4, !tbaa !78
  %i.df = icmp eq i32 %i.de, 102
  %i.dg = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext %i.df)
          to label %.preheader unwind label %bb.p ; 0 uses

.preheader:                                       ; preds = %bb.o
  %i.dh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.di = add i32 %i.dh, -1                       ; 2 uses
  store i32 %i.di, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %.not89 = icmp eq i64 %.03888, 5
  br i1 %.not89, label %.lr.ph.i.preheader.i, label %.lr.ph87

bb.p:                                             ; preds = %bb.o, %bb.n, %.preheader64
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  br label %.lr.ph.i.preheader.i43

.lr.ph.i.preheader.i:                             ; preds = %bb.r, %.preheader
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = phi i32 [ %i.di, %.preheader ], [ %i.ef, %bb.r ]
  %min.iters.check = icmp ult i64 %i.b, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.cb, 24                      ; 3 uses
  %i.dm = and i64 %i.cb, 7
  %i.dn = shl nuw nsw i64 %n.vec, 2
  %i.do = getelementptr i8, ptr %2, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dp = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.dp ; 2 uses
  %i.dq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 8, !tbaa !78
  store <4 x i32> splat (i32 -2147483648), ptr %i.dq, align 8, !tbaa !78
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !2309

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.05.i.i.ph = phi i64 [ %i.cb, %.lr.ph.i.preheader.i ], [ %i.dm, %middle.block ]
  %storemerge4.i.i.ph = phi ptr [ %2, %.lr.ph.i.preheader.i ], [ %i.do, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ds, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.dt, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ds = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !78
  %i.dt = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i41 = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i41, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !2310

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.lr.ph.i.i, %middle.block
  %i.du = trunc nuw nsw i64 %i.cb to i32
  %i.dv = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.du
  store i32 %i.dv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.dw = add nuw nsw i64 %.03888, 1              ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond100.not = icmp eq i64 %i.dw, 6
  br i1 %exitcond100.not, label %bb.b, label %bb.c, !llvm.loop !2311

bb.q:                                             ; preds = %.lr.ph87, %bb.r
  %i.dx = phi i32 [ %i.dh, %.lr.ph87 ], [ %i.ee, %bb.r ]
  %.086 = phi i64 [ 0, %.lr.ph87 ], [ %i.eg, %bb.r ] ; 3 uses
  %gep85 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.086
  %i.dy = getelementptr inbounds nuw i8, ptr %gep85, i64 12
  %i.dz = trunc nuw nsw i64 %.086 to i32
  %i.ea = add nuw nsw i32 %i.dz, %i.da
  store i32 %i.dx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.eb = load i32, ptr %i.dy, align 4, !tbaa !78
  %i.ec = icmp eq i32 %i.eb, %i.ea
  %i.ed = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEES5_EvRKT1_RKT2_, i1 noundef zeroext %i.ec)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.ee = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.ef = add i32 %i.ee, -1                       ; 2 uses
  store i32 %i.ef, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.eg = add nuw nsw i64 %.086, 1                ; 2 uses
  %exitcond99.not = icmp eq i64 %i.eg, %umax
  br i1 %exitcond99.not, label %.lr.ph.i.preheader.i, label %bb.q, !llvm.loop !2312

bb.s:                                             ; preds = %bb.q
  %i.eh = landingpad { ptr, i32 }
          cleanup
  %i.ei = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ej = add i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  br label %.lr.ph.i.preheader.i43

.lr.ph.i.preheader.i43:                           ; preds = %bb.s, %bb.p, %bb.m, %bb.k, %bb.j, %bb.i
  %i.ek = phi i64 [ %i.b, %bb.i ], [ %i.cb, %bb.m ], [ %i.cb, %bb.p ], [ %i.cb, %bb.s ], [ %i.cb, %bb.k ], [ %i.cb, %bb.j ] ; 6 uses
  %.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.i ], [ %i.cx, %bb.m ], [ %i.dj, %bb.p ], [ %i.eh, %bb.s ], [ %i.cn, %bb.k ], [ %i.cm, %bb.j ]
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i44 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %min.iters.check143 = icmp ult i64 %i.ek, 8
  br i1 %min.iters.check143, label %.lr.ph.i.i45.preheader, label %vector.ph144

vector.ph144:                                     ; preds = %.lr.ph.i.preheader.i43
  %n.vec145 = and i64 %i.ek, -8                   ; 3 uses
  %i.el = and i64 %i.ek, 7
  %i.em = shl i64 %n.vec145, 2
  %i.en = getelementptr i8, ptr %2, i64 %i.em
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next149, %vector.body146 ] ; 2 uses
  %i.eo = shl i64 %index147, 2
  %next.gep148 = getelementptr i8, ptr %2, i64 %i.eo ; 2 uses
  %i.ep = getelementptr i8, ptr %next.gep148, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep148, align 8, !tbaa !78
  store <4 x i32> splat (i32 -2147483648), ptr %i.ep, align 8, !tbaa !78
  %index.next149 = add nuw i64 %index147, 8       ; 2 uses
  %i.eq = icmp eq i64 %index.next149, %n.vec145
  br i1 %i.eq, label %middle.block150, label %vector.body146, !llvm.loop !2313

middle.block150:                                  ; preds = %vector.body146
  %cmp.n151 = icmp eq i64 %i.ek, %n.vec145
  br i1 %cmp.n151, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit50, label %.lr.ph.i.i45.preheader

.lr.ph.i.i45.preheader:                           ; preds = %.lr.ph.i.preheader.i43, %middle.block150
  %.05.i.i46.ph = phi i64 [ %i.ek, %.lr.ph.i.preheader.i43 ], [ %i.el, %middle.block150 ]
  %storemerge4.i.i47.ph = phi ptr [ %2, %.lr.ph.i.preheader.i43 ], [ %i.en, %middle.block150 ]
  br label %.lr.ph.i.i45

.lr.ph.i.i45:                                     ; preds = %.lr.ph.i.i45.preheader, %.lr.ph.i.i45
  %.05.i.i46 = phi i64 [ %i.er, %.lr.ph.i.i45 ], [ %.05.i.i46.ph, %.lr.ph.i.i45.preheader ]
  %storemerge4.i.i47 = phi ptr [ %i.es, %.lr.ph.i.i45 ], [ %storemerge4.i.i47.ph, %.lr.ph.i.i45.preheader ] ; 2 uses
  %i.er = add i64 %.05.i.i46, -1                  ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i47, align 4, !tbaa !78
  %i.es = getelementptr inbounds nuw i8, ptr %storemerge4.i.i47, i64 4
  %.not.i.i48 = icmp eq i64 %i.er, 0
  br i1 %.not.i.i48, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit50, label %.lr.ph.i.i45, !llvm.loop !2314

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit50: ; preds = %.lr.ph.i.i45, %middle.block150
  %i.et = trunc nuw nsw i64 %i.ek to i32
  %i.eu = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i44, %i.et
  store i32 %i.eu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::static_vector.35", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.b:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit
  %indvars.iv = phi i64 [ 5, %bb.a ], [ %indvars.iv.next, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 2 uses
  %.03886 = phi i64 [ 0, %bb.a ], [ %i.dz, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit ] ; 10 uses
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = load i64, ptr %i.a, align 8, !tbaa !300  ; 12 uses
  %i.c = icmp ugt i64 %i.b, 10
  br i1 %i.c, label %bb.d, label %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i: ; preds = %bb.c
  %.not17.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not17.i.i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.d = shl nuw nsw i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %0, i64 %i.d, i1 false), !tbaa !78
  %i.e = trunc nuw nsw i64 %i.b to i32
  %i.f = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.e
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %.not.i.i = icmp samesign ugt i64 %i.b, 7
  br i1 %.not.i.i, label %bb.g, label %.thread, !prof !679

.thread:                                          ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS6_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i, %bb.e
  %i.g = load ptr, ptr %1, align 8, !tbaa !307, !noalias !2315 ; 4 uses
  %.idx63104 = shl nuw nsw i64 %.03886, 2         ; 3 uses
  %3 = getelementptr i8, ptr %2, i64 %.idx63104   ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 2                 ; 3 uses
  %i.h = getelementptr i8, ptr %2, i64 %.idx      ; 11 uses
  %i.i = icmp samesign eq i64 %i.b, %.03886
  br i1 %i.i, label %.lr.ph.i.i.i.i.i.i.preheader, label %bb.f

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted79 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !2318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false), !tbaa !78, !noalias !2318
  %i.j = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted79, 3
  store i32 %i.j, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !2318
  br label %.loopexit

bb.f:                                             ; preds = %.thread
  %gepdiff = sub nsw i64 %.idx, %.idx63104        ; 3 uses
  %i.k = ashr exact i64 %gepdiff, 2               ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.k, 3
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !2325 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i49.preheader.i.i.i.i.i, label %.lr.ph.i.i10.i.i.i.i

.lr.ph.i.i10.i.i.i.i:                             ; preds = %bb.f
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -12 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.n = load <2 x i32>, ptr %i.l, align 4, !tbaa !78, !noalias !2325
  store i32 0, ptr %i.l, align 4, !tbaa !78, !noalias !2325
  store <2 x i32> %i.n, ptr %i.h, align 4, !tbaa !78, !noalias !2325
  store i32 0, ptr %i.m, align 4, !tbaa !78, !noalias !2325
  %i.o = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = load i32, ptr %i.o, align 4, !tbaa !78, !noalias !2325
  store i32 %i.q, ptr %i.p, align 4, !tbaa !78, !noalias !2325
  store i32 0, ptr %i.o, align 4, !tbaa !78, !noalias !2325
  %i.r = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, 3
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !2325
  %i.s = add nsw i64 %.idx, -12
  %.not8.i.i.i.i.i.i = icmp eq i64 %.idx63104, %i.s
  br i1 %.not8.i.i.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i.preheader

.lr.ph.i40.i.i.i.i.i.preheader:                   ; preds = %.lr.ph.i.i10.i.i.i.i
  %i.t = sub nsw i64 %i.b, %.03886                ; 2 uses
  %i.u = add i64 %i.t, 4611686018427387900
  %i.v = and i64 %i.u, 4611686018427387903
  %i.w = add i64 %i.t, 5
  %xtraiter = and i64 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol

.lr.ph.i40.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i40.i.i.i.i.i.preheader, %.lr.ph.i40.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi ptr [ %i.y, %.lr.ph.i40.i.i.i.i.i.prol ], [ %i.h, %.lr.ph.i40.i.i.i.i.i.preheader ]
  %.079.i.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i40.i.i.i.i.i.prol ], [ %i.l, %.lr.ph.i40.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i40.i.i.i.i.i.prol ], [ 0, %.lr.ph.i40.i.i.i.i.i.preheader ]
  %i.x = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i.prol, i64 -4 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i.prol, i64 -4 ; 3 uses
  %i.z = load i32, ptr %i.x, align 4, !tbaa !78, !noalias !2325
  store i32 %i.z, ptr %i.y, align 4, !tbaa !78, !noalias !2325
  store i32 0, ptr %i.x, align 4, !tbaa !78, !noalias !2325
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i40.i.i.i.i.i.prol.loopexit, label %.lr.ph.i40.i.i.i.i.i.prol, !llvm.loop !2326

.lr.ph.i40.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i40.i.i.i.i.i.prol, %.lr.ph.i40.i.i.i.i.i.preheader
  %.010.i.i.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i40.i.i.i.i.i.preheader ], [ %i.y, %.lr.ph.i40.i.i.i.i.i.prol ]
  %.079.i.i.i.i.i.i.unr = phi ptr [ %i.l, %.lr.ph.i40.i.i.i.i.i.preheader ], [ %i.x, %.lr.ph.i40.i.i.i.i.i.prol ]
  %i.aa = icmp samesign ult i64 %i.v, 7
  br i1 %i.aa, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i

.lr.ph.i40.i.i.i.i.i:                             ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit, %.lr.ph.i40.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i40.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.079.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i40.i.i.i.i.i ], [ %.079.i.i.i.i.i.i.unr, %.lr.ph.i40.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.ab = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -4
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !78, !noalias !2325
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !78, !noalias !2325
  store i32 0, ptr %i.ab, align 4, !tbaa !78, !noalias !2325
  %i.ae = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -8
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !78, !noalias !2325
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !78, !noalias !2325
  store i32 0, ptr %i.ae, align 4, !tbaa !78, !noalias !2325
  %i.ah = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -12 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !78, !noalias !2325
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !78, !noalias !2325
  store i32 0, ptr %i.ah, align 4, !tbaa !78, !noalias !2325
  %i.ak = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -16 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -16
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !78, !noalias !2325
  store i32 %i.am, ptr %i.al, align 4, !tbaa !78, !noalias !2325
  store i32 0, ptr %i.ak, align 4, !tbaa !78, !noalias !2325
  %i.an = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -20 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -20
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !78, !noalias !2325
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !78, !noalias !2325
  store i32 0, ptr %i.an, align 4, !tbaa !78, !noalias !2325
  %i.aq = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -24
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !78, !noalias !2325
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !78, !noalias !2325
  store i32 0, ptr %i.aq, align 4, !tbaa !78, !noalias !2325
  %i.at = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -28 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -28
  %i.av = load i32, ptr %i.at, align 4, !tbaa !78, !noalias !2325
  store i32 %i.av, ptr %i.au, align 4, !tbaa !78, !noalias !2325
  store i32 0, ptr %i.at, align 4, !tbaa !78, !noalias !2325
  %i.aw = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -32 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !78, !noalias !2325
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !78, !noalias !2325
  store i32 0, ptr %i.aw, align 4, !tbaa !78, !noalias !2325
  %.not.i41.i.i.i.i.i.7 = icmp eq ptr %3, %i.aw
  br i1 %.not.i41.i.i.i.i.i.7, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, label %.lr.ph.i40.i.i.i.i.i, !llvm.loop !686

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i: ; preds = %.lr.ph.i40.i.i.i.i.i.prol.loopexit, %.lr.ph.i40.i.i.i.i.i, %.lr.ph.i.i10.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.g, i64 12, i1 false), !tbaa !78, !noalias !2327
  br label %.loopexit

.lr.ph.i49.preheader.i.i.i.i.i:                   ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ba = sub nsw i64 %i.b, %.03886               ; 2 uses
  %i.bb = add i64 %i.ba, 4611686018427387903
  %i.bc = and i64 %i.bb, 4611686018427387903
  %xtraiter168 = and i64 %i.ba, 3                 ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.lr.ph.i49.i.i.i.i.i.prol.loopexit, label %.lr.ph.i49.i.i.i.i.i.prol

.lr.ph.i49.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i49.preheader.i.i.i.i.i, %.lr.ph.i49.i.i.i.i.i.prol
  %i.bd = phi i32 [ %i.bf, %.lr.ph.i49.i.i.i.i.i.prol ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, %.lr.ph.i49.preheader.i.i.i.i.i ]
  %.018.i.i.i.i.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i49.i.i.i.i.i.prol ], [ %3, %.lr.ph.i49.preheader.i.i.i.i.i ] ; 3 uses
  %.01517.i.i.i.i.i.i.prol = phi ptr [ %i.bh, %.lr.ph.i49.i.i.i.i.i.prol ], [ %i.az, %.lr.ph.i49.preheader.i.i.i.i.i ] ; 2 uses
  %prol.iter170 = phi i64 [ %prol.iter170.next, %.lr.ph.i49.i.i.i.i.i.prol ], [ 0, %.lr.ph.i49.preheader.i.i.i.i.i ]
  %i.be = load i32, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !78, !noalias !2325
  store i32 %i.be, ptr %.01517.i.i.i.i.i.i.prol, align 4, !tbaa !78, !noalias !2325
  store i32 0, ptr %.018.i.i.i.i.i.i.prol, align 4, !tbaa !78, !noalias !2325
  %i.bf = add i32 %i.bd, 1                        ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %.lr.ph.i49.i.i.i.i.i.prol.loopexit, label %.lr.ph.i49.i.i.i.i.i.prol, !llvm.loop !2330

.lr.ph.i49.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i49.i.i.i.i.i.prol, %.lr.ph.i49.preheader.i.i.i.i.i
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i49.preheader.i.i.i.i.i ], [ %i.bf, %.lr.ph.i49.i.i.i.i.i.prol ]
  %.unr = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted76, %.lr.ph.i49.preheader.i.i.i.i.i ], [ %i.bf, %.lr.ph.i49.i.i.i.i.i.prol ]
  %.018.i.i.i.i.i.i.unr = phi ptr [ %3, %.lr.ph.i49.preheader.i.i.i.i.i ], [ %i.bg, %.lr.ph.i49.i.i.i.i.i.prol ]
  %.01517.i.i.i.i.i.i.unr = phi ptr [ %i.az, %.lr.ph.i49.preheader.i.i.i.i.i ], [ %i.bh, %.lr.ph.i49.i.i.i.i.i.prol ]
  %i.bi = icmp samesign ult i64 %i.bc, 3
  br i1 %i.bi, label %.lr.ph.i.i52.i.i.i.i.i.preheader, label %.lr.ph.i49.i.i.i.i.i

.lr.ph.i49.i.i.i.i.i:                             ; preds = %.lr.ph.i49.i.i.i.i.i.prol.loopexit, %.lr.ph.i49.i.i.i.i.i
  %i.bj = phi i32 [ %i.bu, %.lr.ph.i49.i.i.i.i.i ], [ %.unr, %.lr.ph.i49.i.i.i.i.i.prol.loopexit ]
  %.018.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i49.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i49.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.01517.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i49.i.i.i.i.i ], [ %.01517.i.i.i.i.i.i.unr, %.lr.ph.i49.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bk = load i32, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !78, !noalias !2325
  store i32 %i.bk, ptr %.01517.i.i.i.i.i.i, align 4, !tbaa !78, !noalias !2325
  store i32 0, ptr %.018.i.i.i.i.i.i, align 4, !tbaa !78, !noalias !2325
  %i.bl = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 4
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !78, !noalias !2325
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !78, !noalias !2325
  store i32 0, ptr %i.bl, align 4, !tbaa !78, !noalias !2325
  %i.bo = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 8
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !78, !noalias !2325
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !78, !noalias !2325
  store i32 0, ptr %i.bo, align 4, !tbaa !78, !noalias !2325
  %i.br = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 12
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !78, !noalias !2325
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !78, !noalias !2325
  store i32 0, ptr %i.br, align 4, !tbaa !78, !noalias !2325
  %i.bu = add i32 %i.bj, 4                        ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i.i.i, i64 16
  %.not.i50.i.i.i.i.i.3 = icmp eq ptr %i.bv, %i.h
  br i1 %.not.i50.i.i.i.i.i.3, label %.lr.ph.i.i52.i.i.i.i.i.preheader, label %.lr.ph.i49.i.i.i.i.i, !llvm.loop !688

.lr.ph.i.i52.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i49.i.i.i.i.i, %.lr.ph.i49.i.i.i.i.i.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph.i49.i.i.i.i.i.prol.loopexit ], [ %i.bu, %.lr.ph.i49.i.i.i.i.i ] ; 2 uses
  store i32 %.lcssa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !2325
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %i.g, i64 %gepdiff, i1 false), !tbaa !78, !noalias !2331
  %i.bx = sub nuw nsw i64 3, %i.k
  %scevgep95 = getelementptr i8, ptr %i.g, i64 %gepdiff
  br label %.lr.ph.i.i57.i.i.i.i.i.prol

.lr.ph.i.i57.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i57.i.i.i.i.i.prol, %.lr.ph.i.i52.i.i.i.i.i.preheader
  %i.by = phi i32 [ %i.cb, %.lr.ph.i.i57.i.i.i.i.i.prol ], [ %.lcssa, %.lr.ph.i.i52.i.i.i.i.i.preheader ]
  %i.bz = phi ptr [ %i.cc, %.lr.ph.i.i57.i.i.i.i.i.prol ], [ %scevgep95, %.lr.ph.i.i52.i.i.i.i.i.preheader ] ; 2 uses
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.cd, %.lr.ph.i.i57.i.i.i.i.i.prol ], [ %i.h, %.lr.ph.i.i52.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter173 = phi i64 [ %prol.iter173.next, %.lr.ph.i.i57.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i.i.prol) ]
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !78, !noalias !2334
  store i32 %i.ca, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !78, !noalias !2334
  %i.cb = add i32 %i.by, 1                        ; 2 uses
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !2334
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 4
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %i.bx
  br i1 %prol.iter173.cmp.not, label %.loopexit, label %.lr.ph.i.i57.i.i.i.i.i.prol, !llvm.loop !2337

bb.g:                                             ; preds = %bb.e
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i.i57.i.i.i.i.i.prol, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader
  %i.ce = add nuw nsw i64 %i.b, 3                 ; 11 uses
  %i.cf = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.1, i32 noundef 347, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %.loopexit
  %i.cg = icmp eq i64 %i.ce, 8
  %i.ch = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.1, i32 noundef 348, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.cg)
          to label %.preheader65 unwind label %bb.k ; 0 uses

.preheader65:                                     ; preds = %bb.h
  %.not = icmp eq i64 %.03886, 0
  %.pre99 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  br i1 %.not, label %.preheader64, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader65
  %i.ci = add i32 %.pre99, 1
  br label %.lr.ph

.preheader64:                                     ; preds = %bb.l, %.preheader65
  %i.cj = phi i32 [ %.pre99, %.preheader65 ], [ %i.cy, %bb.l ]
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03886 ; 4 uses
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.cl = load i32, ptr %invariant.gep, align 4, !tbaa !78
  %i.cm = icmp eq i32 %i.cl, 100
  %i.cn = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.cm)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.i:                                             ; preds = %bb.g
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i43

bb.j:                                             ; preds = %.loopexit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i43

bb.k:                                             ; preds = %bb.h
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.preheader.i43

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %i.cr = phi i32 [ %i.cx, %bb.l ], [ %i.ci, %.lr.ph.preheader ]
  %.03480 = phi i64 [ %i.cz, %bb.l ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03480
  %i.ct = trunc nuw nsw i64 %.03480 to i32
  store i32 %i.cr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !78
  %i.cv = icmp eq i32 %i.cu, %i.ct
  %i.cw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 350, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.cv)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %.lr.ph
  %i.cx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.cy = add i32 %i.cx, -1                       ; 2 uses
  store i32 %i.cy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.cz = add nuw nsw i64 %.03480, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cz, %.03886
  br i1 %exitcond.not, label %.preheader64, label %.lr.ph, !llvm.loop !2338

bb.m:                                             ; preds = %.lr.ph
  %i.da = landingpad { ptr, i32 }
          cleanup
  %i.db = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.dc = add i32 %i.db, -1
  store i32 %i.dc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  br label %.lr.ph.i.preheader.i43

.lr.ph85:                                         ; preds = %.preheader
  %i.dd = trunc nuw nsw i64 %.03886 to i32
  br label %bb.q

bb.n:                                             ; preds = %.preheader64
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.de = load i32, ptr %gep.1, align 4, !tbaa !78
  %i.df = icmp eq i32 %i.de, 101
  %i.dg = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.df)
          to label %bb.o unwind label %bb.p       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.dh = load i32, ptr %gep.2, align 4, !tbaa !78
  %i.di = icmp eq i32 %i.dh, 102
  %i.dj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.1, i32 noundef 352, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.di)
          to label %.preheader unwind label %bb.p ; 0 uses

.preheader:                                       ; preds = %bb.o
  %i.dk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.dl = add i32 %i.dk, -1                       ; 2 uses
  store i32 %i.dl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %.not87 = icmp eq i64 %.03886, 5
  br i1 %.not87, label %.lr.ph.i.preheader.i, label %.lr.ph85

bb.p:                                             ; preds = %bb.o, %bb.n, %.preheader64
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.do = add i32 %i.dn, -1
  store i32 %i.do, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  br label %.lr.ph.i.preheader.i43

.lr.ph.i.preheader.i:                             ; preds = %bb.r, %.preheader
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = phi i32 [ %i.dl, %.preheader ], [ %i.ei, %bb.r ]
  %min.iters.check = icmp ult i64 %i.b, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.ce, 24                      ; 3 uses
  %i.dp = and i64 %i.ce, 7
  %i.dq = shl nuw nsw i64 %n.vec, 2
  %i.dr = getelementptr i8, ptr %2, i64 %i.dq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %2, i64 %i.ds ; 2 uses
  %i.dt = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %next.gep, align 8, !tbaa !78
  store <4 x i32> splat (i32 -2147483648), ptr %i.dt, align 8, !tbaa !78
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !2339

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ce, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.05.i.i.ph = phi i64 [ %i.ce, %.lr.ph.i.preheader.i ], [ %i.dp, %middle.block ]
  %storemerge4.i.i.ph = phi ptr [ %2, %.lr.ph.i.preheader.i ], [ %i.dr, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.dv, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %storemerge4.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.dv = add i64 %.05.i.i, -1                    ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !78
  %i.dw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  %.not.i.i41 = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i41, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !2340

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvED2Ev.exit: ; preds = %.lr.ph.i.i, %middle.block
  %i.dx = trunc nuw nsw i64 %i.ce to i32
  %i.dy = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, %i.dx
  store i32 %i.dy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.dz = add nuw nsw i64 %.03886, 1              ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond98.not = icmp eq i64 %i.dz, 6
  br i1 %exitcond98.not, label %bb.b, label %bb.c, !llvm.loop !2341

bb.q:                                             ; preds = %.lr.ph85, %bb.r
  %i.ea = phi i32 [ %i.dk, %.lr.ph85 ], [ %i.eh, %bb.r ]
  %.084 = phi i64 [ 0, %.lr.ph85 ], [ %i.ej, %bb.r ] ; 3 uses
  %gep83 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.084
  %i.eb = getelementptr inbounds nuw i8, ptr %gep83, i64 12
  %i.ec = trunc nuw nsw i64 %.084 to i32
  %i.ed = add nuw nsw i32 %i.ec, %i.dd
  store i32 %i.ea, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ee = load i32, ptr %i.eb, align 4, !tbaa !78
  %i.ef = icmp eq i32 %i.ee, %i.ed
  %i.eg = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.1, i32 noundef 354, ptr noundef nonnull @__PRETTY_FUNCTION__._Z11test_insertIN5boost9container4test24movable_and_copyable_intELm10ENS1_13static_vectorIS3_Lm10EvEENS1_6vectorIS3_vvEEEvRKT1_RKT2_, i1 noundef zeroext %i.ef)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.eh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18 ; 2 uses
  %i.ei = add i32 %i.eh, -1                       ; 2 uses
  store i32 %i.ei, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ej = add nuw nsw i64 %.084, 1                ; 2 uses
end_hunk_2
