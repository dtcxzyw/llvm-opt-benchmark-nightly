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
  %gepdiff99.reass = sub nuw nsw i64 36, %.idx97
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
  %indvars.iv202 = phi i64 [ 0, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader ], [ %indvars.iv.next203, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97 ] ; 13 uses
  %indvars.iv198 = phi i32 [ 5, %_ZN5boost9container19vector_alloc_holderINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEmNS_11move_detail17integral_constantIjLj0EEEEC2IRKS5_EENS0_27vector_uninitialized_size_tEOT_m.exit.i.i.preheader ], [ %indvars.iv.next199, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit97 ] ; 2 uses
  %1 = sub nsw i64 0, %indvars.iv202
  %smax = tail call i32 @llvm.smax.i32(i32 %indvars.iv198, i32 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  store <4 x i32> <i32 0, i32 100, i32 1, i32 101>, ptr %0, align 16, !tbaa !18
  store <4 x i32> <i32 2, i32 102, i32 3, i32 103>, ptr %i.bb, align 16, !tbaa !18
  store i32 4, ptr %i.bc, align 16, !tbaa !72
  store i32 104, ptr %i.bd, align 4, !tbaa !74
  %i.bf = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, 5
  store i64 %i.bf, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69
  %.idx151 = shl nuw nsw i64 %indvars.iv202, 3
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
  %i.bk = load <2 x i32>, ptr %i.ay, align 16, !tbaa !18, !noalias !1268
  store <2 x i32> %i.bk, ptr %i.ax, align 8, !tbaa !18, !noalias !1268
  store i32 0, ptr %i.ay, align 16, !tbaa !72, !noalias !1268
  store i32 0, ptr %i.ba, align 4, !tbaa !74, !noalias !1268
  %i.bl = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i, 6
  store i64 %i.bl, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !69, !noalias !1268
  store i64 6, ptr %i.aw, align 16, !tbaa !167, !noalias !1268
  %.not8.i.i.i.i = icmp eq i64 %indvars.iv202, 4
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container15move_backward_nIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.p
  %2 = sub nsw i64 4, %indvars.iv202              ; 2 uses
  %xtraiter = and i64 %1, 3                       ; 2 uses
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
  %3 = add nsw i64 %indvars.iv202, -1
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
