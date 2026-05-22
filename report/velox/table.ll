inline.NumInlined: 2864
inline.NumDeleted: 1219
begin_hunk_0_@_ZN5arrow18PrettyPrintOptionsD2Ev:bb.a
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !114 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i4
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !20
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9

_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i5
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !114 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !20
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow21PrettyPrintDelimitersD2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA24_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA19_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(19) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA27_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(27) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(2) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA11_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(11) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA3_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(3) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %1, i64 noundef %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.i = load ptr, ptr %1, align 8, !tbaa !114
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !115
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.i, i64 noundef %i.k) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

declare void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17ConcatenateTablesERKSt6vectorISt10shared_ptrINS_5TableEESaIS3_EENS_24ConcatenateTablesOptionsEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"class.std::vector.78", align 8    ; 17 uses
  %7 = alloca %"class.std::vector.83", align 8    ; 14 uses
  %8 = alloca %"class.arrow::Result.89", align 8  ; 13 uses
  %9 = alloca %"struct.arrow::Field::MergeOptions", align 1 ; 2 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %11 = alloca %"class.arrow::Result", align 8    ; 10 uses
  %12 = alloca %"class.std::shared_ptr", align 16 ; 8 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::shared_ptr", align 8  ; 10 uses
  %17 = alloca %"class.std::vector.6", align 8    ; 10 uses
  %18 = alloca %"class.std::vector.14", align 8   ; 12 uses
  %19 = alloca %"class.std::shared_ptr.42", align 8 ; 6 uses
  %20 = alloca %"class.std::shared_ptr", align 8  ; 4 uses
  %21 = alloca %"class.std::vector.6", align 8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !262  ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !265    ; 6 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  %i.h = icmp eq ptr %i.c, %i.d
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(29) @.str.18)
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #23
  %i.i = load ptr, ptr %5, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !84

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ev

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.j = load i8, ptr %2, align 1, !tbaa !266, !range !269, !noundef !270
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.bo

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.l = icmp ugt i64 %i.g, 9223372036854775792
  br i1 %i.l, label %bb.f, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_M_allocateEm.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #26
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25
          to label %.lr.ph281 unwind label %bb.g  ; 3 uses

.lr.ph281:                                        ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_M_allocateEm.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.n, ptr %7, align 8, !tbaa !271
  store ptr %i.n, ptr %i.o, align 8, !tbaa !274
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.g
  store ptr %i.p, ptr %i.m, align 8, !tbaa !275
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE9push_backERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %9, ptr noundef nonnull align 1 dereferenceable(12) %i.r, i64 12, i1 false)
  invoke void @_ZN5arrow12UnifySchemasERKSt6vectorISt10shared_ptrINS_6SchemaEESaIS3_EENS_5Field12MergeOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.89") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull %9)
          to label %bb.o unwind label %bb.q

bb.g:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6SchemaEESaIS3_EE11_M_allocateEm.exit.i, %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.h:                                             ; preds = %.lr.ph281, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE9push_backERKS3_.exit
  %.sroa.0267.0280 = phi ptr [ %i.d, %.lr.ph281 ], [ %i.ah, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.0267.0280, align 8, !tbaa !72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !274  ; 5 uses
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !275
  %.not.i95 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i95, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !18   ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.u, align 8, !tbaa !19
  store <2 x ptr> %i.z, ptr %i.v, align 8, !tbaa !19
  %.not.i.i.i.i96 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i96, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.q, align 8, !tbaa !274
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i: ; preds = %bb.l, %bb.k, %bb.i
  %i.af = phi ptr [ %i.v, %bb.i ], [ %i.v, %bb.k ], [ %.pre.i, %bb.l ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ag, ptr %i.q, align 8, !tbaa !274
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE9push_backERKS3_.exit

bb.m:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE9push_backERKS3_.exit unwind label %bb.n

_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i, %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0267.0280, i64 16 ; 2 uses
  %.not270 = icmp eq ptr %i.ah, %i.c
  br i1 %.not270, label %._crit_edge, label %bb.h

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.o:                                             ; preds = %._crit_edge
  %i.aj = load ptr, ptr %8, align 8, !tbaa !81
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.r, label %bb.p, !prof !84

bb.p:                                             ; preds = %bb.o
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #23
  br label %bb.ax

bb.q:                                             ; preds = %._crit_edge
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !18, !noalias !282
  %i.aq = load <2 x ptr>, ptr %i.am, align 8, !tbaa !19, !noalias !282
  store ptr null, ptr %i.ao, align 8, !tbaa !18, !noalias !282
  store <2 x ptr> %i.aq, ptr %10, align 16, !tbaa !19, !alias.scope !282
  store ptr null, ptr %i.am, align 8, !tbaa !9, !noalias !282
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !262 ; 2 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !265   ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 4 uses
  %i.aw = icmp ugt i64 %i.av, 9223372036854775792
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #26
          to label %.noexc104 unwind label %bb.w

.noexc104:                                        ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !283
  %i.az = load ptr, ptr %6, align 8, !tbaa !265   ; 5 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.av
  br i1 %i.bd, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.t
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !262 ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.bb
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #25
          to label %.noexc105 unwind label %bb.w  ; 4 uses

.noexc105:                                        ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i98 = icmp eq ptr %i.az, %i.bf
  br i1 %.not10.i.i.i.i98, label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i99

.lr.ph.i.i.i.i99:                                 ; preds = %.noexc105, %.lr.ph.i.i.i.i99
  %.012.i.i.i.i100 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i99 ], [ %i.bi, %.noexc105 ] ; 2 uses
  %.0911.i.i.i.i101 = phi ptr [ %i.bl, %.lr.ph.i.i.i.i99 ], [ %i.az, %.noexc105 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i101, i64 8
  %i.bk = load <2 x ptr>, ptr %.0911.i.i.i.i101, align 8, !tbaa !19, !alias.scope !287, !noalias !284
  store ptr null, ptr %i.bj, align 8, !tbaa !18, !alias.scope !287, !noalias !284
  store <2 x ptr> %i.bk, ptr %.012.i.i.i.i100, align 8, !tbaa !19, !alias.scope !284, !noalias !287
  store ptr null, ptr %.0911.i.i.i.i101, align 8, !tbaa !72, !alias.scope !287, !noalias !284
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i101, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i100, i64 16
  %.not.i.i.i.i102 = icmp eq ptr %i.bl, %i.bf
  br i1 %.not.i.i.i.i102, label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i99, !llvm.loop !289

_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i99, %.noexc105
  %.not.i8.i103 = icmp eq ptr %i.az, null
  br i1 %.not.i8.i103, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bc) #24
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.u, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.bi, ptr %6, align 8, !tbaa !265
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store ptr %i.bn, ptr %i.be, align 8, !tbaa !262
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.av
  store ptr %i.bo, ptr %i.ax, align 8, !tbaa !283
  %.pre309 = load ptr, ptr %1, align 8, !tbaa !290
  %.pre310 = load ptr, ptr %i.b, align 8, !tbaa !290
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.t
  %i.bp = phi ptr [ %.pre310, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.ar, %bb.t ] ; 2 uses
  %i.bq = phi ptr [ %.pre309, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.as, %bb.t ] ; 2 uses
  %.not271282 = icmp eq ptr %i.bq, %i.bp
  br i1 %.not271282, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.x

bb.v:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0263.0283, i64 16 ; 2 uses
  %.not271 = icmp eq ptr %i.bu, %i.bp
  br i1 %.not271, label %._crit_edge286.loopexit, label %bb.x

bb.w:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EE11_M_allocateEm.exit.i, %bb.s
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.x:                                             ; preds = %.lr.ph285, %bb.v
  %.sroa.0263.0283 = phi ptr [ %i.bq, %.lr.ph285 ], [ %i.bu, %bb.v ] ; 2 uses
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !262 ; 3 uses
  %i.bx = load ptr, ptr %i.ax, align 8, !tbaa !283
  %.not.i106 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i106, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false)
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !262
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.bz, ptr %i.br, align 8, !tbaa !262
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

bb.z:                                             ; preds = %bb.x
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.bw)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit unwind label %bb.ac

_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZN5arrow20PromoteTableToSchemaERKSt10shared_ptrINS_5TableEERKS0_INS_6SchemaEEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0263.0283, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %3)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  %i.ca = load ptr, ptr %11, align 8, !tbaa !81
  %i.cb = icmp eq ptr %i.ca, null                 ; 3 uses
  br i1 %i.cb, label %bb.ae, label %bb.ab, !prof !84

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %11) #23
  br label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %bb.z
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ad:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ae:                                            ; preds = %bb.aa
  %i.ce = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !19, !noalias !291
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  %i.cf = load ptr, ptr %i.br, align 8, !tbaa !290 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -16
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 -8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !18 ; 8 uses
  store <2 x ptr> %i.ce, ptr %i.cg, align 8, !tbaa !19
  %.not.i.i.i.i109 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i109, label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.cj, align 8, !tbaa !28
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !30
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #23, !inline_history !296
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #23, !inline_history !296
  br label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i110 = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i.i.i110, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i = phi i32 [ %i.cm, %bb.ai ], [ %i.cw, %bb.aj ]
  %i.cx = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cx, label %bb.ak, label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !32

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #23
  br label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ae, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ak, %bb.ab
  %i.cy = load ptr, ptr %11, align 8, !tbaa !81
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.al, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread.i, !prof !84

bb.al:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.da = load ptr, ptr %i.bt, align 8, !tbaa !18 ; 8 uses
  %.not.i.i.i.i.i111 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i111, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.db, align 8, !tbaa !28
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !30
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !7
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #23, !inline_history !297
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #23, !inline_history !297
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.de, %bb.ap ], [ %i.do, %bb.aq ]
  %i.dp = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dp, label %bb.ar, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i, !prof !32

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.an
  %.pr.i.pr = load ptr, ptr %11, align 8, !tbaa !81
  %.not.i.i112 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i112, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread.i, !prof !92

_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %11)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit: ; preds = %bb.al, %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br i1 %i.cb, label %bb.v, label %._crit_edge286.loopexit

._crit_edge286.loopexit:                          ; preds = %bb.v, %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit
  %spec.select.ph = phi ptr [ %6, %bb.v ], [ %1, %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev.exit ]
  %.pre311.a = load ptr, ptr %i.an, align 8, !tbaa !18
  br label %._crit_edge286

._crit_edge286:                                   ; preds = %._crit_edge286.loopexit, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit
  %i.dq = phi ptr [ %i.ap, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit ], [ %.pre311.a, %._crit_edge286.loopexit ] ; 8 uses
  %.not271.lcssa = phi i1 [ true, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit ], [ %i.cb, %._crit_edge286.loopexit ]
  %spec.select = phi ptr [ %6, %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EE7reserveEm.exit ], [ %spec.select.ph, %._crit_edge286.loopexit ]
  %.not.i.i113 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i113, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a, label %bb.as

bb.as:                                            ; preds = %._crit_edge286
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.dr, align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !30
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #23, !inline_history !103
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !7
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #23, !inline_history !103
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a

bb.au:                                            ; preds = %bb.as
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i114 = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i114, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i115

bb.aw:                                            ; preds = %bb.au
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i115

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i115: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i116 = phi i32 [ %i.du, %bb.av ], [ %i.ee, %bb.aw ]
  %i.ef = icmp eq i32 %.0.i.i.i.i116, 1
  br i1 %i.ef, label %22, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a, !prof !32

22:                                               ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i115
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #23
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a: ; preds = %._crit_edge286, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i115, %22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a, %bb.p
  %.373 = phi i1 [ false, %bb.p ], [ %.not271.lcssa, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a ]
  %.1 = phi ptr [ %1, %bb.p ], [ %spec.select, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.a ]
  %i.eg = load ptr, ptr %8, align 8, !tbaa !81
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.ay, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, !prof !84

bb.ay:                                            ; preds = %bb.ax
  %23 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ei = load ptr, ptr %23, align 8, !tbaa !18   ; 8 uses
  %.not.i.i.i.i.i117 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i117, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 4 uses
  %i.ek = load atomic i64, ptr %i.ej acquire, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 4294967297
  %i.em = trunc i64 %i.ek to i32                  ; 2 uses
  br i1 %i.el, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.ej, align 8, !tbaa !28
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  store i32 0, ptr %i.en, align 4, !tbaa !30
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !7
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #23, !inline_history !298
  %i.er = load ptr, ptr %i.ei, align 8, !tbaa !7
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #23, !inline_history !298
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i

bb.bb:                                            ; preds = %bb.az
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i118 = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i.i.i.i118, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ev = add nsw i32 %i.em, -1
  store i32 %i.ev, ptr %i.ej, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i119

bb.bd:                                            ; preds = %bb.bb
  %i.ew = atomicrmw volatile add ptr %i.ej, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i119

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i119: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i.i120 = phi i32 [ %i.em, %bb.bc ], [ %i.ew, %bb.bd ]
  %i.ex = icmp eq i32 %.0.i.i.i.i.i.i.i120, 1
  br i1 %i.ex, label %bb.be, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, !prof !32

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i119
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ei) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i: ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i119, %bb.ba, %bb.ay
  %.pr.i121 = load ptr, ptr %8, align 8, !tbaa !81
  %.not.i.i122 = icmp eq ptr %.pr.i121, null
  br i1 %.not.i.i122, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i, !prof !92

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, %bb.ax
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.ey = load ptr, ptr %7, align 8, !tbaa !271   ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !274 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ey, %i.fa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fs, %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i ], [ %i.ey, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !18 ; 8 uses
  %.not.i.i.i.i.i.i123 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i.i.i123, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 4 uses
  %i.fe = load atomic i64, ptr %i.fd acquire, align 8 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 4294967297
  %i.fg = trunc i64 %i.fe to i32                  ; 2 uses
  br i1 %i.ff, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.fd, align 8, !tbaa !28
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i32 0, ptr %i.fh, align 4, !tbaa !30
  %i.fi = load ptr, ptr %i.fc, align 8, !tbaa !7
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #23, !inline_history !299
  %i.fl = load ptr, ptr %i.fc, align 8, !tbaa !7
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #23, !inline_history !299
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.fo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fp = add nsw i32 %i.fg, -1
  store i32 %i.fp, ptr %i.fd, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.fq = atomicrmw volatile add ptr %i.fd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fg, %bb.bi ], [ %i.fq, %bb.bj ]
  %i.fr = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fr, label %bb.bk, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i, !prof !32

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #23
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i: ; preds = %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bg, %.lr.ph.i.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %i.fs, %i.fa
  br i1 %.not.i.i.i124, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !300

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i.i
  %.pr.i125 = load ptr, ptr %7, align 8, !tbaa !271
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit
  %i.ft = phi ptr [ %.pr.i125, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ey, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit.i
  %i.fu = load ptr, ptr %i.m, align 8, !tbaa !275
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.ft to i64
  %i.fx = sub i64 %i.fv, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef %i.fx) #24
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %.373, label %bb.cr, label %bb.em

bb.bm:                                            ; preds = %bb.ac, %bb.ad, %bb.w
  %.pn79.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.w ], [ %i.cc, %bb.ac ], [ %i.cd, %bb.ad ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bn

bb.bn:                                            ; preds = %bb.q, %bb.bm, %bb.n, %bb.g
  %.pn91 = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.s, %bb.g ], [ %.pn79.pn.pn, %bb.bm ], [ %i.al, %bb.q ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.eu

bb.bo:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.fy = load ptr, ptr %i.d, align 8, !tbaa !72  ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !18 ; 2 uses
  %i.gd = load <2 x ptr>, ptr %i.fz, align 8, !tbaa !19
  store <2 x ptr> %i.gd, ptr %12, align 16, !tbaa !19
  %.not.i.i.i126 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i126, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 3 uses
  %i.gf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i127 = icmp eq i8 %i.gf, 0
  br i1 %.not.i.i.i.i127, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !3
  %i.gh = add nsw i32 %i.gg, 1
  store i32 %i.gh, ptr %i.ge, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

bb.br:                                            ; preds = %bb.bp
  %i.gi = atomicrmw volatile add ptr %i.ge, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !262
  %.pre307 = load ptr, ptr %1, align 8, !tbaa !265 ; 2 uses
  %.pre318.a = ptrtoint ptr %.pre to i64
  %.pre319.a = ptrtoint ptr %.pre307 to i64
  %.pre321.a = sub i64 %.pre318.a, %.pre319.a
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit:  ; preds = %bb.bo, %bb.bq, %bb.br
  %.pre-phi322 = phi i64 [ %i.g, %bb.bo ], [ %i.g, %bb.bq ], [ %.pre321.a, %bb.br ]
  %i.gj = phi ptr [ %i.d, %bb.bo ], [ %i.d, %bb.bq ], [ %.pre307, %bb.br ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 1, ptr %i.a, align 8, !tbaa !75
  %.not277.a = icmp ugt i64 %.pre-phi322, 16
  br i1 %.not277.a, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %.pre308 = load ptr, ptr %12, align 16, !tbaa !9 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.cj
  %i.gk = phi ptr [ %i.iz, %bb.cj ], [ %i.gj, %.lr.ph.preheader ]
  %storemerge278 = phi i64 [ %i.ix, %bb.cj ], [ 1, %.lr.ph.preheader ]
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %storemerge278
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !72
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !9
  %i.gp = invoke noundef zeroext i1 @_ZNK5arrow6Schema6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(32) %i.go, ptr noundef nonnull align 8 dereferenceable(32) %.pre308, i1 noundef zeroext false)
          to label %bb.bs unwind label %bb.cf

bb.bs:                                            ; preds = %.lr.ph
  br i1 %i.gp, label %bb.cj, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZNK5arrow6Schema8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %.pre308, i1 noundef zeroext false)
          to label %bb.bu unwind label %bb.cg

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.gq = load i64, ptr %i.a, align 8, !tbaa !75
  %i.gr = load ptr, ptr %1, align 8, !tbaa !265
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.gq
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !72
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !9
  invoke void @_ZNK5arrow6Schema8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %i.gv, i1 noundef zeroext false)
          to label %bb.bv unwind label %bb.ch

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !301
  invoke void @_ZN5arrow4util13StringBuilderIJRA17_KcRmRA18_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SD_EEESD_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(17) @.str, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(18) @.str.1, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc128 unwind label %bb.ci

.noexc128:                                        ; preds = %bb.bv
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %13, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %.noexc128
  %i.gw = load ptr, ptr %4, align 8, !tbaa !114, !noalias !301 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bw
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !20, !noalias !301
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.bx:                                            ; preds = %.noexc128
  %i.hb = landingpad { ptr, i32 }
          cleanup
  %i.hc = load ptr, ptr %4, align 8, !tbaa !114, !noalias !301 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.bx
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !20, !noalias !301
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !301
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !301
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %13) #23
  %i.hh = load ptr, ptr %13, align 8, !tbaa !81
  %.not.i129 = icmp eq ptr %i.hh, null
  br i1 %.not.i129, label %_ZN5arrow6StatusD2Ev.exit130, label %bb.by, !prof !84

bb.by:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
  br label %_ZN5arrow6StatusD2Ev.exit130

_ZN5arrow6StatusD2Ev.exit130:                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.by
  %i.hi = load ptr, ptr %15, align 8, !tbaa !114  ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit130
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !20
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.hn = load ptr, ptr %14, align 8, !tbaa !114  ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !20
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.hs = load ptr, ptr %i.ga, align 8, !tbaa !18 ; 8 uses
  %.not.i.i134 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i134, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 4 uses
  %i.hu = load atomic i64, ptr %i.ht acquire, align 8 ; 2 uses
  %i.hv = icmp eq i64 %i.hu, 4294967297
  %i.hw = trunc i64 %i.hu to i32                  ; 2 uses
  br i1 %i.hv, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.ht, align 8, !tbaa !28
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  store i32 0, ptr %i.hx, align 4, !tbaa !30
  %i.hy = load ptr, ptr %i.hs, align 8, !tbaa !7
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #23, !inline_history !103
  %i.ib = load ptr, ptr %i.hs, align 8, !tbaa !7
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #23, !inline_history !103
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138

bb.cb:                                            ; preds = %bb.bz
  %i.ie = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i135 = icmp eq i8 %i.ie, 0
  br i1 %.not.i.i.i135, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.if = add nsw i32 %i.hw, -1
  store i32 %i.if, ptr %i.ht, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136

bb.cd:                                            ; preds = %bb.cb
  %i.ig = atomicrmw volatile add ptr %i.ht, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i137 = phi i32 [ %i.hw, %bb.cc ], [ %i.ig, %bb.cd ]
  %i.ih = icmp eq i32 %.0.i.i.i.i137, 1
  br i1 %i.ih, label %bb.ce, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138, !prof !32

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #23
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i136, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.em

bb.cf:                                            ; preds = %.lr.ph
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cg:                                            ; preds = %bb.bt
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.ch:                                            ; preds = %bb.bu
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.ci:                                            ; preds = %bb.bv
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %bb.ci
  %eh.lpad-body = phi { ptr, i32 } [ %i.il, %bb.ci ], [ %i.hb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ] ; 2 uses
  %i.im = load ptr, ptr %15, align 8, !tbaa !114  ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %.body
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !20
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.ch
  %.pn = phi { ptr, i32 } [ %i.ik, %bb.ch ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %eh.lpad-body, %.body ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.ir = load ptr, ptr %14, align 8, !tbaa !114  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !20
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.cg
  %.pn.pn = phi { ptr, i32 } [ %i.ij, %bb.cg ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ck

bb.cj:                                            ; preds = %bb.bs
  %i.iw = load i64, ptr %i.a, align 8, !tbaa !75
  %i.ix = add i64 %i.iw, 1                        ; 3 uses
  store i64 %i.ix, ptr %i.a, align 8, !tbaa !75
  %i.iy = load ptr, ptr %i.b, align 8, !tbaa !262
  %i.iz = load ptr, ptr %1, align 8, !tbaa !265   ; 2 uses
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %i.jd = ashr exact i64 %i.jc, 4
  %.not = icmp ult i64 %i.ix, %i.jd
  br i1 %.not, label %.lr.ph, label %.critedge, !llvm.loop !306

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %bb.cf
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %i.ii, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.eu

.critedge:                                        ; preds = %bb.cj, %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.je = load ptr, ptr %i.ga, align 8, !tbaa !18 ; 8 uses
  %.not.i.i145 = icmp eq ptr %i.je, null
  br i1 %.not.i.i145, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit149, label %bb.cl

bb.cl:                                            ; preds = %.critedge
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 4 uses
  %i.jg = load atomic i64, ptr %i.jf acquire, align 8 ; 2 uses
  %i.jh = icmp eq i64 %i.jg, 4294967297
  %i.ji = trunc i64 %i.jg to i32                  ; 2 uses
  br i1 %i.jh, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  store i32 0, ptr %i.jf, align 8, !tbaa !28
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 12
  store i32 0, ptr %i.jj, align 4, !tbaa !30
  %i.jk = load ptr, ptr %i.je, align 8, !tbaa !7
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8
  tail call void %i.jm(ptr noundef nonnull align 8 dereferenceable(16) %i.je) #23, !inline_history !103
  %i.jn = load ptr, ptr %i.je, align 8, !tbaa !7
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8
  tail call void %i.jp(ptr noundef nonnull align 8 dereferenceable(16) %i.je) #23, !inline_history !103
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit149

bb.cn:                                            ; preds = %bb.cl
  %i.jq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i146 = icmp eq i8 %i.jq, 0
  br i1 %.not.i.i.i146, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.jr = add nsw i32 %i.ji, -1
  store i32 %i.jr, ptr %i.jf, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i147

bb.cp:                                            ; preds = %bb.cn
  %i.js = atomicrmw volatile add ptr %i.jf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i147

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i147: ; preds = %bb.cp, %bb.co
  %.0.i.i.i.i148 = phi i32 [ %i.ji, %bb.co ], [ %i.js, %bb.cp ]
  %i.jt = icmp eq i32 %.0.i.i.i.i148, 1
  br i1 %i.jt, label %bb.cq, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit149, !prof !32

bb.cq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i147
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.je) #23
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit149

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit149: ; preds = %.critedge, %bb.cm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i147, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.cr

bb.cr:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit149, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit
  %.2 = phi ptr [ %.1, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit ], [ %1, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit149 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.ju = load ptr, ptr %.2, align 8, !tbaa !290
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !72 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !9  ; 3 uses
  store ptr %i.jx, ptr %16, align 8, !tbaa !9
  %i.jy = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18 ; 3 uses
  store ptr %i.ka, ptr %i.jy, align 8, !tbaa !18
  %.not.i.i.i150 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i.i150, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit152, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 3 uses
  %i.kc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i151 = icmp eq i8 %i.kc, 0
  br i1 %.not.i.i.i.i151, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.kd = load i32, ptr %i.kb, align 4, !tbaa !3
  %i.ke = add nsw i32 %i.kd, 1
  store i32 %i.ke, ptr %i.kb, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit152

bb.cu:                                            ; preds = %bb.cs
  %i.kf = atomicrmw volatile add ptr %i.kb, i32 1 acq_rel, align 4 ; 0 uses
  %.pre312 = load ptr, ptr %16, align 8, !tbaa !9
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit152

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit152: ; preds = %bb.cr, %bb.ct, %bb.cu
  %i.kg = phi ptr [ %i.jx, %bb.cr ], [ %i.jx, %bb.ct ], [ %.pre312, %bb.cu ] ; 2 uses
  %i.kh = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.kg)
          to label %bb.cv unwind label %bb.cy     ; 4 uses

bb.cv:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit152
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.ki = sext i32 %i.kh to i64                   ; 2 uses
  %i.kj = icmp slt i32 %i.kh, 0
  br i1 %i.kj, label %bb.cw, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #26
          to label %.noexc154 unwind label %bb.cz

.noexc154:                                        ; preds = %bb.cw
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.cv
  %.not.i.i.i.i153 = icmp eq i32 %i.kh, 0
  br i1 %.not.i.i.i.i153, label %._crit_edge302.a, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.kk = shl nuw nsw i64 %i.ki, 4                ; 3 uses
  %i.kl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kk) #25
          to label %.lr.ph301.a unwind label %bb.cz ; 4 uses

.lr.ph301.a:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.kl, ptr %17, align 8, !tbaa !42
  %i.km = getelementptr inbounds nuw [16 x i8], ptr %i.kl, i64 %i.ki
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.kl, i8 0, i64 %i.kk, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.kl, i64 %i.kk
  %i.kn = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.km, ptr %i.ko, align 8, !tbaa !79
  store ptr %scevgep.i.i.i.i.i, ptr %i.kn, align 8, !tbaa !46
  %i.kp = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.kr = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.kh to i64
  br label %bb.da

._crit_edge302.loopexit:                          ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %.pre314 = load ptr, ptr %16, align 8, !tbaa !9
  %.pre315 = load ptr, ptr %17, align 8, !tbaa !42
  %.pre316 = load ptr, ptr %i.kn, align 8, !tbaa !46
  %.pre317.a = load ptr, ptr %i.ko, align 8, !tbaa !79
  br label %._crit_edge302.a

._crit_edge302.a:                                 ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %._crit_edge302.loopexit
  %i.kt = phi ptr [ %.pre317.a, %._crit_edge302.loopexit ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 2 uses
  %i.ku = phi ptr [ %.pre316, %._crit_edge302.loopexit ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 3 uses
  %i.kv = phi ptr [ %.pre315, %._crit_edge302.loopexit ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 4 uses
  %i.kw = phi ptr [ %.pre314, %._crit_edge302.loopexit ], [ %i.kg, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 2 uses
  store ptr %i.kw, ptr %20, align 8, !tbaa !9
  %i.kx = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ky = load ptr, ptr %i.jy, align 8, !tbaa !18 ; 2 uses
  store ptr null, ptr %i.jy, align 8, !tbaa !18
  store ptr %i.ky, ptr %i.kx, align 8, !tbaa !18
  store ptr null, ptr %16, align 8, !tbaa !9
  store ptr %i.kv, ptr %21, align 8, !tbaa !42
  %i.kz = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.ku, ptr %i.kz, align 8, !tbaa !46
  %i.la = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %i.kt, ptr %i.la, align 8, !tbaa !79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.lb = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %.noexc156 unwind label %bb.ei, !inline_history !95 ; 11 uses

.noexc156:                                        ; preds = %._crit_edge302.a
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store i32 1, ptr %i.lc, align 8, !tbaa !28, !noalias !307
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 12
  store i32 1, ptr %i.ld, align 4, !tbaa !30, !noalias !307
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.lb, align 8, !tbaa !7, !noalias !307
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false), !noalias !307
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !noalias !307
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5arrow11SimpleTableE, i64 16), ptr %i.le, align 8, !tbaa !7, !noalias !307
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  store ptr %i.kv, ptr %i.lg, align 8, !tbaa !42, !noalias !307
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lb, i64 56
  store ptr %i.ku, ptr %i.lh, align 8, !tbaa !46, !noalias !307
  %i.li = getelementptr inbounds nuw i8, ptr %i.lb, i64 64
  store ptr %i.kt, ptr %i.li, align 8, !tbaa !79, !noalias !307
  store ptr %i.kw, ptr %i.lf, align 8, !tbaa !140, !noalias !307
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lb, i64 32
  store ptr %i.ky, ptr %i.lj, align 8, !tbaa !18, !noalias !307
  %i.lk = icmp eq ptr %i.ku, %i.kv
  br i1 %i.lk, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit226, label %bb.cx

bb.cx:                                            ; preds = %.noexc156
  %i.ll = load ptr, ptr %i.kv, align 8, !tbaa !47, !noalias !307
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !50, !noalias !307
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit226

bb.cy:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit152
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.cz:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.cw
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.da:                                            ; preds = %.lr.ph301.a, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph301.a ], [ %indvars.iv.next, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.lq = load ptr, ptr %.2, align 8, !tbaa !290  ; 2 uses
  %i.lr = load ptr, ptr %i.kp, align 8, !tbaa !290 ; 2 uses
  %.not272294 = icmp eq ptr %i.lq, %i.lr
  %.pre323 = trunc nuw nsw i64 %indvars.iv to i32 ; 2 uses
  br i1 %.not272294, label %._crit_edge298, label %.lr.ph297

._crit_edge298:                                   ; preds = %._crit_edge293, %bb.da
  %i.ls = load ptr, ptr %16, align 8, !tbaa !9
  %i.lt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.ls, i32 noundef %.pre323)
          to label %bb.dt unwind label %bb.eh

.lr.ph297:                                        ; preds = %bb.da, %._crit_edge293
  %.sroa.0255.0295 = phi ptr [ %i.ms, %._crit_edge293 ], [ %i.lq, %bb.da ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.lu = load ptr, ptr %.sroa.0255.0295, align 8, !tbaa !72 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !7
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8
  invoke void %i.lx(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.42") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %i.lu, i32 noundef %.pre323)
          to label %bb.db unwind label %bb.di

bb.db:                                            ; preds = %.lr.ph297
  %i.ly = load ptr, ptr %19, align 8, !tbaa !47   ; 2 uses
  %i.lz = load ptr, ptr %i.kq, align 8, !tbaa !18 ; 8 uses
  %.not.i.i157 = icmp eq ptr %i.lz, null
  br i1 %.not.i.i157, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 4 uses
  %i.mb = load atomic i64, ptr %i.ma acquire, align 8 ; 2 uses
  %i.mc = icmp eq i64 %i.mb, 4294967297
  %i.md = trunc i64 %i.mb to i32                  ; 2 uses
  br i1 %i.mc, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store i32 0, ptr %i.ma, align 8, !tbaa !28
  %i.me = getelementptr inbounds nuw i8, ptr %i.lz, i64 12
  store i32 0, ptr %i.me, align 4, !tbaa !30
  %i.mf = load ptr, ptr %i.lz, align 8, !tbaa !7
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(16) %i.lz) #23, !inline_history !207
  %i.mi = load ptr, ptr %i.lz, align 8, !tbaa !7
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.mk = load ptr, ptr %i.mj, align 8
  call void %i.mk(ptr noundef nonnull align 8 dereferenceable(16) %i.lz) #23, !inline_history !207
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.de:                                            ; preds = %bb.dc
  %i.ml = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i158 = icmp eq i8 %i.ml, 0
  br i1 %.not.i.i.i158, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.mm = add nsw i32 %i.md, -1
  store i32 %i.mm, ptr %i.ma, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159
end_hunk_0
begin_hunk_1_@_ZN5arrow17ConcatenateTablesERKSt6vectorISt10shared_ptrINS_5TableEESaIS3_EENS_24ConcatenateTablesOptionsEPNS_10MemoryPoolE:bb.a
  store i32 1, ptr %i.op, align 8, !tbaa !28, !noalias !318
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 12
  store i32 1, ptr %i.oq, align 4, !tbaa !30, !noalias !318
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.on, align 8, !tbaa !7, !noalias !318
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEEvPT_DpOT0_(ptr noundef nonnull %i.or, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(16) %i.oo)
          to label %_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, !noalias !318

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i: ; preds = %.noexc166
  %i.os = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.on, i64 noundef 104) #24, !noalias !318
  br label %.body167

_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_.exit: ; preds = %.noexc166
  %i.ot = load ptr, ptr %17, align 8, !tbaa !42
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %i.ot, i64 %indvars.iv ; 2 uses
  store ptr %i.or, ptr %i.ou, align 8, !tbaa !147
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8 ; 2 uses
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !18 ; 8 uses
  store ptr %i.on, ptr %i.ov, align 8, !tbaa !18
  %.not.i.i.i.i169 = icmp eq ptr %i.ow, null
  br i1 %.not.i.i.i.i169, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit177, label %bb.du

bb.du:                                            ; preds = %_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_.exit
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8 ; 4 uses
  %i.oy = load atomic i64, ptr %i.ox acquire, align 8 ; 2 uses
  %i.oz = icmp eq i64 %i.oy, 4294967297
  %i.pa = trunc i64 %i.oy to i32                  ; 2 uses
  br i1 %i.oz, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i32 0, ptr %i.ox, align 8, !tbaa !28
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ow, i64 12
  store i32 0, ptr %i.pb, align 4, !tbaa !30
  %i.pc = load ptr, ptr %i.ow, align 8, !tbaa !7
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pe = load ptr, ptr %i.pd, align 8
  call void %i.pe(ptr noundef nonnull align 8 dereferenceable(16) %i.ow) #23, !inline_history !90
  %i.pf = load ptr, ptr %i.ow, align 8, !tbaa !7
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  %i.ph = load ptr, ptr %i.pg, align 8
  call void %i.ph(ptr noundef nonnull align 8 dereferenceable(16) %i.ow) #23, !inline_history !90
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit177

bb.dw:                                            ; preds = %bb.du
  %i.pi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i170 = icmp eq i8 %i.pi, 0
  br i1 %.not.i.i.i.i.i170, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.pj = add nsw i32 %i.pa, -1
  store i32 %i.pj, ptr %i.ox, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i171

bb.dy:                                            ; preds = %bb.dw
  %i.pk = atomicrmw volatile add ptr %i.ox, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i171

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i171: ; preds = %bb.dy, %bb.dx
  %.0.i.i.i.i.i.i172 = phi i32 [ %i.pa, %bb.dx ], [ %i.pk, %bb.dy ]
  %i.pl = icmp eq i32 %.0.i.i.i.i.i.i172, 1
  br i1 %i.pl, label %bb.dz, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit177, !prof !32

bb.dz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i171
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ow) #23
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit177

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit177: ; preds = %bb.dz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i171, %bb.dv, %_ZSt11make_sharedIN5arrow12ChunkedArrayEJRSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEES3_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_.exit
  %i.pm = load ptr, ptr %18, align 8, !tbaa !132  ; 3 uses
  %i.pn = load ptr, ptr %i.kr, align 8, !tbaa !134 ; 2 uses
  %.not4.i.i.i178 = icmp eq ptr %i.pm, %i.pn
  br i1 %.not4.i.i.i178, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i179

.lr.ph.i.i.i179:                                  ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit177, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i180 = phi ptr [ %i.qf, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.pm, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit177 ] ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.05.i.i.i180, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !18 ; 8 uses
  %.not.i.i.i.i.i.i181 = icmp eq ptr %i.pp, null
  br i1 %.not.i.i.i.i.i.i181, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i.i.i179
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8 ; 4 uses
  %i.pr = load atomic i64, ptr %i.pq acquire, align 8 ; 2 uses
  %i.ps = icmp eq i64 %i.pr, 4294967297
  %i.pt = trunc i64 %i.pr to i32                  ; 2 uses
  br i1 %i.ps, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i32 0, ptr %i.pq, align 8, !tbaa !28
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pp, i64 12
  store i32 0, ptr %i.pu, align 4, !tbaa !30
  %i.pv = load ptr, ptr %i.pp, align 8, !tbaa !7
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %i.px = load ptr, ptr %i.pw, align 8
  call void %i.px(ptr noundef nonnull align 8 dereferenceable(16) %i.pp) #23, !inline_history !149
  %i.py = load ptr, ptr %i.pp, align 8, !tbaa !7
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  %i.qa = load ptr, ptr %i.pz, align 8
  call void %i.qa(ptr noundef nonnull align 8 dereferenceable(16) %i.pp) #23, !inline_history !149
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.ec:                                            ; preds = %bb.ea
  %i.qb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i.i182 = icmp eq i8 %i.qb, 0
  br i1 %.not.i.i.i.i.i.i.i182, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.qc = add nsw i32 %i.pt, -1
  store i32 %i.qc, ptr %i.pq, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i183

bb.ee:                                            ; preds = %bb.ec
  %i.qd = atomicrmw volatile add ptr %i.pq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i183

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i183: ; preds = %bb.ee, %bb.ed
  %.0.i.i.i.i.i.i.i.i184 = phi i32 [ %i.pt, %bb.ed ], [ %i.qd, %bb.ee ]
  %i.qe = icmp eq i32 %.0.i.i.i.i.i.i.i.i184, 1
  br i1 %i.qe, label %bb.ef, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !32

bb.ef:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i183
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pp) #23
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.ef, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i183, %bb.eb, %.lr.ph.i.i.i179
  %i.qf = getelementptr inbounds nuw i8, ptr %.05.i.i.i180, i64 16 ; 2 uses
  %.not.i.i.i185 = icmp eq ptr %i.qf, %i.pn
  br i1 %.not.i.i.i185, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i179, !llvm.loop !150

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i186 = load ptr, ptr %18, align 8, !tbaa !132
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit177
  %i.qg = phi ptr [ %.pr.i186, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.pm, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit177 ] ; 3 uses
  %.not.i.i1.i187 = icmp eq ptr %i.qg, null
  br i1 %.not.i.i1.i187, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.eg

bb.eg:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.qh = load ptr, ptr %i.ks, align 8, !tbaa !133
  %i.qi = ptrtoint ptr %i.qh to i64
  %i.qj = ptrtoint ptr %i.qg to i64
  %i.qk = sub i64 %i.qi, %i.qj
  call void @_ZdlPvm(ptr noundef nonnull %i.qg, i64 noundef %i.qk) #24
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge302.loopexit, label %bb.da, !llvm.loop !321

bb.eh:                                            ; preds = %bb.dt, %._crit_edge298
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %.body167

.body167:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.eh, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, %bb.di
  %.pn85.pn = phi { ptr, i32 } [ %i.mt, %bb.di ], [ %i.os, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i ], [ %i.ql, %bb.eh ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.ej

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit226: ; preds = %.noexc156, %bb.cx
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc156 ], [ %i.ln, %bb.cx ]
  %i.qm = getelementptr inbounds nuw i8, ptr %i.lb, i64 40
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.qm, align 8, !tbaa !69, !noalias !307
  store ptr null, ptr %0, align 8, !tbaa !81
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.le, ptr %i.qn, align 8, !tbaa !72
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.lb, ptr %i.qo, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.em

bb.ei:                                            ; preds = %._crit_edge302.a
  %i.qp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #23
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #23
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %.body167
  %.pn85.pn.pn = phi { ptr, i32 } [ %.pn85.pn, %.body167 ], [ %i.qp, %bb.ei ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #23
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.cz
  %.pn85.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn, %bb.ej ], [ %i.lp, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.cy
  %.pn85.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn85.pn.pn.pn, %bb.ek ], [ %i.lo, %bb.cy ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.eu

bb.em:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit138, %_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit226
  %i.qq = load ptr, ptr %6, align 8, !tbaa !265   ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !262 ; 2 uses
  %.not4.i.i.i227 = icmp eq ptr %i.qq, %i.qs
  br i1 %.not4.i.i.i227, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i228

.lr.ph.i.i.i228:                                  ; preds = %bb.em, %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i
  %.05.i.i.i229 = phi ptr [ %i.rk, %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i ], [ %i.qq, %bb.em ] ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.05.i.i.i229, i64 8
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !18 ; 8 uses
  %.not.i.i.i.i.i.i230 = icmp eq ptr %i.qu, null
  br i1 %.not.i.i.i.i.i.i230, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i, label %bb.en

bb.en:                                            ; preds = %.lr.ph.i.i.i228
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8 ; 4 uses
  %i.qw = load atomic i64, ptr %i.qv acquire, align 8 ; 2 uses
  %i.qx = icmp eq i64 %i.qw, 4294967297
  %i.qy = trunc i64 %i.qw to i32                  ; 2 uses
  br i1 %i.qx, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  store i32 0, ptr %i.qv, align 8, !tbaa !28
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qu, i64 12
  store i32 0, ptr %i.qz, align 4, !tbaa !30
  %i.ra = load ptr, ptr %i.qu, align 8, !tbaa !7
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %i.rc = load ptr, ptr %i.rb, align 8
  call void %i.rc(ptr noundef nonnull align 8 dereferenceable(16) %i.qu) #23, !inline_history !322
  %i.rd = load ptr, ptr %i.qu, align 8, !tbaa !7
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 24
  %i.rf = load ptr, ptr %i.re, align 8
  call void %i.rf(ptr noundef nonnull align 8 dereferenceable(16) %i.qu) #23, !inline_history !322
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i

bb.ep:                                            ; preds = %bb.en
  %i.rg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i.i231 = icmp eq i8 %i.rg, 0
  br i1 %.not.i.i.i.i.i.i.i231, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.rh = add nsw i32 %i.qy, -1
  store i32 %i.rh, ptr %i.qv, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i232

bb.er:                                            ; preds = %bb.ep
  %i.ri = atomicrmw volatile add ptr %i.qv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i232

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i232: ; preds = %bb.er, %bb.eq
  %.0.i.i.i.i.i.i.i.i233 = phi i32 [ %i.qy, %bb.eq ], [ %i.ri, %bb.er ]
  %i.rj = icmp eq i32 %.0.i.i.i.i.i.i.i.i233, 1
  br i1 %i.rj, label %bb.es, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i, !prof !32

bb.es:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i232
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qu) #23
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i: ; preds = %bb.es, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i232, %bb.eo, %.lr.ph.i.i.i228
  %i.rk = getelementptr inbounds nuw i8, ptr %.05.i.i.i229, i64 16 ; 2 uses
  %.not.i.i.i234 = icmp eq ptr %i.rk, %i.qs
  br i1 %.not.i.i.i234, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i228, !llvm.loop !323

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i.i
  %.pr.i235 = load ptr, ptr %6, align 8, !tbaa !265
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.em
  %i.rl = phi ptr [ %.pr.i235, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.qq, %bb.em ] ; 3 uses
  %.not.i.i1.i236 = icmp eq ptr %i.rl, null
  br i1 %.not.i.i1.i236, label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev.exit, label %bb.et

bb.et:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit.i
  %i.rm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !283
  %i.ro = ptrtoint ptr %i.rn to i64
  %i.rp = ptrtoint ptr %i.rl to i64
  %i.rq = sub i64 %i.ro, %i.rp
  call void @_ZdlPvm(ptr noundef nonnull %i.rl, i64 noundef %i.rq) #24
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit.i, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ev

bb.eu:                                            ; preds = %bb.el, %bb.ck, %bb.bn
  %.pn91.pn = phi { ptr, i32 } [ %.pn91, %bb.bn ], [ %.pn85.pn.pn.pn.pn, %bb.el ], [ %.pn.pn.pn, %bb.ck ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %.pn91.pn

bb.ev:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

declare void @_ZN5arrow12UnifySchemasERKSt6vectorISt10shared_ptrINS_6SchemaEESaIS3_EENS_5Field12MergeOptionsE(ptr dead_on_unwind writable sret(%"class.arrow::Result.89") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20PromoteTableToSchemaERKSt10shared_ptrINS_5TableEERKS0_INS_6SchemaEEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::compute::CastOptions", align 8 ; 10 uses
  %5 = alloca %"struct.arrow::TypeHolder", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN5arrow7compute11CastOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(46) %4, i1 noundef zeroext true)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !327, !alias.scope !324
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false), !noalias !324
  store ptr null, ptr %i.b, align 8, !tbaa !329, !alias.scope !324
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18, !alias.scope !324 ; 8 uses
  store ptr null, ptr %i.e, align 8, !tbaa !18, !alias.scope !324
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !30
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #23, !inline_history !330
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #23, !inline_history !330
  br label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !324
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit, !prof !32

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #23
  br label %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit

_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.noexc
  invoke void @_ZN5arrow20PromoteTableToSchemaERKSt10shared_ptrINS_5TableEERKS0_INS_6SchemaEERKNS_7compute11CastOptionsEPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(46) %4, ptr noundef %3)
          to label %bb.h unwind label %bb.v

bb.h:                                             ; preds = %_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %4, align 8, !tbaa !7
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !18   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.w, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !30
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #23, !inline_history !331
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #23, !inline_history !331
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

bb.k:                                             ; preds = %bb.i
end_hunk_1
