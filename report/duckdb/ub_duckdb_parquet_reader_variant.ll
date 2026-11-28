Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_parquet_reader_variant?download=true
inline.NumInlined: 1336
inline.NumDeleted: 395
begin_hunk_0_@_ZN6duckdb20ConvertShreddedValueINS_8string_tEE7ConvertES1_:bb.a
  store i64 %i.s, ptr %i.a, align 8, !tbaa !67, !noalias !233
  %i.v = icmp ugt i32 %i.o, 15
  br i1 %i.v, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.w, ptr %7, align 8, !tbaa !57, !alias.scope !233
  %i.x = load i64, ptr %i.a, align 8, !tbaa !67, !noalias !233
  store i64 %i.x, ptr %i.t, align 8, !tbaa !63, !alias.scope !233
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.h
  %i.y = phi ptr [ %i.w, %.noexc.i.i ], [ %i.t, %bb.h ] ; 2 uses
  switch i32 %i.o, label %bb.j [
    i32 1, label %bb.i
    i32 0, label %_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i8, ptr %i.e, align 4, !tbaa !63, !noalias !233
  store i8 %i.z, ptr %i.y, align 1, !tbaa !63
  br label %_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr nonnull align 1 %i.r, i64 %i.s, i1 false)
  br label %_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit

_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit:     ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !67, !noalias !233 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !71, !alias.scope !233
  %i.ac = load ptr, ptr %7, align 8, !tbaa !57, !alias.scope !233
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !233
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %7)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit
  store i8 0, ptr %0, align 8, !tbaa !107
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !108
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.af, align 8, !tbaa !109
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !110
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !111
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 32, i1 false)
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %6) #21
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #21
  %i.ak = load ptr, ptr %7, align 8, !tbaa !57    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.t
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.ak) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

bb.l:                                             ; preds = %_ZNK6duckdb8string_t9GetStringB5cxx11Ev.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %7, align 8, !tbaa !57    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.t
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.an) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %.pn7 = phi { ptr, i32 } [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14 ], [ %.pn17, %bb.f ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7

bb.n:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20ConvertShreddedValueINS_9hugeint_tEE7ConvertES1_(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::VariantValue") align 8 initializes((0, 1), (16, 20), (24, 32)) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !234 {
bb.a:
  %3 = alloca %"class.duckdb::Value", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN6duckdb5Value4UUIDENS_9hugeint_tE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %3, i64 %1, i64 %2)
  store i8 0, ptr %0, align 8, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.b, align 8, !tbaa !109
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.c, align 8, !tbaa !110
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.a, ptr %i.d, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %3) #21
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25VariantShreddedConversion19ConvertShreddedLeafERNS_6VectorES2_S2_mmmb(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !235 {
bb.a:
  %8 = alloca %"class.duckdb::vector.9", align 8  ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::allocator", align 1   ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !122
  switch i8 %i.b, label %bb.aa [
    i8 10, label %bb.b
    i8 11, label %bb.c
    i8 12, label %bb.d
    i8 13, label %bb.e
    i8 14, label %bb.f
    i8 22, label %bb.g
    i8 23, label %bb.h
    i8 21, label %bb.i
    i8 15, label %bb.s
    i8 16, label %bb.t
    i8 32, label %bb.u
    i8 19, label %bb.v
    i8 20, label %bb.w
    i8 26, label %bb.x
    i8 25, label %bb.y
    i8 54, label %bb.z
  ]

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18ConvertTypedValuesIbNS_20ConvertShreddedValueIbEELNS_13LogicalTypeIdE10EEENS_6vectorINS_12VariantValueELb1ESaIS5_EEERNS_6VectorES9_S9_mmmb(ptr dead_on_unwind writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.af unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18ConvertTypedValuesIaNS_20ConvertShreddedValueIaEELNS_13LogicalTypeIdE11EEENS_6vectorINS_12VariantValueELb1ESaIS5_EEERNS_6VectorES9_S9_mmmb(ptr dead_on_unwind writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.af unwind label %bb.j

bb.d:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18ConvertTypedValuesIsNS_20ConvertShreddedValueIsEELNS_13LogicalTypeIdE12EEENS_6vectorINS_12VariantValueELb1ESaIS5_EEERNS_6VectorES9_S9_mmmb(ptr dead_on_unwind writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.af unwind label %bb.j

bb.e:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18ConvertTypedValuesIiNS_20ConvertShreddedValueIiEELNS_13LogicalTypeIdE13EEENS_6vectorINS_12VariantValueELb1ESaIS5_EEERNS_6VectorES9_S9_mmmb(ptr dead_on_unwind writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.af unwind label %bb.j

bb.f:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18ConvertTypedValuesIlNS_20ConvertShreddedValueIlEELNS_13LogicalTypeIdE14EEENS_6vectorINS_12VariantValueELb1ESaIS5_EEERNS_6VectorES9_S9_mmmb(ptr dead_on_unwind writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.af unwind label %bb.j

bb.g:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18ConvertTypedValuesIfNS_20ConvertShreddedValueIfEELNS_13LogicalTypeIdE22EEENS_6vectorINS_12VariantValueELb1ESaIS5_EEERNS_6VectorES9_S9_mmmb(ptr dead_on_unwind writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.af unwind label %bb.j

bb.h:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18ConvertTypedValuesIdNS_20ConvertShreddedValueIdEELNS_13LogicalTypeIdE23EEENS_6vectorINS_12VariantValueELb1ESaIS5_EEERNS_6VectorES9_S9_mmmb(ptr dead_on_unwind writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.af unwind label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.d = load i8, ptr %i.c, align 1, !tbaa !236   ; 2 uses
  switch i8 %i.d, label %bb.n [
    i8 7, label %bb.k
    i8 9, label %bb.l
    i8 -52, label %bb.m
  ]

bb.j:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.m, %bb.l, %bb.k
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.k:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb18ConvertTypedValuesIiNS_20ConvertShreddedValueIiEELNS_13LogicalTypeIdE21EEENS_6vectorINS_12VariantValueELb1ESaIS5_EEERNS_6VectorES9_S9_mmmb(ptr dead_on_unwind writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.af unwind label %bb.j

bb.l:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb18ConvertTypedValuesIlNS_20ConvertShreddedValueIlEELNS_13LogicalTypeIdE21EEENS_6vectorINS_12VariantValueELb1ESaIS5_EEERNS_6VectorES9_S9_mmmb(ptr dead_on_unwind writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.af unwind label %bb.j

bb.m:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb18ConvertTypedValuesINS_9hugeint_tENS_20ConvertShreddedValueIS1_EELNS_13LogicalTypeIdE21EEENS_6vectorINS_12VariantValueELb1ESaIS6_EEERNS_6VectorESA_SA_mmmb(ptr dead_on_unwind writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.af unwind label %bb.j

bb.n:                                             ; preds = %bb.i
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_12PhysicalTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i8 noundef zeroext %i.d)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.ai unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread: ; preds = %bb.n
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0135 = phi i1 [ false, %bb.q ], [ true, %bb.p ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %11, align 8, !tbaa !57    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.i) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.l = load ptr, ptr %9, align 8, !tbaa !57     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.o
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.p = load ptr, ptr %9, align 8, !tbaa !57     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  call void @_ZdlPv(ptr noundef %i.p) #23
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.l) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br i1 %.0135, label %15, label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br i1 %.0135, label %15, label %bb.ah

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154.thread
  %.pn.pn165.ph = phi { ptr, i32 } [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %15

15:                                               ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %.pn.pn165 = phi { ptr, i32 } [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ], [ %.pn.pn165.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.f) #21
  br label %bb.ah

bb.s:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18ConvertTypedValuesINS_6date_tENS_20ConvertShreddedValueIS1_EELNS_13LogicalTypeIdE15EEENS_6vectorINS_12VariantValueELb1ESaIS6_EEERNS_6VectorESA_SA_mmmb(ptr dead_on_unwind writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.af unwind label %bb.j

bb.t:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18ConvertTypedValuesINS_7dtime_tENS_20ConvertShreddedValueIS1_EELNS_13LogicalTypeIdE16EEENS_6vectorINS_12VariantValueELb1ESaIS6_EEERNS_6VectorESA_SA_mmmb(ptr dead_on_unwind writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.af unwind label %bb.j

bb.u:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18ConvertTypedValuesINS_14timestamp_tz_tENS_20ConvertShreddedValueIS1_EELNS_13LogicalTypeIdE32EEENS_6vectorINS_12VariantValueELb1ESaIS6_EEERNS_6VectorESA_SA_mmmb(ptr dead_on_unwind writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.af unwind label %bb.j

bb.v:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18ConvertTypedValuesINS_11timestamp_tENS_20ConvertShreddedValueIS1_EELNS_13LogicalTypeIdE19EEENS_6vectorINS_12VariantValueELb1ESaIS6_EEERNS_6VectorESA_SA_mmmb(ptr dead_on_unwind writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.af unwind label %bb.j

bb.w:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18ConvertTypedValuesINS_14timestamp_ns_tENS_20ConvertShreddedValueIS1_EELNS_13LogicalTypeIdE20EEENS_6vectorINS_12VariantValueELb1ESaIS6_EEERNS_6VectorESA_SA_mmmb(ptr dead_on_unwind writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.af unwind label %bb.j

bb.x:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18ConvertTypedValuesINS_8string_tENS_20ConvertShreddedValueIS1_EELNS_13LogicalTypeIdE26EEENS_6vectorINS_12VariantValueELb1ESaIS6_EEERNS_6VectorESA_SA_mmmb(ptr dead_on_unwind writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.af unwind label %bb.j

bb.y:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18ConvertTypedValuesINS_8string_tENS_20ConvertShreddedValueIS1_EELNS_13LogicalTypeIdE25EEENS_6vectorINS_12VariantValueELb1ESaIS6_EEERNS_6VectorESA_SA_mmmb(ptr dead_on_unwind writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.af unwind label %bb.j

bb.z:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb18ConvertTypedValuesINS_9hugeint_tENS_20ConvertShreddedValueIS1_EELNS_13LogicalTypeIdE54EEENS_6vectorINS_12VariantValueELb1ESaIS6_EEERNS_6VectorESA_SA_mmmb(ptr dead_on_unwind writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.af unwind label %bb.j

bb.aa:                                            ; preds = %bb.a
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ab unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.thread

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.ac unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.ai unwind label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.thread: ; preds = %bb.aa
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split197

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %14, align 8, !tbaa !57    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.v) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.y = load ptr, ptr %12, align 8, !tbaa !57    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread: ; preds = %bb.ab
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.ac = load ptr, ptr %12, align 8, !tbaa !57   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %.sink.split197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread
  call void @_ZdlPv(ptr noundef %i.ac) #23
  br label %.sink.split197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  call void @_ZdlPv(ptr noundef %i.y) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br i1 %.0, label %16, label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br i1 %.0, label %16, label %bb.ah

.sink.split197:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160.thread
  %.pn150.pn177.ph = phi { ptr, i32 } [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160.thread ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.thread ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %16

16:                                               ; preds = %.sink.split197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %.pn150.pn177 = phi { ptr, i32 } [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %.pn150.pn177.ph, %.sink.split197 ]
  call void @__cxa_free_exception(ptr %i.s) #21
  br label %bb.ah

bb.af:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.k, %bb.l, %bb.m, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb12VariantValueEEEvT_S5_(ptr noundef null, ptr noundef null)
          to label %_ZNSt6vectorIN6duckdb12VariantValueESaIS1_EED2Ev.exit unwind label %bb.ag, !inline_history !4

bb.ag:                                            ; preds = %bb.af
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #24, !inline_history !121
  unreachable

_ZNSt6vectorIN6duckdb12VariantValueESaIS1_EED2Ev.exit: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret void

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %bb.j, %15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %16
  %.pn150.pn.pn = phi { ptr, i32 } [ %.pn150.pn177, %16 ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %i.e, %bb.j ], [ %.pn.pn165, %15 ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ]
  call void @_ZNSt6vectorIN6duckdb12VariantValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  resume { ptr, i32 } %.pn150.pn.pn

bb.ai:                                            ; preds = %bb.ad, %bb.q
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18ConvertTypedValuesIbNS_20ConvertShreddedValueIbEELNS_13LogicalTypeIdE10EEENS_6vectorINS_12VariantValueELb1ESaIS5_EEERNS_6VectorES9_S9_mmmb(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.9") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !guid !243 {
bb.a:
  %8 = alloca %"class.duckdb::Value", align 8     ; 5 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 5 uses
  %10 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 11 uses
  %11 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %12 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %13 = alloca %"struct.duckdb::VariantValue", align 8 ; 15 uses
  %14 = alloca %"struct.duckdb::VariantValue", align 8 ; 15 uses
  %15 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %16 = alloca %"struct.duckdb::VariantMetadata", align 8 ; 8 uses
  %17 = alloca %"struct.duckdb::VariantValue", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %10)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.b unwind label %bb.n

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %10)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %11)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(73) %11)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIbEEvv(ptr noundef nonnull align 8 dereferenceable(73) %11)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %12)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(73) %12)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %12)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.i = icmp ugt i64 %5, 64051194700380387
  br i1 %i.i, label %bb.j, label %_ZNSt6vectorIN6duckdb12VariantValueESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #22
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNSt6vectorIN6duckdb12VariantValueESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %5, 0             ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN6duckdb12VariantValueESaIS1_EEC2EmRKS2_.exit.i.i, label %_ZNSt15__new_allocatorIN6duckdb12VariantValueEE8allocateEmPKv.exit.i.i.i.i.i

_ZNSt15__new_allocatorIN6duckdb12VariantValueEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb12VariantValueESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.j = mul nuw nsw i64 %5, 144
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #25
          to label %_ZNSt12_Vector_baseIN6duckdb12VariantValueESaIS1_EEC2EmRKS2_.exit.i.i unwind label %bb.r

_ZNSt12_Vector_baseIN6duckdb12VariantValueESaIS1_EEC2EmRKS2_.exit.i.i: ; preds = %_ZNSt15__new_allocatorIN6duckdb12VariantValueEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNSt6vectorIN6duckdb12VariantValueESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.l = phi ptr [ null, %_ZNSt6vectorIN6duckdb12VariantValueESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ], [ %i.k, %_ZNSt15__new_allocatorIN6duckdb12VariantValueEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !117
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !118
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %i.l, i64 %5
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !139
  %i.p = invoke noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6duckdb12VariantValueEmEET_S5_T0_(ptr noundef %i.l, i64 noundef %5)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb12VariantValueESaIS1_EEC2EmRKS2_.exit.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !117    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPv(ptr noundef nonnull %i.r) #23
  br label %.body

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb12VariantValueESaIS1_EEC2EmRKS2_.exit.i.i
  store ptr %i.p, ptr %i.m, align 8, !tbaa !118
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !140
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %.preheader, label %.preheader129

.preheader129:                                    ; preds = %bb.m
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader129
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %bb.ac

.preheader:                                       ; preds = %bb.m
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph134

.lr.ph134:                                        ; preds = %.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.s

bb.n:                                             ; preds = %bb.b, %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.o:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.p:                                             ; preds = %bb.e, %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.q:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.r:                                             ; preds = %bb.g, %bb.h, %_ZNSt15__new_allocatorIN6duckdb12VariantValueEE8allocateEmPKv.exit.i.i.i.i.i, %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %.lr.ph134, %_ZN6duckdb12VariantValueD2Ev.exit
  %.039133 = phi i64 [ 0, %.lr.ph134 ], [ %i.br, %_ZN6duckdb12VariantValueD2Ev.exit ] ; 3 uses
  %i.ax = load ptr, ptr %11, align 8, !tbaa !141
  %i.ay = add i64 %.039133, %4                    ; 2 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !142 ; 2 uses
  %.not.i81 = icmp eq ptr %i.az, null
  br i1 %.not.i81, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !16
  %i.bc = zext i32 %i.bb to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.t, %bb.s
  %i.bd = phi i64 [ %i.bc, %bb.t ], [ %i.ay, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !244, !range !114, !noundef !115
  %i.bg = trunc nuw i8 %i.bf to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21, !noalias !245
  invoke void @_ZN6duckdb5Value7BOOLEANEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %9, i1 noundef zeroext %i.bg)
          to label %bb.u unwind label %bb.z, !noalias !245

end_hunk_0
