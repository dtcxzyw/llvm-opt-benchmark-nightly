inline.NumInlined: 11767
inline.NumDeleted: 5033
begin_hunk_0_@_ZNSt6vectorIN6duckdb12ValidityMaskESaIS1_EE17_M_default_appendEm:bb.a
  br i1 %i.ak, label %bb.d, label %_ZNKSt6vectorIN6duckdb12ValidityMaskESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #31
  unreachable

_ZNKSt6vectorIN6duckdb12ValidityMaskESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.al = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 288230376151711743) ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 5
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #32 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.f ; 3 uses
  %xtraiter41 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN6duckdb12ValidityMaskESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.as, %.lr.ph.i.i.i30.prol ], [ %i.ap, %_ZNKSt6vectorIN6duckdb12ValidityMaskESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN6duckdb12ValidityMaskESaIS1_EE12_M_check_lenEmPKc.exit ]
  %prol.iter43 = phi i64 [ %prol.iter43.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN6duckdb12ValidityMaskESaIS1_EE12_M_check_lenEmPKc.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.013.i.i.i31.prol, i8 0, i64 24, i1 false)
  store i64 2048, ptr %i.aq, align 8, !tbaa !675
  %i.ar = add i64 %.01012.i.i.i32.prol, -1        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 32 ; 2 uses
  %prol.iter43.next = add i64 %prol.iter43, 1     ; 2 uses
  %prol.iter43.cmp.not = icmp eq i64 %prol.iter43.next, %xtraiter41
  br i1 %prol.iter43.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !1891

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN6duckdb12ValidityMaskESaIS1_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ap, %_ZNKSt6vectorIN6duckdb12ValidityMaskESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.as, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN6duckdb12ValidityMaskESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.ar, %.lr.ph.i.i.i30.prol ]
  %i.at = icmp ult i64 %1, 8
  br i1 %i.at, label %_ZSt27__uninitialized_default_n_aIPN6duckdb12ValidityMaskEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bk, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bj, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.013.i.i.i31, i8 0, i64 24, i1 false)
  store i64 2048, ptr %i.au, align 8, !tbaa !675
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i8 0, i64 24, i1 false)
  store i64 2048, ptr %i.aw, align 8, !tbaa !675
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i8 0, i64 24, i1 false)
  store i64 2048, ptr %i.ay, align 8, !tbaa !675
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i8 0, i64 24, i1 false)
  store i64 2048, ptr %i.ba, align 8, !tbaa !675
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 128
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i8 0, i64 24, i1 false)
  store i64 2048, ptr %i.bc, align 8, !tbaa !675
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 160
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i8 0, i64 24, i1 false)
  store i64 2048, ptr %i.be, align 8, !tbaa !675
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 192
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i8 0, i64 24, i1 false)
  store i64 2048, ptr %i.bg, align 8, !tbaa !675
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 224
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i8 0, i64 24, i1 false)
  store i64 2048, ptr %i.bi, align 8, !tbaa !675
  %i.bj = add i64 %.01012.i.i.i32, -8             ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 256
  %.not.i.i.i33.7 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPN6duckdb12ValidityMaskEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1890

_ZSt27__uninitialized_default_n_aIPN6duckdb12ValidityMaskEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb12ValidityMaskESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN6duckdb12ValidityMaskEmS1_ET_S3_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPN6duckdb12ValidityMaskEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 4 uses
  %.0911.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN6duckdb12ValidityMaskEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1895)
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bm = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !261, !alias.scope !1895, !noalias !1892
  store <2 x ptr> %i.bm, ptr %.012.i.i.i.i, align 8, !tbaa !261, !alias.scope !1892, !noalias !1895
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !260, !alias.scope !1895, !noalias !1892
  store ptr null, ptr %i.bo, align 8, !tbaa !260, !alias.scope !1895, !noalias !1892
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !260, !alias.scope !1892, !noalias !1895
  store ptr null, ptr %i.bl, align 8, !tbaa !1602, !alias.scope !1895, !noalias !1892
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !675, !alias.scope !1895, !noalias !1892
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !675, !alias.scope !1892, !noalias !1895
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.bt, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb12ValidityMaskESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1897

_ZNSt6vectorIN6duckdb12ValidityMaskESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb12ValidityMaskEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN6duckdb12ValidityMaskESaIS1_EE13_M_deallocateEPS1_m.exit38, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb12ValidityMaskESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #30
  br label %_ZNSt12_Vector_baseIN6duckdb12ValidityMaskESaIS1_EE13_M_deallocateEPS1_m.exit38

_ZNSt12_Vector_baseIN6duckdb12ValidityMaskESaIS1_EE13_M_deallocateEPS1_m.exit38: ; preds = %_ZNSt6vectorIN6duckdb12ValidityMaskESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.ao, ptr %0, align 8, !tbaa !615
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %1
  store ptr %i.bv, ptr %i.a, align 8, !tbaa !614
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.bw, ptr %i.h, align 8, !tbaa !1888
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN6duckdb12ValidityMaskEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN6duckdb12ValidityMaskESaIS1_EE13_M_deallocateEPS1_m.exit38, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_20ColumnDataCollectionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !626
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !156    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #29
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE17_M_realloc_insertIJRS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !698  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !701    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #31
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %3 = sdiv exact i64 %i.g, 56                    ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 164703072086692425)
  %7 = select i1 %5, i64 164703072086692425, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_M_allocateEm.exit, label %10

10:                                               ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE12_M_check_lenEmPKc.exit
  %11 = mul nuw nsw i64 %7, 56
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #32
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE12_M_check_lenEmPKc.exit, %10
  %13 = phi ptr [ %12, %10 ], [ null, %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 %9 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !706
  %i.k = load ptr, ptr %2, align 8, !tbaa !156    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !707  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.m, ptr %i.a, align 8, !tbaa !251
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !156
  %i.p = load i64, ptr %i.a, align 8, !tbaa !251
  store i64 %i.p, ptr %i.j, align 8, !tbaa !262
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !262
  store i8 %i.r, ptr %i.q, align 1, !tbaa !262
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !251  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !707
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !156
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEE9constructIS9_JRS9_EEEvRSA_PT_DpOT0_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !156  ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.j
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.z) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEE9constructIS9_JRS9_EEEvRSA_PT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEE9constructIS9_JRS9_EEEvRSA_PT_DpOT0_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %13, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEE9constructIS9_JRS9_EEEvRSA_PT_DpOT0_.exit ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.d, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEE9constructIS9_JRS9_EEEvRSA_PT_DpOT0_.exit ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1898)
  call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ab, ptr %.012.i.i.i.i, align 8, !tbaa !706, !alias.scope !1898, !noalias !1901
  %i.ac = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !156, !alias.scope !1901, !noalias !1898 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 6 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !707, !alias.scope !1901, !noalias !1898 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false), !alias.scope !1903
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ac, ptr %.012.i.i.i.i, align 8, !tbaa !156, !alias.scope !1898, !noalias !1901
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !262, !alias.scope !1901, !noalias !1898
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !262, !alias.scope !1898, !noalias !1901
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !707, !alias.scope !1901, !noalias !1898
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.f
  %i.ak = phi i64 [ %i.ag, %bb.f ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !707, !alias.scope !1898, !noalias !1901
  store ptr %i.ad, ptr %.0911.i.i.i.i, align 8, !tbaa !156, !alias.scope !1901, !noalias !1898
  store i64 0, ptr %i.al, align 8, !tbaa !707, !alias.scope !1901, !noalias !1898
  store i8 0, ptr %i.ad, align 8, !tbaa !262, !alias.scope !1901, !noalias !1898
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ao) #29
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ao) #29
  %i.ap = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !156, !alias.scope !1901, !noalias !1898 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ad
  br i1 %i.aq, label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ap) #30
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 56 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1904

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEE9constructIS9_JRS9_EEEvRSA_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %13, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEE9constructIS9_JRS9_EEEvRSA_PT_DpOT0_.exit ], [ %i.as, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i.i26, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit39, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i35
  %.012.i.i.i.i28 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i35 ], [ %i.at, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ] ; 6 uses
  %.0911.i.i.i.i29 = phi ptr [ %i.bk, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i35 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i.i28, align 8, !tbaa !706, !alias.scope !1905, !noalias !1908
  %i.av = load ptr, ptr %.0911.i.i.i.i29, align 8, !tbaa !156, !alias.scope !1908, !noalias !1905 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 16 ; 6 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !707, !alias.scope !1908, !noalias !1905 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !1910
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i.i27
  store ptr %i.av, ptr %.012.i.i.i.i28, align 8, !tbaa !156, !alias.scope !1905, !noalias !1908
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !262, !alias.scope !1908, !noalias !1905
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !262, !alias.scope !1905, !noalias !1908
  %.phi.trans.insert.i.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %.pre.i.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i.i31, align 8, !tbaa !707, !alias.scope !1908, !noalias !1905
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i33

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i30, %bb.g
  %i.bd = phi i64 [ %i.az, %bb.g ], [ %.pre.i.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i30 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !707, !alias.scope !1905, !noalias !1908
  store ptr %i.aw, ptr %.0911.i.i.i.i29, align 8, !tbaa !156, !alias.scope !1908, !noalias !1905
  store i64 0, ptr %i.be, align 8, !tbaa !707, !alias.scope !1908, !noalias !1905
  store i8 0, ptr %i.aw, align 8, !tbaa !262, !alias.scope !1908, !noalias !1905
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 32 ; 2 uses
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bh) #29
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bh) #29
  %i.bi = load ptr, ptr %.0911.i.i.i.i29, align 8, !tbaa !156, !alias.scope !1908, !noalias !1905 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.aw
  br i1 %i.bj, label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i34: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i33
  call void @_ZdlPv(ptr noundef %i.bi) #30
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i35

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i35: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i34
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 56 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 56 ; 2 uses
  %.not.i.i.i.i36 = icmp eq ptr %i.bk, %i.c
  br i1 %.not.i.i.i.i36, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit39, label %.lr.ph.i.i.i.i27, !llvm.loop !1904

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit39: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i35, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit
  %.0.lcssa.i.i.i.i37 = phi ptr [ %i.at, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ], [ %i.bl, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i35 ]
  %.not.i40 = icmp eq ptr %i.d, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit39
  call void @_ZdlPv(ptr noundef nonnull %i.d) #30
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit39, %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %13, ptr %0, align 8, !tbaa !701
  store ptr %.0.lcssa.i.i.i.i37, ptr %i.b, align 8, !tbaa !698
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %13, i64 %7
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !710
  ret void

bb.i:                                             ; preds = %.noexc.i.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bo, %bb.i ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.y, %bb.e ]
  %i.bq = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.br = call ptr @__cxa_begin_catch(ptr %i.bq) #29 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %13) #30
  invoke void @__cxa_rethrow() #31
          to label %bb.m unwind label %bb.j

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.bp

bb.l:                                             ; preds = %bb.j
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #33
  unreachable

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb33WindowCustomAggregatorGlobalStateD2Ev(ptr noundef nonnull align 8 dereferenceable(792) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb33WindowCustomAggregatorGlobalStateE, i64 16), ptr %0, align 8, !tbaa !135
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !785  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !789  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPv(ptr noundef %i.j) #30
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !246  ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !135
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.l) #29, !inline_history !793
  br label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !260  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.r, align 8, !tbaa !304
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !306
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !135
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #29, !inline_history !694
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !135
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #29, !inline_history !694
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !262
  %.not.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %bb.f ], [ %i.ae, %bb.g ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.h, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, !prof !192

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #29
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  tail call void @_ZN6duckdb27WindowAggregatorGlobalStateD2Ev(ptr noundef nonnull align 8 dereferenceable(672) %0) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb33WindowCustomAggregatorGlobalStateD0Ev(ptr noundef nonnull align 8 dereferenceable(792) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb33WindowCustomAggregatorGlobalStateE, i64 16), ptr %0, align 8, !tbaa !135
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !785  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !789  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPv(ptr noundef %i.j) #30, !inline_history !1911
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !246  ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i.i: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !135
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.l) #29, !inline_history !1912
  br label %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14LocalSinkStateEEclEPS1_.exit.i.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !260  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb33WindowCustomAggregatorGlobalStateD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.r, align 8, !tbaa !304
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !306
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !135
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #29, !inline_history !1913
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !135
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #29, !inline_history !1913
  br label %_ZN6duckdb33WindowCustomAggregatorGlobalStateD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !262
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.u, %bb.f ], [ %i.ae, %bb.g ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.h, label %_ZN6duckdb33WindowCustomAggregatorGlobalStateD2Ev.exit, !prof !192

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #29, !inline_history !1911
  br label %_ZN6duckdb33WindowCustomAggregatorGlobalStateD2Ev.exit

_ZN6duckdb33WindowCustomAggregatorGlobalStateD2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb14LocalSinkStateESt14default_deleteIS1_EED2Ev.exit.i, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  tail call void @_ZN6duckdb27WindowAggregatorGlobalStateD2Ev(ptr noundef nonnull align 8 dereferenceable(792) %0) #29, !inline_history !1911
  tail call void @_ZdlPv(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
end_hunk_0
