inline.NumInlined: 5552
inline.NumDeleted: 2531
begin_hunk_0_@_ZN6duckdb20ColumnDataCollection15GetCopyFunctionERKNS_11LogicalTypeE:bb.a
bb.as:                                            ; preds = %bb.am, %bb.al
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ap, %bb.ao
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb22ColumnDataCopyFunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #24
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.at ], [ %i.bm, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.bb

bb.av:                                            ; preds = %bb.a
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.aw unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bp = load i8, ptr %i.b, align 1, !tbaa !289
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_12PhysicalTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i8 noundef zeroext %i.bp)
          to label %bb.ax unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN6duckdb17InternalExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  invoke void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.bc unwind label %bb.az

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread: ; preds = %bb.av
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0 = phi i1 [ false, %bb.ay ], [ true, %bb.ax ] ; 2 uses
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bs = load ptr, ptr %7, align 8, !tbaa !72    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.az
  call void @_ZdlPv(ptr noundef %i.bs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.bv = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aw
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.bz = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.bz) #25
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bv) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0, label %bb.ba, label %bb.bb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0, label %bb.ba, label %bb.bb

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread
  %.pn30.pn54.ph = phi { ptr, i32 } [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.thread ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.pn30.pn54 = phi { ptr, i32 } [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn30.pn54.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bo) #24
  br label %bb.bb

.loopexit:                                        ; preds = %_ZN6duckdb22ColumnDataCopyFunctionD2Ev.exit, %bb.q, %bb.a, %_ZN6duckdb22ColumnDataCopyFunctionD2Ev.exit45, %_ZN6duckdb22ColumnDataCopyFunctionD2Ev.exit38, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.013 = phi ptr [ @_ZN6duckdb19ColumnDataCopyArrayERNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %_ZN6duckdb22ColumnDataCopyFunctionD2Ev.exit45 ], [ @_ZN6duckdbL14ColumnDataCopyIaEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %bb.b ], [ @_ZN6duckdbL14ColumnDataCopyIsEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %bb.c ], [ @_ZN6duckdbL14ColumnDataCopyIiEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %bb.d ], [ @_ZN6duckdbL14ColumnDataCopyIlEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %bb.e ], [ @_ZN6duckdbL14ColumnDataCopyINS_9hugeint_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %bb.f ], [ @_ZN6duckdbL14ColumnDataCopyIhEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %bb.g ], [ @_ZN6duckdbL14ColumnDataCopyItEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %bb.h ], [ @_ZN6duckdbL14ColumnDataCopyIjEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %bb.i ], [ @_ZN6duckdbL14ColumnDataCopyImEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %bb.j ], [ @_ZN6duckdbL14ColumnDataCopyINS_10uhugeint_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %bb.k ], [ @_ZN6duckdbL14ColumnDataCopyIfEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %bb.l ], [ @_ZN6duckdbL14ColumnDataCopyIdEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %bb.m ], [ @_ZN6duckdbL14ColumnDataCopyINS_10interval_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %bb.n ], [ @_ZN6duckdbL14ColumnDataCopyINS_8string_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %bb.o ], [ @_ZN6duckdbL14ColumnDataCopyIbEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %bb.a ], [ @_ZN6duckdbL14ColumnDataCopyINS_12list_entry_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %_ZN6duckdb22ColumnDataCopyFunctionD2Ev.exit38 ], [ @_ZN6duckdb20ColumnDataCopyStructERNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %bb.q ], [ @_ZN6duckdb20ColumnDataCopyStructERNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm, %_ZN6duckdb22ColumnDataCopyFunctionD2Ev.exit ]
  store ptr %.013, ptr %0, align 8, !tbaa !292
  ret void

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.r, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.ba, %bb.au, %bb.ak
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn30.pn54, %bb.ba ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn, %bb.au ], [ %.pn25, %bb.ak ], [ %.pn27, %bb.aa ], [ %i.l, %bb.r ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ]
  call void @_ZN6duckdb22ColumnDataCopyFunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #24
  resume { ptr, i32 } %.pn30.pn.pn

bb.bc:                                            ; preds = %bb.ay
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb22ColumnDataCopyFunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !242
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !243
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb22ColumnDataCopyFunctionEEEvT_S5_(ptr noundef %i.b, ptr noundef %i.d)
          to label %_ZSt8_DestroyIPN6duckdb22ColumnDataCopyFunctionEEvT_S3_.exit.i unwind label %bb.c, !inline_history !287

_ZSt8_DestroyIPN6duckdb22ColumnDataCopyFunctionEEvT_S3_.exit.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !242  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb22ColumnDataCopyFunctionESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb22ColumnDataCopyFunctionEEvT_S3_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #25, !inline_history !288
  br label %_ZNSt6vectorIN6duckdb22ColumnDataCopyFunctionESaIS1_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #27, !inline_history !288
  unreachable

_ZNSt6vectorIN6duckdb22ColumnDataCopyFunctionESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb22ColumnDataCopyFunctionEEvT_S3_.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20ColumnDataCollection13CreateSegmentEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.524", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN6duckdb9make_uniqINS_27ColumnDataCollectionSegmentEJRNS_10shared_ptrINS_19ColumnDataAllocatorELb1EEERNS_6vectorINS_11LogicalTypeELb1ESaIS7_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.524") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !246  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !294
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8, !tbaa !247
  store i64 %i.g, ptr %i.d, align 8, !tbaa !247
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !246
  br label %_ZNSt10unique_ptrIN6duckdb27ColumnDataCollectionSegmentESt14default_deleteIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !245  ; 10 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.c, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #26
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.b
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28
          to label %.noexc2 unwind label %bb.e    ; 10 uses

.noexc2:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = load i64, ptr %1, align 8, !tbaa !247
  store i64 %i.v, ptr %i.u, align 8, !tbaa !247
  store ptr null, ptr %1, align 8, !tbaa !247
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc2
  %2 = sub i64 %i.j, %i.k
  %3 = add i64 %2, -8                             ; 2 uses
  %i.w = lshr i64 %3, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.y = add i64 %i.j, -8
  %i.z = sub i64 %i.y, %i.k
  %i.aa = and i64 %i.z, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ab
  %scevgep7 = getelementptr i8, ptr %i.i, i64 %i.ab
  %bound0 = icmp ult ptr %i.t, %scevgep7
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.t, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.i, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.af ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.i, i64 %i.af ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.ag = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !247, !alias.scope !300, !noalias !295
  %wide.load9 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !247, !alias.scope !300, !noalias !295
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !247, !alias.scope !303, !noalias !300
  store <2 x i64> %wide.load9, ptr %i.ah, align 8, !tbaa !247, !alias.scope !303, !noalias !300
  %i.ai = getelementptr i8, ptr %next.gep8, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !247, !alias.scope !300, !noalias !295
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !247, !alias.scope !300, !noalias !295
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !305

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.preheader11:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader11 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !247, !alias.scope !298, !noalias !295
  store i64 %i.ak, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !247, !alias.scope !295, !noalias !298
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !247, !alias.scope !298, !noalias !295
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !308

_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc2
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.t, %.noexc2 ], [ %i.ad, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.d
  store ptr %i.t, ptr %i.a, align 8, !tbaa !245
  store ptr %i.an, ptr %i.c, align 8, !tbaa !246
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !294
  %.pr = load ptr, ptr %1, align 8, !tbaa !247    ; 3 uses
  %.not.i3 = icmp eq ptr %.pr, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIN6duckdb27ColumnDataCollectionSegmentESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb27ColumnDataCollectionSegmentEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb27ColumnDataCollectionSegmentEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  call void @_ZN6duckdb27ColumnDataCollectionSegmentD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %.pr) #24
  call void @_ZdlPv(ptr noundef nonnull %.pr) #25
  br label %_ZNSt10unique_ptrIN6duckdb27ColumnDataCollectionSegmentESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb27ColumnDataCollectionSegmentESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb27ColumnDataCollectionSegmentEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void

bb.e:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i, %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb27ColumnDataCollectionSegmentESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.ap
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_27ColumnDataCollectionSegmentEJRNS_10shared_ptrINS_19ColumnDataAllocatorELb1EEERNS_6vectorINS_11LogicalTypeELb1ESaIS7_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.524") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::shared_ptr.501", align 16 ; 4 uses
  %4 = alloca %"class.duckdb::vector.505", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #28 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !101
  store <2 x ptr> %i.e, ptr %3, align 16, !tbaa !101
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEC2ERKS2_.exit

_ZN6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.m

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %_ZN6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEC2ERKS2_.exit
  invoke void @_ZN6duckdb27ColumnDataCollectionSegmentC1ENS_10shared_ptrINS_19ColumnDataAllocatorELb1EEENS_6vectorINS_11LogicalTypeELb1ESaIS5_EEE(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !247
  %i.k = load ptr, ptr %4, align 8, !tbaa !252    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !253  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %i.k, %bb.e ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #24
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !254

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !252
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.e
  %i.o = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.k, %bb.e ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.o) #25
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.f
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !54   ; 8 uses
  %.not.i.i.i6 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i6, label %_ZN6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.q, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !58
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #24, !inline_history !286
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #24, !inline_history !286
  br label %_ZN6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i7 = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i7, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_0
begin_hunk_1_@_ZNK6duckdb13ColumnDataRow8RowIndexEv:bb.a
  %i.e = add i64 %i.d, %i.b
  ret i64 %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb23ColumnDataRowCollectionC2ERKNS_20ColumnDataCollectionENS_24ColumnDataScanPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) initializes((0, 64)) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i8 noundef zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"struct.duckdb::ColumnDataScanState", align 8 ; 15 uses
  %5 = alloca %"class.duckdb::unique_ptr.584", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  store ptr %i.e, ptr %i.d, align 8, !tbaa !132
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1, ptr %i.f, align 8, !tbaa !131
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !321
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.i, i8 0, i64 17, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !103
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !132
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i64 1, ptr %i.p, align 8, !tbaa !131
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.r, align 8, !tbaa !321
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.s, i8 0, i64 17, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  invoke void @_ZNK6duckdb20ColumnDataCollection14InitializeScanERNS_19ColumnDataScanStateENS_24ColumnDataScanPropertiesE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(144) %4, i8 noundef zeroext %2)
          to label %.preheader84 unwind label %bb.h

.preheader84:                                     ; preds = %bb.b
  %i.u = icmp eq i8 %2, 2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader84, %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.y = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #28
          to label %.noexc unwind label %bb.i     ; 3 uses

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %bb.e unwind label %bb.d, !noalias !322

bb.d:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.y) #25, !noalias !322
  br label %.body

bb.e:                                             ; preds = %.noexc
  store ptr %i.y, ptr %5, align 8, !tbaa !311, !alias.scope !322
  br i1 %i.u, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb9Allocator16DefaultAllocatorEv()
          to label %bb.g unwind label %.loopexit85

bb.g:                                             ; preds = %bb.f
  %i.ab = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.invoke unwind label %.loopexit85

.invoke:                                          ; preds = %bb.g, %.noexc29, %bb.m
  %i.ac = phi ptr [ %i.ag, %.noexc29 ], [ %i.ag, %bb.m ], [ %i.ab, %bb.g ]
  %i.ad = phi ptr [ %i.al, %.noexc29 ], [ %i.ap, %bb.m ], [ %i.aa, %bb.g ]
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef 2048)
          to label %_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_9AllocatorERNS_9DataChunkE.exit unwind label %.loopexit85

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb13ColumnDataRowESaIS1_EE11_M_allocateEm.exit.i, %bb.u, %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body40

bb.i:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit85:                                      ; preds = %.invoke, %bb.f, %bb.g, %bb.k, %_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_9AllocatorERNS_9DataChunkE.exit, %bb.n, %bb.l, %bb.m, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit87 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp86:                             ; preds = %bb.r
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp86, %.loopexit85
  %lpad.phi89 = phi { ptr, i32 } [ %lpad.loopexit87, %.loopexit85 ], [ %lpad.loopexit.split-lp88, %.loopexit.split-lp86 ]
  call void @_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #24
  br label %.body

bb.k:                                             ; preds = %bb.e
  %i.ag = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.l unwind label %.loopexit85 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ah = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %.noexc29 unwind label %.loopexit85 ; 2 uses

.noexc29:                                         ; preds = %bb.l
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !7
  %i.aj = icmp eq i8 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !43 ; 3 uses
  br i1 %i.aj, label %.invoke, label %bb.m

bb.m:                                             ; preds = %.noexc29
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 160
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %.invoke unwind label %.loopexit85, !inline_history !325

_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_9AllocatorERNS_9DataChunkE.exit: ; preds = %.invoke
  %i.aq = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.n unwind label %.loopexit85

bb.n:                                             ; preds = %_ZNK6duckdb20ColumnDataCollection19InitializeScanChunkERNS_9AllocatorERNS_9DataChunkE.exit
  %i.ar = invoke noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4ScanERNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.aq)
          to label %bb.o unwind label %.loopexit85

bb.o:                                             ; preds = %bb.n
  br i1 %i.ar, label %bb.p, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.p:                                             ; preds = %bb.o
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !326 ; 6 uses
  %i.at = load ptr, ptr %i.x, align 8, !tbaa !329
  %.not.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i, label %bb.q, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.p
  %i.au = load i64, ptr %5, align 8, !tbaa !311
  store i64 %i.au, ptr %i.as, align 8, !tbaa !311
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.av, ptr %i.w, align 8, !tbaa !326
  br label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !330 ; 10 uses
  %i.ax = ptrtoint ptr %i.as to i64               ; 3 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %bb.r, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #26
          to label %.noexc32 unwind label %.loopexit.split-lp86

.noexc32:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.bb = ashr exact i64 %i.az, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = call i64 @llvm.umin.i64(i64 %i.bc, i64 1152921504606846975)
  %i.bf = select i1 %i.bd, i64 1152921504606846975, i64 %i.be ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #28
          to label %.noexc33 unwind label %.loopexit85 ; 10 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  %i.bj = load i64, ptr %5, align 8, !tbaa !311
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !311
  store ptr null, ptr %5, align 8, !tbaa !311
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.as
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc33
  %6 = sub i64 %i.ax, %i.ay
  %7 = add i64 %6, -8                             ; 2 uses
  %i.bk = lshr i64 %7, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader152, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bh, i64 8
  %i.bm = add i64 %i.ax, -8
  %i.bn = sub i64 %i.bm, %i.ay
  %i.bo = and i64 %i.bn, -8                       ; 2 uses
  %scevgep144 = getelementptr i8, ptr %scevgep, i64 %i.bo
  %scevgep145 = getelementptr i8, ptr %i.aw, i64 8
  %scevgep146 = getelementptr i8, ptr %scevgep145, i64 %i.bo
  %bound0 = icmp ult ptr %i.bh, %scevgep146
  %bound1 = icmp ult ptr %i.aw, %scevgep144
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader152, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bp = shl i64 %n.vec, 3                       ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bh, i64 %i.bp  ; 2 uses
  %i.br = getelementptr i8, ptr %i.aw, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.aw, i64 %i.bs ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.bt = getelementptr i8, ptr %next.gep147, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep147, align 8, !tbaa !311, !alias.scope !336, !noalias !331
  %wide.load148 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !311, !alias.scope !336, !noalias !331
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !311, !alias.scope !339, !noalias !336
  store <2 x i64> %wide.load148, ptr %i.bu, align 8, !tbaa !311, !alias.scope !339, !noalias !336
  %i.bv = getelementptr i8, ptr %next.gep147, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep147, align 8, !tbaa !311, !alias.scope !336, !noalias !331
  store <2 x ptr> splat (ptr null), ptr %i.bv, align 8, !tbaa !311, !alias.scope !336, !noalias !331
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !341

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader152

.lr.ph.i.i.i.i.i.i.i.preheader152:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader152, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader152 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader152 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.bx = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !311, !alias.scope !334, !noalias !331
  store i64 %i.bx, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !311, !alias.scope !331, !noalias !334
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !311, !alias.scope !334, !noalias !331
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.by, %i.as
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !342

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc33
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bh, %.noexc33 ], [ %i.bq, %middle.block ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !330
  store ptr %i.ca, ptr %i.w, align 8, !tbaa !326
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.cb, ptr %i.x, align 8, !tbaa !329
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.o
  %.021.ph = phi i32 [ 0, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ 3, %bb.o ] ; 2 uses
  %.pr = load ptr, ptr %5, align 8, !tbaa !311    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %.pr) #24
  call void @_ZdlPv(ptr noundef nonnull %.pr) #25
  br label %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i
  %.02183 = phi i32 [ 0, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread ], [ %.021.ph, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %.021.ph, %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.cc = icmp eq i32 %.02183, 0
  br i1 %i.cc, label %bb.c, label %bb.t

.body:                                            ; preds = %bb.i, %bb.d, %bb.j
  %.pn = phi { ptr, i32 } [ %lpad.phi89, %bb.j ], [ %i.af, %bb.i ], [ %i.z, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.body40

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9DataChunkESt14default_deleteIS1_EED2Ev.exit
  %i.cd = load i64, ptr %i.k, align 8, !tbaa !103 ; 4 uses
  %i.ce = icmp ugt i64 %i.cd, 384307168202282325
  br i1 %i.ce, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #26
          to label %.noexc34 unwind label %bb.h

.noexc34:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !343
  %i.ch = load ptr, ptr %0, align 8, !tbaa !346   ; 5 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = sdiv exact i64 %i.ck, 24
  %i.cm = icmp ult i64 %i.cl, %i.cd
  br i1 %i.cm, label %_ZNSt12_Vector_baseIN6duckdb13ColumnDataRowESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6duckdb13ColumnDataRowESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6duckdb13ColumnDataRowESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !347 ; 3 uses
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.cj
  %i.cr = mul nuw nsw i64 %i.cd, 24
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #28
          to label %.noexc35 unwind label %bb.h   ; 4 uses

.noexc35:                                         ; preds = %_ZNSt12_Vector_baseIN6duckdb13ColumnDataRowESaIS1_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i.i = icmp eq ptr %i.ch, %i.co
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13ColumnDataRowESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc35, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i ], [ %i.cs, %.noexc35 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i ], [ %i.ch, %.noexc35 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !348, !alias.scope !349
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.ct, %i.co
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13ColumnDataRowESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !353

_ZNSt6vectorIN6duckdb13ColumnDataRowESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc35
  %.not.i8.i = icmp eq ptr %i.ch, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6duckdb13ColumnDataRowESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN6duckdb13ColumnDataRowESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ch) #25
  br label %_ZNSt12_Vector_baseIN6duckdb13ColumnDataRowESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN6duckdb13ColumnDataRowESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.w, %_ZNSt6vectorIN6duckdb13ColumnDataRowESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.cs, ptr %0, align 8, !tbaa !346
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cq
  store ptr %i.cv, ptr %i.cn, align 8, !tbaa !347
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cs, i64 %i.cd
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !343
  br label %_ZNSt6vectorIN6duckdb13ColumnDataRowESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb13ColumnDataRowESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb13ColumnDataRowESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.v
  %i.cx = load ptr, ptr %i.b, align 8, !tbaa !354 ; 2 uses
  %i.cy = load ptr, ptr %i.w, align 8, !tbaa !354 ; 2 uses
  %.not98 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not98, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIN6duckdb13ColumnDataRowESaIS1_EE7reserveEm.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.as
  %.0100 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.fv, %bb.as ] ; 3 uses
  %.sroa.073.099 = phi ptr [ %i.cx, %.preheader.lr.ph ], [ %i.fw, %bb.as ] ; 4 uses
  %i.da = load ptr, ptr %.sroa.073.099, align 8, !tbaa !311 ; 2 uses
  %.not.i3896 = icmp eq ptr %i.da, null
  br i1 %.not.i3896, label %.noexc.i, label %_ZNK6duckdb10unique_ptrINS_9DataChunkESt14default_deleteIS1_ELb1EEptEv.exit, !prof !355

._crit_edge:                                      ; preds = %bb.as, %_ZNSt6vectorIN6duckdb13ColumnDataRowESaIS1_EE7reserveEm.exit
  %i.db = load ptr, ptr %i.t, align 8, !tbaa !356 ; 2 uses
  %.not.i.i.i.i36 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i36, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef nonnull %i.db) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.x, %._crit_edge
  %i.dc = load ptr, ptr %i.q, align 8, !tbaa !201 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i ], [ %i.dc, %_ZNSt6vectorImSaImEED2Ev.exit.i ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb27ColumnDataCollectionSegment16AllocateNewChunkEv:bb.a
bb.a:
  %1 = alloca %"struct.duckdb::ChunkMetaData", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(82) %1, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !198
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store i64 1, ptr %i.c, align 8, !tbaa !197
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !321
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.f, i8 0, i64 18, i1 false)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !253  ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !252  ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 24                  ; 3 uses
  %i.p = icmp ugt i64 %i.o, 1152921504606846975
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #26
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.not30 = icmp eq ptr %i.j, %i.k
  br i1 %.not30, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6duckdb15VectorDataIndexESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6duckdb15VectorDataIndexESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.r = shl nuw nsw i64 %i.o, 3
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #28
          to label %_ZNSt12_Vector_baseIN6duckdb15VectorDataIndexESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %bb.i ; 4 uses

_ZNSt12_Vector_baseIN6duckdb15VectorDataIndexESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb15VectorDataIndexESaIS1_EE11_M_allocateEm.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.s, ptr %1, align 8, !tbaa !455
  store ptr %i.s, ptr %i.t, align 8, !tbaa !458
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.o ; 2 uses
  store ptr %i.u, ptr %i.q, align 8, !tbaa !459
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN6duckdb15VectorDataIndexESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.v = phi ptr [ null, %bb.c ], [ %i.u, %_ZNSt12_Vector_baseIN6duckdb15VectorDataIndexESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.w = phi ptr [ null, %bb.c ], [ %i.s, %_ZNSt12_Vector_baseIN6duckdb15VectorDataIndexESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %.not = icmp eq ptr %i.j, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE7reserveEm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE7reserveEm.exit
  %i.y = phi ptr [ %i.v, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE7reserveEm.exit ], [ %i.co, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE9push_backERKS1_.exit ]
  %i.z = phi ptr [ %i.w, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE7reserveEm.exit ], [ %i.cp, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE9push_backERKS1_.exit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !452 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !460
  %.not.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ae = load ptr, ptr %1, align 8, !tbaa !455
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !455
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.z, ptr %i.af, align 8, !tbaa !458
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.y, ptr %i.ag, align 8, !tbaa !459
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(82) %1, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !198 ; 3 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !198
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !197 ; 2 uses
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !197
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !461 ; 3 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !129
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !194
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !194
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !423
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 72 ; 4 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !462
  %i.as = icmp eq ptr %i.ai, %i.b
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.ar, ptr %i.ah, align 8, !tbaa !198
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !462
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !462
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.au = phi ptr [ %i.ar, %bb.e ], [ %i.ai, %bb.d ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13ChunkMetaDataESaIS1_EE9push_backEOS1_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = zext i32 %i.aw to i64
  %i.ay = urem i64 %i.ax, %i.ak
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ay
  store ptr %i.al, ptr %i.az, align 8, !tbaa !133
  br label %_ZNSt6vectorIN6duckdb13ChunkMetaDataESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb13ChunkMetaDataESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.f, %bb.g
  store i64 0, ptr %i.f, align 8, !tbaa !426
  store i64 1, ptr %i.c, align 8, !tbaa !197
  store ptr null, ptr %i.b, align 8, !tbaa !462
  store ptr %i.b, ptr %i.a, align 8, !tbaa !198
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.bb = load i16, ptr %i.g, align 8, !tbaa !463
  store i16 %i.bb, ptr %i.ba, align 8, !tbaa !463
  %i.bc = load ptr, ptr %i.aa, align 8, !tbaa !452
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  store ptr %i.bd, ptr %i.aa, align 8, !tbaa !452
  br label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i

bb.h:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt6vectorIN6duckdb13ChunkMetaDataESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(82) %1)
          to label %_ZNSt6vectorIN6duckdb13ChunkMetaDataESaIS1_EE9push_backEOS1_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt12_Vector_baseIN6duckdb15VectorDataIndexESaIS1_EE11_M_allocateEm.exit.i, %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE9push_backERKS1_.exit
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.cq, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.bg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.016)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.bh = invoke i64 @_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataEPNS_20ChunkManagementStateENS_15VectorDataIndexE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(82) %1, ptr noundef null, i64 -1)
          to label %bb.l unwind label %.loopexit  ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !458 ; 6 uses
  %i.bj = load ptr, ptr %i.q, align 8, !tbaa !459 ; 2 uses
  %.not.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !103
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %i.bk, ptr %i.x, align 8, !tbaa !458
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE9push_backERKS1_.exit

bb.n:                                             ; preds = %bb.l
  %i.bl = load ptr, ptr %1, align 8, !tbaa !455   ; 7 uses
  %i.bm = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.o, label %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #26
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #28
          to label %.noexc11 unwind label %.loopexit ; 8 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  store i64 %i.bh, ptr %i.bx, align 8, !tbaa !103
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc11
  %i.by = ptrtoaddr ptr %i.bw to i64
  %2 = sub i64 %i.bm, %i.bn
  %3 = add i64 %2, -8                             ; 2 uses
  %i.bz = lshr i64 %3, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 24
  %i.cb = sub i64 %i.by, %i.bn
  %diff.check = icmp ult i64 %i.cb, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cc = shl i64 %n.vec, 3                       ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bw, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bl, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bw, i64 %i.cf ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.bl, i64 %i.cf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.cg = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !103, !alias.scope !473, !noalias !470
  %wide.load37 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !103, !alias.scope !473, !noalias !470
  %i.ch = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !103, !alias.scope !470, !noalias !473
  store <2 x i64> %wide.load37, ptr %i.ch, align 8, !tbaa !103, !alias.scope !470, !noalias !473
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !475

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader39

.lr.ph.i.i.i.i.i.i.preheader39:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader39, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader39 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader39 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.cj = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !473, !noalias !470
  store i64 %i.cj, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !470, !noalias !473
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.bi
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !476

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc11
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bw, %.noexc11 ], [ %i.cd, %middle.block ], [ %i.cl, %.lr.ph.i.i.i.i.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #25
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.bw, ptr %1, align 8, !tbaa !455
  store ptr %i.cm, ptr %i.x, align 8, !tbaa !458
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu ; 2 uses
  store ptr %i.cn, ptr %i.q, align 8, !tbaa !459
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.m
  %i.co = phi ptr [ %i.cn, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.bj, %bb.m ]
  %i.cp = phi ptr [ %i.cm, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.bk, %bb.m ]
  %i.cq = add nuw i64 %.016, 1                    ; 2 uses
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !253
  %i.cs = load ptr, ptr %i.h, align 8, !tbaa !252
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = sdiv exact i64 %i.cv, 24
  %i.cx = icmp ult i64 %i.cq, %i.cw
  br i1 %i.cx, label %bb.j, label %._crit_edge, !llvm.loop !477

.loopexit:                                        ; preds = %bb.j, %bb.k, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNSt6vectorIN6duckdb13ChunkMetaDataESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.h
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !461 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i12

.lr.ph.i.i.i.i.i12:                               ; preds = %_ZNSt6vectorIN6duckdb13ChunkMetaDataESaIS1_EE9push_backEOS1_.exit, %.lr.ph.i.i.i.i.i12
  %.06.i.i.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i12 ], [ %.pre, %_ZNSt6vectorIN6duckdb13ChunkMetaDataESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.cy = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !129 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #25
  %.not.i.i.i.i.i13 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i13, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i12, !llvm.loop !478

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i12, %_ZNSt6vectorIN6duckdb13ChunkMetaDataESaIS1_EE9push_backEOS1_.exit.thread, %_ZNSt6vectorIN6duckdb13ChunkMetaDataESaIS1_EE9push_backEOS1_.exit
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.da = load i64, ptr %i.c, align 8, !tbaa !197
  %i.db = shl i64 %i.da, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cz, i8 0, i64 %i.db, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !198 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.b
  br i1 %i.dd, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.dc) #25
  br label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit.i

_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit.i: ; preds = %bb.q, %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i
  %i.de = load ptr, ptr %1, align 8, !tbaa !455   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb13ChunkMetaDataD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.de) #25
  br label %_ZN6duckdb13ChunkMetaDataD2Ev.exit

_ZN6duckdb13ChunkMetaDataD2Ev.exit:               ; preds = %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void

bb.s:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6duckdb13ChunkMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(82) dereferenceable(82) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb27ColumnDataCollectionSegment20InitializeChunkStateEmRNS_20ChunkManagementStateE(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(57) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call noundef nonnull align 8 dereferenceable(82) ptr @_ZN6duckdb6vectorINS_13ChunkMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %1)
  %i.c = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  tail call void @_ZN6duckdb19ColumnDataAllocator20InitializeChunkStateERNS_20ChunkManagementStateERNS_13ChunkMetaDataE(ptr noundef nonnull align 8 dereferenceable(176) %i.c, ptr noundef nonnull align 8 dereferenceable(57) %2, ptr noundef nonnull align 8 dereferenceable(82) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22ColumnDataCopyValidityERKNS_19UnifiedVectorFormatEPmmmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::ValidityMask", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %1, ptr %5, align 8, !tbaa !189
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i64 2048, ptr %i.b, align 8, !tbaa !479
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %bb.c, label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 2048)
          to label %._ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit_crit_edge unwind label %bb.d

._ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit_crit_edge: ; preds = %bb.c
  %.pre.i.pre = load ptr, ptr %5, align 8, !tbaa !189
  br label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit: ; preds = %._ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit_crit_edge, %bb.b
  %.pre.i = phi ptr [ %.pre.i.pre, %._ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit_crit_edge ], [ %1, %bb.b ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.pre.i, i8 -1, i64 256, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit, %bb.a
  %i.e = phi ptr [ %.pre.i, %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit ], [ %1, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !189
  %.not.i = icmp ne ptr %i.g, null
  %i.h = icmp ne i64 %4, 0
  %or.cond = and i1 %.not.i, %i.h
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.i = phi ptr [ %i.ai, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %i.e, %bb.e ] ; 4 uses
  %.01423 = phi i64 [ %i.aj, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ 0, %bb.e ] ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !480
  %i.k = add i64 %.01423, %2                      ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !489  ; 2 uses
  %.not.i17 = icmp eq ptr %i.l, null
end_hunk_2
begin_hunk_3_@_ZN6duckdb31ColumnDataCopyCompressedStringsERNS_18ColumnDataMetaDataERKNS_15VectorDataIndexERS2_RKNS_19UnifiedVectorFormatERNS_6VectorERKmSC_RmSD_RPh:bb.a
  %i.q = load i64, ptr %i.p, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq i64 %i.q, -1
  br i1 %.not.i, label %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit, label %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread

_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread: ; preds = %bb.d
  store i64 %i.q, ptr %10, align 8
  br label %bb.e

_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.s = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.t, align 8, !tbaa !103 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %10, align 8
  %.not196 = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not196, label %.thread192, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread, %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit
  %i.u = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %i.v = load i64, ptr %6, align 8, !tbaa !103
  %i.w = lshr i64 %i.v, 1
  %.not = icmp ult i64 %i.u, %i.w
  br i1 %.not, label %bb.f, label %.thread192

bb.f:                                             ; preds = %bb.e
  call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.x = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !165 ; 4 uses
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.y)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.ac = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %10) ; 6 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !189 ; 2 uses
  %.not.i160 = icmp eq ptr %i.ad, null
  %.promoted205 = load i64, ptr %8, align 8       ; 5 uses
  %.not219 = icmp eq i64 %i.ac, 0                 ; 2 uses
  br i1 %.not.i160, label %.preheader201, label %.preheader202

.preheader202:                                    ; preds = %bb.f
  br i1 %.not219, label %.loopexit, label %.lr.ph

.preheader201:                                    ; preds = %bb.f
  br i1 %.not219, label %.loopexit, label %.lr.ph207.preheader

.lr.ph207.preheader:                              ; preds = %.preheader201
  %xtraiter = and i64 %i.ac, 1
  %i.ae = icmp eq i64 %i.ac, 1
  br i1 %i.ae, label %.lr.ph207.epil.preheader, label %.lr.ph207.preheader.new

.lr.ph207.preheader.new:                          ; preds = %.lr.ph207.preheader
  %unroll_iter = and i64 %i.ac, -2
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207, %.lr.ph207.preheader.new
  %.0128206 = phi i64 [ 0, %.lr.ph207.preheader.new ], [ %i.ar, %.lr.ph207 ] ; 3 uses
  %i.af = phi i64 [ %.promoted205, %.lr.ph207.preheader.new ], [ %i.aq, %.lr.ph207 ]
  %niter = phi i64 [ 0, %.lr.ph207.preheader.new ], [ %niter.next.1, %.lr.ph207 ]
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.0128206
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !43 ; 2 uses
  %i.ai = icmp ult i32 %i.ah, 13
  %narrow = select i1 %i.ai, i32 0, i32 %i.ah
  %i.aj = zext i32 %narrow to i64
  %i.ak = add i64 %i.af, %i.aj                    ; 2 uses
  store i64 %i.ak, ptr %8, align 8, !tbaa !103
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.0128206
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !43 ; 2 uses
  %i.ao = icmp ult i32 %i.an, 13
  %narrow.1 = select i1 %i.ao, i32 0, i32 %i.an
  %i.ap = zext i32 %narrow.1 to i64
  %i.aq = add i64 %i.ak, %i.ap                    ; 4 uses
  store i64 %i.aq, ptr %8, align 8, !tbaa !103
  %i.ar = add nuw i64 %.0128206, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph207, !llvm.loop !494

.lr.ph:                                           ; preds = %.preheader202, %.lr.ph
  %.0129204 = phi i64 [ %i.be, %.lr.ph ], [ 0, %.preheader202 ] ; 4 uses
  %i.as = phi i64 [ %i.bd, %.lr.ph ], [ %.promoted205, %.preheader202 ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.0129204
  %i.au = lshr i64 %.0129204, 6
  %i.av = and i64 %.0129204, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !103
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %.not197 = icmp ne i64 %i.az, 0
  %.pre = load i32, ptr %i.at, align 8, !tbaa !43 ; 2 uses
  %i.ba = icmp ugt i32 %.pre, 12
  %narrow254 = select i1 %.not197, i1 %i.ba, i1 false
  %i.bb = zext i32 %.pre to i64
  %i.bc = select i1 %narrow254, i64 %i.bb, i64 0
  %i.bd = add i64 %i.bc, %i.as                    ; 3 uses
  store i64 %i.bd, ptr %8, align 8, !tbaa !103
  %i.be = add nuw i64 %.0129204, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %i.ac
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !495

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph207
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph207.epil.preheader

.lr.ph207.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph207.preheader
  %.0128206.epil.init = phi i64 [ 0, %.lr.ph207.preheader ], [ %i.ar, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init = phi i64 [ %.promoted205, %.lr.ph207.preheader ], [ %i.aq, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod270 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod270)
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.0128206.epil.init
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !43 ; 2 uses
  %i.bh = icmp ult i32 %i.bg, 13
  %narrow.epil = select i1 %i.bh, i32 0, i32 %i.bg
  %i.bi = zext i32 %narrow.epil to i64
  %i.bj = add i64 %.epil.init, %i.bi              ; 2 uses
  store i64 %i.bj, ptr %8, align 8, !tbaa !103
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph207.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader202, %.preheader201
  %i.bk = phi i64 [ %i.bj, %.lr.ph207.epil.preheader ], [ %.promoted205, %.preheader201 ], [ %.promoted205, %.preheader202 ], [ %i.aq, %.loopexit.loopexit.unr-lcssa ], [ %i.bd, %.lr.ph ] ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.thread192, label %bb.g

.thread192:                                       ; preds = %bb.e, %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.thread

bb.g:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %i.bm = phi i64 [ %i.bk, %bb.g ], [ %i.m, %bb.c ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !496, !nonnull !64, !align !94 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !499, !nonnull !64, !align !94 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !500, !nonnull !64, !align !94
  %.sroa.051.0.copyload = load i64, ptr %2, align 8, !tbaa !103
  %i.bt = call i64 @_ZN6duckdb27ColumnDataCollectionSegment18AllocateStringHeapEmRNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE(ptr noundef nonnull align 8 dereferenceable(136) %i.bo, i64 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(82) %i.bs, ptr noundef nonnull align 8 dereferenceable(88) %i.bq, i64 %.sroa.051.0.copyload)
  store i64 %i.bt, ptr %2, align 8, !tbaa !103
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !496, !nonnull !64, !align !94
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.bv, align 8, !tbaa !103
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.bx = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 noundef %.sroa.0.0.copyload.i)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !501
  %.not198 = icmp eq i64 %i.bz, -1
  br i1 %.not198, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ca = load ptr, ptr %i.bn, align 8, !tbaa !496 ; 5 uses
  %.sroa.049.0.copyload = load i64, ptr %2, align 8, !tbaa !103 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 96 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 104 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !458 ; 6 uses
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !455 ; 7 uses
  %i.cf = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cg = ptrtoint ptr %i.ce to i64               ; 3 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 3 uses
  %i.ci = ashr exact i64 %i.ch, 3                 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 112 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !459
  %.not.i.i161 = icmp eq ptr %i.cd, %i.ck
  br i1 %.not.i.i161, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %.sroa.049.0.copyload, ptr %i.cd, align 8, !tbaa !103
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.cl, ptr %i.cc, align 8, !tbaa !458
  br label %_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit

bb.k:                                             ; preds = %bb.i
  %i.cm = icmp eq i64 %i.ch, 9223372036854775800
  br i1 %i.cm, label %bb.l, label %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #26
  unreachable

_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ci, i64 1)
  %i.cn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ci ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.ci
  %i.cp = call i64 @llvm.umin.i64(i64 %i.cn, i64 1152921504606846975)
  %i.cq = select i1 %i.co, i64 1152921504606846975, i64 %i.cp ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cr = shl nuw nsw i64 %i.cq, 3
  %i.cs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #28 ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ch
  store i64 %.sroa.049.0.copyload, ptr %i.ct, align 8, !tbaa !103
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ce, %i.cd
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cu = ptrtoaddr ptr %i.cs to i64
  %14 = sub i64 %i.cf, %i.cg
  %15 = add i64 %14, -8                           ; 2 uses
  %i.cv = lshr i64 %15, 3
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %15, 56
  %i.cx = sub i64 %i.cu, %i.cg
  %diff.check = icmp ult i64 %i.cx, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader264, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cw, 4611686018427387900     ; 3 uses
  %i.cy = shl i64 %n.vec, 3                       ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cs, i64 %i.cy  ; 2 uses
  %i.da = getelementptr i8, ptr %i.ce, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cs, i64 %i.db ; 2 uses
  %next.gep260 = getelementptr i8, ptr %i.ce, i64 %i.db ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !502)
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.dc = getelementptr i8, ptr %next.gep260, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep260, align 8, !tbaa !103, !alias.scope !505, !noalias !502
  %wide.load261 = load <2 x i64>, ptr %i.dc, align 8, !tbaa !103, !alias.scope !505, !noalias !502
  %i.dd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !103, !alias.scope !502, !noalias !505
  store <2 x i64> %wide.load261, ptr %i.dd, align 8, !tbaa !103, !alias.scope !502, !noalias !505
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !507

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader264

.lr.ph.i.i.i.i.i.i.i.preheader264:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cz, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader264, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader264 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader264 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !502)
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.df = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !505, !noalias !502
  store i64 %i.df, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !502, !noalias !505
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dg, %i.cd
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !508

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cs, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cz, %middle.block ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ce) #25
  %.pre226.pre = load ptr, ptr %i.bn, align 8, !tbaa !496
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %.pre226 = phi ptr [ %.pre226.pre, %bb.m ], [ %i.ca, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i ]
  store ptr %i.cs, ptr %i.cb, align 8, !tbaa !455
  store ptr %i.di, ptr %i.cc, align 8, !tbaa !458
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cq
  store ptr %i.dj, ptr %i.cj, align 8, !tbaa !459
  br label %_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit

_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit: ; preds = %bb.j, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.dk = phi ptr [ %i.ca, %bb.j ], [ %.pre226, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %.sroa.0.0.copyload.i162 = load i64, ptr %i.bv, align 8, !tbaa !103
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  %i.dm = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i64 noundef %.sroa.0.0.copyload.i162)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  store i64 %i.ci, ptr %i.dn, align 8, !tbaa !103
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit, %bb.h
  %.sroa.046.0.copyload = load i64, ptr %2, align 8, !tbaa !103
  %i.do = getelementptr inbounds nuw i8, ptr %i.bo, i64 72 ; 2 uses
  %i.dp = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 noundef %.sroa.046.0.copyload) ; 3 uses
  %i.dq = call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo)
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !7
  %i.ds = icmp eq i8 %i.dr, 1
  br i1 %i.ds, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dt = load i64, ptr %i.dp, align 8
  %i.du = inttoptr i64 %i.dt to ptr
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit

bb.p:                                             ; preds = %bb.n
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !155
  %i.dx = load i32, ptr %i.dp, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.dy = zext i32 %i.dx to i64
  store i64 %i.dy, ptr %i.b, align 8, !tbaa !103
  %i.dz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN6duckdb12BufferHandleEESaIS5_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm(ptr noundef nonnull align 8 dereferenceable(57) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ea)
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !144
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !147
  %i.ee = zext i32 %i.dw to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit

_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit: ; preds = %bb.o, %bb.p
  %.0.i = phi ptr [ %i.du, %bb.o ], [ %i.ef, %bb.p ]
  store ptr %.0.i, ptr %9, align 8, !tbaa !509
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !103
  %i.eg = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 noundef %.sroa.0.0.copyload) ; 4 uses
  %i.eh = call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo)
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !7
  %i.ej = icmp eq i8 %i.ei, 1
  br i1 %i.ej, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit
  %i.ek = load i64, ptr %i.eg, align 8
  %i.el = inttoptr i64 %i.ek to ptr
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit164

bb.r:                                             ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !155
  %i.eo = load i32, ptr %i.eg, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.ep = zext i32 %i.eo to i64
  store i64 %i.ep, ptr %i.a, align 8, !tbaa !103
  %i.eq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN6duckdb12BufferHandleEESaIS5_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm(ptr noundef nonnull align 8 dereferenceable(57) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.er)
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !144
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !147
  %i.ev = zext i32 %i.en to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit164

_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit164: ; preds = %bb.q, %bb.r
  %.0.i163 = phi ptr [ %i.el, %bb.q ], [ %i.ew, %bb.r ] ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i163, i64 32768 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr %i.ex, ptr %11, align 8, !tbaa !189
  %i.ey = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, i8 0, i64 16, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store i64 2048, ptr %i.ez, align 8, !tbaa !479
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 3 uses
  %i.fb = load i16, ptr %i.fa, align 8, !tbaa !510
  %i.fc = icmp eq i16 %i.fb, 0
  br i1 %i.fc, label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit, label %bb.s

_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit: ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ex, i8 -1, i64 256, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit, %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit164
  %i.fd = load i8, ptr %4, align 8, !tbaa !493
  %i.fe = icmp eq i8 %i.fd, 2
  br i1 %i.fe, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i64 16, i1 false), !tbaa.struct !511
  %i.fh = load ptr, ptr %9, align 8, !tbaa !509
  %i.fi = load i32, ptr %12, align 8, !tbaa !43   ; 2 uses
  %i.fj = icmp ult i32 %i.fi, 13
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = select i1 %i.fj, ptr %i.fk, ptr %i.fm
  %i.fo = zext i32 %i.fi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fh, ptr align 1 %i.fn, i64 %i.fo, i1 false)
  %i.fp = load ptr, ptr %9, align 8, !tbaa !509
  store ptr %i.fp, ptr %i.fl, align 8, !tbaa !43
  %i.fq = load i64, ptr %6, align 8, !tbaa !103
  %.not222 = icmp eq i64 %i.fq, 0
  br i1 %.not222, label %._crit_edge217, label %.lr.ph216

._crit_edge217:                                   ; preds = %.lr.ph216, %bb.u
  %i.fr = phi i64 [ 0, %bb.u ], [ %i.fy, %.lr.ph216 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.ar

bb.v:                                             ; preds = %bb.t
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.ay

.lr.ph216:                                        ; preds = %bb.u, %.lr.ph216
  %.0145214 = phi i64 [ %i.fx, %.lr.ph216 ], [ 0, %bb.u ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6duckdb31ColumnDataCopyCompressedStringsERNS_18ColumnDataMetaDataERKNS_15VectorDataIndexERS2_RKNS_19UnifiedVectorFormatERNS_6VectorERKmSC_RmSD_RPh:bb.a
}

; Function Attrs: mustprogress uwtable
define range(i64 -164703072086692425, 164703072086692426) i64 @_ZN6duckdb27ColumnDataCollectionSegment18AllocateStringHeapEmRNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(82) %2, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::__detail::_AllocNode.977", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::VectorMetaData", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 -1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 0, ptr %i.c, align 8, !tbaa !510
  %i.d = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %1, 7
  %i.f = and i64 %i.e, -8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 4
  invoke void @_ZN6duckdb19ColumnDataAllocator12AllocateDataEmRjS1_PNS_20ChunkManagementStateE(ptr noundef nonnull align 8 dereferenceable(176) %i.d, i64 noundef %i.f, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull %3)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %i.h, ptr %5, align 8, !tbaa !516
  %i.i = invoke { ptr, i8 } @_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKjSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.d unwind label %bb.i       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !518  ; 8 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !521
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 56                  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !522
  %.not.i = icmp eq ptr %i.l, %i.s
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 10, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !523  ; 2 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !524  ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i.i.i.i.i, label %.noexc6, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = sdiv exact i64 %i.z, 24
  %i.ab = icmp ugt i64 %i.aa, 384307168202282325
  br i1 %i.ab, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIN6duckdb15SwizzleMetaDataEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !60

.noexc.i.i.i.i.i:                                 ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN6duckdb15SwizzleMetaDataEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #28
          to label %.noexc6 unwind label %bb.i

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIN6duckdb15SwizzleMetaDataEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %bb.e
  %i.ad = phi ptr [ null, %bb.e ], [ %i.ac, %_ZNSt15__new_allocatorIN6duckdb15SwizzleMetaDataEE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !524
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !523
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !525
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !526 ; 2 uses
  %i.ai = load ptr, ptr %i.u, align 8, !tbaa !526 ; 2 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZN6duckdb14VectorMetaDataC2ERKS0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc6, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ad, %.noexc6 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ah, %.noexc6 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !527
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb14VectorMetaDataC2ERKS0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !529

_ZN6duckdb14VectorMetaDataC2ERKS0_.exit.i:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc6
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc6 ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !523
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !518
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store ptr %i.an, ptr %i.k, align 8, !tbaa !518
  br label %_ZNSt6vectorIN6duckdb14VectorMetaDataESaIS1_EE9push_backERKS1_.exit

bb.g:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorIN6duckdb14VectorMetaDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %_ZNSt6vectorIN6duckdb14VectorMetaDataESaIS1_EE9push_backERKS1_.exit unwind label %bb.i

_ZNSt6vectorIN6duckdb14VectorMetaDataESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZN6duckdb14VectorMetaDataC2ERKS0_.exit.i, %bb.g
  %.not = icmp eq i64 %4, -1
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb14VectorMetaDataESaIS1_EE9push_backERKS1_.exit
  %i.ao = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %4)
          to label %_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit unwind label %bb.i

_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store i64 %i.q, ptr %i.ap, align 8, !tbaa !103
  br label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZNSt15__new_allocatorIN6duckdb15SwizzleMetaDataEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.c, %bb.b, %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !524 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14VectorMetaDataD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdlPv(ptr noundef nonnull %i.ar) #25
  br label %_ZN6duckdb14VectorMetaDataD2Ev.exit

_ZN6duckdb14VectorMetaDataD2Ev.exit:              ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %i.aq

bb.k:                                             ; preds = %_ZN6duckdb27ColumnDataCollectionSegment13GetVectorDataENS_15VectorDataIndexE.exit, %_ZNSt6vectorIN6duckdb14VectorMetaDataESaIS1_EE9push_backERKS1_.exit
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !524 ; 2 uses
  %.not.i.i.i.i9 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i9, label %_ZN6duckdb14VectorMetaDataD2Ev.exit10, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPv(ptr noundef nonnull %i.as) #25
  br label %_ZN6duckdb14VectorMetaDataD2Ev.exit10

_ZN6duckdb14VectorMetaDataD2Ev.exit10:            ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret i64 %i.q
}

; Function Attrs: mustprogress uwtable
define range(i64 -1152921504606846976, 1152921504606846976) i64 @_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !458  ; 6 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !455  ; 7 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !459
  %.not.i = icmp eq ptr %i.c, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.c, align 8, !tbaa !103
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.k, ptr %i.b, align 8, !tbaa !458
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #26
  unreachable

_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.h ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.h
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.g
  store i64 %1, ptr %i.s, align 8, !tbaa !103
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.t = ptrtoaddr ptr %i.r to i64
  %2 = sub i64 %i.e, %i.f
  %3 = add i64 %2, -8                             ; 2 uses
  %i.u = lshr i64 %3, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.w = sub i64 %i.t, %i.f
  %diff.check = icmp ult i64 %i.w, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.r, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %i.d, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.aa ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.d, i64 %i.aa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.ab = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep5, align 8, !tbaa !103, !alias.scope !533, !noalias !530
  %wide.load6 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !103, !alias.scope !533, !noalias !530
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !103, !alias.scope !530, !noalias !533
  store <2 x i64> %wide.load6, ptr %i.ac, align 8, !tbaa !103, !alias.scope !530, !noalias !533
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !535

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.preheader8:                    ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.ae = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !533, !noalias !530
  store i64 %i.ae, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !530, !noalias !533
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !536

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.y, %middle.block ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #25
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !455
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !458
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !459
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @_ZN6duckdb27ColumnDataCollectionSegment28GetValidityPointerForWritingEPhm(ptr nofree noundef readnone captures(ret: address, provenance) %0, i64 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = shl i64 %1, 11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20ColumnDataCopyStructERNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::ColumnDataMetaData", align 8 ; 9 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !496, !nonnull !64, !align !94
  tail call fastcc void @_ZN6duckdbL23TemplatedColumnDataCopyINS_15StructValueCopyEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10StructType13GetChildTypesB5cxx11ERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.c) ; 3 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !537
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !539
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %.029 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit ] ; 5 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !540, !nonnull !64, !align !94
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINS_22ColumnDataCopyFunctionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %.029) ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !496, !nonnull !64, !align !94
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !103
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %.sroa.0.0.copyload.i)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.01.0.copyload = load i64, ptr %i.x, align 8, !tbaa !103
  %i.y = add i64 %.sroa.01.0.copyload, %.029
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_15VectorDataIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.y)
  %.sroa.01.0.copyload.i = load i64, ptr %i.z, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %i.t, ptr %5, align 8, !tbaa !267
  %i.aa = load <2 x ptr>, ptr %i.a, align 8, !tbaa !101
  store <2 x ptr> %i.aa, ptr %i.k, align 8, !tbaa !101
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !500, !nonnull !64, !align !94
  store ptr %i.ab, ptr %i.l, align 8, !tbaa !450
  store i64 %.sroa.01.0.copyload.i, ptr %i.n, align 8, !tbaa !103
  store i64 -1, ptr %i.o, align 8, !tbaa !541
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.029)
          to label %bb.c unwind label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.ad = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.d unwind label %bb.u

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.e unwind label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !292
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.029)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.ag = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(73) %6, ptr noundef nonnull align 8 dereferenceable(104) %i.ag, i64 noundef %3, i64 noundef %4)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !54  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ai, align 8, !tbaa !56
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !58
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #24, !inline_history !542
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !51
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #24, !inline_history !542
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.k:                                             ; preds = %bb.i
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.al, %bb.l ], [ %i.av, %bb.m ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aw, label %bb.n, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !60
end_hunk_4
begin_hunk_5_@_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv:bb.a
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !58
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !568
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !568
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !60

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !54   ; 8 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i1, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !58
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !491
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !491
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, !prof !60

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19ColumnDataCopyArrayERNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %7 = alloca %"struct.duckdb::ColumnDataMetaData", align 8 ; 10 uses
  %8 = alloca %"struct.duckdb::ValidityMask", align 16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !496, !nonnull !64, !align !94 ; 3 uses
  tail call fastcc void @_ZN6duckdbL23TemplatedColumnDataCopyINS_15StructValueCopyEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4)
  %i.d = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2) ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = tail call noundef i64 @_ZN6duckdb9ArrayType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.e) ; 10 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !496, !nonnull !64, !align !94
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.j = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !501
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !500, !nonnull !64, !align !94
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !499, !nonnull !64, !align !94
  %i.r = tail call range(i64 -164703072086692425, 164703072086692426) i64 @_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataEPNS_20ChunkManagementStateENS_15VectorDataIndexE(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(82) %i.o, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 -1) ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !496  ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 104 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !458  ; 6 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !455  ; 7 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64                 ; 3 uses
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %i.aa = ashr exact i64 %i.z, 3                  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 112 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !459
  %.not.i.i = icmp eq ptr %i.v, %i.ac
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.r, ptr %i.v, align 8, !tbaa !103
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.ad, ptr %i.u, align 8, !tbaa !458
  br label %_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit

bb.d:                                             ; preds = %bb.b
  %i.ae = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.ae, label %bb.e, label %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #26
  unreachable

_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.aa
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975)
  %i.ai = select i1 %i.ag, i64 1152921504606846975, i64 %i.ah ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #28 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.z
  store i64 %i.r, ptr %i.al, align 8, !tbaa !103
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.v
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %9 = sub i64 %i.x, %i.y
  %10 = add i64 %9, -8                            ; 2 uses
  %i.an = lshr i64 %10, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 56
  %i.ap = sub i64 %i.am, %i.y
  %diff.check = icmp ult i64 %i.ap, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader182, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.w, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.w, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %i.au = getelementptr i8, ptr %next.gep177, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep177, align 8, !tbaa !103, !alias.scope !572, !noalias !569
  %wide.load178 = load <2 x i64>, ptr %i.au, align 8, !tbaa !103, !alias.scope !572, !noalias !569
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !103, !alias.scope !569, !noalias !572
  store <2 x i64> %wide.load178, ptr %i.av, align 8, !tbaa !103, !alias.scope !569, !noalias !572
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !574

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader182

.lr.ph.i.i.i.i.i.i.i.preheader182:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader182, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader182 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader182 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %i.ax = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !572, !noalias !569
  store i64 %i.ax, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !569, !noalias !572
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !575

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #25
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !496
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.f ], [ %i.s, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i ]
  store ptr %i.ak, ptr %i.t, align 8, !tbaa !455
  store ptr %i.ba, ptr %i.u, align 8, !tbaa !458
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bb, ptr %i.ab, align 8, !tbaa !459
  br label %_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit

_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit: ; preds = %bb.c, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.bc = phi ptr [ %i.s, %bb.c ], [ %.pre, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %.sroa.0.0.copyload.i73 = load i64, ptr %i.h, align 8, !tbaa !103
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.be = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 noundef %.sroa.0.0.copyload.i73)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store i64 %i.aa, ptr %i.bf, align 8, !tbaa !103
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit, %bb.a
  %i.bg = load ptr, ptr %0, align 8, !tbaa !540, !nonnull !64, !align !94
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINS_22ColumnDataCopyFunctionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 noundef 0) ; 3 uses
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !496, !nonnull !64, !align !94
  %.sroa.0.0.copyload.i74 = load i64, ptr %i.h, align 8, !tbaa !103
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bl = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 noundef %.sroa.0.0.copyload.i74)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %.sroa.014.0.copyload = load i64, ptr %i.bm, align 8, !tbaa !103
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_15VectorDataIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 noundef %.sroa.014.0.copyload)
  %.sroa.01.0.copyload.i = load i64, ptr %i.bo, align 8, !tbaa !103 ; 3 uses
  %.not110117 = icmp eq i64 %.sroa.01.0.copyload.i, -1
  br i1 %.not110117, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %storemerge118 = phi i64 [ %.sroa.01.0.copyload.i, %.lr.ph ], [ %i.bs, %bb.h ]
  %i.bq = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 noundef %storemerge118)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !103 ; 2 uses
  %.not110 = icmp eq i64 %i.bs, -1
  br i1 %.not110, label %._crit_edge, label %bb.h, !llvm.loop !576

._crit_edge:                                      ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %i.bi, ptr %7, align 8, !tbaa !267
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bu = load <2 x ptr>, ptr %i.b, align 8, !tbaa !101
  store <2 x ptr> %i.bu, ptr %i.bt, align 8, !tbaa !101
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !500, !nonnull !64, !align !94
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !450
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.sroa.01.0.copyload.i, ptr %i.by, align 8, !tbaa !103
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 -1, ptr %i.bz, align 8, !tbaa !541
  %i.ca = mul i64 %i.f, %4                        ; 2 uses
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(73) %6)
          to label %bb.i unwind label %bb.ao

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.cc = invoke noundef i64 @_ZNK6duckdb12ValidityMask8CapacityEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cb)
          to label %bb.j unwind label %bb.ap

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i64 noundef %i.cc)
          to label %_ZN6duckdb12ValidityMaskC2ERKS0_m.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cd) #24
  br label %.body

_ZN6duckdb12ValidityMaskC2ERKS0_m.exit:           ; preds = %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 16, !tbaa !54
  %i.ci = load <2 x ptr>, ptr %8, align 16, !tbaa !101
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.ci, ptr %i.cb, align 8, !tbaa !101
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !54 ; 8 uses
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !54
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb12ValidityMaskaSEOS0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb12ValidityMaskC2ERKS0_m.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 4 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 4294967297
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  br i1 %i.cn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.cl, align 8, !tbaa !56
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 0, ptr %i.cp, align 4, !tbaa !58
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !51
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #24, !inline_history !577
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !51
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #24, !inline_history !577
  br label %_ZN6duckdb12ValidityMaskaSEOS0_.exit

bb.n:                                             ; preds = %bb.l
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i75 = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i.i.i.i.i75, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.co, %bb.o ], [ %i.cy, %bb.p ]
  %i.cz = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.cz, label %bb.q, label %_ZN6duckdb12ValidityMaskaSEOS0_.exit, !prof !60

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #24
  br label %_ZN6duckdb12ValidityMaskaSEOS0_.exit

_ZN6duckdb12ValidityMaskaSEOS0_.exit:             ; preds = %_ZN6duckdb12ValidityMaskC2ERKS0_m.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 24
end_hunk_5
begin_hunk_6_@_ZN6duckdbL14ColumnDataCopyINS_8string_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  %i.hz = load ptr, ptr %i.k, align 8, !tbaa !496, !nonnull !64, !align !94
  %i.ia = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hz)
  %i.ib = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb19ColumnDataAllocator16GetBufferManagerEv(ptr noundef nonnull align 8 dereferenceable(176) %i.ia) ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !51
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 120
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = tail call noundef i64 %i.ie(ptr noundef nonnull align 8 dereferenceable(8) %i.ib)
  %.not219 = icmp eq i64 %4, 0
  br i1 %.not219, label %._crit_edge224, label %.lr.ph223

.lr.ph223:                                        ; preds = %bb.bf
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 4
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph223, %bb.da
  %.0109221 = phi i64 [ %4, %.lr.ph223 ], [ %i.rw, %bb.da ] ; 2 uses
  %.sroa.0.0.copyload169220 = phi i64 [ %i.hy, %.lr.ph223 ], [ %.sroa.0.0.copyload168, %bb.da ] ; 6 uses
  %i.in = phi i64 [ %3, %.lr.ph223 ], [ %i.rv, %bb.da ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %i.io = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i64 noundef %.sroa.0.0.copyload169220)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load i16, ptr %i.ip, align 8, !tbaa !510
  %i.ir = zext i16 %i.iq to i64
  %i.is = sub nsw i64 2048, %i.ir
  %i.it = and i64 %i.is, 4294967295               ; 2 uses
  %i.iu = call noundef i64 @llvm.umin.i64(i64 %i.it, i64 %.0109221) ; 5 uses
  store i64 %i.iu, ptr %i.g, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i64 0, ptr %i.h, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store i64 0, ptr %i.i, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  store ptr null, ptr %i.j, align 8, !tbaa !509
  %i.iv = call noundef zeroext i1 @_ZN6duckdb31ColumnDataCopyCompressedStringsERNS_18ColumnDataMetaDataERKNS_15VectorDataIndexERS2_RKNS_19UnifiedVectorFormatERNS_6VectorERKmSC_RmSD_RPh(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  br i1 %i.iv, label %bb.cr, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %1)
  %i.iw = load ptr, ptr %i.ig, align 8, !tbaa !513 ; 3 uses
  %.promoted202 = load i64, ptr %i.h, align 8, !tbaa !103 ; 3 uses
  %.promoted204 = load i64, ptr %i.i, align 8     ; 2 uses
  %i.ix = icmp ult i64 %.promoted202, %i.iu
  br i1 %i.ix, label %.lr.ph206, label %._crit_edge

.lr.ph206:                                        ; preds = %bb.bh
  %i.iy = load ptr, ptr %1, align 8, !tbaa !480
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !489 ; 2 uses
  %.not.i = icmp eq ptr %i.iz, null
  %i.ja = load ptr, ptr %i.ih, align 8, !tbaa !189 ; 2 uses
  %.not.i136 = icmp eq ptr %i.ja, null
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph206, %bb.bl
  %i.jb = phi i64 [ %.promoted202, %.lr.ph206 ], [ %i.jv, %bb.bl ] ; 3 uses
  %i.jc = phi i64 [ %.promoted204, %.lr.ph206 ], [ %i.ju, %bb.bl ] ; 4 uses
  %i.jd = add i64 %i.jb, %i.in                    ; 2 uses
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !3
  %i.jg = zext i32 %i.jf to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.bi, %bb.bj
  %i.jh = phi i64 [ %i.jg, %bb.bj ], [ %i.jd, %bb.bi ] ; 3 uses
  br i1 %.not.i136, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ji = lshr i64 %i.jh, 6
  %i.jj = and i64 %i.jh, 63
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.ji
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !103
  %i.jm = shl nuw i64 1, %i.jj
  %i.jn = and i64 %i.jl, %i.jm
  %.not185 = icmp eq i64 %i.jn, 0
  br i1 %.not185, label %bb.bl, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.iw, i64 %i.jh
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !43 ; 2 uses
  %i.jq = icmp ult i32 %i.jp, 13
  br i1 %i.jq, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.jr = zext i32 %i.jp to i64
  %i.js = add i64 %i.jc, %i.jr                    ; 2 uses
  %i.jt = icmp ugt i64 %i.js, %i.if
  br i1 %i.jt, label %._crit_edge, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.ju = phi i64 [ %i.jc, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ], [ %i.jc, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %i.js, %bb.bk ] ; 2 uses
  %i.jv = add nsw i64 %i.jb, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.jv, %i.iu
  br i1 %exitcond.not, label %._crit_edge, label %bb.bi, !llvm.loop !858

._crit_edge:                                      ; preds = %bb.bl, %bb.bk, %bb.bh
  %i.jw = phi i64 [ %.promoted204, %bb.bh ], [ %i.jc, %bb.bk ], [ %i.ju, %bb.bl ] ; 3 uses
  %.lcssa203 = phi i64 [ %.promoted202, %bb.bh ], [ %i.jb, %bb.bk ], [ %i.iu, %bb.bl ] ; 2 uses
  store i64 %.lcssa203, ptr %i.h, align 8
  store i64 %i.jw, ptr %i.i, align 8
  %i.jx = icmp ne i64 %i.it, 0
  %i.jy = icmp eq i64 %.lcssa203, 0
  %or.cond = and i1 %i.jx, %i.jy
  br i1 %or.cond, label %bb.bm, label %thread-pre-split

bb.bm:                                            ; preds = %._crit_edge
  %i.jz = load ptr, ptr %1, align 8, !tbaa !480
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !489 ; 2 uses
  %.not.i137 = icmp eq ptr %i.ka, null
  br i1 %.not.i137, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit138, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.in
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !3
  %i.kd = zext i32 %i.kc to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit138

_ZNK6duckdb15SelectionVector9get_indexEm.exit138: ; preds = %bb.bm, %bb.bn
  %i.ke = phi i64 [ %i.kd, %bb.bn ], [ %i.in, %bb.bm ]
  %i.kf = getelementptr inbounds nuw [16 x i8], ptr %i.iw, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !43
  %i.kh = zext i32 %i.kg to i64
  %i.ki = add i64 %i.jw, %i.kh                    ; 2 uses
  store i64 %i.ki, ptr %i.i, align 8, !tbaa !103
  store i64 1, ptr %i.h, align 8, !tbaa !103
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %._crit_edge, %_ZNK6duckdb15SelectionVector9get_indexEm.exit138
  %i.kj = phi i64 [ %i.ki, %_ZNK6duckdb15SelectionVector9get_indexEm.exit138 ], [ %i.jw, %._crit_edge ] ; 2 uses
  %.not125 = icmp eq i64 %i.kj, 0
  br i1 %.not125, label %bb.bx, label %bb.bo

bb.bo:                                            ; preds = %thread-pre-split
  %i.kk = load ptr, ptr %i.ii, align 8, !tbaa !500, !nonnull !64, !align !94
  %.sroa.042.0.copyload = load i64, ptr %9, align 8, !tbaa !103
  %i.kl = call i64 @_ZN6duckdb27ColumnDataCollectionSegment18AllocateStringHeapEmRNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE(ptr noundef nonnull align 8 dereferenceable(136) %i.o, i64 noundef %i.kj, ptr noundef nonnull align 8 dereferenceable(82) %i.kk, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 %.sroa.042.0.copyload) ; 4 uses
  store i64 %i.kl, ptr %9, align 8, !tbaa !103
  %i.km = load ptr, ptr %i.k, align 8, !tbaa !496, !nonnull !64, !align !94
  %.sroa.0.0.copyload.i139 = load i64, ptr %i.hl, align 8, !tbaa !103
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 72
  %i.ko = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.kn, i64 noundef %.sroa.0.0.copyload.i139)
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 40
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !501
  %.not186 = icmp eq i64 %i.kq, -1
  br i1 %.not186, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  %i.kr = load ptr, ptr %i.k, align 8, !tbaa !496 ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 96 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 104 ; 3 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !458 ; 6 uses
  %i.kv = load ptr, ptr %i.ks, align 8, !tbaa !455 ; 7 uses
  %i.kw = ptrtoint ptr %i.ku to i64               ; 2 uses
  %i.kx = ptrtoint ptr %i.kv to i64               ; 3 uses
  %i.ky = sub i64 %i.kw, %i.kx                    ; 3 uses
  %i.kz = ashr exact i64 %i.ky, 3                 ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kr, i64 112 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !459
  %.not.i.i140 = icmp eq ptr %i.ku, %i.lb
  br i1 %.not.i.i140, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i64 %i.kl, ptr %i.ku, align 8, !tbaa !103
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  store ptr %i.lc, ptr %i.kt, align 8, !tbaa !458
  br label %_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit

bb.br:                                            ; preds = %bb.bp
  %i.ld = icmp eq i64 %i.ky, 9223372036854775800
  br i1 %i.ld, label %bb.bs, label %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bs:                                            ; preds = %bb.br
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #26
  unreachable

_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.br
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kz, i64 1)
  %i.le = add nsw i64 %.sroa.speculated.i.i.i.i, %i.kz ; 2 uses
  %i.lf = icmp ult i64 %i.le, %i.kz
  %i.lg = call i64 @llvm.umin.i64(i64 %i.le, i64 1152921504606846975)
  %i.lh = select i1 %i.lf, i64 1152921504606846975, i64 %i.lg ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.lh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.li = shl nuw nsw i64 %i.lh, 3
  %i.lj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.li) #28 ; 8 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.ky
  store i64 %i.kl, ptr %i.lk, align 8, !tbaa !103
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.kv, %i.ku
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ll = ptrtoaddr ptr %i.lj to i64
  %12 = sub i64 %i.kw, %i.kx
  %13 = add i64 %12, -8                           ; 2 uses
  %i.lm = lshr i64 %13, 3
  %i.ln = add nuw nsw i64 %i.lm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 24
  %i.lo = sub i64 %i.ll, %i.kx
  %diff.check = icmp ult i64 %i.lo, 32
  %or.cond295 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond295, label %.lr.ph.i.i.i.i.i.i.i.preheader301, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ln, 4611686018427387900     ; 3 uses
  %i.lp = shl i64 %n.vec, 3                       ; 2 uses
  %i.lq = getelementptr i8, ptr %i.lj, i64 %i.lp  ; 2 uses
  %i.lr = getelementptr i8, ptr %i.kv, i64 %i.lp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ls = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.lj, i64 %i.ls ; 2 uses
  %next.gep292 = getelementptr i8, ptr %i.kv, i64 %i.ls ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.lt = getelementptr i8, ptr %next.gep292, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep292, align 8, !tbaa !103, !alias.scope !862, !noalias !859
  %wide.load293 = load <2 x i64>, ptr %i.lt, align 8, !tbaa !103, !alias.scope !862, !noalias !859
  %i.lu = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !103, !alias.scope !859, !noalias !862
  store <2 x i64> %wide.load293, ptr %i.lu, align 8, !tbaa !103, !alias.scope !859, !noalias !862
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lv = icmp eq i64 %index.next, %n.vec
  br i1 %i.lv, label %middle.block, label %vector.body, !llvm.loop !864

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ln, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader301

.lr.ph.i.i.i.i.i.i.i.preheader301:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.lj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.lq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.lr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader301, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ly, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader301 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.lx, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader301 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.lw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !862, !noalias !859
  store i64 %i.lw, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !859, !noalias !862
  %i.lx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i141 = icmp eq ptr %i.lx, %i.ku
  br i1 %.not.i.i.i.i.i.i.i141, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !865

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.lj, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.lq, %middle.block ], [ %i.ly, %.lr.ph.i.i.i.i.i.i.i ]
  %i.lz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.kv, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.kv) #25
  %.pre.pre = load ptr, ptr %i.k, align 8, !tbaa !496
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.bt, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.bt ], [ %i.kr, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i ]
  store ptr %i.lj, ptr %i.ks, align 8, !tbaa !455
  store ptr %i.lz, ptr %i.kt, align 8, !tbaa !458
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.lh
  store ptr %i.ma, ptr %i.la, align 8, !tbaa !459
  br label %_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit

_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit: ; preds = %bb.bq, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.mb = phi ptr [ %i.kr, %bb.bq ], [ %.pre, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %.sroa.0.0.copyload.i142 = load i64, ptr %i.hl, align 8, !tbaa !103
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 72
  %i.md = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.mc, i64 noundef %.sroa.0.0.copyload.i142)
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 40
  store i64 %i.kz, ptr %i.me, align 8, !tbaa !103
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit, %bb.bo
  %i.mf = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i64 noundef %i.kl) ; 3 uses
  %i.mg = call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  %i.mh = load i8, ptr %i.mg, align 8, !tbaa !7
  %i.mi = icmp eq i8 %i.mh, 1
  br i1 %i.mi, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.mj = load i64, ptr %i.mf, align 8
  %i.mk = inttoptr i64 %i.mj to ptr
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit

bb.bw:                                            ; preds = %bb.bu
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !155
  %i.mn = load i32, ptr %i.mf, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.mo = zext i32 %i.mn to i64
  store i64 %i.mo, ptr %i.b, align 8, !tbaa !103
  %i.mp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN6duckdb12BufferHandleEESaIS5_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm(ptr noundef nonnull align 8 dereferenceable(57) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mq)
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !144
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !147
  %i.mu = zext i32 %i.mm to i64
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.mu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit

_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit: ; preds = %bb.bv, %bb.bw
  %.0.i143 = phi ptr [ %i.mk, %bb.bv ], [ %i.mv, %bb.bw ]
  store ptr %.0.i143, ptr %i.j, align 8, !tbaa !509
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit, %thread-pre-split
  %i.mw = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i64 noundef %.sroa.0.0.copyload169220) ; 4 uses
  %i.mx = call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
  %i.my = load i8, ptr %i.mx, align 8, !tbaa !7
  %i.mz = icmp eq i8 %i.my, 1
  br i1 %i.mz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.na = load i64, ptr %i.mw, align 8
  %i.nb = inttoptr i64 %i.na to ptr
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit145

bb.bz:                                            ; preds = %bb.bx
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !155
  %i.ne = load i32, ptr %i.mw, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.nf = zext i32 %i.ne to i64
  store i64 %i.nf, ptr %i.a, align 8, !tbaa !103
  %i.ng = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN6duckdb12BufferHandleEESaIS5_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm(ptr noundef nonnull align 8 dereferenceable(57) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nh)
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !144
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !147
  %i.nl = zext i32 %i.nd to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit145

_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit145: ; preds = %bb.by, %bb.bz
  %.0.i144 = phi ptr [ %i.nb, %bb.by ], [ %i.nm, %bb.bz ] ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.0.i144, i64 32768 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store ptr %i.nn, ptr %11, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, i8 0, i64 16, i1 false)
  store i64 2048, ptr %i.ik, align 8, !tbaa !479
  %i.no = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 2 uses
  %i.np = load i16, ptr %i.no, align 8, !tbaa !510
  %i.nq = icmp eq i16 %i.np, 0
  br i1 %i.nq, label %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit, label %bb.ca

_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit: ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit145
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.nn, i8 -1, i64 256, i1 false)
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit, %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit145
  %i.nr = load i64, ptr %i.h, align 8, !tbaa !103 ; 2 uses
  %.not225 = icmp eq i64 %i.nr, 0
  br i1 %.not225, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %.lr.ph217.preheader

.lr.ph217.preheader:                              ; preds = %bb.ca
  %i.ns = load ptr, ptr %i.j, align 8, !tbaa !509
  br label %.lr.ph217

._crit_edge218:                                   ; preds = %bb.cq
  %.pre235 = load ptr, ptr %i.il, align 8, !tbaa !54 ; 8 uses
  %.not.i.i.i.i149 = icmp eq ptr %.pre235, null
  br i1 %.not.i.i.i.i149, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge218
  %i.nt = getelementptr inbounds nuw i8, ptr %.pre235, i64 8 ; 4 uses
  %i.nu = load atomic i64, ptr %i.nt acquire, align 8 ; 2 uses
  %i.nv = icmp eq i64 %i.nu, 4294967297
  %i.nw = trunc i64 %i.nu to i32                  ; 2 uses
  br i1 %i.nv, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.nt, align 8, !tbaa !56
  %i.nx = getelementptr inbounds nuw i8, ptr %.pre235, i64 12
  store i32 0, ptr %i.nx, align 4, !tbaa !58
  %i.ny = load ptr, ptr %.pre235, align 8, !tbaa !51
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8
  call void %i.oa(ptr noundef nonnull align 8 dereferenceable(16) %.pre235) #24, !inline_history !491
  %i.ob = load ptr, ptr %.pre235, align 8, !tbaa !51
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.od = load ptr, ptr %i.oc, align 8
  call void %i.od(ptr noundef nonnull align 8 dereferenceable(16) %.pre235) #24, !inline_history !491
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.cd:                                            ; preds = %bb.cb
  %i.oe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i150 = icmp eq i8 %i.oe, 0
  br i1 %.not.i.i.i.i.i150, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.of = add nsw i32 %i.nw, -1
  store i32 %i.of, ptr %i.nt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
end_hunk_6
begin_hunk_7_@_ZN6duckdbL14ColumnDataCopyINS_8string_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm:bb.a
  store ptr %i.qs, ptr %i.qh, align 8, !tbaa !523
  br label %_ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12emplace_backIJRNS0_15VectorDataIndexERPhRtRmEEEvDpOT_.exit

bb.cu:                                            ; preds = %bb.cs
  %i.qt = load ptr, ptr %i.qf, align 8, !tbaa !524 ; 5 uses
  %i.qu = ptrtoint ptr %i.qi to i64
  %i.qv = ptrtoint ptr %i.qt to i64
  %i.qw = sub i64 %i.qu, %i.qv                    ; 3 uses
  %i.qx = icmp eq i64 %i.qw, 9223372036854775800
  br i1 %i.qx, label %bb.cv, label %_ZNKSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.cv:                                            ; preds = %bb.cu
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #26
  unreachable

_ZNKSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cu
  %i.qy = sdiv exact i64 %i.qw, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.qy, i64 1)
  %i.qz = add nsw i64 %.sroa.speculated.i.i.i, %i.qy ; 2 uses
  %i.ra = icmp ult i64 %i.qz, %i.qy
  %i.rb = call i64 @llvm.umin.i64(i64 %i.qz, i64 384307168202282325)
  %i.rc = select i1 %i.ra, i64 384307168202282325, i64 %i.rb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.rc, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.rd = mul nuw nsw i64 %i.rc, 24
  %i.re = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rd) #28 ; 5 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.qw ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %9, align 8, !tbaa !103
  %i.rg = load ptr, ptr %i.j, align 8, !tbaa !509
  %i.rh = load i16, ptr %i.qg, align 8, !tbaa !528
  %i.ri = load i64, ptr %i.h, align 8, !tbaa !103 ; 2 uses
  %i.rj = trunc i64 %i.ri to i16                  ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.rf, align 8, !tbaa !103
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store ptr %i.rg, ptr %i.rk, align 8, !tbaa !151
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  store i16 %i.rh, ptr %i.rl, align 8, !tbaa !186
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rf, i64 18
  store i16 %i.rj, ptr %i.rm, align 2, !tbaa !187
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.qt, %i.qi
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ro, %.lr.ph.i.i.i.i.i.i ], [ %i.re, %_ZNKSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.rn, %.lr.ph.i.i.i.i.i.i ], [ %i.qt, %_ZNKSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !527, !alias.scope !868
  %i.rn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i161 = icmp eq ptr %i.rn, %i.qi
  br i1 %.not.i.i.i.i.i.i161, label %_ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !872

_ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.re, %_ZNKSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ro, %.lr.ph.i.i.i.i.i.i ]
  %i.rp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i36.i.i = icmp eq ptr %i.qt, null
  br i1 %.not.i36.i.i, label %_ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE17_M_realloc_insertIJRNS0_15VectorDataIndexERPhRtRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.qt) #25
  br label %_ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE17_M_realloc_insertIJRNS0_15VectorDataIndexERPhRtRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE17_M_realloc_insertIJRNS0_15VectorDataIndexERPhRtRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.cw, %_ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35.i.i
  store ptr %i.re, ptr %i.qf, align 8, !tbaa !524
  store ptr %i.rp, ptr %i.qh, align 8, !tbaa !523
  %i.rq = getelementptr inbounds nuw [24 x i8], ptr %i.re, i64 %i.rc
  store ptr %i.rq, ptr %i.qj, align 8, !tbaa !525
  br label %_ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12emplace_backIJRNS0_15VectorDataIndexERPhRtRmEEEvDpOT_.exit

_ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12emplace_backIJRNS0_15VectorDataIndexERPhRtRmEEEvDpOT_.exit: ; preds = %._ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12emplace_backIJRNS0_15VectorDataIndexERPhRtRmEEEvDpOT_.exit_crit_edge, %_ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE17_M_realloc_insertIJRNS0_15VectorDataIndexERPhRtRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ct
  %.pre-phi = phi i16 [ %.pre238, %._ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12emplace_backIJRNS0_15VectorDataIndexERPhRtRmEEEvDpOT_.exit_crit_edge ], [ %i.rj, %_ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE17_M_realloc_insertIJRNS0_15VectorDataIndexERPhRtRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.qo, %bb.ct ]
  %i.rr = phi i64 [ %.pre236, %._ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12emplace_backIJRNS0_15VectorDataIndexERPhRtRmEEEvDpOT_.exit_crit_edge ], [ %i.ri, %_ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE17_M_realloc_insertIJRNS0_15VectorDataIndexERPhRtRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.qn, %bb.ct ] ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qd, i64 8 ; 2 uses
  %i.rt = load i16, ptr %i.rs, align 8, !tbaa !510
  %i.ru = add i16 %i.rt, %.pre-phi
  store i16 %i.ru, ptr %i.rs, align 8, !tbaa !510
  %i.rv = add i64 %i.rr, %i.in                    ; 2 uses
  store i64 %i.rv, ptr %i.f, align 8, !tbaa !103
  %i.rw = sub i64 %.0109221, %i.rr                ; 3 uses
  %.not131 = icmp ne i64 %i.rw, 0
  %i.rx = icmp eq i64 %i.iu, %i.rr
  %or.cond134 = and i1 %i.rx, %.not131
  br i1 %or.cond134, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %_ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12emplace_backIJRNS0_15VectorDataIndexERPhRtRmEEEvDpOT_.exit
  %i.ry = getelementptr inbounds nuw i8, ptr %i.qd, i64 48
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !561
  %.not188 = icmp eq i64 %i.rz, -1
  br i1 %.not188, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.sa = load ptr, ptr %i.ii, align 8, !tbaa !500, !nonnull !64, !align !94
  %i.sb = call range(i64 -164703072086692425, 164703072086692426) i64 @_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataEPNS_20ChunkManagementStateENS_15VectorDataIndexE(ptr noundef nonnull align 8 dereferenceable(136) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.im, ptr noundef nonnull align 8 dereferenceable(82) %i.sa, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 %.sroa.0.0.copyload169220) ; 0 uses
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.sc = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i64 noundef %.sroa.0.0.copyload169220)
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 48
  %i.se = load i64, ptr %i.sd, align 8, !tbaa !103 ; 2 uses
  store i64 %i.se, ptr %10, align 8, !tbaa !103
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %_ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12emplace_backIJRNS0_15VectorDataIndexERPhRtRmEEEvDpOT_.exit
  %.sroa.0.0.copyload168 = phi i64 [ %i.se, %bb.cz ], [ %.sroa.0.0.copyload169220, %_ZNSt6vectorIN6duckdb15SwizzleMetaDataESaIS1_EE12emplace_backIJRNS0_15VectorDataIndexERPhRtRmEEEvDpOT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  %.not = icmp eq i64 %i.rw, 0
  br i1 %.not, label %._crit_edge224, label %bb.bg, !llvm.loop !873

._crit_edge224:                                   ; preds = %bb.da, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %_ZN6duckdbL23TemplatedColumnDataCopyINS_15StringValueCopyEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm.exit

_ZN6duckdbL23TemplatedColumnDataCopyINS_15StringValueCopyEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm.exit: ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, %bb.b, %._crit_edge224
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL14ColumnDataCopyINS_12list_entry_tEEEvRNS_18ColumnDataMetaDataERKNS_19UnifiedVectorFormatERNS_6VectorEmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"struct.duckdb::ValidityMask", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"struct.duckdb::ValidityMask", align 8 ; 9 uses
  %9 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 11 uses
  %10 = alloca %"struct.duckdb::ColumnDataMetaData", align 8 ; 10 uses
  %11 = alloca %"struct.duckdb::ConsecutiveChildListInfo", align 8 ; 10 uses
  %12 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %13 = alloca %"class.duckdb::Vector", align 8   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !496, !nonnull !64, !align !94 ; 3 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2) ; 4 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !496, !nonnull !64, !align !94
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8, !tbaa !103
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.k = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %.sroa.0.0.copyload.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !501
  %.not = icmp eq i64 %i.m, -1
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !500, !nonnull !64, !align !94
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !499, !nonnull !64, !align !94
  %i.s = tail call range(i64 -164703072086692425, 164703072086692426) i64 @_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataEPNS_20ChunkManagementStateENS_15VectorDataIndexE(ptr noundef nonnull align 8 dereferenceable(136) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(82) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %i.r, i64 -1) ; 2 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !496  ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 104 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !458  ; 6 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !455  ; 7 uses
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 3 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = ashr exact i64 %i.aa, 3                 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 112 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !459
  %.not.i.i = icmp eq ptr %i.w, %i.ad
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.s, ptr %i.w, align 8, !tbaa !103
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.ae, ptr %i.v, align 8, !tbaa !458
  br label %_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit

bb.d:                                             ; preds = %bb.b
  %i.af = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.af, label %bb.e, label %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #26
  unreachable

_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.ab
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #28 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aa
  store i64 %i.s, ptr %i.am, align 8, !tbaa !103
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.an = ptrtoaddr ptr %i.al to i64
  %14 = sub i64 %i.y, %i.z
  %15 = add i64 %14, -8                           ; 2 uses
  %i.ao = lshr i64 %15, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %15, 56
  %i.aq = sub i64 %i.an, %i.z
  %diff.check = icmp ult i64 %i.aq, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader252, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.al, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %i.x, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.au ; 2 uses
  %next.gep242 = getelementptr i8, ptr %i.x, i64 %i.au ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %i.av = getelementptr i8, ptr %next.gep242, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep242, align 8, !tbaa !103, !alias.scope !877, !noalias !874
  %wide.load243 = load <2 x i64>, ptr %i.av, align 8, !tbaa !103, !alias.scope !877, !noalias !874
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !103, !alias.scope !874, !noalias !877
  store <2 x i64> %wide.load243, ptr %i.aw, align 8, !tbaa !103, !alias.scope !874, !noalias !877
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !879

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader252

.lr.ph.i.i.i.i.i.i.i.preheader252:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader252, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader252 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader252 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %i.ay = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !877, !noalias !874
  store i64 %i.ay, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !874, !noalias !877
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.w
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !880

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.al, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.as, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #25
  %.pre.pre = load ptr, ptr %i.e, align 8, !tbaa !496
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.f ], [ %i.t, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i ]
  store ptr %i.al, ptr %i.u, align 8, !tbaa !455
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !458
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bc, ptr %i.ac, align 8, !tbaa !459
  br label %_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit

_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit: ; preds = %bb.c, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.bd = phi ptr [ %i.t, %bb.c ], [ %.pre, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %.sroa.0.0.copyload.i59 = load i64, ptr %i.i, align 8, !tbaa !103
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef %.sroa.0.0.copyload.i59)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store i64 %i.ab, ptr %i.bg, align 8, !tbaa !103
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit, %bb.a
  %i.bh = load ptr, ptr %0, align 8, !tbaa !540, !nonnull !64, !align !94
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINS_22ColumnDataCopyFunctionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 noundef 0) ; 3 uses
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !496, !nonnull !64, !align !94
  %.sroa.0.0.copyload.i60 = load i64, ptr %i.i, align 8, !tbaa !103
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bm = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 noundef %.sroa.0.0.copyload.i60)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %.sroa.06.0.copyload = load i64, ptr %i.bn, align 8, !tbaa !103
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_15VectorDataIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef %.sroa.06.0.copyload)
  %.sroa.01.0.copyload.i = load i64, ptr %i.bp, align 8, !tbaa !103 ; 3 uses
  %.not178189 = icmp eq i64 %.sroa.01.0.copyload.i, -1
  br i1 %.not178189, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.053191 = phi i64 [ 0, %.lr.ph ], [ %i.bv, %bb.h ]
  %storemerge190 = phi i64 [ %.sroa.01.0.copyload.i, %.lr.ph ], [ %i.bx, %bb.h ]
  %i.br = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 noundef %storemerge190) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i16, ptr %i.bs, align 8, !tbaa !510
  %i.bu = zext i16 %i.bt to i64
  %i.bv = add i64 %.053191, %i.bu                 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !103 ; 2 uses
  %.not178 = icmp eq i64 %i.bx, -1
  br i1 %.not178, label %._crit_edge, label %bb.h, !llvm.loop !881

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %.053.lcssa = phi i64 [ 0, %bb.g ], [ %i.bv, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.bj, ptr %10, align 8, !tbaa !267
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load <2 x ptr>, ptr %i.e, align 8, !tbaa !101
  store <2 x ptr> %i.ca, ptr %i.by, align 8, !tbaa !101
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !500, !nonnull !64, !align !94
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !450
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %.sroa.01.0.copyload.i, ptr %i.ce, align 8, !tbaa !103
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 -1, ptr %i.cf, align 8, !tbaa !541
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_ZN6duckdb10ListVector27GetConsecutiveChildListInfoERNS_6VectorEmm(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ConsecutiveChildListInfo") align 8 %11, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, i64 noundef %4)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !882, !range !63, !noundef !64
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.j, label %bb.ab

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !885
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.cl)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cm) #24
  br label %.body

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.j
  invoke void @_ZN6duckdb10ListVector28GetConsecutiveChildSelVectorERNS_6VectorERNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %3, i64 noundef %4)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.co = load i64, ptr %i.ck, align 8, !tbaa !885
  invoke void @_ZN6duckdb6VectorC1ERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %13, ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.co)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.cp = load i64, ptr %i.ck, align 8, !tbaa !885
  invoke void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %13, i64 noundef %i.cp)
          to label %bb.n unwind label %bb.y

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.cj, align 8, !tbaa !886
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !885
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %13, i64 noundef %i.cq, ptr noundef nonnull align 8 dereferenceable(73) %9)
          to label %bb.o unwind label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.cr = load ptr, ptr %i.bj, align 8, !tbaa !292
  %i.cs = load i64, ptr %i.cj, align 8, !tbaa !886
  %i.ct = load i64, ptr %i.ck, align 8, !tbaa !885
  invoke void %i.cr(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(73) %9, ptr noundef nonnull align 8 dereferenceable(104) %13, i64 noundef %i.cs, i64 noundef %i.ct)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %bb.o
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !54 ; 8 uses
  %.not.i.i.i.i61 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i61, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 4 uses
  %i.cx = load atomic i64, ptr %i.cw acquire, align 8 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 4294967297
  %i.cz = trunc i64 %i.cx to i32                  ; 2 uses
  br i1 %i.cy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.cw, align 8, !tbaa !56
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i32 0, ptr %i.da, align 4, !tbaa !58
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !51
end_hunk_7
begin_hunk_8_@_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.i = load i64, ptr %i.d, align 8, !tbaa !940
  %i.j = icmp ult i64 %1, %i.i
  br i1 %i.j, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.k = call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection13PrevScanIndexERNS_19ColumnDataScanStateERmS3_S3_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br i1 %i.k, label %bb.c, label %.loopexit, !llvm.loop !952

.preheader:                                       ; preds = %bb.c, %bb.e
  %i.l = load i64, ptr %i.f, align 8, !tbaa !939
  %.not20 = icmp ugt i64 %i.l, %1
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.m = call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection13NextScanIndexERNS_19ColumnDataScanStateERmS3_S3_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br i1 %i.m, label %.preheader, label %.loopexit, !llvm.loop !953

bb.f:                                             ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.b, align 8, !tbaa !103
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.o)
  %i.q = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.s = load i8, ptr %i.r, align 8, !tbaa !383
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i8 %i.s, ptr %i.u, align 8, !tbaa !394
  %i.v = load i64, ptr %i.a, align 8, !tbaa !103
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 120
  tail call void @_ZN6duckdb27ColumnDataCollectionSegment9ReadChunkEmRNS_20ChunkManagementStateERNS_9DataChunkERKNS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.q, i64 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(57) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.w)
  tail call void @_ZN6duckdb9DataChunk6VerifyEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.f
  %.0 = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %.loopexit
  %.1 = phi i1 [ %.0, %.loopexit ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb20ColumnDataCollection7GetRowsEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::ColumnDataRowCollection") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb23ColumnDataRowCollectionC1ERKNS_20ColumnDataCollectionENS_24ColumnDataScanPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i8 noundef zeroext 2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20ColumnDataCollection7CombineERS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.54", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !207  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !253  ; 3 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !252  ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !253
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !252  ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp eq i64 %i.k, %i.q
  br i1 %i.r, label %bb.c, label %_ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread

bb.c:                                             ; preds = %bb.b
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not9.i.i.i.i.i.i, label %_ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread18, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %.0810.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.s = tail call noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i.i.i) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i = icmp ne ptr %i.t, %i.g
  %or.cond.not.i = select i1 %i.s, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i, label %.lr.ph.i.i.i.i.i.i, label %_ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, !llvm.loop !954

_ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit: ; preds = %.lr.ph.i.i.i.i.i.i
  br i1 %i.s, label %_ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit._ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread18_crit_edge, label %_ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread

_ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit._ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread18_crit_edge: ; preds = %_ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !207
  br label %_ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread18

_ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread: ; preds = %bb.b, %_ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit
  %i.v = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %_ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.q unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.013 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !72     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.y) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.013, label %bb.g, label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.013, label %bb.g, label %bb.p

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn22 = phi { ptr, i32 } [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.v) #24
  br label %bb.p

_ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread18: ; preds = %_ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit._ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread18_crit_edge, %bb.c
  %i.ab = phi i64 [ %.pre, %_ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit._ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread18_crit_edge ], [ %i.b, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !207
  %i.ae = add i64 %i.ad, %i.ab
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !207
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !246 ; 4 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !245 ; 11 uses
  %i.aj = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ak = ptrtoint ptr %i.ai to i64               ; 4 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = ashr exact i64 %i.al, 3
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !246 ; 2 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !245 ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3
  %i.av = add nsw i64 %i.au, %i.am                ; 4 uses
  %i.aw = icmp ugt i64 %i.av, 1152921504606846975
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread18
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #26
  unreachable

bb.i:                                             ; preds = %_ZStneIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit.thread18
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !294 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.ak
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = icmp ult i64 %i.bb, %i.av
  br i1 %i.bc, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.i
  %i.bd = shl nuw nsw i64 %i.av, 3
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #28 ; 10 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ai, %i.ah
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %4 = sub i64 %i.aj, %i.ak
  %5 = add i64 %4, -8                             ; 2 uses
  %i.bf = lshr i64 %5, 3
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader74, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bh = add i64 %i.aj, -8
  %i.bi = sub i64 %i.bh, %i.ak
  %i.bj = and i64 %i.bi, -8
  %i.bk = add i64 %i.bj, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.be, i64 %i.bk
  %scevgep45 = getelementptr i8, ptr %i.ai, i64 %i.bk
  %bound0 = icmp ult ptr %i.be, %scevgep45
  %bound1 = icmp ult ptr %i.ai, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 4611686018427387900     ; 3 uses
  %i.bl = shl i64 %n.vec, 3                       ; 2 uses
  %i.bm = getelementptr i8, ptr %i.be, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.ai, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bo ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.ai, i64 %i.bo ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %i.bp = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !247, !alias.scope !960, !noalias !955
  %wide.load47 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !247, !alias.scope !960, !noalias !955
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !247, !alias.scope !963, !noalias !960
  store <2 x i64> %wide.load47, ptr %i.bq, align 8, !tbaa !247, !alias.scope !963, !noalias !960
  %i.br = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !247, !alias.scope !960, !noalias !955
  store <2 x ptr> splat (ptr null), ptr %i.br, align 8, !tbaa !247, !alias.scope !960, !noalias !955
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !965

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader74

.lr.ph.i.i.i.i.i.preheader74:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader74, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader74 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader74 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %i.bt = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !247, !alias.scope !958, !noalias !955
  store i64 %i.bt, ptr %.012.i.i.i.i.i, align 8, !tbaa !247, !alias.scope !955, !noalias !958
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !247, !alias.scope !958, !noalias !955
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, %i.ah
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !966

_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ai, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ai) #25
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.be, ptr %i.af, align 8, !tbaa !245
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.al ; 2 uses
  store ptr %i.bw, ptr %i.ag, align 8, !tbaa !246
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.av ; 2 uses
  store ptr %i.bx, ptr %i.ax, align 8, !tbaa !294
  %.pre27 = load ptr, ptr %i.an, align 8, !tbaa !310
  %.pre28 = load ptr, ptr %i.ao, align 8, !tbaa !310
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %bb.i, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i
  %i.by = phi ptr [ %i.ai, %bb.i ], [ %i.be, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ]
  %i.bz = phi ptr [ %i.ay, %bb.i ], [ %i.bx, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ]
  %i.ca = phi ptr [ %i.ah, %bb.i ], [ %i.bw, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ]
  %i.cb = phi ptr [ %i.ap, %bb.i ], [ %.pre28, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ] ; 2 uses
  %i.cc = phi ptr [ %i.aq, %bb.i ], [ %.pre27, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ] ; 2 uses
  %.not24 = icmp eq ptr %i.cc, %i.cb
  br i1 %.not24, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  tail call void @_ZN6duckdb20ColumnDataCollection5ResetEv(ptr noundef nonnull align 8 dereferenceable(112) %1)
  br label %bb.o

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.cd = phi ptr [ %i.dn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %i.by, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ] ; 11 uses
  %i.ce = phi ptr [ %i.do, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %i.bz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ] ; 5 uses
  %i.cf = phi ptr [ %i.dp, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %i.ca, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ] ; 3 uses
  %.sroa.015.025 = phi ptr [ %i.dq, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %i.cc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ] ; 5 uses
  %.not.i.i = icmp eq ptr %i.cf, %i.ce
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.cg = load i64, ptr %.sroa.015.025, align 8, !tbaa !247
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !247
  store ptr null, ptr %.sroa.015.025, align 8, !tbaa !247
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  store ptr %i.ch, ptr %i.ag, align 8, !tbaa !246
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.l:                                             ; preds = %.lr.ph
  %i.ci = ptrtoint ptr %i.ce to i64               ; 3 uses
  %i.cj = ptrtoint ptr %i.cd to i64               ; 3 uses
  %i.ck = sub i64 %i.ci, %i.cj                    ; 3 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775800
  br i1 %i.cl, label %bb.m, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #26
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.cm = ashr exact i64 %i.ck, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.cn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cm ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  %i.cp = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 1152921504606846975)
  %i.cq = select i1 %i.co, i64 1152921504606846975, i64 %i.cp ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cr = shl nuw nsw i64 %i.cq, 3
  %i.cs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #28 ; 11 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ck
  %i.cu = load i64, ptr %.sroa.015.025, align 8, !tbaa !247
  store i64 %i.cu, ptr %i.ct, align 8, !tbaa !247
  store ptr null, ptr %.sroa.015.025, align 8, !tbaa !247
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.cd, %i.ce
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %6 = sub i64 %i.ci, %i.cj
  %7 = add i64 %6, -8                             ; 2 uses
  %i.cv = lshr i64 %7, 3
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check58 = icmp ult i64 %7, 56
  br i1 %min.iters.check58, label %.lr.ph.i.i.i.i.i.i.i.preheader73, label %vector.memcheck49

vector.memcheck49:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep50 = getelementptr i8, ptr %i.cs, i64 8
  %i.cx = add i64 %i.ci, -8
  %i.cy = sub i64 %i.cx, %i.cj
  %i.cz = and i64 %i.cy, -8                       ; 2 uses
  %scevgep51 = getelementptr i8, ptr %scevgep50, i64 %i.cz
  %scevgep52 = getelementptr i8, ptr %i.cd, i64 8
  %scevgep53 = getelementptr i8, ptr %scevgep52, i64 %i.cz
  %bound054 = icmp ult ptr %i.cs, %scevgep53
  %bound155 = icmp ult ptr %i.cd, %scevgep51
  %found.conflict56 = and i1 %bound054, %bound155
  br i1 %found.conflict56, label %.lr.ph.i.i.i.i.i.i.i.preheader73, label %vector.ph59

vector.ph59:                                      ; preds = %vector.memcheck49
  %n.vec61 = and i64 %i.cw, 4611686018427387900   ; 3 uses
  %i.da = shl i64 %n.vec61, 3                     ; 2 uses
  %i.db = getelementptr i8, ptr %i.cs, i64 %i.da  ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cd, i64 %i.da
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph59
  %index63 = phi i64 [ 0, %vector.ph59 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.dd = shl i64 %index63, 3                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.cs, i64 %i.dd ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.cd, i64 %i.dd ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %i.de = getelementptr i8, ptr %next.gep65, i64 16
  %wide.load66 = load <2 x i64>, ptr %next.gep65, align 8, !tbaa !247, !alias.scope !972, !noalias !967
  %wide.load67 = load <2 x i64>, ptr %i.de, align 8, !tbaa !247, !alias.scope !972, !noalias !967
  %i.df = getelementptr i8, ptr %next.gep64, i64 16
  store <2 x i64> %wide.load66, ptr %next.gep64, align 8, !tbaa !247, !alias.scope !975, !noalias !972
  store <2 x i64> %wide.load67, ptr %i.df, align 8, !tbaa !247, !alias.scope !975, !noalias !972
  %i.dg = getelementptr i8, ptr %next.gep65, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep65, align 8, !tbaa !247, !alias.scope !972, !noalias !967
  store <2 x ptr> splat (ptr null), ptr %i.dg, align 8, !tbaa !247, !alias.scope !972, !noalias !967
  %index.next68 = add nuw i64 %index63, 4         ; 2 uses
  %i.dh = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.dh, label %middle.block69, label %vector.body62, !llvm.loop !977

middle.block69:                                   ; preds = %vector.body62
  %cmp.n70 = icmp eq i64 %i.cw, %n.vec61
  br i1 %cmp.n70, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader73

.lr.ph.i.i.i.i.i.i.i.preheader73:                 ; preds = %vector.memcheck49, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block69
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cs, %vector.memcheck49 ], [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.db, %middle.block69 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.cd, %vector.memcheck49 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dc, %middle.block69 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader73, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader73 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader73 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %i.di = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !247, !alias.scope !970, !noalias !967
  store i64 %i.di, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !247, !alias.scope !967, !noalias !970
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !247, !alias.scope !970, !noalias !967
  %i.dj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dj, %i.ce
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !978

_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block69, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cs, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.db, %middle.block69 ], [ %i.dk, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.cd) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.cs, ptr %i.af, align 8, !tbaa !245
  store ptr %i.dl, ptr %i.ag, align 8, !tbaa !246
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cq ; 2 uses
  store ptr %i.dm, ptr %i.ax, align 8, !tbaa !294
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.k, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.dn = phi ptr [ %i.cd, %bb.k ], [ %i.cs, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ]
  %i.do = phi ptr [ %i.ce, %bb.k ], [ %i.dm, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ]
  %i.dp = phi ptr [ %i.ch, %bb.k ], [ %i.dl, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.015.025, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dq, %i.cb
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %bb.a, %._crit_edge
  ret void

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn21 = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn22, %bb.g ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn21

bb.q:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20ColumnDataCollection5ResetEv(ptr noundef nonnull align 8 dereferenceable(112) initializes((40, 48)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.a, align 8, !tbaa !207
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !245  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !246  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !247 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb27ColumnDataCollectionSegmentEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb27ColumnDataCollectionSegmentEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZN6duckdb27ColumnDataCollectionSegmentD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.f) #24
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #25
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb27ColumnDataCollectionSegmentEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !249

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  store ptr %i.c, ptr %i.d, align 8, !tbaa !246
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit

_ZN6duckdb6vectorINS_10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.h = tail call noundef nonnull align 8 dereferenceable(176) ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.i = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #28, !noalias !979 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 8 uses
  store i32 1, ptr %i.j, align 8, !tbaa !56, !noalias !979
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  store i32 1, ptr %i.k, align 4, !tbaa !58, !noalias !979
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb19ColumnDataAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.i, align 8, !tbaa !51, !noalias !979
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  invoke void @_ZN6duckdb19ColumnDataAllocatorC1ERS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.l, ptr noundef nonnull align 8 dereferenceable(176) %i.h)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb19ColumnDataAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !979

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb19ColumnDataAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #25, !noalias !979
  resume { ptr, i32 } %i.m

bb.b:                                             ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_27ColumnDataCollectionSegmentESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !984
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.j, align 8, !tbaa !3, !noalias !984
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.j, align 8, !tbaa !3, !noalias !984
  br label %_ZN6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEC2ESt10shared_ptrIS1_E.exit.i

bb.d:                                             ; preds = %bb.b
  %i.q = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4, !noalias !984 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEC2ESt10shared_ptrIS1_E.exit.i

_ZN6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEC2ESt10shared_ptrIS1_E.exit.i: ; preds = %bb.d, %bb.c
  %i.r = load atomic i64, ptr %i.j acquire, align 8, !noalias !984 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEC2ESt10shared_ptrIS1_E.exit.i
  store i32 0, ptr %i.j, align 8, !tbaa !56, !noalias !984
  store i32 0, ptr %i.k, align 4, !tbaa !58, !noalias !984
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !51, !noalias !984
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !984
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !noalias !984, !inline_history !985
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !51, !noalias !984
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !noalias !984
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !noalias !984, !inline_history !985
  br label %_ZN6duckdb15make_shared_ptrINS_19ColumnDataAllocatorEJRS1_EEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit

bb.f:                                             ; preds = %_ZN6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEC2ESt10shared_ptrIS1_E.exit.i
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !984
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add nsw i32 %i.t, -1
  store i32 %i.ab, ptr %i.j, align 8, !tbaa !3, !noalias !984
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ac = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4, !noalias !984
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
end_hunk_8
begin_hunk_9_@_ZN6duckdb27ColumnDataCollectionSegment22AllocateVectorInternalERKNS_11LogicalTypeERNS_13ChunkMetaDataEPNS_20ChunkManagementStateE:bb.a

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 10, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !523 ; 2 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !524 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i.i.i.i.i, label %.noexc14, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = sdiv exact i64 %i.ag, 24
  %i.ai = icmp ugt i64 %i.ah, 384307168202282325
  br i1 %i.ai, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIN6duckdb15SwizzleMetaDataEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !60

.noexc.i.i.i.i.i:                                 ; preds = %bb.m
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN6duckdb15SwizzleMetaDataEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #28
          to label %.noexc14 unwind label %bb.p

.noexc14:                                         ; preds = %_ZNSt15__new_allocatorIN6duckdb15SwizzleMetaDataEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %bb.l
  %i.ak = phi ptr [ null, %bb.l ], [ %i.aj, %_ZNSt15__new_allocatorIN6duckdb15SwizzleMetaDataEE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !524
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !523
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ag
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.am, ptr %i.an, align 8, !tbaa !525
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !526 ; 3 uses
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !526 ; 2 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZN6duckdb14VectorMetaDataC2ERKS0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc14, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ak, %.noexc14 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ao, %.noexc14 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !527
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.ap
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb14VectorMetaDataC2ERKS0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !529

_ZN6duckdb14VectorMetaDataC2ERKS0_.exit.i:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc14
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.noexc14 ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.al, align 8, !tbaa !523
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.at = load ptr, ptr %i.v, align 8, !tbaa !518
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  store ptr %i.au, ptr %i.v, align 8, !tbaa !518
  br label %_ZNSt6vectorIN6duckdb14VectorMetaDataESaIS1_EE9push_backERKS1_.exit

bb.n:                                             ; preds = %bb.k
  invoke void @_ZNSt6vectorIN6duckdb14VectorMetaDataESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr %i.w, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %._ZNSt6vectorIN6duckdb14VectorMetaDataESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %bb.p

._ZNSt6vectorIN6duckdb14VectorMetaDataESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.n
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !524
  br label %_ZNSt6vectorIN6duckdb14VectorMetaDataESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb14VectorMetaDataESaIS1_EE9push_backERKS1_.exit: ; preds = %._ZNSt6vectorIN6duckdb14VectorMetaDataESaIS1_EE9push_backERKS1_.exit_crit_edge, %_ZN6duckdb14VectorMetaDataC2ERKS0_.exit.i
  %i.av = phi ptr [ %.pre, %._ZNSt6vectorIN6duckdb14VectorMetaDataESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.ao, %_ZN6duckdb14VectorMetaDataC2ERKS0_.exit.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14VectorMetaDataD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb14VectorMetaDataESaIS1_EE9push_backERKS1_.exit
  call void @_ZdlPv(ptr noundef nonnull %i.av) #25
  br label %_ZN6duckdb14VectorMetaDataD2Ev.exit

_ZN6duckdb14VectorMetaDataD2Ev.exit:              ; preds = %_ZNSt6vectorIN6duckdb14VectorMetaDataESaIS1_EE9push_backERKS1_.exit, %bb.o
  %i.aw = ptrtoint ptr %i.w to i64
  %i.ax = ptrtoint ptr %i.x to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = sdiv exact i64 %i.ay, 56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i64 %i.az

bb.p:                                             ; preds = %bb.n, %_ZNSt15__new_allocatorIN6duckdb15SwizzleMetaDataEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.p ], [ %i.t, %bb.j ]
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !524 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i16, label %_ZN6duckdb14VectorMetaDataD2Ev.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdlPv(ptr noundef nonnull %i.bb) #25
  br label %_ZN6duckdb14VectorMetaDataD2Ev.exit17

_ZN6duckdb14VectorMetaDataD2Ev.exit17:            ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn
}

declare noundef i64 @_ZN6duckdb13GetTypeIdSizeENS_12PhysicalTypeE(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define range(i64 -164703072086692425, 164703072086692426) i64 @_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataEPNS_20ChunkManagementStateENS_15VectorDataIndexE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(82) %2, ptr noundef %3, i64 %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i64 @_ZN6duckdb27ColumnDataCollectionSegment22AllocateVectorInternalERKNS_11LogicalTypeERNS_13ChunkMetaDataEPNS_20ChunkManagementStateE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(82) %2, ptr noundef %3) ; 3 uses
  %.not = icmp eq i64 %4, -1                      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %4)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.a, ptr %i.d, align 8, !tbaa !103
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !289
  %i.g = icmp eq i8 %i.f, 24
  br i1 %i.g, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10StructType13GetChildTypesB5cxx11ERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1) ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !537  ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !539  ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 56
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !458  ; 3 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !455  ; 3 uses
  %.not.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i, label %_ZN6duckdb27ColumnDataCollectionSegment15ReserveChildrenEm.exit.thread, label %.lr.ph.i

_ZN6duckdb27ColumnDataCollectionSegment15ReserveChildrenEm.exit.thread: ; preds = %bb.d
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !459
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12emplace_backIJEEEvDpOT_.exit.i, %.lr.ph.i
  %i.y = phi ptr [ %i.s, %.lr.ph.i ], [ %i.be, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12emplace_backIJEEEvDpOT_.exit.i ] ; 8 uses
  %i.z = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.bf, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12emplace_backIJEEEvDpOT_.exit.i ] ; 5 uses
  %i.aa = phi ptr [ %i.r, %.lr.ph.i ], [ %i.bg, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12emplace_backIJEEEvDpOT_.exit.i ] ; 3 uses
  %.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bh, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12emplace_backIJEEEvDpOT_.exit.i ]
  %.not.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 -1, ptr %i.aa, align 8, !tbaa !561
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !458
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12emplace_backIJEEEvDpOT_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ac = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ad = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.h, label %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #26
  unreachable

_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ag = ashr exact i64 %i.ae, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975)
  %i.ak = select i1 %i.ai, i64 1152921504606846975, i64 %i.aj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #28 ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  store i64 -1, ptr %i.an, align 8, !tbaa !561
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ao = ptrtoaddr ptr %i.am to i64
  %5 = sub i64 %i.ac, %i.ad
  %6 = add i64 %5, -8                             ; 2 uses
  %i.ap = lshr i64 %6, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 24
  %i.ar = sub i64 %i.ao, %i.ad
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader48, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.am, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.y, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.av ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.y, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.aw = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep44, align 8, !tbaa !103, !alias.scope !1121, !noalias !1118
  %wide.load45 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !103, !alias.scope !1121, !noalias !1118
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !103, !alias.scope !1118, !noalias !1121
  store <2 x i64> %wide.load45, ptr %i.ax, align 8, !tbaa !103, !alias.scope !1118, !noalias !1121
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader48

.lr.ph.i.i.i.i.i.i.i.preheader48:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader48, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader48 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader48 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.az = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !1121, !noalias !1118
  store i64 %i.az, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !1118, !noalias !1121
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.z
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1124

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.at, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i32.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i32.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #25
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i.i
  store ptr %i.am, ptr %i.p, align 8, !tbaa !455
  store ptr %i.bc, ptr %i.q, align 8, !tbaa !458
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.bd, ptr %i.x, align 8, !tbaa !459
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12emplace_backIJEEEvDpOT_.exit.i

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12emplace_backIJEEEvDpOT_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.f
  %i.be = phi ptr [ %i.y, %bb.f ], [ %i.am, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.bf = phi ptr [ %i.z, %bb.f ], [ %i.bd, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.bg = phi ptr [ %i.ab, %bb.f ], [ %i.bc, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.bh = add nuw i64 %.04.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bh, %i.o
  br i1 %exitcond.not.i, label %_ZN6duckdb27ColumnDataCollectionSegment15ReserveChildrenEm.exit, label %bb.e, !llvm.loop !1125

_ZN6duckdb27ColumnDataCollectionSegment15ReserveChildrenEm.exit: ; preds = %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12emplace_backIJEEEvDpOT_.exit.i
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !537
  %.pre33 = load ptr, ptr %i.h, align 8, !tbaa !539
  %i.bi = icmp eq ptr %.pre, %.pre33
  %i.bj = ptrtoint ptr %i.r to i64
  %i.bk = ptrtoint ptr %i.s to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3                 ; 5 uses
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb27ColumnDataCollectionSegment15ReserveChildrenEm.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.030.us = phi i64 [ %i.bt, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.bo = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.030.us)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = tail call i64 @_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataEPNS_20ChunkManagementStateENS_15VectorDataIndexE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(82) %2, ptr noundef %3, i64 -1)
  %i.br = add i64 %.030.us, %i.bm
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_15VectorDataIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %i.br)
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !103
  %i.bt = add nuw i64 %.030.us, 1                 ; 2 uses
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !537
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !539
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = sdiv exact i64 %i.by, 56
  %i.ca = icmp ult i64 %i.bt, %i.bz
  br i1 %i.ca, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !1126

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %_ZN6duckdb27ColumnDataCollectionSegment15ReserveChildrenEm.exit.thread, %_ZN6duckdb27ColumnDataCollectionSegment15ReserveChildrenEm.exit
  %i.cb = phi i64 [ %i.w, %_ZN6duckdb27ColumnDataCollectionSegment15ReserveChildrenEm.exit.thread ], [ %i.bm, %.lr.ph.split.us ], [ %i.bm, %_ZN6duckdb27ColumnDataCollectionSegment15ReserveChildrenEm.exit ], [ %i.bm, %.lr.ph.split ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cd = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 noundef %i.a)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  store i64 %i.cb, ptr %i.ce, align 8, !tbaa !103
  br label %bb.j

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.030 = phi i64 [ %i.co, %.lr.ph.split ], [ 0, %.lr.ph ] ; 4 uses
  %i.cf = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 noundef %4)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %.sroa.06.0.copyload = load i64, ptr %i.cg, align 8, !tbaa !103
  %i.ch = add i64 %.sroa.06.0.copyload, %.030
  %i.ci = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_15VectorDataIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %i.ch)
  %.sroa.01.0.copyload.i = load i64, ptr %i.ci, align 8, !tbaa !103
  %i.cj = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.030)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = tail call i64 @_ZN6duckdb27ColumnDataCollectionSegment14AllocateVectorERKNS_11LogicalTypeERNS_13ChunkMetaDataEPNS_20ChunkManagementStateENS_15VectorDataIndexE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(82) %2, ptr noundef %3, i64 %.sroa.01.0.copyload.i)
  %i.cm = add i64 %.030, %i.bm
  %i.cn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_15VectorDataIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %i.cm)
  store i64 %i.cl, ptr %i.cn, align 8, !tbaa !103
  %i.co = add nuw i64 %.030, 1                    ; 2 uses
  %i.cp = load ptr, ptr %i.i, align 8, !tbaa !537
  %i.cq = load ptr, ptr %i.h, align 8, !tbaa !539
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = sdiv exact i64 %i.ct, 56
  %i.cv = icmp ult i64 %i.co, %i.cu
  br i1 %i.cv, label %.lr.ph.split, label %._crit_edge, !llvm.loop !1126

bb.j:                                             ; preds = %._crit_edge, %bb.c
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define range(i64 -1152921504606846976, 1152921504606846976) i64 @_ZN6duckdb27ColumnDataCollectionSegment15ReserveChildrenEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !458  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !455  ; 2 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !459
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12emplace_backIJEEEvDpOT_.exit, %bb.a
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  ret i64 %i.i

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12emplace_backIJEEEvDpOT_.exit
  %i.j = phi ptr [ %i.d, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12emplace_backIJEEEvDpOT_.exit ] ; 8 uses
  %i.k = phi ptr [ %.pre, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12emplace_backIJEEEvDpOT_.exit ] ; 5 uses
  %i.l = phi ptr [ %i.c, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12emplace_backIJEEEvDpOT_.exit ] ; 3 uses
  %.04 = phi i64 [ 0, %.lr.ph ], [ %i.as, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12emplace_backIJEEEvDpOT_.exit ]
  %.not.i = icmp eq ptr %i.l, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.l, align 8, !tbaa !561
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !458
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12emplace_backIJEEEvDpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.o = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #26
  unreachable

_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28 ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  store i64 -1, ptr %i.y, align 8, !tbaa !561
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = ptrtoaddr ptr %i.x to i64
  %2 = sub i64 %i.n, %i.o
  %3 = add i64 %2, -8                             ; 2 uses
  %i.aa = lshr i64 %3, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 24
  %i.ac = sub i64 %i.z, %i.o
  %diff.check = icmp ult i64 %i.ac, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.x, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.j, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ag ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.j, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  %i.ah = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !103, !alias.scope !1130, !noalias !1127
  %wide.load11 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !103, !alias.scope !1130, !noalias !1127
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !103, !alias.scope !1127, !noalias !1130
  store <2 x i64> %wide.load11, ptr %i.ai, align 8, !tbaa !103, !alias.scope !1127, !noalias !1130
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i, label %.lr.ph.i.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.i.preheader13:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader13 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !1130, !noalias !1127
  store i64 %i.ak, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !1127, !noalias !1130
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1133

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.x, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i32.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i32.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #25
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit31.i.i
  store ptr %i.x, ptr %i.a, align 8, !tbaa !455
  store ptr %i.an, ptr %i.b, align 8, !tbaa !458
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v ; 2 uses
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !459
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12emplace_backIJEEEvDpOT_.exit

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12emplace_backIJEEEvDpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ap = phi ptr [ %i.j, %bb.c ], [ %i.x, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.aq = phi ptr [ %i.k, %bb.c ], [ %i.ao, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ar = phi ptr [ %i.m, %bb.c ], [ %i.an, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.as = add nuw i64 %.04, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1125
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.54", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !537
  %i.e = load ptr, ptr %0, align 8, !tbaa !539    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 56                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !103
  store i64 %i.i, ptr %i.b, align 8, !tbaa !103
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EE3getILb1EEERKS9_m.exit, label %bb.b, !prof !104

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !72     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EE3getILb1EEERKS9_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb27ColumnDataCollectionSegment13SetChildIndexENS_16VectorChildIndexEmNS_15VectorDataIndexE(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 %1, i64 noundef %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = add i64 %2, %1
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_15VectorDataIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.b)
  store i64 %3, ptr %i.c, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.54", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !253
  %i.e = load ptr, ptr %0, align 8, !tbaa !252    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !103
  store i64 %i.i, ptr %i.b, align 8, !tbaa !103
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !104

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
end_hunk_9
