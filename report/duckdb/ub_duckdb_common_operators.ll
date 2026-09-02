Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_operators?download=true
inline.NumInlined: 7915
inline.NumDeleted: 2037
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 196
loop-unroll.NumUnrolled: 208
begin_hunk_0_@_ZN6duckdb18TryCastFromDecimal9OperationINS_9hugeint_tEbEEbT_RT0_RNS_14CastParametersEhh:bb.a
bb.a:
  %i.a = icmp ne i64 %1, 0
  %i.b = icmp ne i64 %0, 0
  %i.c = select i1 %i.a, i1 true, i1 %i.b
  %i.d = zext i1 %i.c to i8
  store i8 %i.d, ptr %2, align 1, !tbaa !114
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb16TryCastToDecimal9OperationIasEEbT_RT0_RNS_14CastParametersEhh(i8 noundef signext %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb28StandardNumericToDecimalCastIasNS_23SignedToDecimalOperatorEEEbT_RT0_RNS_14CastParametersEhh(i8 noundef signext %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb28StandardNumericToDecimalCastIasNS_23SignedToDecimalOperatorEEEbT_RT0_RNS_14CastParametersEhh(i8 noundef signext %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = zext i8 %3 to i64
  %i.f = zext i8 %4 to i64                        ; 2 uses
  %i.g = sub nsw i64 %i.e, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !97   ; 2 uses
  %i.j = trunc i64 %i.i to i16
  %i.k = sext i8 %0 to i16
  %.not.i = icmp sgt i16 %i.j, %i.k
  %i.l = sext i8 %0 to i64                        ; 2 uses
  %sext = shl i64 %i.i, 48
  %i.m = ashr exact i64 %sext, 48
  %i.n = sub nsw i64 0, %i.m
  %i.o = icmp sgt i64 %i.l, %i.n
  %.not28 = select i1 %.not.i, i1 %i.o, i1 false  ; 2 uses
  br i1 %.not28, label %bb.g, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 41, ptr %i.d, align 8, !tbaa !97
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 3 uses
  store ptr %i.q, ptr %7, align 8, !tbaa !104
  %i.r = load i64, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.q, ptr noundef nonnull align 1 dereferenceable(41) @.str.60, i64 41, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !107
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store i8 0, ptr %i.t, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %0, ptr %i.a, align 1, !tbaa !106, !noalias !819
  store i8 %3, ptr %i.b, align 1, !tbaa !106, !noalias !819
  store i8 %4, ptr %i.c, align 1, !tbaa !106, !noalias !819
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !820
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !820
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIaJRKhS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %.noexc.i
  %i.u = load ptr, ptr %5, align 8, !tbaa !110, !noalias !820 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !111, !noalias !820 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.u, %bb.b ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !104  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.y) #29
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.w
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %5, align 8, !tbaa !110, !noalias !820
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.ac = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.u, %bb.b ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ac) #29
  br label %bb.d

.body:                                            ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !820
  %i.ae = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.p
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split

bb.d:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.p
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.ag) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  invoke void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(57) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.ai) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.h

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split: ; preds = %bb.f, %.body
  %.sink = phi ptr [ %i.ae, %.body ], [ %i.am, %bb.f ]
  %.pn17.ph = phi { ptr, i32 } [ %i.ad, %.body ], [ %i.al, %bb.f ]
  call void @_ZdlPv(ptr noundef %.sink) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split, %bb.f, %.body
  %.pn17 = phi { ptr, i32 } [ %i.ad, %.body ], [ %i.al, %bb.f ], [ %.pn17.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn17

bb.g:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.f
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !97
  %i.ar = mul nsw i64 %i.aq, %i.l
  %i.as = trunc i64 %i.ar to i16
  store i16 %i.as, ptr %1, align 2, !tbaa !116
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  ret i1 %.not28
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb16TryCastToDecimal9OperationIaiEEbT_RT0_RNS_14CastParametersEhh(i8 noundef signext %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb28StandardNumericToDecimalCastIaiNS_23SignedToDecimalOperatorEEEbT_RT0_RNS_14CastParametersEhh(i8 noundef signext %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb28StandardNumericToDecimalCastIaiNS_23SignedToDecimalOperatorEEEbT_RT0_RNS_14CastParametersEhh(i8 noundef signext %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = zext i8 %3 to i64
  %i.f = zext i8 %4 to i64                        ; 2 uses
  %i.g = sub nsw i64 %i.e, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !97
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = sext i8 %0 to i32                        ; 3 uses
  %.not.i = icmp sgt i32 %i.j, %i.k
  %i.l = sub nsw i32 0, %i.j
  %i.m = icmp sgt i32 %i.k, %i.l
  %.not28 = select i1 %.not.i, i1 %i.m, i1 false  ; 2 uses
  br i1 %.not28, label %bb.g, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 41, ptr %i.d, align 8, !tbaa !97
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 3 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !104
  %i.p = load i64, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.o, ptr noundef nonnull align 1 dereferenceable(41) @.str.60, i64 41, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !107
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %0, ptr %i.a, align 1, !tbaa !106, !noalias !825
  store i8 %3, ptr %i.b, align 1, !tbaa !106, !noalias !825
  store i8 %4, ptr %i.c, align 1, !tbaa !106, !noalias !825
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !826
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !826
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIaJRKhS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %.noexc.i
  %i.s = load ptr, ptr %5, align 8, !tbaa !110, !noalias !826 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !111, !noalias !826 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.s, %bb.b ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !104  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.w) #29
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %5, align 8, !tbaa !110, !noalias !826
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.aa = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.s, %bb.b ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aa) #29
  br label %bb.d

.body:                                            ; preds = %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !826
  %i.ac = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.n
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split

bb.d:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.n
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.ae) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  invoke void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(57) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.ag) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.h

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split: ; preds = %bb.f, %.body
  %.sink = phi ptr [ %i.ac, %.body ], [ %i.ak, %bb.f ]
  %.pn17.ph = phi { ptr, i32 } [ %i.ab, %.body ], [ %i.aj, %bb.f ]
  call void @_ZdlPv(ptr noundef %.sink) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split, %bb.f, %.body
  %.pn17 = phi { ptr, i32 } [ %i.ab, %.body ], [ %i.aj, %bb.f ], [ %.pn17.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn17

bb.g:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.f
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !97
  %8 = trunc i64 %i.ao to i32
  %9 = mul i32 %8, %i.k
  store i32 %9, ptr %1, align 4, !tbaa !89
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  ret i1 %.not28
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb16TryCastToDecimal9OperationIalEEbT_RT0_RNS_14CastParametersEhh(i8 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb28StandardNumericToDecimalCastIalNS_23SignedToDecimalOperatorEEEbT_RT0_RNS_14CastParametersEhh(i8 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb28StandardNumericToDecimalCastIalNS_23SignedToDecimalOperatorEEEbT_RT0_RNS_14CastParametersEhh(i8 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = zext i8 %3 to i64
  %i.f = zext i8 %4 to i64                        ; 2 uses
  %i.g = sub nsw i64 %i.e, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !97   ; 2 uses
  %i.j = sext i8 %0 to i64                        ; 3 uses
  %i.k = icmp sgt i64 %i.i, %i.j
  %i.l = sub nsw i64 0, %i.i
  %i.m = icmp sgt i64 %i.j, %i.l
  %.not29 = select i1 %i.k, i1 %i.m, i1 false     ; 2 uses
  br i1 %.not29, label %bb.g, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 41, ptr %i.d, align 8, !tbaa !97
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 3 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !104
  %i.p = load i64, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.o, ptr noundef nonnull align 1 dereferenceable(41) @.str.60, i64 41, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !107
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %0, ptr %i.a, align 1, !tbaa !106, !noalias !831
  store i8 %3, ptr %i.b, align 1, !tbaa !106, !noalias !831
  store i8 %4, ptr %i.c, align 1, !tbaa !106, !noalias !831
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !832
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !832
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIaJRKhS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %.noexc.i
  %i.s = load ptr, ptr %5, align 8, !tbaa !110, !noalias !832 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !111, !noalias !832 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.s, %bb.b ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !104  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.w) #29
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %5, align 8, !tbaa !110, !noalias !832
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.aa = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.s, %bb.b ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aa) #29
  br label %bb.d

.body:                                            ; preds = %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !832
  %i.ac = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.n
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split

bb.d:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !832
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.n
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.ae) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  invoke void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(57) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.ag) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.h

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split: ; preds = %bb.f, %.body
  %.sink = phi ptr [ %i.ac, %.body ], [ %i.ak, %bb.f ]
  %.pn17.ph = phi { ptr, i32 } [ %i.ab, %.body ], [ %i.aj, %bb.f ]
  call void @_ZdlPv(ptr noundef %.sink) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split, %bb.f, %.body
  %.pn17 = phi { ptr, i32 } [ %i.ab, %.body ], [ %i.aj, %bb.f ], [ %.pn17.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn17

bb.g:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.f
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !97
  %i.ap = mul nsw i64 %i.ao, %i.j
  store i64 %i.ap, ptr %1, align 8, !tbaa !97
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  ret i1 %.not29
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb16TryCastToDecimal9OperationIaNS_9hugeint_tEEEbT_RT0_RNS_14CastParametersEhh(i8 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb24NumericToHugeDecimalCastIaEEbT_RNS_9hugeint_tERNS_14CastParametersEhh(i8 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb24NumericToHugeDecimalCastIaEEbT_RNS_9hugeint_tERNS_14CastParametersEhh(i8 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"struct.duckdb::hugeint_t", align 16 ; 4 uses
  %7 = alloca %"struct.duckdb::hugeint_t", align 8 ; 6 uses
  %8 = alloca %"struct.duckdb::hugeint_t", align 16 ; 8 uses
  %9 = alloca %"struct.duckdb::hugeint_t", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.d = zext i8 %3 to i64
  %i.e = zext i8 %4 to i64                        ; 2 uses
  %i.f = sub nsw i64 %i.d, %i.e
  %i.g = getelementptr inbounds [16 x i8], ptr @_ZN6duckdb7Hugeint13POWERS_OF_TENE, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.h = call noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertIaEEbT_RNS_9hugeint_tE(i8 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.h, label %_ZN6duckdb7Hugeint7ConvertIaEENS_9hugeint_tET_.exit, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN6duckdb24NumericToHugeDecimalCastIaEEbT_RNS_9hugeint_tERNS_14CastParametersEhh:bb.a
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !97
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.0 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ true, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb16TryCastToDecimal9OperationIssEEbT_RT0_RNS_14CastParametersEhh(i16 noundef signext %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb28StandardNumericToDecimalCastIssNS_23SignedToDecimalOperatorEEEbT_RT0_RNS_14CastParametersEhh(i16 noundef signext %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb28StandardNumericToDecimalCastIssNS_23SignedToDecimalOperatorEEEbT_RT0_RNS_14CastParametersEhh(i16 noundef signext %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = zext i8 %3 to i64
  %i.f = zext i8 %4 to i64                        ; 2 uses
  %i.g = sub nsw i64 %i.e, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !97   ; 2 uses
  %i.j = trunc i64 %i.i to i16
  %.not.i = icmp slt i16 %0, %i.j
  %i.k = sext i16 %0 to i64
  %sext = shl i64 %i.i, 48
  %i.l = ashr exact i64 %sext, 48
  %i.m = sub nsw i64 0, %i.l
  %i.n = icmp sgt i64 %i.k, %i.m
  %.not28 = select i1 %.not.i, i1 %i.n, i1 false  ; 2 uses
  br i1 %.not28, label %bb.g, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 41, ptr %i.d, align 8, !tbaa !97
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 3 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !104
  %i.q = load i64, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  store i64 %i.q, ptr %i.o, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.p, ptr noundef nonnull align 1 dereferenceable(41) @.str.60, i64 41, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !107
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  store i8 0, ptr %i.s, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %0, ptr %i.a, align 2, !tbaa !116, !noalias !843
  store i8 %3, ptr %i.b, align 1, !tbaa !106, !noalias !843
  store i8 %4, ptr %i.c, align 1, !tbaa !106, !noalias !843
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !844
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !844
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIsJRKhS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %.noexc.i
  %i.t = load ptr, ptr %5, align 8, !tbaa !110, !noalias !844 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111, !noalias !844 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.t, %bb.b ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !104  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.x) #29
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.v
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %5, align 8, !tbaa !110, !noalias !844
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.ab = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.t, %bb.b ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ab) #29
  br label %bb.d

.body:                                            ; preds = %.noexc.i
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !844
  %i.ad = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.o
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split

bb.d:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.af = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.o
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.af) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  invoke void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(57) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.ah) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.h

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split: ; preds = %bb.f, %.body
  %.sink = phi ptr [ %i.ad, %.body ], [ %i.al, %bb.f ]
  %.pn17.ph = phi { ptr, i32 } [ %i.ac, %.body ], [ %i.ak, %bb.f ]
  call void @_ZdlPv(ptr noundef %.sink) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split, %bb.f, %.body
  %.pn17 = phi { ptr, i32 } [ %i.ac, %.body ], [ %i.ak, %bb.f ], [ %.pn17.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn17

bb.g:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.f
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !97
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = mul i16 %0, %i.aq
  store i16 %i.ar, ptr %1, align 2, !tbaa !116
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  ret i1 %.not28
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb16TryCastToDecimal9OperationIsiEEbT_RT0_RNS_14CastParametersEhh(i16 noundef signext %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb28StandardNumericToDecimalCastIsiNS_23SignedToDecimalOperatorEEEbT_RT0_RNS_14CastParametersEhh(i16 noundef signext %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb28StandardNumericToDecimalCastIsiNS_23SignedToDecimalOperatorEEEbT_RT0_RNS_14CastParametersEhh(i16 noundef signext %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = zext i8 %3 to i64
  %i.f = zext i8 %4 to i64                        ; 2 uses
  %i.g = sub nsw i64 %i.e, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !97
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = sext i16 %0 to i32                       ; 3 uses
  %.not.i = icmp sgt i32 %i.j, %i.k
  %i.l = sub nsw i32 0, %i.j
  %i.m = icmp sgt i32 %i.k, %i.l
  %.not28 = select i1 %.not.i, i1 %i.m, i1 false  ; 2 uses
  br i1 %.not28, label %bb.g, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 41, ptr %i.d, align 8, !tbaa !97
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 3 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !104
  %i.p = load i64, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.o, ptr noundef nonnull align 1 dereferenceable(41) @.str.60, i64 41, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !107
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %0, ptr %i.a, align 2, !tbaa !116, !noalias !849
  store i8 %3, ptr %i.b, align 1, !tbaa !106, !noalias !849
  store i8 %4, ptr %i.c, align 1, !tbaa !106, !noalias !849
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !850
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !850
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIsJRKhS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %.noexc.i
  %i.s = load ptr, ptr %5, align 8, !tbaa !110, !noalias !850 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !111, !noalias !850 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.s, %bb.b ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !104  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.w) #29
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %5, align 8, !tbaa !110, !noalias !850
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.aa = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.s, %bb.b ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aa) #29
  br label %bb.d

.body:                                            ; preds = %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !850
  %i.ac = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.n
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split

bb.d:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.n
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.ae) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  invoke void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(57) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.ag) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.h

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split: ; preds = %bb.f, %.body
  %.sink = phi ptr [ %i.ac, %.body ], [ %i.ak, %bb.f ]
  %.pn17.ph = phi { ptr, i32 } [ %i.ab, %.body ], [ %i.aj, %bb.f ]
  call void @_ZdlPv(ptr noundef %.sink) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split, %bb.f, %.body
  %.pn17 = phi { ptr, i32 } [ %i.ab, %.body ], [ %i.aj, %bb.f ], [ %.pn17.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn17

bb.g:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.f
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !97
  %8 = trunc i64 %i.ao to i32
  %9 = mul i32 %8, %i.k
  store i32 %9, ptr %1, align 4, !tbaa !89
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  ret i1 %.not28
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb16TryCastToDecimal9OperationIslEEbT_RT0_RNS_14CastParametersEhh(i16 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb28StandardNumericToDecimalCastIslNS_23SignedToDecimalOperatorEEEbT_RT0_RNS_14CastParametersEhh(i16 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb28StandardNumericToDecimalCastIslNS_23SignedToDecimalOperatorEEEbT_RT0_RNS_14CastParametersEhh(i16 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = zext i8 %3 to i64
  %i.f = zext i8 %4 to i64                        ; 2 uses
  %i.g = sub nsw i64 %i.e, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !97   ; 2 uses
  %i.j = sext i16 %0 to i64                       ; 3 uses
  %i.k = icmp sgt i64 %i.i, %i.j
  %i.l = sub nsw i64 0, %i.i
  %i.m = icmp sgt i64 %i.j, %i.l
  %.not29 = select i1 %i.k, i1 %i.m, i1 false     ; 2 uses
  br i1 %.not29, label %bb.g, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 41, ptr %i.d, align 8, !tbaa !97
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 3 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !104
  %i.p = load i64, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.o, ptr noundef nonnull align 1 dereferenceable(41) @.str.60, i64 41, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !107
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  store i8 0, ptr %i.r, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %0, ptr %i.a, align 2, !tbaa !116, !noalias !855
  store i8 %3, ptr %i.b, align 1, !tbaa !106, !noalias !855
  store i8 %4, ptr %i.c, align 1, !tbaa !106, !noalias !855
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !856
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !856
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIsJRKhS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %.noexc.i
  %i.s = load ptr, ptr %5, align 8, !tbaa !110, !noalias !856 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !111, !noalias !856 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.s, %bb.b ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !104  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.w) #29
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %5, align 8, !tbaa !110, !noalias !856
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.aa = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.s, %bb.b ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aa) #29
  br label %bb.d

.body:                                            ; preds = %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !856
  %i.ac = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.n
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split

bb.d:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.n
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.ae) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  invoke void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(57) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.ag) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.h

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split: ; preds = %bb.f, %.body
  %.sink = phi ptr [ %i.ac, %.body ], [ %i.ak, %bb.f ]
  %.pn17.ph = phi { ptr, i32 } [ %i.ab, %.body ], [ %i.aj, %bb.f ]
  call void @_ZdlPv(ptr noundef %.sink) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split, %bb.f, %.body
  %.pn17 = phi { ptr, i32 } [ %i.ab, %.body ], [ %i.aj, %bb.f ], [ %.pn17.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn17

bb.g:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.f
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !97
  %i.ap = mul nsw i64 %i.ao, %i.j
  store i64 %i.ap, ptr %1, align 8, !tbaa !97
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  ret i1 %.not29
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb16TryCastToDecimal9OperationIsNS_9hugeint_tEEEbT_RT0_RNS_14CastParametersEhh(i16 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb24NumericToHugeDecimalCastIsEEbT_RNS_9hugeint_tERNS_14CastParametersEhh(i16 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb24NumericToHugeDecimalCastIsEEbT_RNS_9hugeint_tERNS_14CastParametersEhh(i16 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"struct.duckdb::hugeint_t", align 16 ; 4 uses
  %7 = alloca %"struct.duckdb::hugeint_t", align 8 ; 6 uses
  %8 = alloca %"struct.duckdb::hugeint_t", align 16 ; 8 uses
  %9 = alloca %"struct.duckdb::hugeint_t", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.d = zext i8 %3 to i64
  %i.e = zext i8 %4 to i64                        ; 2 uses
  %i.f = sub nsw i64 %i.d, %i.e
  %i.g = getelementptr inbounds [16 x i8], ptr @_ZN6duckdb7Hugeint13POWERS_OF_TENE, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !212
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.h = call noundef zeroext i1 @_ZN6duckdb7Hugeint10TryConvertIsEEbT_RNS_9hugeint_tE(i16 noundef signext %0, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.h, label %_ZN6duckdb7Hugeint7ConvertIsEENS_9hugeint_tET_.exit, label %bb.b
end_hunk_1
begin_hunk_2_@_ZN6duckdb24NumericToHugeDecimalCastIsEEbT_RNS_9hugeint_tERNS_14CastParametersEhh:bb.a
  %i.av = icmp eq ptr %i.au, %i.s
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  call void @_ZdlPv(ptr noundef %i.au) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %10, align 8, !tbaa !104  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.ax) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %.pn16 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.as, %bb.k ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.aw, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %common.resume

bb.n:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr @_ZN6duckdb7Hugeint13POWERS_OF_TENE, i64 %i.e
  %i.bb = call { i64, i64 } @_ZNK6duckdb9hugeint_tmlERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.ba) ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 0
  %i.bd = extractvalue { i64, i64 } %i.bb, 1
  store i64 %i.bc, ptr %1, align 8, !tbaa !97
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !97
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.0 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ true, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb16TryCastToDecimal9OperationIisEEbT_RT0_RNS_14CastParametersEhh(i32 noundef %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb28StandardNumericToDecimalCastIisNS_23SignedToDecimalOperatorEEEbT_RT0_RNS_14CastParametersEhh(i32 noundef %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb28StandardNumericToDecimalCastIisNS_23SignedToDecimalOperatorEEEbT_RT0_RNS_14CastParametersEhh(i32 noundef %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = zext i8 %3 to i64
  %i.f = zext i8 %4 to i64                        ; 2 uses
  %i.g = sub nsw i64 %i.e, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !97   ; 2 uses
  %i.j = trunc i64 %i.i to i16
  %i.k = sext i16 %i.j to i32
  %.not.i = icmp slt i32 %0, %i.k
  %i.l = sext i32 %0 to i64
  %sext28 = shl i64 %i.i, 48
  %i.m = ashr exact i64 %sext28, 48
  %i.n = sub nsw i64 0, %i.m
  %i.o = icmp sgt i64 %i.l, %i.n
  %.not29 = select i1 %.not.i, i1 %i.o, i1 false  ; 2 uses
  br i1 %.not29, label %bb.g, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 41, ptr %i.d, align 8, !tbaa !97
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 3 uses
  store ptr %i.q, ptr %7, align 8, !tbaa !104
  %i.r = load i64, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.q, ptr noundef nonnull align 1 dereferenceable(41) @.str.60, i64 41, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !107
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store i8 0, ptr %i.t, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %0, ptr %i.a, align 4, !tbaa !89, !noalias !867
  store i8 %3, ptr %i.b, align 1, !tbaa !106, !noalias !867
  store i8 %4, ptr %i.c, align 1, !tbaa !106, !noalias !867
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !868
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !868
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIiJRKhS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %.noexc.i
  %i.u = load ptr, ptr %5, align 8, !tbaa !110, !noalias !868 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !111, !noalias !868 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.u, %bb.b ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !104  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.y) #29
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.w
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %5, align 8, !tbaa !110, !noalias !868
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.ac = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.u, %bb.b ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ac) #29
  br label %bb.d

.body:                                            ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !868
  %i.ae = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.p
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split

bb.d:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.p
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.ag) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  invoke void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(57) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.ai) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.h

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split: ; preds = %bb.f, %.body
  %.sink = phi ptr [ %i.ae, %.body ], [ %i.am, %bb.f ]
  %.pn17.ph = phi { ptr, i32 } [ %i.ad, %.body ], [ %i.al, %bb.f ]
  call void @_ZdlPv(ptr noundef %.sink) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split, %bb.f, %.body
  %.pn17 = phi { ptr, i32 } [ %i.ad, %.body ], [ %i.al, %bb.f ], [ %.pn17.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn17

bb.g:                                             ; preds = %bb.a
  %sext = trunc i32 %0 to i16
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.f
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !97
  %8 = trunc i64 %i.aq to i16
  %9 = mul i16 %8, %sext
  store i16 %9, ptr %1, align 2, !tbaa !116
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  ret i1 %.not29
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb16TryCastToDecimal9OperationIiiEEbT_RT0_RNS_14CastParametersEhh(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb28StandardNumericToDecimalCastIiiNS_23SignedToDecimalOperatorEEEbT_RT0_RNS_14CastParametersEhh(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb28StandardNumericToDecimalCastIiiNS_23SignedToDecimalOperatorEEEbT_RT0_RNS_14CastParametersEhh(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = zext i8 %3 to i64
  %i.f = zext i8 %4 to i64                        ; 2 uses
  %i.g = sub nsw i64 %i.e, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !97
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %.not.i = icmp slt i32 %0, %i.j
  %i.k = sub nsw i32 0, %i.j
  %i.l = icmp sgt i32 %0, %i.k
  %.not28 = select i1 %.not.i, i1 %i.l, i1 false  ; 2 uses
  br i1 %.not28, label %bb.g, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.m, ptr %7, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 41, ptr %i.d, align 8, !tbaa !97
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 3 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !104
  %i.o = load i64, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.n, ptr noundef nonnull align 1 dereferenceable(41) @.str.60, i64 41, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !107
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %0, ptr %i.a, align 4, !tbaa !89, !noalias !873
  store i8 %3, ptr %i.b, align 1, !tbaa !106, !noalias !873
  store i8 %4, ptr %i.c, align 1, !tbaa !106, !noalias !873
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !874
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !874
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveIiJRKhS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %.noexc.i
  %i.r = load ptr, ptr %5, align 8, !tbaa !110, !noalias !874 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !111, !noalias !874 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.r, %bb.b ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !104  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.v) #29
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.t
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %5, align 8, !tbaa !110, !noalias !874
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.z = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.r, %bb.b ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.z) #29
  br label %bb.d

.body:                                            ; preds = %.noexc.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !874
  %i.ab = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.m
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split

bb.d:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = load ptr, ptr %7, align 8, !tbaa !104   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.m
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  invoke void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(57) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.af = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.af) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.h

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %6, align 8, !tbaa !104   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split: ; preds = %bb.f, %.body
  %.sink = phi ptr [ %i.ab, %.body ], [ %i.aj, %bb.f ]
  %.pn17.ph = phi { ptr, i32 } [ %i.aa, %.body ], [ %i.ai, %bb.f ]
  call void @_ZdlPv(ptr noundef %.sink) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split, %bb.f, %.body
  %.pn17 = phi { ptr, i32 } [ %i.aa, %.body ], [ %i.ai, %bb.f ], [ %.pn17.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn17

bb.g:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.f
  %i.an = load i64, ptr %i.am, align 8, !tbaa !97
  %i.ao = trunc i64 %i.an to i32
  %i.ap = mul i32 %0, %i.ao
  store i32 %i.ap, ptr %1, align 4, !tbaa !89
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  ret i1 %.not28
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb16TryCastToDecimal9OperationIilEEbT_RT0_RNS_14CastParametersEhh(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6duckdb28StandardNumericToDecimalCastIilNS_23SignedToDecimalOperatorEEEbT_RT0_RNS_14CastParametersEhh(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb28StandardNumericToDecimalCastIilNS_23SignedToDecimalOperatorEEEbT_RT0_RNS_14CastParametersEhh(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(57) %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = zext i8 %3 to i64
  %i.f = zext i8 %4 to i64                        ; 2 uses
  %i.g = sub nsw i64 %i.e, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr @_ZN6duckdb13NumericHelper13POWERS_OF_TENE, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !97   ; 2 uses
  %i.j = sext i32 %0 to i64                       ; 3 uses
  %i.k = icmp sgt i64 %i.i, %i.j
  %i.l = sub nsw i64 0, %i.i
  %i.m = icmp sgt i64 %i.j, %i.l
  %.not29 = select i1 %i.k, i1 %i.m, i1 false     ; 2 uses
  br i1 %.not29, label %bb.g, label %.noexc.i

end_hunk_2
