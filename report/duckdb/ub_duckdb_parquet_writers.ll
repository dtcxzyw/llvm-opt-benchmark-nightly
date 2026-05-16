inline.NumInlined: 2405
inline.NumDeleted: 1305
begin_hunk_0_@__cxa_pure_virtual
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb21PrimitiveColumnWriter13HasDictionaryERNS_26PrimitiveColumnWriterStateE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb19BooleanColumnWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) #24
  tail call void @_ZdlPv(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb24FixedDecimalColumnWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) #24
  tail call void @_ZdlPv(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb16EnumColumnWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(244) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(244) %0) #24
  tail call void @_ZdlPv(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb12ColumnWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb18StructColumnWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb12ColumnWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) #24
  tail call void @_ZdlPv(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !658
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #24
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #13

declare noundef zeroext i1 @_ZNK6duckdb9hugeint_tgtERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6duckdb9hugeint_tgeERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) unnamed_addr #2

declare { i64, i64 } @_ZNK6duckdb9hugeint_tplERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12RleBpEncoder20WriteCurrentBlockRLEERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(2080) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !165
  %i.j = shl i64 %i.i, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06.i = phi i64 [ %i.j, %bb.a ], [ %i.m, %bb.b ] ; 2 uses
  %i.k = trunc i64 %.06.i to i8
  %i.l = and i8 %i.k, 127
  %i.m = lshr i64 %.06.i, 7                       ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0                   ; 2 uses
  %masksel.i = select i1 %.not.i, i8 0, i8 -128
  %.0.i = or disjoint i8 %masksel.i, %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 %.0.i, ptr %i.g, align 1, !tbaa !28
  %i.n = load ptr, ptr %1, align 8, !tbaa !7
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.g, i64 noundef 1), !inline_history !659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %.not.i, label %_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit, label %bb.b, !llvm.loop !660

_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !175
  switch i32 %i.q, label %bb.g [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.c:                                             ; preds = %_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !168
  %i.t = trunc i32 %i.s to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %i.t, ptr %i.f, align 1, !tbaa !28
  %i.u = load ptr, ptr %1, align 8, !tbaa !7
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.f, i64 noundef 1), !inline_history !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.d:                                             ; preds = %_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !168
  %i.y = trunc i32 %i.x to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 %i.y, ptr %i.e, align 2, !tbaa !22
  %i.z = load ptr, ptr %1, align 8, !tbaa !7
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.e, i64 noundef 2), !inline_history !661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.e:                                             ; preds = %_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !168
  %i.ad = trunc i32 %i.ac to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.ad, ptr %i.d, align 1, !tbaa !28
  %i.ae = load ptr, ptr %1, align 8, !tbaa !7
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 1), !inline_history !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ag = load i32, ptr %i.ab, align 8, !tbaa !168
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = trunc i32 %i.ah to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.ai, ptr %i.c, align 1, !tbaa !28
  %i.aj = load ptr, ptr %1, align 8, !tbaa !7
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 1), !inline_history !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 10
  %4 = load i16, ptr %.shift, align 2, !tbaa !168
  %i.al = trunc i16 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.al, ptr %i.b, align 1, !tbaa !28
  %i.am = load ptr, ptr %1, align 8, !tbaa !7
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1), !inline_history !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.f:                                             ; preds = %_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !3
  %i.aq = load ptr, ptr %1, align 8, !tbaa !7
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 4), !inline_history !293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.g:                                             ; preds = %_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit
  %i.as = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.n unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i1 [ false, %bb.i ], [ true, %bb.h ]  ; 2 uses
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.av) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.k, label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.as) #24
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  store i64 0, ptr %i.h, align 8, !tbaa !165
  ret void

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  %.pn15 = phi { ptr, i32 } [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn16, %bb.k ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn15

bb.n:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12RleBpEncoder19WriteCurrentBlockBPERNS_11WriteStreamE(ptr noundef nonnull align 8 dereferenceable(2080) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !166
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit

_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 65, ptr %i.a, align 1, !tbaa !28
  %i.e = load ptr, ptr %1, align 8, !tbaa !7
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 9 uses
  %i.i = load i32, ptr %0, align 8, !tbaa !174
  %.mask = and i32 %i.i, 255                      ; 9 uses
  %i.j = zext nneg i32 %.mask to i64              ; 7 uses
  call void @_ZN18duckdb_fastpforlib8fastpackEPKjPjj(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i32 noundef %.mask)
  %i.k = shl nuw nsw i64 %i.j, 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @_ZN18duckdb_fastpforlib8fastpackEPKjPjj(ptr noundef nonnull %i.m, ptr noundef nonnull %i.l, i32 noundef %.mask)
  %i.n = shl nuw nsw i64 %i.j, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @_ZN18duckdb_fastpforlib8fastpackEPKjPjj(ptr noundef nonnull %i.p, ptr noundef nonnull %i.o, i32 noundef %.mask)
  %i.q = mul nuw nsw i64 %i.j, 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 408
  call void @_ZN18duckdb_fastpforlib8fastpackEPKjPjj(ptr noundef nonnull %i.s, ptr noundef nonnull %i.r, i32 noundef %.mask)
  %i.t = shl nuw nsw i64 %i.j, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 536
  call void @_ZN18duckdb_fastpforlib8fastpackEPKjPjj(ptr noundef nonnull %i.v, ptr noundef nonnull %i.u, i32 noundef %.mask)
  %i.w = mul nuw nsw i64 %i.j, 20
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 664
  call void @_ZN18duckdb_fastpforlib8fastpackEPKjPjj(ptr noundef nonnull %i.y, ptr noundef nonnull %i.x, i32 noundef %.mask)
  %i.z = mul nuw nsw i64 %i.j, 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 792
  call void @_ZN18duckdb_fastpforlib8fastpackEPKjPjj(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.aa, i32 noundef %.mask)
  %i.ac = mul nuw nsw i64 %i.j, 28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 920
  call void @_ZN18duckdb_fastpforlib8fastpackEPKjPjj(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ad, i32 noundef %.mask)
  %i.af = load i32, ptr %0, align 8, !tbaa !174
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 5
  %i.ai = load ptr, ptr %1, align 8, !tbaa !7
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.h, i64 noundef %i.ah)
  store i64 0, ptr %i.b, align 8, !tbaa !166
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN6duckdb18ParquetDecodeUtils12VarintEncodeImEEvT_RNS_11WriteStreamE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN18duckdb_fastpforlib8fastpackEPKjPjj(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.ai [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 14, label %bb.p
    i32 15, label %bb.q
    i32 16, label %bb.r
    i32 17, label %bb.s
    i32 18, label %bb.t
    i32 19, label %bb.u
    i32 20, label %bb.v
    i32 21, label %bb.w
    i32 22, label %bb.x
    i32 23, label %bb.y
    i32 24, label %bb.z
    i32 25, label %bb.aa
    i32 26, label %bb.ab
    i32 27, label %bb.ac
    i32 28, label %bb.ad
    i32 29, label %bb.ae
    i32 30, label %bb.af
    i32 31, label %bb.ag
    i32 32, label %bb.ah
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal11__fastpack0EPKjPj(ptr noundef %0, ptr noundef %1)
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal11__fastpack1EPKjPj(ptr noundef %0, ptr noundef %1)
  br label %bb.al

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal11__fastpack2EPKjPj(ptr noundef %0, ptr noundef %1)
  br label %bb.al

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal11__fastpack3EPKjPj(ptr noundef %0, ptr noundef %1)
  br label %bb.al

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal11__fastpack4EPKjPj(ptr noundef %0, ptr noundef %1)
  br label %bb.al

end_hunk_0
