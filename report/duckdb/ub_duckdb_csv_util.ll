Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_csv_util?download=true
inline.NumInlined: 4370
inline.NumDeleted: 1499
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK6duckdb16CSVReaderOptions10GetNewlineB5cxx11Ev:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn26 = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.n) #28
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i17, %._crit_edge.i.i13, %._crit_edge.i.i9, %._crit_edge.i.i
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn26, %bb.f ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn.pn

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16CSVReaderOptions10SetNewlineERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1033) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !842 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !332  ; 2 uses
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread18 [
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !333    ; 2 uses
  %i.d = load i16, ptr %i.c, align 1
  %i.e = icmp ne i16 %i.d, 28252
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 46 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2, !tbaa !486, !range !300, !noundef !301
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN6duckdb9CSVOptionINS_17NewLineIdentifierEE3SetES1_b.exit, label %bb.b

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 1, ptr %i.k, align 1, !tbaa !457
  store i8 1, ptr %i.h, align 2, !tbaa !486
  br label %_ZN6duckdb9CSVOptionINS_17NewLineIdentifierEE3SetES1_b.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.l = load i16, ptr %i.c, align 1
  %i.m = icmp ne i16 %i.l, 29276
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread18

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 46 ; 2 uses
  %i.q = load i8, ptr %i.p, align 2, !tbaa !486, !range !300, !noundef !301
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN6duckdb9CSVOptionINS_17NewLineIdentifierEE3SetES1_b.exit, label %bb.c

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 4, ptr %i.s, align 1, !tbaa !457
  store i8 1, ptr %i.p, align 2, !tbaa !486
  br label %_ZN6duckdb9CSVOptionINS_17NewLineIdentifierEE3SetES1_b.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !333
  %bcmp.i13 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.97, i64 %i.b)
  %i.t = icmp eq i32 %bcmp.i13, 0
  br i1 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread18

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 46 ; 2 uses
  %i.v = load i8, ptr %i.u, align 2, !tbaa !486, !range !300, !noundef !301
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN6duckdb9CSVOptionINS_17NewLineIdentifierEE3SetES1_b.exit, label %bb.d

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 2, ptr %i.x, align 1, !tbaa !457
  store i8 1, ptr %i.u, align 2, !tbaa !486
  br label %_ZN6duckdb9CSVOptionINS_17NewLineIdentifierEE3SetES1_b.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread18: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14
  %i.y = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.101, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread18
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.j unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread18
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !333   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ab) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn22 = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.y) #28
  br label %bb.i

_ZN6duckdb9CSVOptionINS_17NewLineIdentifierEE3SetES1_b.exit: ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread, %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  ret void

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %.pn21 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn22, %bb.h ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn21

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #3 comdat !guid !843 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !332  ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !333
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb16CSVReaderOptions10GetRFC4180Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1033) %0) local_unnamed_addr #5 align 2 !guid !844 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.b = load i8, ptr %i.a, align 1, !tbaa !350, !range !300, !noundef !301
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6duckdb16CSVReaderOptions10SetRFC4180Eb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1033) %0, i1 noundef zeroext %1) local_unnamed_addr #14 align 2 !guid !845 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !424, !range !300, !noundef !301
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6duckdb9CSVOptionIbE3SetEbb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i1 %1 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 %i.d, ptr %i.e, align 1, !tbaa !458
  store i8 1, ptr %i.a, align 8, !tbaa !424
  br label %_ZN6duckdb9CSVOptionIbE3SetEbb.exit

_ZN6duckdb9CSVOptionIbE3SetEbb.exit:              ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb16CSVReaderOptions12IgnoreErrorsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1033) %0) local_unnamed_addr #5 align 2 !guid !846 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 145
  %3 = load i8, ptr %2, align 1, !tbaa !350, !range !300, !noundef !301
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb.a, label %5

bb.a:                                             ; preds = %1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 147
  %i.b = load i8, ptr %i.a, align 1, !tbaa !350, !range !300, !noundef !301
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = xor i1 %i.c, true
  br label %5

5:                                                ; preds = %bb.a, %1
  %6 = phi i1 [ false, %1 ], [ %i.d, %bb.a ]
  ret i1 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i16 0, -254) i16 @_ZNK6duckdb16CSVReaderOptions22GetSingleByteDelimiterEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1033) %0) local_unnamed_addr #6 align 2 !guid !847 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !333
  %i.c = load i8, ptr %i.b, align 1, !tbaa !320
  %i.d = load i8, ptr %0, align 8, !tbaa !427, !range !300, !noundef !301
  %.sroa.2.0.insert.ext = zext i8 %i.c to i16
  %.sroa.2.0.insert.shift = shl nuw i16 %.sroa.2.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext nneg i8 %i.d to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i16 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb16CSVReaderOptions21GetMultiByteDelimiterB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::CSVOption") align 8 initializes((0, 1)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1033) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !848 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !427, !range !300, !noundef !301
  store i8 %i.b, ptr %0, align 8, !tbaa !427
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !334
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !333  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !332  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.h, ptr %i.a, align 8, !tbaa !298
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !333
  %i.k = load i64, ptr %i.a, align 8, !tbaa !298
  store i64 %i.k, ptr %i.e, align 8, !tbaa !320
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc.i.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !320
  store i8 %i.m, ptr %i.l, align 1, !tbaa !320
  br label %_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit

_ZN6duckdb9CSVOptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.a, align 8, !tbaa !298  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !332
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !333
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16CSVReaderOptions13SetDateFormatENS_13LogicalTypeIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(1033) %0, i8 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !851 {
bb.a:
  %4 = alloca %"class.std::tuple.572", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.570", align 1    ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::tuple.572", align 8    ; 4 uses
  %7 = alloca %"class.std::tuple.570", align 1    ; 3 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"struct.duckdb::StrpTimeFormat", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"struct.duckdb::StrpTimeFormat", align 8 ; 15 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::allocator.5", align 1 ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  store i8 %1, ptr %i.b, align 1, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.d, ptr %8, align 8, !tbaa !334
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 0, ptr %i.e, align 8, !tbaa !332
  store i8 0, ptr %i.d, align 8, !tbaa !320
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !332
  %i.h = icmp eq i64 %i.g, 4
  br i1 %i.h, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %9, align 8, !tbaa !333    ; 2 uses
  %i.j = load i32, ptr %i.i, align 1
  %i.k = icmp ne i32 %i.j, 1869903201
  %i.l = zext i1 %i.k to i32
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  br i1 %3, label %bb.c, label %bb.ac

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZN6duckdb14StrpTimeFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %10)
          to label %bb.d unwind label %bb.w

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZN6duckdb13StrTimeFormat20ParseFormatSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(120) %10)
          to label %bb.e unwind label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %8, align 8, !tbaa !333    ; 6 uses
  %i.n = icmp eq ptr %i.m, %i.d
  %i.o = load ptr, ptr %11, align 8, !tbaa !333   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.q = icmp eq ptr %i.o, %i.p                   ; 2 uses
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.q, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.q, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !332  ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  switch i64 %i.s, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.o, align 1, !tbaa !320
  store i8 %i.u, ptr %i.m, align 1, !tbaa !320
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.v = load i64, ptr %i.r, align 8, !tbaa !332  ; 2 uses
  store i64 %i.v, ptr %i.e, align 8, !tbaa !332
  %i.w = load ptr, ptr %8, align 8, !tbaa !333
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 0, ptr %i.x, align 1, !tbaa !320
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !333
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.o, ptr %8, align 8, !tbaa !333
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.z = load <2 x i64>, ptr %i.y, align 8, !tbaa !320
  store <2 x i64> %i.z, ptr %i.e, align 8, !tbaa !320
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !320
  store ptr %i.o, ptr %8, align 8, !tbaa !333
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ac = load <2 x i64>, ptr %i.ab, align 8, !tbaa !320
  store <2 x i64> %i.ac, ptr %i.e, align 8, !tbaa !320
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.m, ptr %11, align 8, !tbaa !333
  store i64 %i.aa, ptr %i.p, align 8, !tbaa !320
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.p, ptr %11, align 8, !tbaa !333
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.ad = phi ptr [ %i.m, %bb.i ], [ %i.p, %bb.j ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !332
  store i8 0, ptr %i.ad, align 1, !tbaa !320
  %i.af = load ptr, ptr %11, align 8, !tbaa !333  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ah = icmp eq ptr %i.af, %i.ag
end_hunk_0
