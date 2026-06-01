inline.NumInlined: 39107
inline.NumDeleted: 7522
begin_hunk_0_@_ZNK8facebook5velox10FlatVectorINS0_9TimestampEE7hashAllEv:bb.a
  call void @__clang_call_terminate(ptr %i.ek) #50
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit36: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.t, %.noexc.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void

bb.v:                                             ; preds = %.loopexit
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.h
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @_ZNSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #41
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.em, %bb.w ], [ %i.el, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.d
  %.pn23.pn = phi { ptr, i32 } [ %i.al, %bb.d ], [ %.pn, %bb.x ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  resume { ptr, i32 } %.pn23.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorINS0_9TimestampEE8isScalarEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !28
  %i.c = icmp ne i8 %i.b, 33
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorINS0_9TimestampEE7setNullEib(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !353
  %i.c = icmp ne ptr %i.b, null
  %or.cond.i = or i1 %2, %i.c
  br i1 %or.cond.i, label %bb.b, label %_ZN8facebook5velox10BaseVector7setNullEib.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i32, ptr %i.d, align 8, !tbaa !343
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.e, i1 noundef zeroext true)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !353  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i8, ptr %i.g, align 4, !tbaa !374
  %i.i = and i8 %i.h, 2
  %.not.i3 = icmp eq i8 %i.i, 0
  br i1 %.not.i3, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit, label %bb.c, !prof !381

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #51
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !354
  %i.l = zext i32 %1 to i64                       ; 2 uses
  %i.m = lshr i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !122   ; 2 uses
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  %i.p = trunc i32 %1 to i8
  %i.q = and i8 %i.p, 7
  %i.r = shl nuw i8 1, %i.q
  %i.s = or i8 %i.o, %i.r
  br label %_ZN8facebook5velox4bits7setNullEPmjb.exit

bb.e:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  %i.t = and i64 %i.l, 7
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !122
  %i.w = and i8 %i.v, %i.o
  br label %_ZN8facebook5velox4bits7setNullEPmjb.exit

_ZN8facebook5velox4bits7setNullEPmjb.exit:        ; preds = %bb.d, %bb.e
  %.sink.i.i = phi i8 [ %i.w, %bb.e ], [ %i.s, %bb.d ]
  store i8 %.sink.i.i, ptr %i.n, align 1, !tbaa !122
  br label %_ZN8facebook5velox10BaseVector7setNullEib.exit

_ZN8facebook5velox10BaseVector7setNullEib.exit:   ; preds = %bb.a, %_ZN8facebook5velox4bits7setNullEPmjb.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp ne ptr %i.y, null
  %or.cond.not = select i1 %2, i1 true, i1 %i.z
  br i1 %or.cond.not, label %_ZN8facebook5velox10FlatVectorINS0_9TimestampEE12ensureValuesEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit
  %i.aa = tail call noundef ptr @_ZN8facebook5velox10FlatVectorINS0_9TimestampEE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(216) %0) ; 0 uses
  br label %_ZN8facebook5velox10FlatVectorINS0_9TimestampEE12ensureValuesEv.exit

_ZN8facebook5velox10FlatVectorINS0_9TimestampEE12ensureValuesEv.exit: ; preds = %bb.f, %_ZN8facebook5velox10BaseVector7setNullEib.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorINS0_9TimestampEE6resizeEib(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::optional.340", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !343  ; 2 uses
  %i.c = icmp eq i32 %1, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !353
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.f, align 8, !tbaa !832
  call void @_ZN8facebook5velox10FlatVectorINS0_9TimestampEE12resizeValuesEiiRKSt8optionalIS2_E(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_ZN8facebook5velox10BaseVector6resizeEib(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %1, i1 noundef zeroext %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorINS0_9TimestampEE4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKi(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(38) %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !894
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !900
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox10FlatVectorINS0_9TimestampEE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKi(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(38) %2, ptr noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorINS0_9TimestampEE4copyEPKNS0_10BaseVectorEiii(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"struct.facebook::velox::BaseVector::CopyRange", align 4 ; 7 uses
  %6 = alloca %"class.folly::Range", align 8      ; 5 uses
  %i.a = icmp eq i32 %4, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store i32 %3, ptr %5, align 4, !tbaa !893
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %2, ptr %i.b, align 4, !tbaa !890
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %4, ptr %i.c, align 4, !tbaa !892
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 12
  store ptr %5, ptr %6, align 8, !tbaa !886
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !889
  call void @_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.437", align 16 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"struct.facebook::velox::Timestamp", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !28
  %i.e = icmp eq i8 %i.d, 33
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !343
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.g, i1 noundef zeroext true)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !359
  tail call void @_ZN8facebook5velox10BaseVector8setNullsEPmRKN5folly5RangeIPKNS1_9CopyRangeEEEb(ptr noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext true)
  br label %_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(94) %1) ; 18 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i8, ptr %i.n, align 8, !tbaa !28    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load i8, ptr %i.p, align 8, !tbaa !28    ; 2 uses
  %.not = icmp eq i8 %i.o, %i.q
  br i1 %.not, label %bb.g, label %bb.d, !prof !381

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i8 %i.o, ptr %i.a, align 1, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i8 %i.q, ptr %i.b, align 1, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41, !noalias !11596
  store ptr %i.a, ptr %3, align 16, !tbaa !122, !noalias !11596
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox8TypeKindENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.r, align 8, !tbaa !122, !noalias !11596
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.b, ptr %i.s, align 16, !tbaa !122, !noalias !11596
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox8TypeKindENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.t, align 8, !tbaa !122, !noalias !11596
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.7, i64 11, i64 255, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41, !noalias !11596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.7) #51
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %4, align 8, !tbaa !317    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.y = load i64, ptr %i.w, align 8, !tbaa !122
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  resume { ptr, i32 } %i.u

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !359 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !359
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(94) %i.m)
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !343
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.aj, i1 noundef zeroext true)
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !359
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi ptr [ %i.ak, %bb.h ], [ %i.ad, %bb.g ]
  %.0.fr = freeze ptr %.0                         ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !353
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = tail call noundef ptr @_ZN8facebook5velox10FlatVectorINS0_9TimestampEE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(216) %0) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !352
  switch i32 %i.aq, label %bb.w [
    i32 3, label %bb.l
    i32 1, label %bb.r
  ]

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !353
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = load i32, ptr %i.au, align 8, !tbaa !343
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.av, i1 noundef zeroext true)
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !359
  tail call void @_ZN8facebook5velox10BaseVector8setNullsEPmRKN5folly5RangeIPKNS1_9CopyRangeEEEb(ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext true)
  br label %_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit

bb.n:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1538
  %i.az = load ptr, ptr %2, align 8, !tbaa !886   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !889 ; 2 uses
  %.not11.i = icmp eq ptr %i.az, %i.bb
  br i1 %.not11.i, label %_ZN8facebook5velox16applyToEachRangeIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_T1_E_EEvSF_RKSG_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.012.i = phi ptr [ %i.bp, %.lr.ph.i ], [ %i.az, %.lr.ph.i.preheader ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !890
  %i.bf = load i32, ptr %.012.i, align 4, !tbaa !893
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !892
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !1538
  %i.bj = sext i32 %i.be to i64
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = sext i32 %i.bf to i64
  %i.bm = getelementptr inbounds [16 x i8], ptr %i.ay, i64 %i.bl
  %i.bn = sext i32 %i.bh to i64
  %i.bo = shl nsw i64 %i.bn, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %i.bm, i64 %i.bo, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.bp, %i.bb
  br i1 %.not.i, label %_ZN8facebook5velox16applyToEachRangeIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_T1_E_EEvSF_RKSG_.exit, label %.lr.ph.i

_ZN8facebook5velox16applyToEachRangeIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_T1_E_EEvSF_RKSG_.exit: ; preds = %.lr.ph.i, %bb.n
  %.not21 = icmp eq ptr %.0.fr, null
  br i1 %.not21, label %_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN8facebook5velox16applyToEachRangeIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_T1_E_EEvSF_RKSG_.exit
  %.not22 = icmp eq ptr %i.ab, null
  br i1 %.not22, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val.i = load ptr, ptr %2, align 8, !tbaa !886 ; 2 uses
  %.val1.i = load ptr, ptr %i.ba, align 8, !tbaa !889 ; 2 uses
  %.not5.i.i = icmp eq ptr %.val.i, %.val1.i
  br i1 %.not5.i.i, label %_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %.val.i, %bb.p ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !890
  %i.bs = load i32, ptr %.06.i.i, align 4, !tbaa !893
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !892
  %i.bv = sext i32 %i.bs to i64
  %i.bw = sext i32 %i.br to i64
  %i.bx = sext i32 %i.bu to i64
  tail call void @_ZN8facebook5velox4bits8copyBitsEPKmmPmmm(ptr noundef nonnull %i.ab, i64 noundef %i.bv, ptr noundef nonnull %.0.fr, i64 noundef %i.bw, i64 noundef %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.by, %.val1.i
  br i1 %.not.i.i, label %_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit, label %.lr.ph.i.i

bb.q:                                             ; preds = %bb.o
  tail call void @_ZN8facebook5velox10BaseVector8setNullsEPmRKN5folly5RangeIPKNS1_9CopyRangeEEEb(ptr noundef nonnull %.0.fr, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false)
  br label %_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit

bb.r:                                             ; preds = %bb.k
  %i.bz = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = tail call noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(94) %i.m, i32 noundef 0)
  br i1 %i.cc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN8facebook5velox10BaseVector8setNullsEPmRKN5folly5RangeIPKNS1_9CopyRangeEEEb(ptr noundef %.0.fr, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext true)
  br label %_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !5355
  %i.ce = load ptr, ptr %2, align 8, !tbaa !886   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !889 ; 2 uses
  %.not16.i = icmp eq ptr %i.ce, %i.cg
  br i1 %.not16.i, label %_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %.01417.i = phi ptr [ %i.cm, %._crit_edge.i ], [ %i.ce, %.preheader.i.preheader ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01417.i, i64 8 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !892
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph.i24, label %._crit_edge.i

.lr.ph.i24:                                       ; preds = %.preheader.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.01417.i, i64 4
  br label %bb.u

._crit_edge.i:                                    ; preds = %bb.u, %.preheader.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.01417.i, i64 12 ; 2 uses
  %.not.i23 = icmp eq ptr %i.cm, %i.cg
  br i1 %.not.i23, label %_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_.exit, label %.preheader.i

bb.u:                                             ; preds = %bb.u, %.lr.ph.i24
  %.015.i = phi i32 [ 0, %.lr.ph.i24 ], [ %i.cs, %bb.u ] ; 2 uses
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !890
  %i.co = add nsw i32 %i.cn, %.015.i
  %i.cp = load ptr, ptr %i.ch, align 8, !tbaa !1538
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds [16 x i8], ptr %i.cp, i64 %i.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !5355
  %i.cs = add nuw nsw i32 %.015.i, 1              ; 2 uses
  %i.ct = load i32, ptr %i.ci, align 4, !tbaa !892
  %i.cu = icmp slt i32 %i.cs, %i.ct
  br i1 %i.cu, label %bb.u, label %._crit_edge.i, !llvm.loop !11599

_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_.exit: ; preds = %._crit_edge.i, %bb.t
  %.not20 = icmp eq ptr %.0.fr, null
  br i1 %.not20, label %6, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_.exit
  tail call void @_ZN8facebook5velox10BaseVector8setNullsEPmRKN5folly5RangeIPKNS1_9CopyRangeEEEb(ptr noundef nonnull %.0.fr, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false)
  br label %6

6:                                                ; preds = %bb.v, %_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit

bb.w:                                             ; preds = %bb.k
  %i.cv = load ptr, ptr %2, align 8, !tbaa !886   ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !889 ; 3 uses
  %.not16.i25 = icmp eq ptr %i.cv, %i.cx
  br i1 %.not16.i25, label %_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit, label %.preheader.i27.preheader

.preheader.i27.preheader:                         ; preds = %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %.not.i.i33 = icmp eq ptr %.0.fr, null
  br i1 %.not.i.i33, label %.preheader.i27.us, label %.preheader.i27

.preheader.i27.us:                                ; preds = %.preheader.i27.preheader, %._crit_edge.i29.us
  %.01417.i28.us = phi ptr [ %i.dd, %._crit_edge.i29.us ], [ %i.cv, %.preheader.i27.preheader ] ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.01417.i28.us, i64 8 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !892
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph.i31.us, label %._crit_edge.i29.us

.lr.ph.i31.us:                                    ; preds = %.preheader.i27.us
  %i.dc = getelementptr inbounds nuw i8, ptr %.01417.i28.us, i64 4
  br label %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E0_clIiiEEDaSF_SG_.exit.i.us.us

._crit_edge.i29.us:                               ; preds = %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E0_clIiiEEDaSF_SG_.exit.i.us.us, %.preheader.i27.us
  %i.dd = getelementptr inbounds nuw i8, ptr %.01417.i28.us, i64 12 ; 2 uses
  %.not.i30.us = icmp eq ptr %i.dd, %i.cx
  br i1 %.not.i30.us, label %_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit, label %.preheader.i27.us

_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E0_clIiiEEDaSF_SG_.exit.i.us.us: ; preds = %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E0_clIiiEEDaSF_SG_.exit.i.us.us, %.lr.ph.i31.us
  %.015.i32.us.us = phi i32 [ 0, %.lr.ph.i31.us ], [ %i.dt, %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E0_clIiiEEDaSF_SG_.exit.i.us.us ] ; 3 uses
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !890
  %i.df = load i32, ptr %.01417.i28.us, align 4, !tbaa !893
  %i.dg = add nsw i32 %i.df, %.015.i32.us.us      ; 2 uses
  %i.dh = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call noundef zeroext i1 %i.dj(ptr noundef nonnull align 8 dereferenceable(94) %i.m, i32 noundef %i.dg), !inline_history !11600 ; 0 uses
  %i.dl = add nsw i32 %i.de, %.015.i32.us.us
  %i.dm = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 384
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.do(ptr noundef nonnull align 8 dereferenceable(152) %i.m, i32 noundef %i.dg), !inline_history !11600
  %i.dq = load ptr, ptr %i.cy, align 8, !tbaa !1538
  %i.dr = sext i32 %i.dl to i64
  %i.ds = getelementptr inbounds [16 x i8], ptr %i.dq, i64 %i.dr
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i64 16, i1 false)
  %i.dt = add nuw nsw i32 %.015.i32.us.us, 1      ; 2 uses
  %i.du = load i32, ptr %i.cz, align 4, !tbaa !892
  %i.dv = icmp slt i32 %i.dt, %i.du
  br i1 %i.dv, label %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E0_clIiiEEDaSF_SG_.exit.i.us.us, label %._crit_edge.i29.us, !llvm.loop !11601

.preheader.i27:                                   ; preds = %.preheader.i27.preheader, %._crit_edge.i29
  %.01417.i28 = phi ptr [ %i.ea, %._crit_edge.i29 ], [ %i.cv, %.preheader.i27.preheader ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.01417.i28, i64 8 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !892
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph.i31, label %._crit_edge.i29

.lr.ph.i31:                                       ; preds = %.preheader.i27
  %i.dz = getelementptr inbounds nuw i8, ptr %.01417.i28, i64 4
  br label %bb.x

._crit_edge.i29:                                  ; preds = %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E0_clIiiEEDaSF_SG_.exit.i, %.preheader.i27
  %i.ea = getelementptr inbounds nuw i8, ptr %.01417.i28, i64 12 ; 2 uses
  %.not.i30 = icmp eq ptr %i.ea, %i.cx
  br i1 %.not.i30, label %_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit, label %.preheader.i27

bb.x:                                             ; preds = %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E0_clIiiEEDaSF_SG_.exit.i, %.lr.ph.i31
  %.015.i32 = phi i32 [ 0, %.lr.ph.i31 ], [ %i.fg, %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E0_clIiiEEDaSF_SG_.exit.i ] ; 3 uses
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !890
  %i.ec = add nsw i32 %i.eb, %.015.i32            ; 4 uses
  %i.ed = load i32, ptr %.01417.i28, align 4, !tbaa !893
  %i.ee = add nsw i32 %i.ed, %.015.i32            ; 2 uses
  %i.ef = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = tail call noundef zeroext i1 %i.eh(ptr noundef nonnull align 8 dereferenceable(94) %i.m, i32 noundef %i.ee), !inline_history !11600
  br i1 %i.ei, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ej = load ptr, ptr %i.m, align 8, !tbaa !7
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 384
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.el(ptr noundef nonnull align 8 dereferenceable(152) %i.m, i32 noundef %i.ee), !inline_history !11600
  %i.en = load ptr, ptr %i.cy, align 8, !tbaa !1538
  %i.eo = sext i32 %i.ec to i64
  %i.ep = getelementptr inbounds [16 x i8], ptr %i.en, i64 %i.eo
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 16, i1 false)
  %i.eq = trunc i32 %i.ec to i8
  %i.er = and i8 %i.eq, 7
  %i.es = shl nuw i8 1, %i.er
  %i.et = lshr i32 %i.ec, 3
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.fr, i64 %i.eu ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !122
  %i.ex = or i8 %i.ew, %i.es
  store i8 %i.ex, ptr %i.ev, align 1, !tbaa !122
  br label %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E0_clIiiEEDaSF_SG_.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ey = zext i32 %i.ec to i64                   ; 2 uses
  %i.ez = and i64 %i.ey, 7
  %i.fa = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !122
  %i.fc = lshr i64 %i.ey, 3
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.fr, i64 %i.fc ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !122
  %i.ff = and i8 %i.fe, %i.fb
  store i8 %i.ff, ptr %i.fd, align 1, !tbaa !122
  br label %_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E0_clIiiEEDaSF_SG_.exit.i

_ZZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEEENKUlT_T0_E0_clIiiEEDaSF_SG_.exit.i: ; preds = %bb.z, %bb.y
  %i.fg = add nuw nsw i32 %.015.i32, 1            ; 2 uses
  %i.fh = load i32, ptr %i.dw, align 4, !tbaa !892
  %i.fi = icmp slt i32 %i.fg, %i.fh
  br i1 %i.fi, label %bb.x, label %._crit_edge.i29, !llvm.loop !11601

_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit: ; preds = %.lr.ph.i.i, %._crit_edge.i29, %._crit_edge.i29.us, %bb.s, %6, %_ZN8facebook5velox16applyToEachRangeIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_T1_E_EEvSF_RKSG_.exit, %bb.q, %bb.m, %bb.p, %bb.w, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox10FlatVectorINS0_9TimestampEE28testingCopyPreserveEncodingsEPNS0_6memory10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.12") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::optional.2000", align 1 ; 4 uses
  %4 = alloca %"class.std::optional.2000", align 1 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.boost::intrusive_ptr", align 8 ; 10 uses
  %6 = alloca %"class.boost::intrusive_ptr", align 8 ; 10 uses
  %7 = alloca %"class.std::vector.110", align 8   ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %.not = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = select i1 %.not, ptr %i.c, ptr %2        ; 3 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !415
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11602)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !353, !noalias !11602 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %5, align 8, !tbaa !353, !alias.scope !11602
  br label %_ZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEE.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.j = load i8, ptr %i.i, align 4, !tbaa !374, !noalias !11602
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.d, !prof !381

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEEE18veloxCheckFailArgs, ptr noundef nonnull @.str.277) #51, !noalias !11602
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !370, !noalias !11602
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41, !noalias !11602
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 0, ptr %i.n, align 1, !tbaa !1291, !noalias !11602
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIhEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %5, i64 noundef %i.m, ptr noundef %i.d, ptr noundef nonnull align 1 dereferenceable(2) %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41, !noalias !11602
  %i.o = load ptr, ptr %5, align 8, !tbaa !353, !alias.scope !11602 ; 3 uses
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !353, !noalias !11602
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !370
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef %i.p, i64 noundef %i.r)
          to label %_ZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEE.exit unwind label %bb.f

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.f ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #41
  br label %common.resume

_ZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEE.exit: ; preds = %bb.b, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11605)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !353, !noalias !11605 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEE.exit
  store ptr null, ptr %6, align 8, !tbaa !353, !alias.scope !11605
  br label %_ZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEE.exit10

bb.h:                                             ; preds = %_ZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !374, !noalias !11605
  %i.ac = trunc i8 %i.ab to i1
  br i1 %i.ac, label %bb.j, label %bb.i, !prof !381

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEEE18veloxCheckFailArgs, ptr noundef nonnull @.str.277) #51
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !370, !noalias !11605
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41, !noalias !11605
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.af, align 1, !tbaa !1291, !noalias !11605
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIhEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %6, i64 noundef %i.ae, ptr noundef %i.d, ptr noundef nonnull align 1 dereferenceable(2) %3, i1 noundef zeroext false)
          to label %.noexc9 unwind label %bb.u

.noexc9:                                          ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41, !noalias !11605
  %i.ag = load ptr, ptr %6, align 8, !tbaa !353, !alias.scope !11605 ; 3 uses
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !353, !noalias !11605
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !370
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8
  invoke void %i.am(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noundef %i.ah, i64 noundef %i.aj)
          to label %_ZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEE.exit10 unwind label %bb.k

bb.k:                                             ; preds = %.noexc9
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #41
  br label %.body

_ZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEE.exit10: ; preds = %.noexc9, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !709 ; 3 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !707 ; 3 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i.i.i.i, label %.noexc12.thread, label %bb.l

.noexc12.thread:                                  ; preds = %_ZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEE.exit10
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr null, i64 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !711
  br label %.loopexit

bb.l:                                             ; preds = %_ZN8facebook5velox13AlignedBuffer4copyEPNS0_6memory10MemoryPoolERKN5boost13intrusive_ptrINS0_6BufferEEE.exit10
  %i.ay = icmp ugt i64 %i.au, 9223372036854775800
  br i1 %i.ay, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEE8allocateEmPKv.exit.i.i.i.i, !prof !128

.noexc.i.i:                                       ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #51
          to label %.noexc11 unwind label %bb.v

.noexc11:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #48
          to label %.noexc12 unwind label %bb.v   ; 4 uses

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.az, ptr %7, align 8, !tbaa !707
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !709
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.au
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !711
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc12, %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bh, %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.az, %.noexc12 ] ; 2 uses
  %.sroa.08.011.i.i.i.i.i = phi ptr [ %i.bg, %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.ar, %.noexc12 ] ; 2 uses
  %i.bd = load ptr, ptr %.sroa.08.011.i.i.i.i.i, align 8, !tbaa !353 ; 3 uses
  store ptr %i.bd, ptr %.012.i.i.i.i.i, align 8, !tbaa !353
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = atomicrmw add ptr %i.be, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.aq
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2164

.loopexit:                                        ; preds = %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i, %.noexc12.thread
  %i.bj = phi ptr [ %i.ax, %.noexc12.thread ], [ %i.bc, %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.bk = phi ptr [ %i.av, %.noexc12.thread ], [ %i.ba, %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.noexc12.thread ], [ %i.bh, %_ZSt10_ConstructIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bk, align 8, !tbaa !709
  %i.bl = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #48
          to label %.noexc13 unwind label %bb.w, !inline_history !11608 ; 6 uses

.noexc13:                                         ; preds = %.loopexit
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 94
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 104
end_hunk_0
