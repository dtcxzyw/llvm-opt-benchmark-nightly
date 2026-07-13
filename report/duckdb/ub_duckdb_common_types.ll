inline.NumInlined: 41205
inline.NumDeleted: 6297
loop-unroll.NumCompletelyUnrolled: 157
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 231
begin_hunk_0_@_ZN6duckdb8Uhugeint8ToStringB5cxx11ENS_10uhugeint_tE:bb.a
  store ptr %i.bn, ptr %0, align 8, !tbaa !151
  store i8 48, ptr %i.bn, align 8, !tbaa !153
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.bo, align 8, !tbaa !152
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.bp, align 1, !tbaa !153
  %.pre36 = load ptr, ptr %4, align 8, !tbaa !89  ; 2 uses
  %i.bq = icmp eq ptr %.pre36, %i.a
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %._crit_edge.thread
  call void @_ZdlPv(ptr noundef %.pre36) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %._crit_edge.thread, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  ret void

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.bb, %bb.m ]
  %i.br = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.a
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.br) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 1, 259) i32 @_ZN6duckdb15DecimalToString13DecimalLengthINS_9hugeint_tEEEiT_hh(i64 %0, i64 %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %1, -9223372036854775808
  %i.c = icmp ne i64 %0, 0
  %or.cond.not.i.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.not.i.i, label %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit, label %_ZN6duckdb7Hugeint9TryNegateENS_9hugeint_tERS1_.exit.i

_ZN6duckdb7Hugeint9TryNegateENS_9hugeint_tERS1_.exit.i: ; preds = %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.440, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %_ZN6duckdb7Hugeint9TryNegateENS_9hugeint_tERS1_.exit.i
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %_ZN6duckdb7Hugeint9TryNegateENS_9hugeint_tERS1_.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn9.i = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn10.i, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn9.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit: ; preds = %bb.b
  %i.j = sub i64 0, %0
  %i.k = xor i64 %1, -1
  %i.l = icmp eq i64 %0, 0
  %i.m = zext i1 %i.l to i64
  %i.n = add nuw nsw i64 %i.m, %i.k
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit
  %.sroa.5.0 = phi i64 [ %i.n, %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.j, %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit ], [ %0, %bb.a ] ; 2 uses
  %.010 = phi i32 [ 1, %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit ], [ 0, %bb.a ]
  %i.o = icmp eq i8 %3, 0
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.p = tail call noundef i32 @_ZN6duckdb13NumericHelper14UnsignedLengthINS_9hugeint_tEEEiT_(i64 %.sroa.0.0, i64 %.sroa.5.0)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.q = zext i8 %3 to i32
  %i.r = icmp ugt i8 %2, %3
  %i.s = select i1 %i.r, i32 2, i32 1
  %i.t = add nuw nsw i32 %i.s, %i.q
  %i.u = tail call noundef i32 @_ZN6duckdb13NumericHelper14UnsignedLengthINS_9hugeint_tEEEiT_(i64 %.sroa.0.0, i64 %.sroa.5.0)
  %i.v = add nuw nsw i32 %i.u, 1
  %i.w = tail call i32 @llvm.umax.i32(i32 %i.t, i32 %i.v)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi i32 [ %i.p, %bb.j ], [ %i.w, %bb.k ]
  %.0 = add nuw nsw i32 %.pn, %.010
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN6duckdb15DecimalToString6FormatINS_9hugeint_tEEENS_8string_tET_hhRNS_6VectorE(i64 %0, i64 %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(104) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %i.a = tail call noundef i32 @_ZN6duckdb15DecimalToString13DecimalLengthINS_9hugeint_tEEEiT_hh(i64 %0, i64 %1, i8 noundef zeroext %2, i8 noundef zeroext %3) ; 2 uses
  %i.b = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.a) ; 3 uses
  %i.c = icmp ult i64 %i.b, 13
  br i1 %i.c, label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = tail call { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %i.b) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %.sroa.3.0.extract.shift.i = and i64 %i.g, -4294967296
  %i.h = extractvalue { i64, ptr } %i.f, 1
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit

_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit: ; preds = %bb.a, %bb.b
  %.sroa.34.0.i = phi ptr [ %i.h, %bb.b ], [ undef, %bb.a ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ %.sroa.3.0.extract.shift.i, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0.in.i = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.0.0.insert.ext.i = and i64 %.sroa.0.0.in.i, 4294967295
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, %.sroa.3.0.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %.sroa.34.0.i, ptr %i.i, align 8
  %i.j = trunc i64 %.sroa.0.0.in.i to i32
  %i.k = icmp ult i32 %i.j, 13
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.m = select i1 %i.k, ptr %i.l, ptr %.sroa.34.0.i
  %i.n = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.a)
  call void @_ZN6duckdb15DecimalToString13FormatDecimalINS_9hugeint_tEEEvT_hhPcm(i64 %0, i64 %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %i.m, i64 noundef %i.n)
  %i.o = load i32, ptr %5, align 8, !tbaa !153    ; 2 uses
  %i.p = icmp ult i32 %i.o, 13
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit
  %i.q = zext nneg i32 %i.o to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q
  %i.s = sub nuw nsw i64 12, %i.q
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.s, i1 false)
  %.fca.1.load.pre = load ptr, ptr %i.i, align 8
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

bb.d:                                             ; preds = %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit
  %i.t = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.u = load i32, ptr %i.t, align 1
  store i32 %i.u, ptr %i.l, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

_ZN6duckdb8string_t8FinalizeEv.exit:              ; preds = %bb.c, %bb.d
  %.fca.1.load = phi ptr [ %.fca.1.load.pre, %bb.c ], [ %i.t, %bb.d ]
  %.fca.0.load = load i64, ptr %5, align 8
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.fca.0.load, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15DecimalToString13FormatDecimalINS_9hugeint_tEEEvT_hhPcm(i64 %0, i64 %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = ptrtoaddr ptr %4 to i64                    ; 2 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %9 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 3 uses
  %i.b = icmp slt i64 %1, 0
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i64 %1, -9223372036854775808
  %i.d = icmp ne i64 %0, 0
  %or.cond.not.i.i = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond.not.i.i, label %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit, label %_ZN6duckdb7Hugeint9TryNegateENS_9hugeint_tERS1_.exit.i

_ZN6duckdb7Hugeint9TryNegateENS_9hugeint_tERS1_.exit.i: ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.440, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %_ZN6duckdb7Hugeint9TryNegateENS_9hugeint_tERS1_.exit.i
  invoke void @_ZN6duckdb19OutOfRangeExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb19OutOfRangeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %_ZN6duckdb7Hugeint9TryNegateENS_9hugeint_tERS1_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %7, align 8, !tbaa !89     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn9.i = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn10.i, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn9.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit: ; preds = %bb.b
  %i.k = sub i64 0, %0
  %i.l = xor i64 %1, -1
  %i.m = icmp eq i64 %0, 0
  %i.n = zext i1 %i.m to i64
  %i.o = add nuw nsw i64 %i.n, %i.l
  store i8 45, ptr %4, align 1, !tbaa !153
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit, %bb.a
  %.sroa.5.0 = phi i64 [ %i.o, %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.k, %_ZN6duckdb7Hugeint13NegateInPlaceILb1EEEvRNS_9hugeint_tE.exit ], [ %0, %bb.a ] ; 2 uses
  %i.p = icmp eq i8 %3, 0
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.q = tail call noundef ptr @_ZN6duckdb13NumericHelper14FormatUnsignedINS_9hugeint_tEEEPcT_S3_(i64 %.sroa.0.0, i64 %.sroa.5.0, ptr noundef %i.a) ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  %i.r = zext i8 %3 to i64                        ; 4 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb7Hugeint13POWERS_OF_TENE, i64 %i.r ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.s, align 16, !tbaa !108
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !108
  %i.t = call { i64, i64 } @_ZN6duckdb7Hugeint6DivModENS_9hugeint_tES1_RS1_(i64 %.sroa.0.0, i64 %.sroa.5.0, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %9) ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = extractvalue { i64, i64 } %i.t, 1
  %.sroa.01.0.copyload = load i64, ptr %9, align 8, !tbaa !108
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !108
  %i.w = tail call noundef ptr @_ZN6duckdb13NumericHelper14FormatUnsignedINS_9hugeint_tEEEPcT_S3_(i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, ptr noundef %i.a) ; 4 uses
  %i.x = sub nsw i64 0, %i.r
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x
  %i.z = icmp ugt ptr %i.w, %i.y
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.k
  %10 = ptrtoaddr ptr %i.w to i64                 ; 2 uses
  %i.aa = add i64 %5, %6
  %i.ab = add i64 %10, %i.r
  %i.ac = sub i64 %i.aa, %i.ab
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ac ; 2 uses
  %i.ad = add i64 %10, %i.r
  %i.ae = add i64 %5, %6
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %i.af, i1 false), !tbaa !153
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.k
  %.0.lcssa = phi ptr [ %i.w, %bb.k ], [ %scevgep, %.lr.ph.preheader ]
  %i.ag = getelementptr inbounds i8, ptr %.0.lcssa, i64 -1 ; 2 uses
  store i8 46, ptr %i.ag, align 1, !tbaa !153
  %i.ah = icmp ugt i8 %2, %3
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.ai = tail call noundef ptr @_ZN6duckdb13NumericHelper14FormatUnsignedINS_9hugeint_tEEEPcT_S3_(i64 %i.u, i64 %i.v, ptr noundef nonnull %i.ag) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define { i64, i64 } @_ZN6duckdb7Hugeint14DivModPositiveENS_9hugeint_tEmRm(i64 %0, i64 %1, i64 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %3) local_unnamed_addr #18 align 2 {
bb.a:
  store i64 0, ptr %3, align 8, !tbaa !108
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.preheader.i, label %.lr.ph

.preheader.i:                                     ; preds = %bb.a
  %.not1117.i = icmp eq i64 %0, 0
  br i1 %.not1117.i, label %_ZN6duckdbL25PositiveHugeintHighestBitENS_9hugeint_tE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i, %bb.a
  %.sink43 = phi i64 [ %1, %bb.a ], [ %0, %.preheader.i ]
  %.sink = phi i64 [ 128, %bb.a ], [ 64, %.preheader.i ]
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink43, i1 true)
  %i.b = sub nsw i64 %.sink, %i.a
  %i.c = and i64 %i.b, 255
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store i64 %spec.select34, ptr %3, align 8, !tbaa !108
  br label %_ZN6duckdbL25PositiveHugeintHighestBitENS_9hugeint_tE.exit

_ZN6duckdbL25PositiveHugeintHighestBitENS_9hugeint_tE.exit: ; preds = %.preheader.i, %._crit_edge
  %.sroa.018.0.lcssa = phi i64 [ %.sroa.018.1, %._crit_edge ], [ 0, %.preheader.i ]
  %.sroa.7.0.lcssa = phi i64 [ %i.e, %._crit_edge ], [ 0, %.preheader.i ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.018.0.lcssa, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.7.0.lcssa, 1
  ret { i64, i64 } %.fca.1.insert

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.c, %.lr.ph ], [ %i.g, %bb.b ] ; 3 uses
  %spec.select35 = phi i64 [ 0, %.lr.ph ], [ %spec.select34, %bb.b ]
  %.sroa.7.032 = phi i64 [ 0, %.lr.ph ], [ %i.e, %bb.b ]
  %.sroa.018.031 = phi i64 [ 0, %.lr.ph ], [ %.sroa.018.1, %bb.b ] ; 2 uses
  %i.d = shl i64 %.sroa.018.031, 1
  %i.e = tail call i64 @llvm.fshl.i64(i64 %.sroa.7.032, i64 %.sroa.018.031, i64 1) ; 2 uses
  %i.f = shl i64 %spec.select35, 1
  %i.g = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.h = icmp ult i64 %indvars.iv, 65             ; 2 uses
  %i.i = add nsw i64 %indvars.iv, 4294967231
  %i.j = and i64 %i.i, 4294967295
  %.sink6.i = select i1 %i.h, i64 %i.g, i64 %i.j
  %.sink5.i = select i1 %i.h, i64 %0, i64 %1
  %i.k = lshr i64 %.sink5.i, %.sink6.i
  %i.l = and i64 %i.k, 1
  %spec.select = or disjoint i64 %i.f, %i.l       ; 2 uses
  %.not28 = icmp uge i64 %spec.select, %2         ; 2 uses
  %i.m = select i1 %.not28, i64 %2, i64 0
  %spec.select34 = sub nuw i64 %spec.select, %i.m ; 2 uses
  %i.n = zext i1 %.not28 to i64
  %.sroa.018.1 = or disjoint i64 %i.d, %i.n       ; 2 uses
  %.not.wide = icmp eq i64 %i.g, 0
  br i1 %.not.wide, label %._crit_edge, label %bb.b, !llvm.loop !293
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb7Hugeint6DivModENS_9hugeint_tES1_RS1_(i64 %0, i64 %1, i64 %2, i64 %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %6 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %7 = alloca %"struct.duckdb::hugeint_t", align 8 ; 11 uses
  %8 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %9 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %11 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %12 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  %13 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %14 = alloca %"struct.duckdb::hugeint_t", align 8 ; 3 uses
  %15 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %16 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  %17 = alloca %"struct.duckdb::hugeint_t", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %15, i64 noundef 0)
  %i.a = load i64, ptr %15, align 8, !tbaa !290
  %i.b = icmp eq i64 %2, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !288
  %i.e = icmp eq i64 %3, %i.d
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %0, ptr %4, align 8, !tbaa !108
  %.sroa.861.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %.sroa.861.0..sroa_idx, align 8, !tbaa !108
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef 0)
  %.fca.0.load.pre = load i64, ptr %14, align 8
  %.fca.1.gep.phi.trans.insert = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.fca.1.load.pre = load i64, ptr %.fca.1.gep.phi.trans.insert, align 8
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %0, 0                        ; 2 uses
  %i.h = icmp eq i64 %1, -9223372036854775808
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %i.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %2, 0                        ; 2 uses
  %i.k = icmp eq i64 %3, -9223372036854775808
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %bb.f, label %bb.j

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.m = icmp eq i64 %2, 0
  %i.n = icmp eq i64 %3, -9223372036854775808
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef 0), !inline_history !310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !311
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef 1), !inline_history !310
  br label %_ZN6duckdbL13DivModMinimumENS_9hugeint_tES0_RS0_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %0, ptr %4, align 8, !tbaa !108
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %1, ptr %.sroa.586.0..sroa_idx, align 8, !tbaa !108
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 noundef 0), !inline_history !310
  br label %_ZN6duckdbL13DivModMinimumENS_9hugeint_tES0_RS0_.exit

bb.g:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef 1), !inline_history !310
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !288
  %i.r = or disjoint i64 %i.q, -9223372036854775808
  %i.s = load i64, ptr %9, align 8, !tbaa !290
  %i.t = call { i64, i64 } @_ZN6duckdb7Hugeint6DivModENS_9hugeint_tES1_RS1_(i64 %i.s, i64 %i.r, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4), !inline_history !310 ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0
  store i64 %i.u, ptr %7, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.w = extractvalue { i64, i64 } %i.t, 1
  store i64 %i.w, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  %.sroa.03.0.copyload.i = load i64, ptr %4, align 8, !tbaa !108
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.sroa.24.0.copyload.i = load i64, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !108
  %i.x = call { i64, i64 } @_ZN6duckdb3AbsENS_9hugeint_tE(i64 %.sroa.03.0.copyload.i, i64 %.sroa.24.0.copyload.i), !inline_history !310 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0        ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.x, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %10, i64 noundef 1), !inline_history !310
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !288
  %i.ac = add nsw i64 %i.ab, %i.z
  %i.ad = load i64, ptr %10, align 8, !tbaa !290
  %i.ae = add i64 %i.ad, %i.y                     ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.y
  %i.ag = zext i1 %i.af to i64
  %i.ah = add nsw i64 %i.ac, %i.ag
  %i.ai = call { i64, i64 } @_ZN6duckdb3AbsENS_9hugeint_tE(i64 %2, i64 %3), !inline_history !310 ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ai, 0
  %i.ak = extractvalue { i64, i64 } %i.ai, 1
  %i.al = icmp eq i64 %i.ae, %i.aj
  %i.am = icmp eq i64 %i.ah, %i.ak
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef 0)
end_hunk_0
begin_hunk_1_@_ZN6duckdb6Vector7FlattenEm:bb.a
  %i.ku = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, ptr noundef nonnull align 8 dereferenceable(16) %11) #46 ; 0 uses
  call void @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  call void @_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  %i.kv = load ptr, ptr %8, align 8, !tbaa !631   ; 3 uses
  %.not.i205 = icmp eq ptr %i.kv, null
  br i1 %.not.i205, label %_ZNSt10unique_ptrIN6duckdb17VectorArrayBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17VectorArrayBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17VectorArrayBufferEEclEPS1_.exit.i: ; preds = %bb.cg
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !412
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8
  call void %i.ky(ptr noundef nonnull align 8 dereferenceable(72) %i.kv) #46, !inline_history !633
  br label %_ZNSt10unique_ptrIN6duckdb17VectorArrayBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17VectorArrayBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.cg, %_ZNKSt14default_deleteIN6duckdb17VectorArrayBufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  br label %_ZN6duckdbL30TemplatedFlattenConstantVectorIbEEvPhS1_m.exit

bb.ch:                                            ; preds = %bb.ce, %._crit_edge308.split
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cf
  %i.la = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cd
  %.pn89 = phi { ptr, i32 } [ %i.kl, %bb.cd ], [ %i.la, %bb.ci ], [ %i.kz, %bb.ch ]
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #46
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.bz
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %bb.cj ], [ %i.jw, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.by
  %.pn89.pn.pn = phi { ptr, i32 } [ %.pn89.pn, %bb.ck ], [ %i.jv, %bb.by ]
  call void @_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #46
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.bx
  %.pn89.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn.pn, %bb.cl ], [ %i.ju, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.bs
  %.pn89.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn.pn.pn, %bb.cm ], [ %i.jj, %bb.bs ] ; 2 uses
  %i.lb = load ptr, ptr %8, align 8, !tbaa !631   ; 3 uses
  %.not.i206 = icmp eq ptr %i.lb, null
  br i1 %.not.i206, label %_ZNSt10unique_ptrIN6duckdb17VectorArrayBufferESt14default_deleteIS1_EED2Ev.exit208, label %_ZNKSt14default_deleteIN6duckdb17VectorArrayBufferEEclEPS1_.exit.i207

_ZNKSt14default_deleteIN6duckdb17VectorArrayBufferEEclEPS1_.exit.i207: ; preds = %bb.cn
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !412
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load ptr, ptr %i.ld, align 8
  call void %i.le(ptr noundef nonnull align 8 dereferenceable(72) %i.lb) #46, !inline_history !633
  br label %_ZNSt10unique_ptrIN6duckdb17VectorArrayBufferESt14default_deleteIS1_EED2Ev.exit208

_ZNSt10unique_ptrIN6duckdb17VectorArrayBufferESt14default_deleteIS1_EED2Ev.exit208: ; preds = %_ZNKSt14default_deleteIN6duckdb17VectorArrayBufferEEclEPS1_.exit.i207, %bb.cn, %bb.br
  %.pn89.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ji, %bb.br ], [ %.pn89.pn.pn.pn.pn, %bb.cn ], [ %.pn89.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb17VectorArrayBufferEEclEPS1_.exit.i207 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  br label %bb.dt

.thread250:                                       ; preds = %_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #46
  invoke void @_ZN6duckdb9make_uniqINS_18VectorStructBufferEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.893") align 8 %12)
          to label %bb.co unwind label %bb.cr

bb.co:                                            ; preds = %.thread250
  %i.lf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18VectorStructBufferESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.cp unwind label %bb.cs     ; 3 uses

bb.cp:                                            ; preds = %bb.co
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 48 ; 2 uses
  %i.lh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr)
          to label %bb.cq unwind label %bb.ct     ; 2 uses

bb.cq:                                            ; preds = %bb.cp
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !507 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !507 ; 2 uses
  %.not261302 = icmp eq ptr %i.li, %i.lk
  br i1 %.not261302, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cq
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 56 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lf, i64 64 ; 2 uses
  br label %bb.cu

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit, %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #46
  %i.ln = load ptr, ptr %12, align 8, !tbaa !634
  store ptr null, ptr %12, align 8, !tbaa !634
  invoke void @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEC2INS_18VectorStructBufferETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEEPS6_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef %i.ln)
          to label %bb.df unwind label %bb.dg

bb.cr:                                            ; preds = %.thread250
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit219

bb.cs:                                            ; preds = %bb.co
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.ct:                                            ; preds = %bb.cp
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.cu:                                            ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit
  %.sroa.0240.0303 = phi ptr [ %i.li, %.lr.ph ], [ %i.ng, %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #46
  %i.lr = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0240.0303)
          to label %bb.cv unwind label %bb.dd

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.ls = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #48
          to label %.noexc209 unwind label %bb.dd ; 3 uses

.noexc209:                                        ; preds = %bb.cv
  invoke void @_ZN6duckdb6VectorC1ERS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.ls, ptr noundef nonnull align 8 dereferenceable(104) %i.lr)
          to label %bb.cx unwind label %bb.cw, !noalias !636

bb.cw:                                            ; preds = %.noexc209
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ls) #47, !noalias !636
  br label %.body

bb.cx:                                            ; preds = %.noexc209
  store ptr %i.ls, ptr %13, align 8, !tbaa !426, !alias.scope !636
  %i.lu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.cy unwind label %.loopexit265

bb.cy:                                            ; preds = %bb.cx
  %i.lv = load i64, ptr %i.c, align 8, !tbaa !108
  invoke void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %i.lu, i64 noundef %i.lv)
          to label %bb.cz unwind label %.loopexit265

bb.cz:                                            ; preds = %bb.cy
  %i.lw = load ptr, ptr %i.ll, align 8, !tbaa !543 ; 6 uses
  %i.lx = load ptr, ptr %i.lm, align 8, !tbaa !639
  %.not.i.i210 = icmp eq ptr %i.lw, %i.lx
  br i1 %.not.i.i210, label %bb.da, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.cz
  %i.ly = load i64, ptr %13, align 8, !tbaa !426
  store i64 %i.ly, ptr %i.lw, align 8, !tbaa !426
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store ptr %i.lz, ptr %i.ll, align 8, !tbaa !543
  br label %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit

bb.da:                                            ; preds = %bb.cz
  %i.ma = load ptr, ptr %i.lg, align 8, !tbaa !545 ; 10 uses
  %i.mb = ptrtoint ptr %i.lw to i64               ; 3 uses
  %i.mc = ptrtoint ptr %i.ma to i64               ; 3 uses
  %i.md = sub i64 %i.mb, %i.mc                    ; 3 uses
  %i.me = icmp eq i64 %i.md, 9223372036854775800
  br i1 %i.me, label %bb.db, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.db:                                            ; preds = %bb.da
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
          to label %.noexc213 unwind label %.loopexit.split-lp

.noexc213:                                        ; preds = %bb.db
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.da
  %i.mf = ashr exact i64 %i.md, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mf, i64 1)
  %i.mg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.mf ; 2 uses
  %i.mh = icmp ult i64 %i.mg, %i.mf
  %i.mi = call i64 @llvm.umin.i64(i64 %i.mg, i64 1152921504606846975)
  %i.mj = select i1 %i.mh, i64 1152921504606846975, i64 %i.mi ; 3 uses
  %.not.i.i.i.i211 = icmp ne i64 %i.mj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i211)
  %i.mk = shl nuw nsw i64 %i.mj, 3
  %i.ml = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mk) #48
          to label %.noexc214 unwind label %.loopexit265 ; 10 uses

.noexc214:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.md
  %i.mn = load i64, ptr %13, align 8, !tbaa !426
  store i64 %i.mn, ptr %i.mm, align 8, !tbaa !426
  store ptr null, ptr %13, align 8, !tbaa !426
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ma, %i.lw
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc214
  %20 = add i64 %i.mb, -8
  %21 = sub i64 %20, %i.mc                        ; 2 uses
  %i.mo = lshr i64 %21, 3
  %i.mp = add nuw nsw i64 %i.mo, 1                ; 2 uses
  %min.iters.check569 = icmp ult i64 %21, 56
  br i1 %min.iters.check569, label %.lr.ph.i.i.i.i.i.i.i.preheader582, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ml, i64 8
  %i.mq = add i64 %i.mb, -8
  %i.mr = sub i64 %i.mq, %i.mc
  %i.ms = and i64 %i.mr, -8                       ; 2 uses
  %scevgep565 = getelementptr i8, ptr %scevgep, i64 %i.ms
  %scevgep566 = getelementptr i8, ptr %i.ma, i64 8
  %scevgep567 = getelementptr i8, ptr %scevgep566, i64 %i.ms
  %bound0 = icmp ult ptr %i.ml, %scevgep567
  %bound1 = icmp ult ptr %i.ma, %scevgep565
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader582, label %vector.ph570

vector.ph570:                                     ; preds = %vector.memcheck
  %n.vec572 = and i64 %i.mp, 4611686018427387900  ; 3 uses
  %i.mt = shl i64 %n.vec572, 3                    ; 2 uses
  %i.mu = getelementptr i8, ptr %i.ml, i64 %i.mt  ; 2 uses
  %i.mv = getelementptr i8, ptr %i.ma, i64 %i.mt
  br label %vector.body573

vector.body573:                                   ; preds = %vector.body573, %vector.ph570
  %index574 = phi i64 [ 0, %vector.ph570 ], [ %index.next577, %vector.body573 ] ; 2 uses
  %i.mw = shl i64 %index574, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ml, i64 %i.mw ; 2 uses
  %next.gep575 = getelementptr i8, ptr %i.ma, i64 %i.mw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.mx = getelementptr i8, ptr %next.gep575, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep575, align 8, !tbaa !426, !alias.scope !645, !noalias !640
  %wide.load576 = load <2 x i64>, ptr %i.mx, align 8, !tbaa !426, !alias.scope !645, !noalias !640
  %i.my = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !426, !alias.scope !648, !noalias !645
  store <2 x i64> %wide.load576, ptr %i.my, align 8, !tbaa !426, !alias.scope !648, !noalias !645
  %i.mz = getelementptr i8, ptr %next.gep575, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep575, align 8, !tbaa !426, !alias.scope !645, !noalias !640
  store <2 x ptr> splat (ptr null), ptr %i.mz, align 8, !tbaa !426, !alias.scope !645, !noalias !640
  %index.next577 = add nuw i64 %index574, 4       ; 2 uses
  %i.na = icmp eq i64 %index.next577, %n.vec572
  br i1 %i.na, label %middle.block578, label %vector.body573, !llvm.loop !650

middle.block578:                                  ; preds = %vector.body573
  %cmp.n579 = icmp eq i64 %i.mp, %n.vec572
  br i1 %cmp.n579, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader582

.lr.ph.i.i.i.i.i.i.i.preheader582:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block578
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ml, %vector.memcheck ], [ %i.ml, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.mu, %middle.block578 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ma, %vector.memcheck ], [ %i.ma, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.mv, %middle.block578 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader582, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.nd, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader582 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.nc, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader582 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.nb = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !426, !alias.scope !643, !noalias !640
  store i64 %i.nb, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !426, !alias.scope !640, !noalias !643
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !426, !alias.scope !643, !noalias !640
  %i.nc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i212 = icmp eq ptr %i.nc, %i.lw
  br i1 %.not.i.i.i.i.i.i.i212, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !651

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block578, %.noexc214
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ml, %.noexc214 ], [ %i.mu, %middle.block578 ], [ %i.nd, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ma, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ma) #47
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.dc
  store ptr %i.ml, ptr %i.lg, align 8, !tbaa !545
  store ptr %i.ne, ptr %i.ll, align 8, !tbaa !543
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mj
  store ptr %i.nf, ptr %i.lm, align 8, !tbaa !639
  %.pr252 = load ptr, ptr %13, align 8, !tbaa !426 ; 3 uses
  %.not.i215 = icmp eq ptr %.pr252, null
  br i1 %.not.i215, label %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.pr252) #46
  call void @_ZdlPv(ptr noundef nonnull %.pr252) #47
  br label %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.0240.0303, i64 8 ; 2 uses
  %.not261 = icmp eq ptr %i.ng, %i.lk
  br i1 %.not261, label %._crit_edge, label %bb.cu

bb.dd:                                            ; preds = %bb.cv, %bb.cu
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit265:                                     ; preds = %bb.cx, %bb.cy, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.loopexit.split-lp:                               ; preds = %bb.db
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.de:                                            ; preds = %.loopexit.split-lp, %.loopexit265
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit265 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #46
  br label %.body

.body:                                            ; preds = %bb.dd, %bb.cw, %bb.de
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.de ], [ %i.nh, %bb.dd ], [ %i.lt, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  br label %bb.dh

bb.df:                                            ; preds = %._crit_edge
  %i.ni = getelementptr inbounds nuw i8, ptr %.tr, i64 88
  %i.nj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ni, ptr noundef nonnull align 8 dereferenceable(16) %14) #46 ; 0 uses
  call void @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  %i.nk = load ptr, ptr %12, align 8, !tbaa !634  ; 3 uses
  %.not.i216 = icmp eq ptr %i.nk, null
  br i1 %.not.i216, label %_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18VectorStructBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18VectorStructBufferEEclEPS1_.exit.i: ; preds = %bb.df
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !412
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8
  call void %i.nn(ptr noundef nonnull align 8 dereferenceable(72) %i.nk) #46, !inline_history !652
  br label %_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.df, %_ZNKSt14default_deleteIN6duckdb18VectorStructBufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br label %_ZN6duckdbL30TemplatedFlattenConstantVectorIbEEvPhS1_m.exit

bb.dg:                                            ; preds = %._crit_edge
  %i.no = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  br label %bb.dh

bb.dh:                                            ; preds = %bb.ct, %.body, %bb.dg, %bb.cs
  %.pn.pn.pn = phi { ptr, i32 } [ %i.lp, %bb.cs ], [ %.pn, %.body ], [ %i.no, %bb.dg ], [ %i.lq, %bb.ct ] ; 2 uses
  %i.np = load ptr, ptr %12, align 8, !tbaa !634  ; 3 uses
  %.not.i217 = icmp eq ptr %i.np, null
  br i1 %.not.i217, label %_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit219, label %_ZNKSt14default_deleteIN6duckdb18VectorStructBufferEEclEPS1_.exit.i218

_ZNKSt14default_deleteIN6duckdb18VectorStructBufferEEclEPS1_.exit.i218: ; preds = %bb.dh
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !412
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8
  call void %i.ns(ptr noundef nonnull align 8 dereferenceable(72) %i.np) #46, !inline_history !652
  br label %_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit219

_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit219: ; preds = %_ZNKSt14default_deleteIN6duckdb18VectorStructBufferEEclEPS1_.exit.i218, %bb.dh, %bb.cr
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lo, %bb.cr ], [ %.pn.pn.pn, %bb.dh ], [ %.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb18VectorStructBufferEEclEPS1_.exit.i218 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br label %bb.dt

bb.di:                                            ; preds = %bb.ar
  %i.nt = call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.199, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.dj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.nt, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.dk unwind label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  invoke void @__cxa_throw(ptr nonnull %i.nt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.en unwind label %bb.dl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.di
  %i.nu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.061 = phi i1 [ false, %bb.dk ], [ true, %bb.dj ] ; 2 uses
  %i.nv = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.nw = load ptr, ptr %15, align 8, !tbaa !89   ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ny = icmp eq ptr %i.nw, %i.nx
  br i1 %i.ny, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.dl
  call void @_ZdlPv(ptr noundef %i.nw) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #46
end_hunk_1
begin_hunk_2_@_ZN6duckdb22VectorFSSTStringBufferC2Ev:bb.a
  invoke void @_ZN6duckdb10StringHeapC1ERNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_ZN6duckdb18VectorStringBufferC2ENS_16VectorBufferTypeE.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN6duckdb12VectorBufferC2ENS_16VectorBufferTypeE.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb12VectorBufferE, i64 16), ptr %0, align 8, !tbaa !412
  tail call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #46, !inline_history !2183
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !603  ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i3.i, label %common.resume.i, label %common.resume.sink.split.i

_ZN6duckdb18VectorStringBufferC2ENS_16VectorBufferTypeE.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb22VectorFSSTStringBufferE, i64 16), ptr %0, align 8, !tbaa !412
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18VectorStructBufferC2Ev(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 9), (16, 24)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb12VectorBufferE, i64 16), ptr %0, align 8, !tbaa !412
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 5, ptr %i.a, align 8, !tbaa !2181
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !2182
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN6duckdb13AllocatedDataC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZN6duckdb12VectorBufferC2ENS_16VectorBufferTypeE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !603  ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb19VectorAuxiliaryDataESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !412
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.e) #46, !inline_history !2185
  br label %_ZNSt10unique_ptrIN6duckdb19VectorAuxiliaryDataESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb19VectorAuxiliaryDataESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i, %bb.b
  resume { ptr, i32 } %i.d

_ZN6duckdb12VectorBufferC2ENS_16VectorBufferTypeE.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18VectorStructBufferE, i64 16), ptr %0, align 8, !tbaa !412
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18VectorStructBufferC2ERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 9), (16, 24)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %4 = alloca %"class.duckdb::unique_ptr.238", align 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb12VectorBufferE, i64 16), ptr %0, align 8, !tbaa !412
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 5, ptr %i.a, align 8, !tbaa !2181
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !2182
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  invoke void @_ZN6duckdb13AllocatedDataC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZN6duckdb12VectorBufferC2ENS_16VectorBufferTypeE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !603  ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %common.resume, label %_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !412
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.e) #46, !inline_history !2185
  br label %common.resume

common.resume:                                    ; preds = %_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i15, %bb.p, %bb.b, %_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.d, %_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i ], [ %.pn.pn, %bb.p ], [ %.pn.pn, %_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i15 ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb12VectorBufferC2ENS_16VectorBufferTypeE.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18VectorStructBufferE, i64 16), ptr %0, align 8, !tbaa !412
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10StructType13GetChildTypesB5cxx11ERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_ZN6duckdb12VectorBufferC2ENS_16VectorBufferTypeE.exit
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !535  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !535  ; 2 uses
  %.not25 = icmp eq ptr %i.k, %i.m
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit, %bb.c
  ret void

bb.d:                                             ; preds = %_ZN6duckdb12VectorBufferC2ENS_16VectorBufferTypeE.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.e:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit
  %.sroa.017.026 = phi ptr [ %i.k, %.lr.ph ], [ %i.bd, %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.experimental.noalias.scope.decl(metadata !2186)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.q = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #48
          to label %.noexc unwind label %bb.n, !inline_history !2189 ; 4 uses

.noexc:                                           ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 32
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.f unwind label %bb.g, !noalias !2186, !inline_history !2189

bb.f:                                             ; preds = %.noexc
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %i.q, ptr noundef nonnull %3, i64 noundef %2)
          to label %bb.j unwind label %bb.h, !noalias !2186, !inline_history !2189

bb.g:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #46, !noalias !2186, !inline_history !2189
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.s, %bb.g ]
  call void @_ZdlPv(ptr noundef nonnull %i.q) #47, !noalias !2186, !inline_history !2189
  br label %.body

bb.j:                                             ; preds = %bb.f
  store ptr %i.q, ptr %4, align 8, !tbaa !426, !alias.scope !2186
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #46, !noalias !2186, !inline_history !2189
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !543  ; 6 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !639
  %.not.i.i11 = icmp eq ptr %i.u, %i.v
  %i.w = ptrtoint ptr %i.q to i64                 ; 2 uses
  br i1 %.not.i.i11, label %bb.k, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.j
  store i64 %i.w, ptr %i.u, align 8, !tbaa !426
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.x, ptr %i.n, align 8, !tbaa !543
  br label %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !545  ; 10 uses
  %i.z = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.l, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.ad = ashr exact i64 %i.ab, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = call i64 @llvm.umin.i64(i64 %i.ae, i64 1152921504606846975)
  %i.ah = select i1 %i.af, i64 1152921504606846975, i64 %i.ag ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #48
          to label %.noexc13 unwind label %.loopexit ; 10 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  store i64 %i.w, ptr %i.ak, align 8, !tbaa !426
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.u
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc13
  %5 = add i64 %i.z, -8
  %6 = sub i64 %5, %i.aa                          ; 2 uses
  %i.al = lshr i64 %6, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader55, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.aj, i64 8
  %i.an = add i64 %i.z, -8
  %i.ao = sub i64 %i.an, %i.aa
  %i.ap = and i64 %i.ao, -8                       ; 2 uses
  %scevgep49 = getelementptr i8, ptr %scevgep, i64 %i.ap
  %scevgep50 = getelementptr i8, ptr %i.y, i64 8
  %scevgep51 = getelementptr i8, ptr %scevgep50, i64 %i.ap
  %bound0 = icmp ult ptr %i.aj, %scevgep51
  %bound1 = icmp ult ptr %i.y, %scevgep49
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aj, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.y, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.at ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.y, i64 %i.at ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  call void @llvm.experimental.noalias.scope.decl(metadata !2193)
  %i.au = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !426, !alias.scope !2195, !noalias !2190
  %wide.load53 = load <2 x i64>, ptr %i.au, align 8, !tbaa !426, !alias.scope !2195, !noalias !2190
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !426, !alias.scope !2198, !noalias !2195
  store <2 x i64> %wide.load53, ptr %i.av, align 8, !tbaa !426, !alias.scope !2198, !noalias !2195
  %i.aw = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !426, !alias.scope !2195, !noalias !2190
  store <2 x ptr> splat (ptr null), ptr %i.aw, align 8, !tbaa !426, !alias.scope !2195, !noalias !2190
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !2200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader55

.lr.ph.i.i.i.i.i.i.i.preheader55:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader55, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader55 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  call void @llvm.experimental.noalias.scope.decl(metadata !2193)
  %i.ay = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !426, !alias.scope !2193, !noalias !2190
  store i64 %i.ay, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !426, !alias.scope !2190, !noalias !2193
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !426, !alias.scope !2193, !noalias !2190
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.u
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2201

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc13
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.noexc13 ], [ %i.ar, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.y) #47
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.m
  store ptr %i.aj, ptr %i.i, align 8, !tbaa !545
  store ptr %i.bb, ptr %i.n, align 8, !tbaa !543
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.bc, ptr %i.o, align 8, !tbaa !639
  br label %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.bd, %i.m
  br i1 %.not, label %._crit_edge, label %bb.e

bb.n:                                             ; preds = %bb.e
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #46
  br label %.body

.body:                                            ; preds = %bb.n, %bb.i, %bb.o
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.o ], [ %i.be, %bb.n ], [ %.pn.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.p, %bb.d ] ; 2 uses
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.i) #46
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb12VectorBufferE, i64 16), ptr %0, align 8, !tbaa !412
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #46, !inline_history !2183
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !603 ; 3 uses
  %.not.i.i14 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i14, label %common.resume, label %_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i15

_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i15: ; preds = %bb.p
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !412
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.bf) #46, !inline_history !2202
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !426    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.a) #46
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #47
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !545    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !543  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !426 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.d) #46
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #47
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb6VectorEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2203

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !545
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #47
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18VectorStructBufferC2ERNS_6VectorERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 9), (16, 24)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr.238", align 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb12VectorBufferE, i64 16), ptr %0, align 8, !tbaa !412
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 5, ptr %i.a, align 8, !tbaa !2181
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !2182
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  invoke void @_ZN6duckdb13AllocatedDataC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZN6duckdb12VectorBufferC2ENS_16VectorBufferTypeE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !603  ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %common.resume, label %_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !412
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.e) #46, !inline_history !2185
  br label %common.resume

common.resume:                                    ; preds = %_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i19, %bb.m, %bb.b, %_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.d, %_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i ], [ %.pn.pn, %bb.m ], [ %.pn.pn, %_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i19 ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb12VectorBufferC2ENS_16VectorBufferTypeE.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18VectorStructBufferE, i64 16), ptr %0, align 8, !tbaa !412
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = load i8, ptr %1, align 8, !tbaa !483
  %i.k = icmp eq i8 %i.j, 3
  br i1 %i.k, label %tailrecurse.i, label %tailrecurse._crit_edge.i

tailrecurse.i:                                    ; preds = %_ZN6duckdb12VectorBufferC2ENS_16VectorBufferTypeE.exit, %.noexc12
  %.tr5.i = phi ptr [ %i.n, %.noexc12 ], [ %1, %_ZN6duckdb12VectorBufferC2ENS_16VectorBufferTypeE.exit ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i)
          to label %.noexc unwind label %.loopexit25, !inline_history !506

.noexc:                                           ; preds = %tailrecurse.i
  %i.l = getelementptr inbounds nuw i8, ptr %.tr5.i, i64 88
  %i.m = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %.noexc12 unwind label %.loopexit25, !inline_history !506

.noexc12:                                         ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !483
  %i.p = icmp eq i8 %i.o, 3
  br i1 %i.p, label %tailrecurse.i, label %tailrecurse._crit_edge.i

tailrecurse._crit_edge.i:                         ; preds = %.noexc12, %_ZN6duckdb12VectorBufferC2ENS_16VectorBufferTypeE.exit
  %.tr.lcssa.i = phi ptr [ %1, %_ZN6duckdb12VectorBufferC2ENS_16VectorBufferTypeE.exit ], [ %i.n, %.noexc12 ]
  %i.q = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 88
  %i.r = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %bb.c unwind label %.loopexit.split-lp26, !inline_history !506 ; 2 uses

bb.c:                                             ; preds = %tailrecurse._crit_edge.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !507  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !507  ; 2 uses
  %.not34 = icmp eq ptr %i.t, %i.v
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit, %bb.c
  ret void

.loopexit25:                                      ; preds = %tailrecurse.i, %.noexc
  %lpad.loopexit27 = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp26:                             ; preds = %tailrecurse._crit_edge.i
  %lpad.loopexit.split-lp28 = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.d:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit
  %.sroa.021.035 = phi ptr [ %i.t, %.lr.ph ], [ %i.bk, %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %i.y = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.021.035)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  %i.z = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #48
          to label %.noexc14 unwind label %bb.k, !inline_history !2207 ; 4 uses

.noexc14:                                         ; preds = %bb.e
  invoke void @_ZN6duckdb6VectorC1ERKS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.z, ptr noundef nonnull align 8 dereferenceable(104) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3)
          to label %bb.g unwind label %bb.f, !noalias !2204, !inline_history !2207

bb.f:                                             ; preds = %.noexc14
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.z) #47, !noalias !2204, !inline_history !2207
  br label %.body

bb.g:                                             ; preds = %.noexc14
  store ptr %i.z, ptr %4, align 8, !tbaa !426, !alias.scope !2204
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !543 ; 6 uses
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !639
  %.not.i.i15 = icmp eq ptr %i.ab, %i.ac
  %i.ad = ptrtoint ptr %i.z to i64                ; 2 uses
  br i1 %.not.i.i15, label %bb.h, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.g
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !426
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !543
  br label %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !545 ; 10 uses
  %i.ag = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.i, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #48
          to label %.noexc17 unwind label %.loopexit ; 10 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store i64 %i.ad, ptr %i.ar, align 8, !tbaa !426
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc17
  %5 = add i64 %i.ag, -8
  %6 = sub i64 %5, %i.ah                          ; 2 uses
  %i.as = lshr i64 %6, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader64, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.aq, i64 8
  %i.au = add i64 %i.ag, -8
  %i.av = sub i64 %i.au, %i.ah
  %i.aw = and i64 %i.av, -8                       ; 2 uses
  %scevgep58 = getelementptr i8, ptr %scevgep, i64 %i.aw
  %scevgep59 = getelementptr i8, ptr %i.af, i64 8
  %scevgep60 = getelementptr i8, ptr %scevgep59, i64 %i.aw
  %bound0 = icmp ult ptr %i.aq, %scevgep60
  %bound1 = icmp ult ptr %i.af, %scevgep58
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.at, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aq, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.af, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aq, i64 %i.ba ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.af, i64 %i.ba ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2211)
  %i.bb = getelementptr i8, ptr %next.gep61, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep61, align 8, !tbaa !426, !alias.scope !2213, !noalias !2208
  %wide.load62 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !426, !alias.scope !2213, !noalias !2208
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !426, !alias.scope !2216, !noalias !2213
  store <2 x i64> %wide.load62, ptr %i.bc, align 8, !tbaa !426, !alias.scope !2216, !noalias !2213
  %i.bd = getelementptr i8, ptr %next.gep61, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep61, align 8, !tbaa !426, !alias.scope !2213, !noalias !2208
  store <2 x ptr> splat (ptr null), ptr %i.bd, align 8, !tbaa !426, !alias.scope !2213, !noalias !2208
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !2218

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader64

.lr.ph.i.i.i.i.i.i.i.preheader64:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader64, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader64 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader64 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2211)
  %i.bf = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !426, !alias.scope !2211, !noalias !2208
  store i64 %i.bf, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !426, !alias.scope !2208, !noalias !2211
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !426, !alias.scope !2211, !noalias !2208
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.ab
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2219

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.noexc17 ], [ %i.ay, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.af) #47
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.j
  store ptr %i.aq, ptr %i.i, align 8, !tbaa !545
  store ptr %i.bi, ptr %i.w, align 8, !tbaa !543
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bj, ptr %i.x, align 8, !tbaa !639
  br label %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.021.035, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bk, %i.v
  br i1 %.not, label %._crit_edge, label %bb.d

bb.k:                                             ; preds = %bb.e, %bb.d
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #46
  br label %.body

.body:                                            ; preds = %bb.k, %bb.f, %bb.l
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.l ], [ %i.bl, %bb.k ], [ %i.aa, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %bb.m

bb.m:                                             ; preds = %.loopexit25, %.loopexit.split-lp26, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit27, %.loopexit25 ], [ %lpad.loopexit.split-lp28, %.loopexit.split-lp26 ] ; 2 uses
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.i) #46
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb12VectorBufferE, i64 16), ptr %0, align 8, !tbaa !412
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #46, !inline_history !2183
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !603 ; 3 uses
  %.not.i.i18 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i18, label %common.resume, label %_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i19

_ZNKSt14default_deleteIN6duckdb19VectorAuxiliaryDataEEclEPS1_.exit.i.i19: ; preds = %bb.m
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !412
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.bm) #46, !inline_history !2202
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !483
  %i.b = icmp eq i8 %i.a, 3
  br i1 %i.b, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %.tr5 = phi ptr [ %i.e, %tailrecurse ], [ %0, %bb.a ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5)
  %i.c = getelementptr inbounds nuw i8, ptr %.tr5, i64 88
  %i.d = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !483
  %i.g = icmp eq i8 %i.f, 3
  br i1 %i.g, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %tailrecurse ]
  %i.h = getelementptr inbounds nuw i8, ptr %.tr.lcssa, i64 88
  %i.i = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !426    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !88

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.437, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
end_hunk_2
begin_hunk_3_@_ZN6duckdb6Vector9ReferenceERKNS_5ValueE:bb.a
    i8 29, label %bb.bs
  ]

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  %i.ap = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #48, !noalias !2275 ; 3 uses
  invoke void @_ZN6duckdb18VectorStructBufferC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.ap)
          to label %_ZN6duckdb9make_uniqINS_18VectorStructBufferEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.o, !noalias !2275

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit69, %bb.bi, %bb.bv, %bb.bt, %bb.bg, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.o ], [ %i.ex, %bb.bg ], [ %i.gi, %bb.bt ], [ %.pn45.pn.pn, %_ZNSt10unique_ptrIN6duckdb18VectorStructBufferESt14default_deleteIS1_EED2Ev.exit69 ], [ %i.ff, %bb.bi ], [ %i.gq, %bb.bv ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ap) #47, !noalias !2275
  br label %common.resume

_ZN6duckdb9make_uniqINS_18VectorStructBufferEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.n
  store ptr %i.ap, ptr %3, align 8, !tbaa !634, !alias.scope !2275
  %i.ar = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10StructType13GetChildTypesB5cxx11ERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.p unwind label %bb.x       ; 4 uses

bb.p:                                             ; preds = %_ZN6duckdb9make_uniqINS_18VectorStructBufferEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.as = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18VectorStructBufferESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.q unwind label %bb.y       ; 3 uses

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1013
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !1015
  %.not = icmp eq ptr %i.av, %i.aw
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 56 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 64 ; 2 uses
  br label %bb.z

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit, %bb.q
  %i.ba = load ptr, ptr %3, align 8, !tbaa !634   ; 5 uses
  store ptr null, ptr %3, align 8, !tbaa !634
  %i.bb = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #48
          to label %bb.aw unwind label %bb.r      ; 5 uses

bb.r:                                             ; preds = %._crit_edge
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  %i.be = call ptr @__cxa_begin_catch(ptr %i.bd) #46 ; 0 uses
  %i.bf = icmp eq ptr %i.ba, null
  br i1 %i.bf, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !412
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(72) %i.ba) #46, !inline_history !2240
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  invoke void @__cxa_rethrow() #49
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #50
  unreachable

bb.w:                                             ; preds = %bb.t
  unreachable

bb.x:                                             ; preds = %_ZN6duckdb9make_uniqINS_18VectorStructBufferEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.bd, %bb.p
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit
  %.026129 = phi i64 [ 0, %.lr.ph ], [ %i.df, %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %i.bo = load i8, ptr %i.ax, align 8, !tbaa !513, !range !355, !noundef !74
  %i.bp = trunc nuw i8 %i.bo to i1                ; 3 uses
  br i1 %i.bp, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.bq = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11LogicalTypeEELb1ESaIS9_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 noundef %.026129)
          to label %bb.ab unwind label %bb.ao

bb.ab:                                            ; preds = %bb.aa
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %bb.ac unwind label %bb.ao

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %6)
          to label %bb.ag unwind label %bb.ap

bb.ad:                                            ; preds = %bb.z
  %i.bs = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11StructValue11GetChildrenERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.ae unwind label %bb.ap

bb.ae:                                            ; preds = %bb.ad
  %i.bt = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb6vectorINS_5ValueELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 noundef %.026129)
          to label %bb.af unwind label %bb.ap

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %i.bt)
          to label %bb.ag unwind label %bb.ap

bb.ag:                                            ; preds = %bb.af, %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !2278)
  %i.bu = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #48
          to label %.noexc unwind label %bb.aq, !inline_history !2281 ; 4 uses

.noexc:                                           ; preds = %bb.ag
  invoke void @_ZN6duckdb6VectorC1ERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %i.bu, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.ai unwind label %bb.ah, !noalias !2278, !inline_history !2281

bb.ah:                                            ; preds = %.noexc
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.bu) #47, !noalias !2278, !inline_history !2281
  br label %.body51

bb.ai:                                            ; preds = %.noexc
  store ptr %i.bu, ptr %4, align 8, !tbaa !426, !alias.scope !2278
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #46
  %i.bw = ptrtoint ptr %i.bu to i64               ; 2 uses
  br i1 %i.bp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #46
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  %i.bx = load ptr, ptr %i.ay, align 8, !tbaa !543 ; 6 uses
  %i.by = load ptr, ptr %i.az, align 8, !tbaa !639
  %.not.i.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not.i.i, label %bb.al, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.ak
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !426
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.bz, ptr %i.ay, align 8, !tbaa !543
  br label %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit

bb.al:                                            ; preds = %bb.ak
  %i.ca = load ptr, ptr %i.at, align 8, !tbaa !545 ; 10 uses
  %i.cb = ptrtoint ptr %i.bx to i64               ; 3 uses
  %i.cc = ptrtoint ptr %i.ca to i64               ; 3 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 3 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775800
  br i1 %i.ce, label %bb.am, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
          to label %.noexc54 unwind label %.loopexit.split-lp

.noexc54:                                         ; preds = %bb.am
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.al
  %i.cf = ashr exact i64 %i.cd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = call i64 @llvm.umin.i64(i64 %i.cg, i64 1152921504606846975)
  %i.cj = select i1 %i.ch, i64 1152921504606846975, i64 %i.ci ; 3 uses
  %.not.i.i.i.i53 = icmp ne i64 %i.cj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i53)
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #48
          to label %.noexc55 unwind label %.loopexit ; 10 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd
  store i64 %i.bw, ptr %i.cm, align 8, !tbaa !426
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ca, %i.bx
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc55
  %7 = add i64 %i.cb, -8
  %8 = sub i64 %7, %i.cc                          ; 2 uses
  %i.cn = lshr i64 %8, 3
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cl, i64 8
  %i.cp = add i64 %i.cb, -8
  %i.cq = sub i64 %i.cp, %i.cc
  %i.cr = and i64 %i.cq, -8                       ; 2 uses
  %scevgep175 = getelementptr i8, ptr %scevgep, i64 %i.cr
  %scevgep176 = getelementptr i8, ptr %i.ca, i64 8
  %scevgep177 = getelementptr i8, ptr %scevgep176, i64 %i.cr
  %bound0 = icmp ult ptr %i.cl, %scevgep177
  %bound1 = icmp ult ptr %i.ca, %scevgep175
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.co, 4611686018427387900     ; 3 uses
  %i.cs = shl i64 %n.vec, 3                       ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cl, i64 %i.cs  ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ca, i64 %i.cs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cl, i64 %i.cv ; 2 uses
  %next.gep178 = getelementptr i8, ptr %i.ca, i64 %i.cv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  call void @llvm.experimental.noalias.scope.decl(metadata !2285)
  %i.cw = getelementptr i8, ptr %next.gep178, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep178, align 8, !tbaa !426, !alias.scope !2287, !noalias !2282
  %wide.load179 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !426, !alias.scope !2287, !noalias !2282
  %i.cx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !426, !alias.scope !2290, !noalias !2287
  store <2 x i64> %wide.load179, ptr %i.cx, align 8, !tbaa !426, !alias.scope !2290, !noalias !2287
  %i.cy = getelementptr i8, ptr %next.gep178, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep178, align 8, !tbaa !426, !alias.scope !2287, !noalias !2282
  store <2 x ptr> splat (ptr null), ptr %i.cy, align 8, !tbaa !426, !alias.scope !2287, !noalias !2282
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !2292

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader181

.lr.ph.i.i.i.i.i.i.i.preheader181:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ct, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ca, %vector.memcheck ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cu, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader181, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader181 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader181 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  call void @llvm.experimental.noalias.scope.decl(metadata !2285)
  %i.da = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !426, !alias.scope !2285, !noalias !2282
  store i64 %i.da, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !426, !alias.scope !2282, !noalias !2285
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !426, !alias.scope !2285, !noalias !2282
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.db, %i.bx
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2293

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc55
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cl, %.noexc55 ], [ %i.ct, %middle.block ], [ %i.dc, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ca) #47
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.an
  store ptr %i.cl, ptr %i.at, align 8, !tbaa !545
  store ptr %i.dd, ptr %i.ay, align 8, !tbaa !543
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj
  store ptr %i.de, ptr %i.az, align 8, !tbaa !639
  br label %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %i.df = add nuw i64 %.026129, 1                 ; 2 uses
  %i.dg = load ptr, ptr %i.au, align 8, !tbaa !1013
  %i.dh = load ptr, ptr %i.ar, align 8, !tbaa !1015
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = sdiv exact i64 %i.dk, 56
  %i.dm = icmp ult i64 %i.df, %i.dl
  br i1 %i.dm, label %bb.z, label %._crit_edge, !llvm.loop !2294

bb.ao:                                            ; preds = %bb.ab, %bb.aa
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ap:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ag
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body51

.body51:                                          ; preds = %bb.ah, %bb.aq
  %eh.lpad-body52 = phi { ptr, i32 } [ %i.dp, %bb.aq ], [ %i.bv, %bb.ah ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #46
  br label %bb.ar

bb.ar:                                            ; preds = %.body51, %bb.ap
  %.pn42 = phi { ptr, i32 } [ %eh.lpad-body52, %.body51 ], [ %i.do, %bb.ap ] ; 2 uses
  br i1 %i.bp, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #46
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.ao
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %bb.as ], [ %.pn42, %bb.ar ], [ %i.dn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %bb.av

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp:                               ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #46
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn45 = phi { ptr, i32 } [ %lpad.phi, %bb.au ], [ %.pn42.pn, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %.body

bb.aw:                                            ; preds = %._crit_edge
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 1, ptr %i.dq, align 8, !tbaa !409
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 1, ptr %i.dr, align 4, !tbaa !411
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6duckdb18VectorStructBufferELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bb, align 8, !tbaa !412
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.ba, ptr %i.ds, align 8, !tbaa !2241
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.ba, ptr %i.dt, align 8, !tbaa !2233
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !408 ; 8 uses
  store ptr %i.bb, ptr %i.du, align 8, !tbaa !408
  %.not.i.i.i.i56 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i56, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit65, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 4 uses
  %i.dx = load atomic i64, ptr %i.dw acquire, align 8 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 4294967297
  %i.dz = trunc i64 %i.dx to i32                  ; 2 uses
  br i1 %i.dy, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.dw, align 8, !tbaa !409
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 0, ptr %i.ea, align 4, !tbaa !411
  %i.eb = load ptr, ptr %i.dv, align 8, !tbaa !412
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #46, !inline_history !581
  %i.ee = load ptr, ptr %i.dv, align 8, !tbaa !412
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #46, !inline_history !581
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit65

bb.az:                                            ; preds = %bb.ax
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i57 = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i.i.i57, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ei = add nsw i32 %i.dz, -1
  store i32 %i.ei, ptr %i.dw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58

bb.bb:                                            ; preds = %bb.az
  %i.ej = atomicrmw volatile add ptr %i.dw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i58

end_hunk_3
begin_hunk_4_@_ZN6duckdb25CoordinateReferenceSystem16TryParsePROJJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS0_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #46
  %i.js = load i64, ptr %i.c, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull %i.jq, i64 noundef %i.js, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ju = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.jt, ptr noundef nonnull align 8 dereferenceable(32) %16) #46 ; 0 uses
  %i.jv = load ptr, ptr %16, align 8, !tbaa !89   ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269: ; preds = %bb.bg
  call void @_ZdlPv(ptr noundef %i.jv) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #46
  call void @free(ptr noundef nonnull %i.jq) #46
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #46
  br label %bb.bj

bb.bi:                                            ; preds = %_ZN13duckdb_yyjsonL12yyjson_writeEPKNS_10yyjson_docEjPm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  br label %.critedge

bb.bj:                                            ; preds = %bb.bh, %bb.be
  %.pn135 = phi { ptr, i32 } [ %i.jy, %bb.bh ], [ %i.jr, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  br label %bb.bk

.critedge:                                        ; preds = %bb.j, %.noexc162, %bb.u, %bb.bi, %bb.v
  %.3 = phi i1 [ false, %.noexc162 ], [ %.not134, %bb.bi ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.j ]
  %i.jz = load ptr, ptr %2, align 8, !tbaa !89    ; 2 uses
  %i.ka = icmp eq ptr %i.jz, %i.ak
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %.critedge
  call void @_ZdlPv(ptr noundef %i.jz) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %.thread320

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %bb.bj, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222
  %.pn135.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232 ], [ %i.ih, %bb.aq ], [ %.pn121.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %.pn127.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ], [ %i.ek, %bb.ac ], [ %.pn135, %bb.bj ] ; 2 uses
  %i.kb = load ptr, ptr %2, align 8, !tbaa !89    ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.ak
  br i1 %i.kc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275: ; preds = %bb.bk
  call void @_ZdlPv(ptr noundef %i.kb) #47
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i276: ; preds = %bb.bk, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275
  %.pn135.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn135.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275 ], [ %i.ay, %bb.k ], [ %.pn135.pn.pn.pn.pn, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  %i.kd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !363 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !363 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kd, i8 0, i64 32, i1 false)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !3178 ; 2 uses
  %.not9.i = icmp eq ptr %i.kf, null
  br i1 %.not9.i, label %.noexc431, label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i276
  invoke void %.sroa.3.0.copyload.i(ptr noundef %.sroa.5.0.copyload.i, ptr noundef nonnull %i.kf)
          to label %.noexc431 unwind label %bb.bm, !inline_history !3179

.noexc431:                                        ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i276
  invoke void %.sroa.3.0.copyload.i(ptr noundef %.sroa.5.0.copyload.i, ptr noundef nonnull %i.g)
          to label %_ZNSt10unique_ptrIN13duckdb_yyjson10yyjson_docEPFvPS1_EED2Ev.exit unwind label %bb.bm, !inline_history !3179

bb.bm:                                            ; preds = %.noexc431, %bb.bl
  %i.kg = landingpad { ptr, i32 }
          catch ptr null
  %i.kh = extractvalue { ptr, i32 } %i.kg, 0
  call void @__clang_call_terminate(ptr %i.kh) #50
  unreachable

_ZNSt10unique_ptrIN13duckdb_yyjson10yyjson_docEPFvPS1_EED2Ev.exit: ; preds = %.noexc431
  resume { ptr, i32 } %.pn135.pn.pn.pn.pn.pn

.thread320:                                       ; preds = %.noexc, %bb.b, %_ZN13duckdb_yyjsonL19yyjson_doc_get_rootEPNS_10yyjson_docE.exit, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, %bb.c
  %.6323 = phi i1 [ false, %_ZN13duckdb_yyjsonL19yyjson_doc_get_rootEPNS_10yyjson_docE.exit ], [ false, %bb.b ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ], [ false, %bb.d ], [ false, %bb.c ], [ false, %.noexc ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0..sroa_idx.i434 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.3.0.copyload.i435 = load ptr, ptr %.sroa.3.0..sroa_idx.i434, align 8, !tbaa !363 ; 2 uses
  %.sroa.5.0..sroa_idx.i436 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.5.0.copyload.i437 = load ptr, ptr %.sroa.5.0..sroa_idx.i436, align 8, !tbaa !363 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ki, i8 0, i64 32, i1 false)
  %i.kj = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !3178 ; 2 uses
  %.not9.i438 = icmp eq ptr %i.kk, null
  br i1 %.not9.i438, label %.noexc439, label %bb.bn

bb.bn:                                            ; preds = %.thread320
  invoke void %.sroa.3.0.copyload.i435(ptr noundef %.sroa.5.0.copyload.i437, ptr noundef nonnull %i.kk)
          to label %.noexc439 unwind label %bb.bo, !inline_history !3179

.noexc439:                                        ; preds = %bb.bn, %.thread320
  invoke void %.sroa.3.0.copyload.i435(ptr noundef %.sroa.5.0.copyload.i437, ptr noundef nonnull %i.g)
          to label %_ZNSt10unique_ptrIN13duckdb_yyjson10yyjson_docEPFvPS1_EED2Ev.exit280 unwind label %bb.bo, !inline_history !3179

bb.bo:                                            ; preds = %.noexc439, %bb.bn
  %i.kl = landingpad { ptr, i32 }
          catch ptr null
  %i.km = extractvalue { ptr, i32 } %i.kl, 0
  call void @__clang_call_terminate(ptr %i.km) #50
  unreachable

_ZNSt10unique_ptrIN13duckdb_yyjson10yyjson_docEPFvPS1_EED2Ev.exit280: ; preds = %.noexc439, %bb.a
  %.6324 = phi i1 [ false, %bb.a ], [ %.6323, %.noexc439 ]
  ret i1 %.6324
}

declare noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10StringUtil6FormatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_DpT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.1077", align 8  ; 9 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46, !noalias !3180
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !3180
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !115, !noalias !3180 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118, !noalias !3180 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.f) #47
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !119

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !115, !noalias !3180
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.j) #47
  br label %_ZN6duckdb9Exception16ConstructMessageIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46, !noalias !3180
  resume { ptr, i32 } %i.k

_ZN6duckdb9Exception16ConstructMessageIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46, !noalias !3180
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #30

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb25CoordinateReferenceSystem16TryParseAuthCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !89     ; 5 uses
  %3 = ptrtoaddr ptr %i.b to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !152  ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 %i.d     ; 4 uses
  %.not55 = icmp samesign eq i64 %i.d, 0
  br i1 %.not55, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.03756 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = load i8, ptr %.03756, align 1, !tbaa !153
  switch i8 %i.f, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.03756, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !3183

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit:  ; preds = %.lr.ph, %bb.a
  %.037.lcssa = phi ptr [ %i.b, %bb.a ], [ %.03756, %.lr.ph ] ; 10 uses
  %.037.lcssa77 = ptrtoint ptr %.037.lcssa to i64 ; 2 uses
  %.not4659 = icmp eq ptr %i.e, %.037.lcssa
  br i1 %.not4659, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50.thread, label %.lr.ph61.preheader

.lr.ph61.preheader:                               ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
  %i.h = sub i64 %.037.lcssa77, %3
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.h
  br label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50
  %.04560 = phi ptr [ %i.i, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50 ], [ %i.e, %.lr.ph61.preheader ] ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.04560, i64 -1 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !153
  switch i8 %i.j, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50.thread [
    i8 32, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50
    i8 12, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50
    i8 11, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50
    i8 10, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50
    i8 9, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50
    i8 13, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50
  ]

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50: ; preds = %.lr.ph61, %.lr.ph61, %.lr.ph61, %.lr.ph61, %.lr.ph61, %.lr.ph61
  %.not46 = icmp eq ptr %i.i, %.037.lcssa
  br i1 %.not46, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50.thread, label %.lr.ph61, !llvm.loop !3184

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50.thread: ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50, %.lr.ph61, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit
  %.045.lcssa = phi ptr [ %i.e, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit ], [ %scevgep, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50 ], [ %.04560, %.lr.ph61 ] ; 5 uses
  %.not4765 = icmp eq ptr %.037.lcssa, %.045.lcssa
  br i1 %.not4765, label %.thread, label %.lr.ph67

.lr.ph67:                                         ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50.thread, %bb.n
  %.04466 = phi ptr [ %i.bg, %bb.n ], [ %.037.lcssa, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50.thread ] ; 5 uses
  %i.k = load i8, ptr %.04466, align 1, !tbaa !153
  %i.l = icmp eq i8 %i.k, 58
  br i1 %i.l, label %.preheader, label %bb.n

.preheader:                                       ; preds = %.lr.ph67
  %.not48.not68 = icmp eq ptr %.037.lcssa, %.04466
  br i1 %.not48.not68, label %._crit_edge, label %.lr.ph71

.lr.ph71:                                         ; preds = %.preheader, %.lr.ph71
  %.04069 = phi ptr [ %i.q, %.lr.ph71 ], [ %.037.lcssa, %.preheader ] ; 2 uses
  %i.m = load i8, ptr %.04069, align 1, !tbaa !153
  %i.n = and i8 %i.m, -33
  %i.o = add i8 %i.n, -65
  %i.p = icmp ult i8 %i.o, 26                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.04069, i64 1 ; 2 uses
  %.not48.not = icmp ne ptr %i.q, %.04466
  %or.cond.not = select i1 %i.p, i1 %.not48.not, i1 false
  br i1 %or.cond.not, label %.lr.ph71, label %._crit_edge, !llvm.loop !3185

._crit_edge:                                      ; preds = %.lr.ph71, %.preheader
  %.not48.not.lcssa = phi i1 [ true, %.preheader ], [ %i.p, %.lr.ph71 ]
  %.03898 = getelementptr inbounds nuw i8, ptr %.04466, i64 1 ; 2 uses
  %.not49.not99 = icmp eq ptr %.03898, %.045.lcssa
  br i1 %.not49.not99, label %._crit_edge102, label %.lr.ph101

bb.c:                                             ; preds = %.lr.ph101
  %.038 = getelementptr inbounds nuw i8, ptr %.038100, i64 1 ; 2 uses
  %.not49.not = icmp eq ptr %.038, %.045.lcssa
  br i1 %.not49.not, label %._crit_edge102, label %.lr.ph101, !llvm.loop !3186

.lr.ph101:                                        ; preds = %._crit_edge, %bb.c
  %.038100 = phi ptr [ %.038, %bb.c ], [ %.03898, %._crit_edge ] ; 2 uses
  %i.r = load i8, ptr %.038100, align 1, !tbaa !153 ; 2 uses
  %i.s = and i8 %i.r, -33
  %i.t = add i8 %i.s, -65
  %i.u = icmp ult i8 %i.t, 26
  %i.v = add i8 %i.r, -48
  %i.w = icmp ult i8 %i.v, 10
  %i.x = or i1 %i.w, %i.u
  br i1 %i.x, label %bb.c, label %.thread, !llvm.loop !3186

._crit_edge102:                                   ; preds = %bb.c, %._crit_edge
  br i1 %.not48.not.lcssa, label %bb.d, label %.thread

bb.d:                                             ; preds = %._crit_edge102
  store i8 2, ptr %1, align 8, !tbaa !3143
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.y = ptrtoint ptr %.045.lcssa to i64
  %i.z = sub i64 %i.y, %.037.lcssa77              ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.aa, ptr %2, align 8, !tbaa !151
  %i.ab = icmp eq ptr %.037.lcssa, null
  br i1 %i.ab, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.436) #49
  unreachable

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 %i.z, ptr %i.a, align 8, !tbaa !108
  %i.ac = icmp ugt i64 %i.z, 15
  br i1 %i.ac, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ad, ptr %2, align 8, !tbaa !89
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !108
  store i64 %i.ae, ptr %i.aa, align 8, !tbaa !153
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.e
  %i.af = phi ptr [ %i.ad, %.noexc.i ], [ %i.aa, %bb.e ] ; 2 uses
  switch i64 %i.z, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ag = load i8, ptr %.037.lcssa, align 1, !tbaa !153
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !153
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %.037.lcssa, i64 %i.z, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !152
  %i.aj = load ptr, ptr %2, align 8, !tbaa !89
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !89 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  %i.ap = load ptr, ptr %2, align 8, !tbaa !89    ; 5 uses
  %i.aq = icmp eq ptr %i.ap, %i.aa                ; 2 uses
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.h
  br i1 %i.aq, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.h
  br i1 %i.aq, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ar = load i64, ptr %i.ai, align 8, !tbaa !152 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  switch i64 %i.ar, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !153
  store i8 %i.at, ptr %i.am, align 1, !tbaa !153
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ap, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !152 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.au, ptr %i.av, align 8, !tbaa !152
  %i.aw = load ptr, ptr %i.al, align 8, !tbaa !89
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !153
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !89
  %i.az = load <2 x i64>, ptr %i.ai, align 8, !tbaa !153
  store <2 x i64> %i.az, ptr %i.ay, align 8, !tbaa !153
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ba = load i64, ptr %i.an, align 8, !tbaa !153
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !89
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load <2 x i64>, ptr %i.ai, align 8, !tbaa !153
  store <2 x i64> %i.bc, ptr %i.bb, align 8, !tbaa !153
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.am, ptr %2, align 8, !tbaa !89
  store i64 %i.ba, ptr %i.aa, align 8, !tbaa !153
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aa, ptr %2, align 8, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.bd = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.am, %bb.l ], [ %i.aa, %bb.m ]
  store i64 0, ptr %i.ai, align 8, !tbaa !152
  store i8 0, ptr %i.bd, align 1, !tbaa !153
  %i.be = load ptr, ptr %2, align 8, !tbaa !89    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.aa
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.be) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %.thread

bb.n:                                             ; preds = %.lr.ph67
  %i.bg = getelementptr inbounds nuw i8, ptr %.04466, i64 1 ; 2 uses
  %.not47 = icmp eq ptr %i.bg, %.045.lcssa
  br i1 %.not47, label %.thread, label %.lr.ph67, !llvm.loop !3187

.thread:                                          ; preds = %bb.b, %bb.n, %.lr.ph101, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %._crit_edge102
  %.2 = phi i1 [ false, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit50.thread ], [ false, %._crit_edge102 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.n ], [ false, %.lr.ph101 ], [ false, %bb.b ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25CoordinateReferenceSystem15ParseDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !152  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 8, !tbaa !3143
  br label %bb.g

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.018.025 = phi ptr [ %i.g, %bb.c ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %i.f = load i8, ptr %.sroa.018.025, align 1, !tbaa !153
  switch i8 %i.f, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread22 [
    i8 32, label %bb.c
    i8 12, label %bb.c
    i8 11, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.018.025, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit, label %.lr.ph

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit:  ; preds = %bb.c
  store i8 0, ptr %1, align 8, !tbaa !3143
  br label %bb.g

_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread22: ; preds = %.lr.ph
  %i.h = tail call noundef zeroext i1 @_ZN6duckdb25CoordinateReferenceSystem16TryParsePROJJSONERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread22
  %i.i = tail call noundef zeroext i1 @_ZN6duckdb25CoordinateReferenceSystem16TryParseAuthCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef zeroext i1 @_ZN6duckdb25CoordinateReferenceSystem12TryParseWKT2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %1, align 8, !tbaa !3143
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit, %bb.f, %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread22, %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb25CoordinateReferenceSystem9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(680) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !151
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !152
  store i8 0, ptr %i.b, align 8, !tbaa !153
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.e = load i8, ptr %i.d, align 1, !tbaa !3188, !range !355, !noundef !74
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp ne i64 %i.h, 0
  %or.cond.not = select i1 %i.f, i1 true, i1 %i.i ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !412
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  br i1 %or.cond.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread7.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %bb.a
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.267, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.b, !inline_history !3189

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread7.i: ; preds = %bb.a
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(680) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.267, i1 noundef zeroext true)
          to label %.noexc3 unwind label %bb.b, !inline_history !3189

.noexc3:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread7.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !412
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(680) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.noexc unwind label %bb.b, !inline_history !3189

.noexc:                                           ; preds = %.noexc3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.p = load ptr, ptr %1, align 8, !tbaa !412
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(680) %1, i1 noundef zeroext %or.cond.not)
          to label %_ZN6duckdb10Serializer24WritePropertyWithDefaultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvtPKcRKT_SC_.exit unwind label %bb.b, !inline_history !3189

_ZN6duckdb10Serializer24WritePropertyWithDefaultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvtPKcRKT_SC_.exit: ; preds = %.noexc
  %i.s = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.b
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvtPKcRKT_SC_.exit
  call void @_ZdlPv(ptr noundef %i.s) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6duckdb10Serializer24WritePropertyWithDefaultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvtPKcRKT_SC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  ret void

bb.b:                                             ; preds = %.noexc, %.noexc3, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread7.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.v) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25CoordinateReferenceSystem11DeserializeERNS_12DeserializerE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::CoordinateReferenceSystem") align 8 %0, ptr noundef nonnull align 8 dereferenceable(632) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !151
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !152
  store i8 0, ptr %i.a, align 8, !tbaa !153
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !151
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !152
  store i8 0, ptr %i.c, align 8, !tbaa !153
  invoke void @_ZN6duckdb12Deserializer31ReadPropertyWithExplicitDefaultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvtPKcRT_SA_(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.267, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.e) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store i8 0, ptr %0, align 8, !tbaa !3143
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !151
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8, !tbaa !152
  store i8 0, ptr %i.h, align 8, !tbaa !153
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !151
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.l, align 8, !tbaa !152
  store i8 0, ptr %i.k, align 8, !tbaa !153
  %i.m = load i64, ptr %i.b, align 8, !tbaa !152  ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN6duckdb25CoordinateReferenceSystem15ParseDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %.sroa.018.025.i = phi ptr [ %i.r, %bb.c ], [ %i.o, %.lr.ph.preheader.i ] ; 2 uses
  %i.q = load i8, ptr %.sroa.018.025.i, align 1, !tbaa !153
  switch i8 %i.q, label %_ZN6duckdb10StringUtil16CharacterIsSpaceEc.exit.thread22.i [
    i8 32, label %bb.c
    i8 12, label %bb.c
    i8 11, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

end_hunk_4
begin_hunk_5_@_ZNSt10_HashtableIPjSt4pairIKS0_N6duckdb10shared_ptrINS3_12VectorBufferELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev:bb.a
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !409
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !411
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !412
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #46, !inline_history !3238
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !412
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #46, !inline_history !3238
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPjN6duckdb10shared_ptrINS5_12VectorBufferELb1EEEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPjN6duckdb10shared_ptrINS5_12VectorBufferELb1EEEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i, !prof !88

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #46
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPjN6duckdb10shared_ptrINS5_12VectorBufferELb1EEEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPjN6duckdb10shared_ptrINS5_12VectorBufferELb1EEEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i) #47
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableIPjSt4pairIKS0_N6duckdb10shared_ptrINS3_12VectorBufferELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !743

_ZNSt10_HashtableIPjSt4pairIKS0_N6duckdb10shared_ptrINS3_12VectorBufferELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPjN6duckdb10shared_ptrINS5_12VectorBufferELb1EEEELb0EEEEE18_M_deallocate_nodeEPSA_.exit.i.i, %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !738
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !740
  %i.x = shl i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.x, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %0, align 8, !tbaa !738    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt10_HashtableIPjSt4pairIKS0_N6duckdb10shared_ptrINS3_12VectorBufferELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIPjSt4pairIKS0_N6duckdb10shared_ptrINS3_12VectorBufferELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  tail call void @_ZdlPv(ptr noundef %i.y) #47
  br label %_ZNSt10_HashtableIPjSt4pairIKS0_N6duckdb10shared_ptrINS3_12VectorBufferELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPjSt4pairIKS0_N6duckdb10shared_ptrINS3_12VectorBufferELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.h, %_ZNSt10_HashtableIPjSt4pairIKS0_N6duckdb10shared_ptrINS3_12VectorBufferELb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS0_ESt4hashIS0_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIA_N6duckdb19UnifiedVectorFormatEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %1, i64 -8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %.idx = mul nsw i64 %i.c, 80
  %i.e = getelementptr inbounds i8, ptr %1, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.f = phi ptr [ %i.g, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit ], [ %i.e, %.preheader.preheader ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -80 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !408  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !409
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !411
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !412
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #46, !inline_history !849
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !412
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #46, !inline_history !849
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !88

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #46
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %.preheader
  %i.y = getelementptr inbounds i8, ptr %i.f, i64 -48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !408  ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.aa, align 8, !tbaa !409
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !411
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !412
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #46, !inline_history !850
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !412
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #46, !inline_history !850
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.m:                                             ; preds = %bb.k
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ad, %bb.l ], [ %i.an, %bb.m ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ao, label %bb.n, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !88

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #46
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.n
  %i.ap = icmp eq ptr %i.g, %1
  br i1 %i.ap, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #47
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb16DateToStringCast6FormatEPciiimb(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %6 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %4 ; 11 uses
  %i.b = icmp sgt i32 %1, 99
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.01720.i = phi i32 [ %i.f, %.lr.ph.i ], [ %1, %bb.a ] ; 3 uses
  %.01819.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = urem i32 %.01720.i, 100
  %i.d = shl nuw nsw i32 %i.c, 1
  %i.e = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %i.d) ; 2 uses
  %i.f = udiv i32 %.01720.i, 100                  ; 2 uses
  %i.g = add i32 %i.e, 1
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !153
  %i.k = getelementptr inbounds i8, ptr %.01819.i, i64 -1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !153
  %i.l = zext i32 %i.e to i64
  %i.m = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !153
  %i.o = getelementptr inbounds i8, ptr %.01819.i, i64 -2 ; 3 uses
  store i8 %i.n, ptr %i.o, align 1, !tbaa !153
  %i.p = icmp samesign ugt i32 %.01720.i, 9999
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3239

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.018.lcssa.i = phi ptr [ %i.a, %bb.a ], [ %i.o, %.lr.ph.i ] ; 4 uses
  %.017.lcssa.i = phi i32 [ %1, %bb.a ], [ %i.f, %.lr.ph.i ] ; 3 uses
  %.018.lcssa.i27 = ptrtoaddr ptr %.018.lcssa.i to i64 ; 2 uses
  %i.q = icmp slt i32 %.017.lcssa.i, 10
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i
  %i.r = add nsw i32 %.017.lcssa.i, 48
  %i.s = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIciLb0EE7ConvertEi(i32 noundef %i.r)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedIiEEPcT_S2_.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.t = shl nuw nsw i32 %.017.lcssa.i, 1
  %i.u = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %i.t) ; 2 uses
  %i.v = add i32 %i.u, 1
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !153
  %i.z = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 -1
  store i8 %i.y, ptr %i.z, align 1, !tbaa !153
  %i.aa = zext i32 %i.u to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !153
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedIiEEPcT_S2_.exit

_ZN6duckdb13NumericHelper14FormatUnsignedIiEEPcT_S2_.exit: ; preds = %bb.b, %bb.c
  %.sink26.i = phi i64 [ -2, %bb.c ], [ -1, %bb.b ] ; 2 uses
  %.sink.i = phi i8 [ %i.ac, %bb.c ], [ %i.s, %bb.b ]
  %i.ad = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 %.sink26.i ; 2 uses
  store i8 %.sink.i, ptr %i.ad, align 1, !tbaa !153
  %i.ae = icmp ugt ptr %i.ad, %0
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN6duckdb13NumericHelper14FormatUnsignedIiEEPcT_S2_.exit
  %i.af = sub i64 %6, %.018.lcssa.i27
  %scevgep = getelementptr i8, ptr %.018.lcssa.i, i64 %i.af
  %i.ag = add i64 %.sink26.i, %.018.lcssa.i27
  %i.ah = sub i64 %i.ag, %6
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %i.ah, i1 false), !tbaa !153
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN6duckdb13NumericHelper14FormatUnsignedIiEEPcT_S2_.exit
  store i8 45, ptr %i.a, align 1, !tbaa !153
  %i.ai = icmp slt i32 %2, 10
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 48, ptr %i.aj, align 1, !tbaa !153
  %i.ak = trunc i32 %2 to i8
  %i.al = add i8 %i.ak, 48
  br label %_ZN6duckdb16DateToStringCast15FormatComponentERPci.exit

bb.e:                                             ; preds = %._crit_edge
  %i.am = shl nuw nsw i32 %2, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.an ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !153
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !153
  %i.ar = getelementptr i8, ptr %i.ao, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !153
  br label %_ZN6duckdb16DateToStringCast15FormatComponentERPci.exit

_ZN6duckdb16DateToStringCast15FormatComponentERPci.exit: ; preds = %bb.d, %bb.e
  %.sink.i11 = phi i8 [ %i.as, %bb.e ], [ %i.al, %bb.d ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %.sink.i11, ptr %i.at, align 1, !tbaa !153
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 45, ptr %i.au, align 1, !tbaa !153
  %i.av = icmp slt i32 %3, 10
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6duckdb16DateToStringCast15FormatComponentERPci.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 48, ptr %i.aw, align 1, !tbaa !153
  %i.ax = trunc i32 %3 to i8
  %i.ay = add i8 %i.ax, 48
  br label %_ZN6duckdb16DateToStringCast15FormatComponentERPci.exit13

bb.g:                                             ; preds = %_ZN6duckdb16DateToStringCast15FormatComponentERPci.exit
  %i.az = shl nuw nsw i32 %3, 1
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ba ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !153
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !153
  %i.be = getelementptr i8, ptr %i.bb, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !153
  br label %_ZN6duckdb16DateToStringCast15FormatComponentERPci.exit13

_ZN6duckdb16DateToStringCast15FormatComponentERPci.exit13: ; preds = %bb.f, %bb.g
  %.sink.i12 = phi i8 [ %i.bf, %bb.g ], [ %i.ay, %bb.f ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %.sink.i12, ptr %i.bg, align 1, !tbaa !153
  br i1 %5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6duckdb16DateToStringCast15FormatComponentERPci.exit13
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bh, ptr noundef nonnull align 1 dereferenceable(5) @.str.272, i64 5, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6duckdb16DateToStringCast15FormatComponentERPci.exit13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = icmp slt i32 %0, 0
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %0, ptr %i.b, align 4, !tbaa !3
  store i32 0, ptr %i.c, align 4, !tbaa !3
  store i32 -1, ptr %i.d, align 4, !tbaa !3
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 75, ptr %i.a, align 8, !tbaa !108
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ; 3 uses

.noexc.i:                                         ; preds = %bb.b
  store ptr %i.h, ptr %1, align 8, !tbaa !89
  %i.i = load i64, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.h, ptr noundef nonnull align 1 dereferenceable(75) @.str.273, i64 75, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !152
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  invoke void @_ZN6duckdb17InternalExceptionC2IJRiRjS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc.i
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.g unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %.noexc.i
  %.0.i = phi i1 [ false, %bb.c ], [ true, %.noexc.i ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.g
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.n) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0.i, label %bb.e, label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn8.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #46
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn7.i = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn8.i, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn7.i

bb.g:                                             ; preds = %bb.c
  unreachable

bb.h:                                             ; preds = %bb.a
  ret i32 %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJRiRjS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.1077", align 8  ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46, !noalias !3240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !3240
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIiJRKjS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !115, !noalias !3240 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_5
begin_hunk_6_@_ZNK6duckdb5HLLV15CountEv:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.274, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #46
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %.pn9, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  resume { ptr, i32 } %.pn8

bb.h:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.a, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i64 %i.j

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #23

declare noundef i32 @_ZN10duckdb_hll9hll_countEPNS_4robjEPm(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef i64 @_ZN10duckdb_hll8get_sizeEv() local_unnamed_addr #5

declare void @_ZN10duckdb_hll11hll_destroyEPNS_4robjE(ptr noundef) local_unnamed_addr #5

declare noundef zeroext i8 @_ZN10duckdb_hll12get_registerEPNS_4robjEm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb20IntervalToStringCast18FormatSignedNumberElPcRm(i64 noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.lobit.neg.neg = lshr i64 %0, 63
  %.neg.neg14 = trunc nuw nsw i64 %.lobit.neg.neg to i32
  %i.a = tail call i64 @llvm.abs.i64(i64 %0, i1 true)
  %i.b = tail call noundef i64 @_ZN6duckdb15NumericCastImplImlLb0EE7ConvertEl(i64 noundef %i.a) ; 13 uses
  %i.c = icmp ugt i64 %i.b, 9999999999
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %i.b, 999999999999999
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ugt i64 %i.b, 9999999999999999
  %i.f = select i1 %i.e, i32 17, i32 16
  br label %_ZN6duckdb13NumericHelper14UnsignedLengthImEEiT_.exit

bb.d:                                             ; preds = %bb.b
  %i.g = icmp samesign ugt i64 %i.b, 99999999999
  %i.h = select i1 %i.g, i32 12, i32 11
  br label %_ZN6duckdb13NumericHelper14UnsignedLengthImEEiT_.exit

bb.e:                                             ; preds = %bb.a
  %i.i = icmp samesign ugt i64 %i.b, 99999
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = icmp samesign ugt i64 %i.b, 999999
  %i.k = select i1 %i.j, i32 7, i32 6
  br label %_ZN6duckdb13NumericHelper14UnsignedLengthImEEiT_.exit

bb.g:                                             ; preds = %bb.e
  %i.l = icmp samesign ugt i64 %i.b, 9
  %i.m = select i1 %i.l, i32 2, i32 1
  br label %_ZN6duckdb13NumericHelper14UnsignedLengthImEEiT_.exit

_ZN6duckdb13NumericHelper14UnsignedLengthImEEiT_.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sink50.i = phi i64 [ 99, %bb.g ], [ 9999999, %bb.f ], [ 999999999999, %bb.d ], [ 99999999999999999, %bb.c ]
  %.sink.i = phi i32 [ %i.m, %bb.g ], [ %i.k, %bb.f ], [ %i.h, %bb.d ], [ %i.f, %bb.c ]
  %.sink47.i = phi i64 [ 999, %bb.g ], [ 99999999, %bb.f ], [ 9999999999999, %bb.d ], [ 999999999999999999, %bb.c ]
  %.sink44.i = phi i64 [ 9999, %bb.g ], [ 999999999, %bb.f ], [ 99999999999999, %bb.d ], [ -8446744073709551617, %bb.c ]
  %i.n = icmp ugt i64 %i.b, %.sink50.i
  %i.o = zext i1 %i.n to i32
  %i.p = icmp ugt i64 %i.b, %.sink47.i
  %i.q = zext i1 %i.p to i32
  %i.r = icmp ugt i64 %i.b, %.sink44.i
  %i.s = zext i1 %i.r to i32
  %i.t = add nuw nsw i32 %.sink.i, %.neg.neg14
  %i.u = add nuw nsw i32 %i.t, %i.o
  %i.v = add nuw nsw i32 %i.u, %i.q
  %i.w = add nuw nsw i32 %i.v, %i.s
  %i.x = tail call noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.w)
  %i.y = load i64, ptr %2, align 8, !tbaa !108
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  store i64 %i.z, ptr %2, align 8, !tbaa !108
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z ; 2 uses
  %i.ab = icmp ugt i64 %i.b, 99
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb13NumericHelper14UnsignedLengthImEEiT_.exit, %.lr.ph.i
  %.01720.i = phi i64 [ %i.af, %.lr.ph.i ], [ %i.b, %_ZN6duckdb13NumericHelper14UnsignedLengthImEEiT_.exit ] ; 3 uses
  %.01819.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.aa, %_ZN6duckdb13NumericHelper14UnsignedLengthImEEiT_.exit ] ; 2 uses
  %i.ac = urem i64 %.01720.i, 100
  %i.ad = shl nuw nsw i64 %i.ac, 1
  %i.ae = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.ad) ; 2 uses
  %i.af = udiv i64 %.01720.i, 100                 ; 2 uses
  %i.ag = add i32 %i.ae, 1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !153
  %i.ak = getelementptr inbounds i8, ptr %.01819.i, i64 -1
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !153
  %i.al = zext i32 %i.ae to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !153
  %i.ao = getelementptr inbounds i8, ptr %.01819.i, i64 -2 ; 3 uses
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !153
  %i.ap = icmp ugt i64 %.01720.i, 9999
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !291

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZN6duckdb13NumericHelper14UnsignedLengthImEEiT_.exit
  %.018.lcssa.i = phi ptr [ %i.aa, %_ZN6duckdb13NumericHelper14UnsignedLengthImEEiT_.exit ], [ %i.ao, %.lr.ph.i ] ; 2 uses
  %.017.lcssa.i = phi i64 [ %i.b, %_ZN6duckdb13NumericHelper14UnsignedLengthImEEiT_.exit ], [ %i.af, %.lr.ph.i ] ; 3 uses
  %i.aq = icmp samesign ult i64 %.017.lcssa.i, 10
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.ar = or disjoint i64 %.017.lcssa.i, 48
  %i.as = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIcmLb0EE7ConvertEm(i64 noundef %i.ar)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.at = shl nuw nsw i64 %.017.lcssa.i, 1
  %i.au = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.at) ; 2 uses
  %i.av = add i32 %i.au, 1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !153
  %i.az = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 -1
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !153
  %i.ba = zext i32 %i.au to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !153
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit

_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit: ; preds = %bb.h, %bb.i
  %.sink26.i = phi i64 [ -2, %bb.i ], [ -1, %bb.h ]
  %.sink.i12 = phi i8 [ %i.bc, %bb.i ], [ %i.as, %bb.h ]
  %i.bd = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 %.sink26.i ; 2 uses
  store i8 %.sink.i12, ptr %i.bd, align 1, !tbaa !153
  %.not = icmp sgt i64 %0, -1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -1
  store i8 45, ptr %i.be, align 1, !tbaa !153
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN6duckdb16TimeToStringCast12FormatMicrosEiPc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.b = icmp sgt i32 %0, 99
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.01720.i = phi i32 [ %i.f, %.lr.ph.i ], [ %0, %bb.a ] ; 3 uses
  %.01819.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = urem i32 %.01720.i, 100
  %i.d = shl nuw nsw i32 %i.c, 1
  %i.e = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %i.d) ; 2 uses
  %i.f = udiv i32 %.01720.i, 100                  ; 2 uses
  %i.g = add i32 %i.e, 1
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !153
  %i.k = getelementptr inbounds i8, ptr %.01819.i, i64 -1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !153
  %i.l = zext i32 %i.e to i64
  %i.m = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !153
  %i.o = getelementptr inbounds i8, ptr %.01819.i, i64 -2 ; 3 uses
  store i8 %i.n, ptr %i.o, align 1, !tbaa !153
  %i.p = icmp samesign ugt i32 %.01720.i, 9999
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3239

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.018.lcssa.i = phi ptr [ %i.a, %bb.a ], [ %i.o, %.lr.ph.i ] ; 4 uses
  %.017.lcssa.i = phi i32 [ %0, %bb.a ], [ %i.f, %.lr.ph.i ] ; 3 uses
  %.018.lcssa.i20 = ptrtoaddr ptr %.018.lcssa.i to i64 ; 2 uses
  %i.q = icmp slt i32 %.017.lcssa.i, 10
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i
  %i.r = add nsw i32 %.017.lcssa.i, 48
  %i.s = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIciLb0EE7ConvertEi(i32 noundef %i.r)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedIiEEPcT_S2_.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.t = shl nuw nsw i32 %.017.lcssa.i, 1
  %i.u = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %i.t) ; 2 uses
  %i.v = add i32 %i.u, 1
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !153
  %i.z = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 -1
  store i8 %i.y, ptr %i.z, align 1, !tbaa !153
  %i.aa = zext i32 %i.u to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !153
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedIiEEPcT_S2_.exit

_ZN6duckdb13NumericHelper14FormatUnsignedIiEEPcT_S2_.exit: ; preds = %bb.b, %bb.c
  %.sink26.i = phi i64 [ -2, %bb.c ], [ -1, %bb.b ] ; 2 uses
  %.sink.i = phi i8 [ %i.ac, %bb.c ], [ %i.s, %bb.b ]
  %i.ad = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 %.sink26.i ; 2 uses
  store i8 %.sink.i, ptr %i.ad, align 1, !tbaa !153
  %i.ae = icmp ugt ptr %i.ad, %1
  br i1 %i.ae, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6duckdb13NumericHelper14FormatUnsignedIiEEPcT_S2_.exit
  %i.af = sub i64 %2, %.018.lcssa.i20
  %scevgep = getelementptr i8, ptr %.018.lcssa.i, i64 %i.af
  %i.ag = add i64 %.sink26.i, %.018.lcssa.i20
  %i.ah = sub i64 %i.ag, %2
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %i.ah, i1 false), !tbaa !153
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %_ZN6duckdb13NumericHelper14FormatUnsignedIiEEPcT_S2_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !153
  %.not14 = icmp eq i8 %i.aj, 48
  br i1 %.not14, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !153
  %.not14.1 = icmp eq i8 %i.al, 48
  br i1 %.not14.1, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !153
  %.not14.2 = icmp eq i8 %i.an, 48
  br i1 %.not14.2, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !153
  %.not14.3 = icmp eq i8 %i.ap, 48
  br i1 %.not14.3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !153
  %.not14.4 = icmp eq i8 %i.ar, 48
  %spec.select = select i1 %.not14.4, i32 5, i32 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %.preheader
  %.011.lcssa = phi i32 [ 0, %.preheader ], [ 3, %bb.f ], [ 1, %bb.d ], [ %spec.select, %bb.g ], [ 2, %bb.e ]
  ret i32 %.011.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb6vectorINS_20ListSegmentFunctionsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1052   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1052 ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZNK6duckdb6vectorINS_20ListSegmentFunctionsELb1ESaIS1_EE3getILb1EEERKS1_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.279, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.g unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0, label %bb.f, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #46
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn9, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNK6duckdb6vectorINS_20ListSegmentFunctionsELb1ESaIS1_EE3getILb1EEERKS1_m.exit: ; preds = %bb.a
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.a, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -56
  ret ptr %i.o

bb.g:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.1077", align 8  ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46, !noalias !3264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !3264
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !115, !noalias !3264 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118, !noalias !3264 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !89   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #47
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !119

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !115, !noalias !3264
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #47
  br label %_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

end_hunk_6
begin_hunk_7_@_ZN6duckdb21InvalidInputExceptionC2IJRcRKclEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveIcJRKcRKlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSB_RSt6vectorINS_20ExceptionFormatValueESaISF_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  %i.a = load i8, ptr %3, align 1, !tbaa !153, !noalias !3434
  %i.b = sext i8 %i.a to i64
  call void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3224
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !151
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !152  ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.j, ptr %i.g, align 8, !tbaa !89
  %i.q = load i64, ptr %i.k, align 8, !tbaa !153
  store i64 %i.q, ptr %i.i, align 8, !tbaa !153
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !152
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.r = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.r, ptr %i.t, align 8, !tbaa !152
  store ptr %i.k, ptr %i.h, align 8, !tbaa !89
  store i64 0, ptr %i.s, align 8, !tbaa !152
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.v, ptr %i.c, align 8, !tbaa !118
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.pre11 = load ptr, ptr %.phi.trans.insert10, align 8, !tbaa !89 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.x = icmp eq ptr %.pre11, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre11) #47
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveIcJRKlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !89  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #47
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9

_ZN6duckdb20ExceptionFormatValueD2Ev.exit9:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveIcJRKlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %i.a = load i8, ptr %3, align 1, !tbaa !153, !noalias !3437
  %i.b = sext i8 %i.a to i64
  call void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64) %5, i64 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3224
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !151
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !152  ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.j, ptr %i.g, align 8, !tbaa !89
  %i.q = load i64, ptr %i.k, align 8, !tbaa !153
  store i64 %i.q, ptr %i.i, align 8, !tbaa !153
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !152
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.r = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.r, ptr %i.t, align 8, !tbaa !152
  store ptr %i.k, ptr %i.h, align 8, !tbaa !89
  store i64 0, ptr %i.s, align 8, !tbaa !152
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.v, ptr %i.c, align 8, !tbaa !118
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.pre10 = load ptr, ptr %.phi.trans.insert9, align 8, !tbaa !89 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.x = icmp eq ptr %.pre10, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre10) #47
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !89  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #47
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8

_ZN6duckdb20ExceptionFormatValueD2Ev.exit8:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3, i8 noundef signext %4, i32 noundef %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.bs, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !153, !noalias !3440
  %i.c = icmp eq i8 %i.b, 45                      ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %i.d, align 1, !tbaa !153, !noalias !3440 ; 2 uses
  %i.g = add i8 %i.f, -48
  %i.h = icmp ult i8 %i.g, 10
  %.not.i = icmp eq i8 %i.f, %4
  %or.cond249 = or i1 %.not.i, %i.h
  br i1 %or.cond249, label %bb.e, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0176.i = phi ptr [ %i.d, %bb.d ], [ %0, %bb.b ] ; 6 uses
  %.0176.i403 = ptrtoint ptr %.0176.i to i64      ; 3 uses
  br i1 %3, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.e
  %i.i = sub i64 %6, %.0176.i403
  %scevgep = getelementptr i8, ptr %.0176.i, i64 %i.i
  br label %.split.us

.split.us:                                        ; preds = %bb.g, %.split.us.preheader
  %.1177.i311.us = phi ptr [ %.0176.i, %.split.us.preheader ], [ %i.q, %bb.g ] ; 3 uses
  %.0178.i310.us = phi i64 [ 0, %.split.us.preheader ], [ %i.p, %bb.g ] ; 2 uses
  %i.j = load i8, ptr %.1177.i311.us, align 1, !tbaa !153, !noalias !3440 ; 3 uses
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %bb.f, label %.split313.us

bb.f:                                             ; preds = %.split.us
  %i.m = mul i64 %.0178.i310.us, 10
  %i.n = zext nneg i8 %i.j to i64
  %i.o = add i64 %i.m, -48
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.1177.i311.us, i64 1 ; 3 uses
  %.not267.i.us = icmp eq ptr %i.q, %1
  br i1 %.not267.i.us, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i8, ptr %i.q, align 1, !tbaa !153, !noalias !3440
  %i.s = icmp eq i8 %i.r, 95
  br i1 %i.s, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %.split.us

.thread:                                          ; preds = %bb.l, %bb.f
  %.us-phi315 = phi i64 [ %i.p, %bb.f ], [ %i.ab, %bb.l ]
  %.us-phi316 = phi ptr [ %scevgep, %bb.f ], [ %.2.i, %bb.l ] ; 2 uses
  %i.t = ptrtoint ptr %.us-phi316 to i64          ; 2 uses
  %i.u = sub i64 %i.t, %.0176.i403
  br label %bb.y

.split:                                           ; preds = %bb.e, %bb.l
  %.1177.i311 = phi ptr [ %.2.i, %bb.l ], [ %.0176.i, %bb.e ] ; 4 uses
  %.0178.i310 = phi i64 [ %i.ab, %bb.l ], [ 0, %bb.e ] ; 2 uses
  %i.v = load i8, ptr %.1177.i311, align 1, !tbaa !153, !noalias !3440 ; 3 uses
  %i.w = add i8 %i.v, -48
  %i.x = icmp ult i8 %i.w, 10
  br i1 %i.x, label %bb.h, label %.split313.us

bb.h:                                             ; preds = %.split
  %i.y = mul i64 %.0178.i310, 10
  %i.z = zext nneg i8 %i.v to i64
  %i.aa = add i64 %i.y, -48
  %i.ab = add i64 %i.aa, %i.z                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1177.i311, i64 1 ; 4 uses
  %.not267.i = icmp eq ptr %i.ac, %1
  br i1 %.not267.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !153, !noalias !3440
  %i.ae = icmp eq i8 %i.ad, 95
  br i1 %i.ae, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.1177.i311, i64 2 ; 3 uses
  %i.ag = icmp eq ptr %i.af, %1
  br i1 %i.ag, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !153, !noalias !3440
  %i.ai = add i8 %i.ah, -48
  %i.aj = icmp ult i8 %i.ai, 10
  br i1 %i.aj, label %bb.l, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.h
  %.2.i = phi ptr [ %i.af, %bb.k ], [ %i.ac, %bb.i ], [ %i.ac, %bb.h ] ; 3 uses
  %.not252.i = icmp eq ptr %.2.i, %1
  br i1 %.not252.i, label %.thread, label %.split, !llvm.loop !3443

.split313.us:                                     ; preds = %.split, %.split.us
  %i.ak = phi i8 [ %i.j, %.split.us ], [ %i.v, %.split ]
  %.us-phi = phi i64 [ %.0178.i310.us, %.split.us ], [ %.0178.i310, %.split ] ; 4 uses
  %.us-phi314 = phi ptr [ %.1177.i311.us, %.split.us ], [ %.1177.i311, %.split ] ; 5 uses
  %i.al = ptrtoint ptr %.us-phi314 to i64         ; 3 uses
  %i.am = sub i64 %i.al, %.0176.i403              ; 2 uses
  %i.an = icmp eq i8 %i.ak, %4
  br i1 %i.an, label %bb.m, label %bb.y

bb.m:                                             ; preds = %.split313.us
  %i.ao = getelementptr inbounds nuw i8, ptr %.us-phi314, i64 1 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.us-phi314, i64 9 ; 4 uses
  %.not253.i = icmp ugt ptr %i.ap, %1
  br i1 %.not253.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.0.copyload.i70 = load i64, ptr %i.ao, align 1, !noalias !3440 ; 2 uses
  %i.aq = add i64 %.0.copyload.i70, 5063812098665367110
  %i.ar = add i64 %.0.copyload.i70, -3472328296227680304 ; 3 uses
  %i.as = or i64 %i.aq, %i.ar
  %i.at = and i64 %i.as, -9187201950435737472
  %.not.i67 = icmp eq i64 %i.at, 0
  br i1 %.not.i67, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.au = mul i64 %.us-phi, 100000000
  %i.av = mul i64 %i.ar, 10
  %i.aw = lshr i64 %i.ar, 8
  %i.ax = add i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = and i64 %i.ax, 1095216660735
  %i.az = mul i64 %i.ay, 4294967296000100
  %i.ba = lshr i64 %i.ax, 16
  %i.bb = and i64 %i.ba, 1095216660735
  %i.bc = mul i64 %i.bb, 42949672960001
  %i.bd = add i64 %i.bc, %i.az
  %i.be = lshr i64 %i.bd, 32
  %i.bf = add i64 %i.be, %i.au                    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.us-phi314, i64 17 ; 2 uses
  %.not254.i = icmp ugt ptr %i.bg, %1
  br i1 %.not254.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.0.copyload.i71 = load i64, ptr %i.ap, align 1, !noalias !3440 ; 2 uses
  %i.bh = add i64 %.0.copyload.i71, 5063812098665367110
  %i.bi = add i64 %.0.copyload.i71, -3472328296227680304 ; 3 uses
  %i.bj = or i64 %i.bh, %i.bi
  %i.bk = and i64 %i.bj, -9187201950435737472
  %.not.i68 = icmp eq i64 %i.bk, 0
  br i1 %.not.i68, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = mul i64 %i.bf, 100000000
  %i.bm = mul i64 %i.bi, 10
  %i.bn = lshr i64 %i.bi, 8
  %i.bo = add i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = and i64 %i.bo, 1095216660735
  %i.bq = mul i64 %i.bp, 4294967296000100
  %i.br = lshr i64 %i.bo, 16
  %i.bs = and i64 %i.br, 1095216660735
  %i.bt = mul i64 %i.bs, 42949672960001
  %i.bu = add i64 %i.bt, %i.bq
  %i.bv = lshr i64 %i.bu, 32
  %i.bw = add i64 %i.bv, %i.bl
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.1179.i = phi i64 [ %i.bw, %bb.q ], [ %i.bf, %bb.p ], [ %i.bf, %bb.o ], [ %.us-phi, %bb.n ], [ %.us-phi, %bb.m ] ; 3 uses
  %.3.i = phi ptr [ %i.bg, %bb.q ], [ %i.ap, %bb.p ], [ %i.ap, %bb.o ], [ %i.ao, %bb.n ], [ %i.ao, %bb.m ] ; 6 uses
  %.3.i407 = ptrtoaddr ptr %.3.i to i64
  br i1 %3, label %.outer.us, label %.outer

.outer.us:                                        ; preds = %bb.r
  %.not255.i317.us = icmp eq ptr %.3.i, %1
  br i1 %.not255.i317.us, label %.outer._crit_edge, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.outer.us
  %i.bx = sub i64 %6, %.3.i407
  %scevgep408 = getelementptr i8, ptr %.3.i, i64 %i.bx
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.t, %.lr.ph.us.preheader
  %.4.i319.us = phi ptr [ %.3.i, %.lr.ph.us.preheader ], [ %i.cb, %bb.t ] ; 3 uses
  %.2180.i318.us = phi i64 [ %.1179.i, %.lr.ph.us.preheader ], [ %i.ce, %bb.t ] ; 2 uses
  %i.by = load i8, ptr %.4.i319.us, align 1, !tbaa !153, !noalias !3440
  %i.bz = add i8 %i.by, -48                       ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 10
  br i1 %i.ca, label %bb.s, label %.outer._crit_edge

bb.s:                                             ; preds = %.lr.ph.us
  %i.cb = getelementptr inbounds nuw i8, ptr %.4.i319.us, i64 1 ; 3 uses
  %i.cc = mul i64 %.2180.i318.us, 10
  %i.cd = zext nneg i8 %i.bz to i64
  %i.ce = add i64 %i.cc, %i.cd                    ; 2 uses
  %.not256.i.us = icmp eq ptr %i.cb, %1
  br i1 %.not256.i.us, label %.outer._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !153, !noalias !3440
  %i.cg = icmp eq i8 %i.cf, 95
  br i1 %i.cg, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %.lr.ph.us

.outer:                                           ; preds = %bb.r, %bb.x
  %.0221.i.ph = phi i64 [ %i.cs, %bb.x ], [ 0, %bb.r ] ; 4 uses
  %.2180.i.ph = phi i64 [ %i.cn, %bb.x ], [ %.1179.i, %bb.r ] ; 2 uses
  %.4.i.ph = phi ptr [ %i.cq, %bb.x ], [ %.3.i, %bb.r ] ; 5 uses
  %.not255.i317 = icmp eq ptr %.4.i.ph, %1
  br i1 %.not255.i317, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %bb.v
  %.4.i319 = phi ptr [ %i.ck, %bb.v ], [ %.4.i.ph, %.outer ] ; 4 uses
  %.2180.i318 = phi i64 [ %i.cn, %bb.v ], [ %.2180.i.ph, %.outer ] ; 2 uses
  %i.ch = load i8, ptr %.4.i319, align 1, !tbaa !153, !noalias !3440
  %i.ci = add i8 %i.ch, -48                       ; 2 uses
  %i.cj = icmp ult i8 %i.ci, 10
  br i1 %i.cj, label %bb.u, label %.outer._crit_edge

bb.u:                                             ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %.4.i319, i64 1 ; 3 uses
  %i.cl = mul i64 %.2180.i318, 10
  %i.cm = zext nneg i8 %i.ci to i64
  %i.cn = add i64 %i.cl, %i.cm                    ; 3 uses
  %.not256.i = icmp eq ptr %i.ck, %1
  br i1 %.not256.i, label %.outer._crit_edge.loopexit487.split.loop.exit527, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = load i8, ptr %i.ck, align 1, !tbaa !153, !noalias !3440
  %i.cp = icmp eq i8 %i.co, 95
  br i1 %i.cp, label %bb.w, label %.lr.ph

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds nuw i8, ptr %.4.i319, i64 2 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, %1
  br i1 %i.cr, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = add nuw nsw i64 %.0221.i.ph, 1
  %i.ct = load i8, ptr %i.cq, align 1, !tbaa !153, !noalias !3440
  %i.cu = add i8 %i.ct, -48
  %i.cv = icmp ult i8 %i.cu, 10
  br i1 %i.cv, label %.outer, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, !llvm.loop !3444

.outer._crit_edge.loopexit487.split.loop.exit527: ; preds = %bb.u
  %.4.i.ph405.le = ptrtoaddr ptr %.4.i.ph to i64
  %scevgep404.le = getelementptr i8, ptr %.4.i.ph, i64 %6
  %i.cw = sub i64 0, %.4.i.ph405.le
  %scevgep406.le = getelementptr i8, ptr %scevgep404.le, i64 %i.cw
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %.lr.ph, %bb.s, %.lr.ph.us, %.outer._crit_edge.loopexit487.split.loop.exit527, %.outer.us
  %.0221.i.ph.lcssa = phi i64 [ %.0221.i.ph, %.outer._crit_edge.loopexit487.split.loop.exit527 ], [ %.0221.i.ph, %.lr.ph ], [ 0, %.outer.us ], [ 0, %bb.s ], [ 0, %.lr.ph.us ], [ %.0221.i.ph, %.outer ]
  %.2180.i.lcssa = phi i64 [ %i.cn, %.outer._crit_edge.loopexit487.split.loop.exit527 ], [ %.2180.i318, %.lr.ph ], [ %.1179.i, %.outer.us ], [ %i.ce, %bb.s ], [ %.2180.i318.us, %.lr.ph.us ], [ %.2180.i.ph, %.outer ]
  %.4.i.lcssa = phi ptr [ %scevgep406.le, %.outer._crit_edge.loopexit487.split.loop.exit527 ], [ %.4.i319, %.lr.ph ], [ %.3.i, %.outer.us ], [ %scevgep408, %bb.s ], [ %.4.i319.us, %.lr.ph.us ], [ %.4.i.ph, %.outer ] ; 2 uses
  %i.cx = ptrtoint ptr %i.ao to i64
  %i.cy = ptrtoint ptr %.4.i.lcssa to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = add nsw i64 %i.cz, %.0221.i.ph.lcssa    ; 2 uses
  %i.db = sub nsw i64 %i.am, %i.da
  br label %bb.y

bb.y:                                             ; preds = %.thread, %.outer._crit_edge, %.split313.us
  %i.dc = phi i64 [ %i.al, %.outer._crit_edge ], [ %i.al, %.split313.us ], [ %i.t, %.thread ]
  %.1211.i = phi i64 [ %i.da, %.outer._crit_edge ], [ 0, %.split313.us ], [ 0, %.thread ] ; 3 uses
  %.1201.i = phi i64 [ %i.db, %.outer._crit_edge ], [ %i.am, %.split313.us ], [ %i.u, %.thread ] ; 3 uses
  %.4182.i = phi i64 [ %.2180.i.lcssa, %.outer._crit_edge ], [ %.us-phi, %.split313.us ], [ %.us-phi315, %.thread ] ; 3 uses
  %.8.i = phi ptr [ %.4.i.lcssa, %.outer._crit_edge ], [ %.us-phi314, %.split313.us ], [ %.us-phi316, %.thread ] ; 7 uses
  %i.dd = icmp eq i64 %.1201.i, 0
  br i1 %i.dd, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = and i32 %5, 1
  %.not257.i = icmp eq i32 %i.de, 0
  %.not258.i = icmp eq ptr %.8.i, %1
  %or.cond.i = or i1 %.not257.i, %.not258.i
  br i1 %or.cond.i, label %bb.am, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = load i8, ptr %.8.i, align 1, !tbaa !153, !noalias !3440
  switch i8 %i.df, label %bb.am [
    i8 101, label %bb.ab
    i8 69, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %.8.i, i64 1 ; 4 uses
  %.not260.i = icmp eq ptr %i.dg, %1
  br i1 %.not260.i, label %.critedge271.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !153, !noalias !3440 ; 2 uses
  %i.di = icmp eq i8 %i.dh, 45
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %.8.i, i64 2
  br label %.critedge271.i

bb.ae:                                            ; preds = %bb.ac
  %i.dk = icmp eq i8 %i.dh, 43
  %i.dl = getelementptr inbounds nuw i8, ptr %.8.i, i64 2
  %spec.select.i = select i1 %i.dk, ptr %i.dl, ptr %i.dg
  br label %.critedge271.i

.critedge271.i:                                   ; preds = %bb.ae, %bb.ad, %bb.ab
  %.0199.i = phi i1 [ true, %bb.ad ], [ false, %bb.ab ], [ false, %bb.ae ]
  %.9.i = phi ptr [ %i.dj, %bb.ad ], [ %i.dg, %bb.ab ], [ %spec.select.i, %bb.ae ] ; 3 uses
  %i.dm = icmp eq ptr %.9.i, %1
  br i1 %i.dm, label %bb.al, label %bb.af

bb.af:                                            ; preds = %.critedge271.i
  %i.dn = load i8, ptr %.9.i, align 1, !tbaa !153, !noalias !3440
  %i.do = add i8 %i.dn, -48
  %i.dp = icmp ult i8 %i.do, 10
  br i1 %i.dp, label %.lr.ph342, label %bb.al

.lr.ph342:                                        ; preds = %bb.af, %.backedge
  %.10.i341 = phi ptr [ %.10.i.be, %.backedge ], [ %.9.i, %bb.af ] ; 4 uses
  %.0204.i340 = phi i64 [ %.1205.i, %.backedge ], [ 0, %bb.af ] ; 4 uses
  %i.dq = load i8, ptr %.10.i341, align 1, !tbaa !153, !noalias !3440
  %i.dr = add i8 %i.dq, -48                       ; 2 uses
  %i.ds = icmp ult i8 %i.dr, 10
  br i1 %i.ds, label %bb.ag, label %.thread140

bb.ag:                                            ; preds = %.lr.ph342
  %i.dt = icmp slt i64 %.0204.i340, 65536
  %i.du = mul nsw i64 %.0204.i340, 10
  %i.dv = zext nneg i8 %i.dr to i64
  %i.dw = add nsw i64 %i.du, %i.dv
  %.1205.i = select i1 %i.dt, i64 %i.dw, i64 %.0204.i340 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.10.i341, i64 1 ; 4 uses
  %.not262.i = icmp eq ptr %i.dx, %1
  br i1 %.not262.i, label %.backedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !153, !noalias !3440
  %i.dz = icmp eq i8 %i.dy, 95
  br i1 %i.dz, label %bb.ai, label %.backedge

bb.ai:                                            ; preds = %bb.ah
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %.10.i341, i64 2 ; 3 uses
  %i.eb = icmp eq ptr %i.ea, %1
  br i1 %i.eb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !153, !noalias !3440
  %i.ed = add i8 %i.ec, -48
  %i.ee = icmp ult i8 %i.ed, 10
  br i1 %i.ee, label %.backedge, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

.backedge:                                        ; preds = %bb.ag, %bb.ah, %bb.ak
  %.10.i.be = phi ptr [ %i.ea, %bb.ak ], [ %i.dx, %bb.ah ], [ %i.dx, %bb.ag ] ; 3 uses
  %.not261.i = icmp eq ptr %.10.i.be, %1
  br i1 %.not261.i, label %.thread140, label %.lr.ph342, !llvm.loop !3445

.thread140:                                       ; preds = %.lr.ph342, %.backedge
  %.0204.i.lcssa.ph = phi i64 [ %.0204.i340, %.lr.ph342 ], [ %.1205.i, %.backedge ] ; 2 uses
  %.10.i.lcssa.ph = phi ptr [ %.10.i341, %.lr.ph342 ], [ %.10.i.be, %.backedge ]
  %i.ef = sub nsw i64 0, %.0204.i.lcssa.ph
  %spec.select272.i = select i1 %.0199.i, i64 %i.ef, i64 %.0204.i.lcssa.ph ; 2 uses
  %i.eg = add nsw i64 %spec.select272.i, %.1211.i
  br label %bb.an

bb.al:                                            ; preds = %.critedge271.i, %bb.af
  %i.eh = and i32 %5, 4
  %.not263.i.not = icmp eq i32 %i.eh, 0
  br i1 %.not263.i.not, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.an

bb.am:                                            ; preds = %bb.aa, %bb.z
  %i.ei = and i32 %5, 5
  %or.cond273.i.not.not = icmp eq i32 %i.ei, 1
  br i1 %or.cond273.i.not.not, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.an

bb.an:                                            ; preds = %.thread140, %bb.am, %bb.al
  %.4214.i = phi i64 [ %.1211.i, %bb.al ], [ %.1211.i, %bb.am ], [ %i.eg, %.thread140 ] ; 5 uses
  %.5209.i = phi i64 [ 0, %bb.al ], [ 0, %bb.am ], [ %spec.select272.i, %.thread140 ] ; 2 uses
  %.15.i = phi ptr [ %.8.i, %bb.al ], [ %.8.i, %bb.am ], [ %.10.i.lcssa.ph, %.thread140 ] ; 3 uses
  %i.ej = icmp sgt i64 %.1201.i, 19
  br i1 %i.ej, label %.preheader287, label %bb.ba

.preheader287:                                    ; preds = %bb.an, %.critedge8.i
  %.0191.i349 = phi ptr [ %i.eo, %.critedge8.i ], [ %.0176.i, %bb.an ] ; 2 uses
  %.2202.i348 = phi i64 [ %spec.select275.i, %.critedge8.i ], [ %.1201.i, %bb.an ] ; 2 uses
  %i.ek = load i8, ptr %.0191.i349, align 1, !tbaa !153, !noalias !3440 ; 2 uses
  %i.el = icmp eq i8 %i.ek, 48                    ; 2 uses
  %i.em = icmp eq i8 %i.ek, %4
  %or.cond274.i = or i1 %i.el, %i.em
  br i1 %or.cond274.i, label %.critedge8.i, label %.critedge.i

.critedge8.i:                                     ; preds = %.preheader287
  %i.en = sext i1 %i.el to i64
  %spec.select275.i = add nsw i64 %.2202.i348, %i.en ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0191.i349, i64 1 ; 2 uses
  %.not264.i = icmp eq ptr %i.eo, %1
  br i1 %.not264.i, label %.critedge.i, label %.preheader287, !llvm.loop !3446

.critedge.i:                                      ; preds = %.preheader287, %.critedge8.i
  %.2202.i.lcssa = phi i64 [ %.2202.i348, %.preheader287 ], [ %spec.select275.i, %.critedge8.i ]
  %i.ep = icmp sgt i64 %.2202.i.lcssa, 19
  br i1 %i.ep, label %.preheader, label %bb.ba

.preheader:                                       ; preds = %.critedge.i, %bb.at
  %.16.i351 = phi ptr [ %.17.i, %bb.at ], [ %.0176.i, %.critedge.i ] ; 4 uses
  %.5183.i350 = phi i64 [ %i.ew, %bb.at ], [ 0, %.critedge.i ] ; 2 uses
  %i.eq = load i8, ptr %.16.i351, align 1, !tbaa !153, !noalias !3440 ; 2 uses
  %i.er = add i8 %i.eq, -48
  %i.es = icmp ult i8 %i.er, 10
  br i1 %i.es, label %bb.ao, label %.thread146

bb.ao:                                            ; preds = %.preheader
  %i.et = mul nuw i64 %.5183.i350, 10
  %i.eu = zext nneg i8 %i.eq to i64
  %i.ev = add i64 %i.et, -48
  %i.ew = add i64 %i.ev, %i.eu                    ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.16.i351, i64 1 ; 4 uses
  %.not266.i = icmp eq ptr %i.ex, %1
  br i1 %.not266.i, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !153, !noalias !3440
  %i.ez = icmp eq i8 %i.ey, 95
  br i1 %i.ez, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fa = getelementptr inbounds nuw i8, ptr %.16.i351, i64 2 ; 3 uses
  %i.fb = icmp eq ptr %i.fa, %1
  br i1 %i.fb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fc = load i8, ptr %i.fa, align 1, !tbaa !153, !noalias !3440
  %i.fd = add i8 %i.fc, -48
  %i.fe = icmp ult i8 %i.fd, 10
  br i1 %i.fe, label %bb.at, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.at:                                            ; preds = %bb.as, %bb.ap, %bb.ao
  %.17.i = phi ptr [ %i.fa, %bb.as ], [ %i.ex, %bb.ap ], [ %i.ex, %bb.ao ] ; 4 uses
  %i.ff = icmp ult i64 %i.ew, 1000000000000000000
  %i.fg = icmp ne ptr %.17.i, %1
  %i.fh = and i1 %i.ff, %i.fg
end_hunk_7
begin_hunk_8_@_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE:bb.a
  %i.ln = icmp ult i64 %.pn276, 2
  %i.lo = add nsw i64 %.sroa.093.0.ph462479, 4
  %i.lp = icmp ult i64 %i.lo, 28
  %or.cond261.not279 = and i1 %i.lp, %i.ln
  %i.lq = and i64 %i.kx, 3
  %i.lr = icmp eq i64 %i.lq, 1
  %or.cond263 = select i1 %or.cond261.not279, i1 %i.lr, i1 false
  %i.ls = shl i64 %i.kx, %i.kw
  %i.lt = icmp eq i64 %i.ls, %spec.select.i75.pn
  %or.cond265 = select i1 %or.cond263, i1 %i.lt, i1 false
  %i.lu = and i64 %i.kx, 72057594037927934
  %.sroa.0103.0 = select i1 %or.cond265, i64 %i.lu, i64 %i.kx ; 2 uses
  %i.lv = and i64 %.sroa.0103.0, 1
  %i.lw = add nuw nsw i64 %i.lv, %.sroa.0103.0    ; 2 uses
  %i.lx = lshr i64 %i.lw, 1
  %.not27.i = icmp samesign ugt i64 %i.lw, 18014398509481983 ; 2 uses
  %i.ly = zext i1 %.not27.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.lc, %i.ly      ; 2 uses
  %i.lz = and i64 %i.lx, 9218868437227405311
  %.not28.i = icmp samesign ugt i32 %.sroa.19.0, 2046 ; 2 uses
  %.not280 = select i1 %.not28.i, i1 true, i1 %.not27.i
  %spec.select269 = select i1 %.not280, i64 0, i64 %i.lz
  %spec.select270 = select i1 %.not28.i, i32 2047, i32 %.sroa.19.0
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.bp, %bb.bn, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78, %bb.bm, %bb.bl, %bb.bo
  %.sroa.0103.2 = phi i64 [ 0, %bb.bm ], [ 0, %bb.bl ], [ 0, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78 ], [ %i.lk, %bb.bo ], [ %spec.select269, %bb.bp ], [ 0, %bb.bn ]
  %.sroa.19.1 = phi i32 [ 2047, %bb.bm ], [ 0, %bb.bl ], [ -1, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78 ], [ %i.lm, %bb.bo ], [ %spec.select270, %bb.bp ], [ 0, %bb.bn ]
  %.not.i87 = icmp ne i64 %.sroa.0111.2467, %.sroa.0103.2
  %i.ma = icmp ne i32 %.sroa.19117.1469, %.sroa.19.1
  %i.mb = icmp slt i32 %.sroa.19117.1469, 0
  %i.mc = or i1 %i.mb, %i.ma
  %or.cond266 = select i1 %.not.i87, i1 true, i1 %i.mc
  br i1 %or.cond266, label %.thread245, label %bb.br

.thread245:                                       ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit
  %i.md = invoke { i64, i32 } @_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIdEEEENS_17adjusted_mantissaEPKcS5_(ptr noundef nonnull %0, ptr noundef %1)
          to label %bb.bq unwind label %bb.bt     ; 2 uses

bb.bq:                                            ; preds = %.thread245
  %.fca.0.extract = extractvalue { i64, i32 } %i.md, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.md, 1
  br label %bb.br

bb.br:                                            ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, %bb.bj, %bb.bk, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, %bb.bq
  %.sroa.690.1 = phi i32 [ %.fca.1.extract, %bb.bq ], [ %.sroa.19117.1469, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.19117.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.iz, %bb.bj ], [ %spec.select268, %bb.bk ]
  %.sroa.088.0 = phi i64 [ %.fca.0.extract, %bb.bq ], [ %.sroa.0111.2467, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.ix, %bb.bj ], [ %spec.select267, %bb.bk ]
  %i.me = zext i32 %.sroa.690.1 to i64
  %i.mf = shl i64 %i.me, 52
  %i.mg = or i64 %i.mf, %.sroa.088.0              ; 2 uses
  %i.mh = or i64 %i.mg, -9223372036854775808
  %spec.select = select i1 %i.c, i64 %i.mh, i64 %i.mg
  store i64 %spec.select, ptr %2, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, %bb.br, %bb.bf, %bb.be, %bb.a
  %.sroa.044.1 = phi ptr [ %0, %bb.a ], [ %.15.i, %bb.br ], [ %i.gm, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ %.15.i, %bb.bf ], [ %.15.i, %bb.be ]
  %.sroa.545.1 = phi i32 [ 22, %bb.a ], [ 0, %bb.br ], [ %i.gn, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ 0, %bb.bf ], [ 0, %bb.be ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.044.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.545.1, 1
  ret { ptr, i32 } %.fca.1.insert

bb.bt:                                            ; preds = %.thread245
  %i.mi = landingpad { ptr, i32 }
          catch ptr null
  %i.mj = extractvalue { ptr, i32 } %i.mi, 0
  tail call void @__clang_call_terminate(ptr %i.mj) #50
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIdEENS_17from_chars_resultEPKcS4_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !153
  %i.b = icmp eq i8 %i.a, 45                      ; 3 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 9 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %spec.select to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 2
  br i1 %i.f, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = load i8, ptr %spec.select, align 1, !tbaa !153 ; 2 uses
  %i.h = xor i8 %i.g, 78
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !153   ; 2 uses
  %i.k = xor i8 %i.j, 65
  %i.l = or i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !153   ; 2 uses
  %i.o = xor i8 %i.n, 78
  %i.p = or i8 %i.o, %i.l
  %i.q = and i8 %i.p, -33
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %.lr.ph.i43.preheader

.lr.ph.i43.preheader:                             ; preds = %.lr.ph.i.preheader
  %i.s = xor i8 %i.g, 73
  %i.t = xor i8 %i.j, 78
  %i.u = or i8 %i.t, %i.s
  %i.v = xor i8 %i.n, 70
  %i.w = or i8 %i.v, %i.u
  %i.x = and i8 %i.w, -33
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select, i64 3 ; 6 uses
  %i.aa = select i1 %i.b, double -qnan, double +qnan
  store double %i.aa, ptr %2, align 8, !tbaa !541
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !153
  %i.ac = icmp ne i8 %i.ab, 40
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 4 uses
  %.not4058 = icmp eq ptr %i.ad, %1
  %or.cond61 = select i1 %i.ac, i1 true, i1 %.not4058
  br i1 %or.cond61, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !153 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 41
  br i1 %i.af, label %.lr.ph._crit_edge, label %.lr.ph76

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.059.lcssa = phi ptr [ %i.ad, %.lr.ph.preheader ], [ %.059.be, %.lr.ph.backedge ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.059.lcssa, i64 1
  br label %.loopexit

.lr.ph76:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.ah = phi i8 [ %i.an, %.lr.ph.backedge ], [ %i.ae, %.lr.ph.preheader ] ; 3 uses
  %.05975 = phi ptr [ %.059.be, %.lr.ph.backedge ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %i.ai = and i8 %i.ah, -33
  %i.aj = add i8 %i.ai, -65
  %or.cond54 = icmp ult i8 %i.aj, 26
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph76
  %i.ak = add i8 %i.ah, -58
  %or.cond42 = icmp ult i8 %i.ak, -10
  %i.al = icmp ne i8 %i.ah, 95
  %or.cond53.not64 = and i1 %i.al, %or.cond42
  %i.am = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40 = icmp eq ptr %i.am, %1
  %or.cond62 = select i1 %or.cond53.not64, i1 true, i1 %.not40
  br i1 %or.cond62, label %.loopexit, label %.lr.ph.backedge

bb.e:                                             ; preds = %.lr.ph76
  %.old = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40.old = icmp eq ptr %.old, %1
  br i1 %.not40.old, label %.loopexit, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.e, %bb.d
  %.059.be = phi ptr [ %.old, %bb.e ], [ %i.am, %bb.d ] ; 3 uses
  %i.an = load i8, ptr %.059.be, align 1, !tbaa !153 ; 2 uses
  %i.ao = icmp eq i8 %i.an, 41
  br i1 %i.ao, label %.lr.ph._crit_edge, label %.lr.ph76, !llvm.loop !3449

bb.f:                                             ; preds = %.lr.ph.i43.preheader
  %i.ap = icmp samesign ugt i64 %i.e, 7
  br i1 %i.ap, label %.lr.ph.i48, label %bb.g

.lr.ph.i48:                                       ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %spec.select, i64 3
  %i.ar = load <4 x i8>, ptr %i.aq, align 1, !tbaa !153
  %i.as = xor <4 x i8> %i.ar, <i8 73, i8 78, i8 73, i8 84>
  %i.at = getelementptr inbounds nuw i8, ptr %spec.select, i64 7
  %i.au = load i8, ptr %i.at, align 1, !tbaa !153
  %i.av = xor i8 %i.au, 89
  %i.aw = tail call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %i.as)
  %op.rdx = or i8 %i.aw, %i.av
  %i.ax = and i8 %op.rdx, -33
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i48, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.i48, %bb.g
  %.sink = phi i64 [ 3, %bb.g ], [ 8, %.lr.ph.i48 ]
  %i.az = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.sink
  %i.ba = select i1 %i.b, double -inf, double +inf
  store double %i.ba, ptr %2, align 8, !tbaa !541
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.a, %.lr.ph.i43.preheader, %bb.b, %bb.c, %.lr.ph._crit_edge, %bb.h
  %.sroa.0.3 = phi ptr [ %0, %.lr.ph.i43.preheader ], [ %i.az, %bb.h ], [ %i.z, %bb.b ], [ %i.z, %bb.c ], [ %i.ag, %.lr.ph._crit_edge ], [ %0, %bb.a ], [ %i.z, %bb.d ], [ %i.z, %bb.e ]
  %.sroa.6.0 = phi i32 [ 22, %.lr.ph.i43.preheader ], [ 0, %bb.h ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %.lr.ph._crit_edge ], [ 22, %bb.a ], [ 0, %bb.d ], [ 0, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.6.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i32 } @_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIdEEEENS_17adjusted_mantissaEPKcS5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %3 = alloca %"struct.duckdb_fast_float::decimal", align 4 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3450)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %3, i8 0, i64 10, i1 false)
  %i.c = load i8, ptr %0, align 1, !tbaa !153, !noalias !3450
  %i.d = icmp eq i8 %i.c, 45                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr %i.e, align 4, !tbaa !3453, !alias.scope !3450
  %spec.select.i.idx = zext i1 %i.d to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.i.idx ; 3 uses
  %.not.i9 = icmp eq ptr %spec.select.i, %1
  br i1 %.not.i9, label %.critedge.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %4 = ptrtoaddr ptr %0 to i64
  %i.g = sub i64 %2, %4
  %scevgep = getelementptr i8, ptr %0, i64 %i.g
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.1.i10 = phi ptr [ %i.j, %bb.b ], [ %spec.select.i, %.lr.ph.preheader ] ; 3 uses
  %i.h = load i8, ptr %.1.i10, align 1, !tbaa !153, !noalias !3450
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.1.i10, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %1
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !3455

.critedge.i:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.1.i.lcssa = phi ptr [ %spec.select.i, %bb.a ], [ %.1.i10, %.lr.ph ], [ %scevgep, %bb.b ] ; 5 uses
  %.1.i.lcssa60 = ptrtoaddr ptr %.1.i.lcssa to i64
  %.not99.i15 = icmp eq ptr %.1.i.lcssa, %1
  br i1 %.not99.i15, label %.critedge106.i.loopexit, label %.lr.ph17

.lr.ph17:                                         ; preds = %.critedge.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph17, %bb.f
  %.2.i16 = phi ptr [ %.1.i.lcssa, %.lr.ph17 ], [ %i.s, %bb.f ] ; 4 uses
  %.promoted26 = phi i32 [ 0, %.lr.ph17 ], [ %i.r, %bb.f ] ; 9 uses
  %i.l = load i8, ptr %.2.i16, align 1, !tbaa !153, !noalias !3450 ; 2 uses
  %i.m = add i8 %i.l, -48                         ; 2 uses
  %i.n = icmp ult i8 %i.m, 10
  br i1 %i.n, label %bb.d, label %.critedge2.i

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i32 %.promoted26, 768
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = zext nneg i32 %.promoted26 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  store i8 %i.m, ptr %i.q, align 1, !tbaa !153, !alias.scope !3450
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = add i32 %.promoted26, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.2.i16, i64 1 ; 3 uses
  %.not99.i = icmp eq ptr %i.s, %1
  br i1 %.not99.i, label %.critedge106.i.loopexit, label %bb.c, !llvm.loop !3456

.critedge2.i:                                     ; preds = %bb.c
  store i32 %.promoted26, ptr %3, align 4
  %i.t = icmp eq i8 %i.l, 46
  br i1 %i.t, label %bb.g, label %.critedge106.i

bb.g:                                             ; preds = %.critedge2.i
  %i.u = getelementptr inbounds nuw i8, ptr %.2.i16, i64 1 ; 4 uses
  %i.v = icmp ne i32 %.promoted26, 0
  %.not100.i20 = icmp eq ptr %i.u, %1
  %or.cond = select i1 %i.v, i1 true, i1 %.not100.i20
  br i1 %or.cond, label %.critedge4.i, label %.lr.ph22.preheader

.lr.ph22.preheader:                               ; preds = %bb.g
  %i.w = sub i64 %2, %.1.i.lcssa60
  %scevgep61 = getelementptr i8, ptr %.1.i.lcssa, i64 %i.w
  br label %.lr.ph22

.lr.ph22:                                         ; preds = %.lr.ph22.preheader, %bb.h
  %.3.i21 = phi ptr [ %i.z, %bb.h ], [ %i.u, %.lr.ph22.preheader ] ; 3 uses
  %i.x = load i8, ptr %.3.i21, align 1, !tbaa !153, !noalias !3450
  %i.y = icmp eq i8 %i.x, 48
  br i1 %i.y, label %bb.h, label %.critedge4.i

bb.h:                                             ; preds = %.lr.ph22
  %i.z = getelementptr inbounds nuw i8, ptr %.3.i21, i64 1 ; 2 uses
  %.not100.i = icmp eq ptr %i.z, %1
  br i1 %.not100.i, label %.critedge4.i, label %.lr.ph22, !llvm.loop !3457

.critedge4.i:                                     ; preds = %bb.h, %.lr.ph22, %bb.g
  %.4.i = phi ptr [ %i.u, %bb.g ], [ %.3.i21, %.lr.ph22 ], [ %scevgep61, %bb.h ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.4.i, i64 8 ; 2 uses
  %i.ab = icmp ule ptr %i.aa, %1
  %i.ac = add i32 %.promoted26, 8                 ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 768
  %i.ae = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph29, label %.thread

.lr.ph29:                                         ; preds = %.critedge4.i
  %i.af = zext nneg i32 %i.ac to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph29, %bb.j
  %indvars.iv = phi i64 [ %i.af, %.lr.ph29 ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.ag = phi ptr [ %i.aa, %.lr.ph29 ], [ %i.ao, %bb.j ] ; 3 uses
  %.5.i28 = phi ptr [ %.4.i, %.lr.ph29 ], [ %i.ag, %bb.j ] ; 2 uses
  %i.ah = phi i32 [ %.promoted26, %.lr.ph29 ], [ %i.as, %bb.j ] ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.5.i28, align 1, !noalias !3450 ; 2 uses
  %i.ai = add i64 %.0.copyload.i.i, 5063812098665367110
  %i.aj = add i64 %.0.copyload.i.i, -3472328296227680304 ; 2 uses
  %i.ak = or i64 %i.ai, %i.aj
  %i.al = and i64 %i.ak, -9187201950435737472
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.am = zext i32 %i.ah to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.am
  store i64 %i.aj, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ap = icmp ule ptr %i.ao, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %i.aq = icmp samesign ult i64 %indvars.iv, 760
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  %i.as = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %i.ar, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %.critedge4.i
  %.lcssa27 = phi i32 [ %.promoted26, %.critedge4.i ], [ %i.ah, %bb.i ], [ %i.as, %bb.j ] ; 3 uses
  %.5.i.lcssa = phi ptr [ %.4.i, %.critedge4.i ], [ %.5.i28, %bb.i ], [ %i.ag, %bb.j ] ; 3 uses
  store i32 %.lcssa27, ptr %3, align 4
  %.not101.i37 = icmp eq ptr %.5.i.lcssa, %1
  br i1 %.not101.i37, label %.critedge6.i, label %.lr.ph39

.lr.ph39:                                         ; preds = %.thread, %bb.m
  %.8.i38 = phi ptr [ %i.bb, %bb.m ], [ %.5.i.lcssa, %.thread ] ; 3 uses
  %i.at = phi i32 [ %i.ba, %bb.m ], [ %.lcssa27, %.thread ] ; 4 uses
  %i.au = load i8, ptr %.8.i38, align 1, !tbaa !153, !noalias !3450
  %i.av = add i8 %i.au, -48                       ; 2 uses
  %i.aw = icmp ult i8 %i.av, 10
  br i1 %i.aw, label %bb.k, label %.critedge6.i

bb.k:                                             ; preds = %.lr.ph39
  %i.ax = icmp ult i32 %i.at, 768
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = zext nneg i32 %i.at to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ay
  store i8 %i.av, ptr %i.az, align 1, !tbaa !153, !alias.scope !3450
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = add i32 %i.at, 1                        ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.i38, i64 1 ; 3 uses
  %.not101.i = icmp eq ptr %i.bb, %1
  br i1 %.not101.i, label %.critedge6.i, label %.lr.ph39, !llvm.loop !3458

.critedge6.i:                                     ; preds = %bb.m, %.lr.ph39, %.thread
  %.lcssa36 = phi i32 [ %.lcssa27, %.thread ], [ %i.at, %.lr.ph39 ], [ %i.ba, %bb.m ] ; 2 uses
  %.8.i.lcssa = phi ptr [ %.5.i.lcssa, %.thread ], [ %.8.i38, %.lr.ph39 ], [ %i.bb, %bb.m ] ; 2 uses
  store i32 %.lcssa36, ptr %3, align 4
  %i.bc = ptrtoint ptr %i.u to i64
  %i.bd = ptrtoint ptr %.8.i.lcssa to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  store i32 %i.bf, ptr %i.a, align 4, !tbaa !3459, !alias.scope !3450
  br label %.critedge106.i

.critedge106.i.loopexit:                          ; preds = %bb.f, %.critedge.i
  %.lcssa13 = phi i32 [ 0, %.critedge.i ], [ %i.r, %bb.f ] ; 2 uses
  %.2.i.lcssa = phi ptr [ %.1.i.lcssa, %.critedge.i ], [ %i.s, %bb.f ]
  store i32 %.lcssa13, ptr %3, align 4
  br label %.critedge106.i

.critedge106.i:                                   ; preds = %.critedge106.i.loopexit, %.critedge6.i, %.critedge2.i
  %i.bg = phi i32 [ %i.bf, %.critedge6.i ], [ 0, %.critedge2.i ], [ 0, %.critedge106.i.loopexit ] ; 2 uses
  %i.bh = phi i32 [ %.lcssa36, %.critedge6.i ], [ %.promoted26, %.critedge2.i ], [ %.lcssa13, %.critedge106.i.loopexit ] ; 3 uses
  %.9.i = phi ptr [ %.8.i.lcssa, %.critedge6.i ], [ %.2.i16, %.critedge2.i ], [ %.2.i.lcssa, %.critedge106.i.loopexit ] ; 6 uses
  %.not102.i = icmp eq i32 %i.bh, 0
  br i1 %.not102.i, label %.thread6, label %.preheader

.preheader:                                       ; preds = %.critedge106.i, %.critedge8.i
  %.9.pn.i = phi ptr [ %.087.i, %.critedge8.i ], [ %.9.i, %.critedge106.i ]
  %.085.i = phi i32 [ %spec.select107.i, %.critedge8.i ], [ 0, %.critedge106.i ] ; 2 uses
  %.087.i = getelementptr inbounds i8, ptr %.9.pn.i, i64 -1 ; 2 uses
  %i.bi = load i8, ptr %.087.i, align 1, !tbaa !153, !noalias !3450 ; 2 uses
  switch i8 %i.bi, label %bb.n [
    i8 48, label %.critedge8.i
    i8 46, label %.critedge8.i
  ]

.critedge8.i:                                     ; preds = %.preheader, %.preheader
  %i.bj = icmp eq i8 %i.bi, 48
  %i.bk = zext i1 %i.bj to i32
  %spec.select107.i = add nuw nsw i32 %.085.i, %i.bk
  br label %.preheader, !llvm.loop !3460

bb.n:                                             ; preds = %.preheader
  %i.bl = add nsw i32 %i.bg, %i.bh                ; 3 uses
  store i32 %i.bl, ptr %i.a, align 4, !tbaa !3459, !alias.scope !3450
  %i.bm = sub i32 %i.bh, %.085.i                  ; 3 uses
  store i32 %i.bm, ptr %3, align 4, !tbaa !3461, !alias.scope !3450
  %i.bn = icmp ugt i32 %i.bm, 768
  br i1 %i.bn, label %bb.o, label %.thread6

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.b, align 1, !tbaa !3462, !alias.scope !3450
  store i32 768, ptr %3, align 4, !tbaa !3461, !alias.scope !3450
  br label %.thread6

.thread6:                                         ; preds = %.critedge106.i, %bb.o, %bb.n
  %i.bo = phi i32 [ 0, %.critedge106.i ], [ 768, %bb.o ], [ %i.bm, %bb.n ] ; 3 uses
  %i.bp = phi i32 [ %i.bg, %.critedge106.i ], [ %i.bl, %bb.o ], [ %i.bl, %bb.n ]
  %.not103.i = icmp eq ptr %.9.i, %1
  br i1 %.not103.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %.thread6
  %i.bq = load i8, ptr %.9.i, align 1, !tbaa !153, !noalias !3450
  switch i8 %i.bq, label %bb.v [
    i8 101, label %bb.q
    i8 69, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.9.i, i64 1 ; 4 uses
  %.not104.i = icmp eq ptr %i.br, %1
  br i1 %.not104.i, label %.critedge109.i, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_8
begin_hunk_9_@_ZZN10duckdb_fmt2v68internal19parse_format_stringILb0EcRNS0_14format_handlerINS0_13arg_formatterINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISB_cEEEEEEvNS0_17basic_string_viewIT0_EEOT1_EN10pfs_writerclEPKcSP_:bb.a

bb.f:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !2781 ; 4 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 7 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775807
  br i1 %i.t, label %bb.g, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.u = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, %i.s ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.s
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807)
  %i.x = select i1 %i.v, i64 9223372036854775807, i64 %i.w ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #48 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s ; 2 uses
  %i.aa = load i8, ptr %.056.i.i.i.i.i.i.i.i, align 1, !tbaa !153
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !153
  %i.ab = icmp sgt i64 %i.s, 0
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.p, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.y, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !2781
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !2783
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store ptr %i.ad, ptr %i.j, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ae = phi ptr [ %i.o, %bb.e ], [ %i.ac, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i.i.i.i, i64 1
  %i.ag = add nsw i64 %.07.i.i.i.i.i.i.i.i, -1
  %i.ah = icmp sgt i64 %.07.i.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.d, label %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISA_cEEE7on_textEPKcSH_.exit, !llvm.loop !3502

_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISA_cEEE7on_textEPKcSH_.exit: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i, %bb.c
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.g, align 16
  br label %bb.v

bb.j:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, %2
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !153
  %.not = icmp eq i8 %i.ak, 125
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = load ptr, ptr %0, align 8, !tbaa !3499, !nonnull !74, !align !3501
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.392, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.al, ptr noundef nonnull %3) #49
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.an) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  resume { ptr, i32 } %i.am

bb.o:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr %0, align 8, !tbaa !3499, !nonnull !74, !align !3501
  %i.ar = ptrtoint ptr %i.ai to i64
  %i.as = sub i64 %i.ar, %i.c                     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i17 = load ptr, ptr %i.at, align 16 ; 5 uses
  %i.au = icmp sgt i64 %i.as, 0
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.i.i.i18, label %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISA_cEEE7on_textEPKcSH_.exit30

.lr.ph.i.i.i.i.i.i.i.i18:                         ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i17, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i17, i64 16 ; 2 uses
  %.pre.i.i.i.i.i.i.i.i19 = load ptr, ptr %i.av, align 8, !tbaa !2783
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i23, %.lr.ph.i.i.i.i.i.i.i.i18
  %i.ax = phi ptr [ %.pre.i.i.i.i.i.i.i.i19, %.lr.ph.i.i.i.i.i.i.i.i18 ], [ %i.br, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i23 ] ; 3 uses
  %.07.i.i.i.i.i.i.i.i20 = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i18 ], [ %i.bt, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i23 ] ; 2 uses
  %.056.i.i.i.i.i.i.i.i21 = phi ptr [ %.013, %.lr.ph.i.i.i.i.i.i.i.i18 ], [ %i.bs, %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i23 ] ; 3 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !2788
  %.not.i.i.i.i.i.i.i.i.i.i22 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i.i.i.i.i.i.i22, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = load i8, ptr %.056.i.i.i.i.i.i.i.i21, align 1, !tbaa !153
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !153
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !2783
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 2 uses
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !2783
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i23

bb.r:                                             ; preds = %bb.p
  %i.bc = load ptr, ptr %.sroa.0.0.copyload.i.i17, align 8, !tbaa !2781 ; 4 uses
  %i.bd = ptrtoint ptr %i.ax to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 7 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775807
  br i1 %i.bg, label %bb.s, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i24

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i24: ; preds = %bb.r
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i25 = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bh = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i25, %i.bf ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bf
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 9223372036854775807)
  %i.bk = select i1 %i.bi, i64 9223372036854775807, i64 %i.bj ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i26 = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i26)
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #48 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bf ; 2 uses
  %i.bn = load i8, ptr %.056.i.i.i.i.i.i.i.i21, align 1, !tbaa !153
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !153
  %i.bo = icmp sgt i64 %i.bf, 0
  br i1 %i.bo, label %bb.t, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i27

bb.t:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr align 1 %i.bc, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i27

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i27: ; preds = %bb.t, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i.i.i.i28 = icmp eq ptr %i.bc, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i.i.i.i28, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i29, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i27
  tail call void @_ZdlPv(ptr noundef nonnull %i.bc) #47
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i29

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i29: ; preds = %bb.u, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i.i.i.i27
  store ptr %i.bl, ptr %.sroa.0.0.copyload.i.i17, align 8, !tbaa !2781
  store ptr %i.bp, ptr %i.av, align 8, !tbaa !2783
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store ptr %i.bq, ptr %i.aw, align 8, !tbaa !2788
  br label %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i23

_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i23: ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i29, %bb.q
  %i.br = phi ptr [ %i.bb, %bb.q ], [ %i.bp, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i29 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i.i.i.i21, i64 1
  %i.bt = add nsw i64 %.07.i.i.i.i.i.i.i.i20, -1
  %i.bu = icmp sgt i64 %.07.i.i.i.i.i.i.i.i20, 1
  br i1 %i.bu, label %bb.p, label %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISA_cEEE7on_textEPKcSH_.exit30, !llvm.loop !3502

_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISA_cEEE7on_textEPKcSH_.exit30: ; preds = %_ZNSt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEaSERKc.exit.i.i.i.i.i.i.i.i23, %bb.o
  store ptr %.sroa.0.0.copyload.i.i17, ptr %i.at, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  br label %bb.v

bb.v:                                             ; preds = %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISA_cEEE7on_textEPKcSH_.exit30, %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISA_cEEE7on_textEPKcSH_.exit
  %.1 = phi ptr [ %i.bv, %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISA_cEEE7on_textEPKcSH_.exit30 ], [ %.013, %_ZN10duckdb_fmt2v614format_handlerINS0_13arg_formatterINS0_8internal12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISA_cEEE7on_textEPKcSH_.exit ]
  br i1 %.not32, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.v, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #32

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISC_cEEEEcEEEEPKT_SM_SM_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %3 = ptrtoaddr ptr %1 to i64
  %4 = alloca %"class.duckdb_fmt::v6::basic_format_arg", align 16 ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.duckdb_fmt::v6::basic_format_arg", align 16 ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.duckdb_fmt::v6::basic_format_arg", align 16 ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !945
  %i.g = load i8, ptr %0, align 1, !tbaa !153     ; 4 uses
  switch i8 %i.g, label %bb.c [
    i8 125, label %bb.b
    i8 58, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !3503, !nonnull !74, !align !3501 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = tail call noundef i32 @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE11next_arg_idEv(ptr noundef nonnull align 8 dereferenceable(20) %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEENT_10format_argERSB_i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg") align 16 %8, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 noundef %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.l, ptr noundef nonnull align 16 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !3482
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.m = add i8 %i.g, -48
  %or.cond5 = icmp ult i8 %i.m, 10
  br i1 %or.cond5, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = call noundef i32 @_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_10id_adapterIRNS0_14format_handlerINS0_13arg_formatterINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEcNS0_20basic_format_contextISC_cEEEEcEEEEiRPKT_SN_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !945  ; 2 uses
  %i.p = icmp eq ptr %i.o, %1
  br i1 %i.p, label %.noexc.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i8, ptr %i.o, align 1, !tbaa !153
  switch i8 %i.q, label %.noexc.i [
    i8 125, label %bb.k
    i8 58, label %bb.k
  ]

.noexc.i:                                         ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.r, ptr %9, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  store i64 21, ptr %i.e, align 8, !tbaa !108
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %9, align 8, !tbaa !89
  %i.t = load i64, ptr %i.e, align 8, !tbaa !108  ; 3 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.s, ptr noundef nonnull align 1 dereferenceable(21) @.str.389, i64 21, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.t, ptr %i.u, align 8, !tbaa !152
  %i.v = load ptr, ptr %9, align 8, !tbaa !89
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.x = load ptr, ptr %2, align 8, !tbaa !3503, !nonnull !74, !align !3501
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.y, ptr %7, align 8, !tbaa !151
  %i.z = load ptr, ptr %9, align 8, !tbaa !89     ; 2 uses
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !152 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  store i64 %i.aa, ptr %i.d, align 8, !tbaa !108
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc.i
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc47 unwind label %bb.j   ; 2 uses

.noexc47:                                         ; preds = %.noexc.i.i
  store ptr %i.ac, ptr %7, align 8, !tbaa !89
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !108
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !153
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc47, %.noexc.i
  %i.ae = phi ptr [ %i.ac, %.noexc47 ], [ %i.y, %.noexc.i ] ; 2 uses
  switch i64 %i.aa, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.af = load i8, ptr %i.z, align 1, !tbaa !153
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !153
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.z, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !108 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !152
  %i.ai = load ptr, ptr %7, align 8, !tbaa !89
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull %7) #49
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  unreachable

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.y
  br i1 %i.am, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.al) #47
  br label %.body

bb.j:                                             ; preds = %.noexc.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.j ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ak, %bb.i ] ; 2 uses
  %i.ao = load ptr, ptr %9, align 8, !tbaa !89    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.r
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.sink.split

bb.k:                                             ; preds = %bb.e, %bb.e
  %i.aq = load ptr, ptr %2, align 8, !tbaa !3503, !nonnull !74, !align !3501 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE12check_arg_idEi(ptr noundef nonnull align 8 dereferenceable(20) %i.ar, i32 noundef %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  call void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEENT_10format_argERSB_i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg") align 16 %6, ptr noundef nonnull align 8 dereferenceable(48) %i.as, i32 noundef %i.n)
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.at, ptr noundef nonnull align 16 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !3482
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !945
  br label %bb.r

bb.l:                                             ; preds = %bb.c
  %i.av = and i8 %i.g, -33
  %i.aw = add i8 %i.av, -65
  %or.cond10.i = icmp ult i8 %i.aw, 26
  %i.ax = icmp eq i8 %i.g, 95
  %i.ay = or i1 %i.ax, %or.cond10.i
  br i1 %i.ay, label %.critedge7.preheader, label %.noexc.i52

.critedge7.preheader:                             ; preds = %bb.l
  %i.az = sub i64 %3, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.az  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not80 = icmp eq ptr %i.ba, %1
  br i1 %.not80, label %.critedge, label %.lr.ph

.noexc.i52:                                       ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.bb, ptr %10, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  store i64 21, ptr %i.c, align 8, !tbaa !108
  %i.bc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.bc, ptr %10, align 8, !tbaa !89
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !108 ; 3 uses
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.bc, ptr noundef nonnull align 1 dereferenceable(21) @.str.389, i64 21, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !152
  %i.bf = load ptr, ptr %10, align 8, !tbaa !89
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bh = load ptr, ptr %2, align 8, !tbaa !3503, !nonnull !74, !align !3501
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.bi, ptr %5, align 8, !tbaa !151
  %i.bj = load ptr, ptr %10, align 8, !tbaa !89   ; 2 uses
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !152 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i64 %i.bk, ptr %i.b, align 8, !tbaa !108
  %i.bl = icmp ugt i64 %i.bk, 15
  br i1 %i.bl, label %.noexc.i.i60, label %._crit_edge.i.i.i55

.noexc.i.i60:                                     ; preds = %.noexc.i52
  %i.bm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc61 unwind label %bb.q   ; 2 uses

.noexc61:                                         ; preds = %.noexc.i.i60
  store ptr %i.bm, ptr %5, align 8, !tbaa !89
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !108
end_hunk_9
begin_hunk_10_@_ZN10duckdb_fmt2v68internal18parse_format_specsIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEPKT_SL_SL_OT0_:bb.a
bb.z:                                             ; preds = %bb.y
  %i.cx = load i8, ptr %.3, align 1, !tbaa !153   ; 2 uses
  %.not73 = icmp eq i8 %i.cx, 125
  br i1 %.not73, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.cz = load ptr, ptr %2, align 8, !tbaa !3989, !nonnull !74, !align !3582
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i8 %i.cx, ptr %i.da, align 4, !tbaa !3513
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa, %bb.v, %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE7on_zeroEv.exit, %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE7on_hashEv.exit, %bb.m, %bb.k, %bb.c, %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.c ], [ %0, %bb.a ], [ %i.am, %bb.k ], [ %.060, %bb.m ], [ %i.bp, %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE7on_hashEv.exit ], [ %i.cq, %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE7on_zeroEv.exit ], [ %i.cs, %bb.v ], [ %0, %bb.b ], [ %i.cy, %bb.aa ], [ %.3, %bb.z ], [ %.3, %bb.y ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN10duckdb_fmt2v68internal11parse_alignIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEPKT_SL_SL_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not = icmp ne ptr %i.c, %1                    ; 2 uses
  %i.d = zext i1 %.not to i64                     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !153
  switch i8 %i.f, label %.critedge [
    i8 60, label %.loopexit.loopexit
    i8 62, label %.loopexit
    i8 61, label %.loopexit55
    i8 94, label %.loopexit61
  ]

.loopexit55:                                      ; preds = %bb.h, %bb.a
  %indvars.iv.lcssa68 = phi i64 [ %i.d, %bb.a ], [ 0, %bb.h ]
  br label %.loopexit

.loopexit61:                                      ; preds = %bb.h, %bb.a
  %indvars.iv.lcssa69 = phi i64 [ %i.d, %bb.a ], [ 0, %bb.h ]
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.h, %bb.a
  %indvars.iv.lcssa = phi i64 [ %i.d, %bb.a ], [ 0, %bb.h ]
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.h, %.loopexit.loopexit, %.loopexit61, %.loopexit55
  %indvars.iv71 = phi i64 [ %indvars.iv.lcssa68, %.loopexit55 ], [ %indvars.iv.lcssa, %.loopexit.loopexit ], [ %indvars.iv.lcssa69, %.loopexit61 ], [ %i.d, %bb.a ], [ 0, %bb.h ]
  %i.g = phi i1 [ true, %.loopexit55 ], [ false, %.loopexit.loopexit ], [ false, %.loopexit61 ], [ false, %bb.h ], [ false, %bb.a ]
  %.128 = phi i8 [ 4, %.loopexit55 ], [ 1, %.loopexit.loopexit ], [ 3, %.loopexit61 ], [ 2, %bb.h ], [ 2, %bb.a ]
  %i.h = and i64 %indvars.iv71, 4294967295
  %.not38 = icmp eq i64 %i.h, 0
  br i1 %.not38, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.i = load i8, ptr %0, align 1, !tbaa !153     ; 2 uses
  %.not33 = icmp eq i8 %i.i, 123
  br i1 %.not33, label %.noexc.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.noexc.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i64 26, ptr %i.b, align 8, !tbaa !108
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !89
  %i.l = load i64, ptr %i.b, align 8, !tbaa !108  ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.k, ptr noundef nonnull align 1 dereferenceable(26) @.str.411, i64 26, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !152
  %i.n = load ptr, ptr %4, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESA_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc.i
  %i.p = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.j
  br i1 %i.q, label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE8on_alignENS0_5align4typeE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.p) #47
  br label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE8on_alignENS0_5align4typeE.exit

bb.d:                                             ; preds = %.noexc.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !89     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.j
  br i1 %i.t, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.d, %bb.g
  %.sink = phi ptr [ %i.aq, %bb.g ], [ %i.s, %bb.d ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ap, %bb.g ], [ %i.r, %bb.d ]
  call void @_ZdlPv(ptr noundef %.sink) #47
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %bb.g ], [ %i.r, %bb.d ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.v = load ptr, ptr %2, align 8, !tbaa !3989, !nonnull !74, !align !3582
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  store i8 %i.i, ptr %i.w, align 2, !tbaa !153
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.loopexit
  %.130 = phi ptr [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %.loopexit ] ; 2 uses
  br i1 %i.g, label %.split3.i, label %.split.i

.split.i:                                         ; preds = %bb.e
  %i.x = load ptr, ptr %2, align 8, !tbaa !3989, !nonnull !74, !align !3582
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 9 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = and i8 %i.z, -16
  %i.ab = or disjoint i8 %i.aa, %.128
  store i8 %i.ab, ptr %i.y, align 1
  br label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE8on_alignENS0_5align4typeE.exit

.split3.i:                                        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !3518
  %i.ae = add i32 %i.ad, -1
  %i.af = icmp ult i32 %i.ae, 12
  br i1 %i.af, label %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE24require_numeric_argumentEv.exit.i, label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %.split3.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !3991, !nonnull !74, !align !75
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ai, ptr %3, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 42, ptr %i.a, align 8, !tbaa !108
  %i.aj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.aj, ptr %3, align 8, !tbaa !89
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.aj, ptr noundef nonnull align 1 dereferenceable(42) @.str.412, i64 42, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !152
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESA_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.noexc.i.i.i
  %i.an = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ai
  br i1 %i.ao, label %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE24require_numeric_argumentEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.an) #47
  br label %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE24require_numeric_argumentEv.exit.i

bb.g:                                             ; preds = %.noexc.i.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ai
  br i1 %i.ar, label %common.resume, label %common.resume.sink.split

_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE24require_numeric_argumentEv.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %.split3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.as = load ptr, ptr %2, align 8, !tbaa !3989, !nonnull !74, !align !3582
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 9 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1
  %i.av = and i8 %i.au, -16
  %i.aw = or disjoint i8 %i.av, 4
  store i8 %i.aw, ptr %i.at, align 1
  br label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE8on_alignENS0_5align4typeE.exit

.critedge:                                        ; preds = %bb.a
  br i1 %.not, label %bb.h, label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE8on_alignENS0_5align4typeE.exit

bb.h:                                             ; preds = %.critedge
  %i.ax = load i8, ptr %0, align 1, !tbaa !153
  switch i8 %i.ax, label %_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE8on_alignENS0_5align4typeE.exit [
    i8 60, label %.loopexit.loopexit
    i8 62, label %.loopexit
    i8 61, label %.loopexit55
    i8 94, label %.loopexit61
  ]

_ZN10duckdb_fmt2v68internal13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE8on_alignENS0_5align4typeE.exit: ; preds = %.critedge, %bb.h, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE24require_numeric_argumentEv.exit.i, %.split.i
  %.1 = phi ptr [ %.130, %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE24require_numeric_argumentEv.exit.i ], [ %0, %bb.c ], [ %.130, %.split.i ], [ %0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %0, %bb.h ], [ %0, %.critedge ]
  ret ptr %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN10duckdb_fmt2v68internal11parse_widthIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEPKT_SL_SL_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = ptrtoaddr ptr %0 to i64
  %4 = ptrtoaddr ptr %1 to i64
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.duckdb_fmt::v6::internal::width_adapter", align 8 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !153     ; 4 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.e = icmp eq i8 %i.c, 48
  br i1 %i.e, label %bb.c, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b
  %i.f = sub i64 %4, %3
  %scevgep = getelementptr i8, ptr %0, i64 %i.f
  br label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.e
  %.2 = phi ptr [ %i.n, %bb.e ], [ %0, %.preheader.i.preheader ] ; 2 uses
  %i.h = phi i8 [ %i.o, %bb.e ], [ %i.c, %.preheader.i.preheader ]
  %.018.i = phi i32 [ %i.m, %bb.e ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.i = icmp ugt i32 %.018.i, 214748364
  br i1 %i.i, label %.critedge.thread.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.j = mul nuw nsw i32 %.018.i, 10
  %i.k = zext nneg i8 %i.h to i32
  %i.l = add nsw i32 %i.k, -48
  %i.m = add nuw i32 %i.l, %i.j                   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 4 uses
  %.not.i = icmp eq ptr %i.n, %1
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %i.n, align 1, !tbaa !153   ; 2 uses
  %i.p = add i8 %i.o, -48
  %or.cond.i = icmp ult i8 %i.p, 10
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !3992

.critedge.i:                                      ; preds = %bb.e, %bb.d
  %.lcssa = phi ptr [ %i.n, %bb.e ], [ %scevgep, %bb.d ] ; 2 uses
  %i.q = icmp slt i32 %i.m, 0
  br i1 %i.q, label %.critedge.thread.i, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit

.critedge.thread.i:                               ; preds = %.preheader.i, %.critedge.i
  %.3 = phi ptr [ %.lcssa, %.critedge.i ], [ %.2, %.preheader.i ] ; 2 uses
  %.126.i = phi i32 [ %i.m, %.critedge.i ], [ -2147483648, %.preheader.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i64 17, ptr %i.b, align 8, !tbaa !108
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !89
  %i.t = load i64, ptr %i.b, align 8, !tbaa !108  ; 3 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.s, ptr noundef nonnull align 1 dereferenceable(17) @.str.407, i64 17, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !152
  %i.v = load ptr, ptr %5, align 8, !tbaa !89
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESA_EE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %5)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.critedge.thread.i
  %i.x = load ptr, ptr %5, align 8, !tbaa !89     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.r
  br i1 %i.y, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.x) #47
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit

bb.g:                                             ; preds = %.critedge.thread.i
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.r
  br i1 %i.ab, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.g, %bb.n
  %.sink = phi ptr [ %i.ar, %bb.n ], [ %i.aa, %bb.g ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.aq, %bb.n ], [ %i.z, %bb.g ]
  call void @_ZdlPv(ptr noundef %.sink) #47
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.n, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.aq, %bb.n ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit: ; preds = %bb.f, %bb.c, %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.4 = phi ptr [ %i.g, %bb.c ], [ %.lcssa, %.critedge.i ], [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.3, %bb.f ]
  %.017.i = phi i32 [ 0, %bb.c ], [ %i.m, %.critedge.i ], [ %.126.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.126.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ac = load ptr, ptr %2, align 8, !tbaa !3989, !nonnull !74, !align !3582
  store i32 %.017.i, ptr %i.ac, align 4, !tbaa !3507
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.a
  %i.ad = icmp eq i8 %i.c, 123
  br i1 %i.ad, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %.not = icmp eq ptr %i.ae, %1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  store ptr %2, ptr %6, align 8, !tbaa !3993
  %i.af = call noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_13width_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEcEEEEPKT_SN_SN_OT0_(ptr noundef nonnull %i.ae, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi ptr [ %i.ae, %bb.i ], [ %i.af, %bb.j ] ; 5 uses
  %i.ag = icmp eq ptr %.0, %1
  br i1 %i.ag, label %.noexc.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load i8, ptr %.0, align 1, !tbaa !153
  %.not16 = icmp eq i8 %i.ah, 125
  br i1 %.not16, label %bb.o, label %.noexc.i

.noexc.i:                                         ; preds = %bb.l, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.ai, ptr %7, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 21, ptr %i.a, align 8, !tbaa !108
  %i.aj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.aj, ptr %7, align 8, !tbaa !89
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.aj, ptr noundef nonnull align 1 dereferenceable(21) @.str.389, i64 21, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !152
  %i.am = load ptr, ptr %7, align 8, !tbaa !89
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESA_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %7)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc.i
  %i.ao = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ai
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.ao) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %.noexc.i
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ai
  br i1 %i.as, label %common.resume, label %common.resume.sink.split

bb.o:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit, %bb.o, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.011 = phi ptr [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %0, %bb.h ], [ %.4, %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit ], [ %i.at, %bb.o ], [ %.0, %bb.m ]
  ret ptr %.011
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN10duckdb_fmt2v68internal15parse_precisionIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEPKT_SL_SL_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = ptrtoaddr ptr %0 to i64
  %4 = ptrtoaddr ptr %1 to i64
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"struct.duckdb_fmt::v6::internal::precision_adapter", align 8 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.not = icmp eq ptr %i.e, %1
  br i1 %.not, label %.thread52, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.e, align 1, !tbaa !153   ; 4 uses
  %i.g = sext i8 %i.f to i32
  %i.h = add nsw i32 %i.g, -48
  %or.cond = icmp ult i32 %i.h, 10
  br i1 %or.cond, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.i = icmp eq i8 %i.f, 48
  br i1 %i.i, label %bb.d, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.c
  %i.j = sub i64 %4, %3
  %scevgep = getelementptr i8, ptr %0, i64 %i.j
  br label %.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.f
  %.3 = phi ptr [ %i.r, %bb.f ], [ %i.e, %.preheader.i.preheader ] ; 2 uses
  %i.l = phi i8 [ %i.s, %bb.f ], [ %i.f, %.preheader.i.preheader ]
  %.018.i = phi i32 [ %i.q, %bb.f ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.m = icmp ugt i32 %.018.i, 214748364
  br i1 %i.m, label %.critedge.thread.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.n = mul nuw nsw i32 %.018.i, 10
  %i.o = sext i8 %i.l to i32
  %i.p = add nsw i32 %i.o, -48
  %i.q = add i32 %i.p, %i.n                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 4 uses
  %.not.i = icmp eq ptr %i.r, %1
  br i1 %.not.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i8, ptr %i.r, align 1, !tbaa !153   ; 2 uses
  %i.t = add i8 %i.s, -48
  %or.cond.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !3992

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %.lcssa = phi ptr [ %i.r, %bb.f ], [ %scevgep, %bb.e ] ; 2 uses
  %i.u = icmp slt i32 %i.q, 0
  br i1 %i.u, label %.critedge.thread.i, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit

.critedge.thread.i:                               ; preds = %.preheader.i, %.critedge.i
  %.4 = phi ptr [ %.lcssa, %.critedge.i ], [ %.3, %.preheader.i ] ; 2 uses
  %.126.i = phi i32 [ %i.q, %.critedge.i ], [ -2147483648, %.preheader.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  store i64 17, ptr %i.d, align 8, !tbaa !108
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.w, ptr %6, align 8, !tbaa !89
  %i.x = load i64, ptr %i.d, align 8, !tbaa !108  ; 3 uses
  store i64 %i.x, ptr %i.v, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.w, ptr noundef nonnull align 1 dereferenceable(17) @.str.407, i64 17, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !152
  %i.z = load ptr, ptr %6, align 8, !tbaa !89
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESA_EE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.critedge.thread.i
  %i.ab = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.v
  br i1 %i.ac, label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ab) #47
  br label %_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit

bb.h:                                             ; preds = %.critedge.thread.i
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.v
  br i1 %i.af, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.h, %bb.t, %bb.q, %bb.o
  %.sink = phi ptr [ %i.bz, %bb.t ], [ %i.ax, %bb.o ], [ %i.bi, %bb.q ], [ %i.ae, %bb.h ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.by, %bb.t ], [ %i.aw, %bb.o ], [ %i.bh, %bb.q ], [ %i.ad, %bb.h ]
  call void @_ZdlPv(ptr noundef %.sink) #47
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.t, %bb.q, %bb.o, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bh, %bb.q ], [ %i.aw, %bb.o ], [ %i.ad, %bb.h ], [ %i.by, %bb.t ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEEEiRPKT_SL_OT0_.exit: ; preds = %bb.g, %bb.d, %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.5 = phi ptr [ %i.k, %bb.d ], [ %.lcssa, %.critedge.i ], [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.4, %bb.g ]
  %.017.i = phi i32 [ 0, %bb.d ], [ %i.q, %.critedge.i ], [ %.126.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.126.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ag = load ptr, ptr %2, align 8, !tbaa !3989, !nonnull !74, !align !3582
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %.017.i, ptr %i.ah, align 4, !tbaa !3512
  br label %bb.r

bb.i:                                             ; preds = %bb.b
  %i.ai = icmp eq i8 %i.f, 123
  br i1 %i.ai, label %bb.j, label %.thread52

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %.not27 = icmp eq ptr %i.aj, %1
  br i1 %.not27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  store ptr %2, ptr %7, align 8, !tbaa !3993
  %i.ak = call noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_17precision_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEcEEEEPKT_SN_SN_OT0_(ptr noundef nonnull %i.aj, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi ptr [ %i.aj, %bb.j ], [ %i.ak, %bb.k ] ; 4 uses
  %i.al = icmp eq ptr %.0, %1
  br i1 %i.al, label %.noexc.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.an = load i8, ptr %.0, align 1, !tbaa !153
  %.not28 = icmp eq i8 %i.an, 125
  br i1 %.not28, label %bb.r, label %.noexc.i

.noexc.i:                                         ; preds = %bb.m, %bb.l
  %.1 = phi ptr [ %.0, %bb.l ], [ %i.am, %bb.m ]  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.ao, ptr %8, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  store i64 21, ptr %i.c, align 8, !tbaa !108
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.ap, ptr %8, align 8, !tbaa !89
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !108 ; 3 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ap, ptr noundef nonnull align 1 dereferenceable(21) @.str.389, i64 21, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !152
  %i.as = load ptr, ptr %8, align 8, !tbaa !89
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESA_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %8)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc.i
  %i.au = load ptr, ptr %8, align 8, !tbaa !89    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ao
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.au) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %.noexc.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %8, align 8, !tbaa !89    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ao
  br i1 %i.ay, label %common.resume, label %common.resume.sink.split

.thread52:                                        ; preds = %bb.a, %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.az, ptr %9, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i64 27, ptr %i.b, align 8, !tbaa !108
  %i.ba = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ba, ptr %9, align 8, !tbaa !89
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !108 ; 3 uses
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.ba, ptr noundef nonnull align 1 dereferenceable(27) @.str.416, i64 27, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !152
  %i.bd = load ptr, ptr %9, align 8, !tbaa !89
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store i8 0, ptr %i.be, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESA_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %9)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.thread52
end_hunk_10
begin_hunk_11_@_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESA_EE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 %i.r, ptr %i.a, align 8, !tbaa !108
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.t, ptr %3, align 8, !tbaa !89
  %i.u = load i64, ptr %i.a, align 8, !tbaa !108
  store i64 %i.u, ptr %i.p, align 8, !tbaa !153
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = phi ptr [ %i.t, %.noexc ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.r, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.q, align 1, !tbaa !153
  store i8 %i.w, ptr %i.v, align 1, !tbaa !153
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !152
  %i.z = load ptr, ptr %3, align 8, !tbaa !89
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %3) #49
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  unreachable

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.p
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ac) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %.body

bb.h:                                             ; preds = %.noexc.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %i.af = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.af) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE10check_signEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !3518 ; 2 uses
  %i.e = add i32 %i.d, -1                         ; 2 uses
  %i.f = icmp ult i32 %i.e, 12
  br i1 %i.f, label %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE24require_numeric_argumentEv.exit, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !3991, !nonnull !74, !align !75
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i64 42, ptr %i.b, align 8, !tbaa !108
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !89
  %i.j = load i64, ptr %i.b, align 8, !tbaa !108  ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.i, ptr noundef nonnull align 1 dereferenceable(42) @.str.412, i64 42, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !152
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESA_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc.i.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.h
  br i1 %i.n, label %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE24require_numeric_argumentEv.exitthread-pre-split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.m) #47
  br label %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE24require_numeric_argumentEv.exitthread-pre-split

bb.c:                                             ; preds = %.noexc.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.h
  br i1 %i.q, label %common.resume, label %common.resume.sink.split

common.resume.sink.split:                         ; preds = %bb.c, %bb.f
  %.sink = phi ptr [ %i.ac, %bb.f ], [ %i.p, %bb.c ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.o, %bb.c ]
  call void @_ZdlPv(ptr noundef %.sink) #47
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.ab, %bb.f ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE24require_numeric_argumentEv.exitthread-pre-split: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pr = load i32, ptr %i.c, align 8, !tbaa !3518 ; 2 uses
  %.pre = add i32 %.pr, -1
  br label %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE24require_numeric_argumentEv.exit

_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE24require_numeric_argumentEv.exit: ; preds = %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE24require_numeric_argumentEv.exitthread-pre-split, %bb.a
  %.pre-phi = phi i32 [ %.pre, %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE24require_numeric_argumentEv.exitthread-pre-split ], [ %i.e, %bb.a ]
  %i.r = phi i32 [ %.pr, %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE24require_numeric_argumentEv.exitthread-pre-split ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.s = icmp ult i32 %.pre-phi, 9
  br i1 %i.s, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.d:                                             ; preds = %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE24require_numeric_argumentEv.exit
  switch i32 %i.r, label %.noexc.i [
    i32 2, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
    i32 4, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
    i32 9, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ]

.noexc.i:                                         ; preds = %bb.d
  %i.t = load ptr, ptr %0, align 8, !tbaa !3991, !nonnull !74, !align !75
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 41, ptr %i.a, align 8, !tbaa !108
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !89
  %i.w = load i64, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.v, ptr noundef nonnull align 1 dereferenceable(41) @.str.413, i64 41, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !152
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  store i8 0, ptr %i.y, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESA_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc.i
  %i.z = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.u
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.z) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !89    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.u
  br i1 %i.ad, label %common.resume, label %common.resume.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d, %bb.d, %bb.d, %_ZN10duckdb_fmt2v68internal21numeric_specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEE24require_numeric_argumentEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_13width_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEcEEEEPKT_SN_SN_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %3 = ptrtoaddr ptr %1 to i64
  %4 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 4 uses
  %5 = alloca %"class.duckdb_fmt::v6::internal::width_checker", align 8 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %8 = alloca %"class.duckdb_fmt::v6::basic_format_arg", align 16 ; 4 uses
  %9 = alloca %"class.duckdb_fmt::v6::basic_format_arg", align 16 ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 4 uses
  %12 = alloca %"class.duckdb_fmt::v6::internal::width_checker", align 8 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %15 = alloca %"class.duckdb_fmt::v6::basic_format_arg", align 16 ; 4 uses
  %16 = alloca %"class.duckdb_fmt::v6::basic_format_arg", align 16 ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %18 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 4 uses
  %19 = alloca %"class.duckdb_fmt::v6::internal::width_checker", align 8 ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %22 = alloca %"class.duckdb_fmt::v6::basic_format_arg", align 16 ; 4 uses
  %23 = alloca %"class.duckdb_fmt::v6::basic_format_arg", align 16 ; 4 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !945
  %i.g = load i8, ptr %0, align 1, !tbaa !153     ; 4 uses
  switch i8 %i.g, label %bb.f [
    i8 125, label %bb.b
    i8 58, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !3995, !nonnull !74, !align !75 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3997, !noalias !3999, !nonnull !74, !align !75
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !4002, !noalias !3999, !nonnull !74, !align !75
  %i.m = tail call noundef i32 @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE11next_arg_idEv(ptr noundef nonnull align 8 dereferenceable(20) %i.l), !noalias !3999
  call void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEENT_10format_argERSB_i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg") align 16 %23, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i32 noundef %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %22, ptr noundef nonnull align 16 dereferenceable(32) %23, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #46
  store ptr %18, ptr %19, align 8, !tbaa !4003
  %i.n = call noundef i64 @_ZN10duckdb_fmt2v616visit_format_argINS0_8internal13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 16 dereferenceable(20) %22) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #46
  %i.o = icmp ugt i64 %i.n, 2147483647
  br i1 %i.o, label %bb.c, label %_ZN10duckdb_fmt2v68internal13width_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEcEclEv.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #46
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.407, ptr noundef nonnull align 1 dereferenceable(1) %21)
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull %20) #49
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %20, align 8, !tbaa !89    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.q) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

common.resume:                                    ; preds = %.body67, %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i52 ], [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i78 ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %eh.lpad-body68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body68, %.body67 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #46
  br label %common.resume

_ZN10duckdb_fmt2v68internal13width_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEcEclEv.exit: ; preds = %bb.b
  %i.t = trunc nuw nsw i64 %i.n to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !3989, !nonnull !74, !align !3582
  store i32 %i.t, ptr %i.u, align 4, !tbaa !3507
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !945
  br label %bb.aa

bb.f:                                             ; preds = %bb.a
  %i.w = add i8 %i.g, -48
  %or.cond5 = icmp ult i8 %i.w, 10
  br i1 %or.cond5, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.x = call noundef i32 @_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_13width_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEcEEEEiRPKT_SO_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !945  ; 2 uses
  %i.z = icmp eq ptr %i.y, %1
  br i1 %i.z, label %.noexc.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !153
  switch i8 %i.aa, label %.noexc.i [
    i8 125, label %bb.n
    i8 58, label %bb.n
  ]

.noexc.i:                                         ; preds = %bb.h, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  store ptr %i.ab, ptr %24, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  store i64 21, ptr %i.e, align 8, !tbaa !108
  %i.ac = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.ac, ptr %24, align 8, !tbaa !89
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !108 ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ac, ptr noundef nonnull align 1 dereferenceable(21) @.str.389, i64 21, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !152
  %i.af = load ptr, ptr %24, align 8, !tbaa !89
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.ah = load ptr, ptr %2, align 8, !tbaa !3995, !nonnull !74, !align !75
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store ptr %i.ai, ptr %17, align 8, !tbaa !151
  %i.aj = load ptr, ptr %24, align 8, !tbaa !89   ; 2 uses
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !152 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !108
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc.i
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc47 unwind label %bb.m   ; 2 uses

.noexc47:                                         ; preds = %.noexc.i.i
  store ptr %i.am, ptr %17, align 8, !tbaa !89
  %i.an = load i64, ptr %i.d, align 8, !tbaa !108
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !153
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc47, %.noexc.i
  %i.ao = phi ptr [ %i.am, %.noexc47 ], [ %i.ai, %.noexc.i ] ; 2 uses
  switch i64 %i.ak, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !153
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !153
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.aj, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !108 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !152
  %i.as = load ptr, ptr %17, align 8, !tbaa !89
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESA_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull %17)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.au = load ptr, ptr %17, align 8, !tbaa !89   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ai
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.au) #47
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %17, align 8, !tbaa !89   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ai
  br i1 %i.ay, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.ax) #47
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.az = load ptr, ptr %24, align 8, !tbaa !89   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ab
end_hunk_11
begin_hunk_12_@_ZN10duckdb_fmt2v616visit_format_argINS0_8internal13width_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE:bb.a
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.cg
  br i1 %i.co, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.cn) #47
  br label %common.resume

bb.af:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.cp = load ptr, ptr %0, align 8, !tbaa !4013, !nonnull !74
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.cq, ptr %6, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  store i64 20, ptr %i.e, align 8, !tbaa !108
  %i.cr = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.cr, ptr %6, align 8, !tbaa !89
  %i.cs = load i64, ptr %i.e, align 8, !tbaa !108 ; 3 uses
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.cr, ptr noundef nonnull align 1 dereferenceable(20) @.str.415, i64 20, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !152
  %i.cu = load ptr, ptr %6, align 8, !tbaa !89
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store i8 0, ptr %i.cv, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.cp, ptr noundef nonnull %6) #49
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cq
  br i1 %i.cy, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58: ; preds = %bb.ah
  call void @_ZdlPv(ptr noundef %i.cx) #47
  br label %common.resume

bb.ai:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.cz = load ptr, ptr %0, align 8, !tbaa !4013, !nonnull !74
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.da, ptr %5, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  store i64 20, ptr %i.d, align 8, !tbaa !108
  %i.db = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.db, ptr %5, align 8, !tbaa !89
  %i.dc = load i64, ptr %i.d, align 8, !tbaa !108 ; 3 uses
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.db, ptr noundef nonnull align 1 dereferenceable(20) @.str.415, i64 20, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !152
  %i.de = load ptr, ptr %5, align 8, !tbaa !89
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dc
  store i8 0, ptr %i.df, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.cz, ptr noundef nonnull %5) #49
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.da
  br i1 %i.di, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61: ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef %i.dh) #47
  br label %common.resume

bb.al:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.dj = load ptr, ptr %0, align 8, !tbaa !4013, !nonnull !74
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.dk, ptr %4, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  store i64 20, ptr %i.c, align 8, !tbaa !108
  %i.dl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.dl, ptr %4, align 8, !tbaa !89
  %i.dm = load i64, ptr %i.c, align 8, !tbaa !108 ; 3 uses
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.dl, ptr noundef nonnull align 1 dereferenceable(20) @.str.415, i64 20, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !152
  %i.do = load ptr, ptr %4, align 8, !tbaa !89
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dm
  store i8 0, ptr %i.dp, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.dj, ptr noundef nonnull %4) #49
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %4, align 8, !tbaa !89    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.dk
  br i1 %i.ds, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64: ; preds = %bb.an
  call void @_ZdlPv(ptr noundef %i.dr) #47
  br label %common.resume

bb.ao:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.dt = load ptr, ptr %0, align 8, !tbaa !4013, !nonnull !74
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.du, ptr %3, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i64 20, ptr %i.b, align 8, !tbaa !108
  %i.dv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.dv, ptr %3, align 8, !tbaa !89
  %i.dw = load i64, ptr %i.b, align 8, !tbaa !108 ; 3 uses
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.dv, ptr noundef nonnull align 1 dereferenceable(20) @.str.415, i64 20, i1 false)
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !152
  %i.dy = load ptr, ptr %3, align 8, !tbaa !89
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dw
  store i8 0, ptr %i.dz, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.dt, ptr noundef nonnull %3) #49
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.du
  br i1 %i.ec, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67: ; preds = %bb.aq
  call void @_ZdlPv(ptr noundef %i.eb) #47
  br label %common.resume

bb.ar:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ed = load ptr, ptr %0, align 8, !tbaa !4013, !nonnull !74
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.ee, ptr %2, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 20, ptr %i.a, align 8, !tbaa !108
  %i.ef = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ef, ptr %2, align 8, !tbaa !89
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.ef, ptr noundef nonnull align 1 dereferenceable(20) @.str.415, i64 20, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !152
  %i.ei = load ptr, ptr %2, align 8, !tbaa !89
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg
  store i8 0, ptr %i.ej, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ed, ptr noundef nonnull %2) #49
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %2, align 8, !tbaa !89    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.ee
  br i1 %i.em, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70: ; preds = %bb.at
  call void @_ZdlPv(ptr noundef %i.el) #47
  br label %common.resume

bb.au:                                            ; preds = %bb.p, %_ZN10duckdb_fmt2v68internal13width_checkerINS1_13error_handlerEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEmS9_.exit, %bb.k, %_ZN10duckdb_fmt2v68internal13width_checkerINS1_13error_handlerEEclIxTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEmS7_.exit, %bb.f, %_ZN10duckdb_fmt2v68internal13width_checkerINS1_13error_handlerEEclIiTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEmS7_.exit
  %.0 = phi i64 [ %i.ad, %bb.k ], [ %.sroa.03.0.copyload, %_ZN10duckdb_fmt2v68internal13width_checkerINS1_13error_handlerEEclIN6duckdb9hugeint_tETnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEmS9_.exit ], [ %.sroa.01.0.copyload, %bb.p ], [ %i.t, %_ZN10duckdb_fmt2v68internal13width_checkerINS1_13error_handlerEEclIiTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEmS7_.exit ], [ %i.v, %bb.f ], [ %i.w, %_ZN10duckdb_fmt2v68internal13width_checkerINS1_13error_handlerEEclIxTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEmS7_.exit ]
  ret i64 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN10duckdb_fmt2v68internal12parse_arg_idIcNS1_17precision_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEcEEEEPKT_SN_SN_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %3 = ptrtoaddr ptr %1 to i64
  %4 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 4 uses
  %5 = alloca %"class.duckdb_fmt::v6::internal::precision_checker", align 8 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %8 = alloca %"class.duckdb_fmt::v6::basic_format_arg", align 16 ; 4 uses
  %9 = alloca %"class.duckdb_fmt::v6::basic_format_arg", align 16 ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 4 uses
  %12 = alloca %"class.duckdb_fmt::v6::internal::precision_checker", align 8 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %15 = alloca %"class.duckdb_fmt::v6::basic_format_arg", align 16 ; 4 uses
  %16 = alloca %"class.duckdb_fmt::v6::basic_format_arg", align 16 ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %18 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 4 uses
  %19 = alloca %"class.duckdb_fmt::v6::internal::precision_checker", align 8 ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator.20", align 1 ; 3 uses
  %22 = alloca %"class.duckdb_fmt::v6::basic_format_arg", align 16 ; 4 uses
  %23 = alloca %"class.duckdb_fmt::v6::basic_format_arg", align 16 ; 4 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !945
  %i.g = load i8, ptr %0, align 1, !tbaa !153     ; 4 uses
  switch i8 %i.g, label %bb.f [
    i8 125, label %bb.b
    i8 58, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !4015, !nonnull !74, !align !75 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !3997, !noalias !4017, !nonnull !74, !align !75
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !4002, !noalias !4017, !nonnull !74, !align !75
  %i.m = tail call noundef i32 @_ZN10duckdb_fmt2v626basic_format_parse_contextIcNS0_8internal13error_handlerEE11next_arg_idEv(ptr noundef nonnull align 8 dereferenceable(20) %i.l), !noalias !4017
  call void @_ZN10duckdb_fmt2v68internal7get_argINS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEENT_10format_argERSB_i(ptr dead_on_unwind nonnull writable sret(%"class.duckdb_fmt::v6::basic_format_arg") align 16 %23, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i32 noundef %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %22, ptr noundef nonnull align 16 dereferenceable(32) %23, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #46
  store ptr %18, ptr %19, align 8, !tbaa !4003
  %i.n = call noundef i64 @_ZN10duckdb_fmt2v616visit_format_argINS0_8internal17precision_checkerINS2_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEDTclfp_Li0EEEOT_RKNS0_16basic_format_argIT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 16 dereferenceable(20) %22) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #46
  %i.o = icmp ugt i64 %i.n, 2147483647
  br i1 %i.o, label %bb.c, label %_ZN10duckdb_fmt2v68internal17precision_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEcEclEv.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #46
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.407, ptr noundef nonnull align 1 dereferenceable(1) %21)
  invoke void @_ZN10duckdb_fmt2v68internal13error_handler8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull %20) #49
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %20, align 8, !tbaa !89    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.q) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

common.resume:                                    ; preds = %.body67, %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i52 ], [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i78 ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %eh.lpad-body68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body68, %.body67 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #46
  br label %common.resume

_ZN10duckdb_fmt2v68internal17precision_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEcEclEv.exit: ; preds = %bb.b
  %i.t = trunc nuw nsw i64 %i.n to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !3989, !nonnull !74, !align !3582
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.t, ptr %i.v, align 4, !tbaa !3512
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !945
  br label %bb.aa

bb.f:                                             ; preds = %bb.a
  %i.x = add i8 %i.g, -48
  %or.cond5 = icmp ult i8 %i.x, 10
  br i1 %or.cond5, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef i32 @_ZN10duckdb_fmt2v68internal21parse_nonnegative_intIcRNS1_17precision_adapterIRNS1_13specs_checkerINS1_13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEEEEEcEEEEiRPKT_SO_OT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !945  ; 2 uses
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %.noexc.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !153
  switch i8 %i.ab, label %.noexc.i [
    i8 125, label %bb.n
    i8 58, label %bb.n
  ]

.noexc.i:                                         ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  store ptr %i.ac, ptr %24, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  store i64 21, ptr %i.e, align 8, !tbaa !108
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.ad, ptr %24, align 8, !tbaa !89
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !108 ; 3 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ad, ptr noundef nonnull align 1 dereferenceable(21) @.str.389, i64 21, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !152
  %i.ag = load ptr, ptr %24, align 8, !tbaa !89
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.ai = load ptr, ptr %2, align 8, !tbaa !4015, !nonnull !74, !align !75
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  store ptr %i.aj, ptr %17, align 8, !tbaa !151
  %i.ak = load ptr, ptr %24, align 8, !tbaa !89   ; 2 uses
  %i.al = load i64, ptr %i.af, align 8, !tbaa !152 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  store i64 %i.al, ptr %i.d, align 8, !tbaa !108
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc.i
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc47 unwind label %bb.m   ; 2 uses

.noexc47:                                         ; preds = %.noexc.i.i
  store ptr %i.an, ptr %17, align 8, !tbaa !89
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !108
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !153
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc47, %.noexc.i
  %i.ap = phi ptr [ %i.an, %.noexc47 ], [ %i.aj, %.noexc.i ] ; 2 uses
  switch i64 %i.al, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.aq = load i8, ptr %i.ak, align 1, !tbaa !153
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !153
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %i.ak, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.ar = load i64, ptr %i.d, align 8, !tbaa !108 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !152
  %i.at = load ptr, ptr %17, align 8, !tbaa !89
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  invoke void @_ZN10duckdb_fmt2v68internal13specs_handlerINS0_26basic_format_parse_contextIcNS1_13error_handlerEEENS0_20basic_format_contextISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE8on_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESA_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull %17)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.av = load ptr, ptr %17, align 8, !tbaa !89   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.aj
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.av) #47
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %17, align 8, !tbaa !89   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.aj
  br i1 %i.az, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.ay) #47
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.ba = load ptr, ptr %24, align 8, !tbaa !89   ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN6duckdb12_GLOBAL__N_19WKTParser9ParseNodeEv:bb.a
  %i.ec = icmp eq ptr %i.eb, %i.dc
  %i.ed = load ptr, ptr %2, align 8, !tbaa !89, !noalias !4038 ; 5 uses
  %i.ee = icmp eq ptr %i.ed, %i.dr                ; 2 uses
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %bb.ah
  br i1 %i.ee, label %bb.ai, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176: ; preds = %bb.ah
  br i1 %i.ee, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184
  %i.ef = load i64, ptr %i.dy, align 8, !tbaa !152, !noalias !4038 ; 3 uses
  %i.eg = icmp ult i64 %i.ef, 16
  call void @llvm.assume(i1 %i.eg), !noalias !4038
  switch i64 %i.ef, label %bb.ak [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.eh = load i8, ptr %i.ed, align 1, !tbaa !153, !noalias !4038
  store i8 %i.eh, ptr %i.eb, align 1, !tbaa !153, !noalias !4038
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr align 1 %i.ed, i64 %i.ef, i1 false), !noalias !4038
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.ei = load i64, ptr %i.dy, align 8, !tbaa !152, !noalias !4038 ; 2 uses
  store i64 %i.ei, ptr %i.dd, align 8, !tbaa !152, !noalias !4038
  %i.ej = load ptr, ptr %6, align 8, !tbaa !89, !noalias !4038
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ei
  store i8 0, ptr %i.ek, align 1, !tbaa !153, !noalias !4038
  %.pre.i.i183 = load ptr, ptr %2, align 8, !tbaa !89, !noalias !4038
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184
  store ptr %i.ed, ptr %6, align 8, !tbaa !89, !noalias !4038
  %i.el = load <2 x i64>, ptr %i.dy, align 8, !tbaa !153, !noalias !4038
  store <2 x i64> %i.el, ptr %i.dd, align 8, !tbaa !153, !noalias !4038
  br label %bb.am

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i176
  %i.em = load i64, ptr %i.dc, align 8, !tbaa !153, !noalias !4038
  store ptr %i.ed, ptr %6, align 8, !tbaa !89, !noalias !4038
  %i.en = load <2 x i64>, ptr %i.dy, align 8, !tbaa !153, !noalias !4038
  store <2 x i64> %i.en, ptr %i.dd, align 8, !tbaa !153, !noalias !4038
  %.not.i.i177 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i177, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.eb, ptr %2, align 8, !tbaa !89, !noalias !4038
  store i64 %i.em, ptr %i.dr, align 8, !tbaa !153, !noalias !4038
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.dr, ptr %2, align 8, !tbaa !89, !noalias !4038
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.am, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.eo = phi ptr [ %.pre.i.i183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.eb, %bb.al ], [ %i.dr, %bb.am ]
  store i64 0, ptr %i.dy, align 8, !tbaa !152, !noalias !4038
  store i8 0, ptr %i.eo, align 1, !tbaa !153, !noalias !4038
  %i.ep = load ptr, ptr %2, align 8, !tbaa !89, !noalias !4038 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.dr
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  call void @_ZdlPv(ptr noundef %i.ep) #47, !noalias !4038
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46, !noalias !4038
  %i.er = load ptr, ptr %i.q, align 8, !tbaa !3130, !noalias !4038 ; 7 uses
  %.promoted.i.i180 = load ptr, ptr %i.o, align 8, !tbaa !3131, !noalias !4038 ; 3 uses
  %i.es = icmp ult ptr %.promoted.i.i180, %i.er
  br i1 %i.es, label %.lr.ph.i.i181, label %.loopexit

.lr.ph.i.i181:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i179, %bb.an
  %i.et = phi ptr [ %i.ex, %bb.an ], [ %.promoted.i.i180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i179 ] ; 3 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !153, !noalias !4038
  %i.ev = sext i8 %i.eu to i32
  %i.ew = call i32 @isspace(i32 noundef %i.ev) #51, !noalias !4038
  %.not.i14.i = icmp eq i32 %i.ew, 0
  br i1 %.not.i14.i, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i181
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 1 ; 4 uses
  store ptr %i.ex, ptr %i.o, align 8, !tbaa !3131, !noalias !4038
  %exitcond.not.i.i182 = icmp eq ptr %i.ex, %i.er
  br i1 %exitcond.not.i.i182, label %.loopexit, label %.lr.ph.i.i181, !llvm.loop !3133

bb.ao:                                            ; preds = %.noexc.i.i185, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit:                                        ; preds = %.lr.ph.i.i181, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i179
  %i.ez = phi ptr [ %.promoted.i.i180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i179 ], [ %i.et, %.lr.ph.i.i181 ], [ %i.ex, %bb.an ] ; 5 uses
  %i.fa = icmp ult ptr %i.ez, %i.er
  br i1 %i.fa, label %bb.ap, label %bb.cb

bb.ap:                                            ; preds = %.loopexit
  %i.fb = load i8, ptr %i.ez, align 1, !tbaa !153, !noalias !4038
  %i.fc = icmp eq i8 %i.fb, 91
  br i1 %i.fc, label %bb.aq, label %bb.bi

bb.aq:                                            ; preds = %bb.ap
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 1 ; 3 uses
  store ptr %i.fd, ptr %i.o, align 8, !tbaa !3131, !noalias !4038
  %i.fe = icmp ult ptr %i.fd, %i.er
  br i1 %i.fe, label %.lr.ph.i.i169, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit172

.lr.ph.i.i169:                                    ; preds = %bb.aq, %bb.ar
  %i.ff = phi ptr [ %i.fj, %bb.ar ], [ %i.fd, %bb.aq ] ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !153, !noalias !4038
  %i.fh = sext i8 %i.fg to i32
  %i.fi = call i32 @isspace(i32 noundef %i.fh) #51, !noalias !4038
  %.not.i.i170 = icmp eq i32 %i.fi, 0
  br i1 %.not.i.i170, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit172, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i169
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 1 ; 3 uses
  store ptr %i.fj, ptr %i.o, align 8, !tbaa !3131, !noalias !4038
  %exitcond.not.i.i171 = icmp eq ptr %i.fj, %i.er
  br i1 %exitcond.not.i.i171, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit172, label %.lr.ph.i.i169, !llvm.loop !3133

_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit172: ; preds = %.lr.ph.i.i169, %bb.ar, %bb.aq
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.as

bb.as:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit172
  %i.fm = phi ptr [ %i.gz, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144 ], [ null, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit172 ] ; 6 uses
  %i.fn = phi ptr [ %i.ha, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144 ], [ null, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit172 ] ; 4 uses
  %i.fo = phi ptr [ %i.hb, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144 ], [ null, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit172 ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46, !noalias !4038
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_19WKTParser9ParseNodeEv(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(28) %1)
          to label %bb.at unwind label %bb.au, !noalias !4038, !inline_history !4042

bb.at:                                            ; preds = %bb.as
  %.val15.i = load ptr, ptr %8, align 8, !noalias !4038 ; 4 uses
  %.not246 = icmp eq ptr %.val15.i, null
  %i.fp = ptrtoint ptr %.val15.i to i64           ; 2 uses
  br i1 %.not246, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147, label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.fq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.fo, ptr %7, align 8
  br label %bb.bg

bb.av:                                            ; preds = %bb.at
  %.not.i.i148 = icmp eq ptr %i.fn, %i.fm
  br i1 %.not.i.i148, label %bb.aw, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread216

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread216: ; preds = %bb.av
  store i64 %i.fp, ptr %i.fn, align 8, !tbaa !3134, !noalias !4038
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  store ptr %i.fr, ptr %i.fk, align 8, !tbaa !3142, !noalias !4038
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread

bb.aw:                                            ; preds = %bb.av
  %i.fs = ptrtoint ptr %i.fm to i64               ; 3 uses
  %i.ft = ptrtoint ptr %i.fo to i64               ; 3 uses
  %i.fu = sub i64 %i.fs, %i.ft                    ; 3 uses
  %i.fv = icmp eq i64 %i.fu, 9223372036854775800
  br i1 %i.fv, label %bb.ax, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i151

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.fo, ptr %7, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
          to label %.noexc164 unwind label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111.loopexit.split-lp

.noexc164:                                        ; preds = %bb.ax
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i151: ; preds = %bb.aw
  %i.fw = ashr exact i64 %i.fu, 3                 ; 3 uses
  %i.fx = icmp eq ptr %i.fm, %i.fo                ; 2 uses
  %.sroa.speculated.i.i.i.i152 = select i1 %i.fx, i64 1, i64 %i.fw
  %i.fy = add nsw i64 %.sroa.speculated.i.i.i.i152, %i.fw ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fw
  %i.ga = call i64 @llvm.umin.i64(i64 %i.fy, i64 1152921504606846975)
  %i.gb = select i1 %i.fz, i64 1152921504606846975, i64 %i.ga ; 3 uses
  %.not.i.i.i.i153 = icmp ne i64 %i.gb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i153), !noalias !4038
  %i.gc = shl nuw nsw i64 %i.gb, 3
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #48
          to label %.noexc165 unwind label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111.loopexit ; 11 uses

.noexc165:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i151
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fu
  store i64 %i.fp, ptr %i.ge, align 8, !tbaa !3134, !noalias !4038
  store ptr null, ptr %8, align 8, !tbaa !3134, !noalias !4038
  br i1 %i.fx, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i160, label %.lr.ph.i.i.i.i.i.i.i155.preheader

.lr.ph.i.i.i.i.i.i.i155.preheader:                ; preds = %.noexc165
  %16 = add i64 %i.fs, -8
  %17 = sub i64 %16, %i.ft                        ; 2 uses
  %i.gf = lshr i64 %17, 3
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 2 uses
  %min.iters.check491 = icmp ult i64 %17, 56
  br i1 %min.iters.check491, label %.lr.ph.i.i.i.i.i.i.i155.preheader506, label %vector.memcheck482

vector.memcheck482:                               ; preds = %.lr.ph.i.i.i.i.i.i.i155.preheader
  %scevgep483 = getelementptr i8, ptr %i.gd, i64 8
  %i.gh = add i64 %i.fs, -8
  %i.gi = sub i64 %i.gh, %i.ft
  %i.gj = and i64 %i.gi, -8                       ; 2 uses
  %scevgep484 = getelementptr i8, ptr %scevgep483, i64 %i.gj
  %scevgep485 = getelementptr i8, ptr %i.fo, i64 8
  %scevgep486 = getelementptr i8, ptr %scevgep485, i64 %i.gj
  %bound0487 = icmp ult ptr %i.gd, %scevgep486
  %bound1488 = icmp ult ptr %i.fo, %scevgep484
  %found.conflict489 = and i1 %bound0487, %bound1488
  br i1 %found.conflict489, label %.lr.ph.i.i.i.i.i.i.i155.preheader506, label %vector.ph492

vector.ph492:                                     ; preds = %vector.memcheck482
  %n.vec494 = and i64 %i.gg, 4611686018427387900  ; 3 uses
  %i.gk = shl i64 %n.vec494, 3                    ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gd, i64 %i.gk  ; 2 uses
  %i.gm = getelementptr i8, ptr %i.fo, i64 %i.gk
  br label %vector.body495

vector.body495:                                   ; preds = %vector.body495, %vector.ph492
  %index496 = phi i64 [ 0, %vector.ph492 ], [ %index.next501, %vector.body495 ] ; 2 uses
  %i.gn = shl i64 %index496, 3                    ; 2 uses
  %next.gep497 = getelementptr i8, ptr %i.gd, i64 %i.gn ; 2 uses
  %next.gep498 = getelementptr i8, ptr %i.fo, i64 %i.gn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4043), !noalias !4038
  call void @llvm.experimental.noalias.scope.decl(metadata !4046), !noalias !4038
  %i.go = getelementptr i8, ptr %next.gep498, i64 16
  %wide.load499 = load <2 x i64>, ptr %next.gep498, align 8, !tbaa !3134, !alias.scope !4048, !noalias !4051
  %wide.load500 = load <2 x i64>, ptr %i.go, align 8, !tbaa !3134, !alias.scope !4048, !noalias !4051
  %i.gp = getelementptr i8, ptr %next.gep497, i64 16
  store <2 x i64> %wide.load499, ptr %next.gep497, align 8, !tbaa !3134, !alias.scope !4052, !noalias !4054
  store <2 x i64> %wide.load500, ptr %i.gp, align 8, !tbaa !3134, !alias.scope !4052, !noalias !4054
  %i.gq = getelementptr i8, ptr %next.gep498, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep498, align 8, !tbaa !3134, !alias.scope !4048, !noalias !4051
  store <2 x ptr> splat (ptr null), ptr %i.gq, align 8, !tbaa !3134, !alias.scope !4048, !noalias !4051
  %index.next501 = add nuw i64 %index496, 4       ; 2 uses
  %i.gr = icmp eq i64 %index.next501, %n.vec494
  br i1 %i.gr, label %middle.block502, label %vector.body495, !llvm.loop !4055

middle.block502:                                  ; preds = %vector.body495
  %cmp.n503 = icmp eq i64 %i.gg, %n.vec494
  br i1 %cmp.n503, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i160, label %.lr.ph.i.i.i.i.i.i.i155.preheader506

.lr.ph.i.i.i.i.i.i.i155.preheader506:             ; preds = %vector.memcheck482, %.lr.ph.i.i.i.i.i.i.i155.preheader, %middle.block502
  %.03.i.i.i.i.i.i.i156.ph = phi ptr [ %i.gd, %vector.memcheck482 ], [ %i.gd, %.lr.ph.i.i.i.i.i.i.i155.preheader ], [ %i.gl, %middle.block502 ]
  %.092.i.i.i.i.i.i.i157.ph = phi ptr [ %i.fo, %vector.memcheck482 ], [ %i.fo, %.lr.ph.i.i.i.i.i.i.i155.preheader ], [ %i.gm, %middle.block502 ]
  br label %.lr.ph.i.i.i.i.i.i.i155

.lr.ph.i.i.i.i.i.i.i155:                          ; preds = %.lr.ph.i.i.i.i.i.i.i155.preheader506, %.lr.ph.i.i.i.i.i.i.i155
  %.03.i.i.i.i.i.i.i156 = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i.i.i155 ], [ %.03.i.i.i.i.i.i.i156.ph, %.lr.ph.i.i.i.i.i.i.i155.preheader506 ] ; 2 uses
  %.092.i.i.i.i.i.i.i157 = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i.i.i155 ], [ %.092.i.i.i.i.i.i.i157.ph, %.lr.ph.i.i.i.i.i.i.i155.preheader506 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4043), !noalias !4038
  call void @llvm.experimental.noalias.scope.decl(metadata !4046), !noalias !4038
  %.val.i.i.i.i.i.i.i.i.i.i.i.i158 = load i64, ptr %.092.i.i.i.i.i.i.i157, align 8, !tbaa !3134, !alias.scope !4046, !noalias !4051
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i158, ptr %.03.i.i.i.i.i.i.i156, align 8, !tbaa !3134, !alias.scope !4043, !noalias !4056
  store ptr null, ptr %.092.i.i.i.i.i.i.i157, align 8, !tbaa !3134, !alias.scope !4046, !noalias !4051
  %i.gs = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i157, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i156, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i159 = icmp eq ptr %i.gs, %i.fm
  br i1 %.not.i.i.i.i.i.i.i159, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i160, label %.lr.ph.i.i.i.i.i.i.i155, !llvm.loop !4057

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i160: ; preds = %.lr.ph.i.i.i.i.i.i.i155, %middle.block502, %.noexc165
  %.0.lcssa.i.i.i.i.i.i.i161 = phi ptr [ %i.gd, %.noexc165 ], [ %i.gl, %middle.block502 ], [ %i.gt, %.lr.ph.i.i.i.i.i.i.i155 ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i161, i64 8 ; 3 uses
  %.not.i28.i.i.i162 = icmp eq ptr %i.fo, null
  br i1 %.not.i28.i.i.i162, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit166, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i160
  call void @_ZdlPv(ptr noundef nonnull %i.fo) #47, !noalias !4038
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit166

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit166: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i160, %bb.ay
  store ptr %i.gu, ptr %i.fk, align 8, !tbaa !3142, !noalias !4038
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gb ; 3 uses
  store ptr %i.gv, ptr %i.fl, align 8, !tbaa !4058, !noalias !4038
  %.pr = load ptr, ptr %8, align 8, !tbaa !3134, !noalias !4038 ; 3 uses
  %.not.i145 = icmp eq ptr %.pr, null
  br i1 %.not.i145, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread, label %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i146

_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i146: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit166
  %i.gw = load ptr, ptr %.pr, align 8, !tbaa !412, !noalias !4038
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !4038
  call void %i.gy(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %.pr) #46, !noalias !4038, !inline_history !4059
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147: ; preds = %bb.at
  store ptr %i.fo, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46, !noalias !4038
  br label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread: ; preds = %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i146, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit166, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread216
  %i.gz = phi ptr [ %i.fm, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread216 ], [ %i.gv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit166 ], [ %i.gv, %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i146 ] ; 2 uses
  %i.ha = phi ptr [ %i.fr, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread216 ], [ %i.gu, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit166 ], [ %i.gu, %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i146 ] ; 2 uses
  %i.hb = phi ptr [ %i.fo, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread216 ], [ %i.gd, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit166 ], [ %i.gd, %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i146 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46, !noalias !4038
  %i.hc = load ptr, ptr %i.o, align 8, !tbaa !3131, !noalias !4038 ; 3 uses
  %i.hd = load ptr, ptr %i.q, align 8, !tbaa !3130, !noalias !4038 ; 3 uses
  %i.he = icmp ult ptr %i.hc, %i.hd
  br i1 %i.he, label %bb.az, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread.loopexit

bb.az:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread
  %i.hf = load i8, ptr %i.hc, align 1, !tbaa !153, !noalias !4038
  %i.hg = icmp eq i8 %i.hf, 44
  br i1 %i.hg, label %bb.ba, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 1 ; 3 uses
  store ptr %i.hh, ptr %i.o, align 8, !tbaa !3131, !noalias !4038
  %i.hi = icmp ult ptr %i.hh, %i.hd
  br i1 %i.hi, label %.lr.ph.i.i141, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144

.lr.ph.i.i141:                                    ; preds = %bb.ba, %bb.bb
  %i.hj = phi ptr [ %i.hn, %bb.bb ], [ %i.hh, %bb.ba ] ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !153, !noalias !4038
  %i.hl = sext i8 %i.hk to i32
  %i.hm = call i32 @isspace(i32 noundef %i.hl) #51, !noalias !4038
  %.not.i.i142 = icmp eq i32 %i.hm, 0
  br i1 %.not.i.i142, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i141
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 1 ; 3 uses
  store ptr %i.hn, ptr %i.o, align 8, !tbaa !3131, !noalias !4038
  %exitcond.not.i.i143 = icmp eq ptr %i.hn, %i.hd
  br i1 %exitcond.not.i.i143, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144, label %.lr.ph.i.i141, !llvm.loop !3133

_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144: ; preds = %.lr.ph.i.i141, %bb.bb, %bb.ba
  br label %bb.as, !llvm.loop !4060

_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread.loopexit: ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147.thread, %bb.az
  store ptr %i.hb, ptr %7, align 8
  br label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread

_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread: ; preds = %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread.loopexit, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147
  %i.ho = phi ptr [ %i.gz, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread.loopexit ], [ %i.fm, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147 ]
  %i.hp = phi ptr [ %i.ha, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread.loopexit ], [ %i.fn, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147 ]
  %i.hq = phi ptr [ %i.hb, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread.loopexit ], [ %i.fo, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit147 ]
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_19WKTParser5MatchEc(ptr noundef nonnull align 8 dereferenceable(28) %1, i8 noundef signext 93)
          to label %bb.bc unwind label %bb.ao, !noalias !4038, !inline_history !4042

bb.bc:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit144.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.hr = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #48
          to label %.noexc137 unwind label %bb.bh ; 9 uses

.noexc137:                                        ; preds = %bb.bc
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.ht = load ptr, ptr %6, align 8, !tbaa !89, !noalias !4061 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.dc
  br i1 %i.hu, label %bb.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

bb.bd:                                            ; preds = %.noexc137
  %i.hv = load i64, ptr %i.dd, align 8, !tbaa !152, !noalias !4061 ; 3 uses
  %i.hw = icmp ult i64 %i.hv, 16
  call void @llvm.assume(i1 %i.hw), !noalias !4038
  %i.hx = add nuw nsw i64 %i.hv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hs, ptr noundef nonnull align 8 dereferenceable(1) %i.dc, i64 %i.hx, i1 false), !noalias !4061
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %.noexc137
  %i.hy = load i64, ptr %i.dc, align 8, !tbaa !153, !noalias !4061
  store i64 %i.hy, ptr %i.hs, align 8, !tbaa !153, !noalias !4061
  %.pre.i133 = load i64, ptr %i.dd, align 8, !tbaa !152, !noalias !4061
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i134: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131, %bb.bd
  %i.hz = phi ptr [ %i.hs, %bb.bd ], [ %i.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ] ; 2 uses
  %i.ia = phi i64 [ %i.hv, %bb.bd ], [ %.pre.i133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ] ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i32 0, ptr %i.ib, align 8, !tbaa !3136, !noalias !4061
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_110WKTKeywordE, i64 16), ptr %i.hr, align 8, !tbaa !412, !noalias !4061
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hr, i64 16 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hr, i64 32 ; 3 uses
  store ptr %i.id, ptr %i.ic, align 8, !tbaa !151, !noalias !4061
  %i.ie = icmp eq ptr %i.hz, %i.hs
  br i1 %i.ie, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i134
  %i.if = icmp ult i64 %i.ia, 16
  call void @llvm.assume(i1 %i.if), !noalias !4038
  %i.ig = add nuw nsw i64 %i.ia, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.id, ptr noundef nonnull align 8 dereferenceable(1) %i.hs, i64 %i.ig, i1 false), !noalias !4061
  br label %bb.bf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i134
  store ptr %i.hz, ptr %i.ic, align 8, !tbaa !89, !noalias !4061
  %i.ih = load i64, ptr %i.hs, align 8, !tbaa !153, !noalias !4061
  store i64 %i.ih, ptr %i.id, align 8, !tbaa !153, !noalias !4061
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135, %bb.be
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  store i64 %i.ia, ptr %i.ii, align 8, !tbaa !152, !noalias !4061
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hr, i64 48
  store ptr %i.hq, ptr %i.ij, align 8, !tbaa !3140, !noalias !4061
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  store ptr %i.hp, ptr %i.ik, align 8, !tbaa !3142, !noalias !4061
  %i.il = getelementptr inbounds nuw i8, ptr %i.hr, i64 64
  store ptr %i.ho, ptr %i.il, align 8, !tbaa !4058, !noalias !4061
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.ch

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i151
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.fo, ptr %7, align 8
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111.loopexit.split-lp: ; preds = %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111: ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111.loopexit.split-lp ]
  %i.im = load ptr, ptr %.val15.i, align 8, !tbaa !412, !noalias !4038
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !noalias !4038
  call void %i.io(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %.val15.i) #46, !noalias !4038, !inline_history !4059
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111, %bb.au
  %.pn10.i = phi { ptr, i32 } [ %lpad.phi, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit111 ], [ %i.fq, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46, !noalias !4038
  br label %bb.cg

bb.bh:                                            ; preds = %bb.bc
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bi:                                            ; preds = %bb.ap
  %i.iq = load i8, ptr %i.ez, align 1, !tbaa !153, !noalias !4038
  %i.ir = icmp eq i8 %i.iq, 40
  br i1 %i.ir, label %bb.bj, label %bb.cb

bb.bj:                                            ; preds = %bb.bi
  %i.is = getelementptr inbounds nuw i8, ptr %i.ez, i64 1 ; 3 uses
  store ptr %i.is, ptr %i.o, align 8, !tbaa !3131, !noalias !4038
  %i.it = icmp ult ptr %i.is, %i.er
  br i1 %i.it, label %.lr.ph.i.i105, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit108

.lr.ph.i.i105:                                    ; preds = %bb.bj, %bb.bk
  %i.iu = phi ptr [ %i.iy, %bb.bk ], [ %i.is, %bb.bj ] ; 2 uses
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !153, !noalias !4038
  %i.iw = sext i8 %i.iv to i32
  %i.ix = call i32 @isspace(i32 noundef %i.iw) #51, !noalias !4038
  %.not.i.i106 = icmp eq i32 %i.ix, 0
  br i1 %.not.i.i106, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit108, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i105
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 1 ; 3 uses
  store ptr %i.iy, ptr %i.o, align 8, !tbaa !3131, !noalias !4038
  %exitcond.not.i.i107 = icmp eq ptr %i.iy, %i.er
  br i1 %exitcond.not.i.i107, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit108, label %.lr.ph.i.i105, !llvm.loop !3133

_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit108: ; preds = %.lr.ph.i.i105, %bb.bk, %bb.bj
  %i.iz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit108
  %i.jb = phi ptr [ %i.ko, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit ], [ null, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit108 ] ; 6 uses
  %i.jc = phi ptr [ %i.kp, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit ], [ null, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit108 ] ; 4 uses
  %i.jd = phi ptr [ %i.kq, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit ], [ null, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit108 ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46, !noalias !4038
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_19WKTParser9ParseNodeEv(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(28) %1)
          to label %bb.bm unwind label %bb.bn, !noalias !4038, !inline_history !4042

bb.bm:                                            ; preds = %bb.bl
  %.val.i14 = load ptr, ptr %9, align 8, !noalias !4038 ; 4 uses
  %.not = icmp eq ptr %.val.i14, null
  %i.je = ptrtoint ptr %.val.i14 to i64           ; 2 uses
  br i1 %.not, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99, label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.jf = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jd, ptr %7, align 8
  br label %bb.bz

bb.bo:                                            ; preds = %bb.bm
  %.not.i.i100 = icmp eq ptr %i.jc, %i.jb
  br i1 %.not.i.i100, label %bb.bp, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread225

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread225: ; preds = %bb.bo
  store i64 %i.je, ptr %i.jc, align 8, !tbaa !3134, !noalias !4038
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 2 uses
  store ptr %i.jg, ptr %i.iz, align 8, !tbaa !3142, !noalias !4038
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread

bb.bp:                                            ; preds = %bb.bo
  %i.jh = ptrtoint ptr %i.jb to i64               ; 3 uses
  %i.ji = ptrtoint ptr %i.jd to i64               ; 3 uses
  %i.jj = sub i64 %i.jh, %i.ji                    ; 3 uses
  %i.jk = icmp eq i64 %i.jj, 9223372036854775800
  br i1 %i.jk, label %bb.bq, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bq:                                            ; preds = %bb.bp
  store ptr %i.jd, ptr %7, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
          to label %.noexc101 unwind label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit64.loopexit.split-lp

.noexc101:                                        ; preds = %bb.bq
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bp
  %i.jl = ashr exact i64 %i.jj, 3                 ; 3 uses
  %i.jm = icmp eq ptr %i.jb, %i.jd                ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.jm, i64 1, i64 %i.jl
  %i.jn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.jl ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %i.jl
  %i.jp = call i64 @llvm.umin.i64(i64 %i.jn, i64 1152921504606846975)
  %i.jq = select i1 %i.jo, i64 1152921504606846975, i64 %i.jp ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.jq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i), !noalias !4038
  %i.jr = shl nuw nsw i64 %i.jq, 3
  %i.js = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jr) #48
          to label %.noexc102 unwind label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit64.loopexit ; 11 uses

.noexc102:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jj
  store i64 %i.je, ptr %i.jt, align 8, !tbaa !3134, !noalias !4038
  store ptr null, ptr %9, align 8, !tbaa !3134, !noalias !4038
  br i1 %i.jm, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc102
  %18 = add i64 %i.jh, -8
  %19 = sub i64 %18, %i.ji                        ; 2 uses
  %i.ju = lshr i64 %19, 3
  %i.jv = add nuw nsw i64 %i.ju, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %19, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader529, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.js, i64 8
  %i.jw = add i64 %i.jh, -8
  %i.jx = sub i64 %i.jw, %i.ji
  %i.jy = and i64 %i.jx, -8                       ; 2 uses
  %scevgep476 = getelementptr i8, ptr %scevgep, i64 %i.jy
  %scevgep477 = getelementptr i8, ptr %i.jd, i64 8
  %scevgep478 = getelementptr i8, ptr %scevgep477, i64 %i.jy
  %bound0 = icmp ult ptr %i.js, %scevgep478
  %bound1 = icmp ult ptr %i.jd, %scevgep476
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader529, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.jv, 4611686018427387900     ; 3 uses
  %i.jz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ka = getelementptr i8, ptr %i.js, i64 %i.jz  ; 2 uses
  %i.kb = getelementptr i8, ptr %i.jd, i64 %i.jz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.js, i64 %i.kc ; 2 uses
  %next.gep479 = getelementptr i8, ptr %i.jd, i64 %i.kc ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4064), !noalias !4038
  call void @llvm.experimental.noalias.scope.decl(metadata !4067), !noalias !4038
  %i.kd = getelementptr i8, ptr %next.gep479, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep479, align 8, !tbaa !3134, !alias.scope !4069, !noalias !4072
  %wide.load480 = load <2 x i64>, ptr %i.kd, align 8, !tbaa !3134, !alias.scope !4069, !noalias !4072
  %i.ke = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !3134, !alias.scope !4073, !noalias !4075
  store <2 x i64> %wide.load480, ptr %i.ke, align 8, !tbaa !3134, !alias.scope !4073, !noalias !4075
  %i.kf = getelementptr i8, ptr %next.gep479, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep479, align 8, !tbaa !3134, !alias.scope !4069, !noalias !4072
  store <2 x ptr> splat (ptr null), ptr %i.kf, align 8, !tbaa !3134, !alias.scope !4069, !noalias !4072
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kg = icmp eq i64 %index.next, %n.vec
  br i1 %i.kg, label %middle.block, label %vector.body, !llvm.loop !4076

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader529

.lr.ph.i.i.i.i.i.i.i.preheader529:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.i.i.i.ph = phi ptr [ %i.js, %vector.memcheck ], [ %i.js, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ka, %middle.block ]
  %.092.i.i.i.i.i.i.i.ph = phi ptr [ %i.jd, %vector.memcheck ], [ %i.jd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.kb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader529, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.i.i.i ], [ %.03.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader529 ] ; 2 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.kh, %.lr.ph.i.i.i.i.i.i.i ], [ %.092.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader529 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4064), !noalias !4038
  call void @llvm.experimental.noalias.scope.decl(metadata !4067), !noalias !4038
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !3134, !alias.scope !4067, !noalias !4072
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !3134, !alias.scope !4064, !noalias !4077
  store ptr null, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !3134, !alias.scope !4067, !noalias !4072
  %i.kh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.kh, %i.jb
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4078

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc102
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.js, %.noexc102 ], [ %i.ka, %middle.block ], [ %i.ki, %.lr.ph.i.i.i.i.i.i.i ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not.i28.i.i.i = icmp eq ptr %i.jd, null
  br i1 %.not.i28.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jd) #47, !noalias !4038
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit27.i.i.i, %bb.br
  store ptr %i.kj, ptr %i.iz, align 8, !tbaa !3142, !noalias !4038
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jq ; 3 uses
  store ptr %i.kk, ptr %i.ja, align 8, !tbaa !4058, !noalias !4038
  %.pr220 = load ptr, ptr %9, align 8, !tbaa !3134, !noalias !4038 ; 3 uses
  %.not.i97 = icmp eq ptr %.pr220, null
  br i1 %.not.i97, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread, label %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i98

_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i98: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit
  %i.kl = load ptr, ptr %.pr220, align 8, !tbaa !412, !noalias !4038
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !noalias !4038
  call void %i.kn(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %.pr220) #46, !noalias !4038, !inline_history !4059
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99: ; preds = %bb.bm
  store ptr %i.jd, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46, !noalias !4038
  br label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread: ; preds = %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i98, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread225
  %i.ko = phi ptr [ %i.jb, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread225 ], [ %i.kk, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ], [ %i.kk, %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i98 ] ; 2 uses
  %i.kp = phi ptr [ %i.jg, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread225 ], [ %i.kj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ], [ %i.kj, %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i98 ] ; 2 uses
  %i.kq = phi ptr [ %i.jd, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread225 ], [ %i.js, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12_GLOBAL__N_18WKTValueESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ], [ %i.js, %_ZNKSt14default_deleteIN6duckdb12_GLOBAL__N_18WKTValueEEclEPS2_.exit.i98 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46, !noalias !4038
  %i.kr = load ptr, ptr %i.o, align 8, !tbaa !3131, !noalias !4038 ; 3 uses
  %i.ks = load ptr, ptr %i.q, align 8, !tbaa !3130, !noalias !4038 ; 3 uses
  %i.kt = icmp ult ptr %i.kr, %i.ks
  br i1 %i.kt, label %bb.bs, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread.loopexit

bb.bs:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread
  %i.ku = load i8, ptr %i.kr, align 1, !tbaa !153, !noalias !4038
  %i.kv = icmp eq i8 %i.ku, 44
  br i1 %i.kv, label %bb.bt, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread.loopexit

bb.bt:                                            ; preds = %bb.bs
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 1 ; 3 uses
  store ptr %i.kw, ptr %i.o, align 8, !tbaa !3131, !noalias !4038
  %i.kx = icmp ult ptr %i.kw, %i.ks
  br i1 %i.kx, label %.lr.ph.i.i94, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit

.lr.ph.i.i94:                                     ; preds = %bb.bt, %bb.bu
  %i.ky = phi ptr [ %i.lc, %bb.bu ], [ %i.kw, %bb.bt ] ; 2 uses
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !153, !noalias !4038
  %i.la = sext i8 %i.kz to i32
  %i.lb = call i32 @isspace(i32 noundef %i.la) #51, !noalias !4038
  %.not.i.i95 = icmp eq i32 %i.lb, 0
  br i1 %.not.i.i95, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i94
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 1 ; 3 uses
  store ptr %i.lc, ptr %i.o, align 8, !tbaa !3131, !noalias !4038
  %exitcond.not.i.i96 = icmp eq ptr %i.lc, %i.ks
  br i1 %exitcond.not.i.i96, label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit, label %.lr.ph.i.i94, !llvm.loop !3133

_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit: ; preds = %.lr.ph.i.i94, %bb.bu, %bb.bt
  br label %bb.bl, !llvm.loop !4079

_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread.loopexit: ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99.thread, %bb.bs
  store ptr %i.kq, ptr %7, align 8
  br label %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread

_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread: ; preds = %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread.loopexit, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99
  %i.ld = phi ptr [ %i.ko, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread.loopexit ], [ %i.jb, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99 ]
  %i.le = phi ptr [ %i.kp, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread.loopexit ], [ %i.jc, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99 ]
  %i.lf = phi ptr [ %i.kq, %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread.loopexit ], [ %i.jd, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_18WKTValueESt14default_deleteIS2_EED2Ev.exit99 ]
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_19WKTParser5MatchEc(ptr noundef nonnull align 8 dereferenceable(28) %1, i8 noundef signext 41)
          to label %bb.bv unwind label %bb.ao, !noalias !4038, !inline_history !4042

bb.bv:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_19WKTParser8TryMatchEc.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.lg = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #48
          to label %.noexc90 unwind label %bb.ca  ; 9 uses

.noexc90:                                         ; preds = %bb.bv
  %i.lh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.li = load ptr, ptr %6, align 8, !tbaa !89, !noalias !4080 ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.dc
  br i1 %i.lj, label %bb.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

bb.bw:                                            ; preds = %.noexc90
  %i.lk = load i64, ptr %i.dd, align 8, !tbaa !152, !noalias !4080 ; 3 uses
  %i.ll = icmp ult i64 %i.lk, 16
  call void @llvm.assume(i1 %i.ll), !noalias !4038
  %i.lm = add nuw nsw i64 %i.lk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lh, ptr noundef nonnull align 8 dereferenceable(1) %i.dc, i64 %i.lm, i1 false), !noalias !4080
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %.noexc90
  %i.ln = load i64, ptr %i.dc, align 8, !tbaa !153, !noalias !4080
  store i64 %i.ln, ptr %i.lh, align 8, !tbaa !153, !noalias !4080
  %.pre.i86 = load i64, ptr %i.dd, align 8, !tbaa !152, !noalias !4080
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i87: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.bw
  %i.lo = phi ptr [ %i.lh, %bb.bw ], [ %i.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ] ; 2 uses
  %i.lp = phi i64 [ %i.lk, %bb.bw ], [ %.pre.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ] ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store i32 0, ptr %i.lq, align 8, !tbaa !3136, !noalias !4080
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_110WKTKeywordE, i64 16), ptr %i.lg, align 8, !tbaa !412, !noalias !4080
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lg, i64 16 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lg, i64 32 ; 3 uses
  store ptr %i.ls, ptr %i.lr, align 8, !tbaa !151, !noalias !4080
  %i.lt = icmp eq ptr %i.lo, %i.lh
  br i1 %i.lt, label %bb.bx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i87
  %i.lu = icmp ult i64 %i.lp, 16
  call void @llvm.assume(i1 %i.lu), !noalias !4038
  %i.lv = add nuw nsw i64 %i.lp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ls, ptr noundef nonnull align 8 dereferenceable(1) %i.lh, i64 %i.lv, i1 false), !noalias !4080
  br label %bb.by

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i87
  store ptr %i.lo, ptr %i.lr, align 8, !tbaa !89, !noalias !4080
  %i.lw = load i64, ptr %i.lh, align 8, !tbaa !153, !noalias !4080
  store i64 %i.lw, ptr %i.ls, align 8, !tbaa !153, !noalias !4080
  br label %bb.by

bb.by:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88, %bb.bx
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  store i64 %i.lp, ptr %i.lx, align 8, !tbaa !152, !noalias !4080
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
end_hunk_13
begin_hunk_14_@_ZN6duckdb17InternalExceptionC2IJRmRjS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKjS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueImEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3224
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !151
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !89   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !152  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !89
  %i.o = load i64, ptr %i.i, align 8, !tbaa !153
  store i64 %i.o, ptr %i.g, align 8, !tbaa !153
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !152
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !152
  store ptr %i.i, ptr %i.f, align 8, !tbaa !89
  store i64 0, ptr %i.q, align 8, !tbaa !152
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !118
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.pre11 = load ptr, ptr %.phi.trans.insert10, align 8, !tbaa !89 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.v = icmp eq ptr %.pre11, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre11) #47
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveIjJRKjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #47
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9

_ZN6duckdb20ExceptionFormatValueD2Ev.exit9:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  resume { ptr, i32 } %i.w
}

declare void @_ZNK6duckdb11LogicalType9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(680)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveIiJRKiS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  %i.a = load i32, ptr %3, align 4, !tbaa !3, !noalias !4197
  %i.b = sext i32 %i.a to i64
  call void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3224
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !151
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !152  ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.j, ptr %i.g, align 8, !tbaa !89
  %i.q = load i64, ptr %i.k, align 8, !tbaa !153
  store i64 %i.q, ptr %i.i, align 8, !tbaa !153
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !152
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.r = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.r, ptr %i.t, align 8, !tbaa !152
  store ptr %i.k, ptr %i.h, align 8, !tbaa !89
  store i64 0, ptr %i.s, align 8, !tbaa !152
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.v, ptr %i.c, align 8, !tbaa !118
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.pre11 = load ptr, ptr %.phi.trans.insert10, align 8, !tbaa !89 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.x = icmp eq ptr %.pre11, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre11) #47
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveIiJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !89  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #47
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9

_ZN6duckdb20ExceptionFormatValueD2Ev.exit9:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15DecimalToString13FormatDecimalIsEEvT_hhPcm(i16 noundef signext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = ptrtoaddr ptr %3 to i64                    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 5 uses
  %i.b = icmp slt i16 %0, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sub i16 0, %0
  store i8 45, ptr %3, align 1, !tbaa !153
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i16 [ %i.c, %bb.b ], [ %0, %bb.a ]    ; 5 uses
  %i.d = icmp eq i8 %2, 0
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ugt i16 %.0, 99
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.01722.i = phi i16 [ %i.j, %.lr.ph.i ], [ %.0, %bb.d ] ; 3 uses
  %.01821.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = urem i16 %.01722.i, 100
  %i.g = shl nuw nsw i16 %i.f, 1
  %i.h = zext nneg i16 %i.g to i32
  %i.i = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %i.h) ; 2 uses
  %i.j = udiv i16 %.01722.i, 100                  ; 2 uses
  %i.k = add i32 %i.i, 1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !153
  %i.o = getelementptr inbounds i8, ptr %.01821.i, i64 -1
  store i8 %i.n, ptr %i.o, align 1, !tbaa !153
  %i.p = zext i32 %i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !153
  %i.s = getelementptr inbounds i8, ptr %.01821.i, i64 -2 ; 3 uses
  store i8 %i.r, ptr %i.s, align 1, !tbaa !153
  %i.t = icmp ugt i16 %.01722.i, 9999
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !4200

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %.017.lcssa20.i = phi i16 [ %.0, %bb.d ], [ %i.j, %.lr.ph.i ] ; 2 uses
  %.018.lcssa.i = phi ptr [ %i.a, %bb.d ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %i.u = zext nneg i16 %.017.lcssa20.i to i32     ; 2 uses
  %i.v = icmp samesign ult i16 %.017.lcssa20.i, 10
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.w = or disjoint i32 %i.u, 48
  %i.x = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIciLb0EE7ConvertEi(i32 noundef %i.w)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.y = shl nuw nsw i32 %i.u, 1
  %i.z = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %i.y) ; 2 uses
  %i.aa = add i32 %i.z, 1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !153
  %i.ae = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 -1
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !153
  %i.af = zext i32 %i.z to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !153
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit

_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit: ; preds = %bb.e, %bb.f
  %.sink29.i = phi i64 [ -2, %bb.f ], [ -1, %bb.e ]
  %.sink.i = phi i8 [ %i.ah, %bb.f ], [ %i.x, %bb.e ]
  %i.ai = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 %.sink29.i
  store i8 %.sink.i, ptr %i.ai, align 1, !tbaa !153
  br label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.aj = zext i8 %2 to i64                       ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !108
  %i.am = trunc i64 %i.al to i16                  ; 2 uses
  %i.an = urem i16 %.0, %i.am                     ; 3 uses
  %i.ao = udiv i16 %.0, %i.am                     ; 3 uses
  %i.ap = icmp ugt i16 %i.an, 99
  br i1 %i.ap, label %.lr.ph.i30, label %._crit_edge.i25

.lr.ph.i30:                                       ; preds = %bb.g, %.lr.ph.i30
  %.01722.i31 = phi i16 [ %i.au, %.lr.ph.i30 ], [ %i.an, %bb.g ] ; 3 uses
  %.01821.i32 = phi ptr [ %i.bd, %.lr.ph.i30 ], [ %i.a, %bb.g ] ; 2 uses
  %i.aq = urem i16 %.01722.i31, 100
  %i.ar = shl nuw nsw i16 %i.aq, 1
  %i.as = zext nneg i16 %i.ar to i32
  %i.at = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %i.as) ; 2 uses
  %i.au = udiv i16 %.01722.i31, 100               ; 2 uses
  %i.av = add i32 %i.at, 1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !153
  %i.az = getelementptr inbounds i8, ptr %.01821.i32, i64 -1
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !153
  %i.ba = zext i32 %i.at to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !153
  %i.bd = getelementptr inbounds i8, ptr %.01821.i32, i64 -2 ; 3 uses
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !153
  %i.be = icmp ugt i16 %.01722.i31, 9999
  br i1 %i.be, label %.lr.ph.i30, label %._crit_edge.i25, !llvm.loop !4200

._crit_edge.i25:                                  ; preds = %.lr.ph.i30, %bb.g
  %.017.lcssa20.i26 = phi i16 [ %i.an, %bb.g ], [ %i.au, %.lr.ph.i30 ] ; 2 uses
  %.018.lcssa.i27 = phi ptr [ %i.a, %bb.g ], [ %i.bd, %.lr.ph.i30 ] ; 5 uses
  %.018.lcssa.i2755 = ptrtoaddr ptr %.018.lcssa.i27 to i64 ; 2 uses
  %i.bf = zext nneg i16 %.017.lcssa20.i26 to i32  ; 2 uses
  %i.bg = icmp samesign ult i16 %.017.lcssa20.i26, 10
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i25
  %i.bh = or disjoint i32 %i.bf, 48
  %i.bi = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIciLb0EE7ConvertEi(i32 noundef %i.bh)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit33

bb.i:                                             ; preds = %._crit_edge.i25
  %i.bj = shl nuw nsw i32 %i.bf, 1
  %i.bk = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %i.bj) ; 2 uses
  %i.bl = add i32 %i.bk, 1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !153
  %i.bp = getelementptr inbounds i8, ptr %.018.lcssa.i27, i64 -1
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !153
  %i.bq = zext i32 %i.bk to i64
  %i.br = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !153
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit33

_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit33: ; preds = %bb.h, %bb.i
  %.sink29.i28 = phi i64 [ -2, %bb.i ], [ -1, %bb.h ] ; 3 uses
  %.sink.i29 = phi i8 [ %i.bs, %bb.i ], [ %i.bi, %bb.h ]
  %i.bt = getelementptr inbounds i8, ptr %.018.lcssa.i27, i64 %.sink29.i28 ; 2 uses
  store i8 %.sink.i29, ptr %i.bt, align 1, !tbaa !153
  %i.bu = sub nsw i64 0, %i.aj
  %i.bv = getelementptr inbounds i8, ptr %i.a, i64 %i.bu
  %i.bw = icmp ugt ptr %i.bt, %i.bv
  br i1 %i.bw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit33
  %i.bx = add i64 %4, %5
  %i.by = add i64 %.018.lcssa.i2755, %i.aj
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %scevgep = getelementptr i8, ptr %.018.lcssa.i27, i64 %i.bz
  %i.ca = add i64 %.sink29.i28, %.018.lcssa.i2755
  %i.cb = add i64 %i.ca, %i.aj
  %i.cc = add i64 %4, %5
  %i.cd = sub i64 %i.cb, %i.cc
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %i.cd, i1 false), !tbaa !153
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit33
  %i.ce = phi i64 [ %.sink29.i28, %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit33 ], [ %i.bz, %.lr.ph.preheader ]
  %i.cf = getelementptr i8, ptr %.018.lcssa.i27, i64 %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -1 ; 3 uses
  store i8 46, ptr %i.cg, align 1, !tbaa !153
  %i.ch = icmp ugt i8 %1, %2
  br i1 %i.ch, label %bb.j, label %bb.m

bb.j:                                             ; preds = %._crit_edge
  %i.ci = icmp ugt i16 %i.ao, 99
  br i1 %i.ci, label %.lr.ph.i39, label %._crit_edge.i34

.lr.ph.i39:                                       ; preds = %bb.j, %.lr.ph.i39
  %.01722.i40 = phi i16 [ %i.cn, %.lr.ph.i39 ], [ %i.ao, %bb.j ] ; 3 uses
  %.01821.i41 = phi ptr [ %i.cw, %.lr.ph.i39 ], [ %i.cg, %bb.j ] ; 2 uses
  %i.cj = urem i16 %.01722.i40, 100
  %i.ck = shl nuw nsw i16 %i.cj, 1
  %i.cl = zext nneg i16 %i.ck to i32
  %i.cm = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %i.cl) ; 2 uses
  %i.cn = udiv i16 %.01722.i40, 100               ; 2 uses
  %i.co = add i32 %i.cm, 1
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !153
  %i.cs = getelementptr inbounds i8, ptr %.01821.i41, i64 -1
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !153
  %i.ct = zext i32 %i.cm to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !153
  %i.cw = getelementptr inbounds i8, ptr %.01821.i41, i64 -2 ; 3 uses
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !153
  %i.cx = icmp ugt i16 %.01722.i40, 9999
  br i1 %i.cx, label %.lr.ph.i39, label %._crit_edge.i34, !llvm.loop !4200

._crit_edge.i34:                                  ; preds = %.lr.ph.i39, %bb.j
  %.017.lcssa20.i35 = phi i16 [ %i.ao, %bb.j ], [ %i.cn, %.lr.ph.i39 ] ; 2 uses
  %.018.lcssa.i36 = phi ptr [ %i.cg, %bb.j ], [ %i.cw, %.lr.ph.i39 ] ; 2 uses
  %i.cy = zext nneg i16 %.017.lcssa20.i35 to i32  ; 2 uses
  %i.cz = icmp samesign ult i16 %.017.lcssa20.i35, 10
  br i1 %i.cz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i34
  %i.da = or disjoint i32 %i.cy, 48
  %i.db = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIciLb0EE7ConvertEi(i32 noundef %i.da)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit42

bb.l:                                             ; preds = %._crit_edge.i34
  %i.dc = shl nuw nsw i32 %i.cy, 1
  %i.dd = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjiLb0EE7ConvertEi(i32 noundef %i.dc) ; 2 uses
  %i.de = add i32 %i.dd, 1
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !153
  %i.di = getelementptr inbounds i8, ptr %.018.lcssa.i36, i64 -1
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !153
  %i.dj = zext i32 %i.dd to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !153
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit42

_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit42: ; preds = %bb.k, %bb.l
  %.sink29.i37 = phi i64 [ -2, %bb.l ], [ -1, %bb.k ]
  %.sink.i38 = phi i8 [ %i.dl, %bb.l ], [ %i.db, %bb.k ]
  %i.dm = getelementptr inbounds i8, ptr %.018.lcssa.i36, i64 %.sink29.i37
  store i8 %.sink.i38, ptr %i.dm, align 1, !tbaa !153
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit42, %_ZN6duckdb13NumericHelper14FormatUnsignedItEEPcT_S2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15DecimalToString13FormatDecimalIiEEvT_hhPcm(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = ptrtoaddr ptr %3 to i64                    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 5 uses
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sub nsw i32 0, %0
  store i8 45, ptr %3, align 1, !tbaa !153
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.b ], [ %0, %bb.a ]    ; 5 uses
  %i.d = icmp eq i8 %2, 0
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = icmp samesign ugt i32 %.0, 99
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.01720.i = phi i32 [ %i.h, %.lr.ph.i ], [ %.0, %bb.d ] ; 3 uses
  %.01819.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = urem i32 %.01720.i, 100
  %i.g = shl nuw nsw i32 %i.f, 1
  %i.h = udiv i32 %.01720.i, 100                  ; 2 uses
  %i.i = zext nneg i32 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !153
  %i.m = getelementptr inbounds i8, ptr %.01819.i, i64 -1
  store i8 %i.l, ptr %i.m, align 1, !tbaa !153
  %i.n = load i8, ptr %i.j, align 1, !tbaa !153
  %i.o = getelementptr inbounds i8, ptr %.01819.i, i64 -2 ; 3 uses
  store i8 %i.n, ptr %i.o, align 1, !tbaa !153
  %i.p = icmp samesign ugt i32 %.01720.i, 9999
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !4201

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %.018.lcssa.i = phi ptr [ %i.a, %bb.d ], [ %i.o, %.lr.ph.i ] ; 2 uses
  %.017.lcssa.i = phi i32 [ %.0, %bb.d ], [ %i.h, %.lr.ph.i ] ; 3 uses
  %i.q = icmp samesign ult i32 %.017.lcssa.i, 10
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.r = or disjoint i32 %.017.lcssa.i, 48
  %i.s = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIcjLb0EE7ConvertEj(i32 noundef %i.r)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.t = shl nuw nsw i32 %.017.lcssa.i, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !153
  %i.y = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 -1
  store i8 %i.x, ptr %i.y, align 1, !tbaa !153
  %i.z = load i8, ptr %i.v, align 1, !tbaa !153
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit

_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit: ; preds = %bb.e, %bb.f
  %.sink26.i = phi i64 [ -2, %bb.f ], [ -1, %bb.e ]
  %.sink.i = phi i8 [ %i.z, %bb.f ], [ %i.s, %bb.e ]
  %i.aa = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 %.sink26.i
  store i8 %.sink.i, ptr %i.aa, align 1, !tbaa !153
  br label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.ab = zext i8 %2 to i64                       ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !108
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = urem i32 %.0, %i.ae                     ; 3 uses
  %i.ag = udiv i32 %.0, %i.ae                     ; 3 uses
  %i.ah = icmp samesign ugt i32 %i.af, 99
  br i1 %i.ah, label %.lr.ph.i30, label %._crit_edge.i25

.lr.ph.i30:                                       ; preds = %bb.g, %.lr.ph.i30
  %.01720.i31 = phi i32 [ %i.ak, %.lr.ph.i30 ], [ %i.af, %bb.g ] ; 3 uses
  %.01819.i32 = phi ptr [ %i.ar, %.lr.ph.i30 ], [ %i.a, %bb.g ] ; 2 uses
  %i.ai = urem i32 %.01720.i31, 100
  %i.aj = shl nuw nsw i32 %i.ai, 1
  %i.ak = udiv i32 %.01720.i31, 100               ; 2 uses
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !153
  %i.ap = getelementptr inbounds i8, ptr %.01819.i32, i64 -1
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !153
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !153
  %i.ar = getelementptr inbounds i8, ptr %.01819.i32, i64 -2 ; 3 uses
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !153
  %i.as = icmp samesign ugt i32 %.01720.i31, 9999
  br i1 %i.as, label %.lr.ph.i30, label %._crit_edge.i25, !llvm.loop !4201

._crit_edge.i25:                                  ; preds = %.lr.ph.i30, %bb.g
  %.018.lcssa.i26 = phi ptr [ %i.a, %bb.g ], [ %i.ar, %.lr.ph.i30 ] ; 5 uses
  %.017.lcssa.i27 = phi i32 [ %i.af, %bb.g ], [ %i.ak, %.lr.ph.i30 ] ; 3 uses
  %.018.lcssa.i2655 = ptrtoaddr ptr %.018.lcssa.i26 to i64 ; 2 uses
  %i.at = icmp samesign ult i32 %.017.lcssa.i27, 10
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i25
  %i.au = or disjoint i32 %.017.lcssa.i27, 48
  %i.av = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIcjLb0EE7ConvertEj(i32 noundef %i.au)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit33

bb.i:                                             ; preds = %._crit_edge.i25
  %i.aw = shl nuw nsw i32 %.017.lcssa.i27, 1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !153
  %i.bb = getelementptr inbounds i8, ptr %.018.lcssa.i26, i64 -1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !153
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !153
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit33

_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit33: ; preds = %bb.h, %bb.i
  %.sink26.i28 = phi i64 [ -2, %bb.i ], [ -1, %bb.h ] ; 3 uses
  %.sink.i29 = phi i8 [ %i.bc, %bb.i ], [ %i.av, %bb.h ]
  %i.bd = getelementptr inbounds i8, ptr %.018.lcssa.i26, i64 %.sink26.i28 ; 2 uses
  store i8 %.sink.i29, ptr %i.bd, align 1, !tbaa !153
  %i.be = sub nsw i64 0, %i.ab
  %i.bf = getelementptr inbounds i8, ptr %i.a, i64 %i.be
  %i.bg = icmp ugt ptr %i.bd, %i.bf
  br i1 %i.bg, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit33
  %i.bh = add i64 %4, %5
  %i.bi = add i64 %.018.lcssa.i2655, %i.ab
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %scevgep = getelementptr i8, ptr %.018.lcssa.i26, i64 %i.bj
  %i.bk = add i64 %.sink26.i28, %.018.lcssa.i2655
  %i.bl = add i64 %i.bk, %i.ab
  %i.bm = add i64 %4, %5
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %i.bn, i1 false), !tbaa !153
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit33
  %i.bo = phi i64 [ %.sink26.i28, %_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit33 ], [ %i.bj, %.lr.ph.preheader ]
  %i.bp = getelementptr i8, ptr %.018.lcssa.i26, i64 %i.bo
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -1 ; 3 uses
  store i8 46, ptr %i.bq, align 1, !tbaa !153
  %i.br = icmp ugt i8 %1, %2
  br i1 %i.br, label %bb.j, label %bb.m

bb.j:                                             ; preds = %._crit_edge
  %i.bs = icmp samesign ugt i32 %i.ag, 99
  br i1 %i.bs, label %.lr.ph.i39, label %._crit_edge.i34

.lr.ph.i39:                                       ; preds = %bb.j, %.lr.ph.i39
  %.01720.i40 = phi i32 [ %i.bv, %.lr.ph.i39 ], [ %i.ag, %bb.j ] ; 3 uses
  %.01819.i41 = phi ptr [ %i.cc, %.lr.ph.i39 ], [ %i.bq, %bb.j ] ; 2 uses
  %i.bt = urem i32 %.01720.i40, 100
  %i.bu = shl nuw nsw i32 %i.bt, 1
  %i.bv = udiv i32 %.01720.i40, 100               ; 2 uses
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !153
  %i.ca = getelementptr inbounds i8, ptr %.01819.i41, i64 -1
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !153
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !153
  %i.cc = getelementptr inbounds i8, ptr %.01819.i41, i64 -2 ; 3 uses
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !153
  %i.cd = icmp samesign ugt i32 %.01720.i40, 9999
  br i1 %i.cd, label %.lr.ph.i39, label %._crit_edge.i34, !llvm.loop !4201

._crit_edge.i34:                                  ; preds = %.lr.ph.i39, %bb.j
  %.018.lcssa.i35 = phi ptr [ %i.bq, %bb.j ], [ %i.cc, %.lr.ph.i39 ] ; 2 uses
  %.017.lcssa.i36 = phi i32 [ %i.ag, %bb.j ], [ %i.bv, %.lr.ph.i39 ] ; 3 uses
  %i.ce = icmp samesign ult i32 %.017.lcssa.i36, 10
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i34
  %i.cf = or disjoint i32 %.017.lcssa.i36, 48
  %i.cg = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIcjLb0EE7ConvertEj(i32 noundef %i.cf)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit42

bb.l:                                             ; preds = %._crit_edge.i34
  %i.ch = shl nuw nsw i32 %.017.lcssa.i36, 1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !153
  %i.cm = getelementptr inbounds i8, ptr %.018.lcssa.i35, i64 -1
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !153
  %i.cn = load i8, ptr %i.cj, align 1, !tbaa !153
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit42

_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit42: ; preds = %bb.k, %bb.l
  %.sink26.i37 = phi i64 [ -2, %bb.l ], [ -1, %bb.k ]
  %.sink.i38 = phi i8 [ %i.cn, %bb.l ], [ %i.cg, %bb.k ]
  %i.co = getelementptr inbounds i8, ptr %.018.lcssa.i35, i64 %.sink26.i37
  store i8 %.sink.i38, ptr %i.co, align 1, !tbaa !153
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit42, %_ZN6duckdb13NumericHelper14FormatUnsignedIjEEPcT_S2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef signext i8 @_ZN6duckdb15NumericCastImplIcjLb0EE7ConvertEj(i32 noundef %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = icmp ugt i32 %0, 127
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %0, ptr %i.b, align 4, !tbaa !3
  store i8 -128, ptr %i.c, align 1, !tbaa !153
  store i8 127, ptr %i.d, align 1, !tbaa !153
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i64 75, ptr %i.a, align 8, !tbaa !108
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ; 3 uses

.noexc.i:                                         ; preds = %bb.b
  store ptr %i.h, ptr %1, align 8, !tbaa !89
  %i.i = load i64, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.h, ptr noundef nonnull align 1 dereferenceable(75) @.str.273, i64 75, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !152
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  invoke void @_ZN6duckdb17InternalExceptionC2IJRjRcS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc.i
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.g unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %.noexc.i
  %.0.i = phi i1 [ false, %bb.c ], [ true, %.noexc.i ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.g
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.n) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0.i, label %bb.e, label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn8.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #46
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn7.i = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn8.i, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn7.i

bb.g:                                             ; preds = %bb.c
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.p = trunc nuw nsw i32 %0 to i8
  ret i8 %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJRjRcS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.1077", align 8  ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46, !noalias !4202
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !4202
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIjJRKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
end_hunk_14
begin_hunk_15_@_ZN6duckdb9Exception25ConstructMessageRecursiveIjJRKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !151
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !152  ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.j, ptr %i.g, align 8, !tbaa !89
  %i.q = load i64, ptr %i.k, align 8, !tbaa !153
  store i64 %i.q, ptr %i.i, align 8, !tbaa !153
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !152
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.r = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.r, ptr %i.t, align 8, !tbaa !152
  store ptr %i.k, ptr %i.h, align 8, !tbaa !89
  store i64 0, ptr %i.s, align 8, !tbaa !152
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.v, ptr %i.c, align 8, !tbaa !118
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.pre11 = load ptr, ptr %.phi.trans.insert10, align 8, !tbaa !89 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.x = icmp eq ptr %.pre11, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre11) #47
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveIcJRKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !89  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #47
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9

_ZN6duckdb20ExceptionFormatValueD2Ev.exit9:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN6duckdb15DecimalToString13DecimalLengthIlEEiT_hh(i64 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq i8 %2, 0
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @llvm.abs.i64(i64 %0, i1 true) ; 10 uses
  %i.c = icmp samesign ugt i64 %i.b, 9999999999
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ugt i64 %i.b, 999999999999999
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = icmp samesign ugt i64 %i.b, 9999999999999999
  %i.f = select i1 %i.e, i32 17, i32 16
  br label %_ZN6duckdb13NumericHelper12SignedLengthIlmEEiT_.exit

bb.e:                                             ; preds = %bb.c
  %i.g = icmp samesign ugt i64 %i.b, 99999999999
  %i.h = select i1 %i.g, i32 12, i32 11
  br label %_ZN6duckdb13NumericHelper12SignedLengthIlmEEiT_.exit

bb.f:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i64 %i.b, 99999
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = icmp samesign ugt i64 %i.b, 999999
  %i.k = select i1 %i.j, i32 7, i32 6
  br label %_ZN6duckdb13NumericHelper12SignedLengthIlmEEiT_.exit

bb.h:                                             ; preds = %bb.f
  %i.l = icmp samesign ugt i64 %i.b, 9
  %i.m = select i1 %i.l, i32 2, i32 1
  br label %_ZN6duckdb13NumericHelper12SignedLengthIlmEEiT_.exit

_ZN6duckdb13NumericHelper12SignedLengthIlmEEiT_.exit: ; preds = %bb.d, %bb.e, %bb.g, %bb.h
  %.sink50.i.i = phi i64 [ 99, %bb.h ], [ 9999999, %bb.g ], [ 999999999999, %bb.e ], [ 99999999999999999, %bb.d ]
  %.sink.i.i = phi i32 [ %i.m, %bb.h ], [ %i.k, %bb.g ], [ %i.h, %bb.e ], [ %i.f, %bb.d ]
  %.sink47.i.i = phi i64 [ 999, %bb.h ], [ 99999999, %bb.g ], [ 9999999999999, %bb.e ], [ 999999999999999999, %bb.d ]
  %.sink44.i.i = phi i64 [ 9999, %bb.h ], [ 999999999, %bb.g ], [ 99999999999999, %bb.e ], [ -8446744073709551617, %bb.d ]
  %.lobit.neg.neg.i = lshr i64 %0, 63
  %.neg.neg6.i = trunc nuw nsw i64 %.lobit.neg.neg.i to i32
  %i.n = icmp samesign ugt i64 %i.b, %.sink50.i.i
  %i.o = zext i1 %i.n to i32
  %i.p = icmp samesign ugt i64 %i.b, %.sink47.i.i
  %i.q = zext i1 %i.p to i32
  %i.r = icmp ugt i64 %i.b, %.sink44.i.i
  %i.s = zext i1 %i.r to i32
  %i.t = add nuw nsw i32 %.sink.i.i, %.neg.neg6.i
  %i.u = add nuw nsw i32 %i.t, %i.o
  %i.v = add nuw nsw i32 %i.u, %i.q
  %i.w = add nuw nsw i32 %i.v, %i.s
  br label %bb.p

bb.i:                                             ; preds = %bb.a
  %i.x = zext i8 %2 to i32
  %i.y = icmp ugt i8 %1, %2
  %i.z = select i1 %i.y, i32 2, i32 1
  %.lobit = lshr i64 %0, 63
  %i.aa = trunc nuw nsw i64 %.lobit to i32        ; 2 uses
  %i.ab = add nuw nsw i32 %i.x, %i.aa
  %i.ac = add nuw nsw i32 %i.ab, %i.z
  %i.ad = tail call i64 @llvm.abs.i64(i64 %0, i1 true) ; 10 uses
  %i.ae = icmp samesign ugt i64 %i.ad, 9999999999
  br i1 %i.ae, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.af = icmp samesign ugt i64 %i.ad, 999999999999999
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = icmp samesign ugt i64 %i.ad, 9999999999999999
  %i.ah = select i1 %i.ag, i32 17, i32 16
  br label %_ZN6duckdb13NumericHelper12SignedLengthIlmEEiT_.exit17

bb.l:                                             ; preds = %bb.j
  %i.ai = icmp samesign ugt i64 %i.ad, 99999999999
  %i.aj = select i1 %i.ai, i32 12, i32 11
  br label %_ZN6duckdb13NumericHelper12SignedLengthIlmEEiT_.exit17

bb.m:                                             ; preds = %bb.i
  %i.ak = icmp samesign ugt i64 %i.ad, 99999
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = icmp samesign ugt i64 %i.ad, 999999
  %i.am = select i1 %i.al, i32 7, i32 6
  br label %_ZN6duckdb13NumericHelper12SignedLengthIlmEEiT_.exit17

bb.o:                                             ; preds = %bb.m
  %i.an = icmp samesign ugt i64 %i.ad, 9
  %i.ao = select i1 %i.an, i32 2, i32 1
  br label %_ZN6duckdb13NumericHelper12SignedLengthIlmEEiT_.exit17

_ZN6duckdb13NumericHelper12SignedLengthIlmEEiT_.exit17: ; preds = %bb.k, %bb.l, %bb.n, %bb.o
  %.sink50.i.i11 = phi i64 [ 99, %bb.o ], [ 9999999, %bb.n ], [ 999999999999, %bb.l ], [ 99999999999999999, %bb.k ]
  %.sink.i.i12 = phi i32 [ %i.ao, %bb.o ], [ %i.am, %bb.n ], [ %i.aj, %bb.l ], [ %i.ah, %bb.k ]
  %.sink47.i.i13 = phi i64 [ 999, %bb.o ], [ 99999999, %bb.n ], [ 9999999999999, %bb.l ], [ 999999999999999999, %bb.k ]
  %.sink44.i.i14 = phi i64 [ 9999, %bb.o ], [ 999999999, %bb.n ], [ 99999999999999, %bb.l ], [ -8446744073709551617, %bb.k ]
  %i.ap = icmp samesign ugt i64 %i.ad, %.sink50.i.i11
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp samesign ugt i64 %i.ad, %.sink47.i.i13
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp ugt i64 %i.ad, %.sink44.i.i14
  %i.au = zext i1 %i.at to i32
  %i.av = add nuw nsw i32 %i.aa, 1
  %i.aw = add nuw nsw i32 %i.av, %.sink.i.i12
  %i.ax = add nuw nsw i32 %i.aw, %i.aq
  %i.ay = add nuw nsw i32 %i.ax, %i.as
  %i.az = add nuw nsw i32 %i.ay, %i.au
  %i.ba = tail call i32 @llvm.umax.i32(i32 %i.ac, i32 %i.az)
  br label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb13NumericHelper12SignedLengthIlmEEiT_.exit17, %_ZN6duckdb13NumericHelper12SignedLengthIlmEEiT_.exit
  %.0 = phi i32 [ %i.w, %_ZN6duckdb13NumericHelper12SignedLengthIlmEEiT_.exit ], [ %i.ba, %_ZN6duckdb13NumericHelper12SignedLengthIlmEEiT_.exit17 ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb15DecimalToString13FormatDecimalIlEEvT_hhPcm(i64 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = ptrtoaddr ptr %3 to i64                    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 5 uses
  %i.b = icmp slt i64 %0, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sub nsw i64 0, %0
  store i8 45, ptr %3, align 1, !tbaa !153
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.c, %bb.b ], [ %0, %bb.a ]    ; 5 uses
  %i.d = icmp eq i8 %2, 0
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = icmp samesign ugt i64 %.0, 99
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.01720.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.0, %bb.d ] ; 3 uses
  %.01819.i = phi ptr [ %i.r, %.lr.ph.i ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = urem i64 %.01720.i, 100
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.g) ; 2 uses
  %i.i = udiv i64 %.01720.i, 100                  ; 2 uses
  %i.j = add i32 %i.h, 1
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !153
  %i.n = getelementptr inbounds i8, ptr %.01819.i, i64 -1
  store i8 %i.m, ptr %i.n, align 1, !tbaa !153
  %i.o = zext i32 %i.h to i64
  %i.p = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !153
  %i.r = getelementptr inbounds i8, ptr %.01819.i, i64 -2 ; 3 uses
  store i8 %i.q, ptr %i.r, align 1, !tbaa !153
  %i.s = icmp samesign ugt i64 %.01720.i, 9999
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !291

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  %.018.lcssa.i = phi ptr [ %i.a, %bb.d ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %.017.lcssa.i = phi i64 [ %.0, %bb.d ], [ %i.i, %.lr.ph.i ] ; 3 uses
  %i.t = icmp samesign ult i64 %.017.lcssa.i, 10
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.u = or disjoint i64 %.017.lcssa.i, 48
  %i.v = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIcmLb0EE7ConvertEm(i64 noundef %i.u)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.w = shl nuw nsw i64 %.017.lcssa.i, 1
  %i.x = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.w) ; 2 uses
  %i.y = add i32 %i.x, 1
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !153
  %i.ac = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 -1
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !153
  %i.ad = zext i32 %i.x to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !153
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit

_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit: ; preds = %bb.e, %bb.f
  %.sink26.i = phi i64 [ -2, %bb.f ], [ -1, %bb.e ]
  %.sink.i = phi i8 [ %i.af, %bb.f ], [ %i.v, %bb.e ]
  %i.ag = getelementptr inbounds i8, ptr %.018.lcssa.i, i64 %.sink26.i
  store i8 %.sink.i, ptr %i.ag, align 1, !tbaa !153
  br label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.ah = zext i8 %2 to i64                       ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !108 ; 2 uses
  %i.ak = urem i64 %.0, %i.aj                     ; 3 uses
  %i.al = udiv i64 %.0, %i.aj                     ; 3 uses
  %i.am = icmp samesign ugt i64 %i.ak, 99
  br i1 %i.am, label %.lr.ph.i30, label %._crit_edge.i25

.lr.ph.i30:                                       ; preds = %bb.g, %.lr.ph.i30
  %.01720.i31 = phi i64 [ %i.aq, %.lr.ph.i30 ], [ %i.ak, %bb.g ] ; 3 uses
  %.01819.i32 = phi ptr [ %i.az, %.lr.ph.i30 ], [ %i.a, %bb.g ] ; 2 uses
  %i.an = urem i64 %.01720.i31, 100
  %i.ao = shl nuw nsw i64 %i.an, 1
  %i.ap = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.ao) ; 2 uses
  %i.aq = udiv i64 %.01720.i31, 100               ; 2 uses
  %i.ar = add i32 %i.ap, 1
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !153
  %i.av = getelementptr inbounds i8, ptr %.01819.i32, i64 -1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !153
  %i.aw = zext i32 %i.ap to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !153
  %i.az = getelementptr inbounds i8, ptr %.01819.i32, i64 -2 ; 3 uses
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !153
  %i.ba = icmp samesign ugt i64 %.01720.i31, 9999
  br i1 %i.ba, label %.lr.ph.i30, label %._crit_edge.i25, !llvm.loop !291

._crit_edge.i25:                                  ; preds = %.lr.ph.i30, %bb.g
  %.018.lcssa.i26 = phi ptr [ %i.a, %bb.g ], [ %i.az, %.lr.ph.i30 ] ; 5 uses
  %.017.lcssa.i27 = phi i64 [ %i.ak, %bb.g ], [ %i.aq, %.lr.ph.i30 ] ; 3 uses
  %.018.lcssa.i2655 = ptrtoaddr ptr %.018.lcssa.i26 to i64 ; 2 uses
  %i.bb = icmp samesign ult i64 %.017.lcssa.i27, 10
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i25
  %i.bc = or disjoint i64 %.017.lcssa.i27, 48
  %i.bd = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIcmLb0EE7ConvertEm(i64 noundef %i.bc)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit33

bb.i:                                             ; preds = %._crit_edge.i25
  %i.be = shl nuw nsw i64 %.017.lcssa.i27, 1
  %i.bf = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.be) ; 2 uses
  %i.bg = add i32 %i.bf, 1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !153
  %i.bk = getelementptr inbounds i8, ptr %.018.lcssa.i26, i64 -1
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !153
  %i.bl = zext i32 %i.bf to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !153
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit33

_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit33: ; preds = %bb.h, %bb.i
  %.sink26.i28 = phi i64 [ -2, %bb.i ], [ -1, %bb.h ] ; 3 uses
  %.sink.i29 = phi i8 [ %i.bn, %bb.i ], [ %i.bd, %bb.h ]
  %i.bo = getelementptr inbounds i8, ptr %.018.lcssa.i26, i64 %.sink26.i28 ; 2 uses
  store i8 %.sink.i29, ptr %i.bo, align 1, !tbaa !153
  %i.bp = sub nsw i64 0, %i.ah
  %i.bq = getelementptr inbounds i8, ptr %i.a, i64 %i.bp
  %i.br = icmp ugt ptr %i.bo, %i.bq
  br i1 %i.br, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit33
  %i.bs = add i64 %4, %5
  %i.bt = add i64 %.018.lcssa.i2655, %i.ah
  %i.bu = sub i64 %i.bs, %i.bt                    ; 2 uses
  %scevgep = getelementptr i8, ptr %.018.lcssa.i26, i64 %i.bu
  %i.bv = add i64 %.sink26.i28, %.018.lcssa.i2655
  %i.bw = add i64 %i.bv, %i.ah
  %i.bx = add i64 %4, %5
  %i.by = sub i64 %i.bw, %i.bx
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %i.by, i1 false), !tbaa !153
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit33
  %i.bz = phi i64 [ %.sink26.i28, %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit33 ], [ %i.bu, %.lr.ph.preheader ]
  %i.ca = getelementptr i8, ptr %.018.lcssa.i26, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -1 ; 3 uses
  store i8 46, ptr %i.cb, align 1, !tbaa !153
  %i.cc = icmp ugt i8 %1, %2
  br i1 %i.cc, label %bb.j, label %bb.m

bb.j:                                             ; preds = %._crit_edge
  %i.cd = icmp samesign ugt i64 %i.al, 99
  br i1 %i.cd, label %.lr.ph.i39, label %._crit_edge.i34

.lr.ph.i39:                                       ; preds = %bb.j, %.lr.ph.i39
  %.01720.i40 = phi i64 [ %i.ch, %.lr.ph.i39 ], [ %i.al, %bb.j ] ; 3 uses
  %.01819.i41 = phi ptr [ %i.cq, %.lr.ph.i39 ], [ %i.cb, %bb.j ] ; 2 uses
  %i.ce = urem i64 %.01720.i40, 100
  %i.cf = shl nuw nsw i64 %i.ce, 1
  %i.cg = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.cf) ; 2 uses
  %i.ch = udiv i64 %.01720.i40, 100               ; 2 uses
  %i.ci = add i32 %i.cg, 1
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !153
  %i.cm = getelementptr inbounds i8, ptr %.01819.i41, i64 -1
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !153
  %i.cn = zext i32 %i.cg to i64
  %i.co = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !153
  %i.cq = getelementptr inbounds i8, ptr %.01819.i41, i64 -2 ; 3 uses
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !153
  %i.cr = icmp samesign ugt i64 %.01720.i40, 9999
  br i1 %i.cr, label %.lr.ph.i39, label %._crit_edge.i34, !llvm.loop !291

._crit_edge.i34:                                  ; preds = %.lr.ph.i39, %bb.j
  %.018.lcssa.i35 = phi ptr [ %i.cb, %bb.j ], [ %i.cq, %.lr.ph.i39 ] ; 2 uses
  %.017.lcssa.i36 = phi i64 [ %i.al, %bb.j ], [ %i.ch, %.lr.ph.i39 ] ; 3 uses
  %i.cs = icmp samesign ult i64 %.017.lcssa.i36, 10
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i34
  %i.ct = or disjoint i64 %.017.lcssa.i36, 48
  %i.cu = tail call noundef signext i8 @_ZN6duckdb15NumericCastImplIcmLb0EE7ConvertEm(i64 noundef %i.ct)
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit42

bb.l:                                             ; preds = %._crit_edge.i34
  %i.cv = shl nuw nsw i64 %.017.lcssa.i36, 1
  %i.cw = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.cv) ; 2 uses
  %i.cx = add i32 %i.cw, 1
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !153
  %i.db = getelementptr inbounds i8, ptr %.018.lcssa.i35, i64 -1
  store i8 %i.da, ptr %i.db, align 1, !tbaa !153
  %i.dc = zext i32 %i.cw to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !153
  br label %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit42

_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit42: ; preds = %bb.k, %bb.l
  %.sink26.i37 = phi i64 [ -2, %bb.l ], [ -1, %bb.k ]
  %.sink.i38 = phi i8 [ %i.de, %bb.l ], [ %i.cu, %bb.k ]
  %i.df = getelementptr inbounds i8, ptr %.018.lcssa.i35, i64 %.sink26.i37
  store i8 %.sink.i38, ptr %i.df, align 1, !tbaa !153
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit42, %_ZN6duckdb13NumericHelper14FormatUnsignedImEEPcT_S2_.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #23

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #33

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeImEEvv(ptr noundef nonnull align 8 dereferenceable(73) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.20", align 1 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !770
  %i.d = icmp eq i8 %i.c, 8
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.441, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i8 8, ptr %i.a, align 1, !tbaa !2230
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.h = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #46
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.1077", align 8  ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46, !noalias !4208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !4208
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINS_12PhysicalTypeEJRKS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RSt6vectorINS_20ExceptionFormatValueESaISE_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
end_hunk_15
